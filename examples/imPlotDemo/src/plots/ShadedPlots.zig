const std = @import("std");
const math = @import("std").math;
const ip = @import("../zimplot.zig");
const utils = @import("../utils.zig");

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

pub const c = @cImport({
    @cInclude("stdlib.h");
});

pub fn demo_ShadedPlots() !void {
    const MAX_N = 1001;
    var xs: [MAX_N]f32 = undefined;
    var ys: [MAX_N]f32 = undefined;
    var ys1: [MAX_N]f32 = undefined;
    var ys2: [MAX_N]f32 = undefined;
    var ys3: [MAX_N]f32 = undefined;
    var ys4: [MAX_N]f32 = undefined;

    c.srand(0);
    for (0..MAX_N) |i| {
        xs[i] = @as(f32, @floatFromInt(@as(i32, @intCast(i)))) * 0.001;
        ys[i] = 0.25 + 0.25 * math.sin(25 * xs[i]) * math.sin(5 * xs[i]) + utils.RandomRange(-0.01, 0.01);
        ys1[i] = ys[i] + utils.RandomRange(0.1, 0.12);
        ys2[i] = ys[i] - utils.RandomRange(0.1, 0.12);
        ys3[i] = 0.75 + 0.2 * math.sin(25 * xs[i]);
        ys4[i] = 0.75 + 0.1 * math.cos(25 * xs[i]);
    }
    const st = struct {
        var alpha: f32 = 0.25;
    };
    _ = ig.igDragFloat("Alpha", &st.alpha, 0.01, 0, 1, "%.3f", 0);

    if (ig.ImPlot_BeginPlot("Shaded Plots", .{ .x = -1, .y = 0 }, 0)) {
        ig.ImPlot_PushStyleVar_Float(ig.ImPlotStyleVar_FillAlpha, st.alpha);
        try ip.ImPlot_PlotShadedXyy("Uncertain Data", &xs, &ys1, &ys2, MAX_N);
        try ip.ImPlot_PlotLineXy("Uncertain Data",    &xs, &ys,  MAX_N);
        try ip.ImPlot_PlotShadedXyy("Overlapping",    &xs, &ys3, &ys4, MAX_N);
        try ip.ImPlot_PlotLineXy("Overlapping",       &xs, &ys3, MAX_N);
        try ip.ImPlot_PlotLineXy("Overlapping",       &xs, &ys4, MAX_N);
        ig.ImPlot_PopStyleVar(1);
        ig.ImPlot_EndPlot();
    }
}
