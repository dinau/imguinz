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
        .root_source_file = b.path("src/impl_rlimgui.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    step.addIncludePath(b.path("../../libc/rlimgui"));
    step.addIncludePath(b.path("../../libc/raylib/win/include"));
    step.addIncludePath(b.path("../../libc/cimgui/imgui"));
    step.defineCMacro("NO_FONT_AWESOME", "");
    //
    const mod = step.addModule(mod_name);
    mod.addIncludePath(b.path("../../libc/rlimgui"));
    mod.addIncludePath(b.path("../../libc/raylib/win/include"));
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addCMacro("ImDrawIdx", "unsigned int");               // [[[[[[ Very important definition ]]]]]]
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
}
