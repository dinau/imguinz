// Notice: This file was auto generated.
// 2024/06 by dinau
//
const std = @import("std");
pub const ig = @cImport ({
  @cInclude ("cimplot.h");
});


//----------------------
// PlotLineXY()
//----------------------
pub fn PlotLineXY(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotLine_FloatPtrFloatPtr   (label, xs, ys, count, 0, 0, tsize),
    f64           => ig.ImPlot_PlotLine_DoublePtrDoublePtr (label, xs, ys, count, 0, 0, tsize),
    i8            => ig.ImPlot_PlotLine_S8PtrS8Ptr         (label, xs, ys, count, 0, 0, tsize),
    u8            => ig.ImPlot_PlotLine_U8PtrU8Ptr         (label, xs, ys, count, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotLine_S16PtrS16Ptr       (label, xs, ys, count, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotLine_U16PtrU16Ptr       (label, xs, ys, count, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotLine_S32PtrS32Ptr       (label, xs, ys, count, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotLine_U32PtrU32Ptr       (label, xs, ys, count, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotLine_S64PtrS64Ptr       (label, xs, ys, count, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotLine_U64PtrU64Ptr       (label, xs, ys, count, 0, 0, tsize),
    else =>  {return error.PlotLineXY_Argument;}
  }
}

//----------------------
// PlotLineXYEx()
//----------------------
pub fn PlotLineXYEx(label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotLine_FloatPtrFloatPtr   (label,  xs,  ys,  count,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotLine_DoublePtrDoublePtr (label,  xs,  ys,  count,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotLine_S8PtrS8Ptr         (label,  xs,  ys,  count,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotLine_U8PtrU8Ptr         (label,  xs,  ys,  count,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotLine_S16PtrS16Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotLine_U16PtrU16Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotLine_S32PtrS32Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotLine_U32PtrU32Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotLine_S64PtrS64Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotLine_U64PtrU64Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    else =>  {return error.PlotLineXY_Argument;}
  }
}

//----------------------
// PlotLineScale()
//----------------------
pub fn PlotLineScale(label:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotLine_FloatPtrInt  (label, values, count, 1.0, 0, 0, 0, tsize),
    f64           => ig.ImPlot_PlotLine_DoublePtrInt (label, values, count, 1.0, 0, 0, 0, tsize),
    i8            => ig.ImPlot_PlotLine_S8PtrInt     (label, values, count, 1.0, 0, 0, 0, tsize),
    u8            => ig.ImPlot_PlotLine_U8PtrInt     (label, values, count, 1.0, 0, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotLine_S16PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotLine_U16PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotLine_S32PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotLine_U32PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotLine_S64PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotLine_U64PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    else =>  {return error.PlotLineScale_Argument;}
  }
}

//----------------------
// PlotLineScaleEx()
//----------------------
pub fn PlotLineScaleEx(label:anytype, values:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotLine_FloatPtrInt  (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotLine_DoublePtrInt (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotLine_S8PtrInt     (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotLine_U8PtrInt     (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotLine_S16PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotLine_U16PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotLine_S32PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotLine_U32PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotLine_S64PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotLine_U64PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    else =>  {return error.PlotLineScale_Argument;}
  }
}

//----------------------
// PlotLineXYScale()
//----------------------
pub fn PlotLineXYScale(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotLine_FloatPtrFloatPtr   (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    f64           => ig.ImPlot_PlotLine_DoublePtrDoublePtr (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    i8            => ig.ImPlot_PlotLine_S8PtrS8Ptr         (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    u8            => ig.ImPlot_PlotLine_U8PtrU8Ptr         (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotLine_S16PtrS16Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotLine_U16PtrU16Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotLine_S32PtrS32Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotLine_U32PtrU32Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotLine_S64PtrS64Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotLine_U64PtrU64Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    else =>  {return error.PlotLineXYScale_Argument;}
  }
}

//----------------------
// PlotLineXYScaleEx()
//----------------------
pub fn PlotLineXYScaleEx(label:anytype, xs:anytype, ys:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotLine_FloatPtrFloatPtr   (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotLine_DoublePtrDoublePtr (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotLine_S8PtrS8Ptr         (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotLine_U8PtrU8Ptr         (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotLine_S16PtrS16Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotLine_U16PtrU16Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotLine_S32PtrS32Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotLine_U32PtrU32Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotLine_S64PtrS64Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotLine_U64PtrU64Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    else =>  {return error.PlotLineXYScale_Argument;}
  }
}

//----------------------
// PlotScatterXY()
//----------------------
pub fn PlotScatterXY(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotScatter_FloatPtrFloatPtr   (label, xs, ys, count, 0, 0, tsize),
    f64           => ig.ImPlot_PlotScatter_DoublePtrDoublePtr (label, xs, ys, count, 0, 0, tsize),
    i8            => ig.ImPlot_PlotScatter_S8PtrS8Ptr         (label, xs, ys, count, 0, 0, tsize),
    u8            => ig.ImPlot_PlotScatter_U8PtrU8Ptr         (label, xs, ys, count, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotScatter_S16PtrS16Ptr       (label, xs, ys, count, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotScatter_U16PtrU16Ptr       (label, xs, ys, count, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotScatter_S32PtrS32Ptr       (label, xs, ys, count, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotScatter_U32PtrU32Ptr       (label, xs, ys, count, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotScatter_S64PtrS64Ptr       (label, xs, ys, count, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotScatter_U64PtrU64Ptr       (label, xs, ys, count, 0, 0, tsize),
    else =>  {return error.PlotScatterXY_Argument;}
  }
}

//----------------------
// PlotScatterXYEx()
//----------------------
pub fn PlotScatterXYEx(label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotScatter_FloatPtrFloatPtr   (label,  xs,  ys,  count,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotScatter_DoublePtrDoublePtr (label,  xs,  ys,  count,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotScatter_S8PtrS8Ptr         (label,  xs,  ys,  count,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotScatter_U8PtrU8Ptr         (label,  xs,  ys,  count,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotScatter_S16PtrS16Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotScatter_U16PtrU16Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotScatter_S32PtrS32Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotScatter_U32PtrU32Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotScatter_S64PtrS64Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotScatter_U64PtrU64Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    else =>  {return error.PlotScatterXY_Argument;}
  }
}

//----------------------
// PlotScatterXYScale()
//----------------------
pub fn PlotScatterXYScale(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotScatter_FloatPtrFloatPtr   (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    f64           => ig.ImPlot_PlotScatter_DoublePtrDoublePtr (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    i8            => ig.ImPlot_PlotScatter_S8PtrS8Ptr         (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    u8            => ig.ImPlot_PlotScatter_U8PtrU8Ptr         (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotScatter_S16PtrS16Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotScatter_U16PtrU16Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotScatter_S32PtrS32Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotScatter_U32PtrU32Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotScatter_S64PtrS64Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotScatter_U64PtrU64Ptr       (label, xs, ys, count, 1.0, 0, 0, 0, tsize),
    else =>  {return error.PlotScatterXYScale_Argument;}
  }
}

//----------------------
// PlotScatterXYScaleEx()
//----------------------
pub fn PlotScatterXYScaleEx(label:anytype, xs:anytype, ys:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotScatter_FloatPtrFloatPtr   (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotScatter_DoublePtrDoublePtr (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotScatter_S8PtrS8Ptr         (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotScatter_U8PtrU8Ptr         (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotScatter_S16PtrS16Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotScatter_U16PtrU16Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotScatter_S32PtrS32Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotScatter_U32PtrU32Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotScatter_S64PtrS64Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotScatter_U64PtrU64Ptr       (label,  xs,  ys,  count,  xscale,  xstart,  flags,  offset,  stride),
    else =>  {return error.PlotScatterXYScale_Argument;}
  }
}

//----------------------
// PlotStairsXY()
//----------------------
pub fn PlotStairsXY(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotStairs_FloatPtrFloatPtr   (label, xs, ys, count, 0, 0, tsize),
    f64           => ig.ImPlot_PlotStairs_DoublePtrDoublePtr (label, xs, ys, count, 0, 0, tsize),
    i8            => ig.ImPlot_PlotStairs_S8PtrS8Ptr         (label, xs, ys, count, 0, 0, tsize),
    u8            => ig.ImPlot_PlotStairs_U8PtrU8Ptr         (label, xs, ys, count, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotStairs_S16PtrS16Ptr       (label, xs, ys, count, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotStairs_U16PtrU16Ptr       (label, xs, ys, count, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotStairs_S32PtrS32Ptr       (label, xs, ys, count, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotStairs_U32PtrU32Ptr       (label, xs, ys, count, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotStairs_S64PtrS64Ptr       (label, xs, ys, count, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotStairs_U64PtrU64Ptr       (label, xs, ys, count, 0, 0, tsize),
    else =>  {return error.PlotStairsXY_Argument;}
  }
}

//----------------------
// PlotStairsXYEx()
//----------------------
pub fn PlotStairsXYEx(label:anytype, xs:anytype, ys:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotStairs_FloatPtrFloatPtr   (label,  xs,  ys,  count,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotStairs_DoublePtrDoublePtr (label,  xs,  ys,  count,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotStairs_S8PtrS8Ptr         (label,  xs,  ys,  count,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotStairs_U8PtrU8Ptr         (label,  xs,  ys,  count,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotStairs_S16PtrS16Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotStairs_U16PtrU16Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotStairs_S32PtrS32Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotStairs_U32PtrU32Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotStairs_S64PtrS64Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotStairs_U64PtrU64Ptr       (label,  xs,  ys,  count,  flags,  offset,  stride),
    else =>  {return error.PlotStairsXY_Argument;}
  }
}

//----------------------
// PlotStairsScale()
//----------------------
pub fn PlotStairsScale(label:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotStairs_FloatPtrInt  (label, values, count, 1.0, 0, 0, 0, tsize),
    f64           => ig.ImPlot_PlotStairs_DoublePtrInt (label, values, count, 1.0, 0, 0, 0, tsize),
    i8            => ig.ImPlot_PlotStairs_S8PtrInt     (label, values, count, 1.0, 0, 0, 0, tsize),
    u8            => ig.ImPlot_PlotStairs_U8PtrInt     (label, values, count, 1.0, 0, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotStairs_S16PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotStairs_U16PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotStairs_S32PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotStairs_U32PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotStairs_S64PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotStairs_U64PtrInt    (label, values, count, 1.0, 0, 0, 0, tsize),
    else =>  {return error.PlotStairsScale_Argument;}
  }
}

//----------------------
// PlotStairsScaleEx()
//----------------------
pub fn PlotStairsScaleEx(label:anytype, values:anytype, count:c_int, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotStairs_FloatPtrInt  (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotStairs_DoublePtrInt (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotStairs_S8PtrInt     (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotStairs_U8PtrInt     (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotStairs_S16PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotStairs_U16PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotStairs_S32PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotStairs_U32PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotStairs_S64PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotStairs_U64PtrInt    (label,  values,  count,  xscale,  xstart,  flags,  offset,  stride),
    else =>  {return error.PlotStairsScale_Argument;}
  }
}

//----------------------
// PlotShadedXyy()
//----------------------
pub fn PlotShadedXyy(label:anytype, xs:anytype, ys:anytype, ys2:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotShaded_FloatPtrFloatPtr   (label, xs, ys, ys2, count, 0, 0, tsize),
    f64           => ig.ImPlot_PlotShaded_DoublePtrDoublePtr (label, xs, ys, ys2, count, 0, 0, tsize),
    i8            => ig.ImPlot_PlotShaded_S8PtrS8Ptr         (label, xs, ys, ys2, count, 0, 0, tsize),
    u8            => ig.ImPlot_PlotShaded_U8PtrU8Ptr         (label, xs, ys, ys2, count, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotShaded_S16PtrS16Ptr       (label, xs, ys, ys2, count, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotShaded_U16PtrU16Ptr       (label, xs, ys, ys2, count, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotShaded_S32PtrS32Ptr       (label, xs, ys, ys2, count, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotShaded_U32PtrU32Ptr       (label, xs, ys, ys2, count, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotShaded_S64PtrS64Ptr       (label, xs, ys, ys2, count, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotShaded_U64PtrU64Ptr       (label, xs, ys, ys2, count, 0, 0, tsize),
    else =>  {return error.PlotShadedXyy_Argument;}
  }
}

//----------------------
// PlotShadedXyyEx()
//----------------------
pub fn PlotShadedXyyEx(label:anytype, xs:anytype, ys:anytype, ys2:anytype, count:c_int, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotShaded_FloatPtrFloatPtr   (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotShaded_DoublePtrDoublePtr (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotShaded_S8PtrS8Ptr         (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotShaded_U8PtrU8Ptr         (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotShaded_S16PtrS16Ptr       (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotShaded_U16PtrU16Ptr       (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotShaded_S32PtrS32Ptr       (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotShaded_U32PtrU32Ptr       (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotShaded_S64PtrS64Ptr       (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotShaded_U64PtrU64Ptr       (label,  xs,  ys,  ys2,  count,  flags,  offset,  stride),
    else =>  {return error.PlotShadedXyy_Argument;}
  }
}

//----------------------
// PlotShadedRefScale()
//----------------------
pub fn PlotShadedRefScale(label:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotShaded_FloatPtrInt  (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    f64           => ig.ImPlot_PlotShaded_DoublePtrInt (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    i8            => ig.ImPlot_PlotShaded_S8PtrInt     (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    u8            => ig.ImPlot_PlotShaded_U8PtrInt     (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotShaded_S16PtrInt    (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotShaded_U16PtrInt    (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotShaded_S32PtrInt    (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotShaded_U32PtrInt    (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotShaded_S64PtrInt    (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotShaded_U64PtrInt    (label, values, count, 0, 1.0, 0, 0, 0, tsize),
    else =>  {return error.PlotShadedRefScale_Argument;}
  }
}

//----------------------
// PlotShadedRefScaleEx()
//----------------------
pub fn PlotShadedRefScaleEx(label:anytype, values:anytype, count:c_int, yref:f64, xscale:f64, xstart:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotShaded_FloatPtrInt  (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotShaded_DoublePtrInt (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotShaded_S8PtrInt     (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotShaded_U8PtrInt     (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotShaded_S16PtrInt    (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotShaded_U16PtrInt    (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotShaded_S32PtrInt    (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotShaded_U32PtrInt    (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotShaded_S64PtrInt    (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotShaded_U64PtrInt    (label,  values,  count,  yref,  xscale,  xstart,  flags,  offset,  stride),
    else =>  {return error.PlotShadedRefScale_Argument;}
  }
}

//----------------------
// PlotShadedXyRef()
//----------------------
pub fn PlotShadedXyRef(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotShaded_FloatPtrFloatPtr   (label, xs, ys, count, 0, 0, 0, tsize),
    f64           => ig.ImPlot_PlotShaded_DoublePtrDoublePtr (label, xs, ys, count, 0, 0, 0, tsize),
    i8            => ig.ImPlot_PlotShaded_S8PtrS8Ptr         (label, xs, ys, count, 0, 0, 0, tsize),
    u8            => ig.ImPlot_PlotShaded_U8PtrU8Ptr         (label, xs, ys, count, 0, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotShaded_S16PtrS16Ptr       (label, xs, ys, count, 0, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotShaded_U16PtrU16Ptr       (label, xs, ys, count, 0, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotShaded_S32PtrS32Ptr       (label, xs, ys, count, 0, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotShaded_U32PtrU32Ptr       (label, xs, ys, count, 0, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotShaded_S64PtrS64Ptr       (label, xs, ys, count, 0, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotShaded_U64PtrU64Ptr       (label, xs, ys, count, 0, 0, 0, tsize),
    else =>  {return error.PlotShadedXyRef_Argument;}
  }
}

//----------------------
// PlotShadedXyRefEx()
//----------------------
pub fn PlotShadedXyRefEx(label:anytype, xs:anytype, ys:anytype, count:c_int, yref:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotShaded_FloatPtrFloatPtr   (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotShaded_DoublePtrDoublePtr (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotShaded_S8PtrS8Ptr         (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotShaded_U8PtrU8Ptr         (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotShaded_S16PtrS16Ptr       (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotShaded_U16PtrU16Ptr       (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotShaded_S32PtrS32Ptr       (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotShaded_U32PtrU32Ptr       (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotShaded_S64PtrS64Ptr       (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotShaded_U64PtrU64Ptr       (label,  xs,  ys,  count,  yref,  flags,  offset,  stride),
    else =>  {return error.PlotShadedXyRef_Argument;}
  }
}

//----------------------
// PlotBars()
//----------------------
pub fn PlotBars(label:anytype, values:anytype, count:c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotBars_FloatPtrInt  (label, values, count, 0.67, 0, 0, 0, tsize),
    f64           => ig.ImPlot_PlotBars_DoublePtrInt (label, values, count, 0.67, 0, 0, 0, tsize),
    i8            => ig.ImPlot_PlotBars_S8PtrInt     (label, values, count, 0.67, 0, 0, 0, tsize),
    u8            => ig.ImPlot_PlotBars_U8PtrInt     (label, values, count, 0.67, 0, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotBars_S16PtrInt    (label, values, count, 0.67, 0, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotBars_U16PtrInt    (label, values, count, 0.67, 0, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotBars_S32PtrInt    (label, values, count, 0.67, 0, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotBars_U32PtrInt    (label, values, count, 0.67, 0, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotBars_S64PtrInt    (label, values, count, 0.67, 0, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotBars_U64PtrInt    (label, values, count, 0.67, 0, 0, 0, tsize),
    else =>  {return error.PlotBars_Argument;}
  }
}

//----------------------
// PlotBarsEx()
//----------------------
pub fn PlotBarsEx(label:anytype, values:anytype, count:c_int, bar_size:f64, shift:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(values[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotBars_FloatPtrInt  (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotBars_DoublePtrInt (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotBars_S8PtrInt     (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotBars_U8PtrInt     (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotBars_S16PtrInt    (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotBars_U16PtrInt    (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotBars_S32PtrInt    (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotBars_U32PtrInt    (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotBars_S64PtrInt    (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotBars_U64PtrInt    (label,  values,  count,  bar_size,  shift,  flags,  offset,  stride),
    else =>  {return error.PlotBars_Argument;}
  }
}

//----------------------
// PlotBarsXy()
//----------------------
pub fn PlotBarsXy(label:anytype, xs:anytype, ys:anytype, count:c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotBars_FloatPtrFloatPtr   (label, xs, ys, count, 0.67, 0, 0, tsize),
    f64           => ig.ImPlot_PlotBars_DoublePtrDoublePtr (label, xs, ys, count, 0.67, 0, 0, tsize),
    i8            => ig.ImPlot_PlotBars_S8PtrS8Ptr         (label, xs, ys, count, 0.67, 0, 0, tsize),
    u8            => ig.ImPlot_PlotBars_U8PtrU8Ptr         (label, xs, ys, count, 0.67, 0, 0, tsize),
    i16, ig.ImS16 => ig.ImPlot_PlotBars_S16PtrS16Ptr       (label, xs, ys, count, 0.67, 0, 0, tsize),
    u16, ig.ImU16 => ig.ImPlot_PlotBars_U16PtrU16Ptr       (label, xs, ys, count, 0.67, 0, 0, tsize),
    i32, ig.ImS32 => ig.ImPlot_PlotBars_S32PtrS32Ptr       (label, xs, ys, count, 0.67, 0, 0, tsize),
    u32, ig.ImU32 => ig.ImPlot_PlotBars_U32PtrU32Ptr       (label, xs, ys, count, 0.67, 0, 0, tsize),
    i64, ig.ImS64 => ig.ImPlot_PlotBars_S64PtrS64Ptr       (label, xs, ys, count, 0.67, 0, 0, tsize),
    u64, ig.ImU64 => ig.ImPlot_PlotBars_U64PtrU64Ptr       (label, xs, ys, count, 0.67, 0, 0, tsize),
    else =>  {return error.PlotBarsXy_Argument;}
  }
}

//----------------------
// PlotBarsXyEx()
//----------------------
pub fn PlotBarsXyEx(label:anytype, xs:anytype, ys:anytype, count:c_int, bar_size:f64, flags:c_int, offset:c_int, stride: c_int) !void {
  const typ =  @TypeOf(xs[0]);
  const tsize = @sizeOf(typ);
  _ = &tsize;
  switch (typ) {
    f32           => ig.ImPlot_PlotBars_FloatPtrFloatPtr   (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    f64           => ig.ImPlot_PlotBars_DoublePtrDoublePtr (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    i8            => ig.ImPlot_PlotBars_S8PtrS8Ptr         (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    u8            => ig.ImPlot_PlotBars_U8PtrU8Ptr         (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    i16, ig.ImS16 => ig.ImPlot_PlotBars_S16PtrS16Ptr       (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    u16, ig.ImU16 => ig.ImPlot_PlotBars_U16PtrU16Ptr       (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    i32, ig.ImS32 => ig.ImPlot_PlotBars_S32PtrS32Ptr       (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    u32, ig.ImU32 => ig.ImPlot_PlotBars_U32PtrU32Ptr       (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    i64, ig.ImS64 => ig.ImPlot_PlotBars_S64PtrS64Ptr       (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    u64, ig.ImU64 => ig.ImPlot_PlotBars_U64PtrU64Ptr       (label,  xs,  ys,  count,  bar_size,  flags,  offset,  stride),
    else =>  {return error.PlotBarsXy_Argument;}
  }
}

