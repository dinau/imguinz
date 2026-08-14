const ig = @import("cimgui");
const ifa = @import("fonticon");

const spinner = @import("imspinner");

pub fn imspinner(pio: *ig.ImGuiIO) void {
    //------------------------
    // Show CImSpinner window
    //------------------------
    {
        _ = ig.igBegin("CImSpinner in Zig" ++ ifa.ICON_FA_CAT, null, 0);
        defer ig.igEnd();
        const red: spinner.ImColor = .{ .Value = .{ .x = 1.0, .y = 0.0, .z = 0.0, .w = 1.0 } };
        const cyan: spinner.ImColor = .{ .Value = .{ .x = 0.0, .y = 1.0, .z = 1.0, .w = 1.0 } };
        const blue1: spinner.ImColor = .{ .Value = .{ .x = 51.0 / 255.0, .y = 153.0 / 255.0, .z = 1.0, .w = 1.0 } };
        // See ../build.zig, if you'd like to add other spinners.
        spinner.SpinnerDnaDotsEx("DnaDotsV", 16, 2, blue1, 1.2, 8, 0.25, true);
        ig.igSameLine(0.0, -1.0); // Defined by "SPINNER_DNADOTS" in ../build.zig
        spinner.SpinnerRainbowMix("Rmix", 16, 2, cyan, 2);
        ig.igSameLine(0.0, -1.0);
        spinner.SpinnerAng8("Ang", 16, 2);
        ig.igSameLine(0.0, -1.0);
        spinner.SpinnerPulsar("Pulsar", 16, 2);
        ig.igSameLine(0.0, -1.0);
        spinner.SpinnerClock("Clock", 16, 2);
        ig.igSameLine(0.0, -1.0);
        spinner.SpinnerAtom("atom", 16, 2);
        ig.igSameLine(0.0, -1.0);
        spinner.SpinnerSwingDots("wheel", 16, 6);
        ig.igSameLine(0.0, -1.0);
        spinner.SpinnerDotsToBar("tobar", 16, 2, 0.5);
        ig.igSameLine(0.0, -1.0);
        spinner.SpinnerBarChartRainbow("rainbow", 16, 4, red, 4);
        ig.igNewLine();
        ig.igText("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
    }
}
