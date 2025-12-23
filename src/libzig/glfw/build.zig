const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const allocator = b.allocator;
    const current_dir_abs = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(current_dir_abs);
    const mod_name = std.fs.path.basename(current_dir_abs);

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
    mod.addImport(mod_name, mod);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    switch (builtin.target.os.tag) {
        // Static link
        //.windows => lib.addObjectFile(b.path(b.pathJoin(&.{ glfw_path, "lib-mingw-w64", "libglfw3.a" }))),
        .windows => lib.root_module.addObjectFile(b.path(b.pathJoin(&.{ glfw_path, "lib-mingw-w64", "libglfw3dll.a" }))),
        // .linux =>   mod.addIncludePath(.{.cwd_relative = "/usr/include"}),
        else => {},
    }
    mod.linkSystemLibrary("glfw3", .{});
}
