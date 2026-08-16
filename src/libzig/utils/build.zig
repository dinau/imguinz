const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const emscripten_sysroot = b.option([]const u8, "emscripten_sysroot", "Path to <emsdk>/upstream/emscripten");
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "utils";

    // -------
    // module
    // -------
    const mod = b.addModule(mod_name, .{
        .root_source_file = b.path("src/utils_main.zig"),
        .target = target,
        .optimize = optimize,
    });
    if (emscripten_sysroot) |es| {
        mod.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ es, "cache/sysroot/include" }) });
    }
    mod.addCSourceFiles(.{
        .files = &.{
            "src/utils.c",
        },
        .flags = &.{
            "-O2",
        },
    });

    // import modules
    const modules = [_][]const u8{
        "cimgui",
        "loadimage",
        "saveimage",
        "loadicon",
        "zoomglass",
    };
    for (modules) |module| {
        if (mod.import_table.get(module)) |_| {
            continue;
        }
        const mod_dep = b.dependency(module, .{
            .target = target,
            .optimize = optimize,
            .emscripten_sysroot = emscripten_sysroot,
        });
        mod.addImport(module, mod_dep.module(module));
    }

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
