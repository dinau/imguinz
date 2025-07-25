const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const imlibs = b.addStaticLibrary(.{
        .name = "cimgui",
        // In this case the main source file is merely a path, however, in more
        // complicated build scripts, this could be a generated file.
        .root_source_file = b.path("src/cimgui.zig"),
        .target = target,
        .optimize = optimize,
    });

    // This declares intent for the library to be installed into the standard
    // location when the user invokes the "install" step (the default step when
    // running `zig build`).
    //b.installArtifact(imlibs);

    const exe = b.addExecutable(.{
        .name = "glfw_opengl3_implot3d",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    // Load Icon
    exe.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc") });
    //-----------
    // GLFW path
    //-----------
    var glfw_path: []u8 = undefined;
    switch (builtin.target.os.tag) {
        .windows => glfw_path = b.fmt("{s}", .{"../../libs/glfw/glfw-3.4.bin.WIN64"}),
        .linux => glfw_path = b.fmt("{s}", .{"/usr"}),
        else => {},
    }
    //-----------------------
    // For ImGui/CImGui Libs
    //-----------------------
    //---------------
    // [imlibs] --- Include paths
    //---------------
    imlibs.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ glfw_path, "include" }) });

    // ImGui/CImGui
    imlibs.addIncludePath(b.path("../../libs/cimgui/imgui"));
    imlibs.addIncludePath(b.path("../../libs/imgui/backends"));
    imlibs.addIncludePath(b.path("../../libs/cimgui"));

    // ImPlot/CImPlot
    imlibs.addIncludePath(b.path("../../libs/cimplot"));
    imlibs.addIncludePath(b.path("../../libs/cimplot/implot"));

    // ImPlot3d/CImPlot3d
    imlibs.addIncludePath(b.path("../../libs/cimplot3d"));
    imlibs.addIncludePath(b.path("../../libs/cimplot3d/implot3d"));

    //--------------------------------
    // Define macro for C/C++ sources
    //--------------------------------
    // ImGui
    imlibs.root_module.addCMacro("IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS", "");
    imlibs.root_module.addCMacro("ImDrawIdx", "unsigned int");
    imlibs.root_module.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    switch (builtin.target.os.tag) {
        .windows => imlibs.root_module.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
        .linux => imlibs.root_module.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
        else => {},
    }

    //---------------
    // Sources C/C++
    //---------------
    imlibs.addCSourceFiles(.{
        .files = &.{
            // ImGui
            "../../libs/cimgui/imgui/imgui.cpp",
            "../../libs/cimgui/imgui/imgui_tables.cpp",
            "../../libs/cimgui/imgui/imgui_demo.cpp",
            "../../libs/cimgui/imgui/imgui_widgets.cpp",
            "../../libs/cimgui/imgui/imgui_draw.cpp",
            // CImGui
            "../../libs/cimgui/cimgui.cpp",
            // ImPlot
            "../../libs/cimplot/implot/implot.cpp",
            "../../libs/cimplot/implot/implot_demo.cpp",
            "../../libs/cimplot/implot/implot_items.cpp",
            // CImPlot
            "../../libs/cimplot/cimplot.cpp",

            // ImPlot3d
            "../../libs/cimplot3d/implot3d/implot3d.cpp",
            "../../libs/cimplot3d/implot3d/implot3d_demo.cpp",
            "../../libs/cimplot3d/implot3d/implot3d_items.cpp",
            "../../libs/cimplot3d/implot3d/implot3d_meshes.cpp",
            // CImPlot3d
            "../../libs/cimplot3d/cimplot3d.cpp",
            // ImGui GLFW and OpenGL interface
            "../../libs/cimgui/imgui/backends/imgui_impl_opengl3.cpp",
            "../../libs/cimgui/imgui/backends/imgui_impl_glfw.cpp",
        },
        .flags = &.{
            "-O2",
        },
    });

    //-------------------
    // For application
    //-------------------
    //---------------
    // Include paths
    //---------------
    exe.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ glfw_path, "include" }) });
    exe.addIncludePath(b.path("src"));
    exe.addIncludePath(b.path("../utils"));
    exe.addIncludePath(b.path("../utils/fonticon"));
    exe.addIncludePath(b.path("../../libs/stb"));
    exe.addIncludePath(b.path("../../libs/cimgui/generator/output"));

    // CImGui / CImPlot
    exe.addIncludePath(b.path("../../libs/cimgui"));
    exe.addIncludePath(b.path("../../libs/cimplot"));
    // CImGui3d / CImPlot3d
    exe.addIncludePath(b.path("../../libs/cimgui3d"));
    exe.addIncludePath(b.path("../../libs/cimplot3d"));

    //--------------------------------
    // Define macro for C/C++ sources
    //--------------------------------
    exe.root_module.addCMacro("CIMGUI_USE_GLFW", "");
    exe.root_module.addCMacro("CIMGUI_USE_OPENGL3", "");
    exe.root_module.addCMacro("ImDrawIdx", "unsigned int");
    exe.root_module.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    //exe.root_module.addCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    //---------------
    // Sources C/C++
    //---------------
    exe.addCSourceFiles(.{
        .files = &.{
            "../utils/setupFonts.c",
            "../utils/loadImage.c",
            "../utils/saveImage.c",
        },
        .flags = &.{
            "-O2",
        },
    });
    //------
    // Libs
    //------
    if (builtin.target.os.tag == .windows) {
        exe.linkSystemLibrary("gdi32");
        exe.linkSystemLibrary("imm32");
        exe.linkSystemLibrary("opengl32");
        exe.linkSystemLibrary("user32");
        exe.linkSystemLibrary("shell32");
        // Static link
        exe.addObjectFile(.{ .cwd_relative = b.pathJoin(&.{ glfw_path, "lib-mingw-w64", "libglfw3.a" }) });
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
    //
    exe.linkLibrary(imlibs);
    //
    imlibs.linkLibC();
    imlibs.linkLibCpp();
    exe.subsystem = .Windows; // Hide console window

    // This declares intent for the executable to be installed into the
    // standard location when the user invokes the "install" step (the default
    // step when running `zig build`).
    b.installArtifact(exe);

    const resBin = [_][]const u8{ "imgui.ini", "glfw_opengl3_implot3d.ini" };
    const resUtils = [_][]const u8{ "fonticon/fa6/fa-solid-900.ttf", "fonticon/fa6/LICENSE.txt" };
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
