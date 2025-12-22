const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const allocator = b.allocator;
    const current_dir_abs = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(current_dir_abs);
    const mod_name = std.fs.path.basename(current_dir_abs);

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/filedialog.h"),
        .target = target,
        .optimize = optimize,
    });

    step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    step.addIncludePath(b.path("../../libc/cimgui"));
    step.addIncludePath(b.path("../../libc/CImGuiFileDialog/libs/ImGuiFileDialog"));
    const mod = step.addModule(mod_name);
    mod.addImport(mod_name, mod);
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/CImGuiFileDialog"));
    mod.addIncludePath(b.path("../../libc/CImGuiFileDialog/libs/ImGuiFileDialog"));
    mod.addIncludePath(b.path("../../libc/fonticon"));
    // macro
    //mod.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    // for fileopendialog
    mod.addCMacro("CUSTOM_IMGUIFILEDIALOG_CONFIG", "\"customIconFont.h\"");
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/CImGuiFileDialog/libs/ImGuiFileDialog/ImGuiFileDialog.cpp",
        },
    });
}
