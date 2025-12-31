const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "loadimage";

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/loadImage.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });

    const mod = step.addModule(mod_name);

    mod.addIncludePath(b.path("../../libc/stb"));
    switch (builtin.target.os.tag) {
        .windows => mod.addIncludePath(b.path("../../libc/glfw/glfw-3.4.bin.WIN64/include")),
        .linux => mod.addIncludePath(.{ .cwd_relative = "/usr/include" }),
        else => {},
    }
    mod.addCSourceFiles(.{
        .files = &.{
            "src/loadImage.c",
        },
    });
    //mod.addImport(mod_name, mod);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
