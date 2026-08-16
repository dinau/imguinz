const std = @import("std");
const builtin = @import("builtin");
pub const ig = @import("cimgui");
pub const glfw = @import("glfw");
pub const impl_gl = @import("impl_opengl3");
pub const impl_glfw = @import("impl_glfw");
pub const ifa = @import("fonticon");
pub const wgpu = @import("impl_wgpu");
//pub const img_ld = @import("loadimage");
//pub const icon = @import("loadicon");
pub const stf = @import("setupfont");
pub const utils = @import("utils");

const is_devel_api = builtin.zig_version.minor >= 16 and builtin.target.os.tag != .emscripten;
const io = if (is_devel_api) std.Io.Threaded.global_single_threaded.io() else undefined;

extern "c" fn write(fd: c_int, buf: [*]const u8, count: usize) isize;

pub fn dbgPrint(comptime fmt: []const u8, args: anytype) void {
    if (builtin.target.os.tag == .emscripten) {
        var buf: [512]u8 = undefined;
        const msg = std.fmt.bufPrint(&buf, fmt, args) catch return;
        var written: usize = 0;
        while (written < msg.len) {
            const n = write(2, msg.ptr + written, msg.len - written);
            if (n <= 0) break;
            written += @intCast(n);
        }
    } else {
        std.debug.print(fmt, args);
    }
}

//---------------------
// glfw_error_callback
//---------------------
fn glfw_error_callback(err: c_int, description: [*c]const u8) callconv(.c) void {
    dbgPrint("GLFW Error {d}: {s}\n", .{ err, description });
}

pub const Theme = enum {
    light,
    dark,
    classic,
    microsoft,
};

const TImage = struct {
    imageSaveFormatIndex: i32,
};

const TWindow = struct {
    startupPosX: i32,
    startupPosY: i32,
    viewportWidth: i32,
    viewportHeight: i32,
    colBGx: f32,
    colBGy: f32,
    colBGz: f32,
    theme: i32,
};

pub const TIni = struct {
    window: TWindow,
    image: TImage,
};

/// Main window options
pub const Opts = struct {
    /// Docking feature
    docking: bool = true,
    viewport: bool = false,
    /// Title bar Icon name of Main window
    title_bar_icon_name: []const u8 = "./resources/z.png",
};

//--------------
// Window class
//--------------
pub const Window = struct {
    const Self = @This();
    pub const eventLoad = enum {
        low,
        standard,
    };
    eventLoadVar: eventLoad,
    handle: ?*glfw.GLFWwindow,
    showWindowDelay: i32, // TODO: Avoid flickering of window at startup
    ini: TIni,
    clearColor: [4]f32 ,
    opts: Opts = .{.docking = true},

    g_wr: wgpu.WgpuInitResult = undefined,
    g_width: c_int = 1024,
    g_height: c_int = 900,
    last_css_w: f64 = 0,
    last_css_h: f64 = 0,
    surface_texture: wgpu.WGPUSurfaceTexture = undefined,

    //-------------
    // createImGui
    //-------------
    pub fn createImGui(width: i32, height: i32, title: [*c]const u8, opts: Opts) !Window {
        _ = title;
        var win: Self = undefined;
        win.opts = opts;

        //-------------------
        // GLFW initializing
        //-------------------
        _ = glfw.glfwSetErrorCallback(glfw_error_callback);
        if (glfw.glfwInit() == 0) {
            dbgPrint("Failed to initialize GLFW\n", .{});
            return error.GlfwInitFailure;
        }
        glfw.glfwWindowHint(glfw.GLFW_CLIENT_API, glfw.GLFW_NO_API);

        const main_scale = impl_glfw.ImGui_ImplGlfw_GetContentScaleForMonitor(@ptrCast(glfw.glfwGetPrimaryMonitor()));
        win.g_width = @intFromFloat(@as(f32, @floatFromInt(width)) * main_scale);
        win.g_height = @intFromFloat(@as(f32, @floatFromInt(height)) * main_scale);

        const window = glfw.glfwCreateWindow(win.g_width, win.g_height, "Dear ImGui GLFW+WebGPU example", null, null) orelse {
            dbgPrint("Failed to create GLFW window\n", .{});
            return error.GlfwCreateWindowFailure;
        };

        if (!wgpu.AppInitWGPU(@ptrCast(window), win.g_width, win.g_height, &win.g_wr)) {
            dbgPrint("Failed to init WebGPU\n", .{});
            return error.WgpuInitFailure;
        }

        glfw.glfwShowWindow(window);

        win.handle = window;

        ///////////////
        if (builtin.target.os.tag != .emscripten) {
            try loadIni(&win);
        } else {
            win.ini = .{
                .window = .{
                    .startupPosX = 100,
                    .startupPosY = 100,
                    .viewportWidth = width,
                    .viewportHeight = height,
                    .colBGx = 0.45,
                    .colBGy = 0.55,
                    .colBGz = 0.60,
                    .theme = 1, // dark
                },
                .image = .{
                    .imageSaveFormatIndex = 0,
                },
            };
        }
        dbgPrint("w = {d}, h = {d} \n", .{ win.ini.window.viewportWidth, win.ini.window.viewportHeight });
        //glfw.glfwSetWindowSize(win.handle, win.ini.window.viewportWidth, win.ini.window.viewportHeight);
        win.eventLoadVar = eventLoad.low;
        win.showWindowDelay = 1;
        win.clearColor = [_]f32{ win.ini.window.colBGx, win.ini.window.colBGy, win.ini.window.colBGz, 1.0 };

        //---------------------
        // Load title bar icon
        //---------------------
        //if (builtin.target.os.tag != .emscripten) {
        //    if (utils.existsFile(opts.title_bar_icon_name.ptr)) {
        //        //--------------
        //        // Get exe path  Refered to: https://stackoverflow.com/questions/77718355/how-do-i-build-a-path-relative-to-the-exe-in-zig
        //        //--------------
        //        // For zig-0.16.0-dev.2905 (2026/03/13)
        //        var gpa = std.heap.DebugAllocator(.{}){};
        //        defer _ = gpa.deinit();
        //        const allocator = gpa.allocator();

        //        var sBuf: [std.fs.max_path_bytes]u8 = undefined;
        //        const exe_path: []u8 = if (is_devel_api) blk: {
        //            const exe_len = try std.process.executablePath(io, &sBuf);
        //            break :blk sBuf[0..exe_len];
        //        } else blk: {
        //            break :blk try std.fs.selfExePathAlloc(allocator);
        //        };
        //        defer {
        //            if (is_devel_api) {
        //                // NA
        //            } else {
        //                allocator.free(exe_path);
        //            }
        //        }

        //        const option_exe_dir = std.fs.path.dirname(exe_path);
        //        if (option_exe_dir) |exe_dir| {
        //            var paths = [_][]const u8{ exe_dir, opts.title_bar_icon_name };
        //            const icon_path = try std.fs.path.join(allocator, &paths);
        //            defer allocator.free(icon_path);
        //            // Load icon
        //            icon.LoadTitleBarIcon(win.handle, icon_path.ptr);
        //        }
        //    }
        //}

        //glfw.glfwSwapInterval(1); // Enable VSync --- Lower CPU load
        //glfw.glfwSetWindowPos(win.handle, win.ini.window.startupPosX, win.ini.window.startupPosY);

        glfw.glfwShowWindow(window);

        // Setup Dear ImGui context
        if (ig.igCreateContext(null) == null) {
            return error.ImGuiCreateContextFailure;
        }

        const pio = ig.igGetIO_Nil();
        pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableKeyboard; // Enable Keyboard Controls
        // pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableGamepad;    // Enable Gamepad Controls
        // Setup doncking feature --- can't compile well at this moment.
        if (win.opts.docking) {
            pio.*.ConfigFlags |= ig.ImGuiConfigFlags_DockingEnable; // Enable Docking
            pio.*.ConfigFlags |= ig.ImGuiConfigFlags_ViewportsEnable; // Enable Multi-Viewport / Platform Windows
        }

        win.setTheme(@enumFromInt(win.ini.window.theme));

        //-------------------------------------
        // ImGui GLFW backend interface
        //-------------------------------------
        _ = impl_glfw.ImGui_ImplGlfw_InitForOther(@ptrCast(window), true);
        impl_glfw.ImGui_ImplGlfw_InstallEmscriptenCallbacks(@ptrCast(window), "#canvas");

        var init_info = std.mem.zeroes(wgpu.ImGui_ImplWGPU_InitInfo);
        init_info.Device = win.g_wr.device;
        init_info.NumFramesInFlight = 3;
        init_info.RenderTargetFormat = win.g_wr.format;
        init_info.DepthStencilFormat = wgpu.WGPUTextureFormat_Undefined;
        init_info.PipelineMultisampleState.count = 1;
        init_info.PipelineMultisampleState.mask = 0xFFFFFFFF;
        _ = wgpu.ImGui_ImplWGPU_Init(&init_info);

        return win;
    }
    pub fn getWgpuInitResult(win: *Window) wgpu.WgpuInitResult{
               return win.g_wr;
    }
    pub fn getWindowSize(win: *Window) ig.ImVec2 {
          return .{.x = @floatFromInt(win.g_width), .y = @floatFromInt(win.g_height)};
    }

    pub fn wgpu_isSurfaceStatusSubOptimal(win: *Window) bool{
        var res = false;
        var width: c_int = 0;
        var height: c_int = 0;
        glfw.glfwGetFramebufferSize(win.handle, &width, &height);
        const sz = win.getWindowSize();
        var g_width: c_int = @intFromFloat(sz.x);
        var g_height: c_int = @intFromFloat(sz.y);
        const res_wgpu = win.getWgpuInitResult();
        if (width != g_width or height != g_height) {
            g_width = width;
            g_height = height;
            wgpu.AppResizeSurface(res_wgpu.surface, res_wgpu.device, res_wgpu.format, g_width, g_height);
        }

        // Check surface status for error. If texture is not optimal, try to reconfigure the surface.
        wgpu.wgpuSurfaceGetCurrentTexture(res_wgpu.surface, &win.surface_texture);
        if (wgpu.cImGui_ImplWGPU_IsSurfaceStatusError(win.surface_texture.status)) {
            dbgPrint("Unrecoverable Surface Texture status={x}\n", .{win.surface_texture.status});
            @panic("Unrecoverable Surface Texture status");
        }
        if (wgpu.cImGui_ImplWGPU_IsSurfaceStatusSubOptimal(win.surface_texture.status)) {
            if (win.surface_texture.texture != null) {
                wgpu.wgpuTextureRelease(win.surface_texture.texture);
            }
            if (g_height > 0) {
                wgpu.AppResizeSurface(res_wgpu.surface, res_wgpu.device, res_wgpu.format,g_width, g_height);
            }
            res = true;
            return res ;
        }
        return res;
    }

    //--------
    // render
    //--------
    pub fn render(win: *Window) void {
        //-----------
        // Rendering
        //-----------
        ig.igRender();
        ig.igRender();

        var view_desc = std.mem.zeroes(wgpu.WGPUTextureViewDescriptor);
        view_desc.format = win.g_wr.format;
        view_desc.dimension = wgpu.WGPUTextureViewDimension_2D;
        view_desc.mipLevelCount = wgpu.WGPU_MIP_LEVEL_COUNT_UNDEFINED;
        view_desc.arrayLayerCount = wgpu.WGPU_ARRAY_LAYER_COUNT_UNDEFINED;
        view_desc.aspect = wgpu.WGPUTextureAspect_All;
        const texture_view = wgpu.wgpuTextureCreateView(win.surface_texture.texture, &view_desc);

        var color_attachments = std.mem.zeroes(wgpu.WGPURenderPassColorAttachment);
        color_attachments.depthSlice = wgpu.WGPU_DEPTH_SLICE_UNDEFINED;
        color_attachments.loadOp = wgpu.WGPULoadOp_Clear;
        color_attachments.storeOp = wgpu.WGPUStoreOp_Store;
        color_attachments.clearValue = .{ .r = win.clearColor[0], .g = win.clearColor[1], .b = win.clearColor[2], .a = 1.0 };
        color_attachments.view = texture_view;

        var render_pass_desc = std.mem.zeroes(wgpu.WGPURenderPassDescriptor);
        render_pass_desc.colorAttachmentCount = 1;
        render_pass_desc.colorAttachments = &color_attachments;

        var enc_desc = std.mem.zeroes(wgpu.WGPUCommandEncoderDescriptor);
        const encoder = wgpu.wgpuDeviceCreateCommandEncoder(win.g_wr.device, &enc_desc);

        const pass = wgpu.wgpuCommandEncoderBeginRenderPass(encoder, &render_pass_desc);
        wgpu.ImGui_ImplWGPU_RenderDrawData(@ptrCast(ig.igGetDrawData()), pass);
        wgpu.wgpuRenderPassEncoderEnd(pass);

        var cmd_buffer_desc = std.mem.zeroes(wgpu.WGPUCommandBufferDescriptor);
        const cmd_buffer = wgpu.wgpuCommandEncoderFinish(encoder, &cmd_buffer_desc);
        wgpu.wgpuQueueSubmit(win.g_wr.queue, 1, &cmd_buffer);

        wgpu.wgpuTextureViewRelease(texture_view);
        wgpu.wgpuRenderPassEncoderRelease(pass);
        wgpu.wgpuCommandEncoderRelease(encoder);
        wgpu.wgpuCommandBufferRelease(cmd_buffer);


        if (win.showWindowDelay >= 0) {
            win.showWindowDelay -= 1;
        }
        if (win.showWindowDelay == 0) {
            glfw.glfwShowWindow(win.handle);
        } // Visible main window here at start up
    }

    //-------
    // frame
    //-------
    pub fn frame(win: Window) void {
        // Start the Dear ImGui frame
        _ = win;
        wgpu.ImGui_ImplWGPU_NewFrame();
        impl_glfw.ImGui_ImplGlfw_NewFrame();
        ig.igNewFrame();
    }

    //--------------
    // destroyImGui
    //--------------
    pub fn destroyImGui(win: *Window) void {
        if (builtin.target.os.tag != .emscripten) {
            saveIni(win) catch unreachable;
        }
        impl_glfw.ImGui_ImplGlfw_Shutdown();
        ig.igDestroyContext(null);
        glfw.glfwDestroyWindow(win.handle);
        glfw.glfwTerminate();
    }

    //-------------
    // isIconified
    //-------------
    pub fn isIconified(win: *Window) bool {
        if (0 != glfw.glfwGetWindowAttrib(win.handle, glfw.GLFW_ICONIFIED)) {
            impl_glfw.ImGui_ImplGlfw_Sleep(10);
            return true;
        } else {
            return false;
        }
    }

    //-------------
    // shouldClose
    //-------------
    pub fn shouldClose(win: *Window) bool {
        return glfw.glfwWindowShouldClose(win.handle) != 0;
    }

    //------------
    // pollEvents
    //------------
    pub fn pollEvents(win: Window) void {
        switch (win.eventLoadVar) {
            // https://www.glfw.org/docs/3.3/group__window.html#ga605a178db92f1a7f1a925563ef3ea2cf
            Window.eventLoad.low => {
                glfw.glfwWaitEventsTimeout(1.0 / 60.0);
            },
            // https://www.glfw.org/docs/3.3/group__window.html#ga37bd57223967b4211d60ca1a0bf3c832
            Window.eventLoad.standard => {
                glfw.glfwPollEvents();
            }, // Depends on glfw.glfwSwapInterval(1); // Enable VSync --- Lower CPU load
        }
    }
    pub fn eventLoadLow(win: *Window) void {
        win.eventLoadVar = Window.eventLoad.low;
    }
    pub fn eventLoadStandard(win: *Window) void {
        win.eventLoadVar = Window.eventLoad.standard;
    }

    //------------------
    // Show info window
    //------------------
    pub fn showInfoWindow(win: *Window) void {
        const st = struct {
            var fval: f32 = 0;
        };
        const pio = ig.igGetIO_Nil();
        _ = ig.igBegin("Info window", null, 0);
        defer ig.igEnd();
        ig.igText(ifa.ICON_FA_COMMENT ++ " GLFW v");
        ig.igSameLine(0.0,-0.1);
        ig.igText(glfw.glfwGetVersionString());
        ig.igText(ifa.ICON_FA_COMMENT ++ " OpenGL v");
        ig.igSameLine(0.0,-0.1);
        //ig.igText(glfw.glGetString(glfw.GL_VERSION));
        ig.igText(ifa.ICON_FA_CIRCLE_INFO ++ " Dear ImGui v");
        ig.igSameLine(0.0,-0.1);
        ig.igText(ig.igGetVersion());
        ig.igText(ifa.ICON_FA_CIRCLE_INFO ++ " Zig v");
        ig.igSameLine(0.0,-0.1);
        ig.igText(builtin.zig_version_string);
        _ = ig.igSliderFloat("Float", &st.fval, 0.0, 1.0, "%.3f", 0);
        win.clearColor[0] = win.ini.window.colBGx;
        win.clearColor[1] = win.ini.window.colBGy;
        win.clearColor[2] = win.ini.window.colBGz;
        _ = ig.igColorEdit3("Clear color", &win.clearColor, 0);
        win.ini.window.colBGx = win.clearColor[0];
        win.ini.window.colBGy = win.clearColor[1];
        win.ini.window.colBGz = win.clearColor[2];

        ig.igText("Application average %.3f ms/frame (%.1f FPS)", 1000.0 / pio.*.Framerate, pio.*.Framerate);
    }

    pub fn setTheme(win: *Window, themeName: Theme) void {
       win.ini.window.theme = @intFromEnum(setThemePub(themeName));
    }
    pub fn getTheme(win: *Window) Theme {
        return @enumFromInt(win.ini.window.theme);
    }
};

//----------
// setTheme
//----------
pub fn setThemePub(themeName: Theme) Theme {
    switch (themeName) {
        Theme.light => ig.igStyleColorsLight(null),
        Theme.dark => ig.igStyleColorsDark(null),
        Theme.classic => ig.igStyleColorsClassic(null),
        Theme.microsoft => ig.igStyleColorsLight(null), //themeMicrosoft(),
    }
    return themeName;
}

const DefaultIni =
    \\{
    \\  "window":{
    \\    "startupPosX":400,
    \\    "startupPosY":80,
    \\    "viewportWidth":1024,
    \\    "viewportHeight":900,
    \\    "colBGx": 0.25,
    \\    "colBGy": 0.65,
    \\    "colBGz": 0.85,
    \\    "theme": 1
    \\  },
    \\  "image":{
    \\    "imageSaveFormatIndex": 0
    \\  }
    \\}
;

//-----------------
// changeExtension
//-----------------
fn changeExtension(filename: []const u8, new_ext: []const u8) ![]const u8 {
    const allocator = std.heap.page_allocator;
    const last_dot = std.mem.lastIndexOfScalar(u8, filename, '.');

    var result: []const u8 = undefined;
    if (last_dot) |dot| {
        result = try std.fmt.allocPrint(allocator, "{s}{s}{s}", .{
            filename[0..dot],
            ".",
            new_ext,
        });
    } else {
        result = try std.fmt.allocPrint(allocator, "{s}.{s}", .{ filename, new_ext });
    }
    return result;
}

//---------
// loadIni
//---------
pub fn loadIni(win: *Window) !void {
    dbgPrint("loadIni():\n", .{});

    var sBuf: [std.fs.max_path_bytes]u8 = undefined;
    const exe_path: []u8 = if (is_devel_api) blk: {
        const exe_len = try std.process.executablePath(io, &sBuf);
        break :blk sBuf[0..exe_len];
    } else blk: {
        break :blk try std.fs.selfExePathAlloc(std.heap.page_allocator);
    };

    const iniFilename = try changeExtension(exe_path, "ini");
    if (!utils.existsFile(iniFilename.ptr)) {
        dbgPrint("Error!: File not found: {s}\n", .{iniFilename});
        dbgPrint("Do set default *.ini values\n", .{});

        // Window pos
        win.ini.window.startupPosX = 50;
        win.ini.window.startupPosY = 50;
        // Window size
        win.ini.window.viewportWidth = 800;
        win.ini.window.viewportHeight = 600;
        // Background color
        win.ini.window.colBGx = 0.05;
        win.ini.window.colBGy = 0.45;
        win.ini.window.colBGz = 0.65;
        // Theme
        win.ini.window.theme = @intFromEnum(Theme.classic);
        // Image index
        win.ini.image.imageSaveFormatIndex = 1;
    } else {
        var data: TIni = undefined;

        const file = if (is_devel_api) blk: {
            break :blk try std.Io.Dir.cwd().openFile(io, iniFilename, .{});
        } else blk: {
            break :blk try std.fs.cwd().openFile(iniFilename, .{});
        };
        defer {
            if (is_devel_api) {
                file.close(io);
            } else {
                file.close();
            }
        }

        //dbgPrint("Read ini: {s}\n", .{iniFilename});

        const file_size = if (is_devel_api)
            try file.length(io)
        else
            try file.getEndPos();

        const allocator = std.heap.page_allocator;
        const buffer = try allocator.alloc(u8, @intCast(file_size));
        defer allocator.free(buffer);
        if (is_devel_api) {
            _ = try file.readStreaming(io, &.{buffer});
        } else {
            _ = try file.read(buffer);
        }

        const parsed_data = try std.json.parseFromSlice(TIni, allocator, buffer, .{});
        defer parsed_data.deinit();
        data = parsed_data.value;
        //} else |_| {
        //    dbgPrint("*.ini file not found: set \"DefaultIni\" values\n", .{});
        //    const parsed_data = try std.json.parseFromSlice(TIni, allocator, DefaultIni, .{});
        //    defer parsed_data.deinit();
        //    data = parsed_data.value;
        //}

        // Window pos
        win.ini.window.startupPosX = data.window.startupPosX;
        win.ini.window.startupPosY = data.window.startupPosY;
        //dbgPrint("data.window.startupPosX = {d}\n", .{data.window.startupPosX});
        //dbgPrint("data.window.startupPosY = {d}\n", .{data.window.startupPosY});
        if (10 > win.ini.window.startupPosX) {
            win.ini.window.startupPosX = 50;
        }
        if (10 > win.ini.window.startupPosY) {
            win.ini.window.startupPosY = 50;
        }
        if (2048 < win.ini.window.startupPosX) {
            win.ini.window.startupPosX = 50;
        }
        if (2048 < win.ini.window.startupPosY) {
            win.ini.window.startupPosY = 50;
        }

        // Window size
        win.ini.window.viewportWidth = data.window.viewportWidth;
        win.ini.window.viewportHeight = data.window.viewportHeight;
        //dbgPrint("data.window.viewportWidth = {d}\n", .{data.window.viewportWidth});
        //dbgPrint("data.window.viewportHeight = {d}\n", .{data.window.viewportHeight});
        if (win.ini.window.viewportWidth < 100) {
            win.ini.window.viewportWidth = 100;
        }
        if (win.ini.window.viewportHeight < 100) {
            win.ini.window.viewportHeight = 100;
        }
        if (win.ini.window.viewportWidth > 2048) {
            win.ini.window.viewportWidth = 2048;
        }
        if (win.ini.window.viewportHeight > 2048) {
            win.ini.window.viewportHeight = 2048;
        }

        // Background color
        win.ini.window.colBGx = data.window.colBGx;
        win.ini.window.colBGy = data.window.colBGy;
        win.ini.window.colBGz = data.window.colBGz;

        // Theme
        win.ini.window.theme = data.window.theme;

        // Image index
        win.ini.image.imageSaveFormatIndex = 1;
    }
}

//---------
// saveIni
//---------
pub fn saveIni(win: *Window) !void {
    dbgPrint("saveIni():\n", .{});
    // Window pos
    glfw.glfwGetWindowPos(win.handle, &win.ini.window.startupPosX, &win.ini.window.startupPosY);

    // Window size
    const ws = ig.igGetMainViewport().*.WorkSize;
    win.ini.window.viewportWidth = @intFromFloat(ws.x);
    win.ini.window.viewportHeight = @intFromFloat(ws.y);
    //dbgPrint("win.ini.window.viewportWidth = {d}\n", .{win.ini.window.viewportWidth});
    //dbgPrint("win.ini.window.viewportHeight = {d}\n", .{win.ini.window.viewportHeight});

    // Save to ini file
    const allocator = std.heap.page_allocator;
    var exe_path: []u8 = undefined;
    var exe_buf: [std.fs.max_path_bytes]u8 = undefined;
    if (@hasDecl(std.process, "executablePath")) {
        const exe_len = try std.process.executablePath(io, &exe_buf);
        exe_path = exe_buf[0..exe_len];
    } else if (@hasDecl(std.fs, "selfExePathAlloc")) {
        exe_path = try std.fs.selfExePathAlloc(allocator);
    }

    const filename = try changeExtension(exe_path, "ini");
    dbgPrint("Write ini: {s}\n", .{filename});

    const file = if (is_devel_api) blk: {
        break :blk try std.Io.Dir.cwd().createFile(io, filename, .{});
    } else blk: {
        break :blk try std.fs.cwd().createFile(filename, .{});
    };
    defer if (is_devel_api) file.close(io) else file.close();

    var buffer: [4096]u8 = undefined;

    var writer = if (is_devel_api)
        std.Io.Writer.fixed(&buffer)
    else
        std.io.Writer.fixed(&buffer);

    var jw: std.json.Stringify = .{
        .writer = &writer,
        .options = .{ .whitespace = .indent_2 },
    };
    try jw.write(win.ini);
    if (is_devel_api) {
        try file.writeStreamingAll(io, writer.buffered());
    } else {
        try file.writeAll(writer.buffered());
    }
}

//==============================================
// C Export Functions
//==============================================
pub const COpts = extern struct {
    /// Docking feature
    docking: bool,
    viewport: bool,
    title_bar_icon_name: [*c]const u8,
};

export fn createImGui_c(width: i32, height: i32, title: [*c]const u8, copts: *COpts ) ?*Window {
    const allocator = std.heap.c_allocator;
    const win_ptr = allocator.create(Window) catch return null;
    const opts: Opts = .{
        .docking = copts.docking,
        .viewport= copts.viewport,
        .title_bar_icon_name = std.mem.span(copts.title_bar_icon_name),
    };
    win_ptr.* = Window.createImGui(width, height, title, opts) catch {
        allocator.destroy(win_ptr);
        return null;
    };
    return win_ptr;
}

export fn destroyImGui_c(win: ?*Window) void {
    if (win) |w| {
        w.destroyImGui();
        std.heap.c_allocator.destroy(w);
    }
}

export fn render_c(win: ?*Window) void {
    if (win) |w| {
        w.render();
    }
}

export fn frame_c(win: ?*Window) void {
    if (win) |w| {
        w.frame();
    }
}

export fn shouldClose_c(win: ?*Window) bool {
    if (win) |w| {
        return w.shouldClose();
    }
    return true;
}

export fn pollEvents_c(win: ?*Window) void {
    if (win) |w| {
        w.pollEvents();
    }
}

export fn isIconified_c(win: ?*Window) bool {
    if (win) |w| {
        return w.isIconified();
    }
    return false;
}

export fn showInfoWindow_c(win: ?*Window) void {
    if (win) |w| {
        w.showInfoWindow();
    }
}

export fn setTheme_c(theme: i32) i32 {
    const theme_enum: Theme = @enumFromInt(theme);
    const result = setThemePub(theme_enum);
    return @intFromEnum(result);
}
