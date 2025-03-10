const std = @import("std");
const math = @import("std").math;
const fonts = @import("fonts.zig");

const c = @cImport ({
  @cInclude ("stdlib.h");
});

const ig = @import ("imgui.zig");
const ip = @import("implot.zig");

pub const IMPLOT_AUTO: f32 = -1;
pub const INFINITY_f32 = std.math.inf(f32);
pub const INFINITY_f64 = std.math.inf(f64);
pub const NaN_f32      = std.math.nan(f32);
pub const NaN_f64      = std.math.nan(f64);
pub fn stride(value:anytype) c_int {
  return @sizeOf(@TypeOf(value));
}

const Allocator = std.mem.Allocator;
const ArenaAllocator = std.heap.ArenaAllocator;

pub const PI = 3.14159265358979323846;

// Represents a 2D vector with float coordinates.
pub const Vector2f = struct {
    x: f32,
    y: f32,

    pub fn init(x: f32, y: f32) Vector2f {
        return Vector2f{x, y};
    }
};

// Represents wave data with double precision.
pub const WaveData = struct {
    x: f64,
    amp: f64,
    freq: f64,
    offset: f64,

    pub fn init(x: f64, amp: f64, freq: f64, offset: f64) WaveData {
        return WaveData{x, amp, freq, offset};
    }
};

pub fn SineWave(data: ?*anyopaque, idx: c_int, point: [*c]ip.ImPlotPoint ) callconv(.C) ?*anyopaque  {
    const fdata = @as([*c]f32,@ptrCast(@alignCast(data.?))).*;
    const fidx =  @as(f32,@floatFromInt(idx));
    point.*.x = fidx;
    point.*.y = math.sin(fdata * fidx );
    return @as(?*anyopaque, @ptrCast(point));
}

pub fn SawWave(data: *?anyopaque, idx: u32, point: [*c]ip.ImPlotPoint) callconv(.C) ?*anyopaque {
    const wd = @as([*c]WaveData,@ptrCast(@alignCast(data.?))).*;
    const t = @as(f64,@floatFromInt(idx));
    point.*.x = wd.x + t;
    point.*.y = wd.amp * 2.0 * (wd.freq * (wd.x + t) - math.floor(0.5 + wd.freq * (wd.x + t)));
    return @as(?*anyopaque, @ptrCast(point));
}

pub fn Spiral(data: *?anyopaque, idx: u32, point: [*c]ip.ImPlotPoint) callconv(.C) ?*anyopaque {
    const wd = @as([*c]WaveData,@ptrCast(@alignCast(data.?))).*;
    const t = @as(f64,@floatFromInt(idx));
    point.*.x = wd.x + t;
    point.*.y = wd.amp * t;
    return @as(?*anyopaque, @ptrCast(point));
}

// Represents a point with double precision for plotting.
pub const ImPlotPoint = struct {
    x: f64,
    y: f64,
};

// Helper function to get random float between min and max.
pub fn RandomRange(min: f32, max: f32) f32 {
    return min +  @as(f32,@floatFromInt(c.rand())) * ( max - min) / (@as(f32,@floatFromInt(c.RAND_MAX)));
}

// Returns a random color.
pub fn RandomColor() ig.ImVec4 {
    return ig.ImVec4{
        .x = RandomRange(0.0, 1.0),
        .y = RandomRange(0.0, 1.0),
        .z = RandomRange(0.0, 1.0),
        .w = 1.0,
    };
}

// Helper function to get random Gaussian number.
pub fn RandomGauss() f64 {
    var V1: f64 = 0;
    var V2: f64 = 0;
    var S: f64 = 0;
    var phase: i32 = 0;
    var X: f64 = 0;
    if (phase == 0) {
        var U1: f64 = 0;
        var U2: f64 = 0;
        while (true) {
            U1 =  @as(f64,@floatFromInt(c.rand())) / c.RAND_MAX;
            U2 =  @as(f64,@floatFromInt(c.rand())) / c.RAND_MAX;
            V1 = 2 * U1 - 1;
            V2 = 2 * U2 - 1;
            S = V1 * V1 + V2 * V2;
            if (S >= 1 or S == 0) continue;
            break;
        }
        X = V1 * math.sqrt(-2 * math.log(f64, math.e, S) / S);
    } else {
        X = V2 * math.sqrt(-2 * math.log(f64, math.e, S) / S);
    }
    phase = 1 - phase;
    return X;
}

// Represents normal distribution.
pub fn NormalDistribution(data:[*]f64, mean:f64, sd:f64, N:usize) void {
  for (0..N) |i| {
    data[i] = RandomGauss() * sd + mean;
  }
}

// TODO
//pub const NormalDistribution = struct {
//    data: [*c]f64,
//    pub fn init(allocator: Allocator, mean: f64, sd: f64, N: usize) !NormalDistribution {
//        const self = NormalDistribution{
//            .data = try allocator.alloc(f64, N),
//        };
//        for (self.data) |*item| {
//            item.* = RandomGauss() * sd + mean;
//        }
//        return self;
//    }
//    pub fn deinit(self: *NormalDistribution, allocator: *Allocator) void {
//        allocator.free(self.data);
//    }
//};

// Represents a scrolling buffer.
pub const ScrollingBuffer = struct {
    max_size: usize,
    offset: usize,
    data: std.ArrayList(ig.ImVec2),

    pub fn init(allocator: *Allocator, max_size: usize) !ScrollingBuffer {
        return ScrollingBuffer{
            .max_size = max_size,
            .offset = 0,
            .data = std.ArrayList(ig.ImVec2).init(allocator),
        };
    }

    pub fn addPoint(self: *ScrollingBuffer, x: f32, y: f32) !void {
        if (self.data.items.len < self.max_size) {
            try self.data.append(ig.ImVec2{x, y});
        } else {
            self.data.items[self.offset] = ig.ImVec2{x, y};
            self.offset = (self.offset + 1) % self.max_size;
        }
    }

    pub fn erase(self: *ScrollingBuffer) void {
        self.data.resize(0);
        self.offset = 0;
    }
};

// Represents a rolling buffer.
pub const RollingBuffer = struct {
    span: f32,
    data: std.ArrayList(ig.ImVec2),

    pub fn init(allocator: *Allocator) !RollingBuffer {
        return RollingBuffer{
            .span = 10.0,
            .data = std.ArrayList(ig.ImVec2).init(allocator),
        };
    }

    pub fn addPoint(self: *RollingBuffer, x: f32, y: f32) !void {
        const xmod = math.fmod(x, self.span);
        if (self.data.items.len > 0 and xmod < self.data.items[self.data.items.len - 1].x) {
            self.data.resize(0);
        }
        try self.data.append(ig.ImVec2{xmod, y});
    }
};

// Represents a huge dataset for time-based data.
pub const HugeTimeData = struct {
    ts: [*c]f64,
    ys: [*c]f64,

    pub const SIZE = 60 * 60 * 24 * 366;

    pub fn init(allocator: *Allocator, min: f64) !HugeTimeData {
        var self = HugeTimeData{
            .ts = try allocator.alloc(f64, SIZE),
            .ys = try allocator.alloc(f64, SIZE),
        };
        for (self.ts, 0..) |*t, i| {
            t.* = min + i;
            self.ys[i] = HugeTimeData.getY(t.*);
        }
        return self;
    }

    pub fn deinit(self: *HugeTimeData, allocator: *Allocator) void {
        allocator.free(self.ts);
        allocator.free(self.ys);
    }

    fn getY(t: f64) f64 {
        return 0.5 + 0.25 * math.sin(t / 86400 / 12) + 0.005 * math.sin(t / 3600);
    }
};

//-------------
// Sparkline()
//-------------
pub fn Sparkline(id: anytype, values: anytype, count: c_int, min_v: f32, max_v: f32, offset: c_int, col: ig.ImVec4, size: ig.ImVec2) void {
    ip.ImPlot_PushStyleVar_Vec2(ip.ImPlotStyleVar_PlotPadding, .{ .x = 0, .y = 0 });
    if (ip.ImPlot_BeginPlot(id, .{.x=size.x,.y=size.y}, ip.ImPlotFlags_CanvasOnly)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(0, @floatFromInt(count - 1), min_v, max_v, ig.ImGuiCond_Always);
        ip.ImPlot_SetNextLineStyle(.{.x = col.x, .y = col.y, .z = col.z, .w = col.w}, IMPLOT_AUTO);
        ip.ImPlot_SetNextFillStyle(.{.x = col.x, .y = col.y, .z = col.z, .w = col.w}, 0.25);
        try ip.ImPlot_PlotLineEx(id, values, count, 1.0, 0, ip.ImPlotLineFlags_Shaded, offset, stride(values[0]));
        ip.ImPlot_EndPlot();
    }
    ip.ImPlot_PopStyleVar(1);
}

//--------------
//--- zoomGlass
//--------------
pub fn zoomGlass(pTextureID:*ig.GLuint, itemWidth:i32, itemPosTop:ig.ImVec2, itemPosEnd:ig.ImVec2) void {
  //# itemPosTop and itemPosEnd are absolute position in main window.
  if(ig.igBeginItemTooltip()){
    defer ig.igEndTooltip();
    const itemHeight:i32 = @intFromFloat(itemPosEnd.y - itemPosTop.y);
    const my_tex_w:f32 = @floatFromInt(itemWidth);
    const my_tex_h:f32 = @floatFromInt(itemHeight);
    const wkSize = ig.igGetMainViewport().*.WorkSize;
    ig.loadTextureFromBuffer(pTextureID                           //# TextureID
                        , @intFromFloat(itemPosTop.x)             //# x start pos
                        , @intFromFloat(wkSize.y - itemPosEnd.y)  //# y start pos
                        , itemWidth ,itemHeight);                 //# Image width and height must be 2^n.
    //#igText("lbp: (%.2f, %.2f)", pio.MousePos.x, pio.MousePos.y)
    const pio = ig.igGetIO();
    const region_sz = 32.0;
    var region_x = pio.*.MousePos.x - itemPosTop.x - region_sz * 0.5;
    var region_y = pio.*.MousePos.y - itemPosTop.y - region_sz * 0.5;
    const zoom = 4.0;
    if(region_x < 0.0){
      region_x = 0.0;
    }
    else if(region_x > (my_tex_w - region_sz)){
      region_x = my_tex_w - region_sz;
    }
    if(region_y < 0.0){
      region_y = 0.0;
    } else if(region_y > my_tex_h - region_sz){
      region_y = my_tex_h - region_sz;
    }
    const uv0 = ig.ImVec2{.x = region_x / my_tex_w, .y = region_y / my_tex_h};
    const uv1 = ig.ImVec2{.x = (region_x + region_sz) / my_tex_w, .y = (region_y + region_sz) / my_tex_h};
    const tint_col =   ig.ImVec4{.x = 1.0,  .y = 1.0,  .z = 1.0,  .w = 1.0}; // # No tint
    const border_col = ig.ImVec4{.x = 0.22, .y = 0.56, .z = 0.22, .w = 1.0}; // # Green
    ig.igText(fonts.ICON_FA_MAGNIFYING_GLASS ++ "  4 x");
    ig.igImage(pTextureID.*, ig.ImVec2{.x = region_sz * zoom, .y = region_sz * zoom}, uv0, uv1, tint_col, border_col);
  }
}

//---------------
//--- setTooltip
//---------------
pub fn setTooltip(str:[:0]const u8, delay:ig.ImGuiHoveredFlags) void{
  if(ig.igIsItemHovered(delay)){
    if(ig.igBeginTooltip()){
      ig.igText(str.ptr);
      ig.igEndTooltip();
    }
  }
}

//-----------------
//--- setTooltipEx
//-----------------
pub fn setTooltipEx(str:[:0]const u8, delay:ig.ImGuiHoveredFlags, color:ig.ImVec4) void{
  if(ig.igIsItemHovered(delay)){
    if(ig.igBeginTooltip()){
      ig.igPushStyleColor_Vec4(ig.ImGuiCol_Text, color);
      ig.igText(str.ptr);
      ig.igPopStyleColor(1);
      ig.igEndTooltip();
    }
  }
}

//---------
//--- vec2
//---------
pub fn vec2(x:f32, y:f32) ig.ImVec2 {
  return .{.x = x, .y = y};
}

//---------
//--- vec4
//---------
pub fn vec4(x:f32, y:f32, z:f32, w:f32) ig.ImVec4 {
  return .{.x = x, .y = y, .z = z, .w = w};
}
