// Notice: This file was auto generated.
// 2024/06 by dinau
//
const std = @import("std");
pub const ip = @cImport ({
  @cInclude ("cimplot.h");
});


//-------------------------------
// ImPlot_PlotLineXy()
//-------------------------------
pub fn ImPlot_PlotLineXy(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotLine_FloatPtrFloatPtr          (label, xs, ys, count, 0, 0, tsize),
     f64           => ip.ImPlot_PlotLine_doublePtrdoublePtr          (label, xs, ys, count, 0, 0, tsize),
     i8            => ip.ImPlot_PlotLine_S8PtrS8Ptr          (label, xs, ys, count, 0, 0, tsize),
     u8            => ip.ImPlot_PlotLine_U8PtrU8Ptr          (label, xs, ys, count, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotLine_S16PtrS16Ptr          (label, xs, ys, count, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotLine_U16PtrU16Ptr          (label, xs, ys, count, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotLine_S32PtrS32Ptr          (label, xs, ys, count, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotLine_U32PtrU32Ptr          (label, xs, ys, count, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotLine_S64PtrS64Ptr          (label, xs, ys, count, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotLine_U64PtrU64Ptr          (label, xs, ys, count, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotLineXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotLineXyEx()
//-------------------------------
pub fn ImPlot_PlotLineXyEx(label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotLine_FloatPtrFloatPtr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotLine_doublePtrdoublePtr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotLine_S8PtrS8Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotLine_U8PtrU8Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotLine_S16PtrS16Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotLine_U16PtrU16Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotLine_S32PtrS32Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotLine_U32PtrU32Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotLine_S64PtrS64Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotLine_U64PtrU64Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotLineXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotLine()
//-------------------------------
pub fn ImPlot_PlotLine(label:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotLine_FloatPtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotLine_doublePtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotLine_S8PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotLine_U8PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotLine_S16PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotLine_U16PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotLine_S32PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotLine_U32PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotLine_S64PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotLine_U64PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotLine_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotLineEx()
//-------------------------------
pub fn ImPlot_PlotLineEx(label:anytype, values:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotLine_FloatPtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotLine_doublePtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotLine_S8PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotLine_U8PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotLine_S16PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotLine_U16PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotLine_S32PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotLine_U32PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotLine_S64PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotLine_U64PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotLine_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotLineXyScale()
//-------------------------------
pub fn ImPlot_PlotLineXyScale(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotLine_FloatPtrFloatPtr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotLine_doublePtrdoublePtr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotLine_S8PtrS8Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotLine_U8PtrU8Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotLine_S16PtrS16Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotLine_U16PtrU16Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotLine_S32PtrS32Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotLine_U32PtrU32Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotLine_S64PtrS64Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotLine_U64PtrU64Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotLineXyScale_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotLineXyScaleEx()
//-------------------------------
pub fn ImPlot_PlotLineXyScaleEx(label:anytype, xs:anytype, ys:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotLine_FloatPtrFloatPtr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotLine_doublePtrdoublePtr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotLine_S8PtrS8Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotLine_U8PtrU8Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotLine_S16PtrS16Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotLine_U16PtrU16Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotLine_S32PtrS32Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotLine_U32PtrU32Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotLine_S64PtrS64Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotLine_U64PtrU64Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotLineXyScale_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotScatterXy()
//-------------------------------
pub fn ImPlot_PlotScatterXy(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotScatter_FloatPtrFloatPtr          (label, xs, ys, count, 0, 0, tsize),
     f64           => ip.ImPlot_PlotScatter_doublePtrdoublePtr          (label, xs, ys, count, 0, 0, tsize),
     i8            => ip.ImPlot_PlotScatter_S8PtrS8Ptr          (label, xs, ys, count, 0, 0, tsize),
     u8            => ip.ImPlot_PlotScatter_U8PtrU8Ptr          (label, xs, ys, count, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotScatter_S16PtrS16Ptr          (label, xs, ys, count, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotScatter_U16PtrU16Ptr          (label, xs, ys, count, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotScatter_S32PtrS32Ptr          (label, xs, ys, count, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotScatter_U32PtrU32Ptr          (label, xs, ys, count, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotScatter_S64PtrS64Ptr          (label, xs, ys, count, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotScatter_U64PtrU64Ptr          (label, xs, ys, count, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotScatterXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotScatterXyEx()
//-------------------------------
pub fn ImPlot_PlotScatterXyEx(label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotScatter_FloatPtrFloatPtr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotScatter_doublePtrdoublePtr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotScatter_S8PtrS8Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotScatter_U8PtrU8Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotScatter_S16PtrS16Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotScatter_U16PtrU16Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotScatter_S32PtrS32Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotScatter_U32PtrU32Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotScatter_S64PtrS64Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotScatter_U64PtrU64Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotScatterXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotScatterXyScale()
//-------------------------------
pub fn ImPlot_PlotScatterXyScale(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotScatter_FloatPtrFloatPtr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotScatter_doublePtrdoublePtr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotScatter_S8PtrS8Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotScatter_U8PtrU8Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotScatter_S16PtrS16Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotScatter_U16PtrU16Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotScatter_S32PtrS32Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotScatter_U32PtrU32Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotScatter_S64PtrS64Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotScatter_U64PtrU64Ptr          (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotScatterXyScale_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotScatterXyScaleEx()
//-------------------------------
pub fn ImPlot_PlotScatterXyScaleEx(label:anytype, xs:anytype, ys:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotScatter_FloatPtrFloatPtr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotScatter_doublePtrdoublePtr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotScatter_S8PtrS8Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotScatter_U8PtrU8Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotScatter_S16PtrS16Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotScatter_U16PtrU16Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotScatter_S32PtrS32Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotScatter_U32PtrU32Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotScatter_S64PtrS64Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotScatter_U64PtrU64Ptr          (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotScatterXyScale_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotStairsXy()
//-------------------------------
pub fn ImPlot_PlotStairsXy(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotStairs_FloatPtrFloatPtr          (label, xs, ys, count, 0, 0, tsize),
     f64           => ip.ImPlot_PlotStairs_doublePtrdoublePtr          (label, xs, ys, count, 0, 0, tsize),
     i8            => ip.ImPlot_PlotStairs_S8PtrS8Ptr          (label, xs, ys, count, 0, 0, tsize),
     u8            => ip.ImPlot_PlotStairs_U8PtrU8Ptr          (label, xs, ys, count, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotStairs_S16PtrS16Ptr          (label, xs, ys, count, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotStairs_U16PtrU16Ptr          (label, xs, ys, count, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotStairs_S32PtrS32Ptr          (label, xs, ys, count, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotStairs_U32PtrU32Ptr          (label, xs, ys, count, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotStairs_S64PtrS64Ptr          (label, xs, ys, count, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotStairs_U64PtrU64Ptr          (label, xs, ys, count, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotStairsXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotStairsXyEx()
//-------------------------------
pub fn ImPlot_PlotStairsXyEx(label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotStairs_FloatPtrFloatPtr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotStairs_doublePtrdoublePtr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotStairs_S8PtrS8Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotStairs_U8PtrU8Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotStairs_S16PtrS16Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotStairs_U16PtrU16Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotStairs_S32PtrS32Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotStairs_U32PtrU32Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotStairs_S64PtrS64Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotStairs_U64PtrU64Ptr          (label,  xs,  ys,  count,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotStairsXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotStairs()
//-------------------------------
pub fn ImPlot_PlotStairs(label:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotStairs_FloatPtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotStairs_doublePtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotStairs_S8PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotStairs_U8PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotStairs_S16PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotStairs_U16PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotStairs_S32PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotStairs_U32PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotStairs_S64PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotStairs_U64PtrInt          (label, values, count, 1.0, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotStairs_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotStairsEx()
//-------------------------------
pub fn ImPlot_PlotStairsEx(label:anytype, values:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotStairs_FloatPtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotStairs_doublePtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotStairs_S8PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotStairs_U8PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotStairs_S16PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotStairs_U16PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotStairs_S32PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotStairs_U32PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotStairs_S64PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotStairs_U64PtrInt          (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotStairs_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotShadedXyy()
//-------------------------------
pub fn ImPlot_PlotShadedXyy(label:anytype, xs:anytype, ys:anytype, ys2:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotShaded_FloatPtrFloatPtrFloatPtr          (label, xs, ys, ys2, count, 0, 0, tsize),
     f64           => ip.ImPlot_PlotShaded_doublePtrdoublePtrdoublePtr          (label, xs, ys, ys2, count, 0, 0, tsize),
     i8            => ip.ImPlot_PlotShaded_S8PtrS8PtrS8Ptr          (label, xs, ys, ys2, count, 0, 0, tsize),
     u8            => ip.ImPlot_PlotShaded_U8PtrU8PtrU8Ptr          (label, xs, ys, ys2, count, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotShaded_S16PtrS16PtrS16Ptr          (label, xs, ys, ys2, count, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotShaded_U16PtrU16PtrU16Ptr          (label, xs, ys, ys2, count, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotShaded_S32PtrS32PtrS32Ptr          (label, xs, ys, ys2, count, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotShaded_U32PtrU32PtrU32Ptr          (label, xs, ys, ys2, count, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotShaded_S64PtrS64PtrS64Ptr          (label, xs, ys, ys2, count, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotShaded_U64PtrU64PtrU64Ptr          (label, xs, ys, ys2, count, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotShadedXyy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotShadedXyyEx()
//-------------------------------
pub fn ImPlot_PlotShadedXyyEx(label:anytype, xs:anytype, ys:anytype, ys2:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotShaded_FloatPtrFloatPtrFloatPtr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotShaded_doublePtrdoublePtrdoublePtr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotShaded_S8PtrS8PtrS8Ptr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotShaded_U8PtrU8PtrU8Ptr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotShaded_S16PtrS16PtrS16Ptr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotShaded_U16PtrU16PtrU16Ptr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotShaded_S32PtrS32PtrS32Ptr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotShaded_U32PtrU32PtrU32Ptr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotShaded_S64PtrS64PtrS64Ptr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotShaded_U64PtrU64PtrU64Ptr          (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotShadedXyy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotShadedRefScale()
//-------------------------------
pub fn ImPlot_PlotShadedRefScale(label:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotShaded_FloatPtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotShaded_doublePtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotShaded_S8PtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotShaded_U8PtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotShaded_S16PtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotShaded_U16PtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotShaded_S32PtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotShaded_U32PtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotShaded_S64PtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotShaded_U64PtrInt          (label, values, count, 0, 1.0, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotShadedRefScale_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotShadedRefScaleEx()
//-------------------------------
pub fn ImPlot_PlotShadedRefScaleEx(label:anytype, values:anytype, count:c_int, yref:f64, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotShaded_FloatPtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotShaded_doublePtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotShaded_S8PtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotShaded_U8PtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotShaded_S16PtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotShaded_U16PtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotShaded_S32PtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotShaded_U32PtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotShaded_S64PtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotShaded_U64PtrInt          (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotShadedRefScale_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotShadedXyRef()
//-------------------------------
pub fn ImPlot_PlotShadedXyRef(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotShaded_FloatPtrFloatPtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotShaded_doublePtrdoublePtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotShaded_S8PtrS8PtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotShaded_U8PtrU8PtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotShaded_S16PtrS16PtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotShaded_U16PtrU16PtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotShaded_S32PtrS32PtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotShaded_U32PtrU32PtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotShaded_S64PtrS64PtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotShaded_U64PtrU64PtrInt          (label, xs, ys, count, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotShadedXyRef_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotShadedXyRefEx()
//-------------------------------
pub fn ImPlot_PlotShadedXyRefEx(label:anytype, xs:anytype, ys:anytype, count:c_int, yref:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotShaded_FloatPtrFloatPtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotShaded_doublePtrdoublePtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotShaded_S8PtrS8PtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotShaded_U8PtrU8PtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotShaded_S16PtrS16PtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotShaded_U16PtrU16PtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotShaded_S32PtrS32PtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotShaded_U32PtrU32PtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotShaded_S64PtrS64PtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotShaded_U64PtrU64PtrInt          (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotShadedXyRef_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotBars()
//-------------------------------
pub fn ImPlot_PlotBars(label:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotBars_FloatPtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotBars_doublePtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotBars_S8PtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotBars_U8PtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotBars_S16PtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotBars_U16PtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotBars_S32PtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotBars_U32PtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotBars_S64PtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotBars_U64PtrInt          (label, values, count, 0.67, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotBars_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotBarsEx()
//-------------------------------
pub fn ImPlot_PlotBarsEx(label:anytype, values:anytype, count:c_int, bar_size:f64, shift:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotBars_FloatPtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotBars_doublePtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotBars_S8PtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotBars_U8PtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotBars_S16PtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotBars_U16PtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotBars_S32PtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotBars_U32PtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotBars_S64PtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotBars_U64PtrInt          (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotBars_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotBarsXy()
//-------------------------------
pub fn ImPlot_PlotBarsXy(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotBars_FloatPtrFloatPtr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     f64           => ip.ImPlot_PlotBars_doublePtrdoublePtr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     i8            => ip.ImPlot_PlotBars_S8PtrS8Ptr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     u8            => ip.ImPlot_PlotBars_U8PtrU8Ptr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotBars_S16PtrS16Ptr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotBars_U16PtrU16Ptr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotBars_S32PtrS32Ptr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotBars_U32PtrU32Ptr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotBars_S64PtrS64Ptr          (label, xs, ys, count, 0.67, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotBars_U64PtrU64Ptr          (label, xs, ys, count, 0.67, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotBarsXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotBarsXyEx()
//-------------------------------
pub fn ImPlot_PlotBarsXyEx(label:anytype, xs:anytype, ys:anytype, count:c_int, bar_size:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotBars_FloatPtrFloatPtr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotBars_doublePtrdoublePtr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotBars_S8PtrS8Ptr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotBars_U8PtrU8Ptr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotBars_S16PtrS16Ptr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotBars_U16PtrU16Ptr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotBars_S32PtrS32Ptr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotBars_U32PtrU32Ptr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotBars_S64PtrS64Ptr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotBars_U64PtrU64Ptr          (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotBarsXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotBarGroups()
//-------------------------------
pub fn ImPlot_PlotBarGroups(label_ids:anytype,values:anytype,item_count:c_int,group_count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotBarGroups_FloatPtr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     f64           => ip.ImPlot_PlotBarGroups_doublePtr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     i8            => ip.ImPlot_PlotBarGroups_S8Ptr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     u8            => ip.ImPlot_PlotBarGroups_U8Ptr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     i16, ip.ImS16 => ip.ImPlot_PlotBarGroups_S16Ptr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     u16, ip.ImU16 => ip.ImPlot_PlotBarGroups_U16Ptr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     i32, ip.ImS32 => ip.ImPlot_PlotBarGroups_S32Ptr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     u32, ip.ImU32 => ip.ImPlot_PlotBarGroups_U32Ptr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     i64, ip.ImS64 => ip.ImPlot_PlotBarGroups_S64Ptr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
     u64, ip.ImU64 => ip.ImPlot_PlotBarGroups_U64Ptr          (label_ids, values, item_count, group_count, 0.67, 0, 0),
      else =>  {return error.ImPlot_PlotBarGroups_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotBarGroupsEx()
//-------------------------------
pub fn ImPlot_PlotBarGroupsEx(label_ids:anytype,values:anytype,item_count:c_int,group_count:c_int,group_size:f64,shift:f64,flags:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotBarGroups_FloatPtr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     f64           => ip.ImPlot_PlotBarGroups_doublePtr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     i8            => ip.ImPlot_PlotBarGroups_S8Ptr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     u8            => ip.ImPlot_PlotBarGroups_U8Ptr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     i16, ip.ImS16 => ip.ImPlot_PlotBarGroups_S16Ptr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     u16, ip.ImU16 => ip.ImPlot_PlotBarGroups_U16Ptr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     i32, ip.ImS32 => ip.ImPlot_PlotBarGroups_S32Ptr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     u32, ip.ImU32 => ip.ImPlot_PlotBarGroups_U32Ptr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     i64, ip.ImS64 => ip.ImPlot_PlotBarGroups_S64Ptr          (label_ids, values, item_count, group_count, group_size, shift, flags),
     u64, ip.ImU64 => ip.ImPlot_PlotBarGroups_U64Ptr          (label_ids, values, item_count, group_count, group_size, shift, flags),
      else =>  {return error.ImPlot_PlotBarGroups_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotErrorBars()
//-------------------------------
pub fn ImPlot_PlotErrorBars(label_id:anytype, xs:anytype, ys:anytype, err:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotErrorBars_FloatPtrFloatPtrFloatPtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     f64           => ip.ImPlot_PlotErrorBars_doublePtrdoublePtrdoublePtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     i8            => ip.ImPlot_PlotErrorBars_S8PtrS8PtrS8PtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     u8            => ip.ImPlot_PlotErrorBars_U8PtrU8PtrU8PtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotErrorBars_S16PtrS16PtrS16PtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotErrorBars_U16PtrU16PtrU16PtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotErrorBars_S32PtrS32PtrS32PtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotErrorBars_U32PtrU32PtrU32PtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotErrorBars_S64PtrS64PtrS64PtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotErrorBars_U64PtrU64PtrU64PtrInt          (label_id, xs, ys, err, count, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotErrorBars_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotErrorBarsEx()
//-------------------------------
pub fn ImPlot_PlotErrorBarsEx(label_id:anytype, xs:anytype, ys:anytype, err:anytype, count:c_int, flags:c_int, offse:c_int, stride:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotErrorBars_FloatPtrFloatPtrFloatPtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     f64           => ip.ImPlot_PlotErrorBars_doublePtrdoublePtrdoublePtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     i8            => ip.ImPlot_PlotErrorBars_S8PtrS8PtrS8PtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     u8            => ip.ImPlot_PlotErrorBars_U8PtrU8PtrU8PtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotErrorBars_S16PtrS16PtrS16PtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotErrorBars_U16PtrU16PtrU16PtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotErrorBars_S32PtrS32PtrS32PtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotErrorBars_U32PtrU32PtrU32PtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotErrorBars_S64PtrS64PtrS64PtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotErrorBars_U64PtrU64PtrU64PtrInt          (label_id,  xs,  ys,  err,  count,  flags,  offse,  stride),
      else =>  {return error.ImPlot_PlotErrorBars_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotErrorBarsNeg()
//-------------------------------
pub fn ImPlot_PlotErrorBarsNeg(label_id:anytype, xs:anytype, ys:anytype, neg:anytype, pos: anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotErrorBars_FloatPtrFloatPtrFloatPtrFloatPtr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     f64           => ip.ImPlot_PlotErrorBars_doublePtrdoublePtrdoublePtrdoublePtr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     i8            => ip.ImPlot_PlotErrorBars_S8PtrS8PtrS8PtrS8Ptr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     u8            => ip.ImPlot_PlotErrorBars_U8PtrU8PtrU8PtrU8Ptr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotErrorBars_S16PtrS16PtrS16PtrS16Ptr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotErrorBars_U16PtrU16PtrU16PtrU16Ptr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotErrorBars_S32PtrS32PtrS32PtrS32Ptr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotErrorBars_U32PtrU32PtrU32PtrU32Ptr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotErrorBars_S64PtrS64PtrS64PtrS64Ptr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotErrorBars_U64PtrU64PtrU64PtrU64Ptr          (label_id, xs, ys, neg, pos,count, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotErrorBarsNeg_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotErrorBarsNegEx()
//-------------------------------
pub fn ImPlot_PlotErrorBarsNegEx(label_id:anytype, xs:anytype, ys:anytype, neg:anytype, pos: anytype, count:c_int, flags:c_int, offse:c_int, stride:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotErrorBars_FloatPtrFloatPtrFloatPtrFloatPtr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     f64           => ip.ImPlot_PlotErrorBars_doublePtrdoublePtrdoublePtrdoublePtr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     i8            => ip.ImPlot_PlotErrorBars_S8PtrS8PtrS8PtrS8Ptr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     u8            => ip.ImPlot_PlotErrorBars_U8PtrU8PtrU8PtrU8Ptr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotErrorBars_S16PtrS16PtrS16PtrS16Ptr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotErrorBars_U16PtrU16PtrU16PtrU16Ptr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotErrorBars_S32PtrS32PtrS32PtrS32Ptr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotErrorBars_U32PtrU32PtrU32PtrU32Ptr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotErrorBars_S64PtrS64PtrS64PtrS64Ptr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotErrorBars_U64PtrU64PtrU64PtrU64Ptr          (label_id,  xs,  ys,  neg,  pos,  count,  flags,  offse,  stride),
      else =>  {return error.ImPlot_PlotErrorBarsNeg_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotStemsXy()
//-------------------------------
pub fn ImPlot_PlotStemsXy(label_id:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotStems_FloatPtrFloatPtr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotStems_doublePtrdoublePtr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotStems_S8PtrS8Ptr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotStems_U8PtrU8Ptr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotStems_S16PtrS16Ptr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotStems_U16PtrU16Ptr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotStems_S32PtrS32Ptr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotStems_U32PtrU32Ptr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotStems_S64PtrS64Ptr          (label_id, xs, ys, count, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotStems_U64PtrU64Ptr          (label_id, xs, ys, count, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotStemsXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotStemsXyEx()
//-------------------------------
pub fn ImPlot_PlotStemsXyEx(label_id:anytype, xs:anytype, ys:anytype, count:c_int, ref:f64, flags:c_int, offset:c_int, stride:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotStems_FloatPtrFloatPtr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotStems_doublePtrdoublePtr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotStems_S8PtrS8Ptr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotStems_U8PtrU8Ptr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotStems_S16PtrS16Ptr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotStems_U16PtrU16Ptr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotStems_S32PtrS32Ptr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotStems_U32PtrU32Ptr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotStems_S64PtrS64Ptr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotStems_U64PtrU64Ptr          (label_id,  xs,  ys,  count,  ref,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotStemsXy_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotStems()
//-------------------------------
pub fn ImPlot_PlotStems(label_id:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotStems_FloatPtrFloatPtr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     f64           => ip.ImPlot_PlotStems_doublePtrdoublePtr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     i8            => ip.ImPlot_PlotStems_S8PtrS8Ptr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     u8            => ip.ImPlot_PlotStems_U8PtrU8Ptr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotStems_S16PtrS16Ptr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotStems_U16PtrU16Ptr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotStems_S32PtrS32Ptr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotStems_U32PtrU32Ptr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotStems_S64PtrS64Ptr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotStems_U64PtrU64Ptr          (label_id, values, count, 0, 1, 0, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotStems_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotStemsEx()
//-------------------------------
pub fn ImPlot_PlotStemsEx(label_id:anytype, values:anytype, count:c_int, ref:f64, scale:f64, start:f64, flags:c_int, offset:c_int, stride:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotStems_FloatPtrFloatPtr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotStems_doublePtrdoublePtr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotStems_S8PtrS8Ptr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotStems_U8PtrU8Ptr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotStems_S16PtrS16Ptr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotStems_U16PtrU16Ptr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotStems_S32PtrS32Ptr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotStems_U32PtrU32Ptr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotStems_S64PtrS64Ptr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotStems_U64PtrU64Ptr          (label_id,  values,  count,  ref,  scale,  start,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotStems_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotInfLines()
//-------------------------------
pub fn ImPlot_PlotInfLines(label_id:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotInfLines_FloatPtr          (label_id, values, count, 0, 0, tsize),
     f64           => ip.ImPlot_PlotInfLines_doublePtr          (label_id, values, count, 0, 0, tsize),
     i8            => ip.ImPlot_PlotInfLines_S8Ptr          (label_id, values, count, 0, 0, tsize),
     u8            => ip.ImPlot_PlotInfLines_U8Ptr          (label_id, values, count, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotInfLines_S16Ptr          (label_id, values, count, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotInfLines_U16Ptr          (label_id, values, count, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotInfLines_S32Ptr          (label_id, values, count, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotInfLines_U32Ptr          (label_id, values, count, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotInfLines_S64Ptr          (label_id, values, count, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotInfLines_U64Ptr          (label_id, values, count, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotInfLines_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotInfLinesEx()
//-------------------------------
pub fn ImPlot_PlotInfLinesEx(label_id:anytype, values:anytype, count:c_int, flags:c_int, offset:c_int, stride:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotInfLines_FloatPtr          (label_id,  values,  count,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotInfLines_doublePtr          (label_id,  values,  count,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotInfLines_S8Ptr          (label_id,  values,  count,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotInfLines_U8Ptr          (label_id,  values,  count,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotInfLines_S16Ptr          (label_id,  values,  count,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotInfLines_U16Ptr          (label_id,  values,  count,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotInfLines_S32Ptr          (label_id,  values,  count,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotInfLines_U32Ptr          (label_id,  values,  count,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotInfLines_S64Ptr          (label_id,  values,  count,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotInfLines_U64Ptr          (label_id,  values,  count,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotInfLines_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotPieChart()
//-------------------------------
pub fn ImPlot_PlotPieChart(label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotPieChart_FloatPtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     f64           => ip.ImPlot_PlotPieChart_doublePtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     i8            => ip.ImPlot_PlotPieChart_S8PtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     u8            => ip.ImPlot_PlotPieChart_U8PtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     i16, ip.ImS16 => ip.ImPlot_PlotPieChart_S16PtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     u16, ip.ImU16 => ip.ImPlot_PlotPieChart_U16PtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     i32, ip.ImS32 => ip.ImPlot_PlotPieChart_S32PtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     u32, ip.ImU32 => ip.ImPlot_PlotPieChart_U32PtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     i64, ip.ImS64 => ip.ImPlot_PlotPieChart_S64PtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
     u64, ip.ImU64 => ip.ImPlot_PlotPieChart_U64PtrStr          (label_ids, values, count, x, y, radius, "%.1f", 90, 0),
      else =>  {return error.ImPlot_PlotPieChart_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotPieChartEx()
//-------------------------------
pub fn ImPlot_PlotPieChartEx(label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,label_fmt:anytype,angle0:f64,flags:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotPieChart_FloatPtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     f64           => ip.ImPlot_PlotPieChart_doublePtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     i8            => ip.ImPlot_PlotPieChart_S8PtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     u8            => ip.ImPlot_PlotPieChart_U8PtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     i16, ip.ImS16 => ip.ImPlot_PlotPieChart_S16PtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     u16, ip.ImU16 => ip.ImPlot_PlotPieChart_U16PtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     i32, ip.ImS32 => ip.ImPlot_PlotPieChart_S32PtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     u32, ip.ImU32 => ip.ImPlot_PlotPieChart_U32PtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     i64, ip.ImS64 => ip.ImPlot_PlotPieChart_S64PtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
     u64, ip.ImU64 => ip.ImPlot_PlotPieChart_U64PtrStr          (label_ids, values,  count, x, y, radius, label_fmt, angle0, flags),
      else =>  {return error.ImPlot_PlotPieChart_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotPieChartFmt()
//-------------------------------
pub fn ImPlot_PlotPieChartFmt(label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,fmt:ip.ImPlotFormatter ) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotPieChart_FloatPtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     f64           => ip.ImPlot_PlotPieChart_doublePtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     i8            => ip.ImPlot_PlotPieChart_S8PtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     u8            => ip.ImPlot_PlotPieChart_U8PtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     i16, ip.ImS16 => ip.ImPlot_PlotPieChart_S16PtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     u16, ip.ImU16 => ip.ImPlot_PlotPieChart_U16PtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     i32, ip.ImS32 => ip.ImPlot_PlotPieChart_S32PtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     u32, ip.ImU32 => ip.ImPlot_PlotPieChart_U32PtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     i64, ip.ImS64 => ip.ImPlot_PlotPieChart_S64PtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
     u64, ip.ImU64 => ip.ImPlot_PlotPieChart_U64PtrStrFormatter          (label_ids, values, count, x, y, radius, fmt, null, 90, 0),
      else =>  {return error.ImPlot_PlotPieChartFmt_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotPieChartFmtEx()
//-------------------------------
pub fn ImPlot_PlotPieChartFmtEx(label_ids:anytype,values:anytype, count:c_int,x:f64,y:f64,radius:f64,fmt:ip.ImPlotFormatter ,fmt_data:anytype, angle0:f64,flags:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotPieChart_FloatPtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     f64           => ip.ImPlot_PlotPieChart_doublePtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     i8            => ip.ImPlot_PlotPieChart_S8PtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     u8            => ip.ImPlot_PlotPieChart_U8PtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     i16, ip.ImS16 => ip.ImPlot_PlotPieChart_S16PtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     u16, ip.ImU16 => ip.ImPlot_PlotPieChart_U16PtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     i32, ip.ImS32 => ip.ImPlot_PlotPieChart_S32PtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     u32, ip.ImU32 => ip.ImPlot_PlotPieChart_U32PtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     i64, ip.ImS64 => ip.ImPlot_PlotPieChart_S64PtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
     u64, ip.ImU64 => ip.ImPlot_PlotPieChart_U64PtrStrFormatter          (label_ids, values,  count, x, y, radius, fmt, fmt_data,  angle0, flags),
      else =>  {return error.ImPlot_PlotPieChartFmt_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotHeatmapt()
//-------------------------------
pub fn ImPlot_PlotHeatmapt(label_id:anytype, values:anytype, rows:c_int, cols:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotHeatmapt_FloatPtr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     f64           => ip.ImPlot_PlotHeatmapt_doublePtr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     i8            => ip.ImPlot_PlotHeatmapt_S8Ptr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     u8            => ip.ImPlot_PlotHeatmapt_U8Ptr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     i16, ip.ImS16 => ip.ImPlot_PlotHeatmapt_S16Ptr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     u16, ip.ImU16 => ip.ImPlot_PlotHeatmapt_U16Ptr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     i32, ip.ImS32 => ip.ImPlot_PlotHeatmapt_S32Ptr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     u32, ip.ImU32 => ip.ImPlot_PlotHeatmapt_U32Ptr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     i64, ip.ImS64 => ip.ImPlot_PlotHeatmapt_S64Ptr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
     u64, ip.ImU64 => ip.ImPlot_PlotHeatmapt_U64Ptr          (label_id, values, rows, cols, 0, 0, "%.1f", .{.x=0,.y=0}, .{.x=1,.y=1}, 0),
      else =>  {return error.ImPlot_PlotHeatmapt_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotHeatmaptEx()
//-------------------------------
pub fn ImPlot_PlotHeatmaptEx(label_id:anytype, values:anytype, rows:c_int, cols:c_int, scale_min:f64, scale_max:f64, label_fmt:anytype, bound_min:ip.ImPlotPoint, bouns_max:ip.ImPlotPoint, flags:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotHeatmapt_FloatPtr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     f64           => ip.ImPlot_PlotHeatmapt_doublePtr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     i8            => ip.ImPlot_PlotHeatmapt_S8Ptr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     u8            => ip.ImPlot_PlotHeatmapt_U8Ptr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     i16, ip.ImS16 => ip.ImPlot_PlotHeatmapt_S16Ptr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     u16, ip.ImU16 => ip.ImPlot_PlotHeatmapt_U16Ptr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     i32, ip.ImS32 => ip.ImPlot_PlotHeatmapt_S32Ptr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     u32, ip.ImU32 => ip.ImPlot_PlotHeatmapt_U32Ptr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     i64, ip.ImS64 => ip.ImPlot_PlotHeatmapt_S64Ptr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
     u64, ip.ImU64 => ip.ImPlot_PlotHeatmapt_U64Ptr          (label_id,  values,  rows,  cols,  scale_min,  scale_max,  label_fmt,  bound_min,  bouns_max,  flags),
      else =>  {return error.ImPlot_PlotHeatmapt_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotHistogram()
//-------------------------------
pub fn ImPlot_PlotHistogram(label_id:anytype, values:anytype, count:c_int) !f64 {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  return switch (typ) {
     f32           => ip.ImPlot_PlotHistogram_FloatPtr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     f64           => ip.ImPlot_PlotHistogram_doublePtr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     i8            => ip.ImPlot_PlotHistogram_S8Ptr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     u8            => ip.ImPlot_PlotHistogram_U8Ptr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     i16, ip.ImS16 => ip.ImPlot_PlotHistogram_S16Ptr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     u16, ip.ImU16 => ip.ImPlot_PlotHistogram_U16Ptr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     i32, ip.ImS32 => ip.ImPlot_PlotHistogram_S32Ptr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     u32, ip.ImU32 => ip.ImPlot_PlotHistogram_U32Ptr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     i64, ip.ImS64 => ip.ImPlot_PlotHistogram_S64Ptr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     u64, ip.ImU64 => ip.ImPlot_PlotHistogram_U64Ptr          (label_id, values, count, ip.ImPlotBin_Sturges, 1.0, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
      else =>  {return error.ImPlot_PlotHistogram_Argument;}
    };
  }
  
//-------------------------------
// ImPlot_PlotHistogramEx()
//-------------------------------
pub fn ImPlot_PlotHistogramEx(label_id:anytype, values:anytype, count:c_int, bins:c_int, bar_scale:f64 ,range:ip.ImPlotRange , flags:ip.ImPlotHistogramFlags ) !f64 {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  return switch (typ) {
     f32           => ip.ImPlot_PlotHistogram_FloatPtr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     f64           => ip.ImPlot_PlotHistogram_doublePtr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     i8            => ip.ImPlot_PlotHistogram_S8Ptr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     u8            => ip.ImPlot_PlotHistogram_U8Ptr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     i16, ip.ImS16 => ip.ImPlot_PlotHistogram_S16Ptr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     u16, ip.ImU16 => ip.ImPlot_PlotHistogram_U16Ptr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     i32, ip.ImS32 => ip.ImPlot_PlotHistogram_S32Ptr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     u32, ip.ImU32 => ip.ImPlot_PlotHistogram_U32Ptr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     i64, ip.ImS64 => ip.ImPlot_PlotHistogram_S64Ptr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
     u64, ip.ImU64 => ip.ImPlot_PlotHistogram_U64Ptr          (label_id,  values,  count,  bins,  bar_scale, range,  flags),
      else =>  {return error.ImPlot_PlotHistogram_Argument;}
    };
  }
  
//-------------------------------
// ImPlot_PlotHistogram2D()
//-------------------------------
pub fn ImPlot_PlotHistogram2D(label_id:anytype, xs:anytype, ys:anytype,count:c_int) !f64 {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  return switch (typ) {
     f32           => ip.ImPlot_PlotHistogram2D_FloatPtr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     f64           => ip.ImPlot_PlotHistogram2D_doublePtr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     i8            => ip.ImPlot_PlotHistogram2D_S8Ptr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     u8            => ip.ImPlot_PlotHistogram2D_U8Ptr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     i16, ip.ImS16 => ip.ImPlot_PlotHistogram2D_S16Ptr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     u16, ip.ImU16 => ip.ImPlot_PlotHistogram2D_U16Ptr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     i32, ip.ImS32 => ip.ImPlot_PlotHistogram2D_S32Ptr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     u32, ip.ImU32 => ip.ImPlot_PlotHistogram2D_U32Ptr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     i64, ip.ImS64 => ip.ImPlot_PlotHistogram2D_S64Ptr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
     u64, ip.ImU64 => ip.ImPlot_PlotHistogram2D_U64Ptr          (label_id, xs, ys,count, ip.ImPlotBin_Sturges, ip.ImPlotBin_Sturges, .{.X = .{.Min = 0, .Max = 0}, .Y = .{.Min = 0, .Max = 0}}, 0),
      else =>  {return error.ImPlot_PlotHistogram2D_Argument;}
    };
  }
  
//-------------------------------
// ImPlot_PlotHistogram2DEx()
//-------------------------------
pub fn ImPlot_PlotHistogram2DEx(label_id:anytype, xs:anytype, ys:anytype,count:c_int, x_bins:c_int, y_bins:c_int ,range:ip.ImPlotRect , flags:ip.ImPlotHistogramFlags ) !f64 {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  return switch (typ) {
     f32           => ip.ImPlot_PlotHistogram2D_FloatPtr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     f64           => ip.ImPlot_PlotHistogram2D_doublePtr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     i8            => ip.ImPlot_PlotHistogram2D_S8Ptr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     u8            => ip.ImPlot_PlotHistogram2D_U8Ptr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     i16, ip.ImS16 => ip.ImPlot_PlotHistogram2D_S16Ptr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     u16, ip.ImU16 => ip.ImPlot_PlotHistogram2D_U16Ptr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     i32, ip.ImS32 => ip.ImPlot_PlotHistogram2D_S32Ptr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     u32, ip.ImU32 => ip.ImPlot_PlotHistogram2D_U32Ptr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     i64, ip.ImS64 => ip.ImPlot_PlotHistogram2D_S64Ptr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
     u64, ip.ImU64 => ip.ImPlot_PlotHistogram2D_U64Ptr          (label_id,  xs,  ys, count,  x_bins,  y_bins, range,  flags),
      else =>  {return error.ImPlot_PlotHistogram2D_Argument;}
    };
  }
  
//-------------------------------
// ImPlot_PlotDigital()
//-------------------------------
pub fn ImPlot_PlotDigital(label_id: anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotDigital_FloatPtr          (label_id, xs, ys, count, 0, 0, tsize),
     f64           => ip.ImPlot_PlotDigital_doublePtr          (label_id, xs, ys, count, 0, 0, tsize),
     i8            => ip.ImPlot_PlotDigital_S8Ptr          (label_id, xs, ys, count, 0, 0, tsize),
     u8            => ip.ImPlot_PlotDigital_U8Ptr          (label_id, xs, ys, count, 0, 0, tsize),
     i16, ip.ImS16 => ip.ImPlot_PlotDigital_S16Ptr          (label_id, xs, ys, count, 0, 0, tsize),
     u16, ip.ImU16 => ip.ImPlot_PlotDigital_U16Ptr          (label_id, xs, ys, count, 0, 0, tsize),
     i32, ip.ImS32 => ip.ImPlot_PlotDigital_S32Ptr          (label_id, xs, ys, count, 0, 0, tsize),
     u32, ip.ImU32 => ip.ImPlot_PlotDigital_U32Ptr          (label_id, xs, ys, count, 0, 0, tsize),
     i64, ip.ImS64 => ip.ImPlot_PlotDigital_S64Ptr          (label_id, xs, ys, count, 0, 0, tsize),
     u64, ip.ImU64 => ip.ImPlot_PlotDigital_U64Ptr          (label_id, xs, ys, count, 0, 0, tsize),
      else =>  {return error.ImPlot_PlotDigital_Argument;}
    }
  }
  
//-------------------------------
// ImPlot_PlotDigitalEx()
//-------------------------------
pub fn ImPlot_PlotDigitalEx(label_id: anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
   switch (typ) {
     f32           => ip.ImPlot_PlotDigital_FloatPtr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     f64           => ip.ImPlot_PlotDigital_doublePtr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     i8            => ip.ImPlot_PlotDigital_S8Ptr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     u8            => ip.ImPlot_PlotDigital_U8Ptr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     i16, ip.ImS16 => ip.ImPlot_PlotDigital_S16Ptr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     u16, ip.ImU16 => ip.ImPlot_PlotDigital_U16Ptr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     i32, ip.ImS32 => ip.ImPlot_PlotDigital_S32Ptr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     u32, ip.ImU32 => ip.ImPlot_PlotDigital_U32Ptr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     i64, ip.ImS64 => ip.ImPlot_PlotDigital_S64Ptr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
     u64, ip.ImU64 => ip.ImPlot_PlotDigital_U64Ptr          (label_id,  xs,  ys,  count,  flags,  offset,  stride),
      else =>  {return error.ImPlot_PlotDigital_Argument;}
    }
  }
  
