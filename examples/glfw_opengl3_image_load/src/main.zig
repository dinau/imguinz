const std = @import("std");
const ig = @import("cimgui");
const glfw = @import("glfw");
const ifa = @import("fonticon");
const utils = @import("utils");
const stf = @import("setupfont");
const app = @import("appimgui");

const TImgFormat = struct {
    kind: [:0]const u8,
    ext: [:0]const u8,
};
const enKind = enum { jpg, png, bmp, tga };
const ImgFormatTbl = [_]TImgFormat{ TImgFormat{ .kind = "JPEG 90%", .ext = ".jpg" }, TImgFormat{ .kind = "PNG     ", .ext = ".png" }, TImgFormat{ .kind = "BMP     ", .ext = ".bmp" }, TImgFormat{ .kind = "TGA     ", .ext = ".tga" } };

var cbItemIndex: usize = @intFromEnum(enKind.jpg);

// Constants
const SaveImageName = "ImageSaved";
const IMGUI_HAS_DOCK = false; // Docking feature

//------------
// gui_main()
//------------
pub fn gui_main(window: *app.Window) !void {
    //-------------
    // Global vars
    //-------------
    var showDemoWindow = true;
    var counter: i32 = 0;
    // Input text buffer
    var sTextInuputBuf = [_:0]u8{0} ** 200;

    //------------
    // Load image
    //------------
    const ImageName = "himeji-400.jpg";
    var textureId: glfw.GLuint = undefined;
    defer glfw.glDeleteTextures(1, &textureId);
    var textureWidth: c_int = 0;
    var textureHeight: c_int = 0;
    _ = utils.LoadTextureFromFile(ImageName, &textureId, &textureWidth, &textureHeight);

    stf.setupFonts(); // Setup CJK fonts and Icon fonts

    const sz = utils.vec2(0, 0);

    var zoomTextureID: glfw.GLuint = 0; //# Must be == 0 at first
    defer glfw.glDeleteTextures(1, &zoomTextureID);

    //window.eventLoadStandard(); // See ../src/libzig/appimgui/src/appImGui.zig

    //---------------
    // main loop GUI
    //---------------
    while (!window.shouldClose ()) {
        window.pollEvents ();

        // Iconify sleep
        if( window.isIconified()){
            continue;
        }

        // Start the Dear ImGui frame
        window.frame();

        //------------------
        // Show demo window
        //------------------
        if (showDemoWindow) {
            ig.igShowDemoWindow(&showDemoWindow);
        }
        window.showInfoWindow();

        //------------------
        // Show main window
        //------------------
        {
            _ = ig.igBegin(ifa.ICON_FA_THUMBS_UP ++ " Dear ImGui", null, 0);
            defer ig.igEnd();

            _ = ig.igInputTextWithHint("InputText", "Input text here", &sTextInuputBuf, sTextInuputBuf.len, 0, null, null);
            ig.igText("%s","Input result:");
            ig.igSameLine(0, -1.0);
            ig.igText("%s",&sTextInuputBuf);

            ig.igSpacing();
            _ = ig.igCheckbox("Demo Window", &showDemoWindow);
            // Save button for capturing window image
            ig.igPushID_Int(0);
            ig.igPushStyleColor_Vec4(ig.ImGuiCol_Button, utils.vec4(0.7, 0.7, 0.0, 1.0));
            ig.igPushStyleColor_Vec4(ig.ImGuiCol_ButtonHovered, utils.vec4(0.8, 0.8, 0.0, 1.0));
            ig.igPushStyleColor_Vec4(ig.ImGuiCol_ButtonActive, utils.vec4(0.9, 0.9, 0.0, 1.0));
            ig.igPushStyleColor_Vec4(ig.ImGuiCol_Text, utils.vec4(0.0, 0.0, 0.0, 1.0));

            // Image save button
            const imageExt = ImgFormatTbl[cbItemIndex].ext;
            var svNameBuf: [200]u8 = undefined;
            var svBuf: [200]u8 = undefined;
            const slszName = try std.fmt.bufPrintZ(&svNameBuf, "{s}_{}{s}", .{ SaveImageName, counter, imageExt });
            if (ig.igButton("Save Image", sz)) {
                const wkSize = ig.igGetMainViewport().*.WorkSize;
                const sx: c_int = @intFromFloat(wkSize.x);
                const sy: c_int = @intFromFloat(wkSize.y);
                utils.saveImage(slszName.ptr, 0, 0, sx, sy, 3, 90); // # --- Save Image !
            }
            ig.igPopStyleColor(4);
            ig.igPopID();

            // Show tooltip help
            const slszBuf = try std.fmt.bufPrintZ(&svBuf, "Save to {s}", .{slszName});
            const green = utils.vec4(0.0, 1.0, 0.0, 1.0);
            utils.setTooltipEx(slszBuf, ig.ImGuiHoveredFlags_DelayNone, green);
            counter += 1;

            ig.igSameLine(0, -1.0);
            // ComboBox: Select save image format
            ig.igSetNextItemWidth(100);
            if (ig.igBeginCombo("##combo1", ImgFormatTbl[cbItemIndex].kind, 0)) {
                for (0..ImgFormatTbl.len) |n| {
                    var is_selected = (cbItemIndex == n);
                    if (ig.igSelectable_BoolPtr(ImgFormatTbl[n].kind, &is_selected, 0, sz)) {
                        if (is_selected) {
                            ig.igSetItemDefaultFocus();
                        }
                        cbItemIndex = n;
                    }
                }
                ig.igEndCombo();
            }
            const yellow = utils.vec4(1.0, 1.0, 0.0, 1.0);
            utils.setTooltipEx("Select image format", ig.ImGuiHoveredFlags_DelayNone, yellow);

            // Show icon fonts
            ig.igSeparatorText(ifa.ICON_FA_WRENCH ++ " Icon font test ");
            ig.igText("%s",ifa.ICON_FA_TRASH_CAN ++ " Trash");

            ig.igSpacing();
            ig.igText("%s",ifa.ICON_FA_MAGNIFYING_GLASS_PLUS ++ " " ++ ifa.ICON_FA_POWER_OFF ++ " " ++ ifa.ICON_FA_MICROPHONE ++ " " ++ ifa.ICON_FA_MICROCHIP ++ " " ++ ifa.ICON_FA_VOLUME_HIGH ++ " " ++ ifa.ICON_FA_SCISSORS ++ " " ++ ifa.ICON_FA_SCREWDRIVER_WRENCH ++ " " ++ ifa.ICON_FA_BLOG);
        } // end main window

        //------------------------
        // Show image load window
        //------------------------
        {
            _ = ig.igBegin("Image load test", null, 0);
            defer ig.igEnd();
            var imageBoxPosTop: ig.ImVec2 = undefined;
            var imageBoxPosEnd: ig.ImVec2 = undefined;
            // Load image
            const size = utils.vec2(@floatFromInt(textureWidth), @floatFromInt(textureHeight) );
            const uv0 = utils.vec2(0, 0);
            const uv1 = utils.vec2(1, 1);
            ig.igGetCursorScreenPos(&imageBoxPosTop); // # Get absolute pos.

            ig.igImage(ig.ImTextureRef{._TexData = null, ._TexID = textureId}, size, uv0, uv1);
            ig.igGetCursorScreenPos(&imageBoxPosEnd); // # Get absolute pos.
            if (ig.igIsItemHovered(ig.ImGuiHoveredFlags_DelayNone)) {
                utils.zoomGlass(&textureId, textureWidth, imageBoxPosTop, imageBoxPosEnd, false);
            }
        }
        // Rendering
        window.render();
    } // while end

} // gui_main end

//--------
// main()
//--------
const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    //_ = app.setTheme(.light); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    try gui_main(&window);
}
