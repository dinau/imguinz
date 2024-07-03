const std = @import("std");
const ip = @import("../zimplot.zig");

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

pub fn demo_Config() !void {
    ig.igShowFontSelector("Font");
    _ = ig.igShowStyleSelector("ImGui Style");
    _ = ig.ImPlot_ShowStyleSelector("ImPlot Style");
    _ = ig.ImPlot_ShowColormapSelector("ImPlot Colormap");
    _ = ig.ImPlot_ShowInputMapSelector("Input Map");
    ig.igSeparator();
    _ = ig.igCheckbox("Use Local Time", &ig.ImPlot_GetStyle().*.UseLocalTime);
    _ = ig.igCheckbox("Use ISO 8601", &ig.ImPlot_GetStyle().*.UseISO8601);
    _ = ig.igCheckbox("Use 24 Hour Clock", &ig.ImPlot_GetStyle().*.Use24HourClock);
    ig.igSeparator();
    if (ig.ImPlot_BeginPlot("Preview", .{ .x = -1, .y = 0 }, 0)) {
        const now:f64 = ig.igGetTime();
        ig.ImPlot_SetupAxisScale_PlotScale(ig.ImAxis_X1, ig.ImPlotScale_Time);
        ig.ImPlot_SetupAxisLimits(ig.ImAxis_X1, now, now + 24*3600, ig.ImPlotCond_Once);
        for (0..10)|i| {
            const x = [2]f64{now, now + 24*3600};
            const y = [2]f64{0, @as(f64,@floatFromInt(i)) / 9.0};
            ig.igPushID_Int(@intCast(i));
            try ip.ImPlot_PlotLineXy("##Line",&x,&y,2);
            ig.igPopID();
        }
        ig.ImPlot_EndPlot();
    }
}
