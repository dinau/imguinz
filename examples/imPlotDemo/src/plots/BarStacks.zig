const std = @import("std");
const math = @import("std").math;
const ip = @import("../zimplot.zig");
const utils = @import("../utils.zig");

pub const ig = @cImport({
    @cInclude("cimgui.h");
    @cInclude("cimplot.h");
});

pub fn demo_BarStacks() !void {
    const st = struct {
       var  Liars:ig.ImPlotColormap = -1;
       var diverging = true;
    };
    if (st.Liars == -1) {
         const Liars_Data = [6]ig.ImU32{ 4282515870, 4282609140, 4287357182, 4294630301, 4294945280, 4294921472 };
         st.Liars = ig.ImPlot_AddColormap_U32Ptr("Liars", &Liars_Data, 6, true);
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

    ig.ImPlot_PushColormap_PlotColormap(st.Liars);
    if (ig.ImPlot_BeginPlot("PolitiFact: Who Lies More?",.{.x=-1, .y=400},ig.ImPlotFlags_NoMouseText)) {
        ig.ImPlot_SetupLegend(ig.ImPlotLocation_South, ig.ImPlotLegendFlags_Outside | ig.ImPlotLegendFlags_Horizontal);
        ig.ImPlot_SetupAxes(null,null,ig.ImPlotAxisFlags_AutoFit | ig.ImPlotAxisFlags_NoDecorations,ig.ImPlotAxisFlags_AutoFit |  ig.ImPlotAxisFlags_Invert);
        ig.ImPlot_SetupAxisTicks_double(ig.ImAxis_Y1,0,19,20, &politicians,false);
        if (st.diverging){
            try ip.ImPlot_PlotBarGroupsEx(&labels_div,&data_div,9,20,0.75,0,ig.ImPlotBarGroupsFlags_Stacked | ig.ImPlotBarGroupsFlags_Horizontal);
        }
        else{
         try ip.ImPlot_PlotBarGroupsEx(&labels_reg,&data_reg,6,20,0.75,0,ig.ImPlotBarGroupsFlags_Stacked | ig.ImPlotBarGroupsFlags_Horizontal);
        }
        ig.ImPlot_EndPlot();
    }
    ig.ImPlot_PopColormap(1);
}
