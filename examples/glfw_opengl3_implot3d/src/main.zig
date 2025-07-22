const std = @import("std");
const builtin = @import("builtin");
const ig = @import("imgui.zig");
const ip = @import("implot.zig");
const ip3 = @import("implot3d.zig");
const fonts = @import("fonts.zig");
const utils = @import("utils.zig");

const IMGUI_HAS_DOCK = false; // Docking feature

fn glfw_error_callback(err: c_int, description: [*c]const u8) callconv(.C) void {
    std.debug.print("GLFW Error {d}: {s}\n", .{ err, description });
}

const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

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

    var glsl_version_buf: [30]u8 = undefined;

    //-------------------------
    // createImGui
    //-------------
    const versions = [_][2]u16{ [_]u16{ 4, 6 }, [_]u16{ 4, 5 }, [_]u16{ 4, 4 }, [_]u16{ 4, 3 }, [_]u16{ 4, 2 }, [_]u16{ 4, 1 }, [_]u16{ 4, 0 }, [_]u16{ 3, 3 } };

    //-------------------------
    // Decide GL+GLSL versions
    //-------------------------
    var window: *ig.GLFWwindow = undefined;
    var glsl_version: [:0]u8 = undefined;
    for (versions) |ver| {
        ig.glfwWindowHint(ig.GLFW_OPENGL_FORWARD_COMPAT, ig.GLFW_TRUE);
        ig.glfwWindowHint(ig.GLFW_OPENGL_PROFILE, ig.GLFW_OPENGL_CORE_PROFILE);
        ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MAJOR, ver[0]);
        ig.glfwWindowHint(ig.GLFW_CONTEXT_VERSION_MINOR, ver[1]);
        //
        ig.glfwWindowHint(ig.GLFW_RESIZABLE, ig.GLFW_TRUE); // Resizable window
        ig.glfwWindowHint(ig.GLFW_VISIBLE, ig.GLFW_FALSE); // Needs this if OpenGL is not initialized !.

        //---------------------------------------------
        // Create GLFW window and activate OpenGL libs
        //---------------------------------------------
        if (ig.glfwCreateWindow(MainWinWidth, MainWinHeight, "Dear ImGui example", null, null)) |pointer| {
            window = pointer;
            glsl_version = try std.fmt.bufPrintZ(&glsl_version_buf, "#version {d}", .{ver[0] * 100 + ver[1] * 10});
            try stdout.print("{s} \n", .{glsl_version});
            break;
        }
    } else {
        ig.glfwTerminate();
        return error.glfwCreateWindowFailure;
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

    ig.glfwSwapInterval(1); // Enable VSync --- Lower CPU load

    // Setup Dear ImGui context
    if (ig.igCreateContext(null) == null) {
        return error.ImGuiCreateContextFailure;
    }
    defer ig.igDestroyContext(null);

    // setup ImPlot
    const imPlotContext = ip.ImPlot_CreateContext();
    defer ip.ImPlot_DestroyContext(imPlotContext);
    //--- 3D
    const imPlot3DContext = ip3.ImPlot3D_CreateContext();
    defer ip3.ImPlot3D_DestroyContext(imPlot3DContext);

    const pio = ig.igGetIO_Nil();
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
    // Back ground color
    const clearColor = [_]f32{ 0.25, 0.55, 0.9, 1.0 };
    var showWindowDelay: i32 = 2; // TODO: Avoid flickering of window at startup.

    //-------------------------
    // Select Dear ImGui style
    //-------------------------
    ig.igStyleColorsClassic(null);
    //ig.igStyleColorsDark (null);
    //ig.igStyleColorsLight (null);

    fonts.setupFonts(); // Setup CJK fonts and Icon fonts

    //const DefaultButtonSize  = utils.vec2(0, 0);

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
        ig.igShowDemoWindow(null);
        ip.ImPlot_ShowDemoWindow(null);
        ip3.ImPlot3D_ShowDemoWindow(null);

        //----------------------------
        // Show ImPlot3D demo window
        //----------------------------
        {
            _ = ig.igBegin(fonts.ICON_FA_THUMBS_UP ++ " Dear ImGui", null, 0);
            defer ig.igEnd();
            // Static vars
            const N = 20;
            const st = struct {
                var xs: [400]f32 = undefined;
                var ys: [400]f32 = undefined;
                var zs: [400]f32 = undefined;
                var t: f32 = 0.0;
                //
                var selected_fill: c_int = 1; // Colormap by default
                var sel_colormap: c_int = 5; // Jet by default

                var solid_color = ig.ImVec4{ .x = 0.8, .y = 0.8, .z = 0.2, .w = 0.6 };
                // Generate colormaps
                var colormaps = [_][*c]const u8{ "Viridis", "Plasma", "Hot", "Cool", "Pink", "Jet", "Twilight", "RdBu", "BrBG", "PiYG", "Spectral", "Greys" };
                //
                var custom_range = false;
                var range_min: f32 = -1.0;
                var range_max: f32 = 1.0;
            };

            ig.igText("Frame rate  %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
            st.t = st.t + ig.igGetIO_Nil().*.DeltaTime;
            // Define the range for X and Y
            const min_val: f32 = -1.0;
            const max_val: f32 = 1.0;
            const step = (max_val - min_val) / (N - 1);
            // Populate the xs, ys, and zs arrays
            for (0..(N - 1)) |i| {
                var j: usize = 0;
                while (j < N) {
                    const idx = i * N + j;
                    st.xs[idx] = min_val + @as(f32, @floatFromInt(j)) * step; // X values are constant along rows
                    st.ys[idx] = min_val + @as(f32, @floatFromInt(i)) * step; // Y values are constant along columns
                    st.zs[idx] = std.math.sin(2 * st.t + std.math.sqrt((st.xs[idx] * st.xs[idx] + st.ys[idx] * st.ys[idx]))); // z = sin(2t + sqrt(x^2 + y^2))
                    j = j + 1;
                }
            }
            // Choose fill color
            ig.igText("Fill color");
            ig.igIndent(0);
            // Choose solid color
            _ = ig.igRadioButton_IntPtr("Solid", &st.selected_fill, 0);
            if (st.selected_fill == 0) {
                ig.igSameLine(0, -1.0);
                _ = ig.igColorEdit4("##SurfaceSolidColor", @ptrCast(&st.solid_color), 0);
            }
            // Choose colormap
            _ = ig.igRadioButton_IntPtr("Colormap", &st.selected_fill, 1);
            if (st.selected_fill == 1) {
                ig.igSameLine(0, -1.0);
                _ = ig.igCombo_Str_arr("##SurfaceColormap", &st.sel_colormap, &st.colormaps, st.colormaps.len, -1);
            }
            ig.igUnindent(0);

            // Choose range
            _ = ig.igCheckbox("Custom range", &st.custom_range);
            ig.igIndent(0);
            if (!st.custom_range) {
                ig.igBeginDisabled(true);
            }
            _ = ig.igSliderFloat("Range min", &st.range_min, -1.0, st.range_max - 0.01, "%.3f", 0);
            _ = ig.igSliderFloat("Range max", &st.range_max, st.range_min + 0.01, 1.0, "%.3f", 0);
            if (!st.custom_range) {
                ig.igEndDisabled();
            }
            ig.igUnindent(0);

            // Begin the plot
            if (st.selected_fill == 1) {
                ip3.ImPlot3D_PushColormap_Str(st.colormaps[@intCast(st.sel_colormap)]);
            }
            if (ip3.ImPlot3D_BeginPlot("Surface Plots", .{ .x = -1, .y = 400 }, ip3.ImPlot3DFlags_NoClip)) {
                // Set styles
                ip3.ImPlot3D_SetupAxesLimits(-1, 1, -1, 1, -1.5, 1.5, ip3.ImPlot3DCond_Once);
                ip3.ImPlot3D_PushStyleVar_Float(ip3.ImPlot3DStyleVar_FillAlpha, 0.8);
                const IMPLOT3D_AUTO = -1; // Deduce variable automatically
                if (st.selected_fill == 0) {
                    ip3.ImPlot3D_SetNextFillStyle(.{ .x = st.solid_color.x, .y = st.solid_color.y, .z = st.solid_color.z, .w = st.solid_color.w }, IMPLOT3D_AUTO);
                }
                var vec4: ig.ImVec4 = undefined;
                ip3.ImPlot3D_GetColormapColor(@ptrCast(&vec4), 1, IMPLOT3D_AUTO);
                ip3.ImPlot3D_SetNextLineStyle(.{ .x = vec4.x, .y = vec4.y, .z = vec4.z, .w = vec4.w }, IMPLOT3D_AUTO);

                // Plot the surface
                if (st.custom_range) {
                    ip3.ImPlot3D_PlotSurface_FloatPtr("Wave Surface", &st.xs, &st.ys, &st.zs, N, N, st.range_min, st.range_max, 0, 0, @sizeOf(f32));
                } else {
                    ip3.ImPlot3D_PlotSurface_FloatPtr("Wave Surface", &st.xs, &st.ys, &st.zs, N, N, 0, 0, 0, 0, @sizeOf(f32));
                }
                // End the plot
                ip3.ImPlot3D_PopStyleVar(1);
                ip3.ImPlot3D_EndPlot();
            }
            if (st.selected_fill == 1) {
                ip3.ImPlot3D_PopColormap(1);
            }
        } // end ImPlot3d demo window

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
            if (0 != (pio.*.ConfigFlags & ig.ImGuiConfigFlags_ViewportsEnable)) {
                const backup_current_window = ig.glfwGetCurrentContext();
                ig.igUpdatePlatformWindows();
                ig.igRenderPlatformWindowsDefault(null, null);
                ig.glfwMakeContextCurrent(backup_current_window);
            }
        }
        ig.glfwSwapBuffers(window);

        if (showWindowDelay >= 0) {
            showWindowDelay -= 1;
        }
        if (showWindowDelay == 0) { // Visible main window here at start up
            ig.glfwShowWindow(window);
        }
    } // end while
} // end main window
