const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "impl_dx11";

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/impl_dx11.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    step.defineCMacro("CIMGUI_USE_DX11", "");
    step.addIncludePath(b.path("../../libc/cimgui"));
    step.addIncludePath(b.path("../../libc/cimgui/imgui"));
    step.addIncludePath(b.path("../../libc/cimgui/imgui/backends"));

    const mod = step.addModule(mod_name);
    mod.addImport(mod_name, mod);

    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui/imgui/backends"));
    mod.addCMacro("ImDrawIdx", "unsigned int");
    switch (builtin.target.os.tag) {
        .windows => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
        .linux => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
        else => {},
    }
    mod.addCMacro("CIMGUI_USE_DX11", "");
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimgui/imgui/backends/imgui_impl_dx11.cpp",
            "../../libc/cimgui/cimgui_impl.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
