const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const allocator = b.allocator;
    const current_dir_abs = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(current_dir_abs);
    const mod_name = std.fs.path.basename(current_dir_abs);

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
    mod.addImport(mod_name, mod);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
    //    std.debug.print("{s} module\n",.{mod_name});
}
