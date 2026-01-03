const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
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
        const mod_dep = b.dependency(module, .{});
        mod.addImport(module, mod_dep.module(module));
    }

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
