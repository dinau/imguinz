const std = @import("std");
// Note: This is very tentative solution at this moment.
// Register external module from "./build.zig.zon" file.
pub fn addExternalModule(b: *std.Build, module: *std.Build.Module) void {
    const allocator = b.allocator;
    const abs_path = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(abs_path);
    const fp = std.fs.cwd().openFile("build.zig.zon", .{}) catch |err| {
        std.debug.print("Failed to open file: {}\n", .{err});
        return;
    };
    defer fp.close();

    const file_size = (fp.stat() catch |err| {
        std.debug.print("Stat error: {}\n", .{err});
        return;
    }).size;

    const content = allocator.alloc(u8, file_size) catch |err| {
        std.debug.print("Alloc error: {}\n", .{err});
        return;
    };
    defer allocator.free(content);

    const bytes_read = fp.read(content) catch |err| {
        std.debug.print("Read error: {}\n", .{err});
        return;
    };

    var state: i32 = 1;
    var idx: ?usize = undefined;
    var lines = std.mem.splitScalar(u8, content[0..bytes_read], '\n');

    while (lines.next()) |sLine| {
        switch (state) {
            1 => {
                idx = std.mem.indexOf(u8, sLine, ".dependencies");
                if (idx) |_| {
                    state += 1;
                }
            },
            2 => {
                idx = std.mem.indexOf(u8, sLine, ".{");
                if (idx) |_| {
                    var itr = std.mem.splitSequence(u8, sLine, "=");
                    if (itr.next()) |pname| {
                        const plib_name = std.mem.trim(u8, pname, " ");
                        const lib_name = std.mem.trimLeft(u8, plib_name, ".");
                        if (!std.mem.eql(u8, lib_name, "paths")) {
                            const dep = b.lazyDependency(lib_name, .{});
                            const mod = dep.?.module(lib_name);
                            module.addImport(lib_name, mod);
                        }
                    }
                }
            },
            else => {},
        }
    }
}
