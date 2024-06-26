const std = @import ("std");
const builtin = @import ("builtin");

pub const ig = @cImport ({
  @cInclude ("cimgui.h");
  @cInclude ("cimgui_impl.h");
  @cInclude ("SDL.h");
  @cInclude ("SDL_opengl.h");
});
pub const c = @cImport ({
  @cInclude ("setupFonts.h");
  @cInclude ("IconsFontAwesome6.h");
});

const IMGUI_HAS_DOCK = false; // true: Can't compile at this time.

const MainWinWidth :i32 = 1024;
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

  // Setup SDL
  if (ig.SDL_Init(ig.SDL_INIT_VIDEO | ig.SDL_INIT_TIMER | ig.SDL_INIT_GAMECONTROLLER) != 0) {
    try stdout.print("Error: {s}\n", .{ig.SDL_GetError()});
    return error.SDL_init;
  }
  defer ig.SDL_Quit();

  //-------------------------
  // Decide GL+GLSL versions
  //-------------------------
  const glsl_version = "#version 130";
  _ = ig.SDL_GL_SetAttribute(ig.SDL_GL_CONTEXT_FLAGS, 0);
  _ = ig.SDL_GL_SetAttribute(ig.SDL_GL_CONTEXT_PROFILE_MASK, ig.SDL_GL_CONTEXT_PROFILE_CORE);
  _ = ig.SDL_GL_SetAttribute(ig.SDL_GL_CONTEXT_MAJOR_VERSION, 3);
  _ = ig.SDL_GL_SetAttribute(ig.SDL_GL_CONTEXT_MINOR_VERSION, 3);

  _ = ig.SDL_SetHint(ig.SDL_HINT_IME_SHOW_UI, "1");
  // Create window with graphics context
  _ = ig.SDL_GL_SetAttribute(ig.SDL_GL_DOUBLEBUFFER, 1);
  _ = ig.SDL_GL_SetAttribute(ig.SDL_GL_DEPTH_SIZE, 24);
  _ = ig.SDL_GL_SetAttribute(ig.SDL_GL_STENCIL_SIZE, 8);
  const window_flags = (ig.SDL_WINDOW_OPENGL | ig.SDL_WINDOW_RESIZABLE | ig.SDL_WINDOW_ALLOW_HIGHDPI);
  const window = ig.SDL_CreateWindow("Dear ImGui SDL2+OpenGL3 example", ig.SDL_WINDOWPOS_CENTERED, ig.SDL_WINDOWPOS_CENTERED, MainWinWidth, MainWinHeight, window_flags);
  if (window == null) {
    try stdout.print("Error: SDL_CreateWindow(): {s}\n", .{ig.SDL_GetError()});
    return error.SDL_CreatWindow;
  }
  defer ig.SDL_DestroyWindow(window);

  const gl_context = ig.SDL_GL_CreateContext(window);
  defer ig.SDL_GL_DeleteContext(gl_context);

  _= ig.SDL_GL_MakeCurrent(window, gl_context);
  _= ig.SDL_GL_SetSwapInterval(1);  // Enable vsync

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

  // Setup Dear ImGui style
  ig.igStyleColorsDark(null);
  // ig.igStyleColorsLight(null);
  // ig.igStyleColorsClassic(null);

  // Setup Platform/Renderer backends
  _ = ig.ImGui_ImplSDL2_InitForOpenGL(window, gl_context);
  defer ig.ImGui_ImplSDL2_Shutdown ();
  _ = ig.ImGui_ImplOpenGL3_Init(glsl_version);
  defer ig.ImGui_ImplOpenGL3_Shutdown ();

  //-------------
  // Global vars
  //-------------
  var showDemoWindow = true;
  var showAnotherWindow = false;
  var fval: f32 = 0.0;
  var counter: i32 = 0;
  // Back ground color
  var clearColor = [_]f32{0.25, 0.55,0.9,1.0};
  // Input text buffer
  var sTextInuputBuf =  [_:0]u8{0} ** 200;

  c.setupFonts();

  const sz  = ig.ImVec2 {.x = 0, .y = 0} ;

  var done = false;
  while (!done) {
    var event: ig.SDL_Event = undefined;
    while (1 == ig.SDL_PollEvent(&event)) {
      _ = ig.ImGui_ImplSDL2_ProcessEvent(&event);
      if (event.type == ig.SDL_QUIT)
        done = true;
      if ((event.type == ig.SDL_WINDOWEVENT) and (event.window.event == ig.SDL_WINDOWEVENT_CLOSE) and (event.window.windowID == ig.SDL_GetWindowID(window)))
        done = true;
    }
    // Start the Dear ImGui frame
    ig.ImGui_ImplOpenGL3_NewFrame();
    ig.ImGui_ImplSDL2_NewFrame();
    ig.igNewFrame();

    //------------------
    // Show demo window
    //------------------
    if (showDemoWindow) {
      ig.igShowDemoWindow (&showDemoWindow);
    }

    //------------------
    // Show main window
    //------------------
    if (ig.igBegin (c.ICON_FA_THUMBS_UP ++ " ImGui: Dear Bindings", null, 0)) {
      defer ig.igEnd ();
      var ver:ig.SDL_version = undefined;
      ig.SDL_GetVersion(&ver);
      ig.igText (c.ICON_FA_COMMENT ++ " SDL v"); ig.igSameLine (0, -1.0);
      ig.igText ("%d.%d.%d", ver.major, ver.minor, ver.patch);
      ig.igText (c.ICON_FA_COMMENT ++ " OpenGL v"); ig.igSameLine (0, -1.0);
      ig.igText (ig.glGetString(ig.GL_VERSION));
      ig.igText(c.ICON_FA_CIRCLE_INFO ++ " Dear ImGui v"); ig.igSameLine (0, -1.0);
      ig.igText(ig.igGetVersion());
      ig.igText(c.ICON_FA_CIRCLE_INFO ++ " Zig v"); ig.igSameLine (0, -1.0);
      ig.igText(builtin.zig_version_string);

      ig.igSpacing();
      _ = ig.igInputTextWithHint("InputText","Input text here", &sTextInuputBuf, sTextInuputBuf.len, 0, null, null);
      ig.igText("Input result:"); ig.igSameLine(0, -1.0); ig.igText(&sTextInuputBuf);

      ig.igSpacing();
      _ = ig.igCheckbox ("Demo Window", &showDemoWindow);
      _ = ig.igCheckbox ("Another Window", &showAnotherWindow);

      _ = ig.igSliderFloat ("Float", &fval, 0.0, 1.0, "%.3f", 0);
      _ = ig.igColorEdit3 ("Clear color", &clearColor, 0);

      if (ig.igButton ("Button", sz)) counter += 1;
      ig.igSameLine (0, -1.0);
      ig.igText ("Counter = %d", counter);
      ig.igText ("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
      // Show icon fonts
      ig.igSeparatorText(c.ICON_FA_WRENCH ++ " Icon font test ");
      ig.igText(c.ICON_FA_TRASH_CAN  ++ " Trash");

      ig.igSpacing();
      ig.igText(c.ICON_FA_MAGNIFYING_GLASS_PLUS
          ++ " " ++ c.ICON_FA_POWER_OFF
          ++ " " ++ c.ICON_FA_MICROPHONE
          ++ " " ++ c.ICON_FA_MICROCHIP
          ++ " " ++ c.ICON_FA_VOLUME_HIGH
          ++ " " ++ c.ICON_FA_SCISSORS
          ++ " " ++ c.ICON_FA_SCREWDRIVER_WRENCH
          ++ " " ++ c.ICON_FA_BLOG);
    } // end main window

    //---------------------
    // Show another window
    //---------------------
    if (showAnotherWindow) {
      _ = ig.igBegin ("Another Window", &showAnotherWindow, 0);
      defer ig.igEnd ();
      ig.igText ("Hello from another window!");
      if (ig.igButton ("Close Me", sz)) showAnotherWindow = false;
    }

    //-----------
    // End procs
    //-----------
    // Rendering
    ig.igRender ();
    ig.glViewport(0, 0, @intFromFloat(pio.*.DisplaySize.x), @intFromFloat(pio.*.DisplaySize.y));
    ig.glClearColor(clearColor[0], clearColor[1], clearColor[2], clearColor[3]);
    ig.glClear(ig.GL_COLOR_BUFFER_BIT);
    ig.ImGui_ImplOpenGL3_RenderDrawData(ig.igGetDrawData());
    ig.SDL_GL_SwapWindow(window);

  }// while end
} // main end
