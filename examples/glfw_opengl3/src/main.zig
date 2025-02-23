const ig = @import ("imgui.zig");
const fonts = @import("fonts.zig");
const app = @import("appImGui.zig");

//-----------
// gui_main()
//-----------
pub fn gui_main (window: *app.Window) void {
  fonts.setupFonts(); // Setup CJK fonts and Icon fonts

  //---------------
  // main loop GUI
  //---------------
  while (ig.glfwWindowShouldClose (window.handle) == 0) {
    ig.glfwPollEvents ();

    // Start the Dear ImGui frame
    window.frame();

    //------------------
    // Show demo window
    //------------------
    ig.igShowDemoWindow (null);
    window.showInfoWindow();

    //--------
    // render
    //--------
    window.render();
  } // end while loop
}

//--------
// main()
//--------
const MainWinWidth :i32 = 1024;
const MainWinHeight:i32 = 900;

pub fn main () !void {
  var window =  try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
  defer window.destroyImGui();

  //_ = app.setTheme(app.Theme.light); // Theme: dark, classic, light, microsoft

  //---------------
  // GUI main proc
  //---------------
  gui_main(&window);
}
