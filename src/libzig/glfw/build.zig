const std = @import("std");
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "glfw";

    const glfw_path = b.fmt("{s}", .{"../../libc/glfw/glfw.bin.WIN64"});
    const emscripten_sysroot = b.option([]const u8, "emscripten_sysroot", "Path to <emsdk>/upstream/emscripten");
    const contrib_glfw3_include: ?[]const u8 = if (emscripten_sysroot) |es|
        b.pathJoin(&.{ es, "cache/ports/contrib.glfw3/external" })
    else
        null;

    const glfw3_h_path: std.Build.LazyPath = if (target.result.os.tag == .emscripten and contrib_glfw3_include != null)
        .{ .cwd_relative = b.pathJoin(&.{ contrib_glfw3_include.?, "GLFW/glfw3.h" }) }
    else
        b.path(b.pathJoin(&.{ glfw_path, "include/GLFW/glfw3.h" }));

    // ------------
    // glfw module
    // ------------
    const step = b.addTranslateC(.{
        .root_source_file = glfw3_h_path,
        .target = target,
        .optimize = optimize,
    });
    if (emscripten_sysroot) |es| {
        step.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ es, "cache/sysroot/include" }) });
    }
    if (contrib_glfw3_include) |cgi| {
        step.addIncludePath(.{ .cwd_relative = cgi });
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
