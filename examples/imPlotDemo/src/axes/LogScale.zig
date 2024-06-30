const std = @import("std");
const math = @import("std").math;
const ip = @import("../zimplot.zig");

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

//---------------
// demo_LogScale()
//---------------
pub fn demo_LogScale() !void {
    var xs: [1001]f64 = undefined;
    var ys1: [1001]f64 = undefined;
    var ys2: [1001]f64 = undefined;
    var ys3: [1001]f64 = undefined;
    for (0..1001) |i| {
        xs[i] = @as(f64, @floatFromInt(i)) * 0.1;
        ys1[i] = math.sin(xs[i]) + 1;
        ys2[i] = math.log(f64, math.e, xs[i]);
        ys3[i] = math.pow(f64, 10.0, xs[i]);
    }
    if (ig.ImPlot_BeginPlot("Log Plot", .{ .x = -1, .y = 0 }, 0)) {
        ig.ImPlot_SetupAxisScale_PlotScale(ig.ImAxis_X1, ig.ImPlotScale_Log10);
        ig.ImPlot_SetupAxesLimits(0.1, 100, 0, 10, ig.ImPlotCond_Once);
        try ip.ImPlot_PlotLineXy("f(x) = x",        &xs, &xs,  1001);
        try ip.ImPlot_PlotLineXy("f(x) = sin(x)+1", &xs, &ys1, 1001);
        try ip.ImPlot_PlotLineXy("f(x) = log(x)",   &xs, &ys2, 1001);
        try ip.ImPlot_PlotLineXy("f(x) = 10^x",     &xs, &ys3, 21);
        ig.ImPlot_EndPlot();
    }
}
