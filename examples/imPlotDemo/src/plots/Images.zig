pub const ig = @cImport({
    @cInclude("GLFW/glfw3.h");
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
    @cInclude("loadImage.h");
});

pub fn demo_Images() !void {
    const ImageName = "himeji-400.jpg";
    const st = struct {
        var bmin = ig.ImPlotPoint{ .x = 0, .y = 0 };
        var bmax = ig.ImPlotPoint{ .x = 1, .y = 1 };
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
    if (ig.ImPlot_BeginPlot("##image", .{ .x = -1, .y = 0 }, 0)) {
        //ig.ImPlot_PlotImage("my image",ig.igGetIO().*.Fonts.*.TexID, st.bmin, st.bmax, st.uv0, st.uv1, st.tint, 0);
        ig.ImPlot_PlotImage("my image", @ptrFromInt(st.textureId), st.bmin, st.bmax, st.uv0, st.uv1, st.tint, 0);
        ig.ImPlot_EndPlot();
    }
}
