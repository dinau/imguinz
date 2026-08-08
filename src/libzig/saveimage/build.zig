const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "saveimage";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_saveimage.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        });
    }else{
        const step = b.addTranslateC(.{
            .root_source_file = b.path("src/saveImage.h"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        });
        mod = step.addModule(mod_name);
    }
    mod.addIncludePath(b.path("../../libc/stb"));

    switch (target.result.os.tag) {
        .windows => mod.addIncludePath(b.path("../../libc/glfw/glfw-3.4.bin.WIN64/include")),
        .linux => mod.addIncludePath(.{ .cwd_relative = "/usr/include" }),
        else => {},
    }

    mod.addCSourceFiles(.{
        .files = &.{
            "src/saveImage.c",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
