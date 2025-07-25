// Used zig-0.14.0-dev (2024/10)
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
    //b.installArtifact(imlibs);

    const exe = b.addExecutable(.{
        .name = "sdl2_opengl3",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    // Load Icon
    exe.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc")});
    //----------------------------------
    // Detect 32bit or 64bit Winddws OS
    //----------------------------------
    const sdl2_Base = "../../libs/sdl/SDL2";
    var sArc:[]const u8 = "x86_64";
    if(builtin.cpu.arch == .x86){
      sArc = "i686";
    }
    const sdl2_path = b.fmt("{s}/{s}-w64-mingw32", .{sdl2_Base,sArc});
    //---------------
    // [imlibs] --- Include paths
    //---------------
    //
    if (builtin.target.os.tag == .windows){
      imlibs.addIncludePath(b.path(b.pathJoin(&.{sdl2_path, "include/SDL2"})));
    }else if (builtin.target.os.tag == .linux){
      const sdl2_inc_path: std.Build.LazyPath = .{
        .cwd_relative = "/usr/include/SDL2"
      };
      imlibs.addIncludePath(sdl2_inc_path);
    }

    // ImGui/CImGui
    imlibs.addIncludePath(b.path("../../libs/cimgui/imgui"));
    imlibs.addIncludePath(b.path("../../libs/cimgui/imgui/backends"));
    imlibs.addIncludePath(b.path("../../libs/cimgui"));
    //--------------------------------
    // Define macro for C/C++ sources
    //--------------------------------
    // ImGui
    imlibs.root_module.addCMacro("IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS", "");
    imlibs.root_module.addCMacro("ImDrawIdx", "unsigned int");
    imlibs.root_module.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS","1");
    switch (builtin.target.os.tag){
      .windows => imlibs.root_module.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
      .linux =>   imlibs.root_module.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
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
        // ImGui SDL2 and OpenGL interface
        "../../libs/cimgui/imgui/backends/imgui_impl_opengl3.cpp",
        "../../libs/cimgui/imgui/backends/imgui_impl_sdl2.cpp",
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
    exe.addIncludePath(b.path(b.pathJoin(&.{sdl2_path, "include/SDL2"})));
    exe.addIncludePath(b.path("src"));
    exe.addIncludePath(b.path("../utils"));
    exe.addIncludePath(b.path("../utils/fonticon"));
    exe.addIncludePath(b.path("../../libs/stb"));
    // CImGui
    exe.addIncludePath(b.path("../../libs/cimgui"));
    exe.addIncludePath(b.path("../../libs/cimgui/generator/output"));
    //--------------------------------
    // Define macro for C/C++ sources
    //--------------------------------
    exe.root_module.addCMacro("CIMGUI_USE_SDL2", "");
    exe.root_module.addCMacro("CIMGUI_USE_OPENGL3", "");
    exe.root_module.addCMacro("ImDrawIdx", "unsigned int");
    exe.root_module.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS","1");
    exe.root_module.addCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
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
    if (builtin.target.os.tag == .windows){
    exe.linkSystemLibrary("opengl32");
    exe.linkSystemLibrary("gdi32");
    exe.linkSystemLibrary("imm32");
    exe.linkSystemLibrary("advapi32");
    exe.linkSystemLibrary("winmm");
    exe.linkSystemLibrary("ole32");
    exe.linkSystemLibrary("oleaut32");
    exe.linkSystemLibrary("setupapi");
    exe.linkSystemLibrary("ws2_32");
    exe.linkSystemLibrary("version");
    exe.linkSystemLibrary("dinput8");
    //
    // If you need enable these library.
    //
    //exe.linkSystemLibrary("dxerr8");
    //exe.linkSystemLibrary("dxguid");
    //exe.linkSystemLibrary("gdi32");
    //exe.linkSystemLibrary("hid");
    //exe.linkSystemLibrary("kernel32");
    //exe.linkSystemLibrary("shell32");
    //exe.linkSystemLibrary("user32");
    //exe.linkSystemLibrary("uuid");
    //exe.linkSystemLibrary("comdlg32");
    //exe.linkSystemLibrary("winspool");
    //exe.linkSystemLibrary("shell32");
    //exe.linkSystemLibrary("user32");
    // Static link
      exe.addObjectFile(b.path(b.pathJoin(&.{sdl2_path, "lib","libSDL2.a"})));
    }else if (builtin.target.os.tag == .linux){
      exe.linkSystemLibrary("glfw3");
      exe.linkSystemLibrary("GL");
      exe.linkSystemLibrary("sdl2");
    }

    // sdl2
    //exe.addLibraryPath(b.path(b.pathJoin(&.{sdl2_path, "lib-mingw-64"})));
    //exe.linkSystemLibrary("SDL2");      // For static link
    // Dynamic link
    //exe.addObjectFile(b.path(b.pathJoin(&.{sdl2_path, "lib","libSDL2dll.a"})));
    //exe.linkSystemLibrary("SDL2dll"); // For dynamic link
    // System
    exe.linkLibC();
    exe.linkLibCpp();
    //
    exe.linkLibrary(imlibs);
    //
    imlibs.linkLibC();
    imlibs.linkLibCpp();
    exe.subsystem = .Windows;  // Hide console window

    // This declares intent for the executable to be installed into the
    // standard location when the user invokes the "install" step (the default
    // step when running `zig build`).
    b.installArtifact(exe);

    const resBin =   [_][]const u8{ "imgui.ini", "sdl2_opengl3.ini"
                                  , "beans-400.jpg" };
    const resUtils = [_][]const u8{ "fonticon/fa6/fa-solid-900.ttf"
                                  , "fonticon/fa6/LICENSE.txt"};
    const resIcon = "src/res/z.png";


    inline for(resBin)|file|{
      const res = b.addInstallFile(b.path(file),"bin/" ++ file);
      b.getInstallStep().dependOn(&res.step);
    }
    inline for(resUtils)|file|{
      const res = b.addInstallFile(b.path("../utils/" ++ file),"utils/" ++ file);
      b.getInstallStep().dependOn(&res.step);
    }
    const res = b.addInstallFile(b.path(resIcon),"bin/z.png");
    b.getInstallStep().dependOn(&res.step);

    // If dynamic link, copy SDL2.dll
    //const resSDL  = b.pathJoin(&.{sdl2_path ,"bin/SDL2.dll"});
    //switch (builtin.target.os.tag){
    //  .windows => {
    //      const res2 = b.addInstallFile(.{.cwd_relative = resSDL},"bin/SDL2.dll");
    //      b.getInstallStep().dependOn(&res2.step);
    //  } ,
    //  .linux => {}   ,
    //  else => {},
    //}

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
