const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "imknobs";

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("../../libc/cimgui-knobs/cimgui-knobs.h"),
        .target = target,
        .optimize = optimize,
    });

    step.addIncludePath(b.path("../../libc/cimgui"));
    step.addIncludePath(b.path("../../libc/cimknobs"));
    const mod = step.addModule(mod_name);
    mod.addImport(mod_name, mod);
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/cimgui-knobs"));
    mod.addIncludePath(b.path("../../libc/cimgui-knobs//libs/imgui-knobs"));
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimgui-knobs/cimgui-knobs.cpp",
            "../../libc/cimgui-knobs/libs/imgui-knobs/imgui-knobs.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
