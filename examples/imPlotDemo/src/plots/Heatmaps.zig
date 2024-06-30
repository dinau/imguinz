const utils = @import("../utils.zig");

pub const c = @cImport({
    @cInclude("stdlib.h");
});

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

pub fn demo_Heatmaps() !void {
    const st = struct {
        var values1 = [_][7]f32{ [_]f32{ 0.8, 2.4, 2.5, 3.9, 0.0, 4.0, 0.0 },
                                 [_]f32{ 2.4, 0.0, 4.0, 1.0, 2.7, 0.0, 0.0 },
                                 [_]f32{ 1.1, 2.4, 0.8, 4.3, 1.9, 4.4, 0.0 },
                                 [_]f32{ 0.6, 0.0, 0.3, 0.0, 3.1, 0.0, 0.0 },
                                 [_]f32{ 0.7, 1.7, 0.6, 2.6, 2.2, 6.2, 0.0 },
                                 [_]f32{ 1.3, 1.2, 0.0, 0.0, 0.0, 3.2, 5.1 },
                                 [_]f32{ 0.1, 2.0, 0.0, 1.4, 0.0, 1.9, 6.3 } };
        var scale_min: f32 = 0;
        var scale_max: f32 = 6.3;
        const xlabels: [7][*c]const u8 = [_][*c]const u8{ "C1", "C2", "C3", "C4", "C5", "C6", "C7" };
        const ylabels: [7][*c]const u8 = [_][*c]const u8{ "R1", "R2", "R3", "R4", "R5", "R6", "R7" };
        var map = ig.ImPlotColormap_Viridis;
    };

    if (ig.ImPlot_ColormapButton(ig.ImPlot_GetColormapName(st.map), .{ .x = 225, .y = 0 }, st.map)) {
        st.map = @mod((st.map + 1), ig.ImPlot_GetColormapCount());
        // We bust the color cache of our plots so that item colors will
        // resample the new colormap in the event that they have already
        // been created. See documentation in implot.h.
        ig.ImPlot_BustColorCache("##Heatmap1");
        ig.ImPlot_BustColorCache("##Heatmap2");
    }

    ig.igSameLine(0, -1.0);
    ig.igLabelText("##Colormap Index", "%s", "Change Colormap");
    ig.igSetNextItemWidth(225);
    _ = ig.igDragFloatRange2("Min / Max", &st.scale_min, &st.scale_max, 0.01, -20, 20, "%.3f", null, 0);
    const st2 = struct {
        var hm_flags: ig.ImPlotHeatmapFlags = 0;
        var axes_flags: ig.ImPlotAxisFlags = ig.ImPlotAxisFlags_Lock | ig.ImPlotAxisFlags_NoGridLines | ig.ImPlotAxisFlags_NoTickMarks;
    };
    _ = ig.igCheckboxFlags_IntPtr("Column Major", &st2.hm_flags, ig.ImPlotHeatmapFlags_ColMajor);

    ig.ImPlot_PushColormap_PlotColormap(st.map);
    if (ig.ImPlot_BeginPlot("##Heatmap1", .{ .x = 225, .y = 225 }, ig.ImPlotFlags_NoLegend | ig.ImPlotFlags_NoMouseText)) {
        ig.ImPlot_SetupAxes(null, null, st2.axes_flags, st2.axes_flags);
        ig.ImPlot_SetupAxisTicks_double(ig.ImAxis_X1, 0 + 1.0 / 14.0, 1 - 1.0 / 14.0, 7, &st.xlabels, false);
        ig.ImPlot_SetupAxisTicks_double(ig.ImAxis_Y1, 1 - 1.0 / 14.0, 0 + 1.0 / 14.0, 7, &st.ylabels, false);
        ig.ImPlot_PlotHeatmap_FloatPtr("heat", &st.values1[0], 7, 7, st.scale_min, st.scale_max, "%g", .{ .x = 0, .y = 0 }, .{ .x = 1, .y = 1 }, st2.hm_flags);
        ig.ImPlot_EndPlot();
    }
    ig.igSameLine(0, -1.0);
    ig.ImPlot_ColormapScale("##HeatScale", st.scale_min, st.scale_max, .{ .x = 60, .y = 225 }, "%g", 0, utils.IMPLOT_AUTO);

    ig.igSameLine(0, -1.0);

    const size = 80;
    const st3 = struct {
        var values2: [size * size]f64 = undefined;
    };
    c.srand(@intFromFloat((ig.igGetTime() * 1000000)));
    for (0..size * size) |i| {
        st3.values2[i] = utils.RandomRange(0.0, 1.0);
    }

    if (ig.ImPlot_BeginPlot("##Heatmap2", .{ .x = 225, .y = 225 }, 0)) {
        ig.ImPlot_SetupAxes(null, null, ig.ImPlotAxisFlags_NoDecorations, ig.ImPlotAxisFlags_NoDecorations);
        ig.ImPlot_SetupAxesLimits(-1, 1, -1, 1, ig.ImPlotCond_Once);
        ig.ImPlot_PlotHeatmap_doublePtr("heat1", &st3.values2, size, size, 0, 1, null, .{ .x = 0, .y = 0 }, .{ .x = 1, .y = 1 }, 0);
        ig.ImPlot_PlotHeatmap_doublePtr("heat2", &st3.values2, size, size, 0, 1, null, .{ .x = -1, .y = -1 }, .{ .x = 0, .y = 0 }, 0);
        ig.ImPlot_EndPlot();
    }
    ig.ImPlot_PopColormap(1);
}
