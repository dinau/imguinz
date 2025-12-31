const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "clib";

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
