const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const emscripten_sysroot = b.option([]const u8, "emscripten_sysroot", "Path to <emsdk>/upstream/emscripten");

    const mod_name = "cimgui";
    var mod: *std.Build.Module = undefined;

    //const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse (target.result.os.tag == .emscripten);
    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_cimgui.zig"),
            .target = target,
            .optimize = optimize,
        });
    } else {
        const step = b.addTranslateC(.{
            .root_source_file = b.path("src/impl_cimgui.h"),
            .target = target,
            .optimize = optimize,
        });

        step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
        step.addIncludePath(b.path("../../libc/cimgui"));
        if (emscripten_sysroot) |es| {
            step.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ es, "cache/sysroot/include" }) });
        }
        mod = step.addModule(mod_name);
    }
    mod.link_libcpp = true;
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui/imgui/backends"));
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../utils"));
    if (emscripten_sysroot) |es| {
        mod.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ es, "cache/sysroot/include" }) });
    }
    // macro
    mod.addCMacro("IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS", "");
    mod.addCMacro("ImDrawIdx", "unsigned int");
    //mod.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    switch (target.result.os.tag) {
        .windows => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
        .linux => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
        else => {},
    }
    mod.addCSourceFiles(.{
        .files = &.{
            // ImGui
            "../../libc/cimgui/imgui/imgui.cpp",
            "../../libc/cimgui/imgui/imgui_tables.cpp",
            "../../libc/cimgui/imgui/imgui_demo.cpp",
            "../../libc/cimgui/imgui/imgui_widgets.cpp",
            "../../libc/cimgui/imgui/imgui_draw.cpp",
            // CImGui
            "../../libc/cimgui/cimgui.cpp",
            "../../libc/cimgui/cimgui_impl.cpp",
            // ImGui GLFW and OpenGL interface
            //"../utils/themeGold.cpp",
        },
        .flags = &.{
            "-O2",
        },
    });

    //---------
    // Linking
    //---------
    if (target.result.os.tag == .windows) {
        mod.linkSystemLibrary("gdi32", .{});
        mod.linkSystemLibrary("imm32", .{});
        mod.linkSystemLibrary("opengl32", .{});
        mod.linkSystemLibrary("user32", .{});
        mod.linkSystemLibrary("shell32", .{});
        mod.linkSystemLibrary("ws2_32", .{});
    } else if (target.result.os.tag == .linux) {
        mod.linkSystemLibrary("glfw3", .{});
        mod.linkSystemLibrary("GL", .{});
        mod.linkSystemLibrary("X11", .{});
    } else if (target.result.os.tag == .emscripten) {}

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
