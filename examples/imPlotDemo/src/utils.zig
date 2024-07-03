// implot.zig

const std = @import("std");
const math = @import("std").math;

pub const c = @cImport ({
  @cInclude ("stdlib.h");
});

pub const ig = @cImport ({
  @cInclude ("cimgui.h");
  @cInclude ("cimplot.h");
});
const ip = @import("zimplot.zig");

pub const IMPLOT_AUTO: f32 = -1;
pub const IMPLOT_AUTO_COL =  ig.ImVec4{.x = 0, .y = 0, .z = 0, .w = -1};

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

pub fn SineWave(idx: u32, wave_data: *WaveData) ImPlotPoint {
    const t = idx;
    return ImPlotPoint{
        .x = wave_data.x + t,
        .y = wave_data.amp * math.sin(wave_data.freq * (wave_data.x + t) + wave_data.offset),
    };
}

pub fn SawWave(idx: u32, wave_data: *WaveData) ImPlotPoint {
    const t = idx;
    return ImPlotPoint{
        .x = wave_data.x + t,
        .y = wave_data.amp * 2.0 * (wave_data.freq * (wave_data.x + t) - math.floor(0.5 + wave_data.freq * (wave_data.x + t))),
    };
}

pub fn Spiral(idx: u32, wave_data: *WaveData) ImPlotPoint {
    const t = idx;
    return ImPlotPoint{
        .x = wave_data.x + t,
        .y = wave_data.amp * t,
    };
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

// Represents a 4-component vector with float coordinates.
//pub const ImVec4 = struct {
//    x: f32,
//    y: f32,
//    z: f32,
//    w: f32,
//};

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

// Plot utilities

//-------------
// Sparkline()
//-------------
//pub fn Sparkline(id: []const u8, values: []const f32, count: i32, min_v: f32, max_v: f32, offset: i32, col: ig.ImVec4, size: ig.ImVec2) void {
//    // Implement sparkline plotting
//}
pub fn Sparkline(id: anytype, values: anytype, count: c_int, min_v: f32, max_v: f32, offset: c_int, col: anytype, size: ig.ImVec2) void {
    ig.ImPlot_PushStyleVar_Vec2(ig.ImPlotStyleVar_PlotPadding, .{ .x = 0, .y = 0 });
    if (ig.ImPlot_BeginPlot(id, size, ig.ImPlotFlags_CanvasOnly)) {
        ig.ImPlot_SetupAxes(null, null, ig.ImPlotAxisFlags_NoDecorations, ig.ImPlotAxisFlags_NoDecorations);
        ig.ImPlot_SetupAxesLimits(0, @floatFromInt(count - 1), min_v, max_v, ig.ImGuiCond_Always);
        ig.ImPlot_SetNextLineStyle(col, IMPLOT_AUTO);
        ig.ImPlot_SetNextFillStyle(col, 0.25);
        try ip.ImPlot_PlotLineScaleEx(id, values, count, 1.0, 0, ig.ImPlotLineFlags_Shaded, offset, @sizeOf(@TypeOf(values[0])));
        ig.ImPlot_EndPlot();
    }
    ig.ImPlot_PopStyleVar(1);
}
//
//pub fn PlotCandlestick(label_id: []const u8, xs: []const f64, opens: []const f64, closes: []const f64, lows: []const f64, highs: []const f64, count: i32, tooltip: bool = true, width_percent: f32 = 0.25, bullCol: ImVec4 = ImVec4{.x = 0, .y = 1, .z = 0, .w = 1}, bearCol: ImVec4 = ImVec4{.x = 1, .y = 0, .z = 0, .w = 1}) void {
//    // Implement candlestick plotting
//}
//
//pub fn StyleSeaborn() void {
//    // Implement seaborn style customization
//}
//
//// Demo Functions
//
//pub fn Demo_Help() void {
//    // Implement help demo
//}
//
//pub fn ButtonSelector(label: []const u8, b: *ImGuiMouseButton) void {
//    // Implement button selector
//}
//
//pub fn ModSelector(label: []const u8, k: *i32) void {
//    // Implement modifier selector
//}
//
//pub fn InputMapping(label: []const u8, b: ?*ImGuiMouseButton, k: ?*i32) void {
//    // Implement input mapping
//}
//
//pub fn ShowInputMapping() void {
//    // Implement input mapping display
//}
//
//pub fn Demo_Arrays() void {
//    // Implement demo for arrays
//}
//
//pub fn Demo_Annotations() void {
//    // Implement demo for annotations
//}
//
//pub fn Demo_Markers() void {
//    // Implement demo for markers
//}
//
//pub fn Demo_Legends() void {
//    // Implement demo for legends
//}
//
//pub fn Demo_ChildWindows() void {
//    // Implement demo for child windows
//}
//
//pub fn Demo_DragAndDrop() void {
//    // Implement demo for drag and drop
//}
//
//pub fn Demo_Tables() void {
//    // Implement demo for tables
//}
//
//pub fn Demo_Querying() void {
//    // Implement demo for querying
//}
//
//pub fn Demo_Plots() void {
//    // Implement demo for plots
//}
