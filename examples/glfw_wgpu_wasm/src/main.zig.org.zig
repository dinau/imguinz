const std = @import("std");
const builtin = @import("builtin");
const app = @import("appimgui");
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

pub const std_options_debug_io = if (is_emscripten) std.Io.failing else std.Io.Threaded.global_single_threaded.io();
pub const panic = std.debug.FullPanic(emscriptenPanicBody);

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

var g_window: ?*glfw.GLFWwindow = null;
var g_wr: wgpu.WgpuInitResult = undefined;
var g_width: i32 = 1024;
var g_height: i32 = 900;
var last_css_w: f64 = 0;
var last_css_h: f64 = 0;

var win: app.Window = undefined;
var showLicenseNotices = false;
var pio: *ig.ImGuiIO = undefined;

//------------
// Load image
//------------
const ImageName = "resources/dinosaurs_paradise-480.jpg";
var textureId: glfw.GLuint = undefined;
var textureWidth: c_int = 0;
var textureHeight: c_int = 0;

fn glfwErrorCallback(err: c_int, description: [*c]const u8) callconv(.c) void {
    dbgPrint("GLFW Error {d}: {s}\n", .{ err, description });
}

fn loopBody() callconv(.c) void {
    glfw.glfwPollEvents();

    var width: c_int = 0;
    var height: c_int = 0;
    glfw.glfwGetFramebufferSize(g_window, &width, &height);
    if (width != g_width or height != g_height) {
        g_width = width;
        g_height = height;
        wgpu.AppResizeSurface(g_wr.surface, g_wr.device, g_wr.format, g_width, g_height);
    }

    // Check surface status for error. If texture is not optimal, try to reconfigure the surface.
    var surface_texture: wgpu.WGPUSurfaceTexture = undefined;
    wgpu.wgpuSurfaceGetCurrentTexture(g_wr.surface, &surface_texture);
    if (wgpu.cImGui_ImplWGPU_IsSurfaceStatusError(surface_texture.status)) {
        dbgPrint("Unrecoverable Surface Texture status={x}\n", .{surface_texture.status});
        @panic("Unrecoverable Surface Texture status");
    }
    if (wgpu.cImGui_ImplWGPU_IsSurfaceStatusSubOptimal(surface_texture.status)) {
        if (surface_texture.texture != null) {
            wgpu.wgpuTextureRelease(surface_texture.texture);
        }
        if (g_width > 0 and g_height > 0) {
            wgpu.AppResizeSurface(g_wr.surface, g_wr.device, g_wr.format, g_width, g_height);
        }
        return; // continue に相当(このフレームの描画をスキップして次のコールバックへ)
    }

    // Start the Dear ImGui frame
    wgpu.cImGui_ImplWGPU_NewFrame();
    impl_glfw.cImGui_ImplGlfw_NewFrame();
    ig.ImGui_NewFrame();

    //------------------
    // Start GUI Window
    //------------------
    const mh = 0; //ig.ImGui_GetFrameHeight();

    //--------------------
    // Show Licenses menu
    //--------------------
    if (ig.ImGui_BeginMainMenuBar()) {
        defer ig.ImGui_EndMainMenuBar();
        if (ig.ImGui_BeginMenu("Licenses")) {
            defer ig.ImGui_EndMenu();
            if (ig.ImGui_MenuItem("Show")) {
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
        //const themeSave = win.getTheme();
        //win.setTheme(.light);
        ig.ImGui_StyleColorsLight(null);
        ig.ImGui_SetNextWindowSize(utils.vec2(600, 800), ig.ImGuiCond_FirstUseEver);
        if (is_emscripten) {
            ig.ImGui_PushFontFloat(null, stf.point2px(8.4)); // for WASM
        }
        demos.license_notices(&showLicenseNotices, 0);
        if (is_emscripten) {
            ig.ImGui_PopFont(); // for WASM
        }
        ig.ImGui_StyleColorsDark(null);
        //win.setTheme(themeSave);
    }

    //// Dear ImGui full demo
    ig.ImGui_ShowDemoWindow(null);

    // ImPlot/ImPlot3D full demo
    ip.ImPlot_ShowDemoWindow(null);
    ip3.ImPlot3D_ShowDemoWindow(null);

    //-----------------
    // ImSpinner demo
    //-----------------
    ig.ImGui_SetNextWindowPos(utils.vec2(10, 31 + mh), ig.ImGuiCond_FirstUseEver);
    demos.imspinner(pio);

    ////// Info window
    ////ig.ImGui_SetNextWindowPos(utils.vec2(10, 150 + mh), ig.ImGuiCond_FirstUseEver);
    ////win.showInfoWindow();

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
    //ig.ImGui_SetNextWindowPos(utils.vec2(600, 300 + mh), ig.ImGuiCond_FirstUseEver);
    //{
    //    _ = ig.ImGui_Begin("Image load test", null, 0);
    //    defer ig.ImGui_End();
    //    // Load image
    //    const size = utils.vec2(@floatFromInt(textureWidth), @floatFromInt(textureHeight));
    //    const imageBoxPosTop = ig.ImGui_GetCursorScreenPos(); // # Get absolute pos.

    //    ig.ImGui_Image(ig.ImTextureRef{ ._TexData = null, ._TexID = textureId }, size);
    //    const imageBoxPosEnd = ig.ImGui_GetCursorScreenPos(); // # Get absolute pos.
    //    if (ig.ImGui_IsItemHovered(ig.ImGuiHoveredFlags_DelayNone)) {
    //        utils.zoomGlass(&textureId, textureWidth, imageBoxPosTop, imageBoxPosEnd, false);
    //    }
    //}

    //------------------
    // End GUI Window
    //------------------

    // render
    ig.ImGui_Render();

    var view_desc = std.mem.zeroes(wgpu.WGPUTextureViewDescriptor);
    view_desc.format = g_wr.format;
    view_desc.dimension = wgpu.WGPUTextureViewDimension_2D;
    view_desc.mipLevelCount = wgpu.WGPU_MIP_LEVEL_COUNT_UNDEFINED;
    view_desc.arrayLayerCount = wgpu.WGPU_ARRAY_LAYER_COUNT_UNDEFINED;
    view_desc.aspect = wgpu.WGPUTextureAspect_All;
    const texture_view = wgpu.wgpuTextureCreateView(surface_texture.texture, &view_desc);

    var color_attachments = std.mem.zeroes(wgpu.WGPURenderPassColorAttachment);
    color_attachments.depthSlice = wgpu.WGPU_DEPTH_SLICE_UNDEFINED;
    color_attachments.loadOp = wgpu.WGPULoadOp_Clear;
    color_attachments.storeOp = wgpu.WGPUStoreOp_Store;
    color_attachments.clearValue = .{ .r = 0.45, .g = 0.55, .b = 0.60, .a = 1.0 };
    color_attachments.view = texture_view;

    var render_pass_desc = std.mem.zeroes(wgpu.WGPURenderPassDescriptor);
    render_pass_desc.colorAttachmentCount = 1;
    render_pass_desc.colorAttachments = &color_attachments;

    var enc_desc = std.mem.zeroes(wgpu.WGPUCommandEncoderDescriptor);
    const encoder = wgpu.wgpuDeviceCreateCommandEncoder(g_wr.device, &enc_desc);

    const pass = wgpu.wgpuCommandEncoderBeginRenderPass(encoder, &render_pass_desc);
    wgpu.cImGui_ImplWGPU_RenderDrawData(@ptrCast(ig.ImGui_GetDrawData()), pass);
    wgpu.wgpuRenderPassEncoderEnd(pass);

    var cmd_buffer_desc = std.mem.zeroes(wgpu.WGPUCommandBufferDescriptor);
    const cmd_buffer = wgpu.wgpuCommandEncoderFinish(encoder, &cmd_buffer_desc);
    wgpu.wgpuQueueSubmit(g_wr.queue, 1, &cmd_buffer);

    wgpu.wgpuTextureViewRelease(texture_view);
    wgpu.wgpuRenderPassEncoderRelease(pass);
    wgpu.wgpuCommandEncoderRelease(encoder);
    wgpu.wgpuCommandBufferRelease(cmd_buffer);
}
pub fn main() !void {
    _ = glfw.glfwSetErrorCallback(glfwErrorCallback);
    if (glfw.glfwInit() == 0) {
        dbgPrint("Failed to initialize GLFW\n", .{});
        return error.GlfwInitFailure;
    }
    glfw.glfwWindowHint(glfw.GLFW_CLIENT_API, glfw.GLFW_NO_API);

    const main_scale = impl_glfw.cImGui_ImplGlfw_GetContentScaleForMonitor(@ptrCast(glfw.glfwGetPrimaryMonitor()));
    g_width = @intFromFloat(@as(f32, @floatFromInt(g_width)) * main_scale);
    g_height = @intFromFloat(@as(f32, @floatFromInt(g_height)) * main_scale);

    const window = glfw.glfwCreateWindow(g_width, g_height, "Dear ImGui GLFW+WebGPU example", null, null) orelse {
        dbgPrint("Failed to create GLFW window\n", .{});
        return error.GlfwCreateWindowFailure;
    };
    g_window = window;
    win.handle = window;

    if (!wgpu.AppInitWGPU(@ptrCast(window), g_width, g_height, &g_wr)) {
        dbgPrint("Failed to init WebGPU\n", .{});
        return error.WgpuInitFailure;
    }

    glfw.glfwShowWindow(window);

    _ = ig.ImGui_CreateContext(null);
    pio = ig.ImGui_GetIO();
    pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableKeyboard;
    pio.*.ConfigFlags |= ig.ImGuiConfigFlags_DockingEnable;
    ig.ImGui_StyleColorsDark(null);

    _ = impl_glfw.cImGui_ImplGlfw_InitForOther(@ptrCast(window), true);
    impl_glfw.cImGui_ImplGlfw_InstallEmscriptenCallbacks(@ptrCast(window), "#canvas");

    var init_info = std.mem.zeroes(wgpu.ImGui_ImplWGPU_InitInfo);
    init_info.Device = g_wr.device;
    init_info.NumFramesInFlight = 3;
    init_info.RenderTargetFormat = g_wr.format;
    init_info.DepthStencilFormat = wgpu.WGPUTextureFormat_Undefined;
    init_info.PipelineMultisampleState.count = 1;
    init_info.PipelineMultisampleState.mask = 0xFFFFFFFF;
    _ = wgpu.cImGui_ImplWGPU_Init(&init_info);

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

    em.emscripten_set_main_loop(loopBody, 0, 1);
}
