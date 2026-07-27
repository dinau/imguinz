const app = @import("appimgui");
const ig = app.ig;
const zmi = @import("imguizoomableimage");

/// GUI main
pub fn gui_main(window: *app.Window) void {
    _ = app.stf.setupFonts(null); // null: Setup default CJK fonts and Icon fonts

    window.eventLoadStandard(); // See ../../../src/libzig/appimgui/src/appImGui.zig

    // main loop GUI
    while (!window.shouldClose()) {
        window.pollEvents();

        // Iconify sleep
        if (window.isIconified()) {
            continue;
        }

        // Start the Dear ImGui frame
        window.frame();

        // Show demo window
        ig.igShowDemoWindow(null);

        // Show info window
        window.showInfoWindow(); // See:  ../../../src/libzig/appimgui/appImGui.zig

        // render
        window.render();
    } // end while loop
}

/// Global constant
const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

/// Main
pub fn main() !void {
    var window = try app.Window.createImGui(
        MainWinWidth,
        MainWinHeight,
        "Dear ImGui window in Zig",
        .{
            .docking = true,
            .title_bar_icon_name = "./resources/z.png",
        },
    );
    defer window.destroyImGui();

    // Theme: dark, classic, light, microsoft
    //_ = app.setTheme(.light);

    // GUI main proc
    gui_main(&window);
}
