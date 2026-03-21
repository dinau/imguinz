const std = @import("std");
const builtin = @import("builtin");
pub const ig = @import("cimgui");
pub const glfw = @import("glfw");
pub const impl_gl = @import("impl_opengl3");
pub const impl_glfw = @import("impl_glfw");
pub const ifa = @import("fonticon");
pub const img_ld = @import("loadimage");
pub const icon = @import("loadicon");
pub const stf = @import("setupfont");
pub const utils = @import("utils");
const is_devel_api = builtin.zig_version.minor >= 16;
const io = if (is_devel_api) std.Io.Threaded.global_single_threaded.io() else undefined;

//---------------------
// glfw_error_callback
//---------------------
fn glfw_error_callback(err: c_int, description: [*c]const u8) callconv(.c) void {
    std.debug.print("GLFW Error {d}: {s}\n", .{ err, description });
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

//--------------
// Window class
//--------------
pub const Window = struct {
    const Self = @This();
    const IMGUI_HAS_DOCK = false; // Docking feature
    pub const eventLoad = enum {
        low,
        standard,
    };
    eventLoadVar: eventLoad,
    handle: ?*glfw.GLFWwindow,
    showWindowDelay: i32, // TODO: Avoid flickering of window at startup
    ini: TIni,
    clearColor: [4]f32,

    //-------------
    // createImGui
    //-------------

    pub fn createImGui(w: i32, h: i32, title: [*c]const u8) !Window {
        _ = w;
        _ = h;
        var win: Window = undefined;

        //-------------------
        // GLFW initializing
        //-------------------
        _ = glfw.glfwSetErrorCallback(glfw_error_callback);
        if (glfw.glfwInit() == 0) {
            std.debug.print("Failed to initialize GLFW: [main.zig]: \n", .{});
            return error.glfwInitFailure;
        }

        //-------------------------
        // Decide GL+GLSL versions
        //-------------------------
        var glsl_version: [:0]u8 = undefined;
        var glsl_version_buf: [30]u8 = undefined;
        var versions = [_][2]u16{
            [_]u16{ 4, 6 },
            [_]u16{ 4, 5 },
            [_]u16{ 4, 4 },
            [_]u16{ 4, 3 },
            [_]u16{ 4, 2 },
            [_]u16{ 4, 1 },
            [_]u16{ 4, 0 },
            [_]u16{ 3, 3 },
        };
        switch (builtin.target.os.tag) {
            .linux => {
                versions[0][0] = 3;
                versions[0][1] = 3;
            },
            else => {},
        }
        for (versions) |ver| {
            glfw.glfwWindowHint(glfw.GLFW_OPENGL_FORWARD_COMPAT, glfw.GLFW_TRUE);
            glfw.glfwWindowHint(glfw.GLFW_OPENGL_PROFILE, glfw.GLFW_OPENGL_CORE_PROFILE);
            glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MAJOR, ver[0]);
            glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MINOR, ver[1]);
            //
            glfw.glfwWindowHint(glfw.GLFW_RESIZABLE, glfw.GLFW_TRUE); // Resizable window
            glfw.glfwWindowHint(glfw.GLFW_VISIBLE, glfw.GLFW_FALSE); // Needs this if OpenGL is not initialized !.

            //---------------------------------------------
            // Create GLFW window and activate OpenGL libs
            //---------------------------------------------
            if (glfw.glfwCreateWindow(800, 600, title, null, null)) |pointer| {
                win.handle = pointer;
                glsl_version = try std.fmt.bufPrintZ(&glsl_version_buf, "#version {d}", .{ver[0] * 100 + ver[1] * 10});
                std.debug.print("{s} \n", .{glsl_version});
                break;
            } else {
                std.debug.print("Error!: Failed: glfwCrateWindow() \n", .{});
                return error.glfwCreateWindowFailure1;
            }
        } else {
            glfw.glfwTerminate();
            return error.glfwCreateWindowFailure2;
        }

        try loadIni(&win);
        std.debug.print("w = {d}, h = {d} \n", .{ win.ini.window.viewportWidth, win.ini.window.viewportHeight });
        glfw.glfwSetWindowSize(win.handle, win.ini.window.viewportWidth,win.ini.window.viewportHeight);
        win.eventLoadVar = eventLoad.low;
        win.showWindowDelay = 1;
        win.clearColor = [_]f32{ win.ini.window.colBGx, win.ini.window.colBGy, win.ini.window.colBGz, 1.0 };

        glfw.glfwMakeContextCurrent(win.handle);

        //---------------------
        // Load title bar icon
        //---------------------
        const TitleBarIconName = "./resources/z.png";
        //--------------
        // Get exe path  Refered to: https://stackoverflow.com/questions/77718355/how-do-i-build-a-path-relative-to-the-exe-in-zig
        //--------------
        var gpa = std.heap.DebugAllocator(.{}){};
        defer _ = gpa.deinit();
        const allocator = gpa.allocator();

        var sBuf: [std.fs.max_path_bytes]u8 = undefined;
        const exe_path: []u8 = if (is_devel_api) blk: {
            const exe_len = try std.process.executablePath(io, &sBuf);
            break :blk sBuf[0..exe_len];
        } else blk: {
            break :blk try std.fs.selfExePathAlloc(allocator);
        };
        defer {
            if (is_devel_api) {
                // NA
            } else {
                allocator.free(exe_path);
            }
        }

        const option_exe_dir = std.fs.path.dirname(exe_path);
        if (option_exe_dir) |exe_dir| {
            var paths = [_][]const u8{ exe_dir, TitleBarIconName };
            const icon_path = try std.fs.path.join(allocator, &paths);
            defer allocator.free(icon_path);
            // Load icon
            icon.LoadTitleBarIcon(win.handle, icon_path.ptr);
        }

        glfw.glfwSwapInterval(1); // Enable VSync --- Lower CPU load

        glfw.glfwSetWindowPos(win.handle, win.ini.window.startupPosX, win.ini.window.startupPosY);

        // Setup Dear ImGui context
        if (ig.igCreateContext(null) == null) {
            return error.ImGuiCreateContextFailure;
        }

        const pio = ig.igGetIO_Nil();
        pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableKeyboard; // Enable Keyboard Controls
        // pio.*.ConfigFlags |= ig.ImGuiConfigFlags_NavEnableGamepad;    // Enable Gamepad Controls
        // Setup doncking feature --- can't compile well at this moment.
        if (IMGUI_HAS_DOCK) {
            pio.*.ConfigFlags |= ig.ImGuiConfigFlags_DockingEnable; // Enable Docking
            pio.*.ConfigFlags |= ig.ImGuiConfigFlags_ViewportsEnable; // Enable Multi-Viewport / Platform Windows
        }

        //-------------------------------------
        // ImGui GLFW OpenGL backend interface
        //-------------------------------------
        _ = impl_glfw.ImGui_ImplGlfw_InitForOpenGL(@ptrCast(win.handle), true);
        _ = impl_gl.ImGui_ImplOpenGL3_Init(glsl_version.ptr);

        _ = setTheme(@enumFromInt(win.ini.window.theme));

        return win;
    }

    //--------
    // render
    //--------
    pub fn render(win: *Window) void {
        const pio = ig.igGetIO_Nil();
        //-----------
        // Rendering
        //-----------
        ig.igRender();
        glfw.glfwMakeContextCurrent(win.handle);
        glfw.glViewport(0, 0, @intFromFloat(pio.*.DisplaySize.x), @intFromFloat(pio.*.DisplaySize.y));
        glfw.glClearColor(win.ini.window.colBGx, win.ini.window.colBGy, win.ini.window.colBGz, 1.0);
        glfw.glClear(glfw.GL_COLOR_BUFFER_BIT);
        impl_gl.ImGui_ImplOpenGL3_RenderDrawData(@ptrCast(ig.igGetDrawData()));
        // Docking featrue --- N/A
        if (IMGUI_HAS_DOCK) {
            if (0 != (pio.*.ConfigFlags & ig.ImGuiConfigFlags_ViewportsEnable)) {
                const backup_current_window = glfw.glfwGetCurrentContext();
                ig.igUpdatePlatformWindows();
                ig.igRenderPlatformWindowsDefault(null, null);
                glfw.glfwMakeContextCurrent(backup_current_window);
            }
        }
        glfw.glfwSwapBuffers(win.handle);

        if (win.showWindowDelay == 0) {
            glfw.glfwShowWindow(win.handle); // Visible main window here at start up
        }
        if (win.showWindowDelay >= 0) {
            win.showWindowDelay -= 1;
        }
    }

    //-------
    // frame
    //-------
    pub fn frame(win: Window) void {
        // Start the Dear ImGui frame
        _ = win;
        impl_gl.ImGui_ImplOpenGL3_NewFrame();
        impl_glfw.ImGui_ImplGlfw_NewFrame();
        ig.igNewFrame();
    }

    //--------------
    // destroyImGui
    //--------------
    pub fn destroyImGui(win: *Window) void {
        saveIni(win) catch unreachable;
        impl_gl.ImGui_ImplOpenGL3_Shutdown();
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
        ig.igSameLine(0, -1.0);
        ig.igText(glfw.glfwGetVersionString());
        ig.igText(ifa.ICON_FA_COMMENT ++ " OpenGL v");
        ig.igSameLine(0, -1.0);
        ig.igText(glfw.glGetString(glfw.GL_VERSION));
        ig.igText(ifa.ICON_FA_CIRCLE_INFO ++ " Dear ImGui v");
        ig.igSameLine(0, -1.0);
        ig.igText(ig.igGetVersion());
        ig.igText(ifa.ICON_FA_CIRCLE_INFO ++ " Zig v");
        ig.igSameLine(0, -1.0);
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
};

//----------
// setTheme
//----------
pub fn setTheme(themeName: Theme) Theme {
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
   // std.debug.print("loadIni():\n", .{});
    var sBuf: [std.fs.max_path_bytes]u8 = undefined;
    const exe_path: []u8 = if (is_devel_api) blk: {
        const exe_len = try std.process.executablePath(io, &sBuf);
        break :blk sBuf[0..exe_len];
    } else blk: {
        break :blk try std.fs.selfExePathAlloc(std.heap.page_allocator);
    };

    const filename = try changeExtension(exe_path, "ini");

    var data: TIni = undefined;

    const file = if (is_devel_api) blk: {
        break :blk try std.Io.Dir.cwd().openFile(io, filename, .{});
    } else blk: {
        break :blk try std.fs.cwd().openFile(filename, .{});
    };
    defer {
        if (is_devel_api) {
            file.close(io);
        } else {
            file.close();
        }
    }

    //std.debug.print("Read ini: {s}\n", .{filename});

    const file_size = if (is_devel_api)
        try file.length(io)
    else
        try file.getEndPos();

    const allocator = std.heap.page_allocator;
    const buffer = try allocator.alloc(u8, file_size);
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
    //    std.debug.print("*.ini file not found: set \"DefaultIni\" values\n", .{});
    //    const parsed_data = try std.json.parseFromSlice(TIni, allocator, DefaultIni, .{});
    //    defer parsed_data.deinit();
    //    data = parsed_data.value;
    //}

    // Window pos
    win.ini.window.startupPosX = data.window.startupPosX;
    win.ini.window.startupPosY = data.window.startupPosY;
    //std.debug.print("data.window.startupPosX = {d}\n", .{data.window.startupPosX});
    //std.debug.print("data.window.startupPosY = {d}\n", .{data.window.startupPosY});
    if (10 > win.ini.window.startupPosX) {
        win.ini.window.startupPosX = 10;
    }
    if (10 > win.ini.window.startupPosY) {
        win.ini.window.startupPosY = 10;
    }
    if (2048 < win.ini.window.startupPosX) {
        win.ini.window.startupPosX = 10;
    }
    if (2048 < win.ini.window.startupPosY) {
        win.ini.window.startupPosY = 10;
    }

    // Window size
    win.ini.window.viewportWidth = data.window.viewportWidth;
    win.ini.window.viewportHeight = data.window.viewportHeight;
    //std.debug.print("data.window.viewportWidth = {d}\n", .{data.window.viewportWidth});
    //std.debug.print("data.window.viewportHeight = {d}\n", .{data.window.viewportHeight});
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

//---------
// saveIni
//---------
pub fn saveIni(win: *Window) !void {
    //std.debug.print("saveIni():\n", .{});
    // Window pos
    glfw.glfwGetWindowPos(win.handle, &win.ini.window.startupPosX, &win.ini.window.startupPosY);

    // Window size
    const ws = ig.igGetMainViewport().*.WorkSize;
    win.ini.window.viewportWidth = @intFromFloat(ws.x);
    win.ini.window.viewportHeight = @intFromFloat(ws.y);
    //std.debug.print("win.ini.window.viewportWidth = {d}\n", .{win.ini.window.viewportWidth});
    //std.debug.print("win.ini.window.viewportHeight = {d}\n", .{win.ini.window.viewportHeight});

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
    std.debug.print("Write ini: {s}\n", .{filename});

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
export fn createImGui_c(w: i32, h: i32, title: [*c]const u8) ?*Window {
    const allocator = std.heap.c_allocator;
    const win_ptr = allocator.create(Window) catch return null;
    win_ptr.* = Window.createImGui(w, h, title) catch {
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
    const result = setTheme(theme_enum);
    return @intFromEnum(result);
}
