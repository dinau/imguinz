const std = @import("std");
const math = @import("std").math;
const ip = @import("../zimplot.zig");
const utils = @import("../utils.zig");

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

pub fn demo_LinePlots() !void {
    const st = struct {
        var xs1: [1001]f32 = undefined;
        var ys1: [1001]f32 = undefined;
        var xs2: [20]f64 = undefined;
        var ys2: [20]f64 = undefined;
    };
    for (0..1001) |i| {
        const k: i32 = @intCast(i);
        st.xs1[i] = @as(f32, @floatFromInt(k)) * 0.001;
        st.ys1[i] = 0.5 + 0.5 * math.sin(50 * (st.xs1[i] + @as(f32, @floatCast(ig.igGetTime())) / 10));
    }
    for (0..20) |i| {
        const k: i32 = @intCast(i);
        st.xs2[i] = @as(f64, @floatFromInt(k)) * 1 / 19.0;
        st.ys2[i] = st.xs2[i] * st.xs2[i];
    }
    if (ig.ImPlot_BeginPlot("Line Plots", .{ .x = -1, .y = 0 }, 0)) {
        ig.ImPlot_SetupAxes("x", "y", 0, 0);
        try ip.ImPlot_PlotLineXy("f(x)", &st.xs1, &st.ys1, 1001);
        ig.ImPlot_SetNextMarkerStyle(ig.ImPlotMarker_Circle, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL);
        try ip.ImPlot_PlotLineXyEx("g(x)", &st.xs2, &st.ys2, 20, ig.ImPlotLineFlags_Segments, 0, @sizeOf(@TypeOf(st.xs2[0])));
        ig.ImPlot_EndPlot();
    }
}
