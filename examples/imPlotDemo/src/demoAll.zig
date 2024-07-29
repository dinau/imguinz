//
// 2024/07: Converted to Zig lang. from C++ by dinau
//
const std = @import("std");
const math = @import("std").math;
//
const ig = @import("imgui.zig");
const ip = @import("implot.zig");
//
const utils = @import("utils.zig");
const fonts = @import("fonts.zig");
//
pub const c = @cImport({
    @cInclude("stdio.h");
    @cInclude("stdlib.h");
});

//----------------
// imPlotDemoTabs
//----------------
pub fn imPlotDemoTabs() !void {
    if (ig.igBeginTabBar("ImPlotDemoTabs", 0)) {
        defer ig.igEndTabBar();
        if (ig.igBeginTabItem(fonts.ICON_FA_CHART_LINE ++ " Plots", null, 0)) {
            defer ig.igEndTabItem();
            try demoHeader("Line Plots  " ++ fonts.ICON_FA_CHART_LINE, demo_LinePlots);
            try demoHeader("Filled Line Plots", demo_FilledLinePlots);
            try demoHeader("Shaded Plots##", demo_ShadedPlots);
            try demoHeader("Scatter Plots", demo_ScatterPlots);
            //  demoHeader("Realtime Plots", demo_RealtimePlots);
            try demoHeader("Stairstep Plots", demo_StairstepPlots);
            try demoHeader("Bar Plots", demo_BarPlots);
            try demoHeader("Bar Groups", demo_BarGroups);
            try demoHeader("Bar Stacks " ++ fonts.ICON_FA_CHART_BAR, demo_BarStacks);
            try demoHeader("Error Bars", demo_ErrorBars); // TODO
            try demoHeader("Stem Plots##", demo_StemPlots);
            try demoHeader("Infinite Lines", demo_InfiniteLines);
            try demoHeader("Pie Charts " ++ fonts.ICON_FA_CHART_PIE, demo_PieCharts);
            try demoHeader("Heatmaps", demo_Heatmaps);
            try demoHeader("Histogram", demo_Histogram);
            try demoHeader("Histogram 2D", demo_Histogram2D);
            //  demoHeader("Digital Plots", demo_DigitalPlots);
            try demoHeader("Images", demo_Images);
            try demoHeader("Markers and Text", demo_MarkersAndText);
            try demoHeader("NaN Values", demo_NaNValues);
        }
        if (ig.igBeginTabItem(fonts.ICON_FA_CHART_AREA ++ " Subplots", null, 0)) {
            defer ig.igEndTabItem();
            try demoHeader("Sizing", demo_SubplotsSizing);
            try demoHeader("Item Sharing", demo_SubplotItemSharing);
            try demoHeader("Axis Linking", demo_SubplotAxisLinking);
            try demoHeader("Tables", demo_Tables);
        }
        if (ig.igBeginTabItem(fonts.ICON_FA_CHART_COLUMN ++ " Axes", null, 0)) {
            defer ig.igEndTabItem();
            try demoHeader("Log Scale", demo_LogScale);
            try demoHeader("Symmetric Log Scale", demo_SymmetricLogScale);
            //         demoHeader("Time Scale", demo_TimeScale);
            try demoHeader("Custom Scale", demo_CustomScale);
            try demoHeader("Multiple Axes", demo_MultipleAxes);
            try demoHeader("Tick Labels", demo_TickLabels);
            try demoHeader("Linked Axes", demo_LinkedAxes);
            try demoHeader("Axis Constraints", demo_AxisConstraints);
            try demoHeader("Equal Axes", demo_EqualAxes);
            try demoHeader("Auto-Fitting Data", demo_AutoFittingData);
        }
        if (ig.igBeginTabItem("Tools", null, 0)) {
            defer ig.igEndTabItem();
            try demoHeader("Offset and Stride", demo_OffsetAndStride);
            try demoHeader("Drag Points", demo_DragPoints);
            //         demoHeader("Drag Lines", demo_DragLines);
            try demoHeader("Drag Rects", demo_DragRects);
            //         demoHeader("Querying", demo_Querying);
            //         demoHeader("Annotations", demo_Annotations);
            //         demoHeader("Tags", demo_Tags);
            //         demoHeader("Drag and Drop", demo_DragAndDrop);
            //         demoHeader("Legend Options", demo_LegendOptions);
            //         demoHeader("Legend Popups", demo_LegendPopups);
            //         demoHeader("Colormap Widgets", demo_ColormapWidgets);
        }
        if (ig.igBeginTabItem(fonts.ICON_FA_WRENCH ++ " Custom", null, 0)) {
            defer ig.igEndTabItem();
            //         demoHeader("Custom Styles", demo_CustomStyles);
            //         demoHeader("Custom Data and Getters", demo_CustomDataAndGetters);
            //         demoHeader("Custom Rendering", demo_CustomRendering);
            //         demoHeader("Custom Plotters and Tooltips", demo_CustomPlottersAndTooltips);
        }
        if (ig.igBeginTabItem("Config", null, 0)) {
            defer ig.igEndTabItem();
            try demo_Config();
        }
        if (ig.igBeginTabItem("Help", null, 0)) {
          defer ig.igEndTabItem();
          try demo_Help();
        }
    }
}
fn demoHeader(label: anytype, demo: anytype) !void {
    if (ig.igTreeNodeEx_Str(label, 0)) {
        try demo();
        ig.igTreePop();
    }
}

//---------------------
// demo_SubplotsSizing
//---------------------
fn demo_SubplotsSizing() !void {
    const st = struct {
      var flags = ip.ImPlotSubplotFlags_ShareItems | ip.ImPlotSubplotFlags_NoLegend;
      var rows:c_int  = 3;
      var cols:c_int  = 3;
      var rratios = [_]f32{5,1,1,1,1,1};
      var cratios = [_]f32{5,1,1,1,1,1};
    };
    _ = ig.igCheckboxFlags_IntPtr("ImPlotSubplotFlags_NoResize", &st.flags, ip.ImPlotSubplotFlags_NoResize);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotSubplotFlags_NoTitle",  &st.flags, ip.ImPlotSubplotFlags_NoTitle);

    _ = ig.igSliderInt("Rows",&st.rows,1,5, "%d", 0);
    _ = ig.igSliderInt("Cols",&st.cols,1,5, "%d", 0);
    if ( (st.rows < 1) or (st.cols < 1)) {
        ig.igTextColored(.{.x=1, .y=0, .z=0, .w=1}, "Nice try, but the number of rows and columns must be greater than 0!");
        return;
    }
    _ = ig.igDragScalarN("Row Ratios",ig.ImGuiDataType_Float,&st.rratios,st.rows,0.01,null,null,null,0);
    _ = ig.igDragScalarN("Col Ratios",ig.ImGuiDataType_Float,&st.cratios,st.cols,0.01,null,null,null,0);
    if (ip.ImPlot_BeginSubplots("My Subplots", st.rows, st.cols, .{.x=-1, .y=400}, st.flags, &st.rratios, &st.cratios)) {
        var id:c_int = 0;
        for (0..@intCast((st.rows * st.cols)))|i| {
            if (ip.ImPlot_BeginPlot("", .{.x = 0, .y = 0}, ip.ImPlotFlags_NoLegend)) {
                ip.ImPlot_SetupAxes(null,null,ip.ImPlotAxisFlags_NoDecorations,ip.ImPlotAxisFlags_NoDecorations);
                 var fi = 0.01 * (@as(f32,@floatFromInt(i)) + 1);
                if (st.rows*st.cols > 1) {
                    var vec4 :ig.ImVec4 = undefined;
                    ip.ImPlot_SampleColormap(@ptrCast(&vec4), @as(f32,@floatFromInt(i)) / @as(f32,@floatFromInt((st.rows * st.cols - 1))), ip.ImPlotColormap_Jet);
                    // TODO
                    ip.ImPlot_SetNextLineStyle(.{.x = vec4.x, .y = vec4.y, .z = vec4.z, .w = vec4.w} , utils.IMPLOT_AUTO);
                    //ip.ImPlot_SetNextLineStyle(vec4, utils.IMPLOT_AUTO);
                }
                var label:[16]u8 = undefined;
                const slLabel = try std.fmt.bufPrint(&label, "data{}", .{id});
                id += 1;
                ip.ImPlot_PlotLineG(slLabel.ptr, utils.SineWave, &fi, 1000, 0);
                ip.ImPlot_EndPlot();
            }
        }
        ip.ImPlot_EndSubplots();
    }
}

//-------------------------
// demo_SubplotItemSharing
//-------------------------
fn demo_SubplotItemSharing() !void {
    const st = struct {
      var id = [_]i32{0,1,2,3,4,5};
      var curj:c_int = -1;
      var flags = ip.ImPlotSubplotFlags_ShareItems;
    };
    _ = ig.igCheckboxFlags_IntPtr("ImPlotSubplotFlags_ShareItems", &st.flags, ip.ImPlotSubplotFlags_ShareItems);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotSubplotFlags_ColMajor",   &st.flags, ip.ImPlotSubplotFlags_ColMajor);
    ig.igBulletText("Drag and drop items from the legend onto plots (except for 'common')");
    const rows:c_int = 2;
    const cols:c_int = 3;
    if (ip.ImPlot_BeginSubplots("##ItemSharing", rows, cols, .{.x=-1, .y=400}, st.flags, null, null)) {
        ip.ImPlot_SetupLegend(ip.ImPlotLocation_South, ip.ImPlotLegendFlags_Sort | ip.ImPlotLegendFlags_Horizontal);
        for (0..rows*cols)|i| {
            if (ip.ImPlot_BeginPlot("", .{ .x = -1, .y = 0 }, 0)) {
                var fc:f32 = 0.01;
                ip.ImPlot_PlotLineG("common",utils.SineWave, &fc,1000, 0);
                for (0..6)|j| {
                    if (st.id[j] == i) {
                        var label:[8]u8 = undefined;
                        var fj:f32= 0.01 * (@as(f32,@floatFromInt(j))+2);
                        const slLabel = try std.fmt.bufPrint(&label, "data{}", .{j});
                        ip.ImPlot_PlotLineG(slLabel.ptr,utils.SineWave, &fj, 1000, 0);
                        if (ip.ImPlot_BeginDragDropSourceItem(slLabel.ptr, 0)) {
                            st.curj = @intCast(j);
                            _ = ig.igSetDragDropPayload("MY_DND", null, 0, 0);
                            var vec4: ig.ImVec4 = undefined;
                            ip.ImPlot_GetLastItemColor(@ptrCast(&vec4));
                            // TODO
                            ip.ImPlot_ItemIcon_Vec4(.{.x = vec4.x, .y = vec4.y, .z = vec4.z, .w = vec4.w}); ig.igSameLine(0, -1.0);
                            ig.igTextUnformatted(slLabel.ptr, "\n");
                            ip.ImPlot_EndDragDropSource();
                        }
                    }
                }
                if (ip.ImPlot_BeginDragDropTargetPlot()) {
                    if (null != ig.igAcceptDragDropPayload("MY_DND", 0)){
                        st.id[@intCast(st.curj)] = @intCast(i);
                    }
                    ip.ImPlot_EndDragDropTarget();
                }
                ip.ImPlot_EndPlot();
            }
        }
        ip.ImPlot_EndSubplots();
    }
}

//-------------------------
// demo_SubplotAxisLinking
//-------------------------
fn demo_SubplotAxisLinking() !void {
  const st = struct {
    var flags = ip.ImPlotSubplotFlags_LinkRows | ip.ImPlotSubplotFlags_LinkCols;
  };
    _ = ig.igCheckboxFlags_IntPtr("ImPlotSubplotFlags_LinkRows", &st.flags, ip.ImPlotSubplotFlags_LinkRows);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotSubplotFlags_LinkCols", &st.flags, ip.ImPlotSubplotFlags_LinkCols);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotSubplotFlags_LinkAllX", &st.flags, ip.ImPlotSubplotFlags_LinkAllX);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotSubplotFlags_LinkAllY", &st.flags, ip.ImPlotSubplotFlags_LinkAllY);

    const rows = 2;
    const cols = 2;
    if (ip.ImPlot_BeginSubplots("##AxisLinking", rows, cols, .{.x=-1, .y=400}, st.flags, null, null)) {
        for (0..(rows * cols))|_| {
            if (ip.ImPlot_BeginPlot("", .{ .x = -1, .y = 0 }, 0)) {
                ip.ImPlot_SetupAxesLimits(0, 1000, -1, 1, ip.ImPlotCond_Once);
                var fc:f32 = 0.01;
                ip.ImPlot_PlotLineG("common",utils.SineWave, &fc, 1000, 0);
                ip.ImPlot_EndPlot();
            }
        }
        ip.ImPlot_EndSubplots();
    }
}

//---------------
// demo_LogScale
//---------------
fn demo_LogScale() !void {
    var xs: [1001]f64 = undefined;
    var ys1: [1001]f64 = undefined;
    var ys2: [1001]f64 = undefined;
    var ys3: [1001]f64 = undefined;
    for (0..1001) |i| {
        xs[i] = @as(f64, @floatFromInt(i)) * 0.1;
        ys1[i] = math.sin(xs[i]) + 1;
        ys2[i] = math.log(f64, math.e, xs[i]);
        ys3[i] = math.pow(f64, 10.0, xs[i]);
    }
    if (ip.ImPlot_BeginPlot("Log Plot", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxisScale_PlotScale(ip.ImAxis_X1, ip.ImPlotScale_Log10);
        ip.ImPlot_SetupAxesLimits(0.1, 100, 0, 10, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotLineXy("f(x) = x",        &xs, &xs,  1001);
        try ip.ImPlot_PlotLineXy("f(x) = sin(x)+1", &xs, &ys1, 1001);
        try ip.ImPlot_PlotLineXy("f(x) = log(x)",   &xs, &ys2, 1001);
        try ip.ImPlot_PlotLineXy("f(x) = 10^x",     &xs, &ys3, 21);
        ip.ImPlot_EndPlot();
    }
}

//---------------
// demo_LogScale
//---------------
fn demo_SymmetricLogScale() !void {
    var  xs:[1001]f64 = undefined;
    var  ys1:[1001]f64 = undefined;
    var  ys2:[1001]f64 = undefined;
    for (0..1001)|i| {
        xs[i]  = @as(f64,@floatFromInt(i)) * 0.1 - 50;
        ys1[i] = math.sin(xs[i]);
        ys2[i] = @as(f64,@floatFromInt(i)) * 0.002 - 1;
    }
    if (ip.ImPlot_BeginPlot("SymLog Plot", .{.x=-1, .y=0} ,0)) {
        ip.ImPlot_SetupAxisScale_PlotScale(ip.ImAxis_X1, ip.ImPlotScale_SymLog);
        try ip.ImPlot_PlotLineXy("f(x) = a*x+b"       ,&xs, &ys2,1001);
        try ip.ImPlot_PlotLineXy("f(x) = math.sin(x)" ,&xs, &ys1,1001);
        ip.ImPlot_EndPlot();
    }
}

fn TransformForward_Sqrt(v:f64, data: ?*anyopaque) callconv(.C) f64  {
  _ = &data;
  return math.sqrt(v);
}

fn TransformInverse_Sqrt(v:f64, data: ?*anyopaque) callconv(.C) f64  {
  _ = &data;
  return v * v;
}

//------------------
// demo_CustomScale
//------------------
fn demo_CustomScale() !void {
    var v:[100]f32 = undefined;
    for (0..100)|i| {
        v[i] = @as(f32,@floatFromInt(i)) * 0.01;
    }
    if (ip.ImPlot_BeginPlot("Sqrt", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxis(ip.ImAxis_X1, "Linear", 0);
        ip.ImPlot_SetupAxis(ip.ImAxis_Y1, "Sqrt", 0);
        ip.ImPlot_SetupAxisScale_PlotTransform(ip.ImAxis_Y1, TransformForward_Sqrt, TransformInverse_Sqrt, null);
        ip.ImPlot_SetupAxisLimitsConstraints(ip.ImAxis_Y1, 0, utils.INFINITY_f64);
        try ip.ImPlot_PlotLineXy("##data" ,&v ,&v ,100);
        ip.ImPlot_EndPlot();
    }
}

//-------------------
// demo_MultipleAxes
//-------------------
fn demo_MultipleAxes() !void {
    var xs: [1001]f32 = undefined;
    var xs2:[1001]f32 = undefined;
    var ys1:[1001]f32 = undefined;
    var ys2:[1001]f32 = undefined;
    var ys3:[1001]f32 = undefined;
    for (0..1001)|i| {
        xs[i]  = @as(f32,@floatFromInt(i)) * 0.1;
        xs2[i] = xs[i] + 10.0;
        ys1[i] = math.sin(xs[i]) * 3 + 1;
        ys2[i] = math.cos(xs[i]) * 0.2 + 0.5;
        ys3[i] = math.sin(xs[i]+0.5) * 100 + 200;
    }

    const st = struct {
      var  x2_axis = true;
      var  y2_axis = true;
      var  y3_axis = true;
    };

    _ = ig.igCheckbox("X-Axis 2", &st.x2_axis);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckbox("Y-Axis 2", &st.y2_axis);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckbox("Y-Axis 3", &st.y3_axis);

    ig.igBulletText("You can drag axes to the opposite side of the plot.");
    ig.igBulletText("Hover over legend items to see which axis they are plotted on.");

    if (ip.ImPlot_BeginPlot("Multi-Axis Plot", .{.x=-1, .y=0}, 0)) {
        ip.ImPlot_SetupAxes("X-Axis 1", "Y-Axis 1", 0, 0);
        ip.ImPlot_SetupAxesLimits(0, 100, 0, 10, ip.ImPlotCond_Once);
        if (st.x2_axis) {
            ip.ImPlot_SetupAxis(ip.ImAxis_X2, "X-Axis 2",ip.ImPlotAxisFlags_AuxDefault);
            ip.ImPlot_SetupAxisLimits(ip.ImAxis_X2, 0, 100, ip.ImPlotCond_Once);
        }
        if (st.y2_axis) {
            ip.ImPlot_SetupAxis(ip.ImAxis_Y2, "Y-Axis 2",ip.ImPlotAxisFlags_AuxDefault);
            ip.ImPlot_SetupAxisLimits(ip.ImAxis_Y2, 0, 1, ip.ImPlotCond_Once);
        }
        if (st.y3_axis) {
            ip.ImPlot_SetupAxis(ip.ImAxis_Y3, "Y-Axis 3",ip.ImPlotAxisFlags_AuxDefault);
            ip.ImPlot_SetupAxisLimits(ip.ImAxis_Y3, 0, 300, ip.ImPlotCond_Once);
        }

        try ip.ImPlot_PlotLineXy("f(x) = x", &xs, &xs, 1001);
        if (st.x2_axis) {
            ip.ImPlot_SetAxes(ip.ImAxis_X2, ip.ImAxis_Y1);
            try ip.ImPlot_PlotLineXy("f(x) = math.sin(x)*3+1", &xs2, &ys1, 1001);
        }
        if (st.y2_axis) {
            ip.ImPlot_SetAxes(ip.ImAxis_X1, ip.ImAxis_Y2);
            try ip.ImPlot_PlotLineXy("f(x) = math.cos(x)*.2+.5", &xs, &ys2, 1001);
        }
        if (st.x2_axis and st.y3_axis) {
            ip.ImPlot_SetAxes(ip.ImAxis_X2, ip.ImAxis_Y3);
            try ip.ImPlot_PlotLineXy("f(x) = math.sin(x+.5)*100+200 ", &xs2, &ys3, 1001);
        }
        ip.ImPlot_EndPlot();
    }
}

//------------------
// MetricsFormatter
//------------------
fn MetricFormatter(value:f64, buff:[*c]u8, size:i32, data:?*anyopaque) callconv(.C) c_int {
    _ = &size;
    const unit = @as([*c]u8,@ptrCast(@alignCast(data.?)));
    const v = [_]f64{1000000000,1000000,1000,1,0.001,0.000001,0.000000001};
    const p = [_][*c]const u8{"G","M","k","","m","u","n"};
    if (value == 0) {
        return c.snprintf(buff ,@intCast(size), "0 %s", unit);
    }
    for (0..7)|i| {
        if (@abs(value) >= v[i]) {
          return c.snprintf(buff ,@intCast(size), "%g %s%s", value / v[i], p[i], unit);
        }
    }
    return c.snprintf(buff ,@intCast(size), "%g %s%s", value / v[6], p[6], unit);
}

//-----------------
// demo_TickLabels
//-----------------
fn demo_TickLabels() !void {
    const st = struct {
      var  custom_fmt    = true;
      var  custom_ticks  = false;
      var  custom_labels = true;
    };
    _ = ig.igCheckbox("Show Custom Format", &st.custom_fmt);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckbox("Show Custom Ticks", &st.custom_ticks);
    if (st.custom_ticks) {
        ig.igSameLine(0, -1.0);
        _ = ig.igCheckbox("Show Custom Labels", &st.custom_labels);
    }
    const pi:f64 = 3.14;
        //var ilabels =  [3][*c]const u8{ "Midterm Exam", "Final Exam", "Course Grade", };
    const pi_str = [_][*c]const u8{"PI"};
    const yticks = [_]f64{100,300,700,900};
    const ylabels = [_][*c]const u8{"One","Three","Seven","Nine"};
    const yticks_aux = [_]f64{0.2,0.4,0.6};
    const ylabels_aux = [_][*c]const u8{"A","B","C","D","E","F"};
    if (ip.ImPlot_BeginPlot("##Ticks", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxesLimits(2.5,5,0,1000, ip.ImPlotCond_Once);
        ip.ImPlot_SetupAxis(ip.ImAxis_Y2, null, ip.ImPlotAxisFlags_AuxDefault);
        ip.ImPlot_SetupAxis(ip.ImAxis_Y3, null, ip.ImPlotAxisFlags_AuxDefault);
        if (st.custom_fmt) {
            ip.ImPlot_SetupAxisFormat_Str(ip.ImAxis_X1, "%g ms");
            ip.ImPlot_SetupAxisFormat_PlotFormatter(ip.ImAxis_Y1, &MetricFormatter, @ptrCast(@constCast("Hz")));
            ip.ImPlot_SetupAxisFormat_Str(ip.ImAxis_Y2, "%g dB");
            ip.ImPlot_SetupAxisFormat_PlotFormatter(ip.ImAxis_Y3, &MetricFormatter, @ptrCast(@constCast("m")));
        }
        if (st.custom_ticks) {
            ip.ImPlot_SetupAxisTicks_doublePtr(ip.ImAxis_X1, &pi ,1 ,         if(st.custom_labels) &pi_str      else null, true);
            ip.ImPlot_SetupAxisTicks_doublePtr(ip.ImAxis_Y1, &yticks, 4 ,     if(st.custom_labels) &ylabels     else null, false);
            ip.ImPlot_SetupAxisTicks_doublePtr(ip.ImAxis_Y2, &yticks_aux, 3 , if(st.custom_labels) &ylabels_aux else null, false);
            ip.ImPlot_SetupAxisTicks_double(ip.ImAxis_Y3, 0, 1, 6 ,           if(st.custom_labels) &ylabels_aux else null, false);
        }
        ip.ImPlot_EndPlot();
    }
}

//-----------------
// demo_LinkedAxes
//-----------------
fn demo_LinkedAxes() !void {
    const st = struct {
      var lims: ip.ImPlotRect = .{ .X = .{ .Min = 0, .Max = 1 }, .Y = .{ .Min = 0, .Max = 1 } };
      var linkx = true;
      var linky = true;
    };
    const data = [2]c_int{0,1};
    _ = ig.igCheckbox("Link X", &st.linkx);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckbox("Link Y", &st.linky);

    _ = ig.igDragScalarN("Limits", ig.ImGuiDataType_Double, &st.lims.X.Min, 4, 0.01, null, null, null, 0 );

    if (ip.ImPlot_BeginAlignedPlots("AlignedGroup", true)) {
        if (ip.ImPlot_BeginPlot("Plot A", .{ .x = -1, .y = 0 }, 0)) {
            ip.ImPlot_SetupAxisLinks(ip.ImAxis_X1 , if(st.linkx) &st.lims.X.Min else null, if(st.linkx) &st.lims.X.Max else null);
            ip.ImPlot_SetupAxisLinks(ip.ImAxis_Y1 , if(st.linky) &st.lims.Y.Min else null, if(st.linky) &st.lims.Y.Max else null);
            try ip.ImPlot_PlotLine("Line", &data, 2);
            ip.ImPlot_EndPlot();
        }
        if (ip.ImPlot_BeginPlot("Plot B", .{ .x = -1, .y = 0 }, 0)) {
            ip.ImPlot_SetupAxisLinks(ip.ImAxis_X1 , if(st.linkx) &st.lims.X.Min else null, if(st.linkx) &st.lims.X.Max else null);
            ip.ImPlot_SetupAxisLinks(ip.ImAxis_Y1 , if(st.linky) &st.lims.Y.Min else null, if(st.linky) &st.lims.Y.Max else null);
            try ip.ImPlot_PlotLine("Line", &data, 2);
            ip.ImPlot_EndPlot();
        }
        ip.ImPlot_EndAlignedPlots();
    }
}

//----------------------
// demo_AxisConstraints
//----------------------
fn demo_AxisConstraints() !void {
    const st = struct {
    var constraints = [4]f32{-10,10,1,20};
    var  flags: ip.ImPlotAxisFlags = 0;
    };
    _ = ig.igDragFloat2("Limits Constraints", &st.constraints[0], 0.01, 0, 0, "%.3f", 0);
    _ = ig.igDragFloat2("Zoom Constraints"  , &st.constraints[2], 0.01, 0, 0, "%.3f", 0);
    _ = ig.igCheckboxFlags_IntPtr("ip.ImPlotAxisFlags_PanStretch", &st.flags, st.flags );
    if (ip.ImPlot_BeginPlot("##AxisConstraints", .{.x=-1, .y=0}, 0)) {
        ip.ImPlot_SetupAxes("X","Y",st.flags,st.flags);
        ip.ImPlot_SetupAxesLimits(-1,1,-1,1, ip.ImPlotCond_Once);
        ip.ImPlot_SetupAxisLimitsConstraints(ip.ImAxis_X1,st.constraints[0], st.constraints[1]);
        ip.ImPlot_SetupAxisZoomConstraints(ip.ImAxis_X1,  st.constraints[2], st.constraints[3]);
        ip.ImPlot_SetupAxisLimitsConstraints(ip.ImAxis_Y1,st.constraints[0], st.constraints[1]);
        ip.ImPlot_SetupAxisZoomConstraints(ip.ImAxis_Y1,  st.constraints[2], st.constraints[3]);
        ip.ImPlot_EndPlot();
    }
}

//----------------
// demo_EqualAxes
//----------------
fn demo_EqualAxes() !void {
    ig.igBulletText("Equal constraint applies to axis pairs (e.g ip.ImAxis_X1/Y1, ip.ImAxis_X2/Y2)");
    var xs1:[360]f64 = undefined;
    var ys1:[360]f64 = undefined;
    for (0..360)|i| {
        const angle = @as(f64,@floatFromInt(i)) * 2 * utils.PI / 359.0;
        xs1[i] = math.cos(angle); ys1[i] = math.sin(angle);
    }
    const xs2 = [_]f32{-1,0,1,0,-1};
    const ys2 = [_]f32{0,1,0,-1,0};
    if (ip.ImPlot_BeginPlot("##EqualAxes",.{.x=-1, .y=0},ip.ImPlotFlags_Equal)) {
        ip.ImPlot_SetupAxis(ip.ImAxis_X2, null, ip.ImPlotAxisFlags_AuxDefault);
        ip.ImPlot_SetupAxis(ip.ImAxis_Y2, null, ip.ImPlotAxisFlags_AuxDefault);
        try ip.ImPlot_PlotLineXy("Circle",&xs1,&ys1,360);
        ip.ImPlot_SetAxes(ip.ImAxis_X2, ip.ImAxis_Y2);
        try ip.ImPlot_PlotLineXy("Diamond",&xs2,&ys2,5);
        ip.ImPlot_EndPlot();
    }
}

//----------------------
// demo_autoFittingData
//----------------------
fn demo_AutoFittingData() !void {
    ig.igBulletText("The Y-axis has been configured to auto-fit to only the data visible in X-axis range.");
    ig.igBulletText("Zoom and pan the X-axis. Disable Stems to see a difference in fit.");
    ig.igBulletText("If ip.ImPlotAxisFlags_RangeFit is disabled, the axis will fit ALL data.");
    const st = struct {
      var xflags = ip.ImPlotAxisFlags_None;
      var yflags = ip.ImPlotAxisFlags_AutoFit | ip.ImPlotAxisFlags_RangeFit;
    };

    ig.igTextUnformatted("X: ", "\n"); ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotAxisFlags_AutoFit##X",  &st.xflags, ip.ImPlotAxisFlags_AutoFit); ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotAxisFlags_RangeFit##X", &st.xflags, ip.ImPlotAxisFlags_RangeFit);

    ig.igTextUnformatted("Y: ", "\n"); ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotAxisFlags_AutoFit##Y", &st.yflags, ip.ImPlotAxisFlags_AutoFit); ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotAxisFlags_RangeFit##Y", &st.yflags, ip.ImPlotAxisFlags_RangeFit);

    var data:[101]f64 = undefined;
    c.srand(0);
    for (0..101)|i|
        data[i] = 1 + math.sin( @as(f64, @floatFromInt(i)) / 10.0);

    if (ip.ImPlot_BeginPlot("##DataFitting", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxes("X", "Y", st.xflags, st.yflags);
        try ip.ImPlot_PlotLine("Line",  &data,101);
        try ip.ImPlot_PlotStems("Stems",&data,101);
        ip.ImPlot_EndPlot();
    }
}

//----------------------
// demo_OffsetAndStride
//----------------------
fn demo_OffsetAndStride() !void {
    const k_circles    = 11;
    const k_points_per = 50;
    const k_size       = 2 * k_points_per * k_circles;
    var interleaved_data:[k_size]f64 = undefined;
    for (0..k_points_per)|p| {
        for (0..k_circles)|ci| {
            const r = @as(f64,@floatFromInt(ci)) / (k_circles - 1) * 0.2 + 0.2;
            interleaved_data[p * 2 * k_circles + 2 * ci + 0] = 0.5 + r * math.cos(@as(f64,@floatFromInt(p))/k_points_per * 6.28);
            interleaved_data[p * 2 * k_circles + 2 * ci + 1] = 0.5 + r * math.sin(@as(f64,@floatFromInt(p))/k_points_per * 6.28);
        }
    }

    const st = struct {
      var offset:c_int = 0;
    };
    ig.igBulletText("Offsetting is useful for realtime plots (see above) and circular buffers.");
    ig.igBulletText("Striding is useful for interleaved data (e.g. audio) or plotting structs.");
    ig.igBulletText("Here, all circle data is stored in a single interleaved buffer:");
    ig.igBulletText("[c0.x0 c0.y0 ... cn.x0 cn.y0 c0.x1 c0.y1 ... cn.x1 cn.y1 ... cn.xm cn.ym]");
    ig.igBulletText("The offset value indicates which circle point index is considered the first.");
    ig.igBulletText("Offsets can be negative and/or larger than the actual data count.");
    _ = ig.igSliderInt("Offset", &st.offset, -2*k_points_per, 2*k_points_per, "%d", 0);
    if (ip.ImPlot_BeginPlot("##strideoffset",.{.x=-1, .y=0},ip.ImPlotFlags_Equal)) {
        ip.ImPlot_PushColormap_PlotColormap(ip.ImPlotColormap_Jet);
        var buff:[32]u8 = undefined;
        for (0..k_circles)|ci| {
            _= c.snprintf(&buff, buff.len, "Circle %d", ci);
            try ip.ImPlot_PlotLineXyEx(&buff
              , interleaved_data[ci * 2 + 0..].ptr
              , interleaved_data[ci * 2 + 1..].ptr
              , k_points_per
              , 0
              , st.offset
              , 2 * k_circles * @sizeOf(@TypeOf(interleaved_data[0])));
        }
        ip.ImPlot_EndPlot();
        ip.ImPlot_PopColormap(1);
    }
    //st.offset += 1; // uncomment for animation!
}

//-----------------
// demo_DragPoints
//-----------------
fn demo_DragPoints() !void {
    ig.igBulletText("Click and drag each point.");
    const st = struct {
      var flags = ip.ImPlotDragToolFlags_None;
      var clicked = [_]bool{false, false, false, false};
      var hovered = [_]bool{false, false, false, false};
      var held    = [_]bool{false, false, false, false};
      var P =  [_]ip.ImPlotPoint{ip.ImPlotPoint{.x = 0.05,.y = 0.05}
                                ,ip.ImPlotPoint{.x = 0.2, .y = 0.4}
                                ,ip.ImPlotPoint{.x = 0.8, .y = 0.6}
                                ,ip.ImPlotPoint{.x = 0.95,.y = 0.95}};
    };
    _ = ig.igCheckboxFlags_IntPtr("NoCursors", &st.flags, ip.ImPlotDragToolFlags_NoCursors); ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("NoFit",     &st.flags, ip.ImPlotDragToolFlags_NoFit); ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("NoInput",   &st.flags, ip.ImPlotDragToolFlags_NoInputs);
    const ax_flags = ip.ImPlotAxisFlags_NoTickLabels | ip.ImPlotAxisFlags_NoTickMarks;
    if (ip.ImPlot_BeginPlot("##Bezier",.{.x=-1, .y=0},ip.ImPlotFlags_CanvasOnly)) {
        ip.ImPlot_SetupAxes(null,null,ax_flags,ax_flags);
        ip.ImPlot_SetupAxesLimits(0,1,0,1, ip.ImPlotCond_Once);

        _ = ip.ImPlot_DragPoint(0, &st.P[0].x, &st.P[0].y, .{.x=0, .y=0.9, .z=0, .w=1}, 4, st.flags, &st.clicked[0], &st.hovered[0], &st.held[0]);
        _ = ip.ImPlot_DragPoint(1, &st.P[1].x, &st.P[1].y, .{.x=1, .y=0.5, .z=1, .w=1}, 4, st.flags, &st.clicked[1], &st.hovered[1], &st.held[1]);
        _ = ip.ImPlot_DragPoint(2, &st.P[2].x, &st.P[2].y, .{.x=0, .y=0.5, .z=1, .w=1}, 4, st.flags, &st.clicked[2], &st.hovered[2], &st.held[2]);
        _ = ip.ImPlot_DragPoint(3, &st.P[3].x, &st.P[3].y, .{.x=0, .y=0.9, .z=0, .w=1}, 4, st.flags, &st.clicked[3], &st.hovered[3], &st.held[3]);

        var B : [100]ip.ImPlotPoint = undefined ;
        for (0..100)|i| {
            const  t  = @as(f64,@floatFromInt(i)) / 99.0;
            const  u  = 1 - t;
            const  w1 = u * u * u;
            const  w2 = 3 * u * u * t;
            const  w3 = 3 * u * t * t;
            const  w4 = t * t * t;
            B[i] = ip.ImPlotPoint{.x = w1 * st.P[0].x + w2 * st.P[1].x + w3 * st.P[2].x + w4 * st.P[3].x
                                , .y = w1 * st.P[0].y + w2 * st.P[1].y + w3 * st.P[2].y + w4 * st.P[3].y};
        }

        ip.ImPlot_SetNextLineStyle(.{.x=1, .y=0.5, .z=1, .w=1}, if (st.hovered[1] or st.held[1]) 2.0 else 1.0);
        // TODO
        //try ip.ImPlot_PlotLineXyEx("##h1",&st.P[0].x, &st.P[0].y, 2, 0, 0, @sizeOf(ip.ImPlotPoint));
        ip.ImPlot_SetNextLineStyle(.{.x=0, .y=0.5, .z=1, .w=1}, if (st.hovered[2] or st.held[2]) 2.0 else 1.0);
        // TODO
        //try ip.ImPlot_PlotLineXyEx("##h2",&st.P[2].x, &st.P[2].y, 2, 0, 0, @sizeOf(ip.ImPlotPoint));
        ip.ImPlot_SetNextLineStyle(.{.x=0, .y=0.9, .z=0, .w=1}, if (st.hovered[0] or st.held[0] or st.hovered[3] or st.held[3])  3.0 else 2.0);
        // TODO
        //try ip.ImPlot_PlotLineXyEx("##bez",&B[0].x, &B[0].y, 100, 0, 0, @sizeOf(ip.ImPlotPoint));
        ip.ImPlot_EndPlot();
    }
}

//-------------
// demo_Config
//-------------
fn demo_Config() !void {
    ig.igShowFontSelector("Font");
    _ = ig.igShowStyleSelector("ImGui Style");
    _ = ip.ImPlot_ShowStyleSelector("ImPlot Style");
    _ = ip.ImPlot_ShowColormapSelector("ImPlot Colormap");
    _ = ip.ImPlot_ShowInputMapSelector("Input Map");
    ig.igSeparator();
    _ = ig.igCheckbox("Use Local Time", &ip.ImPlot_GetStyle().*.UseLocalTime);
    _ = ig.igCheckbox("Use ISO 8601", &ip.ImPlot_GetStyle().*.UseISO8601);
    _ = ig.  igCheckbox("Use 24 Hour Clock", &ip.ImPlot_GetStyle().*.Use24HourClock);
    ig.igSeparator();
    if (ip.  ImPlot_BeginPlot("Preview", .{ .x = -1, .y = 0 }, 0)) {
        const now:f64 = ig.igGetTime();
        ip.ImPlot_SetupAxisScale_PlotScale(ip.ImAxis_X1, ip.ImPlotScale_Time);
        ip.ImPlot_SetupAxisLimits(ip.ImAxis_X1, now, now + 24*3600, ip.ImPlotCond_Once);
        for (0..10)|i| {
            const x = [2]f64{now, now + 24*3600};
            const y = [2]f64{0, @as(f64,@floatFromInt(i)) / 9.0};
            ig.igPushID_Int(@intCast(i));
            try ip.ImPlot_PlotLineXy("##Line",&x,&y,2);
            ig.igPopID();
        }
        ip.ImPlot_EndPlot();
    }
}

//-----------
// demo_Help
//-----------
fn demo_Help() !void {
    ig.igText("ABOUT THIS DEMO:");
    ig.igBulletText("Sections below are demonstrating many aspects of the library.");
    ig.igBulletText("The \"Tools\" menu above gives access to: Style Editors (ImPlot/ImGui)\n"
                    ,"and Metrics (general purpose Dear ImGui debugging tool).");
    ig.igSeparator();
    ig.igText("PROGRAMMER GUIDE:");
    ig.igBulletText("See the ShowDemoWindow() code in implot_demo.cpp. <- you are here!");
    ig.igBulletText("If you see visual artifacts, do one of the following:");

    ig.igIndent(0);
    ig.igBulletText("Handle ImGuiBackendFlags_RendererHasVtxOffset for 16-bit indices in your backend.");
    ig.igBulletText("Or, enable 32-bit indices in imconfig.h.");
    ig.igBulletText("Your current configuration is:");
    ig.igIndent(0);
    // TODO: Crash !
    //ig.igBulletTextV("ImDrawIdx: %d-bit", @sizeOf(ig.ImDrawIdx) * 8);
    var buf:[100]u8 = undefined;
    const sRes = try std.fmt.bufPrint(&buf, "ImDrawIdx: {d}-bit", .{@sizeOf(ig.ImDrawIdx) * 8});
    ig.igBulletText(sRes.ptr);

    // TODO: Avoided compilation error.
    if (0 != (ig.igGetIO().*.BackendFlags & ig.ImGuiBackendFlags_RendererHasVtxOffset)){
      ig.igBulletText("ImGuiBackendFlags_RendererHasVtxOffset: True");
    }else{
      ig.igBulletText("ImGuiBackendFlags_RendererHasVtxOffset: False");
    }
    ig.igUnindent(0);
    ig.igUnindent(0);
    ig.igSeparator();
    ig.igText("USER GUIDE:");
    ip.ImPlot_ShowUserGuide();
}

//---------------
// demo_BarPlots
//---------------
fn demo_BarPlots() !void {
    const data = [10]ig.ImS8{1,2,3,4,5,6,7,8,9,10};
    if (ip.ImPlot_BeginPlot("Bar Plot", .{ .x = -1, .y = 0 }, 0)) {
        try ip.ImPlot_PlotBarsEx("Vertical",  &data,10,0.7,1, 0, 0, utils.stride(data[0]));
        try ip.ImPlot_PlotBarsEx("Horizontal",&data,10,0.4,1,ip.ImPlotBarsFlags_Horizontal, 0, utils.stride(data[0]));
        ip.ImPlot_EndPlot();
    }
}

//----------------
// demo_BarGroups
//----------------
fn demo_BarGroups() !void {
    const st = struct {
        var data = [30]ig.ImS8{
            83, 67, 23, 89, 83, 78, 91, 82, 85, 90,  // midterm
            80, 62, 56, 99, 55, 78, 88, 78, 90, 100, // final
            80, 69, 52, 92, 72, 78, 75, 76, 89, 95,  // course
        };
        var ilabels =  [3][*c]const u8{ "Midterm Exam", "Final Exam", "Course Grade", };
        var glabels = [10][*c]const u8{ "S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10", };
        const positions = [10]f64{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, };
        var items: c_int = 3;
        var groups: c_int = 10;
        var size: f32 = 0.67;
        var flags: ip.ImPlotBarGroupsFlags = 0;
        var horz: bool = false;
    };

    _ = ig.igCheckboxFlags_IntPtr("Stacked", &st.flags, ip.ImPlotBarGroupsFlags_Stacked);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckbox("Horizontal", &st.horz);

    _ = ig.igSliderInt("Items", &st.items, 1, 3, "%d", 0);
    _ = ig.igSliderFloat("Size", &st.size, 0, 1, "%.3f", 0);

    if (ip.ImPlot_BeginPlot("Bar Group", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupLegend(ip.ImPlotLocation_East, ip.ImPlotLegendFlags_Outside);
        if (st.horz) {
            ip.ImPlot_SetupAxes("Score", "Student", ip.ImPlotAxisFlags_AutoFit, ip.ImPlotAxisFlags_AutoFit);
            ip.ImPlot_SetupAxisTicks_doublePtr(ip.ImAxis_Y1, &st.positions, st.groups, &st.glabels, false);
            try ip.ImPlot_PlotBarGroupsEx(&st.ilabels, &st.data, st.items, st.groups, st.size, 0, st.flags | ip.ImPlotBarGroupsFlags_Horizontal);
        } else {
            ip.ImPlot_SetupAxes("Student", "Score", ip.ImPlotAxisFlags_AutoFit, ip.ImPlotAxisFlags_AutoFit);
            ip.ImPlot_SetupAxisTicks_doublePtr(ip.ImAxis_X1, &st.positions, st.groups, &st.glabels, false);
            try ip.ImPlot_PlotBarGroupsEx(&st.ilabels, &st.data, st.items, st.groups, st.size, 0, st.flags);
        }
        ip.ImPlot_EndPlot();
    }
}

//----------------
// demo_BarStacks
//----------------
fn demo_BarStacks() !void {
    const st = struct {
       var  Liars:ip.ImPlotColormap = -1;
       var diverging = true;
    };
    if (st.Liars == -1) {
         const Liars_Data = [6]ig.ImU32{ 4282515870, 4282609140, 4287357182, 4294630301, 4294945280, 4294921472 };
         st.Liars = ip.ImPlot_AddColormap_U32Ptr("Liars", &Liars_Data, 6, true);
    }

    _ = ig.igCheckbox("Diverging",&st.diverging);

    const politicians = [_][*c]const u8{"Trump","Bachman","Cruz","Gingrich","Palin","Santorum","Walker","Perry","Ryan","McCain","Rubio","Romney","Rand Paul","Christie","Biden","Kasich","Sanders","J Bush","H Clinton","Obama"};
    const data_reg = [_]c_int{18,26,7,14,10,8,6,11,4,4,3,8,6,8,6,5,0,3,1,2,                // Pants on Fire
                              43,36,30,21,30,27,25,17,11,22,15,16,16,17,12,12,14,6,13,12,  // False
                              16,13,28,22,15,21,15,18,30,17,24,18,13,10,14,15,17,22,14,12, // Mostly False
                              17,10,13,25,12,22,19,26,23,17,22,27,20,26,29,17,18,22,21,27, // Half True
                              5,7,16,10,10,12,23,13,17,20,22,16,23,19,20,26,36,29,27,26,   // Mostly True
                              1,8,6,8,23,10,12,15,15,20,14,15,22,20,19,25,15,18,24,21};    // True
    const labels_reg = [_][*c]const u8{"Pants on Fire","False","Mostly False","Half True","Mostly True","True"};


    const data_div = [_]c_int{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,                                         // Pants on Fire (dummy, to order legend logically)
                             0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,                                         // False         (dummy, to order legend logically)
                             0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,                                         // Mostly False  (dummy, to order legend logically)
                             -16,-13,-28,-22,-15,-21,-15,-18,-30,-17,-24,-18,-13,-10,-14,-15,-17,-22,-14,-12, // Mostly False
                             -43,-36,-30,-21,-30,-27,-25,-17,-11,-22,-15,-16,-16,-17,-12,-12,-14,-6,-13,-12,  // False
                             -18,-26,-7,-14,-10,-8,-6,-11,-4,-4,-3,-8,-6,-8,-6,-5,0,-3,-1,-2,                 // Pants on Fire
                             17,10,13,25,12,22,19,26,23,17,22,27,20,26,29,17,18,22,21,27,                     // Half True
                             5,7,16,10,10,12,23,13,17,20,22,16,23,19,20,26,36,29,27,26,                       // Mostly True
                             1,8,6,8,23,10,12,15,15,20,14,15,22,20,19,25,15,18,24,21};                        // True
    const labels_div = [_][*c]const u8{"Pants on Fire","False","Mostly False","Mostly False","False","Pants on Fire","Half True","Mostly True","True"};

    ip.ImPlot_PushColormap_PlotColormap(st.Liars);
    if (ip.ImPlot_BeginPlot("PolitiFact: Who Lies More?",.{.x=-1, .y=400},ip.ImPlotFlags_NoMouseText)) {
        ip.ImPlot_SetupLegend(ip.ImPlotLocation_South, ip.ImPlotLegendFlags_Outside | ip.ImPlotLegendFlags_Horizontal);
        ip.ImPlot_SetupAxes(null,null,ip.ImPlotAxisFlags_AutoFit | ip.ImPlotAxisFlags_NoDecorations,ip.ImPlotAxisFlags_AutoFit |  ip.ImPlotAxisFlags_Invert);
        ip.ImPlot_SetupAxisTicks_double(ip.ImAxis_Y1,0,19,20, &politicians,false);
        if (st.diverging){
            try ip.ImPlot_PlotBarGroupsEx(&labels_div,&data_div,9,20,0.75,0,ip.ImPlotBarGroupsFlags_Stacked | ip.ImPlotBarGroupsFlags_Horizontal);
        }
        else{
         try ip.ImPlot_PlotBarGroupsEx(&labels_reg,&data_reg,6,20,0.75,0,ip.ImPlotBarGroupsFlags_Stacked | ip.ImPlotBarGroupsFlags_Horizontal);
        }
        ip.ImPlot_EndPlot();
    }
    ip.ImPlot_PopColormap(1);
}

//---------------
// demo_Heatmaps
//---------------
fn demo_Heatmaps() !void {
    const st = struct {
        var values1 = [_][7]f32{ [_]f32{ 0.8, 2.4, 2.5, 3.9, 0.0, 4.0, 0.0 },
                                 [_]f32{ 2.4, 0.0, 4.0, 1.0, 2.7, 0.0, 0.0 },
                                 [_]f32{ 1.1, 2.4, 0.8, 4.3, 1.9, 4.4, 0.0 },
                                 [_]f32{ 0.6, 0.0, 0.3, 0.0, 3.1, 0.0, 0.0 },
                                 [_]f32{ 0.7, 1.7, 0.6, 2.6, 2.2, 6.2, 0.0 },
                                 [_]f32{ 1.3, 1.2, 0.0, 0.0, 0.0, 3.2, 5.1 },
                                 [_]f32{ 0.1, 2.0, 0.0, 1.4, 0.0, 1.9, 6.3 } };
        var scale_min: f32 = 0;
        var scale_max: f32 = 6.3;
        const xlabels: [7][*c]const u8 = [_][*c]const u8{ "C1", "C2", "C3", "C4", "C5", "C6", "C7" };
        const ylabels: [7][*c]const u8 = [_][*c]const u8{ "R1", "R2", "R3", "R4", "R5", "R6", "R7" };
        var map = ip.ImPlotColormap_Viridis;
    };

    if (ip.ImPlot_ColormapButton(ip.ImPlot_GetColormapName(st.map), .{ .x = 225, .y = 0 }, st.map)) {
        st.map = @mod((st.map + 1), ip.ImPlot_GetColormapCount());
        // We bust the color cache of our plots so that item colors will
        // resample the new colormap in the event that they have already
        // been created. See documentation in implot.h.
        ip.ImPlot_BustColorCache("##Heatmap1");
        ip.ImPlot_BustColorCache("##Heatmap2");
    }

    ig.igSameLine(0, -1.0);
    ig.igLabelText("##Colormap Index", "%s", "Change Colormap");
    ig.igSetNextItemWidth(225);
    _ = ig.igDragFloatRange2("Min / Max", &st.scale_min, &st.scale_max, 0.01, -20, 20, "%.3f", null, 0);
    const st2 = struct {
        var hm_flags: ip.ImPlotHeatmapFlags = 0;
        var axes_flags: ip.ImPlotAxisFlags = ip.ImPlotAxisFlags_Lock | ip.ImPlotAxisFlags_NoGridLines | ip.ImPlotAxisFlags_NoTickMarks;
    };
    _ = ig.igCheckboxFlags_IntPtr("Column Major", &st2.hm_flags, ip.ImPlotHeatmapFlags_ColMajor);

    ip.ImPlot_PushColormap_PlotColormap(st.map);
    if (ip.ImPlot_BeginPlot("##Heatmap1", .{ .x = 225, .y = 225 }, ip.ImPlotFlags_NoLegend | ip.ImPlotFlags_NoMouseText)) {
        ip.ImPlot_SetupAxes(null, null, st2.axes_flags, st2.axes_flags);
        ip.ImPlot_SetupAxisTicks_double(ip.ImAxis_X1, 0 + 1.0 / 14.0, 1 - 1.0 / 14.0, 7, &st.xlabels, false);
        ip.ImPlot_SetupAxisTicks_double(ip.ImAxis_Y1, 1 - 1.0 / 14.0, 0 + 1.0 / 14.0, 7, &st.ylabels, false);
        ip.ImPlot_PlotHeatmap_FloatPtr("heat", &st.values1[0], 7, 7, st.scale_min, st.scale_max, "%g", .{ .x = 0, .y = 0 }, .{ .x = 1, .y = 1 }, st2.hm_flags);
        ip.ImPlot_EndPlot();
    }
    ig.igSameLine(0, -1.0);
    ip.ImPlot_ColormapScale("##HeatScale", st.scale_min, st.scale_max, .{ .x = 60, .y = 225 }, "%g", 0, utils.IMPLOT_AUTO);

    ig.igSameLine(0, -1.0);

    const size = 80;
    const st3 = struct {
        var values2: [size * size]f64 = undefined;
    };
    c.srand(@intFromFloat((ig.igGetTime() * 1000000)));
    for (0..size * size) |i| {
        st3.values2[i] = utils.RandomRange(0.0, 1.0);
    }

    if (ip.ImPlot_BeginPlot("##Heatmap2", .{ .x = 225, .y = 225 }, 0)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(-1, 1, -1, 1, ip.ImPlotCond_Once);
        ip.ImPlot_PlotHeatmap_doublePtr("heat1", &st3.values2, size, size, 0, 1, null, .{ .x = 0, .y = 0 }, .{ .x = 1, .y = 1 }, 0);
        ip.ImPlot_PlotHeatmap_doublePtr("heat2", &st3.values2, size, size, 0, 1, null, .{ .x = -1, .y = -1 }, .{ .x = 0, .y = 0 }, 0);
        ip.ImPlot_EndPlot();
    }
    ip.ImPlot_PopColormap(1);
}

//----------------
// demo_Histogram
//----------------
fn demo_Histogram() !void {
    const Num = 10000;
    const rmax: f32 = 13;
    const sigma: f64 = 2;
    const mu: f64 = 5;
    const st = struct {
        var hist_flags = ip.ImPlotHistogramFlags_Density;
        var bins: c_int = 50;
        var range = false;
        var rmin: f32 = -3;
        var dist: [Num]f64 = undefined;
        var initData = true;
    };
    if (st.initData) {
        st.initData = false;
        utils.NormalDistribution(&st.dist, mu, sigma, Num);
    }
    ig.igSetNextItemWidth(200);
    if (ig.igRadioButton_Bool("Sqrt", st.bins == ip.ImPlotBin_Sqrt)) {
        st.bins = ip.ImPlotBin_Sqrt;
    }
    ig.igSameLine(0, -1.0);
    if (ig.igRadioButton_Bool("Sturges", st.bins == ip.ImPlotBin_Sturges)) {
        st.bins = ip.ImPlotBin_Sturges;
    }
    ig.igSameLine(0, -1.0);
    if (ig.igRadioButton_Bool("Rice", st.bins == ip.ImPlotBin_Rice)) {
        st.bins = ip.ImPlotBin_Rice;
    }
    ig.igSameLine(0, -1.0);
    if (ig.igRadioButton_Bool("Scott", st.bins == ip.ImPlotBin_Scott)) {
        st.bins = ip.ImPlotBin_Scott;
    }
    ig.igSameLine(0, -1.0);
    if (ig.igRadioButton_Bool("N Bins", st.bins >= 0)) {
        st.bins = 50;
    }
    if (st.bins >= 0) {
        ig.igSameLine(0, -1.0);
        ig.igSetNextItemWidth(200);
        _ = ig.igSliderInt("##Bins", &st.bins, 1, 100, "%d", 0);
    }
    _ = ig.igCheckboxFlags_IntPtr("Horizontal", &st.hist_flags, ip.ImPlotHistogramFlags_Horizontal);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("Density", &st.hist_flags, ip.ImPlotHistogramFlags_Density);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("Cumulative", &st.hist_flags, ip.ImPlotHistogramFlags_Cumulative);

    _ = ig.igCheckbox("Range", &st.range);
    if (st.range) {
        ig.igSameLine(0, -1.0);
        ig.igSetNextItemWidth(200);
        _ = ig.igDragFloat2("##Range", &st.rmin, 0.1, -3, 13, "%.3f", 0);
        ig.igSameLine(0, -1.0);
        _ = ig.igCheckboxFlags_IntPtr("Exclude Outliers", &st.hist_flags, ip.ImPlotHistogramFlags_NoOutliers);
    }
    //static NormalDistribution<10000> dist(mu, sigma);
    var x: [100]f64 = undefined;
    var y: [100]f64 = undefined;
    if (0 != (st.hist_flags & ip.ImPlotHistogramFlags_Density)) {
        for (0..100) |i| {
            x[i] = -3 + 16 * @as(f64, @floatFromInt(i)) / 99.0;
            y[i] = math.exp(-(x[i] - mu) * (x[i] - mu) / (2 * sigma * sigma)) / (sigma * math.sqrt(2 * 3.141592653589793238));
        }
        if (0 != (st.hist_flags & ip.ImPlotHistogramFlags_Cumulative)) {
            for (0..100) |i| {
                y[i] += y[i - 1];
            }
            for (0..100) |i| {
                y[i] /= y[99];
            }
        }
    }

    if (ip.ImPlot_BeginPlot("##Histograms", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_AutoFit, ip.ImPlotAxisFlags_AutoFit);
        ip.ImPlot_SetNextFillStyle(utils.IMPLOT_AUTO_COL, 0.5);
        if (st.range) { // TODO
            _ = try ip.ImPlot_PlotHistogramEx("Empirical", &st.dist, 10000, st.bins, 1.0, .{ .Min = st.rmin, .Max = rmax }, st.hist_flags);
        } else {
            _ = try ip.ImPlot_PlotHistogramEx("Empirical", &st.dist, 10000, st.bins, 1.0, .{ .Min = 0, .Max = 0 }, st.hist_flags);
        }
        if ((0 != (st.hist_flags & ip.ImPlotHistogramFlags_Density)) and (0 == (st.hist_flags & ip.ImPlotHistogramFlags_NoOutliers))) {
            if ((0 != st.hist_flags & ip.ImPlotHistogramFlags_Horizontal)) {
                try ip.ImPlot_PlotLineXy("Theoretical", &y, &x, 100);
            } else {
                try ip.ImPlot_PlotLineXy("Theoretical", &x, &y, 100);
            }
        }
        ip.ImPlot_EndPlot();
    }
}

//------------------
// demo_Histogram2D
//------------------
fn demo_Histogram2D() !void {
    const Num = 100000;
    const st = struct {
        var count: c_int = 50000;
        var xybins = [2]c_int{ 100, 100 };
        var hist_flags: ip.ImPlotHistogramFlags = 0;
        // TODO
        var dist1: [Num]f64 = undefined;
        var dist2: [Num]f64 = undefined;
        //var  NormalDistribution<100000> dist1(1, 2);
        //var  NormalDistribution<100000> dist2(1, 1);
        var initData = true;
    };
    if (st.initData) {
        st.initData = false;
        utils.NormalDistribution(&st.dist1, 1, 2, Num);
        utils.NormalDistribution(&st.dist2, 1, 1, Num);
    }

    _ = ig.igSliderInt("Count", &st.count, 100, 100000, "%d", 0);
    _ = ig.igSliderInt2("Bins", &st.xybins, 1, 500, "%d", 0);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("Density", &st.hist_flags, ip.ImPlotHistogramFlags_Density);

    var max_count: f64 = 0;
    const flags = ip.ImPlotAxisFlags_AutoFit | ip.ImPlotAxisFlags_Foreground;
    ip.ImPlot_PushColormap_Str("Hot");
    var regn: ig.ImVec2 = undefined;
    ig.igGetContentRegionAvail(&regn);
    const vec2: ig.ImVec2 = .{ .x = regn.x - 100 - ig.igGetStyle().*.ItemSpacing.x, .y = 0 };
    if (ip.ImPlot_BeginPlot("##Hist2D", .{.x = vec2.x, .y = vec2.y}, 0)) {
        ip.ImPlot_SetupAxes(null, null, flags, flags);
        ip.ImPlot_SetupAxesLimits(-6, 6, -6, 6, ip.ImPlotCond_Once);
        max_count = try ip.ImPlot_PlotHistogram2DEx("Hist2D", &st.dist1, &st.dist2, st.count, st.xybins[0], st.xybins[1], .{ .X = .{ .Min = -6, .Max = 6 }, .Y = .{ .Min = -6, .Max = 6 } }, st.hist_flags);
        ip.ImPlot_EndPlot();
    }
    ig.igSameLine(0, -1.0);
    const label =
        if ((st.hist_flags & ip.ImPlotHistogramFlags_Density) != 0)
        "Density"
    else
        "Count";
    ip.ImPlot_ColormapScale(label, 0, max_count, .{ .x = 100, .y = 0 }, "%g", 0, utils.IMPLOT_AUTO);
    ip.ImPlot_PopColormap(1);
}

//-------------
// demo_Images
//-------------
fn demo_Images() !void {
    const ImageName = "himeji-400.jpg";
    const st = struct {
        var bmin = ip.ImPlotPoint{ .x = 0, .y = 0 };
        var bmax = ip.ImPlotPoint{ .x = 1, .y = 1 };
        var uv0 = ig.ImVec2{ .x = 0, .y = 0 };
        var uv1 = ig.ImVec2{ .x = 1, .y = 1 };
        var tint = ig.ImVec4{ .x = 1, .y = 1, .z = 1, .w = 1 };
        //
        var loadImage = true;
        var textureId: ig.GLuint = undefined;
        var textureWidth: c_int = 0;
        var textureHeight: c_int = 0;
    };
    //------------
    // Load image
    //------------
    if (st.loadImage) {
        st.loadImage = false;
        _ = ig.LoadTextureFromFile(ImageName, &st.textureId, &st.textureWidth, &st.textureHeight);
    }
    //
    ig.igBulletText("Below we are displaying the font texture, which is the only texture we have\naccess to in this demo.");
    ig.igBulletText("Use the 'ImTextureID' type as storage to pass pointers or identifiers to your\nown texture data.");
    ig.igBulletText("See ImGui Wiki page 'Image Loading and Displaying Examples'.");
    //const pbmin = &st.bmin;
    _ = ig.igSliderFloat2("Min", @ptrCast(&st.bmin), -2, 2, "%.1f", 0);
    _ = ig.igSliderFloat2("Max", @ptrCast(&st.bmax), -2, 2, "%.1f", 0);
    _ = ig.igSliderFloat2("UV0", @ptrCast(&st.uv0),  -2, 2, "%.1f", 0);
    _ = ig.igSliderFloat2("UV1", @ptrCast(&st.uv1),  -2, 2, "%.1f", 0);
    _ = ig.igColorEdit4("Tint", @ptrCast(&st.tint), 0);
    if (ip.ImPlot_BeginPlot("##image", .{ .x = -1, .y = 0 }, 0)) {
        //ip.ImPlot_PlotImage("my image",ig.igGetIO().*.Fonts.*.TexID, st.bmin, st.bmax, st.uv0, st.uv1, st.tint, 0);
        // TODO
        ip.ImPlot_PlotImage("my image", @ptrFromInt(st.textureId)
          , .{.x = st.bmin.x, .y = st.bmin.y} //st.bmin
          , .{.x = st.bmax.x, .y = st.bmax.y} //st.bmin
          , .{.x = st.uv0.x, .y = st.uv0.y}   //st.bmin
          , .{.x = st.uv1.x, .y = st.uv1.y}   //st.bmin
          , .{.x = st.tint.x, .y = st.tint.y, .z = st.tint.z, .w = st.tint.w}//st.tint
          , 0);
        ip.ImPlot_EndPlot();
    }
}

//---------------------
// demo_MarkersAndText
//---------------------
fn demo_MarkersAndText() !void {
    const st = struct {
      // TODO
      var mk_size:f32 = 4; //ip.ImPlot_GetStyle().*.MarkerSize;
      var mk_weight:f32 = 1; //ip.ImPlot_GetStyle().*.MarkerWeight;
    };
    _ = ig.igDragFloat("Marker Size"  , &st.mk_size,0.1,2.0,10.0  ,"%.2f px", 0);
    _ = ig.igDragFloat("Marker Weight", &st.mk_weight,0.05,0.5,3.0,"%.2f px", 0);

    if (ip.ImPlot_BeginPlot("##MarkerStyles", .{.x=-1, .y=0}, ip.ImPlotFlags_CanvasOnly)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(0, 10, 0, 12, ip.ImPlotCond_Once);
        var  xs = [2]ig.ImS8{1,4};
        var  ys = [2]ig.ImS8{10,11};
        // filled markers
        for (0..@intCast(ip.ImPlotMarker_COUNT))|m| {
            ip.ImPlot_SetNextMarkerStyle(@intCast(m), st.mk_size, utils.IMPLOT_AUTO_COL, st.mk_weight, utils.IMPLOT_AUTO_COL);
            try ip.ImPlot_PlotLineXy("##Filled", &xs, &ys, 2);
            ig.igPopID();
            ys[0] -= 1; ys[1]  -= 1;
        }
        xs[0] = 6; xs[1] = 9; ys[0] = 10; ys[1] = 11;

        // open markers
        for (0..ip.ImPlotMarker_COUNT)|m| {
            ig.igPushID_Int(@intCast(m));
            ip.ImPlot_SetNextMarkerStyle(@intCast(m), st.mk_size, .{.x=0, .y=0, .z=0, .w=0}, st.mk_weight, utils.IMPLOT_AUTO_COL);
            try ip.ImPlot_PlotLineXy("##Open", &xs, &ys, 2);
            ig.igPopID();
            ys[0] -= 1; ys[1]  -= 1;
        }

        ip.ImPlot_PlotText("Filled Markers", 2.5, 6.0, .{.x = 0, .y = 0}, 0);
        ip.ImPlot_PlotText("Open Markers",   7.5, 6.0, .{.x = 0, .y = 0}, 0);

        ip.ImPlot_PushStyleColor_Vec4(ip.ImPlotCol_InlayText, .{.x = 1, .y = 0, .z = 1,.w = 1});
        ip.ImPlot_PlotText("Vertical Text", 5.0, 6.0, .{.x=0, .y=0}, ip.ImPlotTextFlags_Vertical);
        ip.ImPlot_PopStyleColor(1);

        ip.ImPlot_EndPlot();
    }
}

//----------------
// demo_NaNValues
//----------------
fn demo_NaNValues() !void {
    const st = struct {
      var  include_nan = true;
      var  flags:ip.ImPlotLineFlags = 0;
    };

    var data1 = [5]f32{0.0,0.25,0.5,0.75,1.0};
    var data2 = [5]f32{0.0,0.25,0.5,0.75,1.0};

    if (st.include_nan){
        data1[2] = utils.NaN_f32;
    }

    _ = ig.igCheckbox("Include NaN",&st.include_nan);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("Skip NaN", &st.flags, ip.ImPlotLineFlags_SkipNaN);

    if (ip.ImPlot_BeginPlot("##NaNValues", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetNextMarkerStyle(ip.ImPlotMarker_Square, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL);
        try ip.ImPlot_PlotLineXyEx("line", &data1, &data2, 5, st.flags, 0, utils.stride(data1[0]));
        try ip.ImPlot_PlotBars("bars", &data1, 5);
        ip.ImPlot_EndPlot();
    }
}

//------------------
// demo_LinePlots()
//------------------
fn demo_LinePlots() !void {
    const st = struct {
        var xs1: [1001]f32 = undefined;
        var ys1: [1001]f32 = undefined;
        var xs2: [20]f64 = undefined;
        var ys2: [20]f64 = undefined;
    };
    for (0..1001) |i| {
        st.xs1[i] = @as(f32, @floatFromInt(i)) * 0.001;
        st.ys1[i] = 0.5 + 0.5 * math.sin(50 * (st.xs1[i] + @as(f32, @floatCast(ig.igGetTime())) / 10));
    }
    for (0..20) |i| {
        st.xs2[i] = @as(f64, @floatFromInt(i)) * 1 / 19.0;
        st.ys2[i] = st.xs2[i] * st.xs2[i];
    }
    if (ip.ImPlot_BeginPlot("Line Plots", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxes("x", "y", 0, 0);
        try ip.ImPlot_PlotLineXy("f(x)", &st.xs1, &st.ys1, 1001);
        ip.ImPlot_SetNextMarkerStyle(ip.ImPlotMarker_Circle, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL);
        try ip.ImPlot_PlotLineXyEx("g(x)", &st.xs2, &st.ys2, 20, ip.ImPlotLineFlags_Segments, 0, utils.stride((st.xs2[0])));
        ip.ImPlot_EndPlot();
    }
}

//------------------
// demo_ErrorBars()
//------------------
fn demo_ErrorBars() !void {
    const xs   = [5]f32{1,2,3,4,5};
    const bar  = [5]f32{1,2,5,3,4};
    const lin1 = [5]f32{8,8,9,7,8};
    const lin2 = [5]f32{6,7,6,9,6};
    const err1 = [5]f32{0.2, 0.4, 0.2, 0.6, 0.4};
    const err2 = [5]f32{0.4, 0.2, 0.4, 0.8, 0.6};
    const err3 = [5]f32{0.09, 0.14, 0.09, 0.12, 0.16};
    const err4 = [5]f32{0.02, 0.08, 0.15, 0.05, 0.2};

    if (ip.ImPlot_BeginPlot("##ErrorBars", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxesLimits(0, 6, 0, 10, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotBarsXyEx( "Bar", &xs, &bar, 5, 0.5,1, 0, utils.stride(xs[0]));
        try ip.ImPlot_PlotErrorBars("Bar", &xs, &bar, &err1, 5);
        var vec4: ig.ImVec4 = undefined;
        ip.ImPlot_GetColormapColor(@ptrCast(&vec4), 1, utils.IMPLOT_AUTO);
        // TODO
        ip.ImPlot_SetNextErrorBarStyle(.{.x = vec4.x, .y = vec4.y , .z = vec4.z, .w = vec4.w}, 0, utils.IMPLOT_AUTO);
        try ip.ImPlot_PlotErrorBarsNeg("Line", &xs, &lin1, &err1, &err2, 5);
        ip.ImPlot_SetNextMarkerStyle(ip.ImPlotMarker_Square, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL);
        try ip.ImPlot_PlotLineXy(      "Line", &xs, &lin1, 5);
        ip.ImPlot_GetColormapColor(@ptrCast(&vec4), 2, utils.IMPLOT_AUTO);
        // TODO
        ip.ImPlot_PushStyleColor_Vec4(ip.ImPlotCol_ErrorBar, .{.x = vec4.x, .y = vec4.y , .z = vec4.z, .w = vec4.w} );
        try ip.ImPlot_PlotErrorBars(     "Scatter", &xs, &lin2, &err2, 5);
        try ip.ImPlot_PlotErrorBarsNegEx("Scatter", &xs, &lin2, &err3, &err4, 5, ip.ImPlotErrorBarsFlags_Horizontal, 0, utils.stride(xs[0]));
        ip.ImPlot_PopStyleColor(1);
        try ip.ImPlot_PlotScatterXy("Scatter", &xs, &lin2, 5);
        ip.ImPlot_EndPlot();
    }
}

//-----------------
// demo_StemPlots()
//-----------------
fn demo_StemPlots() !void {
    var xs :[51]f64 = undefined;
    var ys1:[51]f64 = undefined;
    var ys2:[51]f64 = undefined;
    for (0..51)|i| {
        xs[i] = @as(f64,@floatFromInt(i)) * 0.02;
        ys1[i] = 1.0 + 0.5 * math.sin(25*xs[i])*math.cos(2*xs[i]);
        ys2[i] = 0.5 + 0.25  * math.sin(10*xs[i]) * math.sin(xs[i]);
    }
    if (ip.ImPlot_BeginPlot("Stem Plots", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxisLimits(ip.ImAxis_X1,0,1.0, ip.ImPlotCond_Once);
        ip.ImPlot_SetupAxisLimits(ip.ImAxis_Y1,0,1.6, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotStemsXy("Stems 1", &xs, &ys1, 51);
        ip.ImPlot_SetNextMarkerStyle(ip.ImPlotMarker_Circle, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL);
        try ip.ImPlot_PlotStemsXy("Stems 2", &xs, &ys2, 51);
        ip.ImPlot_EndPlot();
    }
}

//----------------------
// demo_InfiniteLines()
//----------------------
fn demo_InfiniteLines() !void {
    const vals = [_]f64{0.25, 0.5, 0.75};
    if (ip.ImPlot_BeginPlot("##Infinite", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxes(null,null,ip.ImPlotAxisFlags_NoInitialFit,ip.ImPlotAxisFlags_NoInitialFit);
        _ = try ip.ImPlot_PlotInfLines("Vertical",    &vals,3);
        _ = try ip.ImPlot_PlotInfLinesEx("Horizontal",&vals,3,ip.ImPlotInfLinesFlags_Horizontal,0,utils.stride(vals[0]));
        ip.ImPlot_EndPlot();
    }
}

//----------------
// demo_PieCharts
// ---------------
fn demo_PieCharts() !void {
    const labels1 = [_][*c] const u8{"Frogs","Hogs","Dogs","Logs"};

    const st = struct {
      var data1 = [_]f32{0.15,  0.30,  0.2, 0.05};
      var flags:ip.ImPlotPieChartFlags  = 0;
    };

    ig.igSetNextItemWidth(250);
    _ = ig.igDragFloat4("Values", &st.data1, 0.01, 0, 1, "%3f", 0);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotPieChartFlags_Normalize",    &st.flags, ip.ImPlotPieChartFlags_Normalize);
    _ = ig.igCheckboxFlags_IntPtr("ImPlotPieChartFlags_IgnoreHidden", &st.flags, ip.ImPlotPieChartFlags_IgnoreHidden);

    if (ip.ImPlot_BeginPlot("##Pie1", .{.x=250, .y=250}, ip.ImPlotFlags_Equal | ip.ImPlotFlags_NoMouseText)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(0, 1, 0, 1, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotPieChartEx(&labels1, &st.data1, 4, 0.5, 0.5, 0.4, "%.2f", 90, st.flags);
        ip.ImPlot_EndPlot();
    }

    ig.igSameLine(0, -1.0);

    const labels2 = [_][*c] const u8{"A","B","C","D","E"};
    const data2 =  [_]c_int{1,1,2,3,5};

    ip.ImPlot_PushColormap_PlotColormap(ip.ImPlotColormap_Pastel);
    if (ip.ImPlot_BeginPlot("##Pie2", .{.x=250, .y=250}, ip.ImPlotFlags_Equal | ip.ImPlotFlags_NoMouseText)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(0, 1, 0, 1, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotPieChartEx(&labels2, &data2, 5, 0.5, 0.5, 0.4, "%.0f", 180, st.flags);
        ip.ImPlot_EndPlot();
    }
    ip.ImPlot_PopColormap(1);
}

//----------------------
// demo_FilledLinePlots
//----------------------
fn demo_FilledLinePlots() !void {
    var xs1:[101]f64 = undefined;
    var ys1:[101]f64 = undefined;
    var ys2:[101]f64 = undefined;
    var ys3:[101]f64 = undefined;
    c.srand(0);
    for (0..101)|i| {
        xs1[i] = @floatFromInt(i);
        ys1[i] = utils.RandomRange(400.0,450.0);
        ys2[i] = utils.RandomRange(275.0,350.0);
        ys3[i] = utils.RandomRange(150.0,225.0);
    }
    const st = struct {
      var show_lines = true;
      var show_fills = true;
      var fill_ref:f32 = 0;
      var shade_mode:c_int = 0;
    };
    const  flags:ip.ImPlotShadedFlags = 0;
    _ = ig.igCheckbox("Lines",&st.show_lines); ig.igSameLine(0, -1.0);
    _ = ig.igCheckbox("Fills",&st.show_fills);
    if (st.show_fills) {
        ig.igSameLine(0, -1.0);
        if (ig.igRadioButton_Bool("To -INF",st.shade_mode == 0))
            st.shade_mode = 0;
        ig.igSameLine(0, -1.0);
        if (ig.igRadioButton_Bool("To +INF",st.shade_mode == 1))
            st.shade_mode = 1;
        ig.igSameLine(0, -1.0);
        if (ig.igRadioButton_Bool("To Ref",st.shade_mode == 2))
            st.shade_mode = 2;
        if (st.shade_mode == 2) {
            ig.igSameLine(0, -1.0);
            ig.igSetNextItemWidth(100);
            _= ig.igDragFloat("##Ref",&st.fill_ref, 1, -100, 500, "%.3f", 0);
        }
    }

    if (ip.ImPlot_BeginPlot("Stock Prices", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxes("Days","Price", 0, 0);
        ip.ImPlot_SetupAxesLimits(0,100,0,500, ip.ImPlotCond_Once);
        if (st.show_fills) {
            ip.ImPlot_PushStyleVar_Float(ip.ImPlotStyleVar_FillAlpha, 0.25);
            try ip.ImPlot_PlotShadedXyRefEx("Stock 1", &xs1, &ys1, 101,
                                  if (st.shade_mode == 0 ) -utils.INFINITY_f32
                                  else (if (st.shade_mode == 1 ) utils.INFINITY_f32 else st.fill_ref)
                                , flags, 0, utils.stride(xs1[0]));
            try ip.ImPlot_PlotShadedXyRefEx("Stock 2", &xs1, &ys2, 101,
                                  if (st.shade_mode == 0 ) -utils.INFINITY_f32
                                  else (if (st.shade_mode == 1 ) utils.INFINITY_f32 else st.fill_ref)
                                , flags, 0, utils.stride(xs1[0]));
            try ip.ImPlot_PlotShadedXyRefEx("Stock 3", &xs1, &ys3, 101,
                                  if (st.shade_mode == 0 ) -utils.INFINITY_f32
                                  else (if (st.shade_mode == 1 ) utils.INFINITY_f32 else st.fill_ref)
                                , flags, 0, utils.stride(xs1[0]));
            ip.ImPlot_PopStyleVar(1);
        }
        if (st.show_lines) {
            try ip.ImPlot_PlotLineXy("Stock 1", &xs1, &ys1, 101);
            try ip.ImPlot_PlotLineXy("Stock 2", &xs1, &ys2, 101);
            try ip.ImPlot_PlotLineXy("Stock 3", &xs1, &ys3, 101);
        }
        ip.ImPlot_EndPlot();
    }
}

//------------------
// demo_ShadedPlots
//------------------
fn demo_ShadedPlots() !void {
    const MAX_N = 1001;
    var xs: [MAX_N]f32 = undefined;
    var ys: [MAX_N]f32 = undefined;
    var ys1: [MAX_N]f32 = undefined;
    var ys2: [MAX_N]f32 = undefined;
    var ys3: [MAX_N]f32 = undefined;
    var ys4: [MAX_N]f32 = undefined;

    c.srand(0);
    for (0..MAX_N) |i| {
        xs[i] = @as(f32, @floatFromInt(i)) * 0.001;
        ys[i] = 0.25 + 0.25 * math.sin(25 * xs[i]) * math.sin(5 * xs[i]) + utils.RandomRange(-0.01, 0.01);
        ys1[i] = ys[i] + utils.RandomRange(0.1, 0.12);
        ys2[i] = ys[i] - utils.RandomRange(0.1, 0.12);
        ys3[i] = 0.75 + 0.2 * math.sin(25 * xs[i]);
        ys4[i] = 0.75 + 0.1 * math.cos(25 * xs[i]);
    }
    const st = struct {
        var alpha: f32 = 0.25;
    };
    _ = ig.igDragFloat("Alpha", &st.alpha, 0.01, 0, 1, "%.3f", 0);

    if (ip.ImPlot_BeginPlot("Shaded Plots", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_PushStyleVar_Float(ip.ImPlotStyleVar_FillAlpha, st.alpha);
        try ip.ImPlot_PlotShadedXyy("Uncertain Data", &xs, &ys1, &ys2, MAX_N);
        try ip.ImPlot_PlotLineXy("Uncertain Data",    &xs, &ys,  MAX_N);
        try ip.ImPlot_PlotShadedXyy("Overlapping",    &xs, &ys3, &ys4, MAX_N);
        try ip.ImPlot_PlotLineXy("Overlapping",       &xs, &ys3, MAX_N);
        try ip.ImPlot_PlotLineXy("Overlapping",       &xs, &ys4, MAX_N);
        ip.ImPlot_PopStyleVar(1);
        ip.ImPlot_EndPlot();
    }
}

//-------------------
// demo_ScatterPlots
//-------------------
fn demo_ScatterPlots() !void {
    c.srand(0);
    var xs1:[100]f32 = undefined;
    var ys1:[100]f32 = undefined;
    for (0..100)|i| {
        xs1[i] = @as(f32,@floatFromInt(i)) * 0.01;
        ys1[i] = xs1[i] + 0.1 *  @as(f32,@floatFromInt(c.rand())) / @as(f32,@floatFromInt(c.RAND_MAX));
    }
    var xs2:[50]f32 = undefined;
    var ys2:[50]f32 = undefined;
    for (0..50)|i| {
        xs2[i] = 0.25 + 0.2 * @as(f32,@floatFromInt(c.rand())) / @as(f32,@floatFromInt(c.RAND_MAX));
        ys2[i] = 0.75 + 0.2 * @as(f32,@floatFromInt(c.rand())) / @as(f32,@floatFromInt(c.RAND_MAX));
    }

    if (ip.ImPlot_BeginPlot("Scatter Plot", .{ .x = -1, .y = 0 }, 0)) {
        try ip.ImPlot_PlotScatterXy("Data 1", &xs1, &ys1, 100);
        ip.ImPlot_PushStyleVar_Float(ip.ImPlotStyleVar_FillAlpha, 0.25);

        var vec4: ig.ImVec4 = undefined;
        ip.ImPlot_GetColormapColor(@ptrCast(&vec4), 1, utils.IMPLOT_AUTO);
        // TODO
        ip.ImPlot_SetNextMarkerStyle(ip.ImPlotMarker_Square, 6
                                   , .{.x = vec4.x, .y = vec4.y , .z = vec4.z, .w = vec4.w}
                                   , utils.IMPLOT_AUTO
                                   , .{.x = vec4.x, .y = vec4.y , .z = vec4.z, .w = vec4.w});
        try ip.ImPlot_PlotScatterXy("Data 2", &xs2, &ys2, 50);
        ip.ImPlot_PopStyleVar(1);
        ip.ImPlot_EndPlot();
    }
}

//---------------------
// demo_StairstepPlots
//---------------------
fn demo_StairstepPlots() !void {
    var ys1:[21]f32 = undefined;
    var ys2:[21]f32 = undefined;
    for (0..21)|i| {
        ys1[i] = 0.75 + 0.2 * math.sin(10 * @as(f32,@floatFromInt(i)) * 0.05);
        ys2[i] = 0.25 + 0.2 * math.sin(10 * @as(f32,@floatFromInt(i)) * 0.05);
    }
    const st = struct {
      var flags:ip.ImPlotStairsFlags  = 0;
    };
    _ = ig.igCheckboxFlags_IntPtr("ImPlotStairsFlags" , &st.flags, ip.ImPlotStairsFlags_Shaded);
    if (ip.ImPlot_BeginPlot("Stairstep Plot", .{ .x = -1, .y = 0 }, 0)) {
        ip.ImPlot_SetupAxes("x","f(x)", 0, 0);
        ip.ImPlot_SetupAxesLimits(0,1,0,1, ip.ImPlotCond_Once);

        ip.ImPlot_PushStyleColor_Vec4(ip.ImPlotCol_Line, .{.x = 0.5,.y = 0.5,.z = 0.5, .w = 1.0});
        try ip.ImPlot_PlotLineEx("##1",&ys1,21,0.05, 0, 0, 0, utils.stride(ys1[0]));
        try ip.ImPlot_PlotLineEx("##2",&ys2,21,0.05, 0, 0, 0, utils.stride(ys2[0]));
        ip.ImPlot_PopStyleColor(1);

        ip.ImPlot_SetNextMarkerStyle(ip.ImPlotMarker_Circle, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL);
        ip.ImPlot_SetNextFillStyle(utils.IMPLOT_AUTO_COL, 0.25);
        try ip.ImPlot_PlotStairsEx("Post Step (default)", &ys1, 21, 0.05, 0, st.flags, 0, utils.stride(ys1[0]));
        ip.ImPlot_SetNextMarkerStyle(ip.ImPlotMarker_Circle, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL, utils.IMPLOT_AUTO, utils.IMPLOT_AUTO_COL);
        ip.ImPlot_SetNextFillStyle(utils.IMPLOT_AUTO_COL, 0.25);
        try ip.ImPlot_PlotStairsEx("Pre Step", &ys2, 21, 0.05, 0, st.flags | ip.ImPlotStairsFlags_PreStep, 0, utils.stride(ys1[0]));

        ip.ImPlot_EndPlot();
    }
}

//-------------
// demo_Tables
//-------------
fn demo_Tables() !void {
    const st = struct {
        var anim = true;
        var offset: usize = 0;
        var data: [100]f32 = undefined;
        var flags: ig.ImGuiTableFlags = ig.ImGuiTableFlags_BordersOuter
                                      | ig.ImGuiTableFlags_BordersV
                                      | ig.ImGuiTableFlags_RowBg
                                      | ig.ImGuiTableFlags_Resizable
                                      | ig.ImGuiTableFlags_Reorderable;
    };
    const dtSize = st.data.len;
    ig.igBulletText("Plots can be used inside of ImGui tables as another means of creating subplots.");
    _ = ig.igCheckbox("Animate", &st.anim);
    if (st.anim) {
        st.offset = (st.offset + 1) % dtSize;
    }
    if (ig.igBeginTable("##table", 3, st.flags, .{ .x = -1, .y = 0 }, 0)) {
        ig.igTableSetupColumn("Electrode", ig.ImGuiTableColumnFlags_WidthFixed, 75.0, 0);
        ig.igTableSetupColumn("Voltage", ig.ImGuiTableColumnFlags_WidthFixed, 75.0, 0);
        ig.igTableSetupColumn("EMG Signal", ig.ImGuiTableColumnFlags_WidthFixed, 0, 0);
        ig.igTableHeadersRow();
        ip.ImPlot_PushColormap_PlotColormap(ip.ImPlotColormap_Cool);
        for (0..10) |row| {
            ig.igTableNextRow(0, 0);
            c.srand(@as(c_uint,@intCast(row)));
            for (0..dtSize) |i| {
                st.data[i] = utils.RandomRange(0.0, 10.0);
            }
            _ = ig.igTableSetColumnIndex(0);
            ig.igText("EMG %d", row);
            _ = ig.igTableSetColumnIndex(1);
            ig.igText("%.3f V", st.data[st.offset]);
            _ = ig.igTableSetColumnIndex(2);
            ig.igPushID_Int(@intCast(row));
            var vec4: ig.ImVec4 = undefined;
            ip.ImPlot_GetColormapColor(@ptrCast(&vec4), @intCast(row), utils.IMPLOT_AUTO);
            // TODO
            utils.Sparkline("##spark", &st.data, dtSize, 0, 11.0, @intCast(st.offset)
              , .{.x = vec4.x, .y = vec4.y, .z = vec4.z, .w = vec4.w }
              , .{ .x = -1, .y = 35 });
            ig.igPopID();
        }
        ip.ImPlot_PopColormap(1);
        ig.igEndTable();
    }
}

//----------------
// demo_DragRects
//----------------
fn demo_DragRects() !void {
    var x_data: [512]f32 = undefined;
    var y_data1: [512]f32 = undefined;
    var y_data2: [512]f32 = undefined;
    var y_data3: [512]f32 = undefined;
    const sampling_freq = 44100;
    const freq = 500;
    const st = struct {
        var clicked = false;
        var hovered = false;
        var held = false;
        var rect: ip.ImPlotRect = .{ .X = .{ .Min = 0.0025, .Max = 0.0045 }, .Y = .{ .Min = 0, .Max = 0.5 } };
        var flags = ip.ImPlotDragToolFlags_None;
    };
    for (0..512) |i| {
        const t: f32 = @as(f32, @floatFromInt(i)) / sampling_freq;
        x_data[i] = t;
        const arg: f32 = 2 * 3.14 * freq * t;
        y_data1[i] = math.sin(arg);
        y_data2[i] = y_data1[i] * -0.6 + math.sin(2 * arg) * 0.4;
        y_data3[i] = y_data2[i] * -0.6 + math.sin(3 * arg) * 0.4;
    }
    ig.igBulletText("Click and drag the edges, corners, and center of the rect.");
    ig.igBulletText("Double click edges to expand rect to plot extents.");

    _ = ig.igCheckboxFlags_IntPtr("NoCursors", &st.flags, ip.ImPlotDragToolFlags_NoCursors);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("NoFit", &st.flags, ip.ImPlotDragToolFlags_NoFit);
    ig.igSameLine(0, -1.0);
    _ = ig.igCheckboxFlags_IntPtr("NoInput", &st.flags, ip.ImPlotDragToolFlags_NoInputs);

    if (ip.ImPlot_BeginPlot("##Main", .{ .x = -1, .y = 150 }, 0)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoTickLabels, ip.ImPlotAxisFlags_NoTickLabels);
        ip.ImPlot_SetupAxesLimits(0, 0.01, -1, 1, ip.ImPlotCond_Once);
        try ip.ImPlot_PlotLineXy("Signal 1", &x_data, &y_data1, 512);
        try ip.ImPlot_PlotLineXy("Signal 2", &x_data, &y_data2, 512);
        try ip.ImPlot_PlotLineXy("Signal 3", &x_data, &y_data3, 512);
        _ = ip.ImPlot_DragRect(0, &st.rect.X.Min, &st.rect.Y.Min, &st.rect.X.Max, &st.rect.Y.Max, .{ .x = 1, .y = 0, .z = 1, .w = 1 }, st.flags, &st.clicked, &st.hovered, &st.held);
        ip.ImPlot_EndPlot();
    }
    // TODO
    const vec4 = ip.ImPlot_GetStyle().*.Colors[ip.ImPlotCol_PlotBg];
    const bg_col: ig.ImVec4 =
      if (st.held) .{ .x = 0.5, .y = 0, .z = 0.5, .w = 1 }
      else if (st.hovered) .{ .x = 0.25, .y = 0, .z = 0.25, .w = 1 }
      else .{.x = vec4.x, .y = vec4.y, .z = vec4.z, .w = vec4.w};
    // TODO
    ip.ImPlot_PushStyleColor_Vec4(ip.ImPlotCol_PlotBg
      , .{.x = bg_col.x , .y = bg_col.y, .z = bg_col.z, .w = bg_col.w});
    if (ip.ImPlot_BeginPlot("##rect", .{ .x = -1, .y = 150 }, ip.ImPlotFlags_CanvasOnly)) {
        ip.ImPlot_SetupAxes(null, null, ip.ImPlotAxisFlags_NoDecorations, ip.ImPlotAxisFlags_NoDecorations);
        ip.ImPlot_SetupAxesLimits(st.rect.X.Min, st.rect.X.Max, st.rect.Y.Min, st.rect.Y.Max, ig.ImGuiCond_Always);
        try ip.ImPlot_PlotLineXy("Signal 1", &x_data, &y_data1, 512);
        try ip.ImPlot_PlotLineXy("Signal 2", &x_data, &y_data2, 512);
        try ip.ImPlot_PlotLineXy("Signal 3", &x_data, &y_data3, 512);
        ip.ImPlot_EndPlot();
    }
    ip.ImPlot_PopStyleColor(1);
    const empty: [*c]const u8 = "";
    const not: [*c]const u8 = "not ";
    ig.igText("Rect is %sclicked, %shovered, %sheld", if (st.clicked) empty else not, if (st.hovered) empty else not, if (st.held) empty else not);
}
