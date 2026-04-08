const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "imtoggle";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_imtoggle.zig"),
            .target = target,
            .optimize = optimize,
        });
    } else {
        const step = b.addTranslateC(.{
            .root_source_file = b.path("src/impl_imtoggle.h"),
            .target = target,
            .optimize = optimize,
        });
        step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
        step.addIncludePath(b.path("../../libc/cimgui"));
        step.addIncludePath(b.path("../../libc/cimgui_toggle"));
        step.addIncludePath(b.path("../../libc/cimgui_toggle/imgui_toggle"));

        mod = step.addModule(mod_name);
    }
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/cimgui_toggle/imgui_toggle"));
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimgui_toggle/imgui_toggle/imgui_toggle.cpp",
            "../../libc/cimgui_toggle/imgui_toggle/imgui_toggle_presets.cpp",
            "../../libc/cimgui_toggle/imgui_toggle/imgui_toggle_renderer.cpp",
            "../../libc/cimgui_toggle/imgui_toggle/imgui_toggle_palette.cpp",
            // CImGui-Toggle
            "../../libc/cimgui_toggle/cimgui_toggle.cpp",
            "../../libc/cimgui_toggle/cimgui_offset_rect.cpp",
            "../../libc/cimgui_toggle/cimgui_toggle_presets.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
