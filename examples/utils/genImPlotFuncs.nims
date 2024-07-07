# Written by 2024/06 by dinau

import strutils

let header = """
// Notice: This file was auto generated.
// 2024/06 by dinau
//
const std = @import("std");
pub const ip = @cImport ({
  @cInclude ("cimplot.h");
});

"""

type
  TPat = object
    postfix:string
    fullArgs:string
    shortArgsNum:int
    shortArgsInner:string
    hina: string
    retVal: string

  TFunc = object
    name:string
    patns:seq[TPat]

const hina1 = "{nType}PtrInt"
const hina2 = "{nType}Ptr{nType}Ptr"
const hina3 = "{nType}Ptr"
const hina4 = "{nType}Ptr{nType}Ptr{nType}PtrInt"
const hina5 = "{nType}Ptr{nType}Ptr{nType}Ptr{nType}Ptr"
const hina6 = "{nType}Ptr{nType}Ptr{nType}Ptr"
const hina7 = "{nType}PtrStr"
const hina8 = "{nType}PtrStrFormatter"
const hina9 = "{nType}Ptr{nType}PtrInt"

let patDigital     =  TPat(postfix: ""
                     ,fullArgs: "label_id: anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride:c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner:"label_id, xs, ys, count, 0, 0, tsize"
                     ,hina: hina3
                     ,retVal: ""
                     )
#CIMGUI_API void ImPlot_PlotStems_S16PtrInt(
# const char* label_id
# ,const ImS16* values
# ,int count

# ,double ref
# ,double scale
# ,double start
# ,ImPlotStemsFlags flags
# ,int offset
# ,int stride);
let patStems       =  TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, count:c_int, ref:f64, scale:f64, start:f64, flags:c_int, offset:c_int, stride:c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label_id, values, count, 0, 1, 0, 0, 0, tsize"
                     ,hina: hina1
                     ,retVal: ""
                     )
#ImPlot_PlotStems_U64PtrU64Ptr(
#  const char* label_id
#  ,const ImU64* xs
#  ,const ImU64* ys
#  ,int count
#  ,double ref
#  ,ImPlotStemsFlags flags
#  ,int offset
#  ,int stride);

let patStemsXy   =  TPat(postfix: "Xy"
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype, count:c_int, ref:f64, flags:c_int, offset:c_int, stride:c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label_id, xs, ys, count, 0, 0, 0, tsize"
                     ,hina: hina2
                     ,retVal: ""
                     )
let patErr          = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype, err:anytype, count:c_int, flags:c_int, offse:c_int, stride:c_int"
                     ,shortArgsNum: 5
                     ,shortArgsInner: "label_id, xs, ys, err, count, 0, 0, tsize"
                     ,hina: hina4
                     ,retVal: ""
                     )
let patErrNeg       = TPat(postfix: "Neg"
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype, neg:anytype, pos: anytype, count:c_int, flags:c_int, offse:c_int, stride:c_int"
                     ,shortArgsNum: 6
                     ,shortArgsInner: "label_id, xs, ys, neg, pos,count, 0, 0, tsize"
                     ,hina: hina5
                     ,retVal: ""
                     )
let patHeatmap      = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, rows:c_int, cols:c_int, scale_min:f64, scale_max:f64, label_fmt:anytype, bound_min:ip.ImPlotPoint, bouns_max:ip.ImPlotPoint, flags:c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label_id, values, rows, cols, 0, 0, \"%.1f\", .{.x=0,.y=0}, .{.x=1,.y=1}, 0"
                     ,hina: hina3
                     ,retVal: ""
                     )

#let hinaBase =  """
#  const typ =  @TypeOf($4[0]);
#  const tsize = @sizeOf(typ);
#  _ = &tsize;
#  $5 switch (typ) {
#    f32           => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    f64           => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    i8            => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    u8            => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    i16, ip.ImS16 => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    u16, ip.ImU16 => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    i32, ip.ImS32 => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    u32, ip.ImU32 => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    i64, ip.ImS64 => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    u64, ip.ImU64 => ip.ImPlot_Plot$1_{typeDesc}          ($3),
#    else =>  {return error.ImPlot_Plot$1$2_Argument;}
#  }$6
#}
#"""

let typeCaseTbl = [ "f32          "
                   ,"f64          "
                   ,"i8           "
                   ,"u8           "
                   ,"i16, ip.ImS16"
                   ,"u16, ip.ImU16"
                   ,"i32, ip.ImS32"
                   ,"u32, ip.ImU32"
                   ,"i64, ip.ImS64"
                   ,"u64, ip.ImU64"
                ]

proc transType(sType:string) : string =
  if sType == "f32": "Float"
  elif sType == "f64": "double"
  else: sType.replace('i','S').replace('u','U')

proc genHina(hina:string): string =
  var ret  = """
  const typ =  @TypeOf($4[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  $5 switch (typ) {
"""
  for sCase in typeCaseTbl:
    ret.add "     " & sCase
    ret.add " => ip.ImPlot_Plot$1_"
    let nType = sCase.split(' ')[0].strip(chars={','}) # get one of 'case type'
    ret.add hina.replace("{nType}",transType(nType))
    ret.add "          ($3),\n"
  ret.add """
      else =>  {return error.ImPlot_Plot$1$2_Argument;}
    }$6
  }
  """
  return ret

let patXy      = TPat(postfix: "Xy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int" # Ex
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0, 0, tsize"
                     ,hina: hina2
                     ,retVal: ""
                     )
let patScale   = TPat(postfix: ""
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 1.0, 0, 0, 0, tsize"
                     ,hina: hina1
                     ,retVal: ""
                     )
let patXyScale = TPat(postfix: "XyScale"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 1.0, 0, 0, 0, tsize"
                     ,hina: hina2
                     ,retVal: ""
                     )
let patXyRef   = TPat(postfix: "XyRef"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, yref:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0, 0, 0, tsize"
                     ,hina: hina9
                     ,retVal: ""
                     )
let patXyy     = TPat(postfix: "Xyy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, ys2:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 5
                     ,shortArgsInner: "label, xs, ys, ys2, count, 0, 0, tsize"
                     ,hina: hina6
                     ,retVal: ""
                     )
let patRefScale = TPat(postfix: "RefScale"
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, yref:f64, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 0, 1.0, 0, 0, 0, tsize"
                     ,hina: hina1
                     ,retVal: ""
                     )
let patBars    = TPat(postfix: ""
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, bar_size:f64, shift:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 0.67, 0, 0, 0, tsize"
                     ,hina: hina1
                     ,retVal: ""
                     )
let patBarsXy  = TPat(postfix: "Xy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, bar_size:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0.67, 0, 0, tsize"
                     ,hina: hina2
                     ,retVal: ""
                     )

let patBarGroups  = TPat(postfix: ""
                     ,fullArgs: "label_ids:anytype,values:anytype,item_count:c_int,group_count:c_int,group_size:f64,shift:f64,flags:c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label_ids, values, item_count, group_count, 0.67, 0, 0"
                     ,hina: hina3
                     ,retVal: ""
                     )
let patHistg2D  = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype,count:c_int, x_bins:c_int, y_bins:c_int ,range:ip.ImPlotRect , flags:ip.ImPlotHistogramFlags "
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0"
                     ,hina: hina3
                     ,retVal: "f64"
                     )
let patHistg  = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, count:c_int, bins:c_int, bar_scale:f64 ,range:ip.ImPlotRange , flags:ip.ImPlotHistogramFlags "
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0"
                     ,hina: hina3
                     ,retVal: "f64"
                     )
let patPieChart  = TPat(postfix: ""
                     ,fullArgs: "label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,label_fmt:anytype,angle0:f64,flags:c_int"
                     ,shortArgsNum: 6
                     ,shortArgsInner: "label_ids, values, count, x, y, radius, \"%.1f\", 90, 0"
                     ,hina: hina7
                     ,retVal: ""
                     )
let patPieChartFmt  = TPat(postfix: "Fmt"
                     ,fullArgs: "label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,fmt:ip.ImPlotFormatter ,fmt_data:anytype, angle0:f64,flags:c_int"
                     ,shortArgsNum: 7
                     ,shortArgsInner: "label_ids, values, count, x, y, radius, fmt, null, 90, 0"
                     ,hina: hina8
                     ,retVal: ""
                     )
let patInfLines  = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, count:c_int, flags:c_int, offset:c_int, stride:c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label_id, values, count, 0, 0, tsize"
                     ,hina: hina3
                     ,retVal: ""
                     )

var db = @[
           TFunc(name: "Line"        ,patns: @[patXy,       patScale, patXyScale])
          ,TFunc(name: "Scatter"     ,patns: @[patXy,       patXyScale])
          ,TFunc(name: "Stairs"      ,patns: @[patXy,       patScale])
          ,TFunc(name: "Shaded"      ,patns: @[patXyy,      patRefScale, patXyRef])
          ,TFunc(name: "Bars"        ,patns: @[patBars,     patBarsXy])
          ,TFunc(name: "BarGroups"   ,patns: @[patBarGroups])
          ,TFunc(name: "ErrorBars"   ,patns: @[patErr,      patErrNeg])
          ,TFunc(name: "Stems"       ,patns: @[patStemsXy,    patStems])
          ,TFunc(name: "InfLines"    ,patns: @[patInfLines])
          ,TFunc(name: "PieChart"    ,patns: @[patPieChart, patPieChartFmt])
          ,TFunc(name: "Heatmapt"    ,patns: @[patHeatmap])
          ,TFunc(name: "Histogram"   ,patns: @[patHistg])
          ,TFunc(name: "Histogram2D" ,patns: @[patHistg2D])
          ,TFunc(name: "Digital"     ,patns: @[patDigital])
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
    echo genHina(iPat.hina) % [fnInfo.name  # $1
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

    echo genHina(iPat.hina) % [fnInfo.name # $1
                          , iPat.postfix # $2
                          , sArgs[0..<sArgs.len - 2] # $3
                          , splitedFullArgs[1].split(":")[0].strip # $4
                          , RET   # $5
                          , END   # $6
                          ]
