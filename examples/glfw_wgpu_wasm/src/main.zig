const std = @import("std");
const builtin = @import("builtin");
const app = @import("appimguiwgpu");
const glfw = app.glfw;
const impl_glfw = app.impl_glfw;
const ig = app.ig;
const stf = app.stf;
const utils = app.utils;
const wgpu = @import("impl_wgpu");
const em = @import("emscripten");

const spn = @import("imspinner");
const ip = @import("implot");
const ip3 = @import("implot3d");
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

fn dbgPrint(comptime fmt: []const u8, args: anytype) void {
    var buf: [512]u8 = undefined;
    const msg = std.fmt.bufPrint(&buf, fmt, args) catch return;
    var written: usize = 0;
    while (written < msg.len) {
        const n = write(2, msg.ptr + written, msg.len - written);
        if (n <= 0) break;
        written += @intCast(n);
    }
}

var win: app.Window = undefined;
var showLicenseNotices = false;
var pio: *ig.ImGuiIO = undefined;

//------------
// Load image     WIP
//------------
//const ImageName = "resources/dinosaurs_paradise-480.jpg";
//var textureId: glfw.GLuint = undefined;
//var textureWidth: c_int = 0;
//var textureHeight: c_int = 0;

fn glfwErrorCallback(err: c_int, description: [*c]const u8) callconv(.c) void {
    dbgPrint("GLFW Error {d}: {s}\n", .{ err, description });
}

fn loopBody() callconv(.c) void {
    glfw.glfwPollEvents();

    if(win.wgpu_isSurfaceStatusSubOptimal()){
       return;
    }

    // Start the Dear ImGui frame
    wgpu.cImGui_ImplWGPU_NewFrame();
    impl_glfw.cImGui_ImplGlfw_NewFrame();
    ig.ImGui_NewFrame();

    const mh = 0;
    const sz = utils.vec2(0, 0);

    //--------------------
    // Show Licenses menu
    //--------------------
    if (ig.igBeginMainMenuBar()) {
        defer ig.igEndMainMenuBar();
        if (ig.igBeginMenu("Licenses", true)) {
            defer ig.igEndMenu();
            if (ig.igMenuItem_Bool("Show", "", false, true)) {
                if (!showLicenseNotices) {
                    showLicenseNotices = true;
                }
            }
        }
    }

    //-----------------------
    // Show Licenses window
    //-----------------------
    if (showLicenseNotices) {
        const themeSave = win.getTheme();
        win.setTheme(.light);
        ig.igSetNextWindowSize(utils.vec2(600, 800), ig.ImGuiCond_FirstUseEver);
        if (is_emscripten) {
            ig.igPushFont(null, stf.point2px(8.4)); // for WASM
        }
        demos.license_notices(&showLicenseNotices, 0);
        if (is_emscripten) {
            ig.igPopFont(); // for WASM
        }
        win.setTheme(themeSave);
    }

    // Dear ImGui full demo
    ig.igShowDemoWindow(null);

    // ImPlot/ImPlot3D full demo
    ip.ImPlot_ShowDemoWindow(null);
    ip3.ImPlot3D_ShowDemoWindow(null);

    //-----------------
    // ImSpinner demo
    //-----------------
    ig.igSetNextWindowPos(utils.vec2(10, 31 + mh), ig.ImGuiCond_FirstUseEver, sz);
    demos.imspinner(pio);

    // Info window
    ig.igSetNextWindowPos(utils.vec2(10, 150 + mh), ig.ImGuiCond_FirstUseEver, sz);
    win.showInfoWindow();

    //---------------
    // ImKnobs demo
    //---------------
    ig.igSetNextWindowPos(utils.vec2(10, 335 + mh), ig.ImGuiCond_FirstUseEver, sz);
    demos.imknobs(&win);

    //---------------------
    // ImSpinner full demo
    //---------------------
    ig.igSetNextWindowPos(utils.vec2(10, 485 + mh), ig.ImGuiCond_FirstUseEver, sz);
    ig.igSetNextWindowSize(utils.vec2(900, 300), ig.ImGuiCond_FirstUseEver);
    if (ig.igBegin("ImSpinner full demo", null, 0)) {
        spn.demoSpinners();
    }
    ig.igEnd();

    //----------------------
    // ImPlot3D demo window
    //----------------------
    ig.igSetNextWindowPos(utils.vec2(880, 260 + mh), ig.ImGuiCond_FirstUseEver, sz);
    ig.igSetNextWindowSize(utils.vec2(460, 750), ig.ImGuiCond_FirstUseEver);
    demos.implot3d(pio);

    ////------------------------
    //// Show image load window
    ////------------------------
    ////ig.ImGui_SetNextWindowPos(utils.vec2(600, 300 + mh), ig.ImGuiCond_FirstUseEver);
    ////{
    ////    _ = ig.ImGui_Begin("Image load test", null, 0);
    ////    defer ig.ImGui_End();
    ////    // Load image
    ////    const size = utils.vec2(@floatFromInt(textureWidth), @floatFromInt(textureHeight));
    ////    const imageBoxPosTop = ig.ImGui_GetCursorScreenPos(); // # Get absolute pos.

    ////    ig.ImGui_Image(ig.ImTextureRef{ ._TexData = null, ._TexID = textureId }, size);
    ////    const imageBoxPosEnd = ig.ImGui_GetCursorScreenPos(); // # Get absolute pos.
    ////    if (ig.ImGui_IsItemHovered(ig.ImGuiHoveredFlags_DelayNone)) {
    ////        utils.zoomGlass(&textureId, textureWidth, imageBoxPosTop, imageBoxPosEnd, false);
    ////    }
    ////}

    //------------------
    // End GUI Window
    //------------------

    // render
    win.render();
}

const MainWinWidth: i32 = 1024;
const MainWinHeight: i32 = 900;

/// main
pub fn main() !void {
    win = try app.Window.createImGui(
        MainWinWidth,
        MainWinHeight,
        "Dear ImGui window in Zig",
        .{
            .docking = false,
            .title_bar_icon_name = "./resources/z.png",
        },
    );
    defer win.destroyImGui();

    win.setTheme(.classic);

    const font_name = "./resources/fonts/ProggyClean.ttf";
    _ = stf.setupFonts(font_name);
    const style = ig.ImGui_GetStyle();
    style.*.FontSizeBase = if (is_emscripten) stf.point2px(11) else stf.point2px(14);
    //
    // ImPlot/ImPlot3D context
    const imPlotContext = ip.ImPlot_CreateContext();
    defer ip.ImPlot_DestroyContext(imPlotContext);
    const imPlot3dContext = ip3.ImPlot3D_CreateContext();
    defer ip3.ImPlot3D_DestroyContext(imPlot3dContext);

    //utils.LoadTextureFromFile(ImageName, &textureId, &textureWidth, &textureHeight);

    pio = ig.ImGui_GetIO();

    em.emscripten_set_main_loop(loopBody, 0, 1);
}
