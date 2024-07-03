const std = @import("std");
const math = @import("std").math;
const ig = @import("../imgui.zig");
const ip = @import("../implot.zig");
const utils = @import("../utils.zig");

pub const c = @cImport({
    @cInclude("stdlib.h");
});

pub fn demo_DragRects() !void {
    var x_data: [512]f32 = undefined;
    var y_data1: [512]f32 = undefined;
    var y_data2: [512]f32 = undefined;
    var y_data3: [512]f32 = undefined;
    const sampling_freq = 44100;
    const freq = 500;
    const st = struct {
        var clicked = false;
        var hovered = false;
        var held = false;
        var rect: ip.ImPlotRect = .{ .X = .{ .Min = 0.0025, .Max = 0.0045 }, .Y = .{ .Min = 0, .Max = 0.5 } };
        var flags = ip.ImPlotDragToolFlags_None;
    };
    for (0..512) |i| {
        const t: f32 = @as(f32, @floatFromInt(i)) / sampling_freq;
        x_data[i] = t;
        const arg: f32 = 2 * 3.14 * freq * t;
        y_data1[i] = math.sin(arg);
        y_data2[i] = y_data1[i] * -0.6 + math.sin(2 * arg) * 0.4;
        y_data3[i] = y_data2[i] * -0.6 + math.sin(3 * arg) * 0.4;
    }
    ig.igBulletText("Click and drag the edges, corners, and center of the rect.");
    ig.igBulletText("Double click edges to expand rect to plot extents.");

    _ = ig.igCheckboxFlags_IntPtr("NoCursors", &st.flags, ip.ImPlotDragToolFlags_NoCursors);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("NoFit", &st.flags, ip.ImPlotDragToolFlags_NoFit);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("NoInput", &st.flags, ip.ImPlotDragToolFlags_NoInputs);

    if (ip.ImPlot_BeginPlot("##Main", .{ .x = -1, .y = 150 }, 0)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoTickLabels, ip.ImPlotAxisFlags_NoTickLabels);
        ip.ImPlot_SetupAxesLimits(0, 0.01, -1, 1, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotLineXy("Signal 1", &x_data, &y_data1, 512);
        try ip.ImPlot_PlotLineXy("Signal 2", &x_data, &y_data2, 512);
        try ip.ImPlot_PlotLineXy("Signal 3", &x_data, &y_data3, 512);
        _ = ip.ImPlot_DragRect(0, &st.rect.X.Min, &st.rect.Y.Min, &st.rect.X.Max, &st.rect.Y.Max, .{ .x = 1, .y = 0, .z = 1, .w = 1 }, st.flags, &st.clicked, &st.hovered, &st.held);
        ip.ImPlot_EndPlot();
    }
    // TODO
    const vec4 = ip.ImPlot_GetStyle().*.Colors[ip.ImPlotCol_PlotBg];
    const bg_col: ig.ImVec4 =
      if (st.held) .{ .x = 0.5, .y = 0, .z = 0.5, .w = 1 }
      else if (st.hovered) .{ .x = 0.25, .y = 0, .z = 0.25, .w = 1 }
      else .{.x = vec4.x, .y = vec4.y, .z = vec4.z, .w = vec4.w};
    // TODO
    ip.ImPlot_PushStyleColor_Vec4(ip.ImPlotCol_PlotBg
      , .{.x = bg_col.x , .y = bg_col.y, .z = bg_col.z, .w = bg_col.w});
    if (ip.ImPlot_BeginPlot("##rect", .{ .x = -1, .y = 150 }, ip.ImPlotFlags_CanvasOnly)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(st.rect.X.Min, st.rect.X.Max, st.rect.Y.Min, st.rect.Y.Max, ig.ImGuiCond_Always);
        try ip.ImPlot_PlotLineXy("Signal 1", &x_data, &y_data1, 512);
        try ip.ImPlot_PlotLineXy("Signal 2", &x_data, &y_data2, 512);
        try ip.ImPlot_PlotLineXy("Signal 3", &x_data, &y_data3, 512);
        ip.ImPlot_EndPlot();
    }
    ip.ImPlot_PopStyleColor(1);
    const empty: [*c]const u8 = "";
    const not: [*c]const u8 = "not ";
    ig.igText("Rect is %sclicked, %shovered, %sheld", if (st.clicked) empty else not, if (st.hovered) empty else not, if (st.held) empty else not);
}
