const std = @import("std");
const math = @import("std").math;
const utils = @import("../utils.zig");
const ip = @import("../zimplot.zig");

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

pub fn demo_Histogram() !void {
    const Num = 10000;
    const rmax: f32 = 13;
    const sigma: f64 = 2;
    const mu: f64 = 5;
    const st = struct {
        var hist_flags = ig.ImPlotHistogramFlags_Density;
        var bins: c_int = 50;
        var range = false;
        var rmin: f32 = -3;
        var dist: [Num]f64 = undefined;
        var initData = true;
    };
    if (st.initData) {
        st.initData = false;
        utils.NormalDistribution(&st.dist, mu, sigma, Num);
    }
    ig.igSetNextItemWidth(200);
    if (ig.igRadioButton_Bool("Sqrt", st.bins == ig.ImPlotBin_Sqrt)) {
        st.bins = ig.ImPlotBin_Sqrt;
    }
    ig.igSameLine(0, -1.0);
    if (ig.igRadioButton_Bool("Sturges", st.bins == ig.ImPlotBin_Sturges)) {
        st.bins = ig.ImPlotBin_Sturges;
    }
    ig.igSameLine(0, -1.0);
    if (ig.igRadioButton_Bool("Rice", st.bins == ig.ImPlotBin_Rice)) {
        st.bins = ig.ImPlotBin_Rice;
    }
    ig.igSameLine(0, -1.0);
    if (ig.igRadioButton_Bool("Scott", st.bins == ig.ImPlotBin_Scott)) {
        st.bins = ig.ImPlotBin_Scott;
    }
    ig.igSameLine(0, -1.0);
    if (ig.igRadioButton_Bool("N Bins", st.bins >= 0)) {
        st.bins = 50;
    }
    if (st.bins >= 0) {
        ig.igSameLine(0, -1.0);
        ig.igSetNextItemWidth(200);
        _ = ig.igSliderInt("##Bins", &st.bins, 1, 100, "%d", 0);
    }
    _ = ig.igCheckboxFlags_IntPtr("Horizontal", &st.hist_flags, ig.ImPlotHistogramFlags_Horizontal);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("Density", &st.hist_flags, ig.ImPlotHistogramFlags_Density);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("Cumulative", &st.hist_flags, ig.ImPlotHistogramFlags_Cumulative);

    _ = ig.igCheckbox("Range", &st.range);
    if (st.range) {
        ig.igSameLine(0, -1.0);
        ig.igSetNextItemWidth(200);
        _ = ig.igDragFloat2("##Range", &st.rmin, 0.1, -3, 13, "%.3f", 0);
        ig.igSameLine(0, -1.0);
        _ = ig.igCheckboxFlags_IntPtr("Exclude Outliers", &st.hist_flags, ig.ImPlotHistogramFlags_NoOutliers);
    }
    //static NormalDistribution<10000> dist(mu, sigma);
    var x: [100]f64 = undefined;
    var y: [100]f64 = undefined;
    if (0 != (st.hist_flags & ig.ImPlotHistogramFlags_Density)) {
        for (0..100) |i| {
            x[i] = -3 + 16 * @as(f64, @floatFromInt(i)) / 99.0;
            y[i] = math.exp(-(x[i] - mu) * (x[i] - mu) / (2 * sigma * sigma)) / (sigma * math.sqrt(2 * 3.141592653589793238));
        }
        if (0 != (st.hist_flags & ig.ImPlotHistogramFlags_Cumulative)) {
            for (0..100) |i| {
                y[i] += y[i - 1];
            }
            for (0..100) |i| {
                y[i] /= y[99];
            }
        }
    }

    if (ig.ImPlot_BeginPlot("##Histograms", .{ .x = -1, .y = 0 }, 0)) {
        ig.ImPlot_SetupAxes(null, null, ig.ImPlotAxisFlags_AutoFit, ig.ImPlotAxisFlags_AutoFit);
        ig.ImPlot_SetNextFillStyle(utils.IMPLOT_AUTO_COL, 0.5);
        if (st.range) { // TODO
            _ = try ip.ImPlot_PlotHistogramEx("Empirical", &st.dist, 10000, st.bins, 1.0, .{ .Min = st.rmin, .Max = rmax }, st.hist_flags);
        } else {
            _ = try ip.ImPlot_PlotHistogramEx("Empirical", &st.dist, 10000, st.bins, 1.0, .{ .Min = 0, .Max = 0 }, st.hist_flags);
        }
        if ((0 != (st.hist_flags & ig.ImPlotHistogramFlags_Density)) and (0 == (st.hist_flags & ig.ImPlotHistogramFlags_NoOutliers))) {
            if ((0 != st.hist_flags & ig.ImPlotHistogramFlags_Horizontal)) {
                try ip.ImPlot_PlotLineXy("Theoretical", &y, &x, 100);
            } else {
                try ip.ImPlot_PlotLineXy("Theoretical", &x, &y, 100);
            }
        }
        ig.ImPlot_EndPlot();
    }
}
