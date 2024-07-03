const std = @import("std");
const math = @import("std").math;
const ig = @import("../imgui.zig");
const ip = @import("../implot.zig");


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
    if (ip.ImPlot_BeginPlot("Log Plot", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxisScale_PlotScale(ip.ImAxis_X1, ip.ImPlotScale_Log10);
        ip.ImPlot_SetupAxesLimits(0.1, 100, 0, 10, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotLineXy("f(x) = x",        &xs, &xs,  1001);
        try ip.ImPlot_PlotLineXy("f(x) = sin(x)+1", &xs, &ys1, 1001);
        try ip.ImPlot_PlotLineXy("f(x) = log(x)",   &xs, &ys2, 1001);
        try ip.ImPlot_PlotLineXy("f(x) = 10^x",     &xs, &ys3, 21);
        ip.ImPlot_EndPlot();
    }
}
