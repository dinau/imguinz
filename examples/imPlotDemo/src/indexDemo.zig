const subplots_tables   = @import ("subplots/Tables.zig");
const plots_lineplots   = @import ("plots/LinePlots.zig");
const plots_histogram2d = @import ("plots/Histogram2D.zig");
const plots_bargroups   = @import ("plots/BarGroups.zig");
const plots_heatmaps    = @import ("plots/Heatmaps.zig");
const plots_images      = @import ("plots/Images.zig");
const axes_logscale     = @import ("axes/LogScale.zig");

pub const ig = @cImport ({
  @cInclude ("cimgui.h");
});

pub fn imPlotDemoTabs() !void {
  if (ig.igBeginTabBar("ImPlotDemoTabs", 0)) {
    defer ig.igEndTabBar();
    if (ig.igBeginTabItem("Plots", null, 0)) {
        defer ig.igEndTabItem();
        try  DemoHeader("Line Plots", plots_lineplots.Demo_LinePlots);
    //  DemoHeader("Filled Line Plots", Demo_FilledLinePlots);
    //  DemoHeader("Shaded Plots##", Demo_ShadedPlots);
    //  DemoHeader("Scatter Plots", Demo_ScatterPlots);
    //  DemoHeader("Realtime Plots", Demo_RealtimePlots);
    //  DemoHeader("Stairstep Plots", Demo_StairstepPlots);
    //  DemoHeader("Bar Plots", Demo_BarPlots);
        try DemoHeader("Bar Groups", plots_bargroups.Demo_BarGroups);
    //  DemoHeader("Bar Stacks", Demo_BarStacks);
    //  DemoHeader("Error Bars", Demo_ErrorBars);
    //  DemoHeader("Stem Plots##", Demo_StemPlots);
    //  DemoHeader("Infinite Lines", Demo_InfiniteLines);
    //  DemoHeader("Pie Charts", Demo_PieCharts);
        try  DemoHeader("Heatmaps", plots_heatmaps.Demo_Heatmaps);
    //  DemoHeader("Histogram", Demo_Histogram);
        try  DemoHeader("Histogram 2D", plots_histogram2d.Demo_Histogram2D);
    //  DemoHeader("Digital Plots", Demo_DigitalPlots);
        try DemoHeader("Images", plots_images.Demo_Images);
    //  DemoHeader("Markers and Text", Demo_MarkersAndText);
    //  DemoHeader("NaN Values", Demo_NaNValues);
    }
    if (ig.igBeginTabItem("Subplots", null, 0)) {
      defer ig.igEndTabItem();
    //  DemoHeader("Sizing", Demo_SubplotsSizing);
    //  DemoHeader("Item Sharing", Demo_SubplotItemSharing);
    //  DemoHeader("Axis Linking", Demo_SubplotAxisLinking);
      try DemoHeader("Tables", subplots_tables.Demo_Tables);
    }
    if (ig.igBeginTabItem("Axes", null, 0)) {
      defer ig.igEndTabItem();
      try DemoHeader("Log Scale", axes_logscale.Demo_LogScale);
    //         DemoHeader("Symmetric Log Scale", Demo_SymmetricLogScale);
    //         DemoHeader("Time Scale", Demo_TimeScale);
    //         DemoHeader("Custom Scale", Demo_CustomScale);
    //         DemoHeader("Multiple Axes", Demo_MultipleAxes);
    //         DemoHeader("Tick Labels", Demo_TickLabels);
    //         DemoHeader("Linked Axes", Demo_LinkedAxes);
    //         DemoHeader("Axis Constraints", Demo_AxisConstraints);
    //         DemoHeader("Equal Axes", Demo_EqualAxes);
    //         DemoHeader("Auto-Fitting Data", Demo_AutoFittingData);
    }
    //     if (ig.igBeginTabItem("Tools")) {
    //         DemoHeader("Offset and Stride", Demo_OffsetAndStride);
    //         DemoHeader("Drag Points", Demo_DragPoints);
    //         DemoHeader("Drag Lines", Demo_DragLines);
    //         DemoHeader("Drag Rects", Demo_DragRects);
    //         DemoHeader("Querying", Demo_Querying);
    //         DemoHeader("Annotations", Demo_Annotations);
    //         DemoHeader("Tags", Demo_Tags);
    //         DemoHeader("Drag and Drop", Demo_DragAndDrop);
    //         DemoHeader("Legend Options", Demo_LegendOptions);
    //         DemoHeader("Legend Popups", Demo_LegendPopups);
    //         DemoHeader("Colormap Widgets", Demo_ColormapWidgets);
    //         ig.igEndTabItem();
    //     }
    //     if (ig.igBeginTabItem("Custom")) {
    //         DemoHeader("Custom Styles", Demo_CustomStyles);
    //         DemoHeader("Custom Data and Getters", Demo_CustomDataAndGetters);
    //         DemoHeader("Custom Rendering", Demo_CustomRendering);
    //         DemoHeader("Custom Plotters and Tooltips", Demo_CustomPlottersAndTooltips);
    //         ig.igEndTabItem();
    //     }
    //     if (ig.igBeginTabItem("Config")) {
    //         Demo_Config();
    //         ig.igEndTabItem();
    //     }
    //     if (ig.igBeginTabItem("Help")) {
    //         Demo_Help();
    //         ig.igEndTabItem();
    //     }
  }
}
fn DemoHeader(label:anytype, demo:anytype) !void {
    if (ig.igTreeNodeEx_Str(label, 0)) {
        try demo();
        ig.igTreePop();
    }
}
