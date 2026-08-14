const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const is_emscripten = target.result.os.tag == .emscripten;
    if (!is_emscripten) {
        @panic("glfw_wgpu_wasm only builds for -Dtarget=wasm32-emscripten");
    }
    const exe_name = "glfw_wgpu_wasm";

    const emscripten_sysroot = b.option(
        []const u8,
        "emscripten_sysroot",
        "Path to <emsdk>/upstream/emscripten",
    );
    const sysroot = emscripten_sysroot orelse @panic("-Demscripten_sysroot=<emsdk>/upstream/emscripten");

    const main_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const imguinz = b.dependency("imguinz", .{});
    const dependencies = .{
        "appimguiwgpu",
        "impl_wgpu",
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
        "-sDISABLE_EXCEPTION_CATCHING=1",
        //        "--use-port=contrib.glfw3",  // can not use in case Zig compiler
        "-sUSE_GLFW=3",
        "--use-port=emdawnwebgpu",
        "-sASYNCIFY=1",
        "-sDEFAULT_TO_CXX",
        "--shell-file",
        "shell_minimal.html",

        "-sASYNCIFY_IGNORE_INDIRECT=1",        // Decrease binary size from 6.5M to 2.3MB
        "-sASYNCIFY_ADD=[AppInitWGPU]",        // Decrease binary size from 6.5M to 2.3MB

        // for debug
        //    "-fsanitize=undefined",
        //   "-g",
    });

    const embed_resources = b.option(bool, "resources", "Embed ./resources into wasm virtual FS") orelse true;
    if (embed_resources) {
        link_step.addArgs(&.{ "--preload-file", "resources@/resources" });
    }

    if (is_emscripten){
        const resWeb = [_][]const u8{"favicon.ico"};
        inline for (resWeb) |file| {
            const res = b.addInstallFile(b.path(file), "web/" ++ file);
            b.getInstallStep().dependOn(&res.step);
        }
    }

    const html_out = link_step.addPrefixedOutputFileArg("-o", "index.html");
    const install_web = b.addInstallDirectory(.{
        .source_dir = html_out.dirname(),
        .install_dir = .prefix,
        .install_subdir = "web",
    });
    b.getInstallStep().dependOn(&install_web.step);
}
