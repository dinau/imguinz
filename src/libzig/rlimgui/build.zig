const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "rlimgui";

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/impl_rlimgui.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    step.addIncludePath(b.path("../../libc/rlimgui"));
    if (builtin.target.os.tag == .windows) {
        step.addIncludePath(b.path("../../libc/raylib/windows/include"));
    } else {
        step.addIncludePath(b.path("../../libc/raylib/linux/include"));
    }
    step.addIncludePath(b.path("../../libc/cimgui/imgui"));
    step.defineCMacro("NO_FONT_AWESOME", "");

    const mod = step.addModule(mod_name);
    mod.addIncludePath(b.path("../../libc/rlimgui"));
    if (builtin.target.os.tag == .windows) {
        mod.addIncludePath(b.path("../../libc/raylib/windows/include"));
    } else {
        mod.addIncludePath(b.path("../../libc/raylib/linux/include"));
    }
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addCMacro("ImDrawIdx", "unsigned int"); // [[[[[[ Very important definition ]]]]]]
    mod.addCMacro("NO_FONT_AWESOME", "");
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/rlimgui/rlImGui.cpp",
        },
        .flags = &[_][]const u8{
            "-std=c++17",
            "-fno-sanitize=undefined",
        },
    });
    mod.addImport(mod_name, mod);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
