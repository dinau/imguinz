const std = @import("std");
const math = @import("std").math;
const ip = @import("../zimplot.zig");
const utils = @import("../utils.zig");

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

pub fn demo_PieCharts() !void {
    const labels1 = [_][*c] const u8{"Frogs","Hogs","Dogs","Logs"};

    const st = struct {
      var data1 = [_]f32{0.15,  0.30,  0.2, 0.05};
      var flags:ig.ImPlotPieChartFlags  = 0;
    };

    ig.igSetNextItemWidth(250);
    _ = ig.igDragFloat4("Values", &st.data1, 0.01, 0, 1, "%3f", 0);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotPieChartFlags_Normalize",    &st.flags, ig.ImPlotPieChartFlags_Normalize);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotPieChartFlags_IgnoreHidden", &st.flags, ig.ImPlotPieChartFlags_IgnoreHidden);

    if (ig.ImPlot_BeginPlot("##Pie1", .{.x=250, .y=250}, ig.ImPlotFlags_Equal | ig.ImPlotFlags_NoMouseText)) {
        ig.ImPlot_SetupAxes(null, null, ig.ImPlotAxisFlags_NoDecorations, ig.ImPlotAxisFlags_NoDecorations);
        ig.ImPlot_SetupAxesLimits(0, 1, 0, 1, ig.ImPlotCond_Once);
        try ip.ImPlot_PlotPieChartEx(&labels1, &st.data1, 4, 0.5, 0.5, 0.4, "%.2f", 90, st.flags);
        ig.ImPlot_EndPlot();
    }

    ig.igSameLine(0, -1.0);

    const labels2 = [_][*c] const u8{"A","B","C","D","E"};
    const data2 =  [_]c_int{1,1,2,3,5};

    ig.ImPlot_PushColormap_PlotColormap(ig.ImPlotColormap_Pastel);
    if (ig.ImPlot_BeginPlot("##Pie2", .{.x=250, .y=250}, ig.ImPlotFlags_Equal | ig.ImPlotFlags_NoMouseText)) {
        ig.ImPlot_SetupAxes(null, null, ig.ImPlotAxisFlags_NoDecorations, ig.ImPlotAxisFlags_NoDecorations);
        ig.ImPlot_SetupAxesLimits(0, 1, 0, 1, ig.ImPlotCond_Once);
        try ip.ImPlot_PlotPieChartEx(&labels2, &data2, 5, 0.5, 0.5, 0.4, "%.0f", 180, st.flags);
        ig.ImPlot_EndPlot();
    }
    ig.ImPlot_PopColormap(1);
}
