const std = @import("std");
const ig = @import("../imgui.zig");
const ip = @import("../implot.zig");


pub fn demo_Config() !void {
    ig.igShowFontSelector("Font");
    _ = ig.igShowStyleSelector("ImGui Style");
    _ = ip.ImPlot_ShowStyleSelector("ImPlot Style");
    _ = ip.ImPlot_ShowColormapSelector("ImPlot Colormap");
    _ = ip.ImPlot_ShowInputMapSelector("Input Map");
    ig.igSeparator();
    _ = ig.igCheckbox("Use Local Time", &ip.ImPlot_GetStyle().*.UseLocalTime);
    _ = ig.igCheckbox("Use ISO 8601", &ip.ImPlot_GetStyle().*.UseISO8601);
    _ = ig.igCheckbox("Use 24 Hour Clock", &ip.ImPlot_GetStyle().*.Use24HourClock);
    ig.igSeparator();
    if (ip.ImPlot_BeginPlot("Preview", .{ .x = -1, .y = 0 }, 0)) {
        const now:f64 = ig.igGetTime();
        ip.ImPlot_SetupAxisScale_PlotScale(ip.ImAxis_X1, ip.ImPlotScale_Time);
        ip.ImPlot_SetupAxisLimits(ip.ImAxis_X1, now, now + 24*3600, ip.ImPlotCond_Once);
        for (0..10)|i| {
            const x = [2]f64{now, now + 24*3600};
            const y = [2]f64{0, @as(f64,@floatFromInt(i)) / 9.0};
            ig.igPushID_Int(@intCast(i));
            try ip.ImPlot_PlotLineXy("##Line",&x,&y,2);
            ig.igPopID();
        }
        ip.ImPlot_EndPlot();
    }
}
