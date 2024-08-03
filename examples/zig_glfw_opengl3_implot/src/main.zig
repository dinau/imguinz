const std = @import("std");
const builtin = @import("builtin");
const ig = @import("imgui.zig");
const ip = @import("implot.zig");
const fonts = @import("fonts.zig");

pub const c = @cImport({
    @cInclude("stdlib.h");
});

const IMGUI_HAS_DOCK = false; // true: Can't compile at this time.

fn glfw_error_callback(err: c_int, description: [*c]const u8) callconv(.C) void {
    std.debug.print("GLFW Error {d}: {s}\n", .{ err, description });
}

const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 800;

//--------
// main()
//--------
pub fn main() !void {
    //-------------
    // For print()
    //-------------
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    //-------------------
    // GLFW initializing
    //-------------------
    _ = ig.glfwSetErrorCallback(glfw_error_callback);
    if (ig.glfwInit() == 0) {
        try stdout.print("Failed to initialize GLFW: [main.zig]: \n", .{});
        try bw.flush(); // don't forget to flush!
        return error.glfwInitFailure;
    }
    defer ig.glfwTerminate();

    //-------------------------
    // Decide GL+GLSL versions
    //-------------------------
    const glsl_version = "#version 130";
    ig.glfwWindowHint(ig.GLFW_OPENGL_FORWARD_COMPAT, ig.GLFW_TRUE);
    ig.glfwWindowHint(ig.GLFW_OPENGL_PROFILE, ig.GLFW_OPENGL_CORE_PROFILE);
    ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MAJOR, 3);
    ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MINOR, 3);
    //
    ig.glfwWindowHint(ig.GLFW_RESIZABLE, ig.GLFW_TRUE); // Resizable window
    ig.glfwWindowHint(ig.GLFW_VISIBLE, ig.GLFW_FALSE); // Needs this if OpenGL is not initialized !.

    //---------------------------------------------
    // Create GLFW window and activate OpenGL libs
    //---------------------------------------------
    const window = ig.glfwCreateWindow(MainWinWidth, MainWinHeight, "Dear ImGui example", null, null);
    if (window == null) {
        ig.glfwTerminate();
        return error.glfwInitFailure;
    }
    defer ig.glfwDestroyWindow(window);

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

    //-------------------------------
    // Visible/Show main window here
    //-------------------------------
    ig.glfwShowWindow(window);

    ig.glfwSwapInterval(1); // Enable VSync --- Lower CPU load

    // Setup Dear ImGui context
    if (ig.igCreateContext(null) == null) {
        return error.ImGuiCreateContextFailure;
    }
    defer ig.igDestroyContext(null);

    // setup ImPlot
    const imPlotContext = ip.ImPlot_CreateContext();
    defer ip.ImPlot_DestroyContext(imPlotContext);

    const pio = ig.igGetIO();
    pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableKeyboard; // Enable Keyboard Controls
    //pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableGamepad;    // Enable Gamepad Controls
    // Setup doncking feature --- can't compile well at this moment.
    if (IMGUI_HAS_DOCK) {
        pio.*.ConfigFlags |= ig.ImGuiConfigFlags_DockingEnable; // Enable Docking
        pio.*.ConfigFlags |= ig.ImGuiConfigFlags_ViewportsEnable; // Enable Multi-Viewport / Platform Windows
    }

    //-------------------------------------
    // ImGui GLFW OpenGL backend interface
    //-------------------------------------
    _ = ig.ImGui_ImplGlfw_InitForOpenGL(window, true);
    defer ig.ImGui_ImplGlfw_Shutdown();
    _ = ig.ImGui_ImplOpenGL3_Init(glsl_version);
    defer ig.ImGui_ImplOpenGL3_Shutdown();

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
    var clearColor = [_]f32{ 0.25, 0.55, 0.9, 1.0 };
    // Input text buffer
    var sTextInuputBuf = [_:0]u8{0} ** 200;

    //------------------------
    // Select Dear ImGui style
    //------------------------
    ig.igStyleColorsClassic(null);
    //ig.igStyleColorsDark (null);
    //ig.igStyleColorsLight (null);

    fonts.setupFonts(); // Setup CJK fonts and Icon fonts

    const DefaultButtonSize  = ig.ImVec2 {.x = 0, .y = 0} ;

    //---------------
    // main loop GUI
    //---------------
    while (ig.glfwWindowShouldClose(window) == 0) {
        ig.glfwPollEvents();
        // Start the Dear ImGui frame
        ig.ImGui_ImplOpenGL3_NewFrame();
        ig.ImGui_ImplGlfw_NewFrame();
        ig.igNewFrame();

        //------------------
        // Show demo window
        //------------------
        if (showDemoWindow) {
            ig.igShowDemoWindow(&showDemoWindow);
        }
        if (showImPlotDemoWindow) {
            ip.ImPlot_ShowDemoWindow(&showImPlotDemoWindow);
        }

        //------------------
        // Show main window
        //------------------
        if (ig.igBegin(fonts.ICON_FA_THUMBS_UP ++ " Dear ImGui", null, 0)) {
            defer ig.igEnd();
            ig.igText(fonts.ICON_FA_COMMENT ++ " GLFW v"); ig.igSameLine(0, -1.0);
            ig.igText(ig.glfwGetVersionString());
            ig.igText(fonts.ICON_FA_COMMENT ++ " OpenGL v"); ig.igSameLine(0, -1.0);
            ig.igText(ig.glGetString(ig.GL_VERSION));
            ig.igText(fonts.ICON_FA_CIRCLE_INFO ++ " Dear ImGui v"); ig.igSameLine(0, -1.0);
            ig.igText(ig.igGetVersion());
            ig.igText(fonts.ICON_FA_CIRCLE_INFO ++ " Zig v"); ig.igSameLine(0, -1.0);
            ig.igText(builtin.zig_version_string);

            ig.igSpacing();
            _ = ig.igInputTextWithHint("InputText", "Input text here", &sTextInuputBuf, sTextInuputBuf.len, 0, null, null);
            ig.igText("Input result:"); ig.igSameLine(0, -1.0);
            ig.igText(&sTextInuputBuf);

            ig.igSpacing();
            _ = ig.igCheckbox("Demo Window", &showDemoWindow);
            _ = ig.igCheckbox("ImPlot Demo Window", &showImPlotDemoWindow);
            _ = ig.igCheckbox("Another Window", &showAnotherWindow);

            _ = ig.igSliderFloat("Float", &fval, 0.0, 1.0, "%.3f", 0);
            _ = ig.igColorEdit3("Clear color", &clearColor, 0);

            if (ig.igButton("Button", DefaultButtonSize)) {
                counter += 1;
            }
            ig.igSameLine(0, -1.0);
            ig.igText("Counter = %d", counter);
            ig.igText("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
            // Show icon fonts
            ig.igSeparatorText(fonts.ICON_FA_WRENCH ++ " Icon font test ");
            ig.igText(fonts.ICON_FA_TRASH_CAN ++ " Trash");

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
            _ = ig.igBegin("Another Window", &showAnotherWindow, 0);
            defer ig.igEnd();
            ig.igText("Hello from another window!");
            if (ig.igButton("Close Me", DefaultButtonSize)) showAnotherWindow = false;
        }

        if (showImPlotTestWindow) {
            try imPlotWindow(&showImPlotTestWindow);
            try imPlotWindow2(&showImPlotTestWindow);
        }

        //-----------
        // End procs
        //-----------
        // Rendering
        ig.igRender();
        ig.glfwMakeContextCurrent(window);
        ig.glViewport(0, 0, @intFromFloat(pio.*.DisplaySize.x), @intFromFloat(pio.*.DisplaySize.y));
        ig.glClearColor(clearColor[0], clearColor[1], clearColor[2], clearColor[3]);
        ig.glClear(ig.GL_COLOR_BUFFER_BIT);
        ig.ImGui_ImplOpenGL3_RenderDrawData(ig.igGetDrawData());
        // Docking featrue --- N/A
        if (IMGUI_HAS_DOCK) {
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

//--------------
// imPlotWindow
//--------------
fn imPlotWindow(fshow: *bool) !void {
    const numx = 20;
    const st = struct {
        var bar_data: [numx]ig.ImS32 = undefined;
        var x_data: [numx]ig.ImS32 = undefined;
        var y_data: [numx]ig.ImS32 = undefined;
        var initReq = true;
    };
    if (st.initReq) {
        st.initReq = false;
        for (0..numx) |i| {
            st.bar_data[i] = @mod(c.rand(), numx * numx);
            st.x_data[i] = @intCast(i);
            st.y_data[i] = @intCast(i * i);
        }
    }
    if (ig.igBegin("Plot Window", fshow, 0)) {
        defer ig.igEnd();
        if (ip.ImPlot_BeginPlot("My Plot", .{ .x = 0, .y = 0 }, 0)) {
            defer ip.ImPlot_EndPlot();
            // Using "./zimplot.zig"
            try ip.ImPlot_PlotBars("My Bar Plot", &st.bar_data, st.bar_data.len);
            try ip.ImPlot_PlotLineXy("My Line Plot", &st.x_data, &st.y_data, st.x_data.len);
        }
    }
}

//---------------
// imPlotWindow2
//---------------
fn imPlotWindow2(fshow: *bool) !void {
    const numx = 20;
    const st = struct {
        var bar_data: [numx]ig.ImS32 = undefined;
        var x_data: [numx]ig.ImS32 = undefined;
        var y_data: [numx]ig.ImS32 = undefined;
        var initReq = true;
    };
    if (st.initReq) {
        st.initReq = false;
        for (0..numx) |i| {
            st.bar_data[i] = @mod(c.rand(), numx * numx);
            st.x_data[i] = @intCast(i);
            st.y_data[i] = @intCast(i * i);
        }
    }
    if (ig.igBegin("Plot Window2", fshow, 0)) {
        defer ig.igEnd();
        if (ip.ImPlot_BeginPlot("My Plot", .{ .x = 0, .y = 0 }, 0)) {
            defer ip.ImPlot_EndPlot();
            // Not using "./zimplot.zig"
            ip.ImPlot_PlotBars_S32PtrInt("My Bar Plot"
                                    ,&st.bar_data
                                    ,st.bar_data.len
                                    ,0.67 // bar_size
                                    ,0.0  // shift
                                    ,0    // ImPlotFlags
                                    ,0    // offset
                                    ,@sizeOf(ig.ImS32)); // stride
            ip.ImPlot_PlotLine_S32PtrS32Ptr("My LiSe Plot"
                                    ,&st.x_data
                                    ,&st.y_data
                                    ,st.x_data.len
                                    ,0    // ImPlotFlags
                                    ,0    // offset
                                    ,@sizeOf(ig.ImS32)); // stride
        }
    }
}
