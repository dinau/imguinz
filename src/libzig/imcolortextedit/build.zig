const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const allocator = b.allocator;
    const current_dir_abs = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(current_dir_abs);
    const mod_name = std.fs.path.basename(current_dir_abs);

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("../../libc/cimCTE/cimCTE.h"),
        .target = target,
        .optimize = optimize,
    });

    step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    step.addIncludePath(b.path("../../libc/cimgui"));
    const mod = step.addModule(mod_name);
    mod.addImport(mod_name, mod);
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));

    mod.addIncludePath(b.path("../../libc/cimCTE"));
    mod.addIncludePath(b.path("../../libc/cimCTE/ImGuiColorTextEdit"));
    mod.addIncludePath(b.path("../../libc/cimCTE/ImGuiColorTextEdit/vendor/regex/include"));

    // macro
    //mod.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimCTE/cimCTE.cpp",
            "../../libc/cimCTE/ImGuiColorTextEdit/ImGuiDebugPanel.cpp",
            "../../libc/cimCTE/ImGuiColorTextEdit/LanguageDefinitions.cpp",
            "../../libc/cimCTE/ImGuiColorTextEdit/TextEditor.cpp",
            "../../libc/cimCTE/ImGuiColorTextEdit/UnitTests.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    lib.linkLibCpp();
    b.installArtifact(lib);
    //std.debug.print("{s} module\n",.{mod_name});
}
