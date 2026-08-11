const app = @import("appimgui");
const ig = app.ig;
const ifa = app.ifa;

const spn = @import("imspinner");

pub fn imspinner(pio: *ig.ImGuiIO) void
    {
        _ = ig.ImGui_Begin("ImSpinner: Dear Bindings in Zig " ++ ifa.ICON_FA_CAT, null, 0);
        defer ig.ImGui_End();
        const red: spn.ImColor = .{ .Value = .{ .x = 1.0, .y = 0.0, .z = 0.0, .w = 1.0 } };
        const cyan: spn.ImColor = .{ .Value = .{ .x = 0.0, .y = 1.0, .z = 1.0, .w = 1.0 } };
        const blue1: spn.ImColor = .{ .Value = .{ .x = 51.0 / 255.0, .y = 153.0 / 255.0, .z = 1.0, .w = 1.0 } };

        // See ../build.zig, if you'd like to add other spinners.
        spn.SpinnerDnaDotsEx("DnaDotsV", 16, 2, blue1, 1.2, 8, 0.25, true);
        spn.ImGui_SameLine(); // Defined by "SPINNER_DNADOTS" in cimspinner_config.h by default
        spn.SpinnerRainbowMix("Rmix", 16, 2, cyan, 2);
        spn.ImGui_SameLine();
        spn.SpinnerAng8("Ang", 16, 2);
        spn.ImGui_SameLine();
        spn.SpinnerPulsar("Pulsar", 16, 2);
        spn.ImGui_SameLine();
        spn.SpinnerClock("Clock", 16, 2);
        spn.ImGui_SameLine();
        spn.SpinnerAtom("atom", 16, 2);
        spn.ImGui_SameLine();
        spn.SpinnerSwingDots("wheel", 16, 6);
        spn.ImGui_SameLine();
        spn.SpinnerDotsToBar("tobar", 16, 2, 0.5);
        spn.ImGui_SameLine();
        spn.SpinnerBarChartRainbow("rainbow", 16, 4, red, 4);
        spn.ImGui_SameLine();
        const st = struct {
            fn genColor(i: i32) callconv(.c) ig.ImColor {
                return ig.ImColor_HSV(@as(f32, @floatFromInt(i)) * 0.25, 0.8, 0.8, 1.0);
            }
        };
        spn.SpinnerCamera("Camera", 16, 8, @ptrCast(&st.genColor)); // Defined by "SPINNER_CAMERA" in ../build.zig
        ig.ImGui_NewLine();
        ig.ImGui_Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
    }
