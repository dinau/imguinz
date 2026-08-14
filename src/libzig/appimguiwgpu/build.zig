const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "appimguiwgpu";

    // -------
    // module
    // -------
    const mod = b.addModule(mod_name, .{
        .root_source_file = b.path("src/appImGuiWgpu.zig"),
        .target = target,
        .optimize = optimize,
    });
    mod.addImport(mod_name, mod);

    // import modules
    const emscripten_sysroot = b.option(
        []const u8,
        "emscripten_sysroot",
        "Path to <emsdk>/upstream/emscripten",
    );
    const modules = [_][]const u8{
        "dcimgui",
        "fonticon",
     //   "loadicon",
     //  "loadimage",
        "glfw",
        "impl_glfw",
        "impl_wgpu",
        "setupfont",
        "utils",
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
