const std = @import("std");
const utils = @import("../utils.zig");
const ip = @import("../zimplot.zig");

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

pub fn Demo_Histogram2D() !void {
    const Num = 100000;
    const st = struct {
        var count: c_int = 50000;
        var xybins = [2]c_int{ 100, 100 };
        var hist_flags: ig.ImPlotHistogramFlags = 0;
        // TODO
        var dist1: [Num]f64 = undefined;
        var dist2: [Num]f64 = undefined;
        //var  NormalDistribution<100000> dist1(1, 2);
        //var  NormalDistribution<100000> dist2(1, 1);
        var initData = true;
    };
    if (st.initData) {
        st.initData = false;
        utils.NormalDistribution(&st.dist1, 1, 2, Num);
        utils.NormalDistribution(&st.dist2, 1, 1, Num);
    }

    _ = ig.igSliderInt("Count", &st.count, 100, 100000, "%d", 0);
    _ = ig.igSliderInt2("Bins", &st.xybins, 1, 500, "%d", 0);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("Density", &st.hist_flags, ig.ImPlotHistogramFlags_Density);

    var max_count: f64 = 0;
    const flags = ig.ImPlotAxisFlags_AutoFit | ig.ImPlotAxisFlags_Foreground;
    ig.ImPlot_PushColormap_Str("Hot");
    var regn: ig.ImVec2 = undefined;
    ig.igGetContentRegionAvail(&regn);
    const vec2: ig.ImVec2 = .{ .x = regn.x - 100 - ig.igGetStyle().*.ItemSpacing.x, .y = 0 };
    if (ig.ImPlot_BeginPlot("##Hist2D", vec2, 0)) {
        ig.ImPlot_SetupAxes(null, null, flags, flags);
        ig.ImPlot_SetupAxesLimits(-6, 6, -6, 6, ig.ImPlotCond_Once);
        max_count = try ip.ImPlot_PlotHistogram2DEx("Hist2D", &st.dist1, &st.dist2, st.count, st.xybins[0], st.xybins[1], .{ .X = .{ .Min = -6, .Max = 6 }, .Y = .{ .Min = -6, .Max = 6 } }, st.hist_flags);
        ig.ImPlot_EndPlot();
    }
    ig.igSameLine(0, -1.0);
    const label =
        if ((st.hist_flags & ig.ImPlotHistogramFlags_Density) != 0)
        "Density"
    else
        "Count";
    ig.ImPlot_ColormapScale(label, 0, max_count, .{ .x = 100, .y = 0 }, "%g", 0, utils.IMPLOT_AUTO);
    ig.ImPlot_PopColormap(1);
}