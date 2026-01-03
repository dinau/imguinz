const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "sdl3";

    const sdl_path = "../../libc/sdl/SDL3/x86_64-w64-mingw32";
    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path(b.pathJoin(&.{ sdl_path, "include/SDL3/SDL.h" })),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    step.defineCMacro("SDL_ENABLE_OLD_NAMES", "");
    step.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include/SDL3" })));
    step.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include" })));

    const mod = step.addModule(mod_name);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
