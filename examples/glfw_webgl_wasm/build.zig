const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const is_emscripten = target.result.os.tag == .emscripten;
    const exe_name = "glfw_webgl_wasm";

    const main_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const emscripten_sysroot = b.option(
        []const u8,
        "emscripten_sysroot",
        "Path to <emsdk>/upstream/emscripten",
    );

    const imguinz = b.dependency("imguinz", .{});
    const dependencies = .{
        "appimgui",
        "imknobs",
        "implot",
        "implot3d",
        "imspinner",
    };
    inline for (dependencies) |dep_name| {
        const dep = imguinz.builder.dependency(dep_name, .{
            .target = target,
            .optimize = optimize,
            .emscripten_sysroot = emscripten_sysroot,
        });
        main_mod.addImport(dep_name, dep.module(dep_name));
    }

    if (is_emscripten) {
        //-------------------------
        // wasm32-emscripten build
        //-------------------------
        const sysroot = emscripten_sysroot orelse @panic("-Demscripten_sysroot=<emsdk>/upstream/emscripten");

        const em_mod = b.createModule(.{
            .root_source_file = b.path("src/emscripten.zig"),
            .target = target,
            .optimize = optimize,
        });
        main_mod.addImport("emscripten", em_mod);

        const lib = b.addLibrary(.{
            .name = exe_name,
            .linkage = .static,
            .root_module = main_mod,
        });
        lib.root_module.single_threaded = true;

        const emcc_path = b.pathJoin(&.{ sysroot, "emcc" });
        const link_step = b.addSystemCommand(&.{emcc_path});
        link_step.addArtifactArg(lib);

        link_step.addArgs(&.{
            "-sUSE_GLFW=3",
            "-sUSE_WEBGL2=1",
            "-sFULL_ES3=1",
            "-sMAX_WEBGL_VERSION=2", // only use WegGL2
            "-sMIN_WEBGL_VERSION=2", // only use WegGL2
            "-sALLOW_MEMORY_GROWTH=1",
            "-sASYNCIFY=0",
            "-sDEFAULT_TO_CXX",
            "--shell-file",
            "shell_minimal.html",
            // below for debug
            //"-fsanitize=undefined",
            //"-g",
        });

        const embed_resources = b.option(bool, "resources", "Embed ./resources into wasm virtual FS") orelse true;
        if (embed_resources) {
            link_step.addArgs(&.{
                "--preload-file",
                "resources@/resources",
            });
        }

        const html_out = link_step.addPrefixedOutputFileArg("-o", "index" ++ ".html");
        const install_web = b.addInstallDirectory(.{
            .source_dir = html_out.dirname(),
            .install_dir = .prefix,
            .install_subdir = "web",
        });
        b.getInstallStep().dependOn(&install_web.step);
    } else {
        //------------------
        // for native build
        //------------------
        const exe = b.addExecutable(.{
            .name = exe_name,
            .root_module = main_mod,
        });

        exe.root_module.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc") });

        exe.subsystem = if (builtin.zig_version.minor >= 17) .windows else .windows;

        b.installArtifact(exe);

        const install_resources = b.addInstallDirectory(.{
            .source_dir = b.path("resources"),
            .install_dir = .bin,
            .install_subdir = "resources",
        });
        exe.step.dependOn(&install_resources.step);

        const resBin = [_][]const u8{"imgui.ini"};
        inline for (resBin) |file| {
            const res = b.addInstallFile(b.path(file), "bin/" ++ file);
            b.getInstallStep().dependOn(&res.step);
        }

        if (is_emscripten) {
            const resWeb = [_][]const u8{"favicon.ico"};
            inline for (resWeb) |file| {
                const res = b.addInstallFile(b.path(file), "web/" ++ file);
                b.getInstallStep().dependOn(&res.step);
            }
        }

        const fonticon_dir = "../../src/libc/fonticon/fa6/";
        const res_fonticon = [_][]const u8{
            "fa-solid-900.ttf",
            "LICENSE.txt",
        };
        inline for (res_fonticon) |file| {
            const res = b.addInstallFile(b.path(fonticon_dir ++ file), "bin/resources/fonticon/fa6/" ++ file);
            b.getInstallStep().dependOn(&res.step);
        }

        const sExeIni = b.fmt("{s}.ini", .{exe_name});
        const resExeIni = b.addInstallFile(b.path(sExeIni), b.pathJoin(&.{ "bin", sExeIni }));
        b.getInstallStep().dependOn(&resExeIni.step);

        const run_cmd = b.addRunArtifact(exe);
        run_cmd.step.dependOn(b.getInstallStep());
        if (builtin.zig_version.minor >= 17) {
            run_cmd.addPassthruArgs();
        } else {
            if (b.args) |args| run_cmd.addArgs(args);
        }
        const run_step = b.step("run", "Run the app");
        run_step.dependOn(&run_cmd.step);
    }
}
