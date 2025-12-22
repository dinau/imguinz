const ip = @import("implot");
const ipz = @import("zimplot.zig");
const app = @import("appimgui");
const ig  = app.ig;
const ifa = app.ifa;
const c   = app.clib;


const IMGUI_HAS_DOCK = false;    // Docking feature

const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

//-----------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) !void {
    _ = app.stf.setupFonts(); // Setup CJK fonts and Icon fonts

    const imPlotContext = ip.ImPlot_CreateContext();
    defer ip.ImPlot_DestroyContext(imPlotContext);

    //-------------
    // Global vars
    //-------------
    var showDemoWindow = true;
    var showImPlotDemoWindow = true;
    var showImPlotTestWindow = true;

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
        ig.igShowDemoWindow(&showDemoWindow);
        ip.ImPlot_ShowDemoWindow(&showImPlotDemoWindow);
        window.showInfoWindow();

        if (showImPlotTestWindow) {
            imPlotWindow(&showImPlotTestWindow);
            imPlotWindow2(&showImPlotTestWindow);
        }

        //--------
        // render
        //--------
        window.render();
    } // while end
} // main end

//--------------
// imPlotWindow
//--------------
fn imPlotWindow(fshow: *bool) void {
    const numx = 20;
    const st = struct {
        var bar_data: [numx]ig.ImS32 = undefined;
        var x_data: [numx]ig.ImS32 = undefined;
        var y_data: [numx]ig.ImS32 = undefined;
        var initReq = true;
    };
    if (st.initReq) {
        st.initReq = false;
        for (0..numx) |i| {
            st.bar_data[i] = @mod(c.rand(), numx * numx);
            st.x_data[i] = @intCast(i);
            st.y_data[i] = @intCast(i * i);
        }
    }
    {
        _ = ig.igBegin("Plot Window", fshow, 0);
        defer ig.igEnd();
        if (ip.ImPlot_BeginPlot("My Plot", .{.x = 0, .y = 0}, 0)) {
            defer ip.ImPlot_EndPlot();
            // Using "./zimplot.zig"
            ipz.ImPlot_PlotBars("My Bar Plot", &st.bar_data, st.bar_data.len);
            ipz.ImPlot_PlotLineXy("My Line Plot", &st.x_data, &st.y_data, st.x_data.len);
        }
    }
}

//---------------
// imPlotWindow2
//---------------
fn imPlotWindow2(fshow: *bool) void {
    const numx = 20;
    const st = struct {
        var bar_data: [numx]ig.ImS32 = undefined;
        var x_data: [numx]ig.ImS32 = undefined;
        var y_data: [numx]ig.ImS32 = undefined;
        var initReq = true;
    };
    if (st.initReq) {
        st.initReq = false;
        for (0..numx) |i| {
            st.bar_data[i] = @mod(c.rand(), numx * numx);
            st.x_data[i] = @intCast(i);
            st.y_data[i] = @intCast(i * i);
        }
    }
    {
        _ = ig.igBegin("Plot Window2", fshow, 0);
        defer ig.igEnd();
        if (ip.ImPlot_BeginPlot("My Plot", .{ .x = 0, .y = 0 }, 0)) {
            defer ip.ImPlot_EndPlot();
            // Not using "./zimplot.zig"
            ip.ImPlot_PlotBars_S32PtrInt("My Bar Plot"
                                    ,&st.bar_data
                                    ,st.bar_data.len
                                    ,0.67 // bar_size
                                    ,0.0  // shift
                                    ,0    // ImPlotFlags
                                    ,0    // offset
                                    ,@sizeOf(ig.ImS32)); // stride
            ip.ImPlot_PlotLine_S32PtrS32Ptr("My LiSe Plot"
                                    ,&st.x_data
                                    ,&st.y_data
                                    ,st.x_data.len
                                    ,0    // ImPlotFlags
                                    ,0    // offset
                                    ,@sizeOf(ig.ImS32)); // stride
        }
    }
}

//--------
// main()
//--------
pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    _ = app.setTheme(.classic); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    try gui_main(&window);
}
