const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "zoomglass";

    // -------
    // module
    // -------
    const mod = b.addModule(mod_name, .{
        .root_source_file = b.path("src/zoomGlass.zig"),
        .target = target,
        .optimize = optimize,
    });
    mod.addImport(mod_name, mod);
    // import modules
    const modules = [_][]const u8{ "cimgui", "loadimage", "glfw", "fonticon" };
    for (modules) |module| {
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
