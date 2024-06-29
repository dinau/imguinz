const std = @import("std");
const utils = @import("../utils.zig");

pub const c = @cImport({
    @cInclude("stdlib.h");
});

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});


//---------------
// Demo_Tables()
//---------------
pub fn Demo_Tables() !void {
    const st = struct {
        var anim = true;
        var offset: usize = 0;
        var data: [100]f32 = undefined;
        var flags: ig.ImGuiTableFlags = ig.ImGuiTableFlags_BordersOuter
                                      | ig.ImGuiTableFlags_BordersV
                                      | ig.ImGuiTableFlags_RowBg
                                      | ig.ImGuiTableFlags_Resizable
                                      | ig.ImGuiTableFlags_Reorderable;
    };
    const dtSize = st.data.len;
    ig.igBulletText("Plots can be used inside of ImGui tables as another means of creating subplots.");
    _ = ig.igCheckbox("Animate", &st.anim);
    if (st.anim) {
        st.offset = (st.offset + 1) % dtSize;
    }
    if (ig.igBeginTable("##table", 3, st.flags, .{ .x = -1, .y = 0 }, 0)) {
        ig.igTableSetupColumn("Electrode", ig.ImGuiTableColumnFlags_WidthFixed, 75.0, 0);
        ig.igTableSetupColumn("Voltage", ig.ImGuiTableColumnFlags_WidthFixed, 75.0, 0);
        ig.igTableSetupColumn("EMG Signal", ig.ImGuiTableColumnFlags_WidthFixed, 0, 0);
        ig.igTableHeadersRow();
        ig.ImPlot_PushColormap_PlotColormap(ig.ImPlotColormap_Cool);
        for (0..10) |row| {
            ig.igTableNextRow(0, 0);
            c.srand(row);
            for (0..dtSize) |i| {
                st.data[i] = @as(f32, @floatFromInt(@mod(c.rand(), dtSize))) / 10.0;
            }
            _ = ig.igTableSetColumnIndex(0);
            ig.igText("EMG %d", row);
            _ = ig.igTableSetColumnIndex(1);
            ig.igText("%.3f V", st.data[st.offset]);
            _ = ig.igTableSetColumnIndex(2);
            ig.igPushID_Int(@intCast(row));
            var vec4: ig.ImVec4 = undefined;
            ig.ImPlot_GetColormapColor(&vec4, @intCast(row), utils.IMPLOT_AUTO);
            utils.Sparkline("##spark", &st.data, dtSize, 0, 11.0, @intCast(st.offset), vec4, .{ .x = -1, .y = 35 });
            ig.igPopID();
        }
        ig.ImPlot_PopColormap(1);
        ig.igEndTable();
    }
}
