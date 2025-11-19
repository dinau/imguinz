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

    var reader = fp.deprecatedReader();

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
