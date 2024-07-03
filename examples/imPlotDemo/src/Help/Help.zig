const std = @import("std");
const ig = @import("../imgui.zig");
const ip = @import("../implot.zig");

pub fn demo_Help() !void {
    ig.igText("ABOUT THIS DEMO:");
    ig.igBulletText("Sections below are demonstrating many aspects of the library.");
    ig.igBulletText("The \"Tools\" menu above gives access to: Style Editors (ImPlot/ImGui)\n"
                    ,"and Metrics (general purpose Dear ImGui debugging tool).");
    ig.igSeparator();
    ig.igText("PROGRAMMER GUIDE:");
    ig.igBulletText("See the ShowDemoWindow() code in implot_demo.cpp. <- you are here!");
    ig.igBulletText("If you see visual artifacts, do one of the following:");

    ig.igIndent(0);
    ig.igBulletText("Handle ImGuiBackendFlags_RendererHasVtxOffset for 16-bit indices in your backend.");
    ig.igBulletText("Or, enable 32-bit indices in imconfig.h.");
    ig.igBulletText("Your current configuration is:");
    ig.igIndent(0);
    // TODO: Crash !
    //ig.igBulletTextV("ImDrawIdx: %d-bit", @sizeOf(ig.ImDrawIdx) * 8);
    var buf:[100]u8 = undefined;
    const sRes = try std.fmt.bufPrint(&buf, "ImDrawIdx: {d}-bit", .{@sizeOf(ig.ImDrawIdx) * 8});
    ig.igBulletText(sRes.ptr);

    // TODO: Avoided compilation error.
    if (0 != (ig.igGetIO().*.BackendFlags & ig.ImGuiBackendFlags_RendererHasVtxOffset)){
      ig.igBulletText("ImGuiBackendFlags_RendererHasVtxOffset: True");
    }else{
      ig.igBulletText("ImGuiBackendFlags_RendererHasVtxOffset: False");
    }
    ig.igUnindent(0);
    ig.igUnindent(0);
    ig.igSeparator();
    ig.igText("USER GUIDE:");
    ip.ImPlot_ShowUserGuide();
}
