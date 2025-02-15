const std = @import ("std");
const builtin = @import ("builtin");
const ig = @import ("imgui.zig");
const fonts = @import("fonts.zig");
const utils = @import("utils.zig");

const IMGUI_HAS_DOCK = false;    // Docking feature

fn glfw_error_callback(err: c_int, description: [*c]const u8) callconv(.C) void {
  std.debug.print ("GLFW Error {d}: {s}\n", .{ err, description });
}

const MainWinWidth :i32 = 1024;
const MainWinHeight:i32 = 900;

//--------
// main()
//--------
pub fn main () !void {
  //-------------
  // For print()
  //-------------
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
  defer ig.glfwTerminate ();

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
  const window = ig.glfwCreateWindow (MainWinWidth, MainWinHeight, "Dear ImGui example", null, null);
  if (window == null) {
      ig.glfwTerminate();
      return error.glfwInitFailure;
  }
  defer ig.glfwDestroyWindow (window);

  ig.glfwMakeContextCurrent(window);

  //---------------------
  // Load title bar icon
  //---------------------
  const TitleBarIconName = "z.png";
  //--------------
  // Get exe path
  //--------------
  // Refered to:
  //  https://stackoverflow.com/questions/77718355/how-do-i-build-a-path-relative-to-the-exe-in-zig
  var gpa = std.heap.GeneralPurposeAllocator(.{}){};
  defer _ = gpa.deinit();
  const allocator = gpa.allocator();
  const exe_path = try std.fs.selfExePathAlloc(allocator);
  defer allocator.free(exe_path);
  const opt_exe_dir = std.fs.path.dirname(exe_path);
  if (opt_exe_dir) |exe_dir| {
    var paths = [_][]const u8{ exe_dir, TitleBarIconName };
    const icon_path = try std.fs.path.join(allocator, &paths);
    defer allocator.free(icon_path);
    // Load icon
    ig.LoadTitleBarIcon(window, icon_path.ptr);
  }


  ig.glfwSwapInterval(1);  // Enable VSync --- Lower CPU load

  // Setup Dear ImGui context
  if (ig.igCreateContext (null) == null){
    return error.ImGuiCreateContextFailure;
  }
  defer ig.igDestroyContext (null);

  const pio = ig.igGetIO ();
  pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
  //pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableGamepad;    // Enable Gamepad Controls
  // Setup doncking feature --- can't compile well at this moment.
  if (IMGUI_HAS_DOCK) {
    pio.*.ConfigFlags |= ig.ImGuiConfigFlags_DockingEnable;       // Enable Docking
    pio.*.ConfigFlags |= ig.ImGuiConfigFlags_ViewportsEnable;     // Enable Multi-Viewport / Platform Windows
  }

  //-------------------------------------
  // ImGui GLFW OpenGL backend interface
  //-------------------------------------
  _ = ig.ImGui_ImplGlfw_InitForOpenGL(window, true);
  defer ig.ImGui_ImplGlfw_Shutdown ();
  _ = ig.ImGui_ImplOpenGL3_Init(glsl_version);
  defer ig.ImGui_ImplOpenGL3_Shutdown ();


  //-------------
  // Global vars
  //-------------
  var showDemoWindow = true;
  // Back ground color
  const clearColor = [_]f32{0.25, 0.55,0.9,1.0};

  // Input text buffer
  var showWindowDelay:i32 = 2; // TODO: Avoid flickering of window at startup.

  //------------------------
  // Select Dear ImGui style
  //------------------------
  ig.themeGold();
  //ig.igStyleColorsClassic (null);
  //ig.igStyleColorsDark (null);
  //ig.igStyleColorsLight (null);

  //------------
  // Load image
  //------------
  const ImageName = "beans-400.jpg";
  var textureId : ig.GLuint = undefined;
  var textureWidth: c_int = 0;
  var textureHeight : c_int = 0;
  _ = ig.LoadTextureFromFile(ImageName, &textureId, &textureWidth, &textureHeight);
  fonts.setupFonts(); // Setup CJK fonts and Icon fonts

 var zoomTextureID: ig.GLuint = 0; //# Must be == 0 at first
  defer ig.glDeleteTextures(1, &zoomTextureID);

  //---------------
  // main loop GUI
  //---------------
  while (ig.glfwWindowShouldClose (window) == 0) {
    ig.glfwPollEvents ();
    // Start the Dear ImGui frame
    ig.ImGui_ImplOpenGL3_NewFrame ();
    ig.ImGui_ImplGlfw_NewFrame ();
    ig.igNewFrame ();

    //------------------
    // Show demo window
    //------------------
    if (showDemoWindow) {
      ig.igShowDemoWindow (&showDemoWindow);
    }


    //------------------
    // Show main window
    //------------------
    {
      _ = ig.igBegin (fonts.ICON_FA_THUMBS_UP ++ " Dear ImGui", null, 0);
      defer ig.igEnd ();
      ig.igText (fonts.ICON_FA_COMMENT ++ " GLFW v"); ig.igSameLine (0, -1.0);
      ig.igText (ig.glfwGetVersionString());
      ig.igText (fonts.ICON_FA_COMMENT ++ " OpenGL v"); ig.igSameLine (0, -1.0);
      ig.igText (ig.glGetString(ig.GL_VERSION));
      ig.igText (fonts.ICON_FA_CIRCLE_INFO ++ " Dear ImGui v");  ig.igSameLine (0, -1.0);
      ig.igText (ig.igGetVersion());
      ig.igText (fonts.ICON_FA_CIRCLE_INFO ++ " Zig v");  ig.igSameLine (0, -1.0);
      ig.igText (builtin.zig_version_string);
    } // end main window

    //------------------------
    // Show CImSpinner window
    //------------------------
    {
      _ = ig.igBegin ("CImSpinner with Zig lang " ++ fonts.ICON_FA_CAT, null, 0);
      defer ig.igEnd ();
      const red :ig.ImColor = .{.Value = .{.x = 1.0, .y = 0.0, .z = 0.0, .w = 1.0}};
      const blue:ig.ImColor = .{.Value = .{.x = 0.0, .y = 0.0, .z = 1.0, .w = 1.0}};
      //
      ig.SpinnerDnaDotsEx("DnaDotsV", 16, 2, red, 1.2 , 8, 0.25, true);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerRainbowMix("Rmix", 16, 2, blue, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerAng8("Ang", 16, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerPulsar("Pulsar", 16, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerClock("Clock", 16, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerAtom("atom", 16, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerSwingDots("wheel", 16, 6);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerDotsToBar("tobar", 16, 2, 0.5);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerBarChartRainbow("rainbow", 16, 4, red, 4);
      ig.igNewLine();
      ig.igText ("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
    } // end main window

    //------------------------
    // Show ImSpinner window
    //------------------------
    {
      _ = ig.igBegin ("ImSpinner demo " ++ fonts.ICON_FA_DOG, null, 0);
      defer ig.igEnd ();
      ig.demoSpinners();
    }

    //-----------
    // End procs
    //-----------
    // Rendering
    ig.igRender ();
    ig.glfwMakeContextCurrent(window);
    ig.glViewport(0, 0, @intFromFloat(pio.*.DisplaySize.x), @intFromFloat(pio.*.DisplaySize.y));
    ig.glClearColor(clearColor[0], clearColor[1], clearColor[2], clearColor[3]);
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
    ig.glfwSwapBuffers(window);
    if(showWindowDelay >= 0){
      showWindowDelay -= 1;
    }
    if(showWindowDelay == 0){ // Visible main window here at start up
      ig.glfwShowWindow(window);
    }


  } // while end
} // main end
