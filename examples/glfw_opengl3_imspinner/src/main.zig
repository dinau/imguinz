const ig = @import ("imgui.zig");
const fonts = @import("fonts.zig");
const app = @import("appImGui.zig");
const utils = @import("utils.zig");

const MainWinWidth :i32 = 1024;
const MainWinHeight:i32 = 900;

//-----------
// gui_main()
//-----------
pub fn gui_main (window: *app.Window) void {
  fonts.setupFonts(); // Setup CJK fonts and Icon fonts

  const pio = ig.igGetIO ();

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
    //window.showInfoWindow();

    //------------------------
    // Show CImSpinner window
    //------------------------
    {
      _ = ig.igBegin ("CImSpinner with Zig lang " ++ fonts.ICON_FA_CAT, null, 0);
      defer ig.igEnd ();
      const red :ig.ImColor = .{.Value = utils.vec4(1.0, 0.0, 0.0, 1.0)};
      const blue:ig.ImColor = .{.Value = utils.vec4(0.0, 0.0, 1.0, 1.0)};
      //
      ig.SpinnerDnaDotsEx("DnaDotsV", 16, 2, red, 1.2 , 8, 0.25, true);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerRainbowMix("Rmix", 16, 2, blue, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerAng8("Ang", 16, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerPulsar("Pulsar", 16, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerClock("Clock", 16, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerAtom("atom", 16, 2);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerSwingDots("wheel", 16, 6);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerDotsToBar("tobar", 16, 2, 0.5);
      ig.igSameLine(0.0, -1.0);
      ig.SpinnerBarChartRainbow("rainbow", 16, 4, red, 4);
      ig.igNewLine();
      ig.igText ("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
    } // end main window

    //------------------------
    // Show ImSpinner window
    //------------------------
    {
      _ = ig.igBegin ("ImSpinner demo " ++ fonts.ICON_FA_DOG, null, 0);
      defer ig.igEnd ();
      ig.demoSpinners();
    }

    //--------
    // render
    //--------
    window.render();
  } // end while loop
}

//--------
// main()
//--------
pub fn main () !void {
  var window =  try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
  defer window.destroyImGui();

  //_ = app.setTheme(app.Theme.light); // Theme: dark, classic, light, microsoft

  //---------------
  // GUI main proc
  //---------------
  gui_main(&window);
}
