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
        .root_source_file = b.path("src/impl_sdl3.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });

    step.defineCMacro("CIMGUI_USE_SDL3","");
    step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS","");
    step.addIncludePath(b.path("../../libc/cimgui"));
    step.addIncludePath(b.path("../../libc/cimgui/imgui/backends"));
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

    mod.addCMacro("CIMGUI_USE_SDL3", "");
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui/imgui/backends"));
    // macro
    mod.addCMacro("ImDrawIdx", "unsigned int");
    //mod.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    switch (builtin.target.os.tag) {
        .windows => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
        .linux => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
        else => {},
    }
    mod.addCMacro("CIMGUI_USE_SDL3", "");
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimgui/cimgui_impl.cpp",
            "../../libc/cimgui/imgui/backends/imgui_impl_sdl3.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
    //    std.debug.print("{s} module\n",.{mod_name});
}
