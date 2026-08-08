const std = @import("std");
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
    if (b.sysroot) |es| {                          
        step.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ es, "cache/sysroot/include" }) });
    }                                                
    const mod = step.addModule(mod_name);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });

    // Static link
    switch (target.result.os.tag) {
        .windows => lib.root_module.addObjectFile(b.path(b.pathJoin(&.{ glfw_path, "lib-mingw-w64", "libglfw3.a" }))),
        // .linux =>   mod.addIncludePath(.{.cwd_relative = "/usr/include"}),
        .emscripten => {},
        else => {},
    }

    b.installArtifact(lib);
}
