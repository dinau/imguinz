const std = @import ("std");
const builtin = @import ("builtin");
const ig = @import ("imgui.zig");
const ip = @import ("implot.zig");
const fonts = @import ("fonts.zig");
const demo = @import ("demoAll.zig");

pub const c = @cImport ({
  @cInclude ("stdlib.h");
});

const IMGUI_HAS_DOCK = false; // true: Can't compile at this time.

fn glfw_error_callback (err: c_int, description: [*c] const u8) callconv (.C) void
{
  std.debug.print ("GLFW Error {d}: {s}\n", .{ err, description });
}

const MainWinWidth :i32 = 1100;
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

  //-------------------------
  // Decide GL+GLSL versions
  //-------------------------
  const glsl_version = "#version 130";
  ig.glfwWindowHint(ig.GLFW_OPENGL_FORWARD_COMPAT, ig.GLFW_TRUE);
  ig.glfwWindowHint(ig.GLFW_OPENGL_PROFILE, ig.GLFW_OPENGL_CORE_PROFILE);
  ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MAJOR, 3);
  ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MINOR, 3);
  //
  ig.glfwWindowHint(ig.GLFW_RESIZABLE, ig.GLFW_TRUE); // Resizabe window
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

  //-------------------------------
  // Visible/Show main window here
  //-------------------------------
  ig.glfwShowWindow(window);

  ig.glfwSwapInterval(1);  // Enable VSync --- Lower CPU load

  // Setup Dear ImGui context
  if (ig.igCreateContext (null) == null){
    return error.ImGuiCreateContextFailure;
  }
  defer ig.igDestroyContext (null);

  // setup ImPlot
  const imPlotContext = ip.ImPlot_CreateContext();
  defer  ip.ImPlot_DestroyContext(imPlotContext);

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

  //------------------------
  // Select Dear ImGui style
  //------------------------
  //ig.igStyleColorsClassic (null);
  ig.igStyleColorsDark (null);
  //ig.igStyleColorsLight (null);

  fonts.setupFonts(); // Setup CJK fonts and Icon fonts

  //const sz  = ig.ImVec2 {.x = 0, .y = 0} ;
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
    if ( ig.igBegin (fonts.ICON_FA_THUMBS_UP ++ " Dear ImGui", null, 0)) {
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
      if (pio.*.ConfigFlags & ig.ImGuiConfigFlags_ViewPortsEnable) {
        const backup_current_window = ig.glfwGetCurrentContext();
        ig.igUpdatePlatformWindows();
        ig.igRenderPlatformWindowsDefault();
        ig.glfwMakeContextCurrent(backup_current_window);
      }
    }
    ig.glfwSwapBuffers(window);
  } // while end
} // main end

//------------------
// imPlotDemoWindow
//-------------------
fn imPlotDemoWindow() !void {
  if (ig.igBegin(fonts.ICON_FA_SIGNAL ++ " ImPlot demo: All demos have been written in Zig lang.", null, 0)) {
    defer ig.igEnd();
    try demo.imPlotDemoTabs();
  }
}
