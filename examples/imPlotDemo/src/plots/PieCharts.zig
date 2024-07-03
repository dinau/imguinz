const std = @import("std");
const math = @import("std").math;
const ig = @import("../imgui.zig");
const ip = @import("../implot.zig");
const utils = @import("../utils.zig");

pub fn demo_PieCharts() !void {
    const labels1 = [_][*c] const u8{"Frogs","Hogs","Dogs","Logs"};

    const st = struct {
      var data1 = [_]f32{0.15,  0.30,  0.2, 0.05};
      var flags:ip.ImPlotPieChartFlags  = 0;
    };

    ig.igSetNextItemWidth(250);
    _ = ig.igDragFloat4("Values", &st.data1, 0.01, 0, 1, "%3f", 0);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotPieChartFlags_Normalize",    &st.flags, ip.ImPlotPieChartFlags_Normalize);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotPieChartFlags_IgnoreHidden", &st.flags, ip.ImPlotPieChartFlags_IgnoreHidden);

    if (ip.ImPlot_BeginPlot("##Pie1", .{.x=250, .y=250}, ip.ImPlotFlags_Equal | ip.ImPlotFlags_NoMouseText)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(0, 1, 0, 1, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotPieChartEx(&labels1, &st.data1, 4, 0.5, 0.5, 0.4, "%.2f", 90, st.flags);
        ip.ImPlot_EndPlot();
    }

    ig.igSameLine(0, -1.0);

    const labels2 = [_][*c] const u8{"A","B","C","D","E"};
    const data2 =  [_]c_int{1,1,2,3,5};

    ip.ImPlot_PushColormap_PlotColormap(ip.ImPlotColormap_Pastel);
    if (ip.ImPlot_BeginPlot("##Pie2", .{.x=250, .y=250}, ip.ImPlotFlags_Equal | ip.ImPlotFlags_NoMouseText)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(0, 1, 0, 1, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotPieChartEx(&labels2, &data2, 5, 0.5, 0.5, 0.4, "%.0f", 180, st.flags);
        ip.ImPlot_EndPlot();
    }
    ip.ImPlot_PopColormap(1);
}
