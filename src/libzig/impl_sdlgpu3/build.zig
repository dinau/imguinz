const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "impl_sdlgpu3";

    const sdl_path = "../../libc/sdl/SDL3/x86_64-w64-mingw32";

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/impl_sdlgpu3.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    step.defineCMacro("CIMGUI_USE_SDLGPU3", "");
    step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    step.addIncludePath(b.path("../../libc/cimgui"));
    step.addIncludePath(b.path("../../libc/cimgui/imgui/backends"));
    switch (builtin.target.os.tag) {
        .windows => {
            step.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include/SDL3" })));
            step.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include" })));
        },
        .linux => step.addIncludePath(.{ .cwd_relative = "/usr/include/SDL3" }),
        else => {},
    }

    const mod = step.addModule(mod_name);
    mod.addImport(mod_name, mod);
    switch (builtin.target.os.tag) {
        .windows => {
            mod.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include/SDL3" })));
            mod.addIncludePath(b.path(b.pathJoin(&.{ sdl_path, "include" })));
        },
        .linux => mod.addIncludePath(.{ .cwd_relative = "/usr/include/SDL3" }),
        else => {},
    }
    mod.addCMacro("CIMGUI_USE_SDLGPU3", "");
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui/imgui/backends"));
    mod.addCMacro("ImDrawIdx", "unsigned int");
    switch (builtin.target.os.tag) {
        .windows => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
        .linux => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
        else => {},
    }
    mod.addCMacro("CIMGUI_USE_SDL3", "");
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimgui/imgui/backends/imgui_impl_sdlgpu3.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
