const std = @import ("std");
const builtin = @import ("builtin");
const ig = @import ("imgui.zig");
const ip = @import ("implot.zig");
const fonts = @import ("fonts.zig");
const demo = @import ("demoAll.zig");
const utils = @import ("utils.zig");

pub const c = @cImport ({
  @cInclude ("stdlib.h");
});

const IMGUI_HAS_DOCK = false;    // Docking feature

fn glfw_error_callback (err: c_int, description: [*c] const u8) callconv (.C) void
{
  std.debug.print ("GLFW Error {d}: {s}\n", .{ err, description });
}

const MainWinWidth :i32 = 1200;
const MainWinHeight:i32 = 800;

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

  var glsl_version_buf: [30]u8 = undefined;

  //-------------
  // createImGui
  //-------------
  const versions = [_][2]u16{[_]u16{4, 6},
                             [_]u16{4, 5},
                             [_]u16{4, 4},
                             [_]u16{4, 3},
                             [_]u16{4, 2},
                             [_]u16{4, 1},
                             [_]u16{4, 0},
                             [_]u16{3, 3}
                           };

  //-------------------------
  // Decide GL+GLSL versions
  //-------------------------
  var window: *ig.GLFWwindow = undefined;
  var glsl_version: [:0]u8 = undefined;
  for (versions)|ver|{
    ig.glfwWindowHint(ig.GLFW_OPENGL_FORWARD_COMPAT, ig.GLFW_TRUE);
    ig.glfwWindowHint(ig.GLFW_OPENGL_PROFILE, ig.GLFW_OPENGL_CORE_PROFILE);
    ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MAJOR, ver[0]);
    ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MINOR, ver[1]);
    //
    ig.glfwWindowHint(ig.GLFW_RESIZABLE, ig.GLFW_TRUE); // Resizable window
    ig.glfwWindowHint(ig.GLFW_VISIBLE, ig.GLFW_FALSE);  // Needs this if OpenGL is not initialized !.

    //---------------------------------------------
    // Create GLFW window and activate OpenGL libs
    //---------------------------------------------
     if(ig.glfwCreateWindow (MainWinWidth, MainWinHeight, "Dear ImGui example", null, null))|pointer|{
       window = pointer;
       glsl_version = try std.fmt.bufPrintZ(&glsl_version_buf, "#version {d}", .{ ver[0] * 100 + ver[1] * 10});
       try stdout.print("{s} \n", .{glsl_version});
       break;
     }
  } else {
      ig.glfwTerminate();
      return error.glfwCreateWindowFailure;
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

  // setup ImPlot
  const imPlotContext = ip.ImPlot_CreateContext();
  defer  ip.ImPlot_DestroyContext(imPlotContext);

  const pio = ig.igGetIO_Nil ();
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
  _ = ig.ImGui_ImplOpenGL3_Init(glsl_version.ptr);
  defer ig.ImGui_ImplOpenGL3_Shutdown ();

  //-------------
  // Global vars
  //-------------
  var showDemoWindow = true;
  var showImPlotDemoWindow = true;
  var showImPlotTestWindow = true;
  _ = &showImPlotTestWindow;
  var showAnotherWindow = false;
  var fval: f32 = 0.0;
  var counter: i32 = 0;
  // Back ground color
  var clearColor = [_]f32{0.25, 0.55,0.9,1.0};
  // Input text buffer
  var sTextInuputBuf =  [_:0]u8{0} ** 200;
  var showWindowDelay:i32 = 2; // TODO: Avoid flickering of window at startup.

  //------------------------
  // Select Dear ImGui style
  //------------------------
  //ig.igStyleColorsClassic (null);
  ig.igStyleColorsDark (null);
  //ig.igStyleColorsLight (null);

  fonts.setupFonts(); // Setup CJK fonts and Icon fonts

  //const sz  = utils.vec2(0, 0);
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
    if (showImPlotDemoWindow) {
      ip.ImPlot_ShowDemoWindow (&showImPlotDemoWindow);
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

      ig.igSpacing();
      _ = ig.igInputTextWithHint("InputText", "Input text here", &sTextInuputBuf, sTextInuputBuf.len, 0, null, null);
      ig.igText("Input result:"); ig.igSameLine(0, -1.0); ig.igText(&sTextInuputBuf);

      ig.igSpacing();
      _ = ig.igCheckbox ("Demo Window", &showDemoWindow);
      _ = ig.igCheckbox ("ImPlot Demo Window", &showImPlotDemoWindow);
      _ = ig.igCheckbox ("Another Window", &showAnotherWindow);

      _ = ig.igSliderFloat ("Float", &fval, 0.0, 1.0, "%.3f", 0);
      _ = ig.igColorEdit3 ("Clear color", &clearColor, 0);

      if (ig.igButton ("Button", .{.x = 0, .y = 0} )) counter += 1;
      ig.igSameLine (0, -1.0);
      ig.igText ("Counter = %d", counter);
      ig.igText ("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
      // Show icon fonts
      ig.igSeparatorText(fonts.ICON_FA_WRENCH ++ " Icon font test ");
      ig.igText(fonts.ICON_FA_TRASH_CAN  ++ " Trash");

      ig.igSpacing();
      ig.igText(fonts.ICON_FA_MAGNIFYING_GLASS_PLUS
          ++ " " ++ fonts.ICON_FA_POWER_OFF
          ++ " " ++ fonts.ICON_FA_MICROPHONE
          ++ " " ++ fonts.ICON_FA_MICROCHIP
          ++ " " ++ fonts.ICON_FA_VOLUME_HIGH
          ++ " " ++ fonts.ICON_FA_SCISSORS
          ++ " " ++ fonts.ICON_FA_SCREWDRIVER_WRENCH
          ++ " " ++ fonts.ICON_FA_BLOG);
    } // end main window

    //---------------------
    // Show another window
    //---------------------
    if (showAnotherWindow) {
      _ = ig.igBegin ("Another Window", &showAnotherWindow, 0);
      defer ig.igEnd ();
      ig.igText ("Hello from another window!");
      if (ig.igButton ("Close Me", .{.x = 0, .y = 0} )) showAnotherWindow = false;
    }

    if (showImPlotTestWindow){
      try imPlotDemoWindow();
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

//------------------
// imPlotDemoWindow
//-------------------
fn imPlotDemoWindow() !void {
  {
    _ = ig.igBegin(fonts.ICON_FA_SIGNAL ++ " ImPlot demo: All demos have been written in Zig lang.", null, 0);
    defer ig.igEnd();
    try demo.imPlotDemoTabs();
  }
}
