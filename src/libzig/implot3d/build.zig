const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "implot3d";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_implot3d.zig"),
            .target = target,
            .optimize = optimize,
        });
    }else{
        const step = b.addTranslateC(.{
            .root_source_file = b.path("../../libc/cimplot3d/cimplot3d.h"),
            .target = target,
            .optimize = optimize,
        });
        step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
        step.addIncludePath(b.path("../../libc/cimgui"));
        step.addIncludePath(b.path("../../libc/cimplot3d/cimplot3d"));

        mod = step.addModule(mod_name);
    }
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/cimplot3d/implot3d"));
    mod.addCMacro("ImDrawIdx", "unsigned int");
    mod.addCSourceFiles(.{
        .files = &.{
            // ImPlot
            "../../libc/cimplot3d/implot3d/implot3d.cpp",
            "../../libc/cimplot3d/implot3d/implot3d_demo.cpp",
            "../../libc/cimplot3d/implot3d/implot3d_items.cpp",
            "../../libc/cimplot3d/implot3d/implot3d_meshes.cpp",
            // CImPlot
            "../../libc/cimplot3d/cimplot3d.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
