const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "implot";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_implot.zig"),
            .target = target,
            .optimize = optimize,
        });
    }else{
        const step = b.addTranslateC(.{
            .root_source_file = b.path("../../libc/cimplot/cimplot.h"),
            .target = target,
            .optimize = optimize,
        });
        step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
        step.addIncludePath(b.path("../../libc/cimgui"));
        step.addIncludePath(b.path("../../libc/cimplot/cimplot"));

        mod = step.addModule(mod_name);
    }
    mod.link_libcpp = true;
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/cimplot/implot"));
    mod.addCMacro("ImDrawIdx", "unsigned int");
    mod.addCSourceFiles(.{
        .files = &.{
            // ImPlot
            "../../libc/cimplot/implot/implot.cpp",
            "../../libc/cimplot/implot/implot_demo.cpp",
            "../../libc/cimplot/implot/implot_items.cpp",
            // CImPlot
            "../../libc/cimplot/cimplot.cpp",
        },
        .flags = &.{
            "-O2",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
