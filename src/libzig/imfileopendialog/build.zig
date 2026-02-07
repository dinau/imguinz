const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "imfileopendialog";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_imfileopendialog.zig"),
            .target = target,
            .optimize = optimize,
        });
    } else { // Generate original_temp_zig in zig-out
        const step = b.addTranslateC(.{
            .root_source_file = b.path("src/impl_imfileopendialog.h"),
            .target = target,
            .optimize = optimize,
        });

        step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
        step.addIncludePath(b.path("../../libc/cimgui"));
        step.addIncludePath(b.path("../../libc/CImGuiFileDialog/libs/ImGuiFileDialog"));
        mod = step.addModule(mod_name);
    }
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

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
