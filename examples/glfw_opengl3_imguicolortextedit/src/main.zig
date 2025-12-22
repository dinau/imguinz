const std = @import("std");
const app = @import("appimgui");
const ig  = app.ig;
const ifa = app.ifa;

const cte = @import("imcolortextedit");

fn point2px(point: f32) f32 {
    return (point * 96) / 72;
}

//------------
// gui_main()
//------------
pub fn gui_main(window: *app.Window) !void {
    //-------------
    // Global vars
    //-------------
    var showDemoWindow = true;

    _ = app.stf.setupFonts(); // Setup CJK fonts and Icon fonts
    //
    //-- This is a programing font. https://github.com/yuru7/NOTONOTO
    const fontFullPath = "./resources/fonts/NOTONOTO-Regular.ttf";
    const fileName = "./resources/main.cpp";

    const allocator = std.heap.page_allocator;
    const file = try std.fs.cwd().openFile(fileName, .{});
    defer file.close();

    const stat = try file.stat();
    const file_size = stat.size;

    const sBuffer = try allocator.alloc(u8, file_size);
    defer allocator.free(sBuffer);

    _ = try file.readAll(sBuffer);

    const editor = cte.TextEditor_TextEditor();
    cte.TextEditor_SetLanguageDefinition(editor, cte.Cpp);
    cte.TextEditor_SetText(editor, sBuffer.ptr);

    cte.TextEditor_SetPalette(editor, cte.Dark); // Dark, Light, etc
    var mLine: c_int = undefined;
    var mColumn: c_int = undefined;
    var fQuit = false;

    const pio = ig.igGetIO_Nil();
    //-- Setup programing fonts
    const textPoint = 14.5;
    const textFont = ig.ImFontAtlas_AddFontFromFileTTF(pio.*.Fonts, fontFullPath, point2px(textPoint), null, null);

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

        //---------------------------------
        //--- Show ImGuiColorTextEdit demo
        //---------------------------------
        {
            _ = ig.igBegin(" Dear ImGui " ++ ifa.ICON_FA_DOG, null, ig.ImGuiWindowFlags_HorizontalScrollbar | ig.ImGuiWindowFlags_MenuBar);
            defer ig.igEnd();
            cte.TextEditor_GetCursorPosition(editor, &mLine, &mColumn);

            ig.igSetWindowSize_Vec2(.{ .x = 800, .y = 600 }, ig.ImGuiCond_FirstUseEver);
            if (ig.igBeginMenuBar()) {
                defer ig.igEndMenuBar();
                //-------------
                //-- Menu File
                //-------------
                if (ig.igBeginMenu("File", true)) {
                    defer ig.igEndMenu();
                    if (ig.igMenuItem_BoolPtr(ifa.ICON_FA_FLOPPY_DISK ++ " Save", "Ctrl-S", null, true)) {
                        copyCstrToString(sBuffer, cte.TextEditor_GetText(editor));
                        //--writeFile("main.cpp", strText)
                        //print"saved"
                    }
                    if (ig.igMenuItem_Bool(ifa.ICON_FA_SQUARE_PLUS ++ " Quit", "Alt-F4", false, true)) {
                        fQuit = true;
                        //print"quit";
                    }
                }
                //-------------
                //-- Menu Edit
                //-------------
                if (ig.igBeginMenu("Edit", true)) {
                    defer ig.igEndMenu();
                    var ro = cte.TextEditor_IsReadOnlyEnabled(editor);
                    if (ig.igMenuItem_BoolPtr(ifa.ICON_FA_LOCK ++ " Read-only mode", null, &ro, true)) {
                        cte.TextEditor_SetReadOnlyEnabled(editor, ro);
                    }
                    ig.igSeparator();
                    //
                    if (ig.igMenuItem_BoolPtr(ifa.ICON_FA_ARROW_ROTATE_LEFT ++ " Undo", "ALT-Backspace", null, !ro and cte.TextEditor_CanUndo(editor))) {
                        cte.TextEditor_Undo(editor, 1);
                    }
                    if (ig.igMenuItem_BoolPtr(ifa.ICON_FA_ARROW_ROTATE_RIGHT ++ " Redo", "Ctrl-Y", null, !ro and cte.TextEditor_CanRedo(editor))) {
                        cte.TextEditor_Redo(editor, 1);
                    }
                    ig.igSeparator();
                    //
                    if (ig.igMenuItem_BoolPtr(ifa.ICON_FA_COPY ++ " Copy", "Ctrl-C", null, cte.TextEditor_AnyCursorHasSelection(editor))) {
                        cte.TextEditor_Copy(editor);
                    }
                    if (ig.igMenuItem_BoolPtr(ifa.ICON_FA_SCISSORS ++ " Cut", "Ctrl-X", null, !ro and cte.TextEditor_AnyCursorHasSelection(editor))) {
                        cte.TextEditor_Cut(editor);
                    }
                    if (ig.igMenuItem_BoolPtr(ifa.ICON_FA_PASTE ++ " Paste", "Ctrl-V", null, !ro and ig.igGetClipboardText() != null)) {
                        cte.TextEditor_Paste(editor);
                    }
                    ig.igSeparator();
                    if (ig.igMenuItem_Bool(ifa.ICON_FA_SQUARE ++ " Select all", "Ctrl-A", false, true)) {
                        cte.TextEditor_SelectAll(editor);
                    }
                }
                //-------------
                //-- Menu Theme
                //-------------
                if (ig.igBeginMenu("Theme", true)) {
                    defer ig.igEndMenu();
                    if (ig.igMenuItem_Bool(ifa.ICON_FA_STAR_AND_CRESCENT ++ " Dark palette", null, false, true)) {
                        cte.TextEditor_SetPalette(editor, cte.Dark);
                    }
                    if (ig.igMenuItem_Bool(ifa.ICON_FA_SUN ++ " Light palette", null, false, true)) {
                        cte.TextEditor_SetPalette(editor, cte.Light);
                    }
                    if (ig.igMenuItem_Bool(ifa.ICON_FA_M ++ " Mariana palette", null, false, true)) {
                        cte.TextEditor_SetPalette(editor, cte.Mariana);
                    }
                    if (ig.igMenuItem_Bool(ifa.ICON_FA_CAMERA_RETRO ++ " Retro blue palette", "Ctrl-B", false, true)) {
                        cte.TextEditor_SetPalette(editor, cte.RetroBlue);
                    }
                }
            } //-- menubar end

            const langNames = [_][*c]const u8{ "None", "Cpp", "C", "Cs", "Python", "Lua", "Json", "Sql", "AngelScript", "Glsl", "Hlsl" };
            var str1: [10]u8 = undefined;
            copyStringToCstr(&str1, "Ins");
            if (cte.TextEditor_IsOverwriteEnabled(editor)) {
                copyStringToCstr(&str1, "Ovr");
            }
            var str2: [10]u8 = undefined;
            str2[0] = ' ';
            str2[1] = 0;
            if (cte.TextEditor_CanUndo(editor)) {
                copyStringToCstr(&str2, "*");
            }
            ig.igText("%6d/%-6d %6d lines  | %s | %s | %s | %s", mLine + 1, mColumn + 1, cte.TextEditor_GetLineCount(editor), &str1, &str2, langNames[cte.TextEditor_GetLanguageDefinition(editor)], fileName);

            ig.igPushFont(textFont, 0.0);
            _ = cte.TextEditor_Render(editor, "texteditor", false, .{ .x = 0, .y = 0 }, false);
            ig.igPopFont();
        } // end igBegin

        // Rendering
        window.render();
    } // while main  end

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

//---------------------
//--- copyCstrToString
//---------------------
fn copyCstrToString(sBuff: []u8, cstr: [*:0]const u8) void {
    const len = std.mem.len(cstr);
    std.mem.copyForwards(u8, sBuff[0..len], cstr[0..len]);
    sBuff[len] = 0;
}
//---------------------
//--- copyStringToCstr
//---------------------
fn copyStringToCstr(sBuff: []u8, str: []const u8) void {
    const len = @min(sBuff.len, str.len);
    std.mem.copyForwards(u8, sBuff[0..len], str[0..len]);
    if (len < sBuff.len) {
        sBuff[len] = 0;
    }
}
