const ig = @import("../imgui.zig");
const ip = @import("../implot.zig");

pub fn demo_Images() !void {
    const ImageName = "himeji-400.jpg";
    const st = struct {
        var bmin = ip.ImPlotPoint{ .x = 0, .y = 0 };
        var bmax = ip.ImPlotPoint{ .x = 1, .y = 1 };
        var uv0 = ig.ImVec2{ .x = 0, .y = 0 };
        var uv1 = ig.ImVec2{ .x = 1, .y = 1 };
        var tint = ig.ImVec4{ .x = 1, .y = 1, .z = 1, .w = 1 };
        //
        var loadImage = true;
        var textureId: ig.GLuint = undefined;
        var textureWidth: c_int = 0;
        var textureHeight: c_int = 0;
    };
    //------------
    // Load image
    //------------
    if (st.loadImage) {
        st.loadImage = false;
        _ = ig.LoadTextureFromFile(ImageName, &st.textureId, &st.textureWidth, &st.textureHeight);
    }
    //
    ig.igBulletText("Below we are displaying the font texture, which is the only texture we have\naccess to in this demo.");
    ig.igBulletText("Use the 'ImTextureID' type as storage to pass pointers or identifiers to your\nown texture data.");
    ig.igBulletText("See ImGui Wiki page 'Image Loading and Displaying Examples'.");
    //const pbmin = &st.bmin;
    _ = ig.igSliderFloat2("Min", @ptrCast(&st.bmin), -2, 2, "%.1f", 0);
    _ = ig.igSliderFloat2("Max", @ptrCast(&st.bmax), -2, 2, "%.1f", 0);
    _ = ig.igSliderFloat2("UV0", @ptrCast(&st.uv0),  -2, 2, "%.1f", 0);
    _ = ig.igSliderFloat2("UV1", @ptrCast(&st.uv1),  -2, 2, "%.1f", 0);
    _ = ig.igColorEdit4("Tint", @ptrCast(&st.tint), 0);
    if (ip.ImPlot_BeginPlot("##image", .{ .x = -1, .y = 0 }, 0)) {
        //ip.ImPlot_PlotImage("my image",ig.igGetIO().*.Fonts.*.TexID, st.bmin, st.bmax, st.uv0, st.uv1, st.tint, 0);
        // TODO
        ip.ImPlot_PlotImage("my image", @ptrFromInt(st.textureId)
          , .{.x = st.bmin.x, .y = st.bmin.y} //st.bmin
          , .{.x = st.bmax.x, .y = st.bmax.y} //st.bmin
          , .{.x = st.uv0.x, .y = st.uv0.y}   //st.bmin
          , .{.x = st.uv1.x, .y = st.uv1.y}   //st.bmin
          , .{.x = st.tint.x, .y = st.tint.y, .z = st.tint.z, .w = st.tint.w}//st.tint
          , 0);
        ip.ImPlot_EndPlot();
    }
}
