// Modified at hand
//   2026/04 by dinau
// Notice: This file was auto-generated.
//   2024/06 by dinau
//
const std = @import("std");
const ip = @import("implot");

// pub fn ImPlot_PlotLine(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotLine(label: anytype, xs: anytype, ys: anytype, count: c_int, flags: c_int, offset: c_int, stride: c_int) void {
// pub fn ImPlot_PlotLine(label: anytype, values: anytype, count: c_int) void {
// pub fn ImPlot_PlotLine(label: anytype, values: anytype, count: c_int, xscale: f64, xstart: f64, flags: c_int, offset: c_int, stride: c_int) void {
// pub fn ImPlot_PlotLine(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotLine(label: anytype, xs: anytype, ys: anytype, count: c_int, xscale: f64, xstart: f64, flags: c_int, offset: c_int, stride: c_int) void {

// pub fn ImPlot_PlotScatter(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotScatter(label: anytype, xs: anytype, ys: anytype, count: c_int, flags: c_int, offset: c_int, stride: c_int) void {
// pub fn ImPlot_PlotScatter(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotScatter(label: anytype, xs: anytype, ys: anytype, count: c_int, xscale: f64, xstart: f64, flags: c_int, offset: c_int, stride: c_int) void {

// pub fn ImPlot_PlotStairs(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotStairs(label: anytype, xs: anytype, ys: anytype, count: c_int, flags: c_int, offset: c_int, stride: c_int) void {
// pub fn ImPlot_PlotStairs(label: anytype, values: anytype, count: c_int) void {
// pub fn ImPlot_PlotStairs(label: anytype, values: anytype, count: c_int, xscale: f64, xstart: f64, flags: c_int, offset: c_int, stride: c_int) void {

// pub fn ImPlot_PlotShaded(label: anytype, xs: anytype, ys: anytype, ys2: anytype, count: c_int) void {
// pub fn ImPlot_PlotShaded(label: anytype, xs: anytype, ys: anytype, ys2: anytype, count: c_int, flags: c_int, offset: c_int, stride: c_int) void {
// pub fn ImPlot_PlotShaded(label: anytype, values: anytype, count: c_int) void {
// pub fn ImPlot_PlotShaded(label: anytype, values: anytype, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: c_int, offset: c_int, stride: c_int) void {
// pub fn ImPlot_PlotShaded(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotShaded(label: anytype, xs: anytype, ys: anytype, count: c_int, yref: f64, flags: c_int, offset: c_int, stride: c_int) void {

// pub fn ImPlot_PlotBars(label: anytype, values: anytype, count: c_int) void {
// pub fn ImPlot_PlotBars(label: anytype, values: anytype, count: c_int, bar_size: f64, shift: f64, flags: c_int, offset: c_int, stride: c_int) void {
// pub fn ImPlot_PlotBars(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotBars(label: anytype, xs: anytype, ys: anytype, count: c_int, bar_size: f64, flags: c_int, offset: c_int, stride: c_int) void {

// pub fn ImPlot_PlotBarGroups(labels: anytype, values: anytype, item_count: c_int, group_count: c_int) void {
// pub fn ImPlot_PlotBarGroups(labels: anytype, values: anytype, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: c_int) void {

// pub fn ImPlot_PlotErrorBars(label: anytype, xs: anytype, ys: anytype, err: anytype, count: c_int) void {
// pub fn ImPlot_PlotErrorBars(label: anytype, xs: anytype, ys: anytype, err: anytype, count: c_int, flags: c_int, offse: c_int, stride: c_int) void {
// pub fn ImPlot_PlotErrorBars(label: anytype, xs: anytype, ys: anytype, neg: anytype, pos: anytype, count: c_int) void {
// pub fn ImPlot_PlotErrorBars(label: anytype, xs: anytype, ys: anytype, neg: anytype, pos: anytype, count: c_int, flags: c_int, offse: c_int, stride: c_int) void {

// pub fn ImPlot_PlotStems(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotStems(label: anytype, xs: anytype, ys: anytype, count: c_int, ref: f64, flags: c_int, offset: c_int, stride: c_int) void {
// pub fn ImPlot_PlotStems(label: anytype, values: anytype, count: c_int) void {
// pub fn ImPlot_PlotStems(label: anytype, values: anytype, count: c_int, ref: f64, scale: f64, start: f64, flags: c_int, offset: c_int, stride: c_int) void {

// pub fn ImPlot_PlotInfLines(label: anytype, values: anytype, count: c_int) void {
// pub fn ImPlot_PlotInfLines(label: anytype, values: anytype, count: c_int, flags: c_int, offset: c_int, stride: c_int) void {

// pub fn ImPlot_PlotPieChart(labels: anytype, values: anytype, count: c_int, x: f64, y: f64, radius: f64) void {
// pub fn ImPlot_PlotPieChart(labels: anytype, values: anytype, count: c_int, x: f64, y: f64, radius: f64, label_fmt: anytype, angle0: f64, flags: c_int) void {
// pub fn ImPlot_PlotPieChart(labels: anytype, values: anytype, count: c_int, x: f64, y: f64, radius: f64, fmt: ip.ImPlotFormatter) void {
// pub fn ImPlot_PlotPieChart(labels: anytype, values: anytype, count: c_int, x: f64, y: f64, radius: f64, fmt: ip.ImPlotFormatter, fmt_data: anytype, angle0: f64, flags: c_int) void {

// pub fn ImPlot_PlotHeatmap(label: anytype, values: anytype, rows: c_int, cols: c_int) void {
// pub fn ImPlot_PlotHeatmap(label: anytype, values: anytype, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: anytype, bound_min: ip.ImPlotPoint, bouns_max: ip.ImPlotPoint, flags: c_int) void {

// pub fn ImPlot_PlotHistogram(label: anytype, values: anytype, count: c_int) f64 {
// pub fn ImPlot_PlotHistogram(label: anytype, values: anytype, count: c_int, bins: c_int, bar_scale: f64, range: ip.ImPlotRange, flags: ip.ImPlotHistogramFlags) f64 {

// pub fn ImPlot_PlotHistogram2D(label: anytype, xs: anytype, ys: anytype, count: c_int) f64 {
// pub fn ImPlot_PlotHistogram2D(label: anytype, xs: anytype, ys: anytype, count: c_int, x_bins: c_int, y_bins: c_int, range: ip.ImPlotRect, flags: ip.ImPlotHistogramFlags) f64 {

// pub fn ImPlot_PlotDigital(label: anytype, xs: anytype, ys: anytype, count: c_int) void {
// pub fn ImPlot_PlotDigital(label: anytype, xs: anytype, ys: anytype, count: c_int, flags: c_int, offset: c_int, stride: c_int) void {

//---------------
// getTypeSuffix
//---------------
fn getTypeSuffix(comptime T: type, arg1: []const u8) []const u8 {
    const typ = switch (T) {
        f32 => "FloatPtr",
        f64 => "doublePtr",
        i8 => "S8Ptr",
        u8 => "U8Ptr",
        i16, ip.ImS16 => "S16Ptr",
        u16, ip.ImU16 => "U16Ptr",
        i32, c_int => "S32Ptr",
        u32, ip.ImU32 => "U32Ptr",
        i64, ip.ImS64 => "S64Ptr",
        u64, ip.ImU64 => "U64Ptr",
        else => @compileError("Unsupported type: " ++ @typeName(T)),
    };
    return typ ++ arg1;
}

//--------------
// convToUSType
//--------------
fn convToUSType(comptime T: type) []const u8 {
    return switch (T) {
        f32 => "Float",
        f64 => "double",
        i8 => "S8",
        u8 => "U8",
        i16, ip.ImS16 => "S16",
        u16, ip.ImU16 => "U16",
        i32, c_int => "S32",
        u32, ip.ImU32 => "U32",
        i64, ip.ImS64 => "S64",
        u64, ip.ImU64 => "U64",
        else => @compileError("Unsupported type: " ++ @typeName(T)),
    };
}

//--------------
// argNameCheck
//--------------
fn argNameCheck(comptime T: type, comptime allowed: anytype) void {
    const fields = @typeInfo(T).@"struct".fields;
    inline for (fields) |field| {
        // コンパイル時に true か false かを確定させる
        const is_ok = comptime blk: {
            for (allowed) |allowed_name| {
                if (std.mem.eql(u8, field.name, allowed_name)) {
                    break :blk true;
                }
            }
            break :blk false;
        };

        if (!is_ok) {
            @compileError("Invalid field: " ++ "\""  ++ field.name ++ "\"");
        }
    }
}

//-----------------
// ImPlot_PlotLine
//-----------------
pub fn ImPlot_PlotLine(args: anytype) void {
    const T = @TypeOf(args);
    const info = @typeInfo(T);

    // In Zig 0.16.0, 'struct' is a keyword; use @"struct" for tag identification.
    if (info != .@"struct") {
        @compileError("Args must be a struct literal");
    }
    // Check for required arguments
    if (!@hasField(T, "label")) @compileError("Missing 'label'");
    if (!@hasField(T, "count")) @compileError("Missing 'count'");

    // Define default values
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);

    // Get sample value for type determination
    const sample_val = if (@hasField(T, "ys")) args.ys[0] else args.values[0];
    const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(@TypeOf(sample_val))));
    const xscale = if (@hasField(T, "xscale")) args.xscale else @as(f64, 1.0);
    const xstart = if (@hasField(T, "xstart")) args.xstart else @as(f64, 0.0);

    // --- Branching Logic ---
    if (@hasField(T, "xs") and @hasField(T, "ys")) {
        argNameCheck(T, .{ "label", "xs", "ys", "count", "flags", "offset", "stride" });
        const typ = @TypeOf(args.xs[0]);
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotLine_" ++ p ++ "Ptr" ++ p ++ "Ptr");
                func(args.label, args.xs, args.ys, args.count, flags, offset, stride);
            },
            else => @compileError("Unsupported type for ImPlot_PlotLine (X-Y): Type: " ++ @typeName(typ)),
        }
    } else if (@hasField(T, "values")) {
        argNameCheck(T, .{ "label", "values", "count", "xscale", "xstart", "flags", "offset", "stride" });
        const typ = @TypeOf(args.values[0]);
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotLine_" ++ p ++ "Ptr" ++ "Int");
                func(args.label, args.values, args.count, xscale, xstart, flags, offset, stride);
            },
            else => @compileError("Unsupported type for ImPlot_PlotLine (Y only) Type: " ++ @typeName(typ)),
        }
    } else {
        @compileError("Must provide either ('xs' and 'ys') or 'values'");
    }
}

//--------------------
// ImPlot_PlotScatter
//--------------------
pub fn ImPlot_PlotScatter(args: anytype) void {
    const T = @TypeOf(args);
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    const label = if (@hasField(T, "label")) args.label else "Scatter";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count'");
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);

    if (@hasField(T, "xs") and @hasField(T, "ys")) {
        const typ = @TypeOf(args.xs[0]);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                // In actual implementation, this expands like a macro
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotScatter_" ++ p ++ "Ptr" ++ p ++ "Ptr");
                func(label, args.xs, args.ys, count, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Scatter"),
        }
    }
}

//-------------------
// ImPlot_PlotStairs
//-------------------
pub fn ImPlot_PlotStairs(args: anytype) void {
    const T = @TypeOf(args);
    // Struct check for 0.16.0 compatibility
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    // Common arguments
    const label = if (@hasField(T, "label")) args.label else "Stairs";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count' field");
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);

    // Case: Passing both X and Y arrays
    if (@hasField(T, "xs") and @hasField(T, "ys")) {
        const typ = @TypeOf(args.xs[0]);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));

        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotStairs_" ++ p ++ "Ptr" ++ p ++ "Ptr");
                func(label, args.xs, args.ys, count, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Stairs (X-Y)"),
        }
    }
    // Case: Passing only Y array (values), calculating X via scale/start
    else if (@hasField(T, "values")) {
        const typ = @TypeOf(args.values[0]);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        const xscale = if (@hasField(T, "xscale")) args.xscale else @as(f64, 1.0);
        const xstart = if (@hasField(T, "xstart")) args.xstart else @as(f64, 0.0);

        const func = @field(ip, "ImPlot_PlotStairs_" ++ getTypeSuffix(typ, "Int"));
        func(label, args.values, count, xscale, xstart, flags, offset, stride);
    } else {
        @compileError("ImPlot_PlotStairs: Must provide either ('xs' and 'ys') or 'values'");
    }
}

//-------------------
// ImPlot_PlotShaded
//-------------------
pub fn ImPlot_PlotShaded(args: anytype) void {
    const T = @TypeOf(args);
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    // Extract common arguments
    const label = if (@hasField(T, "label")) args.label else "Shaded";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count' field");
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);

    // --- 1. X-Y1-Y2 Pattern ---
    if (@hasField(T, "xs") and @hasField(T, "ys") and @hasField(T, "ys2")) {
        const typ = @TypeOf(args.xs[0]);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotShaded_" ++ p ++ "Ptr" ++ p ++ "Ptr" ++ p ++ "Ptr");
                func(label, args.xs, args.ys, args.ys2, count, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Shaded (X-Y1-Y2)"),
        }
    }
    // --- 2. X-Y-Ref Pattern ---
    else if (@hasField(T, "xs") and @hasField(T, "ys")) {
        const typ = @TypeOf(args.xs[0]);
        const yref = if (@hasField(T, "yref")) args.yref else @as(f64, 0.0);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotShaded_" ++ p ++ "Ptr" ++ p ++ "Ptr" ++ "Int");
                func(label, args.xs, args.ys, count, yref, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Shaded (X-Y-Ref)"),
        }
    }
    // --- 3. Values-Ref Pattern ---
    else if (@hasField(T, "values")) {
        const typ = @TypeOf(args.values[0]);
        const yref = if (@hasField(T, "yref")) args.yref else @as(f64, 0.0);
        const xscale = if (@hasField(T, "xscale")) args.xscale else @as(f64, 1.0);
        const xstart = if (@hasField(T, "xstart")) args.xstart else @as(f64, 0.0);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotShaded_" ++ p ++ "Ptr" ++ "Int");
                func(label, args.values, count, yref, xscale, xstart, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Shaded (Values-Ref)"),
        }
    } else {
        @compileError("ImPlot_PlotShaded: Must provide ('xs', 'ys', 'ys2') or ('xs', 'ys') or 'values'");
    }
}

//-----------------
// ImPlot_PlotBars
//-----------------
pub fn ImPlot_PlotBars(args: anytype) void {
    const T = @TypeOf(args);
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    // Common arguments
    const label = if (@hasField(T, "label")) args.label else "Bars";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count' field");
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);
    // ImPlot default bar size is 0.67
    const bar_size = if (@hasField(T, "bar_size")) args.bar_size else @as(f64, 0.67);

    // --- 1. X-Y Array Pattern ---
    if (@hasField(T, "xs") and @hasField(T, "ys")) {
        const typ = @TypeOf(args.xs[0]);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotBars_" ++ p ++ "Ptr" ++ p ++ "Ptr");
                func(label, args.xs, args.ys, count, bar_size, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Bars (X-Y)"),
        }
    }
    // --- 2. Values (Y only) Pattern ---
    else if (@hasField(T, "values")) {
        const typ = @TypeOf(args.values[0]);
        const shift = if (@hasField(T, "shift")) args.shift else @as(f64, 0.0);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotBars_" ++ p ++ "Ptr" ++ "Int");
                func(label, args.values, count, bar_size, shift, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Bars (Values)"),
        }
    } else {
        @compileError("ImPlot_PlotBars: Must provide either ('xs' and 'ys') or 'values'");
    }
}

//----------------------
// ImPlot_PlotBarGroups
//----------------------
pub fn ImPlot_PlotBarGroups(args: anytype) void {
    const T = @TypeOf(args);
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    // Check for required arguments
    if (!@hasField(T, "labels")) @compileError("Missing 'labels' (const [*]const [*]const i8)");
    if (!@hasField(T, "values")) @compileError("Missing 'values' (data array)");
    if (!@hasField(T, "item_count")) @compileError("Missing 'item_count'");
    if (!@hasField(T, "group_count")) @compileError("Missing 'group_count'");

    // Optional arguments and default values
    const group_size = if (@hasField(T, "group_size")) args.group_size else @as(f64, 0.67);
    const shift = if (@hasField(T, "shift")) args.shift else @as(f64, 0.0);
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);

    const typ = @TypeOf(args.values[0]);
    const func = @field(ip, "ImPlot_PlotBarGroups" ++ "_" ++ getTypeSuffix(typ, ""));
    func(args.labels, args.values, args.item_count, args.group_count, group_size, shift, flags);
}

//----------------------
// ImPlot_PlotErrorBars
//----------------------
pub fn ImPlot_PlotErrorBars(args: anytype) void {
    const T = @TypeOf(args);
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    const label = if (@hasField(T, "label")) args.label else "ErrorBars";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count'");
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);

    if (@hasField(T, "xs") and @hasField(T, "ys")) {
        const typ = @TypeOf(args.xs[0]);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));

        // --- 1. Asymmetric Error (neg & pos) ---
        if (@hasField(T, "neg") and @hasField(T, "pos")) {
            switch (typ) {
                f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                    const p = comptime convToUSType(t);
                    const func = @field(ip, "ImPlot_PlotErrorBars_" ++ p ++ "Ptr" ++ p ++ "Ptr" ++ p ++ "Ptr" ++ p ++ "Ptr");
                    func(label, args.xs, args.ys, args.neg, args.pos, count, flags, offset, stride);
                },
                else => @compileError("Unsupported type for Asymmetric ErrorBars"),
            }
        }
        // --- 2. Symmetric Error (err or neg) ---
        else if (@hasField(T, "err") or @hasField(T, "neg")) {
            const ep = if (@hasField(T, "err")) args.err else args.neg;
            switch (typ) {
                f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                    const p = comptime convToUSType(t);
                    const func = @field(ip, "ImPlot_PlotErrorBars_" ++ p ++ "Ptr" ++ p ++ "Ptr" ++ p ++ "Ptr" ++ "Int");
                    func(label, args.xs, args.ys, ep, count, flags, offset, stride);
                },
                else => @compileError("Unsupported type for Symmetric ErrorBars"),
            }
        } else {
            @compileError("ImPlot_PlotErrorBars: Provide 'err' or ('neg' and 'pos')");
        }
    } else {
        @compileError("ImPlot_PlotErrorBars: Missing 'xs' and 'ys'");
    }
}

//------------------
// ImPlot_PlotStems
//------------------
pub fn ImPlot_PlotStems(args: anytype) void {
    const T = @TypeOf(args);
    const label = if (@hasField(T, "label")) args.label else "Stems";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count'");
    const ref = if (@hasField(T, "ref")) args.ref else @as(f64, 0.0);
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);

    if (@hasField(T, "xs") and @hasField(T, "ys")) {
        const typ = @TypeOf(args.xs[0]);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotStems_" ++ p ++ "Ptr" ++ p ++ "Ptr");
                func(label, args.xs, args.ys, count, ref, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Stems"),
        }
    } else if (@hasField(T, "values")) {
        const typ = @TypeOf(args.values[0]);
        const xscale = if (@hasField(T, "xscale")) args.xscale else @as(f64, 1.0);
        const xstart = if (@hasField(T, "xstart")) args.xstart else @as(f64, 0.0);
        const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
        switch (typ) {
            f32, f64, i8, u8, i16, u16, i32, u32, i64, u64, c_int => |t| {
                const p = comptime convToUSType(t);
                const func = @field(ip, "ImPlot_PlotStems_" ++ p ++ "Ptr" ++ "Int");
                func(label, args.values, count, ref, xscale, xstart, flags, offset, stride);
            },
            else => @compileError("Unsupported type for Stems (Values)"),
        }
    }
}

//---------------------
// ImPlot_PlotInfLines
//---------------------
pub fn ImPlot_PlotInfLines(args: anytype) void {
    const T = @TypeOf(args);
    const label = if (@hasField(T, "label")) args.label else "InfLines";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count'");
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);

    const typ = @TypeOf(args.values[0]);
    const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
    const func = @field(ip, "ImPlot_PlotInfLines" ++ "_" ++ getTypeSuffix(typ, ""));
    func(label, args.values, count, flags, offset, stride);
}

//-------------------------------
// ImPlot_PlotPieChart()
//-------------------------------
pub fn ImPlot_PlotPieChart(args: anytype) void {
    const T = @TypeOf(args);
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    // Required arguments
    if (!@hasField(T, "labels")) @compileError("Missing 'labels'");
    if (!@hasField(T, "values")) @compileError("Missing 'values'");
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count'");

    // Default value settings
    const x = if (@hasField(T, "x")) args.x else @as(f64, 0.0);
    const y = if (@hasField(T, "y")) args.y else @as(f64, 0.0);
    const radius = if (@hasField(T, "radius")) args.radius else @as(f64, 0.5);
    const angle0 = if (@hasField(T, "angle0")) args.angle0 else @as(f64, 90.0);
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);

    const typ = @TypeOf(args.values[0]);
    if (@hasField(T, "fmt")) { // --- Case: Using Formatter ---
        const fmt_data = if (@hasField(T, "fmt_data")) args.fmt_data else null;
        const func = @field(ip, "ImPlot_PlotPieChart" ++ "_" ++ getTypeSuffix(typ, "StrFormatter"));
        func(args.labels, args.values, count, x, y, radius, args.fmt, fmt_data, angle0, flags);
    } else { // --- Case: Using standard label_fmt (string) ---
        const label_fmt = if (@hasField(T, "label_fmt")) args.label_fmt else "%.1f";
        const func = @field(ip, "ImPlot_PlotPieChart" ++ "_" ++ getTypeSuffix(typ, "Str"));
        func(args.labels, args.values, count, x, y, radius, label_fmt, angle0, flags);
    }
}

//--------------------
// ImPlot_PlotHeatmap
//--------------------
pub fn ImPlot_PlotHeatmap(args: anytype) void {
    const T = @TypeOf(args);
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    // Required arguments
    const label = if (@hasField(T, "label")) args.label else "Heatmap";
    if (!@hasField(T, "values")) @compileError("Missing 'values'");
    const rows = if (@hasField(T, "rows")) args.rows else @compileError("Missing 'rows'");
    const cols = if (@hasField(T, "cols")) args.cols else @compileError("Missing 'cols'");

    // Default value settings (Compatible with Ex version arguments)
    const scale_min = if (@hasField(T, "scale_min")) args.scale_min else @as(f64, 0.0);
    const scale_max = if (@hasField(T, "scale_max")) args.scale_max else @as(f64, 0.0);
    const label_fmt = if (@hasField(T, "label_fmt")) args.label_fmt else "%.1f";
    const bound_min = if (@hasField(T, "bound_min")) args.bound_min else ip.ImPlotPoint{ .x = 0, .y = 0 };
    const bounds_max = if (@hasField(T, "bounds_max")) args.bounds_max else ip.ImPlotPoint{ .x = 1, .y = 1 };
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);

    const typ = @TypeOf(args.values[0]);
    const func = @field(ip, "ImPlot_PlotHeatmap" ++ "_" ++ getTypeSuffix(typ, ""));
    return func(label, args.values, rows, cols, scale_min, scale_max, label_fmt, bound_min, bounds_max, flags);
}

//----------------------
// ImPlot_PlotHistogram
//----------------------
pub fn ImPlot_PlotHistogram(args: anytype) f64 {
    const T = @TypeOf(args);
    const label = if (@hasField(T, "label")) args.label else "Histogram";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count'");
    const bins = if (@hasField(T, "bins")) args.bins else @as(c_int, -1);
    const bar_scale = if (@hasField(T, "bar_scale")) args.bar_scale else @as(f64, 1.0);
    const range = if (@hasField(T, "range")) args.range else ip.ImPlotRange{ .Min = 0, .Max = 0 };
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);

    const typ = @TypeOf(args.values[0]);
    const func = @field(ip, "ImPlot_PlotHistogram" ++ "_" ++ getTypeSuffix(typ, ""));
    return func(label, args.values, count, bins, bar_scale, range, flags);
}

//-------------------------------
// ImPlot_PlotHistogram2D()
//-------------------------------
pub fn ImPlot_PlotHistogram2D(args: anytype) f64 {
    const T = @TypeOf(args);
    if (@typeInfo(T) != .@"struct") @compileError("Args must be a struct literal");

    // Required arguments
    const label = if (@hasField(T, "label")) args.label else "Histogram2D";
    if (!@hasField(T, "xs")) @compileError("Missing 'xs'");
    if (!@hasField(T, "ys")) @compileError("Missing 'ys'");
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count'");

    // Default value settings (Compatible with Ex version arguments)
    // Defaults to using Sturges algorithm
    const x_bins = if (@hasField(T, "x_bins")) args.x_bins else ip.ImPlotBin_Sturges;
    const y_bins = if (@hasField(T, "y_bins")) args.y_bins else ip.ImPlotBin_Sturges;
    const range = if (@hasField(T, "range")) args.range else ip.ImPlotRect{ .X = .{ .Min = 0, .Max = 0 }, .Y = .{ .Min = 0, .Max = 0 } };

    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const typ = @TypeOf(args.xs[0]);
    const func = @field(ip, "ImPlot_PlotHistogram2D" ++ "_" ++ getTypeSuffix(typ, ""));
    return func(label, args.xs, args.ys, count, x_bins, y_bins, range, flags);
}

//--------------------
// ImPlot_PlotDigital
//--------------------
pub fn ImPlot_PlotDigital(args: anytype) void {
    const T = @TypeOf(args);
    const label = if (@hasField(T, "label")) args.label else "Digital";
    const count = if (@hasField(T, "count")) args.count else @compileError("Missing 'count'");
    const flags = if (@hasField(T, "flags")) args.flags else @as(c_int, 0);
    const offset = if (@hasField(T, "offset")) args.offset else @as(c_int, 0);

    const typ = @TypeOf(args.xs[0]);
    const stride = if (@hasField(T, "stride")) args.stride else @as(c_int, @intCast(@sizeOf(typ)));
    const func = @field(ip, "ImPlot_PlotDigital" ++ "_" ++ getTypeSuffix(typ, ""));
    return func(label, args.xs, args.ys, count, flags, offset, stride);
}
