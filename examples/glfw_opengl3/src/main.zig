const app = @import("appimgui");
const ig = app.ig;
const zmi = @import("imguizoomableimage");

// gui_main()
pub fn gui_main(window: *app.Window) void {
    _ = app.stf.setupFonts(); // Setup CJK fonts and Icon fonts

    window.eventLoadStandard(); // See ../../../src/libzig/appimgui/src/appImGui.zig

    // main loop GUI
    while (!window.shouldClose()) {
        zmi.ImGuiImage_State_Init(null);
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

// main()
const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig");
    defer window.destroyImGui();

    //_ = app.setTheme(.light); // Theme: dark, classic, light, microsoft

    // GUI main proc
    gui_main(&window);
}
