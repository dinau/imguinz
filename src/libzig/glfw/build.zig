const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "glfw";

    const glfw_path = b.fmt("{s}", .{"../../libc/glfw/glfw-3.4.bin.WIN64"});

    // ------------
    // glfw module
    // ------------
    const step = b.addTranslateC(.{
        .root_source_file = b.path(b.pathJoin(&.{ glfw_path, "include/GLFW/glfw3.h" })),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    const mod = step.addModule(mod_name);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });

    // Static link
    switch (builtin.target.os.tag) {
        .windows => lib.root_module.addObjectFile(b.path(b.pathJoin(&.{ glfw_path, "lib-mingw-w64", "libglfw3.a" }))),
        // .linux =>   mod.addIncludePath(.{.cwd_relative = "/usr/include"}),
        else => {},
    }

    b.installArtifact(lib);
}
