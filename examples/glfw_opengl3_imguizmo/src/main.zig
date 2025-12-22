const app = @import("appimgui");
const ig  = app.ig;
const ifa = app.ifa;

const imguizmo = @import("imguizmo");

const MainWinWidth: i32 = 1200;
const MainWinHeight: i32 = 800;

//-----------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) !void {
    _ = app.stf.setupFonts(); // Setup CJK fonts and Icon fonts

    // Set background color
    window.ini.window.colBGx = 0;
    window.ini.window.colBGy = 0.2;
    window.ini.window.colBGz = 0.1;

    const pio = ig.igGetIO_Nil();

    var zmoOP = imguizmo.TRANSLATE;
    var zmoMODE = imguizmo.LOCAL;
    var zmobounds = [_]f32{ -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 };
    var Mident = [_]f32{ 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 };
    var MVmo = [_]f32{ 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, -7, 1 };
    var MPmo = [_]f32{ 2.3787, 0, 0, 0, 0, 3.1716, 0, 0, 0, 0, -1.0002, -1, 0, 0, -0.2, 0 };
    var MOmo = [_]f32{ 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0.5, 0.5, 0.5, 1 };

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

        // Start ImGuizmo frame
        imguizmo.ImGuizmo_BeginFrame();

        //------------------
        // Show demo window
        //------------------
        //ig.igShowDemoWindow(null);
        //window.showInfoWindow();

        //---------------------
        // Show ImGuizmo window
        //---------------------
        {
            _ = ig.igBegin("ImGuizmo " ++ ifa.ICON_FA_DOG, null, 0);
            defer ig.igEnd();

            _ = ig.igRadioButton_IntPtr("trans", &zmoOP, imguizmo.TRANSLATE);
            ig.igSameLine(0.0, -1.0);
            _ = ig.igRadioButton_IntPtr("rot", &zmoOP, imguizmo.ROTATE);
            ig.igSameLine(0.0, -1.0);
            _ = ig.igRadioButton_IntPtr("scale", &zmoOP, imguizmo.SCALE);
            ig.igSameLine(0.0, -1.0);
            _ = ig.igRadioButton_IntPtr("bounds", &zmoOP, imguizmo.BOUNDS);
            _ = ig.igRadioButton_IntPtr("local", &zmoMODE, imguizmo.LOCAL);
            ig.igSameLine(0.0, -1.0);
            _ = ig.igRadioButton_IntPtr("world", &zmoMODE, imguizmo.WORLD);
        } // end ImGuizmo window
        {
            imguizmo.ImGuizmo_SetRect(0, 0, pio.*.DisplaySize.x, pio.*.DisplaySize.y);
            imguizmo.ImGuizmo_SetOrthographic(false);
            imguizmo.ImGuizmo_DrawGrid(&MVmo[0], &MPmo[0], &Mident[0], 10);
            imguizmo.ImGuizmo_DrawCubes(&MVmo[0], &MPmo[0], &MOmo[0], 1);
            var pmp: ?*const f32 = null;
            if (zmoOP == imguizmo.BOUNDS) {
                pmp = &zmobounds[0];
            }
            _ = imguizmo.ImGuizmo_Manipulate(&MVmo[0], &MPmo[0], @intCast(zmoOP), @intCast(zmoMODE), &MOmo[0], null, null, pmp, null);
            _ = imguizmo.ImGuizmo_ViewManipulate_Float(&MVmo[0] //-- view
                , 7 //-- length
                , .{ .x = 0, .y = 0 } //-- position
                , .{ .x = 128, .y = 128 } //-- size
                , 0x10101010); //-- background color
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
pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    //_ = app.setTheme(.light); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    try gui_main(&window);
}
