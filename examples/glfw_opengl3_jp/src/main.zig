const ig = @import("cimgui");
const glfw = @import("glfw");
const stf = @import("setupfont");
const app = @import("appimgui");
const ifa = @import("fonticon");
const builtin = @import("builtin");

//-----------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) void {
    stf.setupFonts(); // Setup CJK fonts and Icon fonts

    const pio = ig.igGetIO_Nil();
    var showDemoWindow = true;
    var fval: f32 = 0.0;
    var counter: i32 = 0;
    // Back ground color
    var clearColor = [_]f32{ 0.25, 0.55, 0.9, 1.0 };
    // Input text buffer
    var sTextInuputBuf = [_:0]u8{0} ** 200;

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

        //------------------
        // Show main window
        //------------------
        {
            _ = ig.igBegin(ifa.ICON_FA_THUMBS_UP ++ " Dear ImGui", null, 0);
            defer ig.igEnd();
            ig.igText(ifa.ICON_FA_COMMENT ++ " GLFW v");
            ig.igSameLine(0, -1.0);
            ig.igText(glfw.glfwGetVersionString());
            ig.igText(ifa.ICON_FA_COMMENT ++ " OpenGL v");
            ig.igSameLine(0, -1.0);
            ig.igText(glfw.glGetString(glfw.GL_VERSION));
            ig.igText(ifa.ICON_FA_CIRCLE_INFO ++ " Dear ImGui v");
            ig.igSameLine(0, -1.0);
            ig.igText(ig.igGetVersion());
            ig.igText(ifa.ICON_FA_CIRCLE_INFO ++ " Zig v");
            ig.igSameLine(0, -1.0);
            ig.igText(builtin.zig_version_string);

            ig.igSpacing();
            _ = ig.igInputTextWithHint("テキスト入力", "ここに入力", &sTextInuputBuf, sTextInuputBuf.len, 0, null, null);
            ig.igText("入力結果:");
            ig.igSameLine(0, -1.0);
            ig.igText(&sTextInuputBuf);

            ig.igSpacing();
            _ = ig.igCheckbox("デモ・ウインドウ", &showDemoWindow);

            _ = ig.igSliderFloat("浮動小数", &fval, 0.0, 1.0, "%.3f", 0);
            _ = ig.igColorEdit3("背景色 変更", &clearColor, 0);

            if (ig.igButton("Button", .{.x = 0, .y = 0})) counter += 1;
            ig.igSameLine(0, -1.0);
            ig.igText("カウンタ = %d", counter);
            ig.igText("画面更新レート %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
            // Show icon fonts
            ig.igSeparatorText(ifa.ICON_FA_WRENCH ++ " アイコン・フォントテスト");
            ig.igText(ifa.ICON_FA_TRASH_CAN ++ " ゴミ箱");

            ig.igSpacing();
            ig.igText(ifa.ICON_FA_MAGNIFYING_GLASS_PLUS ++
                " " ++ ifa.ICON_FA_POWER_OFF ++
                " " ++ ifa.ICON_FA_MICROPHONE ++
                " " ++ ifa.ICON_FA_MICROCHIP ++
                " " ++ ifa.ICON_FA_VOLUME_HIGH ++
                " " ++ ifa.ICON_FA_SCISSORS ++
                " " ++ ifa.ICON_FA_SCREWDRIVER_WRENCH ++
                " " ++ ifa.ICON_FA_BLOG);
        } // end main window

        //--------
        // render
        //--------
        window.render();
    } // end while loop
}

//--------
// main()
//--------
const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    //_ = app.setTheme(app.Theme.light); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    gui_main(&window);
}
