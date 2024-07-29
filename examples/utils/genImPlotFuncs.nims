# 2024/06: Written by by dinau
#          nim-2.0.8
#

import strutils

let header = """
// Notice: This file was auto generated.
// 2024/06 by dinau
//
const std = @import("std");
const ip = @cImport ({
  @cInclude ("cimplot.h");
});

"""

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

type
  TPat = object
    postfix:string
    fullArgs:string
    shortArgsNum:int
    defaultArgs:string
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

const patDigital     =  TPat(postfix: ""
                     ,fullArgs: "label_id: anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride:c_int"
                     ,shortArgsNum: 4
                     ,defaultArgs:"0, 0, tsize"
                     ,hina: hina3
                     ,retVal: ""
                     )
const patStems       =  TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, count:c_int, ref:f64, scale:f64, start:f64, flags:c_int, offset:c_int, stride:c_int"
                     ,shortArgsNum: 3
                     ,defaultArgs: "0, 1, 0, 0, 0, tsize"
                     ,hina: hina1
                     ,retVal: ""
                     )

const patStemsXy   =  TPat(postfix: "Xy"
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype, count:c_int, ref:f64, flags:c_int, offset:c_int, stride:c_int"
                     ,shortArgsNum: 4
                     ,defaultArgs: "0, 0, 0, tsize"
                     ,hina: hina2
                     ,retVal: ""
                     )
const patErr          = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype, err:anytype, count:c_int, flags:c_int, offse:c_int, stride:c_int"
                     ,shortArgsNum: 5
                     ,defaultArgs: "0, 0, tsize"
                     ,hina: hina4
                     ,retVal: ""
                     )
const patErrNeg       = TPat(postfix: "Neg"
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype, neg:anytype, pos: anytype, count:c_int, flags:c_int, offse:c_int, stride:c_int"
                     ,shortArgsNum: 6
                     ,defaultArgs: "0, 0, tsize"
                     ,hina: hina5
                     ,retVal: ""
                     )
const patHeatmap      = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, rows:c_int, cols:c_int, scale_min:f64, scale_max:f64, label_fmt:anytype, bound_min:ip.ImPlotPoint, bouns_max:ip.ImPlotPoint, flags:c_int"
                     ,shortArgsNum: 4
                     ,defaultArgs: "0, 0, \"%.1f\", .{.x=0,.y=0}, .{.x=1,.y=1}, 0"
                     ,hina: hina3
                     ,retVal: ""
                     )

const patXy      = TPat(postfix: "Xy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int" # Ex
                     ,shortArgsNum: 4
                     ,defaultArgs: "0, 0, tsize"
                     ,hina: hina2
                     ,retVal: ""
                     )
const patScale   = TPat(postfix: ""
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,defaultArgs: "1.0, 0, 0, 0, tsize"
                     ,hina: hina1
                     ,retVal: ""
                     )
const patXyScale = TPat(postfix: "XyScale"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,defaultArgs: "1.0, 0, 0, 0, tsize"
                     ,hina: hina2
                     ,retVal: ""
                     )
const patXyRef   = TPat(postfix: "XyRef"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, yref:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,defaultArgs: "0, 0, 0, tsize"
                     ,hina: hina9
                     ,retVal: ""
                     )
const patXyy     = TPat(postfix: "Xyy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, ys2:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 5
                     ,defaultArgs: "0, 0, tsize"
                     ,hina: hina6
                     ,retVal: ""
                     )
const patRefScale = TPat(postfix: "RefScale"
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, yref:f64, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,defaultArgs: "0, 1.0, 0, 0, 0, tsize"
                     ,hina: hina1
                     ,retVal: ""
                     )
const patBars    = TPat(postfix: ""
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, bar_size:f64, shift:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,defaultArgs: "0.67, 0, 0, 0, tsize"
                     ,hina: hina1
                     ,retVal: ""
                     )
const patBarsXy  = TPat(postfix: "Xy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, bar_size:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,defaultArgs: "0.67, 0, 0, tsize"
                     ,hina: hina2
                     ,retVal: ""
                     )

const patBarGroups  = TPat(postfix: ""
                     ,fullArgs: "label_ids:anytype,values:anytype,item_count:c_int,group_count:c_int,group_size:f64,shift:f64,flags:c_int"
                     ,shortArgsNum: 4
                     ,defaultArgs: "0.67, 0, 0"
                     ,hina: hina3
                     ,retVal: ""
                     )
const patHistg2D  = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, xs:anytype, ys:anytype,count:c_int, x_bins:c_int, y_bins:c_int ,range:ip.ImPlotRect , flags:ip.ImPlotHistogramFlags "
                     ,shortArgsNum: 4
                     ,defaultArgs: "ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0"
                     ,hina: hina3
                     ,retVal: "f64"
                     )
const patHistg  = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, count:c_int, bins:c_int, bar_scale:f64 ,range:ip.ImPlotRange , flags:ip.ImPlotHistogramFlags "
                     ,shortArgsNum: 3
                     ,defaultArgs: "ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0"
                     ,hina: hina3
                     ,retVal: "f64"
                     )
const patPieChart  = TPat(postfix: ""
                     ,fullArgs: "label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,label_fmt:anytype,angle0:f64,flags:c_int"
                     ,shortArgsNum: 6
                     ,defaultArgs: "\"%.1f\", 90, 0"
                     ,hina: hina7
                     ,retVal: ""
                     )
const patPieChartFmt  = TPat(postfix: "Fmt"
                     ,fullArgs: "label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,fmt:ip.ImPlotFormatter ,fmt_data:anytype, angle0:f64,flags:c_int"
                     ,shortArgsNum: 7
                     ,defaultArgs: "null, 90, 0"
                     ,hina: hina8
                     ,retVal: ""
                     )
const patInfLines  = TPat(postfix: ""
                     ,fullArgs: "label_id:anytype, values:anytype, count:c_int, flags:c_int, offset:c_int, stride:c_int"
                     ,shortArgsNum: 3
                     ,defaultArgs: "0, 0, tsize"
                     ,hina: hina3
                     ,retVal: ""
                     )

const typeCaseTbl = [ "f32          "
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

var db = @[TFunc(name: "Line"        ,patns: @[patXy,       patScale, patXyScale])
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

#-----------
# transType
#-----------
proc transType(sType:string) : string =
  if sType == "f32": "Float"
  elif sType == "f64": "double"
  else: sType.replace('i','S').replace('u','U')

#---------
# getHina
#---------
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

#----------
# genFuncs
#----------
proc genFuncs(): string =
  result.add header
  for fnInfo in db:
    for iPat in fnInfo.patns:
      result.add "\n//-------------------------------"
      result.add "\n// ImPlot_Plot$1$2()" % [fnInfo.name, iPat.postfix]
      result.add "\n//-------------------------------"
      var splitedFullArgs = iPat.fullArgs.split(",")
      var sArgs = ""
      for i in 0..<iPat.shortArgsNum:
        sArgs &= splitedFullArgs[i] & ","

      result.add "\npub fn ImPlot_Plot$1$2($3) !$4 {" % [fnInfo.name   # $1
                                                 ,iPat.postfix # $2
                                                 ,sArgs[0..<sArgs.len - 1] # $3
                                                 ,if iPat.retVal.len == 0: "void" else: iPat.retVal #$4
                                                ]
      var RET = ""
      var END = ""
      if iPat.retVal.len != 0:
        RET = "return"
        END = ";"
      result.add "\n"
      var shortArgs = ""
      for arg in iPat.fullArgs.split(',', iPat.shortArgsNum - 1):
        shortArgs &= arg.split(':')[0] & ", "

      result.add genHina(iPat.hina) % [fnInfo.name  # $1
                             , iPat.postfix # $2
                             , shortArgs & iPat.defaultArgs # $3
                             , splitedFullArgs[1].split(":")[0].strip # $4
                             , RET   # $5
                             , END   # $6
                             ]
      #
      result.add "\n//-------------------------------"
      result.add "\n// ImPlot_Plot$1$2Ex()" % [fnInfo.name, iPat.postfix]
      result.add "\n//-------------------------------"
      result.add "\npub fn ImPlot_Plot$1$2Ex($3) !$4 {" % [fnInfo.name   # $1
                                                    ,iPat.postfix  # $2
                                                    ,iPat.fullArgs # $3
                                                    ,if iPat.retVal.len == 0: "void" else: iPat.retVal #$4
                                                    ]
      sArgs = ""
      for arg in  iPat.fullArgs.split(","):
        sArgs &= arg.split(":")[0] & ", "

      result.add "\n"
      result.add genHina(iPat.hina) % [fnInfo.name # $1
                            , iPat.postfix # $2
                            , sArgs[0..<sArgs.len - 2] # $3
                            , splitedFullArgs[1].split(":")[0].strip # $4
                            , RET   # $5
                            , END   # $6
                            ]
#--------
# main
#--------
proc main() =
  const outName = "src/zimplot.zig"
  writefile(outName,genFuncs())
  let cmd = "zig fmt $#" % [outName]
  exec cmd


main()
