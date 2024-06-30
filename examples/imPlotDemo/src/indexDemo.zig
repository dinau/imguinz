// Plots
const plots_lineplots    = @import ("plots/LinePlots.zig");
const plots_shadedplots  = @import ("plots/ShadedPlots.zig");
const plots_histogram2d  = @import ("plots/Histogram2D.zig");
const plots_bargroups    = @import ("plots/BarGroups.zig");
const plots_barstacks    = @import ("plots/BarStacks.zig");
const plots_piecharts    = @import ("plots/PieCharts.zig");
const plots_heatmaps     = @import ("plots/Heatmaps.zig");
const plots_images       = @import ("plots/Images.zig");
// SubPlots
const subplots_tables    = @import ("subplots/Tables.zig");
// Axes
const axes_logscale      = @import ("axes/LogScale.zig");

pub const ig = @cImport ({
  @cInclude ("cimgui.h");
});

pub fn imPlotDemoTabs() !void {
  if (ig.igBeginTabBar("ImPlotDemoTabs", 0)) {
    defer ig.igEndTabBar();
    if (ig.igBeginTabItem("Plots", null, 0)) {
        defer ig.igEndTabItem();
        try  demoHeader("Line Plots", plots_lineplots.demo_LinePlots);
    //  demoHeader("Filled Line Plots", demo_FilledLinePlots);
    try  demoHeader("Shaded Plots##", plots_shadedplots.demo_ShadedPlots);
    //  demoHeader("Scatter Plots", demo_ScatterPlots);
    //  demoHeader("Realtime Plots", demo_RealtimePlots);
    //  demoHeader("Stairstep Plots", demo_StairstepPlots);
    //  demoHeader("Bar Plots", demo_BarPlots);
        try demoHeader("Bar Groups", plots_bargroups.demo_BarGroups);
        try  demoHeader("Bar Stacks", plots_barstacks.demo_BarStacks);
    //  demoHeader("Error Bars", demo_ErrorBars);
    //  demoHeader("Stem Plots##", demo_StemPlots);
    //  demoHeader("Infinite Lines", demo_InfiniteLines);
        try  demoHeader("Pie Charts", plots_piecharts.demo_PieCharts);
        try  demoHeader("Heatmaps", plots_heatmaps.demo_Heatmaps);
    //  demoHeader("Histogram", demo_Histogram);
        try  demoHeader("Histogram 2D", plots_histogram2d.demo_Histogram2D);
    //  demoHeader("Digital Plots", demo_DigitalPlots);
        try demoHeader("Images", plots_images.demo_Images);
    //  demoHeader("Markers and Text", demo_MarkersAndText);
    //  demoHeader("NaN Values", demo_NaNValues);
    }
    if (ig.igBeginTabItem("Subplots", null, 0)) {
      defer ig.igEndTabItem();
    //  demoHeader("Sizing", demo_SubplotsSizing);
    //  demoHeader("Item Sharing", demo_SubplotItemSharing);
    //  demoHeader("Axis Linking", demo_SubplotAxisLinking);
      try demoHeader("Tables", subplots_tables.demo_Tables);
    }
    if (ig.igBeginTabItem("Axes", null, 0)) {
      defer ig.igEndTabItem();
      try demoHeader("Log Scale", axes_logscale.demo_LogScale);
    //         demoHeader("Symmetric Log Scale", demo_SymmetricLogScale);
    //         demoHeader("Time Scale", demo_TimeScale);
    //         demoHeader("Custom Scale", demo_CustomScale);
    //         demoHeader("Multiple Axes", demo_MultipleAxes);
    //         demoHeader("Tick Labels", demo_TickLabels);
    //         demoHeader("Linked Axes", demo_LinkedAxes);
    //         demoHeader("Axis Constraints", demo_AxisConstraints);
    //         demoHeader("Equal Axes", demo_EqualAxes);
    //         demoHeader("Auto-Fitting Data", demo_AutoFittingData);
    }
    //     if (ig.igBeginTabItem("Tools")) {
    //         demoHeader("Offset and Stride", demo_OffsetAndStride);
    //         demoHeader("Drag Points", demo_DragPoints);
    //         demoHeader("Drag Lines", demo_DragLines);
    //         demoHeader("Drag Rects", demo_DragRects);
    //         demoHeader("Querying", demo_Querying);
    //         demoHeader("Annotations", demo_Annotations);
    //         demoHeader("Tags", demo_Tags);
    //         demoHeader("Drag and Drop", demo_DragAndDrop);
    //         demoHeader("Legend Options", demo_LegendOptions);
    //         demoHeader("Legend Popups", demo_LegendPopups);
    //         demoHeader("Colormap Widgets", demo_ColormapWidgets);
    //         ig.igEndTabItem();
    //     }
    //     if (ig.igBeginTabItem("Custom")) {
    //         demoHeader("Custom Styles", demo_CustomStyles);
    //         demoHeader("Custom Data and Getters", demo_CustomDataAndGetters);
    //         demoHeader("Custom Rendering", demo_CustomRendering);
    //         demoHeader("Custom Plotters and Tooltips", demo_CustomPlottersAndTooltips);
    //         ig.igEndTabItem();
    //     }
    //     if (ig.igBeginTabItem("Config")) {
    //         demo_Config();
    //         ig.igEndTabItem();
    //     }
    //     if (ig.igBeginTabItem("Help")) {
    //         demo_Help();
    //         ig.igEndTabItem();
    //     }
  }
}
fn demoHeader(label:anytype, demo:anytype) !void {
    if (ig.igTreeNodeEx_Str(label, 0)) {
        try demo();
        ig.igTreePop();
    }
}
