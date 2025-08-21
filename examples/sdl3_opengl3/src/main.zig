const std = @import ("std");
const builtin = @import ("builtin");

const ig= @import ("cimgui");
const ifa = @import ("fonticon");
const stf = @import ("setupfont");
const utils = @import("utils");
const sdl = @import("sdl3");
const glfw = @import("glfw");
const impl_sdl3 = @import("impl_sdl3");
const impl_opengl3 = @import("impl_opengl3");
const img_load = @import("loadimage");

const IMGUI_HAS_DOCK = false;    // Docking feature

const MainWinWidth :i32 = 1024;
const MainWinHeight:i32 = 900;

//--------
// main()
//--------
pub fn main () !void {
  //-------------
  // For print()
  //-------------
  var stdout_buffer: [1024]u8 = undefined;
  var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
  const stdout = &stdout_writer.interface;

  // Setup SDL
  if (sdl.SDL_Init(sdl.SDL_INIT_VIDEO | sdl.SDL_INIT_GAMEPAD) == false) {
    try stdout.print("Error: {s}\n", .{sdl.SDL_GetError()});
    return error.SDL_init;
  }
  defer sdl.SDL_Quit();
  var glsl_version_buf: [30]u8 = undefined;
  const versions = [_][2]u16{[_]u16{4, 6},
                             [_]u16{4, 5},
                             [_]u16{4, 4},
                             [_]u16{4, 3},
                             [_]u16{4, 2},
                             [_]u16{4, 1},
                             [_]u16{4, 0},
                             [_]u16{3, 3}
                           };
  var glsl_version: [:0]u8 = undefined;

  //-------------------------
  // Decide GL+GLSL versions
  //-------------------------
  var window: *sdl.SDL_Window = undefined;
  for (versions)|ver|{
    //_ = ver;
    _ = sdl.SDL_GL_SetAttribute(sdl.SDL_GL_CONTEXT_FLAGS, 0);
    _ = sdl.SDL_GL_SetAttribute(sdl.SDL_GL_CONTEXT_PROFILE_MASK, sdl.SDL_GL_CONTEXT_PROFILE_CORE);
    _ = sdl.SDL_GL_SetAttribute(sdl.SDL_GL_CONTEXT_MAJOR_VERSION, ver[0]);
    _ = sdl.SDL_GL_SetAttribute(sdl.SDL_GL_CONTEXT_MINOR_VERSION, ver[1]);

    //_ = sdl.SDL_SetHint(sdl.SDL_HINT_IME_SHOW_UI, "1");

    // Create window with graphics context
    _ = sdl.SDL_GL_SetAttribute(sdl.SDL_GL_DOUBLEBUFFER, 1);
    _ = sdl.SDL_GL_SetAttribute(sdl.SDL_GL_DEPTH_SIZE, 24);
    _ = sdl.SDL_GL_SetAttribute(sdl.SDL_GL_STENCIL_SIZE, 8);

    // Initialy main window is hidden.  See: showWindowDelay
    const window_flags = (sdl.SDL_WINDOW_OPENGL | sdl.SDL_WINDOW_RESIZABLE | sdl.SDL_WINDOW_HIDDEN);

    if(sdl.SDL_CreateWindow("Dear ImGui SDL3+OpenGL3 example", MainWinWidth, MainWinHeight, window_flags))|pointer|{
      window = pointer;
      glsl_version = try std.fmt.bufPrintZ(&glsl_version_buf, "#version {d}", .{ ver[0] * 100 + ver[1] * 10});
      try stdout.print("{s} \n", .{glsl_version});
      break;
    }
  }else{
    try stdout.print("Error: SDL_CreateWindow(): {s}\n", .{sdl.SDL_GetError()});
    return error.SDL_CreatWindow;
  }

  defer sdl.SDL_DestroyWindow(window);

  _ = sdl.SDL_SetWindowPosition(window, sdl.SDL_WINDOWPOS_CENTERED, sdl.SDL_WINDOWPOS_CENTERED);
  const gl_context = sdl.SDL_GL_CreateContext(window);
  defer _ = sdl.SDL_GL_DeleteContext(gl_context);

  _= sdl.SDL_GL_MakeCurrent(window, gl_context);
  _= sdl.SDL_GL_SetSwapInterval(1);  // Enable vsync

  // Setup Dear ImGui context
  if (ig.igCreateContext (null) == null){
    return error.ImGuiCreateContextFailure;
  }
  defer ig.igDestroyContext (null);

  const pio = ig.igGetIO_Nil ();
  pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
  pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableGamepad;    // Enable Gamepad Controls
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
  _ = impl_sdl3.ImGui_ImplSDL3_InitForOpenGL(@ptrCast(window), gl_context);
  defer impl_sdl3.ImGui_ImplSDL3_Shutdown ();
  _ = impl_opengl3.ImGui_ImplOpenGL3_Init(glsl_version.ptr);
  defer impl_opengl3.ImGui_ImplOpenGL3_Shutdown ();

  //------------
  // Load image
  //------------
  const ImageName = "sailboat-400.jpg";
  var textureId : glfw.GLuint = undefined;
  var textureWidth: c_int = 0;
  var textureHeight : c_int = 0;
  _ = img_load.LoadTextureFromFile(ImageName, &textureId, &textureWidth, &textureHeight);

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
  var showWindowDelay:i32 = 2; // TODO: Avoid flickering of window at startup.

  stf.setupFonts();

  const sz  = ig.ImVec2 {.x = 0, .y = 0} ;

  var zoomTextureID: glfw.GLuint = 0; //# Must be == 0 at first
  defer glfw.glDeleteTextures(1, &zoomTextureID);

  var done = false;
  while (!done) {
    var event: sdl.SDL_Event = undefined;
    while (sdl.SDL_PollEvent(&event)) {
      _ = impl_sdl3.ImGui_ImplSDL3_ProcessEvent(@ptrCast(&event));
      if (event.type == sdl.SDL_EVENT_QUIT)
        done = true;
      if ((event.type == sdl.SDL_EVENT_WINDOW_CLOSE_REQUESTED) and (event.window.windowID == sdl.SDL_GetWindowID(window)))
        done = true;
    }
    // Start the Dear ImGui frame
    impl_opengl3.ImGui_ImplOpenGL3_NewFrame();
    impl_sdl3.ImGui_ImplSDL3_NewFrame();
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
    {
      _ = ig.igBegin (ifa.ICON_FA_THUMBS_UP ++ " ImGui: Dear Bindings", null, 0);
      defer ig.igEnd ();
      ig.igText (ifa.ICON_FA_COMMENT ++ " SDL3 v"); ig.igSameLine (0, -1.0);
      ig.igText ("[%d],[%s]", sdl.SDL_GetVersion(), sdl.SDL_GetRevision());
      ig.igText (ifa.ICON_FA_COMMENT ++ " OpenGL v"); ig.igSameLine (0, -1.0);
      ig.igText (glfw.glGetString(glfw.GL_VERSION));
      ig.igText(ifa.ICON_FA_CIRCLE_INFO ++ " Dear ImGui v"); ig.igSameLine (0, -1.0);
      ig.igText(ig.igGetVersion());
      ig.igText(ifa.ICON_FA_CIRCLE_INFO ++ " Zig v"); ig.igSameLine (0, -1.0);
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
      ig.igSeparatorText(ifa.ICON_FA_WRENCH ++ " Icon font test ");
      ig.igText(ifa.ICON_FA_TRASH_CAN  ++ " Trash");

      ig.igSpacing();
      ig.igText(ifa.ICON_FA_MAGNIFYING_GLASS_PLUS
          ++ " " ++ ifa.ICON_FA_POWER_OFF
          ++ " " ++ ifa.ICON_FA_MICROPHONE
          ++ " " ++ ifa.ICON_FA_MICROCHIP
          ++ " " ++ ifa.ICON_FA_VOLUME_HIGH
          ++ " " ++ ifa.ICON_FA_SCISSORS
          ++ " " ++ ifa.ICON_FA_SCREWDRIVER_WRENCH
          ++ " " ++ ifa.ICON_FA_BLOG);
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

    //------------------------
    // Show image load window
    //------------------------
    {
      _ = ig.igBegin("Image load test", null, 0);
      defer ig.igEnd();
      var imageBoxPosTop:ig.ImVec2 = undefined;
      var imageBoxPosEnd:ig.ImVec2 = undefined;
      // Load image
      const size       = ig.ImVec2 {.x = @floatFromInt(textureWidth), .y = @floatFromInt(textureHeight)};
      const uv0        = ig.ImVec2 {.x = 0, .y = 0};
      const uv1        = ig.ImVec2 {.x = 1, .y = 1};
      ig.igGetCursorScreenPos(&imageBoxPosTop);// # Get absolute pos.
      ig.igImage(ig.ImTextureRef{._TexData = null, ._TexID = textureId}, size, uv0, uv1);
      ig.igGetCursorScreenPos(&imageBoxPosEnd);// # Get absolute pos.
      if(ig.igIsItemHovered(ig.ImGuiHoveredFlags_DelayNone)){
        utils.zoomGlass(&zoomTextureID, textureWidth, imageBoxPosTop, imageBoxPosEnd);
      }
    }
    //-----------
    // Rendering
    //-----------
    ig.igRender ();
    glfw.glViewport(0, 0, @intFromFloat(pio.*.DisplaySize.x), @intFromFloat(pio.*.DisplaySize.y));
    glfw.glClearColor(clearColor[0], clearColor[1], clearColor[2], clearColor[3]);
    glfw.glClear(glfw.GL_COLOR_BUFFER_BIT);
    impl_opengl3.ImGui_ImplOpenGL3_RenderDrawData(@ptrCast(ig.igGetDrawData()));
    _ = sdl.SDL_GL_SwapWindow(window);

    if(showWindowDelay >= 0){
      showWindowDelay -= 1;
    }
    if(showWindowDelay == 0){ // Visible main window here at start up
      _ = sdl.SDL_ShowWindow(window);
    }

  }// while end
} // main end
