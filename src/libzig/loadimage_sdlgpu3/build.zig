const std = @import("std");
const builtin = @import("builtin");

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
        .root_source_file = b.path("src/loadImage_sdlgpu3.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    step.addIncludePath(b.path("./src"));
    switch (builtin.target.os.tag) {
        .windows => {
            step.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include/SDL3" })));
            step.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include" })));
        },
        .linux => step.addIncludePath(.{ .cwd_relative = "/usr/include/SDL3" }),
        else => {},
    }

    const mod = step.addModule(mod_name);
    mod.addIncludePath(b.path("../../libc/stb"));
    switch (builtin.target.os.tag) {
        .windows => {
            mod.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include/SDL3" })));
            mod.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include" })));
        },
        .linux => mod.addIncludePath(.{ .cwd_relative = "/usr/include/SDL3" }),
        else => {},
    }
    switch (builtin.target.os.tag) {
        .windows => mod.addIncludePath(b.path("../../libc/glfw/glfw-3.4.bin.WIN64/include")),
        .linux => mod.addIncludePath(.{ .cwd_relative = "/usr/include" }),
        else => {},
    }
    mod.addCSourceFiles(.{
        .files = &.{
            "src/loadImage_sdlgpu3.c",
        },
    });
    mod.addImport(mod_name, mod);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
    //    std.debug.print("{s} module\n",.{mod_name});
}
