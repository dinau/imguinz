const std = @import("std");
const builtin = @import("builtin");
const app = @import("appimgui");
const ig = app.ig;
const ifa = app.ifa;
const stf = app.stf;
const glfw = app.glfw;
const utils = app.utils;

const ip = @import("implot");
const ip3 = @import("implot3d");

const spn = @import("imspinner");
const demos = @import("./demo/demos.zig");

const is_emscripten = builtin.target.os.tag == .emscripten;
//--- for only zig-0.16.0 ---
pub const std_options_debug_io = if (is_emscripten) std.Io.failing else std.Io.Threaded.global_single_threaded.io();
pub const panic = std.debug.FullPanic(emscriptenPanicBody);
//---------------------------

extern "c" fn write(fd: c_int, buf: [*]const u8, count: usize) isize;

fn emscriptenPanicBody(msg: []const u8, ret_addr: ?usize) noreturn {
    _ = ret_addr;
    var written: usize = 0;
    while (written < msg.len) {
        const n = write(2, msg.ptr + written, msg.len - written);
        if (n <= 0) break;
        written += @intCast(n);
    }
    _ = write(2, "\n", 1);
    @trap();
}

const em = if (is_emscripten) @import("emscripten") else struct {};

var win: app.Window = undefined;
var last_w: f64 = 0;
var last_h: f64 = 0;
var pio: *ig.ImGuiIO = undefined;
var showLicenseNotices = false;

//------------
// Load image
//------------
const ImageName = "resources/dinosaurs_paradise-480.jpg";
var textureId: glfw.GLuint = undefined;
var textureWidth: c_int = 0;
var textureHeight: c_int = 0;

/// loopBody for emscripten
fn loopBody() callconv(.c) void {
    if (win.shouldClose()) {
        if (is_emscripten) em.emscripten_cancel_main_loop();
        return;
    }
    if (is_emscripten) {
        var w: f64 = 0;
        var h: f64 = 0;
        _ = em.emscripten_get_element_css_size("#canvas", &w, &h);
        if (w != last_w or h != last_h) {
            last_w = w;
            last_h = h;
            glfw.glfwSetWindowSize(win.handle, @intFromFloat(w), @intFromFloat(h));
        }
    }

    win.pollEvents();
    if (win.isIconified()) return;

    win.frame();

    const mh = 0; //ig.ImGui_GetFrameHeight();
    //--------------------
    // Show Licenses menu
    //--------------------
    if( ig.ImGui_BeginMainMenuBar()){
      defer ig.ImGui_EndMainMenuBar();
      if (ig.ImGui_BeginMenu("Licenses")){
        defer ig.ImGui_EndMenu();
        if(ig.ImGui_MenuItem("Show")){
          if( !showLicenseNotices){
            showLicenseNotices = true;
          }
        }
      }
    }

    //-----------------------
    // Show Licenses window
    //-----------------------
    if (showLicenseNotices){
        const themeSave = win.getTheme();
        win.setTheme(.light);
        ig.ImGui_SetNextWindowSize(utils.vec2(600, 800), ig.ImGuiCond_FirstUseEver);
        if (is_emscripten) {
            ig.ImGui_PushFontFloat(null, stf.point2px(8.4)); // for WASM
        }
        demos.license_notices(&showLicenseNotices, 0);
        if (is_emscripten) {
            ig.ImGui_PopFont(); // for WASM
        }
        win.setTheme(themeSave);
    }

    // Dear ImGui full demo
    ig.ImGui_ShowDemoWindow(null);

    // ImPlot/ImPlot3D full demo
    ip.ImPlot_ShowDemoWindow(null);
    ip3.ImPlot3D_ShowDemoWindow(null);

    //-----------------
    // ImSpinner demo
    //-----------------
    ig.ImGui_SetNextWindowPos(utils.vec2(10, 31 + mh), ig.ImGuiCond_FirstUseEver);
    demos.imspinner(pio);

    // Info window
    ig.ImGui_SetNextWindowPos(utils.vec2(10, 150 + mh), ig.ImGuiCond_FirstUseEver);
    win.showInfoWindow();

    //---------------
    // ImKnobs demo
    //---------------
    ig.ImGui_SetNextWindowPos(utils.vec2(10, 335 + mh), ig.ImGuiCond_FirstUseEver);
    demos.imknobs(&win);

    //---------------------
    // ImSpinner full demo
    //---------------------
    {
        ig.ImGui_SetNextWindowPos(utils.vec2(10, 485 + mh), ig.ImGuiCond_FirstUseEver);
        ig.ImGui_SetNextWindowSize(utils.vec2(900, 300), ig.ImGuiCond_FirstUseEver);
        if (ig.ImGui_Begin("ImSpinner full demo", null, 0)) {
            spn.demoSpinners();
        }
        ig.ImGui_End();
    }

    //----------------------
    // ImPlot3D demo window
    //----------------------
    ig.ImGui_SetNextWindowPos(utils.vec2(880, 260 + mh), ig.ImGuiCond_FirstUseEver);
    ig.ImGui_SetNextWindowSize(utils.vec2(460, 750), ig.ImGuiCond_FirstUseEver);
    demos.implot3d(pio);

    //------------------------
    // Show image load window
    //------------------------
    ig.ImGui_SetNextWindowPos(utils.vec2(600, 300 + mh), ig.ImGuiCond_FirstUseEver);
    {
        _ = ig.ImGui_Begin("Image load test", null, 0);
        defer ig.ImGui_End();
        // Load image
        const size = utils.vec2(@floatFromInt(textureWidth), @floatFromInt(textureHeight));
        const imageBoxPosTop = ig.ImGui_GetCursorScreenPos(); // # Get absolute pos.

        ig.ImGui_Image(ig.ImTextureRef{ ._TexData = null, ._TexID = textureId }, size);
        const imageBoxPosEnd = ig.ImGui_GetCursorScreenPos(); // # Get absolute pos.
        if (ig.ImGui_IsItemHovered(ig.ImGuiHoveredFlags_DelayNone)) {
            utils.zoomGlass(&textureId, textureWidth, imageBoxPosTop, imageBoxPosEnd, false);
        }
    }
    // render
    win.render();
}

/// gui_main
pub fn gui_main(window: *app.Window) void {
    //------------
    // setup font
    //------------
    var font_name: [*c]const u8 = null;
    if (is_emscripten) {
        font_name = "fonts/ProggyClean.ttf";
    }
    _ = stf.setupFonts(font_name);
    if (is_emscripten) {
        ig.ImGui_PushFontFloat(null, stf.point2px(11)); // for WASM
    } else {
        ig.ImGui_PushFontFloat(null, stf.point2px(14)); // for native application
    }
    defer ig.ImGui_PopFont();

    // ImPlot/ImPlot3D context
    const imPlotContext = ip.ImPlot_CreateContext();
    defer ip.ImPlot_DestroyContext(imPlotContext);
    const imPlot3dContext = ip3.ImPlot3D_CreateContext();
    defer ip3.ImPlot3D_DestroyContext(imPlot3dContext);

    var zoomTextureID: glfw.GLuint = 0; // Must be == 0 at first
    _ = utils.LoadTextureFromFile(ImageName, &textureId, &textureWidth, &textureHeight);
    defer glfw.glDeleteTextures(1, &zoomTextureID);

    pio = ig.ImGui_GetIO();
    win = window.*;

    // main loop
    if (is_emscripten) {
        em.emscripten_set_main_loop(loopBody, 0, 1);
    } else {
        while (!win.shouldClose()) loopBody();
    }
}

const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;
/// main
pub fn main() !void {
    var window = try app.Window.createImGui(
        MainWinWidth,
        MainWinHeight,
        "Dear ImGui window in Zig",
        .{
            .docking = false,
            .title_bar_icon_name = "./resources/z.png",
        },
    );
    defer window.destroyImGui();

    window.setTheme(.classic);
    ig.ImGui_GetStyle().*.Colors[ig.ImGuiCol_WindowBg].w = 1.0;

    gui_main(&window);
}
