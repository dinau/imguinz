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
        .root_source_file = b.path("../../libc/cimguizmo/cimguizmo.h"),
        .target = target,
        .optimize = optimize,
    });

    step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    step.addIncludePath(b.path("../../libc/cimgui"));
    const mod = step.addModule(mod_name);
    mod.addImport(mod_name, mod);

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
}
