const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Get executable name from current directory name
    const allocator = b.allocator;
    const abs_path = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(abs_path);
    const mod_name = std.fs.path.basename(abs_path);

    // clib
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/clib.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });

    // Module
    const mod = step.addModule(mod_name);
    mod.addImport(mod_name, mod);
}
