const std = @import("std");
const builtin = @import("builtin");
const ig = @import("cimgui");
const ifa = @import("fonticon");
const is_devel_api = builtin.zig_version.minor >= 16;
const io = if (is_devel_api) std.Io.Threaded.global_single_threaded.io() else undefined;

const MAX_PATH = 2048;
const IconFontPath = "resources/fonticon/fa6/fa-solid-900.ttf";

var sBufFontPath: [MAX_PATH]u8 = undefined;

const WinFontNameTbl = [_][]const u8{
    "meiryo.ttc", // Windows 7,8
    "YuGothM.ttc", // Windows 10
    "segoeui.ttf", // English standard
};

const LinuxFontNameTbl = [_][]const u8{
    "/usr/share/fonts/opentype/ipafont-gothic/ipag.ttf", // Debian jp
    "/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc", // JP
    "/usr/share/fonts/opentype/ipafont-gothic/ipam.ttf", // Debian jp
    "/usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf", // Linux Mint English
    "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf", // English region standard font
};

// Windows API declarations for file existence check
const INVALID_FILE_ATTRIBUTES: u32 = 0xFFFFFFFF;
extern "kernel32" fn GetFileAttributesA(lpFileName: [*:0]const u8) callconv(.c) u32;

/// Check if file exists
fn existsFile(path: []const u8) bool {
    if (is_devel_api) {
        // Zig 0.16.0-dev: Use Windows API on Windows, simple access check elsewhere
        if (builtin.os.tag == .windows) {
            var path_buf: [std.fs.max_path_bytes:0]u8 = undefined;
            if (path.len >= path_buf.len) return false;
            @memcpy(path_buf[0..path.len], path);
            path_buf[path.len] = 0;

            const attrs = GetFileAttributesA(&path_buf);
            return attrs != INVALID_FILE_ATTRIBUTES;
        } else {
            // For non-Windows platforms, use access syscall
            var path_buf: [std.fs.max_path_bytes:0]u8 = undefined;
            if (path.len >= path_buf.len) return false;
            @memcpy(path_buf[0..path.len], path);
            path_buf[path.len] = 0;

            const result = std.c.access(&path_buf, std.c.F_OK);
            return result == 0;
        }
    } else {
        // Zig 0.15.2: Use std.fs.cwd()
        const cwd_dir = std.fs.cwd();
        const file = cwd_dir.openFile(path, .{}) catch return false;
        defer file.close();
    return true;
}
}

/// Get Windows font path
fn getWinFontPath(buf: []u8, font_name: []const u8) ?[]const u8 {
    const win_dir = if (is_devel_api) blk: {
        // Zig 0.16.0-dev: Use std.c.getenv
        const c_str = std.c.getenv("windir") orelse return null;
        break :blk std.mem.span(c_str);
    } else blk: {
        // Zig 0.15.2: Use std.process.getEnvVarOwned
        const wd = std.process.getEnvVarOwned(
            std.heap.page_allocator,
            "windir",
        ) catch return null;
        defer std.heap.page_allocator.free(wd);

        // Copy result to buffer
        const result = std.fmt.bufPrint(
            buf,
            "{s}\\Fonts\\{s}",
            .{ wd, font_name },
        ) catch return null;

        break :blk result;
    };

    // For Zig 0.16.0-dev, create the result here
    if (is_devel_api) {
        const result = std.fmt.bufPrint(
            buf,
            "{s}\\Fonts\\{s}",
            .{ win_dir, font_name },
        ) catch return null;

    return result;
    } else {
        // For Zig 0.15.2, result is already created
        return win_dir;
    }
}

/// Convert point to pixel
fn point2px(point: f32) f32 {
    return (point * 96.0) / 72.0;
}

var config: *ig.ImFontConfig = undefined;

/// Setup fonts for ImGui
pub export fn setupFonts() ?*ig.ImFont {
    const pio = ig.igGetIO_Nil();
    var font: ?*ig.ImFont = null;
    config = ig.ImFontConfig_ImFontConfig() orelse return null;
    // Try Windows fonts
    for (WinFontNameTbl) |fontName| {
        if (getWinFontPath(&sBufFontPath, fontName)) |fontPath| {
            if (existsFile(fontPath)) {
                font = ig.ImFontAtlas_AddFontFromFileTTF(
                    pio.*.Fonts,
                    fontPath.ptr,
                    point2px(14.5),
                    config,
                    null,
                );
                std.debug.print("\n==== Found FontPath: [{s}]\n", .{fontPath});
                break;
            }
        }
    }

    // If not found, try Linux fonts
    if (font == null) {
        for (LinuxFontNameTbl) |fontPath| {
            if (existsFile(fontPath)) {
                font = ig.ImFontAtlas_AddFontFromFileTTF(
                    pio.*.Fonts,
                    fontPath.ptr,
                    point2px(13.0),
                    config,
                    null,
                );
                std.debug.print("\n==== Found FontPath: [{s}]\n", .{fontPath});
                break;
            }
        }
    }

    // If still not found, use default
    if (font == null) {
        std.debug.print("\n==== Error!: Font loading failed\n", .{});
        std.debug.print("\n==== Default has been set.\n", .{});
        _ = ig.ImFontAtlas_AddFontDefault(pio.*.Fonts, config);
    }

    // Merge IconFont
    config.*.MergeMode = true;
    return ig.ImFontAtlas_AddFontFromFileTTF(
        pio.*.Fonts,
        IconFontPath,
        point2px(11.0),
        config,
        null,
    );
}
