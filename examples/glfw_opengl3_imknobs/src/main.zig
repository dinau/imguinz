const ig = @import("cimgui");
const ifa = @import("fonticon");
const stf = @import("setupfont");
const utils = @import("utils");
const app = @import("appimgui");

const knobs = @import("imknobs");

const MainWinWidth :i32 = 1024;
const MainWinHeight:i32 = 900;

//-----------
// gui_main()
//-----------
pub fn gui_main (window: *app.Window) void {
  stf.setupFonts(); // Setup CJK fonts and Icon fonts

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
    ig.igShowDemoWindow (null);
    window.showInfoWindow();

    //---------------------------
    // Show cimgui-knobs window
    //---------------------------
    {
      _ = ig.igBegin (ifa.ICON_FA_THUMBS_UP ++ " ImGui knobs in Zig 2025/02", null, 0);
      defer ig.igEnd ();
      const st = struct  {
        var val1:f32 = 0;
        var val2:f32 = 0;
        var val3:f32 = 0;
        var val4:f32 = 0;
        var val5:i32 = 1;
        var val6:f32 = 1;
      };
      if (knobs.IgKnobFloat("Gain", &st.val1, -6.0, 6.0, 0.1, "%.1fdB", knobs.IgKnobVariant_Tick, 0, 0, 10, -1, -1)) {
        window.ini.window.colBGx = (st.val1 + 6) / 12;
      }
      ig.igSameLine (0, -1.0);
      if (knobs.IgKnobFloat("Mix", &st.val2, -1.0, 1.0, 0.1, "%.1f", knobs.IgKnobVariant_Stepped, 0, 0, 10, -1, -1)) {
        window.ini.window.colBGy = (st.val2 + 1) / 2;
      }
      // Double click to reset
      if (ig.igIsItemActive() and ig.igIsMouseDoubleClicked_Nil(0)) {
        window.ini.window.colBGy = 0;
        st.val2 = 0;
      }
      ig.igSameLine (0, -1.0);

      // Custom colors
      ig.igPushStyleColor_Vec4(ig.ImGuiCol_ButtonActive,  utils.vec4(255.0, 0,     0, 0.7));
      ig.igPushStyleColor_Vec4(ig.ImGuiCol_ButtonHovered, utils.vec4(255.0, 0,     0, 1));
      ig.igPushStyleColor_Vec4(ig.ImGuiCol_Button,        utils.vec4(0,     255.0, 0, 1));
      // Push/PopStyleColor() for each colors used (namely ImGuiCol_ButtonActive and ImGuiCol_ButtonHovered for primary and ImGuiCol_Framebg for Track)
      if (knobs.IgKnobFloat("Pitch", &st.val3, -6.0, 6.0, 0.1, "%.1f", knobs.IgKnobVariant_WiperOnly, 0, 0, 10, -1, -1)) {
        window.ini.window.colBGz = (st.val3 + 6.0 ) / 12.0;
      }
      ig.igPopStyleColor(3);
      ig.igSameLine (0, -1.0);

      // Custom min/max angle
      if (knobs.IgKnobFloat("Dry", &st.val4, -6.0, 6.0, 0.1, "%.1f", knobs.IgKnobVariant_Stepped, 0, 0, 10, 1.570796, 3.141592)) {
        window.ini.window.colBGx = (st.val4 + 6.0 ) / 12.0;
      }
      ig.igSameLine (0, -1.0);

      // Int value
      if (knobs.IgKnobInt("Wet", &st.val5, 1, 10, 0.1, "%i", knobs.IgKnobVariant_Stepped, 0, 0, 10, -1, -1)) {
        window.ini.window.colBGy = @as(f32,@floatFromInt(st.val5)) / 10.0;
      }
      ig.igSameLine (0, -1.0);

      // Vertical drag only
      if (knobs.IgKnobFloat("Vertical", &st.val6, 0.0, 10.0, 0.1, "%.1f", knobs.IgKnobVariant_Space, 0, knobs.IgKnobFlags_DragVertical, 10, -1, -1)) {
        window.ini.window.colBGz = st.val6 / 10.0 ;
      }
      ig.igSameLine (0, -1.0);

    } // end knobs window

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

  //_ = app.setTheme(.light); // Theme: dark, classic, light, microsoft

  //---------------
  // GUI main proc
  //---------------
  gui_main(&window);
}
