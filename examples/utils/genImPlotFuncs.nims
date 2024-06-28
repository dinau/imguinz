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
    defaultVal:string
    hina: int

  TFunc = object
    name:string
    patns:seq[TPat]

let patXy      = TPat(postfix: "XY"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int" # Ex
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0, 0, tsize"
                     ,defaultVal: "1"
                     ,hina: 2
                     )
let patScale   = TPat(postfix: "Scale"
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 1.0, 0, 0, 0, tsize"
                     ,defaultVal: "0"
                     ,hina: 1
                     )
let patXyScale = TPat(postfix: "XYScale"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 1.0, 0, 0, 0, tsize"
                     ,defaultVal: "0"
                     ,hina: 2
                     )
let patXyRef   = TPat(postfix: "XyRef"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, yref:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0, 0, 0, tsize"
                     ,defaultVal: "0"
                     ,hina: 2
                     )
let patXyy     = TPat(postfix: "Xyy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, ys2:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 5
                     ,shortArgsInner: "label, xs, ys, ys2, count, 0, 0, tsize"
                     ,defaultVal: "0"
                     ,hina: 2
                     )
let patRefScale = TPat(postfix: "RefScale"
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, yref:f64, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 0, 1.0, 0, 0, 0, tsize"
                     ,defaultVal: "0"
                     ,hina: 1
                     )
let patBars    = TPat(postfix: ""
                     ,fullArgs: "label:anytype, values:anytype, count:c_int, bar_size:f64, shift:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 3
                     ,shortArgsInner: "label, values, count, 0.67, 0, 0, 0, tsize"
                     ,defaultVal: "0"
                     ,hina: 1
                     )
let patBarsXy  = TPat(postfix: "Xy"
                     ,fullArgs: "label:anytype, xs:anytype, ys:anytype, count:c_int, bar_size:f64, flags:c_int, offset:c_int, stride: c_int"
                     ,shortArgsNum: 4
                     ,shortArgsInner: "label, xs, ys, count, 0.67, 0, 0, tsize"
                     ,defaultVal: "0"
                     ,hina: 2
                     )

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
    else =>  {return error.Plot$1$2_Argument;}
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
    else =>  {return error.Plot$1$2_Argument;}
  }
}
"""
let hinas = ["dummy", hina1, hina2]
let db = @[TFunc(name: "Line"  , patns: @[patXy,  patScale, patXyScale])
          ,TFunc(name: "Scatter",patns: @[patXy,  patXyScale])
          ,TFunc(name: "Stairs" ,patns: @[patXy,  patScale])
          ,TFunc(name: "Shaded" ,patns: @[patXyy, patRefScale, patXyRef])
          ,TFunc(name: "Bars"   ,patns: @[patBars,patBarsXy])
         ]

echo header
for fnInfo in db:
  for iPat in fnInfo.patns:
    echo "//----------------------"
    echo "// ImPlot_Plot$1$2()" % [fnInfo.name, iPat.postfix]
    echo "//----------------------"
    var splitedFullArgs = iPat.fullArgs.split(",")
    var sArgs = ""
    for i in 0..<iPat.shortArgsNum:
      sArgs &= splitedFullArgs[i] & ","
    echo "pub fn ImPlot_Plot$1$2($3) !void {" % [fnInfo.name, iPat.postfix, sArgs[0..<sArgs.len - 1]]
    echo hinas[iPat.hina] % [fnInfo.name, iPat.postfix, iPat.shortArgsInner, splitedFullArgs[1].split(":")[0].strip]
    #
    echo "//----------------------"
    echo "// ImPlot_Plot$1$2Ex()" % [fnInfo.name, iPat.postfix]
    echo "//----------------------"
    echo "pub fn ImPlot_Plot$1$2Ex($3) !void {" % [fnInfo.name, iPat.postfix, iPat.fullArgs]
    sArgs = ""
    for arg in  iPat.fullArgs.split(","):
      sArgs &= arg.split(":")[0] & ", "
    echo hinas[iPat.hina] % [fnInfo.name, iPat.postfix, sArgs[0..<sArgs.len - 2], splitedFullArgs[1].split(":")[0].strip]
