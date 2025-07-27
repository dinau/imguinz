const std = @import("std");
const builtin = @import("builtin");
const ig = @import("cimgui");
const glfw = @import("glfw");
const ip = @import("implot.zig");
const ifa = @import("fonticon");
const demo = @import ("demoAll.zig");
const utils = @import ("utils.zig");
const app = @import("appimgui");
const stf = @import("setupfont");

pub const c = @cImport ({
  @cInclude ("stdlib.h");
});

const IMGUI_HAS_DOCK = false;    // Docking feature

fn glfw_error_callback(err: c_int, description: [*c]const u8) callconv(.C) void {
  std.debug.print ("GLFW Error {d}: {s}\n", .{ err, description });
}

const MainWinWidth :i32 = 1200;
const MainWinHeight:i32 = 800;

//-----------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) !void {
    stf.setupFonts(); // Setup CJK fonts and Icon fonts

  const imPlotContext = ip.ImPlot_CreateContext();
  defer  ip.ImPlot_DestroyContext(imPlotContext);

  //-------------
  // Global vars
  //-------------
  var showDemoWindow = true;
  var showImPlotDemoWindow = true;

  //------------------------
  // Select Dear ImGui style
  //------------------------
    ig.igStyleColorsClassic(null);
    //ig.igStyleColorsDark (null);
  //ig.igStyleColorsLight (null);

    stf.setupFonts(); // Setup CJK fonts and Icon fonts

  //---------------
  // main loop GUI
  //---------------
    while (glfw.glfwWindowShouldClose(window.handle) == 0) {
        glfw.glfwPollEvents();

        // Start the Dear ImGui frame
        window.frame();

        //------------------
        // Show demo window
        //------------------
        ig.igShowDemoWindow (&showDemoWindow);
        if (showImPlotDemoWindow) {
            ip.ImPlot_ShowDemoWindow (&showImPlotDemoWindow);
        }
        window.showInfoWindow();

        try imPlotDemoWindow();

        //--------
        // render
        //--------
        window.render();
    } // while end
} // main end


//------------------
// imPlotDemoWindow
//-------------------
fn imPlotDemoWindow() !void {
  {
    _ = ig.igBegin(ifa.ICON_FA_SIGNAL ++ " ImPlot demo: All demos have been written in Zig lang.", null, 0);
    defer ig.igEnd();
    try demo.imPlotDemoTabs();
  }
}

//--------
// main()
//--------
pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    //_ = app.setTheme(app.Theme.light); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    try gui_main(&window);
}
