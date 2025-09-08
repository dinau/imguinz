const std = @import("std");
const ig = @import("cimgui");
const ip = @import("implot");
const ipz = @import("zimplot.zig");
const ip3 = @import("implot3d");
const ifa = @import("fonticon");
const app = @import("appimgui");
const stf = @import("setupfont");

pub const c = @cImport({
    @cInclude("stdlib.h");
});

const IMGUI_HAS_DOCK = false; // Docking feature

const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

//-----------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) !void {
    stf.setupFonts(); // Setup CJK fonts and Icon fonts

    // setup ImPlot
    const imPlotContext = ip.ImPlot_CreateContext();
    defer ip.ImPlot_DestroyContext(imPlotContext);
    //--- 3D
    const imPlot3DContext = ip3.ImPlot3D_CreateContext();
    defer ip3.ImPlot3D_DestroyContext(imPlot3DContext);

    //-------------
    // Global vars
    //-------------

    //------------------------
    // Select Dear ImGui style
    //------------------------
    ig.igStyleColorsClassic(null);
    //ig.igStyleColorsDark (null);
    //ig.igStyleColorsLight (null);

    const pio = ig.igGetIO_Nil();

    //---------------
    // main loop GUI
    //---------------
    while (!window.shouldClose()) {
        window.pollEvents();

        // Iconify sleep
        if (window.isIconified()) {
            continue;
        }

        // Start the Dear ImGui frame
        window.frame();

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
            _ = ig.igBegin(ifa.ICON_FA_THUMBS_UP ++ " Dear ImGui", null, 0);
            defer ig.igEnd();
            // Static vars
            const N = 20;
            const st = struct {
                var xs: [N * N]f32 = undefined;
                var ys: [N * N]f32 = undefined;
                var zs: [N * N]f32 = undefined;
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
            st.t += ig.igGetIO_Nil().*.DeltaTime;
            // Define the range for X and Y
            const min_val: f32 = -1.0;
            const max_val: f32 = 1.0;
            const step = (max_val - min_val) / (N - 1);
            // Populate the xs, ys, and zs arrays

            //var i: usize = 0;
            //while (i < N) : (i += 1) {
            //    var j: usize = 0;
            //    while (j < N) : (j += 1) {
            //        const idx = i * N + j;
            //        st.xs[idx] = min_val + @as(f32, @floatFromInt(j)) * step; // X values are constant along rows
            //        st.ys[idx] = min_val + @as(f32, @floatFromInt(i)) * step; // Y values are constant along columns
            //        st.zs[idx] = std.math.sin(2 * st.t + std.math.sqrt((st.xs[idx] * st.xs[idx] + st.ys[idx] * st.ys[idx]))); // z = sin(2t + sqrt(x^2 + y^2))
            //    }
            //}

            for (0..N) |i| {
                for (0..N) |j| {
                    const idx = i * N + j;
                    st.xs[idx] = min_val + @as(f32, @floatFromInt(j)) * step; // X values are constant along rows
                    st.ys[idx] = min_val + @as(f32, @floatFromInt(i)) * step; // Y values are constant along columns
                    st.zs[idx] = std.math.sin(2 * st.t + std.math.sqrt((st.xs[idx] * st.xs[idx] + st.ys[idx] * st.ys[idx]))); // z = sin(2t + sqrt(x^2 + y^2))
                    if (!(j < N)) break;
                }
                if (!(i < N)) break;
            }

            // Choose fill color
            ig.igText("%s","Fill color");
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

        //--------
        // render
        //--------
        window.render();
    } // end while
} // end main window

//--------
// main()
//--------
pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    //_ = app.setTheme(.light); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    try gui_main(&window);
}
