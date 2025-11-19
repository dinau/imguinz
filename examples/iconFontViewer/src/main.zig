const std = @import("std");
const ig = @import("cimgui");
const glfw = @import("glfw");
const ifa = @import("fonticon");
const utils = @import("utils");
const stf = @import("setupfont");
const app = @import("appimgui");

const ift = @import("./iconFontsTblDef.zig");

const MainWinWidth: i32 = 1200;
const MainWinHeight: i32 = 800;

//-----------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) !void {
    _ = stf.setupFonts(); // Setup CJK fonts and Icon fonts

    const pio = ig.igGetIO_Nil();

    var item_current: usize = 0;
    var showIconFontsViewerWindow = true;
    const DefaultButtonSize = utils.vec2(0, 0);
    var wsZoom:f32 = 45;

    var listBoxTextureID: glfw.GLuint = 0; //# Must be == 0 at first
    defer glfw.glDeleteTextures(1, &listBoxTextureID);

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
        ig.igShowDemoWindow(null);
        window.showInfoWindow();

        //-----------------------------
        // Show IconFontsViewer window
        //------------------------------
        if (showIconFontsViewerWindow) {
            _ = ig.igBegin("Icon Font Viewer", &showIconFontsViewerWindow, 0);
            defer ig.igEnd();
            ig.igSeparatorText(ifa.ICON_FA_FONT_AWESOME ++ " Icon font view: " ++ " icons");

            const listBoxWidth = 340; //# The value must be 2^n
            ig.igText("No.[%4d]", item_current);
            ig.igSameLine(0, -1.0);
            var sBuf = [_:0]u8{0} ** 100;
            _ = try std.fmt.bufPrint(&sBuf, "{s}", .{ift.iconFontsTbl[item_current]});
            if (ig.igButton(ifa.ICON_FA_COPY ++ " Copy to", DefaultButtonSize)) {
                var it = std.mem.tokenizeAny(u8, &sBuf, " ");
                _ = it.next().?;
                ig.igSetClipboardText(it.next().?.ptr);
            }
            utils.setTooltip("Clipboard", ig.ImGuiHoveredFlags_DelayNone); //# Show tooltip help
            //# Show ListBox header
            ig.igSetNextItemWidth(listBoxWidth);
            _ = ig.igInputText("##ipttxt1", sBuf[0..], sBuf.len, ig.ImGuiTextFlags_None, null, null);

            //# Show ListBox main
            var listBoxPosTop: ig.ImVec2 = undefined;
            var listBoxPosEnd: ig.ImVec2 = undefined;
            ig.igNewLine();
            ig.igGetCursorScreenPos(&listBoxPosTop); //# Get absolute pos.
            ig.igSetNextItemWidth(listBoxWidth);
            _ = ig.igListBox_Str_arr("##listbox1", @ptrCast(&item_current), &ift.iconFontsTbl, ift.iconFontsTbl.len, 34);
            ig.igGetCursorScreenPos(&listBoxPosEnd); // # Get absolute pos.
            // # Show magnifying glass (Zooming in Toolchip)
            if (ig.igIsItemHovered(ig.ImGuiHoveredFlags_DelayNone)) {
                if ((pio.*.MousePos.x - listBoxPosTop.x) < 50) {
                    utils.zoomGlass(&listBoxTextureID, listBoxWidth, listBoxPosTop, listBoxPosEnd, true);
                }
            }
        }

        //---------------------
        // Show icons in Table
        //---------------------
        {
            _ = ig.igBegin("Icon Font Viewer2", null, 0);
            defer ig.igEnd();

            ig.igText("%s", " Zoom x");
            ig.igSameLine(0, -1.0);
            _ = ig.igSliderFloat("##Zoom1", &wsZoom, 30, 90, "%.1f", 0);
            ig.igSeparator();

            _ = ig.igBeginChild_Str("child2", .{.x = 0, .y = 0}, 0, 0);
            defer ig.igEndChild();

            const flags = ig.ImGuiTableFlags_RowBg | ig.ImGuiTableFlags_BordersOuter | ig.ImGuiTableFlags_BordersV | ig.ImGuiTableFlags_Resizable | ig.ImGuiTableFlags_Reorderable | ig.ImGuiTableFlags_Hideable;
            const text_base_height = ig.igGetTextLineHeightWithSpacing();
            const outer_size = utils.vec2(0.0, text_base_height * 8);
            const col = 10;
            {
                _ = ig.igBeginTable("table_scrolly", col, flags, outer_size, 0);
                defer ig.igEndTable();
                for (0..(ift.iconFontsTbl2.len / col)) |row| {
                    ig.igTableNextRow(0, 0.0);
                    for (0..col) |column| {
                        const ix = (row * col) + column;
                        _ = ig.igTableSetColumnIndex(@intCast(column));
                        //ig.igSetWindowFontScale(wsZoom);
                        ig.igPushFont(null, wsZoom);
                        //---- select 1: Text
                        ig.igText("%s", ift.iconFontsTbl2[ix][0]);
                        //---- select 2: Button
                        //if (ig.igButton(ift.iconFontsTbl2[ix][0], DefaultButtonSize)){
                        //  item_current = ix;
                        //}
                        ig.igPopFont();
                        const iconFontLabel = std.mem.span(ift.iconFontsTbl2[ix][1]);
                        utils.setTooltipEx(iconFontLabel, ig.ImGuiHoveredFlags_DelayNone, utils.vec4(0.0, 1.0, 0.0, 1.0));
                        //ig.igSetWindowFontScale(wsNormal);
                        //
                        ig.igPushID_Int(@intCast(ix));
                        defer ig.igPopID();
                        if (ig.igBeginPopupContextItem("Contex Menu", 1)) {
                            defer ig.igEndPopup();
                            if (ig.igMenuItem_Bool("Copy to clip board", "", false, true)) {
                                item_current = ix;
                                ig.igSetClipboardText(iconFontLabel);
                            }
                        }
                    } // end for col
                } // end for row
            } // end block igBeginTable
        } // end igBegin

        { // -- Text filter window
            _ = ig.igBegin("Icon Font filter", null, 0);
            defer ig.igEnd();
            ig.igText("%s","(Copy)");
            if (ig.igIsItemHovered(ig.ImGuiHoveredFlags_DelayNone)) {
                //filterAry[1]:match(".+(ICON.+)");
                //if (std.mem.containsAtLeast(u8, filterAry[0],"ICON")){
                // ig.igSetClipboardText(sRes);
                //}
            }
            //filterAry = {}
            utils.setTooltip("Copied first line to clipboard !", ig.ImGuiHoveredFlags_DelayNone); //-- Show tooltip help
            ig.igSameLine(0, -1.0);
            const filter = ig.ImGuiTextFilter_ImGuiTextFilter("");
            _ = ig.ImGuiTextFilter_Draw(filter, "Filter", 0.0);
            const tbl = ift.iconFontsTbl;
            for (tbl, 0..) |pstr, i| {
                if (ig.ImGuiTextFilter_PassFilter(filter, pstr, null)) {
                    ig.igText("[%04d]  %s", i, pstr);
                    //table.insert(filterAry, tbl[i])
                }
            }
        }
        //--------
        // render
        //--------
        window.render();
    } // end main while loop
}

//--------
// main()
//--------
pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    //_ = app.setTheme(.light); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    try gui_main(&window);
}
