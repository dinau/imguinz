const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    //const imlibs = b.addStaticLibrary(.{
    //    .name = "cimgui",
    //    .root_source_file = b.path("src/cimgui.zig"),
    //    .target = target,
    //    .optimize = optimize,
    //});
    //
    const exe_mod = b.createModule(.{
        // `root_source_file` is the Zig "entry point" of the module. If a module
        // only contains e.g. external object files, you can make this `null`.
        // In this case the main source file is merely a path, however, in more
        // complicated build scripts, this could be a generated file.
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    //exe.root_module = b.createModule(.{
    //    // `root_source_file` is the Zig "entry point" of the module. If a module
    //    // only contains e.g. external object files, you can make this `null`.
    //    // In this case the main source file is merely a path, however, in more
    //    // complicated build scripts, this could be a generated file.
    //    .target = target,
    //    .optimize = optimize,
    //});

    //----------------------------------
    // Detect 32bit or 64bit Winddws OS
    //----------------------------------
    const Glfw_Base = "../../libs/glfw/glfw-3.4.bin.WIN";
    var sArc = "64";
    if (builtin.cpu.arch == .x86) {
        sArc = "32";
    }
    const glfw_path = b.fmt("{s}{s}", .{ Glfw_Base, sArc });

    const utils_path = "../utils";
    // -----------------
    // Modules
    // -----------------
    // -----------------
    // cimgui module
    // -----------------
    const cimgui_mod = b.createModule(.{
        .root_source_file = b.path("../utils/cimgui.zig"),
        .target = target,
        .optimize = optimize,
    });
    exe_mod.addImport("cimgui", cimgui_mod);

    // -----------------
    // glfw_opengl module
    // -----------------
    const glfw_opengl_mod = b.createModule(.{
        .root_source_file = b.path("../utils/glfw_opengl.zig"),
        .target = target,
        .optimize = optimize,
    });
    exe_mod.addImport("glfw_opengl", glfw_opengl_mod);

    // -----------------
    // glfw module
    // -----------------
    const glfw_step = b.addTranslateC(.{
        .root_source_file = b.path("../../libs/glfw/glfw-3.4.bin.WIN64/include/GLFW/glfw3.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    const glfw_mod = glfw_step.createModule();
    exe_mod.addImport("glfw", glfw_mod);

    // -----------------
    // clib module
    // -----------------
    const clib_step = b.addTranslateC(.{
        .root_source_file = b.path("../utils/clib.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    exe_mod.addImport("clib", clib_step.createModule());

    // -----------------
    // fonticon module
    // -----------------
    const fonticon_mod = b.createModule(.{
        .root_source_file = b.path(b.pathJoin(&.{ utils_path, "/fonticon/IconsFontAwesome6.zig" })),
        .target = target,
        .optimize = optimize,
    });
    exe_mod.addImport("fonticon", fonticon_mod);

    // -----------------
    // utils module
    // -----------------
    const utils_mod = b.createModule(.{
        .root_source_file = b.path("../utils/utils.zig"),
        .target = target,
        .optimize = optimize,
    });
    utils_mod.addIncludePath(b.path("../../libs/glfw/glfw-3.4.bin.WIN64/include"));
    utils_mod.addIncludePath(b.path("../../libs/cimgui"));
    utils_mod.addIncludePath(b.path("../../libs/cimgui/imgui"));
    utils_mod.addImport("cimgui", cimgui_mod);
    exe_mod.addImport("utils", utils_mod);

    // -----------------
    // loadimage module
    // -----------------
    const loadimage_step = b.addTranslateC(.{
        .root_source_file = b.path("../utils/loadImage.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    const loadimage_mod = loadimage_step.createModule();
    loadimage_mod.addIncludePath(b.path("../../libs/stb"));
    loadimage_mod.addIncludePath(b.path(b.pathJoin(&.{ glfw_path, "include" })));
    loadimage_mod.addCSourceFiles(.{
        .files = &.{
            "../utils/loadImage.c",
        },
        .flags = &.{
            "-O2",
            "-DCIMGUI_USE_GLFW",
        },
    });
    exe_mod.addImport("loadimage", loadimage_mod);

    // -----------------
    // appimgui module
    // -----------------
    const appimgui_mod = b.createModule(.{
        .root_source_file = b.path("../utils//appImGui.zig"),
        .target = target,
        .optimize = optimize,
    });
    appimgui_mod.addImport("cimgui", cimgui_mod);
    appimgui_mod.addImport("glfw", glfw_mod);
    appimgui_mod.addImport("glfw_opengl", glfw_opengl_mod);
    appimgui_mod.addImport("fonticon", fonticon_mod);
    appimgui_mod.addImport("loadimage", loadimage_mod);
    exe_mod.addImport("appimgui", appimgui_mod);

    // -----------------
    // zoomglass module
    // -----------------
    const zoomglass_mod = b.createModule(.{
        .root_source_file = b.path("../utils/zoomGlass.zig"),
        .target = target,
        .optimize = optimize,
    });
    zoomglass_mod.addImport("cimgui", cimgui_mod);
    zoomglass_mod.addImport("glfw", glfw_mod);
    zoomglass_mod.addImport("fonticon", fonticon_mod);
    zoomglass_mod.addImport("loadimage", loadimage_mod);
    exe_mod.addImport("zoomglass", zoomglass_mod);

    // -----------------
    // setupfont module
    // -----------------
    const setupfont_step = b.addTranslateC(.{
        .root_source_file = b.path("../utils/setupFonts.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    const setupfont_mod = setupfont_step.createModule();
    setupfont_mod.addIncludePath(b.path("../../libs/cimgui"));
    setupfont_mod.addIncludePath(b.path(b.pathJoin(&.{ utils_path, "/fonticon" })));
    setupfont_mod.addCSourceFiles(.{
        .files = &.{
            "../utils/setupFonts.c",
        },
        .flags = &.{
            "-O2",
        },
    });
    exe_mod.addImport("setupfont", setupfont_mod);

    // -----------------
    // saveimage module
    // -----------------
    const saveimage_step = b.addTranslateC(.{
        .root_source_file = b.path("../utils/saveImage.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    const saveimage_mod = saveimage_step.createModule();
    saveimage_mod.addIncludePath(b.path("../../libs/stb"));
    saveimage_mod.addCSourceFiles(.{
        .files = &.{
            "../utils/saveImage.c",
        },
        .flags = &.{
            "-O2",
        },
    });
    exe_mod.addImport("saveimage", saveimage_mod);

    //----------------------
    //  ImGui/CImGui Module
    //----------------------

    //----------------
    // rename exe_mod
    //----------------
    exe_mod.addIncludePath(b.path(b.pathJoin(&.{ glfw_path, "include" })));
    exe_mod.addIncludePath(b.path("../../libs/cimgui/imgui"));
    exe_mod.addIncludePath(b.path("../../libs/cimgui/imgui/backends"));
    exe_mod.addIncludePath(b.path("../../libs/cimgui"));
    exe_mod.addIncludePath(b.path("../utils"));
    // macro
    exe_mod.addCMacro("IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS", "");
    exe_mod.addCMacro("ImDrawIdx", "unsigned int");
    exe_mod.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    switch (builtin.target.os.tag) {
        .windows => exe_mod.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
        .linux => exe_mod.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
        else => {},
    }
    // GLFW / Opengl3 backend
    exe_mod.addCMacro("CIMGUI_USE_GLFW", "");
    exe_mod.addCMacro("CIMGUI_USE_OPENGL3", "");

    //---------------
    // Sources C/C++
    //---------------
    exe_mod.addCSourceFiles(.{
        .files = &.{
            // ImGui
            "../../libs/cimgui/imgui/imgui.cpp",
            "../../libs/cimgui/imgui/imgui_tables.cpp",
            "../../libs/cimgui/imgui/imgui_demo.cpp",
            "../../libs/cimgui/imgui/imgui_widgets.cpp",
            "../../libs/cimgui/imgui/imgui_draw.cpp",
            // CImGui
            "../../libs/cimgui/cimgui.cpp",
            "../../libs/cimgui/cimgui_impl.cpp",
            // ImGui GLFW and OpenGL interface
            "../../libs/cimgui/imgui/backends/imgui_impl_opengl3.cpp",
            "../../libs/cimgui/imgui/backends/imgui_impl_glfw.cpp",
            // Theme Gold
            "../utils/themeGold.cpp",
        },
        .flags = &.{
            "-O2",
        },
    });

    const exe = b.addExecutable(.{
        .name = "iconFontViewer",
        .root_module = exe_mod,
    });
    //exe.root_module.addImport("cimgui", cimgui_mod);

    // Load Icon
    exe.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc") });

    //----------
    // Linking
    //----------
    if (builtin.target.os.tag == .windows) {
        exe.linkSystemLibrary("gdi32");
        exe.linkSystemLibrary("imm32");
        exe.linkSystemLibrary("opengl32");
        exe.linkSystemLibrary("user32");
        exe.linkSystemLibrary("shell32");
        // Static link
        exe.addObjectFile(b.path(b.pathJoin(&.{ glfw_path, "lib-mingw-w64", "libglfw3.a" })));
    } else if (builtin.target.os.tag == .linux) {
        exe.linkSystemLibrary("glfw3");
        exe.linkSystemLibrary("GL");
    }

    // GLFW
    //exe.addLibraryPath(b.path(b.pathJoin(&.{glfw_path, "lib-mingw-64"})));
    //exe.linkSystemLibrary("glfw3");      // For static link
    // Dynamic link
    //exe.addObjectFile(b.path(b.pathJoin(&.{glfw_path, "lib-mingw-w64","libglfw3dll.a"})));
    //exe.linkSystemLibrary("glfw3dll"); // For dynamic link
    // System
    exe.linkLibC();
    exe.linkLibCpp();

    exe.subsystem = .Windows; // Hide console window

    // This declares intent for the executable to be installed into the
    // standard location when the user invokes the "install" step (the default
    // step when running `zig build`).
    b.installArtifact(exe);

    const resBin =   [_][]const u8{ "imgui.ini", "iconFontViewer.ini"};
    const resUtils = [_][]const u8{ "fonticon/fa6/fa-solid-900.ttf"
                                  , "fonticon/fa6/LICENSE.txt"};
    const resIcon = "src/res/z.png";

    inline for (resBin) |file| {
        const res = b.addInstallFile(b.path(file), "bin/" ++ file);
        b.getInstallStep().dependOn(&res.step);
    }
    inline for (resUtils) |file| {
        const res = b.addInstallFile(b.path("../utils/" ++ file), "utils/" ++ file);
        b.getInstallStep().dependOn(&res.step);
    }
    const res = b.addInstallFile(b.path(resIcon), "bin/z.png");
    b.getInstallStep().dependOn(&res.step);
    //
    // This *creates* a Run step in the build graph, to be executed when another
    // step is evaluated that depends on it. The next line below will establish
    // such a dependency.
    const run_cmd = b.addRunArtifact(exe);

    // By making the run step depend on the install step, it will be run from the
    // installation directory rather than directly from within the cache directory.
    // This is not necessary, however, if the application depends on other installed
    // files, this ensures they will be present and in the expected location.
    run_cmd.step.dependOn(b.getInstallStep());

    // This allows the user to pass arguments to the application in the build
    // command itself, like this: `zig build run -- arg1 arg2 etc`
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    // This creates a build step. It will be visible in the `zig build --help` menu,
    // and can be selected like this: `zig build run`
    // This will evaluate the `run` step rather than the default, which is "install".
    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    // Creates a step for unit testing. This only builds the test executable
    // but does not run it.
    const lib_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);

    const exe_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const run_exe_unit_tests = b.addRunArtifact(exe_unit_tests);

    // Similar to creating the run step earlier, this exposes a `test` step to
    // the `zig build --help` menu, providing a way for the user to request
    // running the unit tests.
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_unit_tests.step);
    test_step.dependOn(&run_exe_unit_tests.step);
}
