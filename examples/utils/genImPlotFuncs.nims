# Written by 2024/06 by dinau

import strformat,strutils

let header = """
// Notice: This file was auto generated.
// 2024/06 by dinau
//
const std = @import("std");
pub const ig = @cImport ({
  @cInclude ("cimplot.h");
});

"""

type
  TPat = object
    postfix:string
    fullArgs:string
    shortArgsNum:int
    shortArgsInner:string
    hina: int
    retVal: string

  TFunc = object
    name:string
    patns:seq[TPat]

let patXy      = TPat(postfix: "Xy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int" # Ex
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0, 0, tsize"
                     ,hina: 2
                     ,retVal: ""
                     )
let patScale   = TPat(postfix: "Scale"
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 1.0, 0, 0, 0, tsize"
                     ,hina: 1
                     ,retVal: ""
                     )
let patXyScale = TPat(postfix: "XyScale"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 1.0, 0, 0, 0, tsize"
                     ,hina: 2
                     ,retVal: ""
                     )
let patXyRef   = TPat(postfix: "XyRef"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, yref:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0, 0, 0, tsize"
                     ,hina: 2
                     ,retVal: ""
                     )
let patXyy     = TPat(postfix: "Xyy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, ys2:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 5
                     ,shortArgsInner: "label, xs, ys, ys2, count, 0, 0, tsize"
                     ,hina: 6
                     ,retVal: ""
                     )
let patRefScale = TPat(postfix: "RefScale"
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, yref:f64, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 0, 1.0, 0, 0, 0, tsize"
                     ,hina: 1
                     ,retVal: ""
                     )
let patBars    = TPat(postfix: ""
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, bar_size:f64, shift:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 0.67, 0, 0, 0, tsize"
                     ,hina: 1
                     ,retVal: ""
                     )
let patBarsXy  = TPat(postfix: "Xy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, bar_size:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0.67, 0, 0, tsize"
                     ,hina: 2
                     ,retVal: ""
                     )

let patBarGroups  = TPat(postfix: ""
                     ,fullArgs: "label_ids:anytype,values:anytype,item_count:c_int,group_count:c_int,group_size:f64,shift:f64,flags:c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label_ids, values, item_count, group_count, 0.67, 0, 0"
                     ,hina: 3
                     ,retVal: ""
                     )
let patHistg2D  = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype,count:c_int, x_bins:c_int, y_bins:c_int ,range:ig.ImPlotRect , flags:ig.ImPlotHistogramFlags "
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label_id, xs, ys,count, ig.ImPlotBin_Sturges, ig.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0"
                     ,hina: 3
                     ,retVal: "f64"
                     )
let patHistg  = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, count:c_int, bins:c_int, bar_scale:f64 ,range:ig.ImPlotRange , flags:ig.ImPlotHistogramFlags "
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label_id, values, count, ig.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0"
                     ,hina: 3
                     ,retVal: "f64"
                     )
#IMPLOT_TMP double PlotHistogram(const char* label_id, const T* values, int count, int bins=ImPlotBin_Sturges, double bar_scale=1.0, ImPlotRange range=ImPlotRange(), ImPlotHistogramFlags flags=0);
#CIMGUI_API double ImPlot_PlotHistogram_U8Ptr(const char* label_id,const ImU8* values,int count,int bins,double bar_scale,ImPlotRange range,ImPlotHistogramFlags flags);
let patPieChart  = TPat(postfix: ""
                     ,fullArgs: "label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,label_fmt:anytype,angle0:f64,flags:c_int"
                     ,shortArgsNum: 6
                     ,shortArgsInner: "label_ids, values, count, x, y, radius, \"%.1f\", 90, 0"
                     ,hina: 7
                     ,retVal: ""
                     )
let patPieChartFmt  = TPat(postfix: "Fmt"
                     ,fullArgs: "label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,fmt:ig.ImPlotFormatter ,fmt_data:anytype, angle0:f64,flags:c_int"
                     ,shortArgsNum: 7
                     ,shortArgsInner: "label_ids, values, count, x, y, radius, fmt, null, 90, 0"
                     ,hina: 8
                     ,retVal: ""
                     )

#PlotPieChart(const char* const label_ids[]
#, const T* values
#, int count
#, double x
#, double y
#, double radius
#---
#, const char* label_fmt="%.1f"
#, double angle0=90
#, ImPlotPieChartFlags flags=0);

#ImPlot_PlotPieChart_S8PtrStr(const char* const label_ids[]
#,const ImS8* values
#,int count
#,double x
#,double y
#,double radius
#,const char* label_fmt
#,double angle0
#,ImPlotPieChartFlags flags);

#PlotPieChart(const char* const label_ids[]
#, const T* values
#, int count
#, double x
#, double y
#, double radius
#, ImPlotFormatter fmt
#---
#, void* fmt_data=nullptr
#, double angle0=90
#, ImPlotPieChartFlags flags=0);

#ImPlot_PlotPieChart_S8PtrPlotFormatter(const char* const label_ids[]
#,const ImS8* values
#,int count
#,double x
#,double y
#,double radius
#,ImPlotFormatter fmt
#----
#,void* fmt_data
#,double angle0
#,ImPlotPieChartFlags flags);


let hina1 =  """
  const typ =  @TypeOf($4[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_Plot$1_FloatPtrInt  ($3),
    f64           => ig.ImPlot_Plot$1_doublePtrInt ($3),
    i8            => ig.ImPlot_Plot$1_S8PtrInt     ($3),
    u8            => ig.ImPlot_Plot$1_U8PtrInt     ($3),
    i16, ig.ImS16 => ig.ImPlot_Plot$1_S16PtrInt    ($3),
    u16, ig.ImU16 => ig.ImPlot_Plot$1_U16PtrInt    ($3),
    i32, ig.ImS32 => ig.ImPlot_Plot$1_S32PtrInt    ($3),
    u32, ig.ImU32 => ig.ImPlot_Plot$1_U32PtrInt    ($3),
    i64, ig.ImS64 => ig.ImPlot_Plot$1_S64PtrInt    ($3),
    u64, ig.ImU64 => ig.ImPlot_Plot$1_U64PtrInt    ($3),
    else =>  {return error.ImPlot_Plot$1$2_Argument;}
  }
}
"""
let hina2 =  """
  const typ =  @TypeOf($4[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_Plot$1_FloatPtrFloatPtr   ($3),
    f64           => ig.ImPlot_Plot$1_doublePtrdoublePtr ($3),
    i8            => ig.ImPlot_Plot$1_S8PtrS8Ptr         ($3),
    u8            => ig.ImPlot_Plot$1_U8PtrU8Ptr         ($3),
    i16, ig.ImS16 => ig.ImPlot_Plot$1_S16PtrS16Ptr       ($3),
    u16, ig.ImU16 => ig.ImPlot_Plot$1_U16PtrU16Ptr       ($3),
    i32, ig.ImS32 => ig.ImPlot_Plot$1_S32PtrS32Ptr       ($3),
    u32, ig.ImU32 => ig.ImPlot_Plot$1_U32PtrU32Ptr       ($3),
    i64, ig.ImS64 => ig.ImPlot_Plot$1_S64PtrS64Ptr       ($3),
    u64, ig.ImU64 => ig.ImPlot_Plot$1_U64PtrU64Ptr       ($3),
    else =>  {return error.ImPlot_Plot$1$2_Argument;}
  }
}
"""
let hina3 =  """
  const typ =  @TypeOf($4[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  $5 switch (typ) {
    f32           => ig.ImPlot_Plot$1_FloatPtr  ($3),
    f64           => ig.ImPlot_Plot$1_doublePtr ($3),
    i8            => ig.ImPlot_Plot$1_S8Ptr     ($3),
    u8            => ig.ImPlot_Plot$1_U8Ptr     ($3),
    i16, ig.ImS16 => ig.ImPlot_Plot$1_S16Ptr    ($3),
    u16, ig.ImU16 => ig.ImPlot_Plot$1_U16Ptr    ($3),
    i32, ig.ImS32 => ig.ImPlot_Plot$1_S32Ptr    ($3),
    u32, ig.ImU32 => ig.ImPlot_Plot$1_U32Ptr    ($3),
    i64, ig.ImS64 => ig.ImPlot_Plot$1_S64Ptr    ($3),
    u64, ig.ImU64 => ig.ImPlot_Plot$1_U64Ptr    ($3),
    else =>  {return error.ImPlot_Plot$1$2_Argument;}
  }$6
}
"""
let hina4 = """

"""
let hina5 = ""
let hina6 = """
  const typ =  @TypeOf($4[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  $5 switch (typ) {
    f32           => ig.ImPlot_Plot$1_FloatPtrFloatPtrFloatPtr    ($3),
    f64           => ig.ImPlot_Plot$1_doublePtrdoublePtrdoublePtr ($3),
    i8            => ig.ImPlot_Plot$1_S8PtrS8PtrS8Ptr             ($3),
    u8            => ig.ImPlot_Plot$1_U8PtrU8PtrU8Ptr             ($3),
    i16, ig.ImS16 => ig.ImPlot_Plot$1_S16PtrS16PtrS16Ptr          ($3),
    u16, ig.ImU16 => ig.ImPlot_Plot$1_U16PtrU16PtrU16Ptr          ($3),
    i32, ig.ImS32 => ig.ImPlot_Plot$1_S32PtrS32PtrS32Ptr          ($3),
    u32, ig.ImU32 => ig.ImPlot_Plot$1_U32PtrU32PtrU32Ptr          ($3),
    i64, ig.ImS64 => ig.ImPlot_Plot$1_S64PtrS64PtrS64Ptr          ($3),
    u64, ig.ImU64 => ig.ImPlot_Plot$1_U64PtrU64PtrU64Ptr          ($3),
    else =>  {return error.ImPlot_Plot$1$2_Argument;}
  }$6
}
"""

let hina7 =  """
  const typ =  @TypeOf($4[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_Plot$1_FloatPtrStr  ($3),
    f64           => ig.ImPlot_Plot$1_doublePtrStr ($3),
    i8            => ig.ImPlot_Plot$1_S8PtrStr     ($3),
    u8            => ig.ImPlot_Plot$1_U8PtrStr     ($3),
    i16, ig.ImS16 => ig.ImPlot_Plot$1_S16PtrStr    ($3),
    u16, ig.ImU16 => ig.ImPlot_Plot$1_U16PtrStr    ($3),
    i32, ig.ImS32 => ig.ImPlot_Plot$1_S32PtrStr    ($3),
    u32, ig.ImU32 => ig.ImPlot_Plot$1_U32PtrStr    ($3),
    i64, ig.ImS64 => ig.ImPlot_Plot$1_S64PtrStr    ($3),
    u64, ig.ImU64 => ig.ImPlot_Plot$1_U64PtrStr    ($3),
    else =>  {return error.ImPlot_Plot$1$2_Argument;}
  }
}
"""
let hina8 =  """
  const typ =  @TypeOf($4[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_Plot$1_FloatPtrPlotFormatter  ($3),
    f64           => ig.ImPlot_Plot$1_doublePtrPlotFormatter ($3),
    i8            => ig.ImPlot_Plot$1_S8PtrPlotFormatter     ($3),
    u8            => ig.ImPlot_Plot$1_U8PtrPlotFormatter     ($3),
    i16, ig.ImS16 => ig.ImPlot_Plot$1_S16PtrPlotFormatter    ($3),
    u16, ig.ImU16 => ig.ImPlot_Plot$1_U16PtrPlotFormatter    ($3),
    i32, ig.ImS32 => ig.ImPlot_Plot$1_S32PtrPlotFormatter    ($3),
    u32, ig.ImU32 => ig.ImPlot_Plot$1_U32PtrPlotFormatter    ($3),
    i64, ig.ImS64 => ig.ImPlot_Plot$1_S64PtrPlotFormatter    ($3),
    u64, ig.ImU64 => ig.ImPlot_Plot$1_U64PtrPlotFormatter    ($3),
    else =>  {return error.ImPlot_Plot$1$2_Argument;}
  }
}
"""
let hinas = ["dummy", hina1, hina2, hina3, hina4, hina5, hina6, hina7, hina8  ]
var db = @[TFunc(name: "Line"        ,patns: @[patXy,       patScale, patXyScale])
          ,TFunc(name: "Scatter"     ,patns: @[patXy,       patXyScale])
          ,TFunc(name: "Stairs"      ,patns: @[patXy,       patScale])
          ,TFunc(name: "Bars"        ,patns: @[patBars,     patBarsXy])
          ,TFunc(name: "BarGroups"   ,patns: @[patBarGroups])
          ,TFunc(name: "Histogram2D" ,patns: @[patHistg2D])
          ,TFunc(name: "Histogram"   ,patns: @[patHistg])
          ,TFunc(name: "Shaded"      ,patns: @[patXyy,      patRefScale, patXyRef])
          ,TFunc(name: "PieChart"    ,patns: @[patPieChart, patPieChartFmt])
         ]

echo header
for fnInfo in mitems(db):
  for iPat in mitems(fnInfo.patns):
    echo "//-------------------------------"
    echo "// ImPlot_Plot$1$2()" % [fnInfo.name, iPat.postfix]
    echo "//-------------------------------"
    var splitedFullArgs = iPat.fullArgs.split(",")
    var sArgs = ""
    for i in 0..<iPat.shortArgsNum:
      sArgs &= splitedFullArgs[i] & ","
    echo "pub fn ImPlot_Plot$1$2($3) !$4 {" % [fnInfo.name   # $1
                                               ,iPat.postfix # $2
                                               ,sArgs[0..<sArgs.len - 1] # $3
                                               ,if iPat.retVal.len == 0: "void" else: iPat.retVal #$4
                                              ]
    var RET = ""
    var END = ""
    if iPat.retVal.len != 0:
      RET = "return"
      END = ";"
    echo hinas[iPat.hina] % [fnInfo.name  # $1
                           , iPat.postfix # $2
                           , iPat.shortArgsInner # $3
                           , splitedFullArgs[1].split(":")[0].strip # $4
                           , RET   # $5
                           , END   # $6
                           ]
    #
    echo "//-------------------------------"
    echo "// ImPlot_Plot$1$2Ex()" % [fnInfo.name, iPat.postfix]
    echo "//-------------------------------"
    echo "pub fn ImPlot_Plot$1$2Ex($3) !$4 {" % [fnInfo.name   # $1
                                                  ,iPat.postfix  # $2
                                                  ,iPat.fullArgs # $3
                                                  ,if iPat.retVal.len == 0: "void" else: iPat.retVal #$4
                                                  ]
    sArgs = ""
    for arg in  iPat.fullArgs.split(","):
      sArgs &= arg.split(":")[0] & ", "
    echo hinas[iPat.hina] % [fnInfo.name # $1
                          , iPat.postfix # $2
                          , sArgs[0..<sArgs.len - 2] # $3
                          , splitedFullArgs[1].split(":")[0].strip # $4
                          , RET   # $5
                          , END   # $6
                          ]
