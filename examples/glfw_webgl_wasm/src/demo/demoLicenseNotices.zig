const std = @import("std");
const app = @import("appimgui");
const ig = app.ig;

const LicenseEntry = struct {
    enabled: bool,
    name: [:0]const u8,
    text: [:0]const u8,
    url: [:0]const u8,
};

const lc_root = "../licenses"; // 実際のパスに合わせて調整してください

const licenses = [_]LicenseEntry{
    .{ .enabled = true, .name = "Dear ImGui", .text = @embedFile(lc_root ++ "/cimgui/imgui/LICENSE.txt"), .url = "https://github.com/ocornut/imgui" },
    .{ .enabled = true, .name = "CImGui", .text = @embedFile(lc_root ++ "/cimgui/LICENSE"), .url = "https://github.com/cimgui/cimgui" },
    //  .{ .enabled = true, .name = "ImAnim", .text = @embedFile(lc_root ++ "/cimanim/ImAnim/LICENSE"), .url = "https://github.com/soufianekhiat/ImAnim" },
    //  .{ .enabled = true, .name = "cimanim", .text = @embedFile(lc_root ++ "/cimanim/LICENSE"), .url = "https://github.com/dinau/cimanim" },
    //  .{ .enabled = true, .name = "cimCTE", .text = @embedFile(lc_root ++ "/cimCTE/dummy.txt"), .url = "https://github.com/cimgui/cimCTE" },
    //  .{ .enabled = true, .name = "ImGuiColorTextEdit", .text = @embedFile(lc_root ++ "/cimCTE/ImGuiColorTextEdit/LICENSE"), .url = "https://github.com/santaclose/ImGuiColorTextEdit" },
    //  .{ .enabled = true, .name = "cimgui_toggle", .text = @embedFile(lc_root ++ "/cimgui_toggle/LICENSE"), .url = "https://github.com/dinau/cimgui_toggle" },
    //  .{ .enabled = true, .name = "imgui_toggle", .text = @embedFile(lc_root ++ "/cimgui_toggle/libs/imgui_toggle/LICENSE"), .url = "https://github.com/cmdwtf/imgui_toggle" },
    //  .{ .enabled = true, .name = "cimgui_zoomable_image", .text = @embedFile(lc_root ++ "/cimgui_zoomable_image/LICENSE"), .url = "https://github.com/dinau/cimgui_zoomable_image" },
    //  .{ .enabled = true, .name = "imgui_zoomable_image", .text = @embedFile(lc_root ++ "/cimgui_zoomable_image/imgui_zoomable_image/LICENSE"), .url = "https://github.com/danielm5/imgui_zoomable_image" },
    //  .{ .enabled = true, .name = "CImGuiFileDialog", .text = @embedFile(lc_root ++ "/CImGuiFileDialog/LICENSE"), .url = "https://github.com/dinau/CImGuiFileDialog" },
    //  .{ .enabled = true, .name = "ImGuiFileDialog", .text = @embedFile(lc_root ++ "/CImGuiFileDialog/libs/ImGuiFileDialog/LICENSE"), .url = "https://github.com/aiekick/ImGuiFileDialog" },
    //  .{ .enabled = true, .name = "dirent", .text = @embedFile(lc_root ++ "/CImGuiFileDialog/libs/ImGuiFileDialog/dirent/LICENSE"), .url = "https://github.com/tronkko/dirent" },
    .{ .enabled = true, .name = "STB", .text = @embedFile(lc_root ++ "/CImGuiFileDialog/libs/ImGuiFileDialog/stb/LICENSE"), .url = "https://github.com/nothings/stb" },
    .{ .enabled = true, .name = "cimgui-knobs", .text = @embedFile(lc_root ++ "/cimgui-knobs/LICENSE"), .url = "https://github.com/dinau/imguin/tree/main/src/imguin/private/cimgui-knobs" },
    .{ .enabled = true, .name = "ImGui Knobs", .text = @embedFile(lc_root ++ "/cimgui-knobs/imgui-knobs/LICENSE"), .url = "https://github.com/altschuler/imgui-knobs" },
    //  .{ .enabled = true, .name = "CImGuiTextSelect", .text = @embedFile(lc_root ++ "/CImGuiTextSelect/LICENSE"), .url = "https://github.com/dinau/CImGuiTextSelect" },
    //  .{ .enabled = true, .name = "ImGuiTextSelect", .text = @embedFile(lc_root ++ "/CImGuiTextSelect/ImGuiTextSelect/LICENSE.txt"), .url = "https://github.com/AidanSun05/ImGuiTextSelect" },
    //  .{ .enabled = true, .name = "cimguizmo", .text = @embedFile(lc_root ++ "/cimguizmo/LICENSE"), .url = "https://github.com/cimgui/cimguizmo" },
    //  .{ .enabled = true, .name = "ImGuizmo", .text = @embedFile(lc_root ++ "/cimguizmo/ImGuizmo/LICENSE"), .url = "https://github.com/CedricGuillemet/ImGuizmo" },
    //  .{ .enabled = true, .name = "cimnodes", .text = @embedFile(lc_root ++ "/cimnodes/dummy.txt"), .url = "https://github.com/cimgui/cimnodes" },
    //  .{ .enabled = true, .name = "ImNodes", .text = @embedFile(lc_root ++ "/cimnodes/imnodes/LICENSE.md"), .url = "https://github.com/Nelarius/imnodes" },
    .{ .enabled = true, .name = "CImPlot", .text = @embedFile(lc_root ++ "/cimplot/LICENSE"), .url = "https://github.com/cimgui/cimplot" },
    .{ .enabled = true, .name = "ImPlot", .text = @embedFile(lc_root ++ "/cimplot/implot/LICENSE"), .url = "https://github.com/epezent/implot" },
    .{ .enabled = true, .name = "CImPlot3D", .text = @embedFile(lc_root ++ "/cimplot3d/dummy.txt"), .url = "https://github.com/cimgui/cimplot3d" },
    .{ .enabled = true, .name = "ImPlot3D", .text = @embedFile(lc_root ++ "/cimplot3d/implot3d/LICENSE"), .url = "https://github.com/brenocq/implot3d" },
    .{ .enabled = true, .name = "Font Awesome", .text = @embedFile(lc_root ++ "/fonticon/fa6/LICENSE.txt"), .url = "https://github.com/FortAwesome/Font-Awesome" },
    .{ .enabled = true, .name = "ImSpinner", .text = @embedFile(lc_root ++ "/imspinner/LICENSE.txt"), .url = "https://github.com/dalerank/imspinner" },
};

//-----------------
// license_notices
//-----------------
pub fn license_notices(show_licenses_window: *bool, flags: ig.ImGuiWindowFlags) void {
    if (!show_licenses_window.*) return;

    _ = ig.igBegin("License Notices (Random order)", show_licenses_window, flags);
    defer ig.igEnd();

    for (licenses) |lc| {
        if (!lc.enabled) continue;
        if (ig.igCollapsingHeader_TreeNodeFlags(lc.name.ptr, 0)) {
            _ = ig.igTextLinkOpenURL(lc.url.ptr, lc.url.ptr);
            ig.igSeparator();
            ig.igTextUnformatted(lc.text.ptr,null);
        }
    }
    ig.igSeparator();
    ig.igTextUnformatted("If there are any errors or omissions in the license descriptions above, please contact us at",null);
    _ = ig.igTextLinkOpenURL("https://github.com/dinau/imguinz2/issues", "https://github.com/dinau/imguinz2/issues");
}
