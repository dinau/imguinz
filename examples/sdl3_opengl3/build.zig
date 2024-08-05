// Used zig-0.12.0 (2024/06)
//
const std = @import("std");
const builtin = @import("builtin");

// Although this function looks imperative, note that its job is to
// declaratively construct a build graph that will be executed by an external
// runner.
pub fn build(b: *std.Build) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard optimization options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall. Here we do not
    // set a preferred release mode, allowing the user to decide how to optimize.
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
    b.installArtifact(imlibs);

    const exe = b.addExecutable(.{
        .name = "sdl3_opengl3",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    // Load Icon
    exe.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc")});
    //----------------------------------
    // Detect 32bit or 64bit Winddws OS
    //----------------------------------
    const sdlBase = "../../libs/sdl/sdl3";
    var sArc:[]const u8 = "64";
    if(builtin.cpu.arch == .x86){
      sArc = "32";
    }
    const sdlDate = "2024-08-04";
    const sdlPath = b.fmt("{s}/{s}/SDL3-{s}/SDL3", .{sdlBase, sArc, sdlDate});
    //---------------
    // [imlibs] --- Include paths
    //---------------
    imlibs.addIncludePath(b.path(b.pathJoin(&.{sdlPath, "include"})));
    // ImGui/CImGui
    imlibs.addIncludePath(b.path("../../libs/cimgui/imgui"));
    imlibs.addIncludePath(b.path("../../libs/cimgui/imgui/backends"));
    imlibs.addIncludePath(b.path("../../libs/cimgui"));
    //--------------------------------
    // Define macro for C/C++ sources
    //--------------------------------
    // ImGui
    imlibs.defineCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)");
    imlibs.defineCMacro("IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS", "");
    imlibs.defineCMacro("ImDrawIdx", "unsigned int");
    imlibs.defineCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS","1");
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
        // ImGui SDL3 and OpenGL interface
        "../../libs/cimgui/imgui/backends/imgui_impl_opengl3.cpp",
        "../../libs/cimgui/imgui/backends/imgui_impl_sdl3.cpp",
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
    exe.addIncludePath(b.path(b.pathJoin(&.{sdlPath, "include"})));
    exe.addIncludePath(b.path("src"));
    exe.addIncludePath(b.path("../utils"));
    exe.addIncludePath(b.path("../utils/fonticon"));
    exe.addIncludePath(b.path("../../libs/stb"));
    // CImGui
    exe.addIncludePath(b.path("../../libs/cimgui"));
    exe.addIncludePath(b.path("../../libs/"));
    //--------------------------------
    // Define macro for C/C++ sources
    //--------------------------------
    exe.defineCMacro("CIMGUI_USE_SDL3", "");
    exe.defineCMacro("CIMGUI_USE_OPENGL3", "");
    exe.defineCMacro("ImDrawIdx", "unsigned int");
    exe.defineCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS","1");
    exe.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", null);
    //---------------
    // Sources C/C++
    //---------------
    exe.addCSourceFiles(.{
      .files = &.{
        "../utils/setupFonts.c",
        "../utils/loadImage.c",
        "../utils/saveImage.c",
        "../utils/utils.c",
      },
      .flags = &.{
        "-O2",
      },
    });
    //------
    // Libs
    //------
    exe.linkSystemLibrary("gdi32");
    exe.linkSystemLibrary("imm32");
    exe.linkSystemLibrary("advapi32");
    exe.linkSystemLibrary("comdlg32");
    exe.linkSystemLibrary("dinput8");
    exe.linkSystemLibrary("dxerr8");
    exe.linkSystemLibrary("dxguid");
    exe.linkSystemLibrary("gdi32");
    exe.linkSystemLibrary("hid");
    exe.linkSystemLibrary("kernel32");
    exe.linkSystemLibrary("ole32");
    exe.linkSystemLibrary("oleaut32");
    exe.linkSystemLibrary("setupapi");
    exe.linkSystemLibrary("shell32");
    exe.linkSystemLibrary("user32");
    exe.linkSystemLibrary("uuid");
    exe.linkSystemLibrary("version");
    exe.linkSystemLibrary("winmm");
    exe.linkSystemLibrary("winspool");
    exe.linkSystemLibrary("ws2_32");
    exe.linkSystemLibrary("opengl32");
    exe.linkSystemLibrary("shell32");
    exe.linkSystemLibrary("user32");
    // sdl3
    //exe.addLibraryPath(b.path(b.pathJoin(&.{sdlPath, "lib-mingw-64"})));
    //exe.linkSystemLibrary("SD32");      // For static link
    // Static link
    exe.addObjectFile(b.path(b.pathJoin(&.{sdlPath, "lib","SDL3.lib"})));
    // Dynamic link
    //exe.addObjectFile(b.path(b.pathJoin(&.{sdlPath, "lib","libSDL3dll.a"})));
    //exe.linkSystemLibrary("SDL3dll"); // For dynamic link
    // System
    exe.linkLibC();
    exe.linkLibCpp();
    //
    exe.linkLibrary(imlibs);
    //
    imlibs.linkLibC();
    imlibs.linkLibCpp();
    //exe.subsystem = .Windows;  // Hide console window

    // This declares intent for the executable to be installed into the
    // standard location when the user invokes the "install" step (the default
    // step when running `zig build`).
    b.installArtifact(exe);

    const resBin =   [_][]const u8{ "imgui.ini"};
    const resUtils = [_][]const u8{ "fonticon/fa6/fa-solid-900.ttf"
                                  , "fonticon/fa6/LICENSE.txt"};
    const resIcon = "src/res/z.png";
    const resSdlDll = b.pathJoin(&.{sdlPath, "bin", "SDL3.dll"});

    inline for(resBin)|file|{
      const res = b.addInstallFile(b.path(file),"bin/" ++ file);
      b.getInstallStep().dependOn(&res.step);
    }
    inline for(resUtils)|file|{
      const res = b.addInstallFile(b.path("../utils/" ++ file),"utils/" ++ file);
      b.getInstallStep().dependOn(&res.step);
    }
    const res = b.addInstallFile(b.path(resIcon), "bin/z.png");
    b.getInstallStep().dependOn(&res.step);
    const resSdl = b.addInstallFile(b.path(resSdlDll), "bin/SDL3.dll");
    b.getInstallStep().dependOn(&resSdl.step);
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
