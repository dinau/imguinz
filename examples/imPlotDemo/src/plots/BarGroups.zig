const ig = @import("../imgui.zig");
const ip = @import("../implot.zig");

pub fn demo_BarGroups() !void {
    const st = struct {
        var data = [30]ig.ImS8{
            83, 67, 23, 89, 83, 78, 91, 82, 85, 90,  // midterm
            80, 62, 56, 99, 55, 78, 88, 78, 90, 100, // final
            80, 69, 52, 92, 72, 78, 75, 76, 89, 95,  // course
        };
        var ilabels =  [3][*c]const u8{ "Midterm Exam", "Final Exam", "Course Grade", };
        var glabels = [10][*c]const u8{ "S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10", };
        const positions = [10]f64{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, };
        var items: c_int = 3;
        var groups: c_int = 10;
        var size: f32 = 0.67;
        var flags: ip.ImPlotBarGroupsFlags = 0;
        var horz: bool = false;
    };

    _ = ig.igCheckboxFlags_IntPtr("Stacked", &st.flags, ip.ImPlotBarGroupsFlags_Stacked);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckbox("Horizontal", &st.horz);

    _ = ig.igSliderInt("Items", &st.items, 1, 3, "%d", 0);
    _ = ig.igSliderFloat("Size", &st.size, 0, 1, "%.3f", 0);

    if (ip.ImPlot_BeginPlot("Bar Group", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupLegend(ip.ImPlotLocation_East, ip.ImPlotLegendFlags_Outside);
        if (st.horz) {
            ip.ImPlot_SetupAxes("Score", "Student", ip.ImPlotAxisFlags_AutoFit, ip.ImPlotAxisFlags_AutoFit);
            ip.ImPlot_SetupAxisTicks_doublePtr(ip.ImAxis_Y1, &st.positions, st.groups, &st.glabels, false);
            try ip.ImPlot_PlotBarGroupsEx(&st.ilabels, &st.data, st.items, st.groups, st.size, 0, st.flags | ip.ImPlotBarGroupsFlags_Horizontal);
        } else {
            ip.ImPlot_SetupAxes("Student", "Score", ip.ImPlotAxisFlags_AutoFit, ip.ImPlotAxisFlags_AutoFit);
            ip.ImPlot_SetupAxisTicks_doublePtr(ip.ImAxis_X1, &st.positions, st.groups, &st.glabels, false);
            try ip.ImPlot_PlotBarGroupsEx(&st.ilabels, &st.data, st.items, st.groups, st.size, 0, st.flags);
        }
        ip.ImPlot_EndPlot();
    }
}
