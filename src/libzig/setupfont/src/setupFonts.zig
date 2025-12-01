const std = @import("std");
const ig = @import("cimgui");

const MAX_PATH = 2048;
const IconFontPath = "resources/fonticon/fa6/fa-solid-900.ttf";

var sBufFontPath: [MAX_PATH]u8 = undefined;

const WinFontNameTbl = [_][]const u8{
    "meiryo.ttc",    // Windows 7,8
    "YuGothM.ttc",   // Windows 10
    "segoeui.ttf",   // English standard
};

const LinuxFontNameTbl = [_][]const u8{
    "/usr/share/fonts/opentype/ipafont-gothic/ipag.ttf",               // Debian jp
    "/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc",          // JP
    "/usr/share/fonts/opentype/ipafont-gothic/ipam.ttf",               // Debian jp
    "/usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf", // Linux Mint English
    "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf",             // English region standard font
};

/// Check if file exists
fn existsFile(path: []const u8) bool {
    const file = std.fs.cwd().openFile(path, .{}) catch return false;
    file.close();
    return true;
}

/// Get Windows font path
fn getWinFontPath(buf: []u8, fontName: []const u8) ?[]const u8 {
    const windir = std.process.getEnvVarOwned(std.heap.page_allocator, "windir") catch return null;
    defer std.heap.page_allocator.free(windir);

    const result = std.fmt.bufPrint(buf, "{s}\\Fonts\\{s}", .{ windir, fontName }) catch return null;
    return result;
}

/// Convert point to pixel
fn point2px(point: f32) f32 {
    return (point * 96.0) / 72.0;
}

const ICON_MIN_FA: c_int = 0xf000;
const ICON_MAX_FA: c_int = 0xf8ff;

const ranges_icon_fonts = [_]ig.ImWchar{ ICON_MIN_FA, ICON_MAX_FA, 0 };

/// Setup fonts for ImGui
pub fn setupFonts() ?*ig.ImFont {
    const pio = ig.igGetIO_Nil();
    const config = ig.ImFontConfig_ImFontConfig();
    var font: ?*ig.ImFont = null;

    // Try Windows fonts
    for (WinFontNameTbl) |fontName| {
        if (getWinFontPath(&sBufFontPath, fontName)) |fontPath| {
            if (existsFile(fontPath)) {
                font = ig.ImFontAtlas_AddFontFromFileTTF( pio.*.Fonts, fontPath.ptr, point2px(14.5), null, null,);
                std.debug.print("Found FontPath: [{s}]\n", .{fontPath});
                break;
            }
        }
    }

    // If not found, try Linux fonts
    if (font == null) {
        for (LinuxFontNameTbl) |fontPath| {
            if (existsFile(fontPath)) {
                font = ig.ImFontAtlas_AddFontFromFileTTF( pio.*.Fonts, fontPath.ptr, point2px(13.0), null, null,);
                std.debug.print("Found FontPath: [{s}]\n", .{fontPath});
                break;
            }
        }
    }

    // If still not found, use default
    if (font == null) {
        std.debug.print("Error!: Font loading failed\n", .{});
        std.debug.print("Default has been set.\n", .{});
        _ = ig.ImFontAtlas_AddFontDefault(pio.*.Fonts, null);
    }

    // Merge IconFont
    config.*.MergeMode = true;
    return ig.ImFontAtlas_AddFontFromFileTTF( pio.*.Fonts, IconFontPath, point2px(11.0), config, &ranges_icon_fonts,);
}
