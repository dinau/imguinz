const std = @import ("std");
const builtin = @import ("builtin");
const fonts = @import("fonts.zig");
const utils = @import("utils.zig");
const ig = @import ("imgui.zig");

//---------------------
// glfw_error_callback
//---------------------
fn glfw_error_callback(err: c_int, description: [*c]const u8) callconv(.C) void {
  std.debug.print ("GLFW Error {d}: {s}\n", .{ err, description });
}

pub const Theme = enum {
  light, dark, classic, microsoft,
};

const TImage = struct {
  imageSaveFormatIndex: i32,
};

const TWindow = struct {
  startupPosX:i32,
  startupPosY:i32,
  viewportWidth:i32,
  viewportHeight:i32,
  colBGx: f32,
  colBGy: f32,
  colBGz: f32,
  theme: i32,
};

pub const TIni = struct {
  window:TWindow,
  image:TImage,
};

//--------------
// Window class
//--------------
pub const Window = struct {
  const Self = @This();
  const IMGUI_HAS_DOCK = false;    // Docking feature
  handle: *ig.GLFWwindow,
  showWindowDelay:i32, // TODO: Avoid flickering of window at startup
  ini: TIni,
  clearColor: [4]f32,

  //-------------
  // createImGui
  //-------------
  pub fn createImGui(w:i32, h:i32, title:[*c]const u8) !Window {
    _ = w;
    _ = h;
    var win: Self = undefined;
    try loadIni(&win);
    // For print()
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    //-------------------
    // GLFW initializing
    //-------------------
    _ = ig.glfwSetErrorCallback (glfw_error_callback);
    if (ig.glfwInit() == 0) {
      try stdout.print("Failed to initialize GLFW: [main.zig]: \n", .{});
      try bw.flush(); // don't forget to flush!
      return error.glfwInitFailure;
    }

    //-------------------------
    // Decide GL+GLSL versions
    //-------------------------
    const glsl_version = "#version 330";
    ig.glfwWindowHint(ig.GLFW_OPENGL_FORWARD_COMPAT, ig.GLFW_TRUE);
    ig.glfwWindowHint(ig.GLFW_OPENGL_PROFILE, ig.GLFW_OPENGL_CORE_PROFILE);
    ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MAJOR, 3);
    ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MINOR, 3);
    //
    ig.glfwWindowHint(ig.GLFW_RESIZABLE, ig.GLFW_TRUE); // Resizable window
    ig.glfwWindowHint(ig.GLFW_VISIBLE, ig.GLFW_FALSE);  // Needs this if OpenGL is not initialized !.

    //---------------------------------------------
    // Create GLFW window and activate OpenGL libs
    //---------------------------------------------
    if (ig.glfwCreateWindow (win.ini.window.viewportWidth, win.ini.window.viewportHeight, title, null, null)) |ptr|{
      win.handle = ptr;
    } else{
      ig.glfwTerminate();
      return error.glfwInitFailure;
    }
    win.showWindowDelay = 2;
    win.clearColor = [_]f32{win.ini.window.colBGx, win.ini.window.colBGy, win.ini.window.colBGz, 1.0};

    ig.glfwMakeContextCurrent(win.handle);

    //---------------------
    // Load title bar icon
    //---------------------
    const TitleBarIconName = "z.png";
    //--------------
    // Get exe path  Refered to: https://stackoverflow.com/questions/77718355/how-do-i-build-a-path-relative-to-the-exe-in-zig
    //--------------
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();
    const exe_path = try std.fs.selfExePathAlloc(allocator);
    defer allocator.free(exe_path);
    const option_exe_dir = std.fs.path.dirname(exe_path);
    if (option_exe_dir) |exe_dir| {
      var paths = [_][]const u8{ exe_dir, TitleBarIconName };
      const icon_path = try std.fs.path.join(allocator, &paths);
      defer allocator.free(icon_path);
      // Load icon
      ig.LoadTitleBarIcon(win.handle, icon_path.ptr);
    }

    ig.glfwSwapInterval(1);  // Enable VSync --- Lower CPU load

    ig.glfwSetWindowPos(win.handle, win.ini.window.startupPosX, win.ini.window.startupPosY);

    // Setup Dear ImGui context
    if (ig.igCreateContext (null) == null){
      return error.ImGuiCreateContextFailure;
    }

    const pio = ig.igGetIO ();
    pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
                                                                    // pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableGamepad;    // Enable Gamepad Controls
                                                                    // Setup doncking feature --- can't compile well at this moment.
    if (IMGUI_HAS_DOCK) {
      pio.*.ConfigFlags |= ig.ImGuiConfigFlags_DockingEnable;       // Enable Docking
      pio.*.ConfigFlags |= ig.ImGuiConfigFlags_ViewportsEnable;     // Enable Multi-Viewport / Platform Windows
    }

    //-------------------------------------
    // ImGui GLFW OpenGL backend interface
    //-------------------------------------
    _ = ig.ImGui_ImplGlfw_InitForOpenGL(win.handle, true);
    _ = ig.ImGui_ImplOpenGL3_Init(glsl_version);

    _ = setTheme(@enumFromInt(win.ini.window.theme));

    return win;
  }

  //--------
  // render
  //--------
  pub fn render(win: *Window) void {
    const pio = ig.igGetIO ();
    //-----------
    // Rendering
    //-----------
    ig.igRender ();
    ig.glfwMakeContextCurrent(win.handle);
    ig.glViewport(0, 0, @intFromFloat(pio.*.DisplaySize.x), @intFromFloat(pio.*.DisplaySize.y));
    ig.glClearColor(win.ini.window.colBGx, win.ini.window.colBGy, win.ini.window.colBGz, 1.0);
    ig.glClear(ig.GL_COLOR_BUFFER_BIT);
    ig.ImGui_ImplOpenGL3_RenderDrawData(ig.igGetDrawData());
    // Docking featrue --- N/A
    if (IMGUI_HAS_DOCK){
      if (0 != (pio.*.ConfigFlags & ig.ImGuiConfigFlags_ViewportsEnable)) {
        const backup_current_window = ig.glfwGetCurrentContext();
        ig.igUpdatePlatformWindows();
        ig.igRenderPlatformWindowsDefault(null, null);
        ig.glfwMakeContextCurrent(backup_current_window);
      }
    }
    ig.glfwSwapBuffers(win.handle);
    if(win.showWindowDelay >= 0){ win.showWindowDelay -= 1;}
    if(win.showWindowDelay == 0){ ig.glfwShowWindow(win.handle); } // Visible main window here at start up
  }

  //-------
  // frame
  //-------
  pub fn frame(win: Window) void {
    // Start the Dear ImGui frame
    _ = win;
    ig.ImGui_ImplOpenGL3_NewFrame ();
    ig.ImGui_ImplGlfw_NewFrame ();
    ig.igNewFrame ();
  }

  //--------------
  // destroyImGui
  //--------------
  pub fn destroyImGui(win: *Window) void {
    saveIni(win) catch unreachable;
    ig.ImGui_ImplOpenGL3_Shutdown ();
    ig.ImGui_ImplGlfw_Shutdown ();
    ig.igDestroyContext (null);
    ig.glfwDestroyWindow (win.handle);
    ig.glfwTerminate ();
  }

  //------------------
  // Show info window
  //------------------
  pub fn showInfoWindow(win: *Window) void {
    const st = struct {
      var fval:f32 = 0;
    };
    const pio = ig.igGetIO ();
    _ = ig.igBegin ("Info window", null, 0);
    defer ig.igEnd ();
      ig.igText (fonts.ICON_FA_COMMENT ++ " GLFW v"); ig.igSameLine (0, -1.0);
      ig.igText (ig.glfwGetVersionString());
      ig.igText (fonts.ICON_FA_COMMENT ++ " OpenGL v"); ig.igSameLine (0, -1.0);
      ig.igText (ig.glGetString(ig.GL_VERSION));
      ig.igText (fonts.ICON_FA_CIRCLE_INFO ++ " Dear ImGui v");  ig.igSameLine (0, -1.0);
      ig.igText (ig.igGetVersion());
      ig.igText (fonts.ICON_FA_CIRCLE_INFO ++ " Zig v");  ig.igSameLine (0, -1.0);
      ig.igText (builtin.zig_version_string);
      _ = ig.igSliderFloat ("Float", &st.fval, 0.0, 1.0, "%.3f", 0);
      _ = ig.igColorEdit3 ("Clear color", &win.clearColor, 0);
      win.ini.window.colBGx = win.clearColor[0];
      win.ini.window.colBGy = win.clearColor[1];
      win.ini.window.colBGz = win.clearColor[2];

      ig.igText ("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
  }
};

//----------
// setTheme
//----------
pub fn setTheme(themeName: Theme) Theme {
  switch(themeName){
    Theme.light     => ig.igStyleColorsLight(null),
    Theme.dark      => ig.igStyleColorsDark(null),
    Theme.classic   => ig.igStyleColorsClassic(null),
    Theme.microsoft => ig.igStyleColorsLight(null),//themeMicrosoft(),
  }
  return themeName;
}

//---------------
//--- existsFile
//---------------
pub fn existsFile(fname:[]const u8) !bool {
  var file = std.fs.cwd().createFile(fname, .{ .exclusive = true }) catch |e|
    switch (e) {
      error.PathAlreadyExists => {
        return true;
    },
    else => return e,
  };
  defer file.close();
  return false;
}

const DefaultIni =
\\{
\\  "window":{
\\    "startupPosX":400,
\\    "startupPosY":80,
\\    "viewportWidth":1024,
\\    "viewportHeight":900,
\\    "colBGx": 0.25,
\\    "colBGy": 0.65,
\\    "colBGz": 0.85,
\\    "theme": 1
\\  },
\\  "image":{
\\    "imageSaveFormatIndex": 0
\\  }
\\}
;

//-----------------
// changeExtension
//-----------------
fn changeExtension(filename: []const u8, new_ext: []const u8) ![]const u8 {
    const allocator = std.heap.page_allocator;
    const last_dot = std.mem.lastIndexOfScalar(u8,filename, '.');

    var result: []const u8 = undefined;
      if (last_dot) |dot| {
        result = try std.fmt.allocPrint(allocator, "{s}{s}{s}", .{
            filename[0..dot],
            ".",
            new_ext,
        });
    } else {
        result = try std.fmt.allocPrint(allocator, "{s}.{s}", .{filename, new_ext});
    }
    return result;
}

//---------
// loadIni
//---------
pub fn loadIni(win: *Window) !void {
  //
  const allocator = std.heap.page_allocator;
  const exe_path = try std.fs.selfExePathAlloc(allocator);
  defer allocator.free(exe_path);

  const filename = try changeExtension(exe_path, "ini");

  var data: TIni = undefined;
  if (false == try existsFile(filename)){
    const parsed_data = try std.json.parseFromSlice(TIni, allocator, DefaultIni, .{});
    defer parsed_data.deinit();
    data = parsed_data.value;
    std.debug.print("*.ini file not found: set \"DefaultIni\" values\n",.{});

  } else{
    std.debug.print("Read ini: {s}\n", .{filename});
    var file = try std.fs.cwd().openFile(filename, .{});
    defer file.close();

    const file_size = try file.getEndPos();
    const buffer = try allocator.alloc(u8, file_size);
    defer allocator.free(buffer);
    _ = try file.readAll(buffer);

    const parsed_data = try std.json.parseFromSlice(TIni, allocator, buffer, .{});
    defer parsed_data.deinit();
    data = parsed_data.value;
  }

  // Window pos
  win.ini.window.startupPosX = data.window.startupPosX;
  win.ini.window.startupPosY = data.window.startupPosY;
  if (10   > win.ini.window.startupPosX ) {win.ini.window.startupPosX = 10;}
  if (10   > win.ini.window.startupPosY ) {win.ini.window.startupPosY = 10;}
  if (2048 < win.ini.window.startupPosX ) {win.ini.window.startupPosX = 10;}
  if (2048 < win.ini.window.startupPosY ) {win.ini.window.startupPosY = 10;}

  // Window size
  win.ini.window.viewportWidth = data.window.viewportWidth;
  win.ini.window.viewportHeight = data.window.viewportHeight;
  if (win.ini.window.viewportWidth  < 100) { win.ini.window.viewportWidth   = 100;}
  if (win.ini.window.viewportHeight < 100) { win.ini.window.viewportHeight  = 100;}
  if (win.ini.window.viewportWidth  > 2048) { win.ini.window.viewportWidth   = 2048;}
  if (win.ini.window.viewportHeight > 2048) { win.ini.window.viewportHeight  = 2048;}

  // Background color
  win.ini.window.colBGx = data.window.colBGx;
  win.ini.window.colBGy = data.window.colBGy;
  win.ini.window.colBGz = data.window.colBGz;

  // Theme
  win.ini.window.theme = data.window.theme;

  // Image index
  win.ini.image.imageSaveFormatIndex = 1;
}

//---------
// saveIni
//---------
pub fn saveIni(win: *Window) !void {
  // Window pos
  ig.glfwGetWindowPos(win.handle, &win.ini.window.startupPosX, &win.ini.window.startupPosY);

  // Window size
  const ws = ig.igGetMainViewport().*.WorkSize;
  win.ini.window.viewportWidth  = @intFromFloat(ws.x);
  win.ini.window.viewportHeight = @intFromFloat(ws.y);

  // Save to ini file
  const allocator = std.heap.page_allocator;
  const exe_path = try std.fs.selfExePathAlloc(allocator);
  defer allocator.free(exe_path);

  const filename = try changeExtension(exe_path, "ini");
  std.debug.print("Write ini: {s}\n", .{filename});

  var file = try std.fs.cwd().createFile(filename, .{});
  defer file.close();

  var json_string = std.ArrayList(u8).init(allocator);
  try std.json.stringify(win.ini, .{.whitespace = .indent_2}, json_string.writer());
  try file.writeAll(json_string.items);

}
