const ig = @import("cimgui");
const ifa = @import("fonticon");
const stf = @import("setupfont");
const app = @import("appimgui");

const toggle = @import("imtoggle");

//------------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) void {
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
        ig.igShowDemoWindow(null);
        window.showInfoWindow();

        // ImGui-Toggle demo
        {
            const green = ig.ImVec4{ .x = 0.16, .y = 0.66, .z = 0.45, .w = 1.0 };
            const green_hover = ig.ImVec4{ .x = 0.0, .y = 1.0, .z = 0.57, .w = 1.0 };
            const green_shadow = ig.ImVec4{ .x = 0.0, .y = 1.0, .z = 0.0, .w = 0.4 };
            var value_index: usize = 0;
            const sz: toggle.ImVec2 = .{ .x = 0.0, .y = 0.0 };
            const sThemeClassic = "Theme: Classic";
            const sThemeLight = "Theme: Light";
            const st = struct {
                var values = [8]bool{ true, true, true, true, true, true, true, true };
                var sTheme: []const u8 = sThemeClassic[0..];
            };
            _ = ig.igBegin("Zig: ImGui-Toggle demo 2025/02" ++ " " ++ ifa.ICON_FA_DOG, null, 0);
            defer ig.igEnd();

            //--------------
            // Theme Toggle
            //--------------
            if (toggle.Toggle("##toggle1", &st.values[value_index], sz)) {
                if (st.values[value_index]) {
                    st.sTheme = sThemeClassic[0..];
                    ig.igStyleColorsClassic(null);
                } else {
                    st.sTheme = sThemeLight[0..];
                    ig.igStyleColorsLight(null);
                }
            }
            ig.igSameLine(0.0, -1.0);
            ig.igText("%s", st.sTheme.ptr);
            ig.igSeparator();
            value_index += 1;

            //----------------
            // Default Toggle
            //----------------
            _ = toggle.Toggle("Default Toggle", &st.values[value_index], sz);
            ig.igSameLine(0.0, -1.0);
            value_index += 1;

            //-----------------
            // Animated Toggle
            //-----------------
            _ = toggle.ToggleAnim("Animated Toggle", &st.values[value_index], toggle.ImGuiToggleFlags_Animated, 1.0, sz);
            value_index += 1;

            //---------------
            // Bordered Knob
            //---------------
            // This toggle draws a simple border around it's frame and knob
            _ = toggle.ToggleAnim("Bordered Knob", &st.values[value_index], toggle.ImGuiToggleFlags_Bordered, 1.0, sz);
            ig.igSameLine(0.0, -1.0);
            value_index += 1;

            //---------------
            // Shadowed Knob
            //---------------
            ig.igPushStyleColor_Vec4(ig.ImGuiCol_BorderShadow, green_shadow);
            _ = toggle.ToggleAnim("Shadowed Knob", &st.values[value_index], toggle.ImGuiToggleFlags_Shadowed, 1.0, sz);
            value_index += 1;
                //
            //--------------------------
            // Bordered + Shadowed Knob
            //--------------------------
            _ = toggle.ToggleAnim("Bordered + Shadowed Knob", &st.values[value_index], toggle.ImGuiToggleFlags_Bordered | toggle.ImGuiToggleFlags_Shadowed, 1.0, sz);
            value_index += 1;
            ig.igPopStyleColor(1);

            //--------------
            // Green Toggle
            //--------------
            // This toggle uses stack-pushed style colors to change the way it displays
            ig.igPushStyleColor_Vec4(ig.ImGuiCol_Button, green);
            ig.igPushStyleColor_Vec4(ig.ImGuiCol_ButtonHovered, green_hover);
            _ = toggle.Toggle("Green Toggle", &st.values[value_index], sz);
            ig.igSameLine(0.0, -1.0);
            ig.igPopStyleColor(2);
            value_index += 1;

            //-------------------------
            // Toggle with A11y Labels
            //-------------------------
            _ = toggle.ToggleFlag("Toggle with A11y Labels", &st.values[value_index], toggle.ImGuiToggleFlags_A11y, sz);
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
const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    _ = app.setTheme(.classic); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    gui_main(&window);
}
