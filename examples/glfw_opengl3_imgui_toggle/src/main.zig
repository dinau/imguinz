const ig = @import ("imgui.zig");
const fonts = @import("fonts.zig");
const app = @import("appImGui.zig");
const utils = @import("utils.zig");

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

    // ImGui-Toggle demo
    {
      const green        = utils.vec4(0.16, 0.66, 0.45, 1.0);
      const green_hover  = utils.vec4(0.0,  1.0,  0.57, 1.0);
      const green_shadow = utils.vec4(0.0,  1.0,  0.0,  0.4);
      var value_index: usize = 0;
      const sz = utils.vec2(0.0, 0.0);
      const sThemeClassic = "Theme: Classic";
      const sThemeLight   = "Theme: Light";
      const st = struct {
        var values = [8]bool{true, true, true, true, true, true, true, true  };
        var sTheme: []const u8 = sThemeClassic[0..];
      };
      _ = ig.igBegin("Zig: ImGui-Toggle demo 2025/02", null, 0);
      defer ig.igEnd ();
      //
      if (ig.Toggle("##toggle1", &st.values[value_index], sz)){
         if (st.values[value_index]) {
           st.sTheme = sThemeClassic[0..];
           ig.igStyleColorsClassic(null);
         }else{
           st.sTheme = sThemeLight[0..];
           ig.igStyleColorsLight(null);
         }
      }
      ig.igSameLine(0.0, -1.0); ig.igText("%s", st.sTheme.ptr);
      ig.igSeparator();
      value_index += 1;
      //
      _ = ig.Toggle("Default Toggle", &st.values[value_index], sz); ig.igSameLine(0.0, -1.0);
      value_index += 1;
      //
      _ = ig.ToggleAnim("Animated Toggle", &st.values[value_index], ig.ImGuiToggleFlags_Animated, 1.0, sz);
      value_index += 1;
      // This toggle draws a simple border around it's frame and knob
      _ = ig.ToggleAnim("Bordered Knob", &st.values[value_index], ig.ImGuiToggleFlags_Bordered, 1.0, sz); ig.igSameLine(0.0, -1.0);
      value_index += 1;
      //
      {
        ig.igPushStyleColor_Vec4(ig.ImGuiCol_BorderShadow, green_shadow);
        _ = ig.ToggleAnim("Shadowed Knob", &st.values[value_index], ig.ImGuiToggleFlags_Shadowed, 1.0, sz);
        value_index += 1;
        //
        _ = ig.ToggleAnim("Bordered + Shadowed Knob", &st.values[value_index], ig.ImGuiToggleFlags_Bordered | ig.ImGuiToggleFlags_Shadowed, 1.0, sz);
        value_index += 1;
        ig.igPopStyleColor(1);
      }
      // This toggle uses stack-pushed style colors to change the way it displays
      ig.igPushStyleColor_Vec4(ig.ImGuiCol_Button, green);
      ig.igPushStyleColor_Vec4(ig.ImGuiCol_ButtonHovered, green_hover);
      _ = ig.Toggle("Green Toggle", &st.values[value_index], sz); ig.igSameLine(0.0, -1.0);
      ig.igPopStyleColor(2);
      value_index += 1;
      //
      _ = ig.ToggleFlag("Toggle with A11y Labels", &st.values[value_index], ig.ImGuiToggleFlags_A11y, sz);
      value_index += 1;

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
const MainWinWidth :i32 = 1024;
const MainWinHeight:i32 = 900;

pub fn main () !void {
  var window =  try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
  defer window.destroyImGui();

  _ = app.setTheme(app.Theme.classic); // Theme: dark, classic, light, microsoft

  //---------------
  // GUI main proc
  //---------------
  gui_main(&window);
}
