const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "imguizmo";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_imguizmo.zig"),
            .target = target,
            .optimize = optimize,
        });
    }else{
        const step = b.addTranslateC(.{
            .root_source_file = b.path("../../libc/cimguizmo/cimguizmo.h"),
            .target = target,
            .optimize = optimize,
        });

        step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
        step.addIncludePath(b.path("../../libc/cimgui"));
        mod = step.addModule(mod_name);
    }
    mod.addCMacro("imguizmo_NAMESPACE", "imguizmo"); // for imguizmo

    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/cimguizmo/imguizmo"));
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimguizmo/cimguizmo.cpp",
            "../../libc/cimguizmo/ImGuizmo/GraphEditor.cpp",
            "../../libc/cimguizmo/ImGuizmo/ImCurveEdit.cpp",
            "../../libc/cimguizmo/ImGuizmo/ImGradient.cpp",
            "../../libc/cimguizmo/ImGuizmo/ImGuizmo.cpp",
            "../../libc/cimguizmo/ImGuizmo/ImSequencer.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
