const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Get executable name from current directory name
    const allocator = b.allocator;
    const abs_path = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(abs_path);
    const exe_name = std.fs.path.basename(abs_path);

    const main_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Register external module from "./build.zig.zon" file.
    addExternalModule(b, main_mod);

    const exe = b.addExecutable(.{
        .name = exe_name,
        .root_module = main_mod,
    });

    // Load Icon
    exe.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc")});

    //----------------------------------
    // 64bit Winddws OS
    //----------------------------------
    const sdlPath = "../../src/libc/sdl/SDL3/x86_64-w64-mingw32";

    //-------------------
    // For application
    //-------------------
    //------
    // Libs
    //------
    if (builtin.target.os.tag == .windows){
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
      // Static link
      exe.addObjectFile(b.path(b.pathJoin(&.{sdlPath, "lib","libSDL3.dll.a"})));
    }else if (builtin.target.os.tag == .linux){
      exe.linkSystemLibrary("glfw3");
      exe.linkSystemLibrary("GL");
      exe.linkSystemLibrary("SDL3");
    }
    // sdl3
    //exe.addLibraryPath(b.path(b.pathJoin(&.{sdlPath, "lib-mingw-64"})));
    //exe.linkSystemLibrary("SD32");      // For static link
    // Dynamic link
    //exe.addObjectFile(b.path(b.pathJoin(&.{sdlPath, "lib","libSDL3dll.a"})));
    //exe.linkSystemLibrary("SDL3dll"); // For dynamic link
    // System
    exe.linkLibC();
    exe.linkLibCpp();
    //
    //
    exe.subsystem = .Windows;  // Hide console window

    b.installArtifact(exe);

    const resBin =   [_][]const u8{ "imgui.ini", "sdl3_opengl3.ini"
                                  , "sailboat-400.jpg" };
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
    const res = b.addInstallFile(b.path(resIcon), "bin/z.png");
    b.getInstallStep().dependOn(&res.step);
    if(true){// Enable if use SDL3.dll with dynamic linking.
      const resSdlDll = b.pathJoin(&.{sdlPath, "bin", "SDL3.dll"});
      const resSdl = b.addInstallFile(b.path(resSdlDll), "bin/SDL3.dll");
      b.getInstallStep().dependOn(&resSdl.step);
    }

    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());

    if (b.args) |args| {
        run_cmd.addArgs(args);
    }
    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

}

// Register external module from "./build.zig.zon" file.
fn addExternalModule(b: *std.Build, module: *std.Build.Module) void {
    const allocator = b.allocator;
    const abs_path = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(abs_path);

    const fp = std.fs.cwd().openFile("build.zig.zon", .{}) catch |err| {
        std.debug.print("Failed to open file: {}\n", .{err});
        return;
    };
    defer fp.close();

    var buffered_reader = std.io.bufferedReader(fp.reader());
    var reader = buffered_reader.reader();

    var state: i32 = 1;
    var idx: ?usize = undefined;
    while (true) {
        const line = reader.readUntilDelimiterOrEofAlloc(allocator, '\n', 4096) catch |err| {
            std.debug.print("Read error: {}\n", .{err});
            break;
        };
        if (line == null) break; // EOF
        defer allocator.free(line.?);
        const sLine = line.?;
        switch (state) {
            1 => {
                idx = std.mem.indexOf(u8, sLine, ".dependencies");
                if (idx) |_| {
                    state += 1;
                }
            },
            2 => {
                idx = std.mem.indexOf(u8, line.?, ".{");
                if (idx) |_| {
                    var itr = std.mem.splitSequence(u8, sLine, "=");
                    if (itr.next()) |pname| {
                        const plib_name = std.mem.trim(u8, pname, " ");
                        const lib_name = std.mem.trimLeft(u8, plib_name, ".");
                        if (!std.mem.eql(u8, lib_name, "paths")) {
                            const dep = b.dependency(lib_name, .{});
                            const mod = dep.module(lib_name);
                            module.addImport(lib_name, mod);
                            //std.debug.print("External lib name = [{s}]\n", .{lib_name});
                        }
                    }
                }
            },
            else => {},
        }
    }
}
