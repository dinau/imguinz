const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "fonticon";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/IconsFontAwesome6.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        });
    }else{
        const step = b.addTranslateC(.{
            .root_source_file = b.path("../../libc/fonticon/IconsFontAwesome6.h"),
            .target = target,
            .optimize = optimize,
            //.link_libc = true,
        });
        mod = step.addModule(mod_name);
    }
    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
