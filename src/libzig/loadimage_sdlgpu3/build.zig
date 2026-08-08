const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "loadimage_sdlgpu3";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse true;

    const sdl_path = "../../libc/sdl/SDL3/x86_64-w64-mingw32";

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_loadimage_sdlgpu3.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        });
    }else{
        const step = b.addTranslateC(.{
            .root_source_file = b.path("src/loadImage_sdlgpu3.h"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        });
        step.addIncludePath(b.path("./src"));
    switch (target.result.os.tag) {
            .windows => {
                step.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include/SDL3" })));
                step.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include" })));
            },
            .linux => step.addIncludePath(.{ .cwd_relative = "/usr/include/SDL3" }),
            else => {},
        }

        mod = step.addModule(mod_name);
    }
    mod.addIncludePath(b.path("../../libc/stb"));
    switch (target.result.os.tag) {
        .windows => {
            mod.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include/SDL3" })));
            mod.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include" })));
        },
        .linux => mod.addIncludePath(.{ .cwd_relative = "/usr/include/SDL3" }),
        else => {},
    }
    switch (target.result.os.tag) {
        .windows => mod.addIncludePath(b.path("../../libc/glfw/glfw-3.4.bin.WIN64/include")),
        .linux => mod.addIncludePath(.{ .cwd_relative = "/usr/include" }),
        else => {},
    }
    mod.addCSourceFiles(.{
        .files = &.{
            "src/loadImage_sdlgpu3.c",
        },
        });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
