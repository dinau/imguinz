const ig = @import("cimgui");
const glfw = @import("glfw");
const stf = @import("setupfont");
const app = @import("appimgui");

//-----------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) void {
    stf.setupFonts(); // Setup CJK fonts and Icon fonts

    //---------------
    // main loop GUI
    //---------------
    while (glfw.glfwWindowShouldClose(@ptrCast(window.handle)) == 0) {
        glfw.glfwPollEvents();

        // Start the Dear ImGui frame
        window.frame();

        //------------------
        // Show demo window
        //------------------
        ig.igShowDemoWindow(null);

        //------------------
        // Show info window
        //------------------
        window.showInfoWindow();    // See:  examples/utils/appImGui.zig

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
