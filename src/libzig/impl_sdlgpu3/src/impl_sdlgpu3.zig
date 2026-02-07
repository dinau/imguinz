pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const __builtin_va_list = [*c]u8;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __gnuc_va_list;
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:610:3: warning: TODO implement translation of stmt class GCCAsmStmtClass

// C:\zig\lib\libc\include\any-windows-any/_mingw.h:605:36: warning: unable to translate function, demoted to extern
pub extern fn __debugbreak() void;
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:632:3: warning: TODO implement translation of stmt class GCCAsmStmtClass

// C:\zig\lib\libc\include\any-windows-any/_mingw.h:626:60: warning: unable to translate function, demoted to extern
pub extern fn __fastfail(arg_code: c_uint) noreturn;
pub extern fn __mingw_get_crt_info() [*c]const u8;
pub const rsize_t = usize;
pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const errno_t = c_int;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const time_t = __time64_t;
pub const struct_threadlocaleinfostruct = extern struct {
    _locale_pctype: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    _locale_mb_cur_max: c_int = @import("std").mem.zeroes(c_int),
    _locale_lc_codepage: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct___lc_time_data = opaque {};
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo = @import("std").mem.zeroes(pthreadlocinfo),
    mbcinfo: pthreadmbcinfo = @import("std").mem.zeroes(pthreadmbcinfo),
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort = @import("std").mem.zeroes(c_ushort),
    wCountry: c_ushort = @import("std").mem.zeroes(c_ushort),
    wCodePage: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const LC_ID = struct_tagLC_ID;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub extern fn __local_stdio_printf_options() [*c]c_ulonglong;
pub extern fn __local_stdio_scanf_options() [*c]c_ulonglong;
pub const struct__iobuf = extern struct {
    _Placeholder: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const FILE = struct__iobuf;
pub const _off_t = c_long;
pub const off32_t = c_long;
pub const _off64_t = c_longlong;
pub const off64_t = c_longlong;
pub const off_t = off32_t;
pub extern fn __acrt_iob_func(index: c_uint) [*c]FILE;
pub extern fn __iob_func() [*c]FILE;
pub const fpos_t = c_longlong;
pub extern fn __mingw_sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vsscanf(noalias _Str: [*c]const u8, noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vscanf(noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vfscanf(noalias fp: [*c]FILE, noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_vsnprintf(noalias _DstBuf: [*c]u8, _MaxCount: usize, noalias _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn __mingw_snprintf(noalias s: [*c]u8, n: usize, noalias format: [*c]const u8, ...) c_int;
pub extern fn __mingw_printf(noalias [*c]const u8, ...) c_int;
pub extern fn __mingw_vprintf(noalias [*c]const u8, va_list) c_int;
pub extern fn __mingw_fprintf(noalias [*c]FILE, noalias [*c]const u8, ...) c_int;
pub extern fn __mingw_vfprintf(noalias [*c]FILE, noalias [*c]const u8, va_list) c_int;
pub extern fn __mingw_sprintf(noalias [*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn __mingw_vsprintf(noalias [*c]u8, noalias [*c]const u8, va_list) c_int;
pub extern fn __mingw_asprintf(noalias [*c][*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn __mingw_vasprintf(noalias [*c][*c]u8, noalias [*c]const u8, va_list) c_int;
pub extern fn __ms_sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __ms_vsscanf(noalias _Str: [*c]const u8, noalias _Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __ms_scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __ms_vscanf(noalias _Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __ms_fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __ms_vfscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __ms_printf(noalias [*c]const u8, ...) c_int;
pub extern fn __ms_vprintf(noalias [*c]const u8, va_list) c_int;
pub extern fn __ms_fprintf(noalias [*c]FILE, noalias [*c]const u8, ...) c_int;
pub extern fn __ms_vfprintf(noalias [*c]FILE, noalias [*c]const u8, va_list) c_int;
pub extern fn __ms_sprintf(noalias [*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn __ms_vsprintf(noalias [*c]u8, noalias [*c]const u8, va_list) c_int;
pub extern fn __ms_snprintf(noalias [*c]u8, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __ms_vsnprintf(noalias [*c]u8, usize, noalias [*c]const u8, va_list) c_int;
pub extern fn __stdio_common_vsprintf(options: c_ulonglong, str: [*c]u8, len: usize, format: [*c]const u8, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vfprintf(options: c_ulonglong, file: [*c]FILE, format: [*c]const u8, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vsscanf(options: c_ulonglong, input: [*c]const u8, length: usize, format: [*c]const u8, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vfscanf(options: c_ulonglong, file: [*c]FILE, format: [*c]const u8, locale: _locale_t, valist: va_list) c_int;
pub extern fn fprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn printf(_Format: [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias _Dest: [*c]u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, _ArgList: __builtin_va_list) c_int;
pub extern fn vprintf(noalias _Format: [*c]const u8, _ArgList: __builtin_va_list) c_int;
pub extern fn vsprintf(noalias _Dest: [*c]u8, noalias _Format: [*c]const u8, _Args: __builtin_va_list) c_int;
pub extern fn fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn vsscanf(noalias __source: [*c]const u8, noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn _filbuf(_File: [*c]FILE) c_int;
pub extern fn _flsbuf(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _fsopen(_Filename: [*c]const u8, _Mode: [*c]const u8, _ShFlag: c_int) [*c]FILE;
pub extern fn clearerr(_File: [*c]FILE) void;
pub extern fn fclose(_File: [*c]FILE) c_int;
pub extern fn _fcloseall() c_int;
pub extern fn _fdopen(_FileHandle: c_int, _Mode: [*c]const u8) [*c]FILE;
pub extern fn feof(_File: [*c]FILE) c_int;
pub extern fn ferror(_File: [*c]FILE) c_int;
pub extern fn fflush(_File: [*c]FILE) c_int;
pub extern fn fgetc(_File: [*c]FILE) c_int;
pub extern fn _fgetchar() c_int;
pub extern fn fgetpos(noalias _File: [*c]FILE, noalias _Pos: [*c]fpos_t) c_int;
pub extern fn fgetpos64(noalias _File: [*c]FILE, noalias _Pos: [*c]fpos_t) c_int;
pub extern fn fgets(noalias _Buf: [*c]u8, _MaxCount: c_int, noalias _File: [*c]FILE) [*c]u8;
pub extern fn _fileno(_File: [*c]FILE) c_int;
pub extern fn _tempnam(_DirName: [*c]const u8, _FilePrefix: [*c]const u8) [*c]u8;
pub extern fn _flushall() c_int;
pub extern fn fopen(_Filename: [*c]const u8, _Mode: [*c]const u8) [*c]FILE;
pub extern fn fopen64(noalias filename: [*c]const u8, noalias mode: [*c]const u8) [*c]FILE;
pub extern fn fputc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _fputchar(_Ch: c_int) c_int;
pub extern fn fputs(noalias _Str: [*c]const u8, noalias _File: [*c]FILE) c_int;
pub extern fn fread(_DstBuf: ?*anyopaque, _ElementSize: c_ulonglong, _Count: c_ulonglong, _File: [*c]FILE) c_ulonglong;
pub extern fn freopen(noalias _Filename: [*c]const u8, noalias _Mode: [*c]const u8, noalias _File: [*c]FILE) [*c]FILE;
pub extern fn fsetpos(_File: [*c]FILE, _Pos: [*c]const fpos_t) c_int;
pub extern fn fsetpos64(_File: [*c]FILE, _Pos: [*c]const fpos_t) c_int;
pub extern fn fseek(_File: [*c]FILE, _Offset: c_long, _Origin: c_int) c_int;
pub extern fn ftell(_File: [*c]FILE) c_long;
pub extern fn _fseeki64(_File: [*c]FILE, _Offset: c_longlong, _Origin: c_int) c_int;
pub extern fn _ftelli64(_File: [*c]FILE) c_longlong;
pub fn fseeko(arg__File: [*c]FILE, arg__Offset: _off_t, arg__Origin: c_int) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Offset = arg__Offset;
    _ = &_Offset;
    var _Origin = arg__Origin;
    _ = &_Origin;
    return fseek(_File, _Offset, _Origin);
}
pub fn fseeko64(arg__File: [*c]FILE, arg__Offset: _off64_t, arg__Origin: c_int) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Offset = arg__Offset;
    _ = &_Offset;
    var _Origin = arg__Origin;
    _ = &_Origin;
    return _fseeki64(_File, _Offset, _Origin);
}
pub fn ftello(arg__File: [*c]FILE) callconv(.c) _off_t {
    var _File = arg__File;
    _ = &_File;
    return ftell(_File);
}
pub fn ftello64(arg__File: [*c]FILE) callconv(.c) _off64_t {
    var _File = arg__File;
    _ = &_File;
    return _ftelli64(_File);
}
pub extern fn fwrite(_Str: ?*const anyopaque, _Size: c_ulonglong, _Count: c_ulonglong, _File: [*c]FILE) c_ulonglong;
pub extern fn getc(_File: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn _getmaxstdio() c_int;
pub extern fn gets(_Buffer: [*c]u8) [*c]u8;
pub extern fn _getw(_File: [*c]FILE) c_int;
pub extern fn perror(_ErrMsg: [*c]const u8) void;
pub extern fn _pclose(_File: [*c]FILE) c_int;
pub extern fn _popen(_Command: [*c]const u8, _Mode: [*c]const u8) [*c]FILE;
pub extern fn putc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn putchar(_Ch: c_int) c_int;
pub extern fn puts(_Str: [*c]const u8) c_int;
pub extern fn _putw(_Word: c_int, _File: [*c]FILE) c_int;
pub extern fn remove(_Filename: [*c]const u8) c_int;
pub extern fn rename(_OldFilename: [*c]const u8, _NewFilename: [*c]const u8) c_int;
pub extern fn _unlink(_Filename: [*c]const u8) c_int;
pub extern fn unlink(_Filename: [*c]const u8) c_int;
pub extern fn rewind(_File: [*c]FILE) void;
pub extern fn _rmtmp() c_int;
pub extern fn setbuf(noalias _File: [*c]FILE, noalias _Buffer: [*c]u8) void;
pub extern fn _setmaxstdio(_Max: c_int) c_int;
pub extern fn _set_output_format(_Format: c_uint) c_uint;
pub extern fn _get_output_format() c_uint;
pub extern fn setvbuf(noalias _File: [*c]FILE, noalias _Buf: [*c]u8, _Mode: c_int, _Size: usize) c_int;
pub extern fn _scprintf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn _snscanf(noalias _Src: [*c]const u8, _MaxCount: usize, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn _vscprintf(noalias _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam(_Buffer: [*c]u8) [*c]u8;
pub extern fn ungetc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _vsnprintf(noalias _Dest: [*c]u8, _Count: usize, noalias _Format: [*c]const u8, _Args: va_list) c_int;
pub extern fn _snprintf(noalias _Dest: [*c]u8, _Count: usize, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(noalias __stream: [*c]u8, __n: c_ulonglong, noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn snprintf(noalias __stream: [*c]u8, __n: c_ulonglong, noalias __format: [*c]const u8, ...) c_int;
pub extern fn _set_printf_count_output(_Value: c_int) c_int;
pub extern fn _get_printf_count_output() c_int;
pub extern fn __mingw_swscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vswscanf(noalias _Str: [*c]const wchar_t, noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_wscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vwscanf(noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_fwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vfwscanf(noalias fp: [*c]FILE, noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_fwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_wprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vfwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __mingw_vwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __mingw_snwprintf(noalias s: [*c]wchar_t, n: usize, noalias format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vsnwprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __mingw_swprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vswprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __ms_swscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vswscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, va_list) c_int;
pub extern fn __ms_wscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vwscanf(noalias _Format: [*c]const wchar_t, va_list) c_int;
pub extern fn __ms_fwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vfwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, va_list) c_int;
pub extern fn __ms_fwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_wprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vfwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __ms_vwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __ms_swprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vswprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __ms_snwprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vsnwprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __stdio_common_vswprintf(options: c_ulonglong, str: [*c]wchar_t, len: usize, format: [*c]const wchar_t, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vfwprintf(options: c_ulonglong, file: [*c]FILE, format: [*c]const wchar_t, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vswscanf(options: c_ulonglong, input: [*c]const wchar_t, length: usize, format: [*c]const wchar_t, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vfwscanf(options: c_ulonglong, file: [*c]FILE, format: [*c]const wchar_t, locale: _locale_t, valist: va_list) c_int;
pub extern fn fwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn swscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn wscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn vfwscanf(__stream: [*c]FILE, __format: [*c]const wchar_t, __local_argv: va_list) c_int;
pub extern fn vswscanf(noalias __source: [*c]const wchar_t, noalias __format: [*c]const wchar_t, __local_argv: va_list) c_int;
pub extern fn vwscanf(__format: [*c]const wchar_t, __local_argv: va_list) c_int;
pub extern fn fwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn wprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn vfwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn vwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _wfsopen(_Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t, _ShFlag: c_int) [*c]FILE;
pub extern fn fgetwc(_File: [*c]FILE) wint_t;
pub extern fn _fgetwchar() wint_t;
pub extern fn fputwc(_Ch: wchar_t, _File: [*c]FILE) wint_t;
pub extern fn _fputwchar(_Ch: wchar_t) wint_t;
pub extern fn getwc(_File: [*c]FILE) wint_t;
pub extern fn getwchar() wint_t;
pub extern fn putwc(_Ch: wchar_t, _File: [*c]FILE) wint_t;
pub extern fn putwchar(_Ch: wchar_t) wint_t;
pub extern fn ungetwc(_Ch: wint_t, _File: [*c]FILE) wint_t;
pub extern fn fgetws(noalias _Dst: [*c]wchar_t, _SizeInWords: c_int, noalias _File: [*c]FILE) [*c]wchar_t;
pub extern fn fputws(noalias _Str: [*c]const wchar_t, noalias _File: [*c]FILE) c_int;
pub extern fn _getws(_String: [*c]wchar_t) [*c]wchar_t;
pub extern fn _putws(_Str: [*c]const wchar_t) c_int;
// C:\zig\lib\libc\include\any-windows-any/stdio.h:1169:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scwprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _snwprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vsnwprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, _Args: va_list) c_int;
pub extern fn swprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn vswprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, _Args: va_list) c_int;
pub extern fn snwprintf(noalias s: [*c]wchar_t, n: usize, noalias format: [*c]const wchar_t, ...) c_int;
pub extern fn vsnwprintf(noalias s: [*c]wchar_t, n: usize, noalias format: [*c]const wchar_t, arg: va_list) c_int;
// C:\zig\lib\libc\include\any-windows-any/stdio.h:1190:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swprintf(noalias _Dest: [*c]wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub fn _vswprintf(noalias arg__Dest: [*c]wchar_t, noalias arg__Format: [*c]const wchar_t, arg__Args: va_list) callconv(.c) c_int {
    var _Dest = arg__Dest;
    _ = &_Dest;
    var _Format = arg__Format;
    _ = &_Format;
    var _Args = arg__Args;
    _ = &_Args;
    return __stdio_common_vswprintf(__local_stdio_printf_options().*, _Dest, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, null, _Args);
}
pub fn _vscwprintf(noalias arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    var _Result: c_int = __stdio_common_vswprintf(__local_stdio_printf_options().* | @as(c_ulonglong, 2), null, @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))), _Format, null, _ArgList);
    _ = &_Result;
    return if (_Result < @as(c_int, 0)) -@as(c_int, 1) else _Result;
}
pub extern fn _wtempnam(_Directory: [*c]const wchar_t, _FilePrefix: [*c]const wchar_t) [*c]wchar_t;
pub extern fn _snwscanf(noalias _Src: [*c]const wchar_t, _MaxCount: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wfdopen(_FileHandle: c_int, _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wfopen(noalias _Filename: [*c]const wchar_t, noalias _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wfreopen(noalias _Filename: [*c]const wchar_t, noalias _Mode: [*c]const wchar_t, noalias _OldFile: [*c]FILE) [*c]FILE;
pub extern fn _wperror(_ErrMsg: [*c]const wchar_t) void;
pub extern fn _wpopen(_Command: [*c]const wchar_t, _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wremove(_Filename: [*c]const wchar_t) c_int;
pub extern fn _wtmpnam(_Buffer: [*c]wchar_t) [*c]wchar_t;
pub extern fn _fgetwc_nolock(_File: [*c]FILE) wint_t;
pub extern fn _fputwc_nolock(_Ch: wchar_t, _File: [*c]FILE) wint_t;
pub extern fn _ungetwc_nolock(_Ch: wint_t, _File: [*c]FILE) wint_t;
pub extern fn _fgetc_nolock(_File: [*c]FILE) c_int;
pub extern fn _fputc_nolock(_Char: c_int, _File: [*c]FILE) c_int;
pub extern fn _getc_nolock(_File: [*c]FILE) c_int;
pub extern fn _putc_nolock(_Char: c_int, _File: [*c]FILE) c_int;
pub extern fn _lock_file(_File: [*c]FILE) void;
pub extern fn _unlock_file(_File: [*c]FILE) void;
pub extern fn _fclose_nolock(_File: [*c]FILE) c_int;
pub extern fn _fflush_nolock(_File: [*c]FILE) c_int;
pub extern fn _fread_nolock(noalias _DstBuf: ?*anyopaque, _ElementSize: usize, _Count: usize, noalias _File: [*c]FILE) usize;
pub extern fn _fseek_nolock(_File: [*c]FILE, _Offset: c_long, _Origin: c_int) c_int;
pub extern fn _ftell_nolock(_File: [*c]FILE) c_long;
pub extern fn _fseeki64_nolock(_File: [*c]FILE, _Offset: c_longlong, _Origin: c_int) c_int;
pub extern fn _ftelli64_nolock(_File: [*c]FILE) c_longlong;
pub extern fn _fwrite_nolock(noalias _DstBuf: ?*const anyopaque, _Size: usize, _Count: usize, noalias _File: [*c]FILE) usize;
pub extern fn _ungetc_nolock(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn tempnam(_Directory: [*c]const u8, _FilePrefix: [*c]const u8) [*c]u8;
pub extern fn fcloseall() c_int;
pub extern fn fdopen(_FileHandle: c_int, _Format: [*c]const u8) [*c]FILE;
pub extern fn fgetchar() c_int;
pub extern fn fileno(_File: [*c]FILE) c_int;
pub extern fn flushall() c_int;
pub extern fn fputchar(_Ch: c_int) c_int;
pub extern fn getw(_File: [*c]FILE) c_int;
pub extern fn putw(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn rmtmp() c_int;
pub extern fn __mingw_str_wide_utf8(wptr: [*c]const wchar_t, mbptr: [*c][*c]u8, buflen: [*c]usize) c_int;
pub extern fn __mingw_str_utf8_wide(mbptr: [*c]const u8, wptr: [*c][*c]wchar_t, buflen: [*c]usize) c_int;
pub extern fn __mingw_str_free(ptr: ?*anyopaque) void;
pub extern fn _wspawnl(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnle(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnlp(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnlpe(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnv(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnve(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t, _Env: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnvp(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnvpe(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t, _Env: [*c]const [*c]const wchar_t) isize;
pub extern fn _spawnv(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8) isize;
pub extern fn _spawnve(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8, _Env: [*c]const [*c]const u8) isize;
pub extern fn _spawnvp(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8) isize;
pub extern fn _spawnvpe(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8, _Env: [*c]const [*c]const u8) isize;
pub extern fn clearerr_s(_File: [*c]FILE) errno_t;
pub extern fn fread_s(_DstBuf: ?*anyopaque, _DstSize: usize, _ElementSize: usize, _Count: usize, _File: [*c]FILE) usize;
pub extern fn __stdio_common_vsprintf_s(_Options: c_ulonglong, _Str: [*c]u8, _Len: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vsprintf_p(_Options: c_ulonglong, _Str: [*c]u8, _Len: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vsnprintf_s(_Options: c_ulonglong, _Str: [*c]u8, _Len: usize, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vfprintf_s(_Options: c_ulonglong, _File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vfprintf_p(_Options: c_ulonglong, _File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub fn _vfscanf_s_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfscanf(@as(c_ulonglong, 1), _File, _Format, _Locale, _ArgList);
}
pub fn vfscanf_s(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_s_l(_File, _Format, null, _ArgList);
}
pub fn _vscanf_s_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, _Locale, _ArgList);
}
pub fn vscanf_s(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:60:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fscanf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:70:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fscanf_s(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:80:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scanf_s_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:90:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn scanf_s(_Format: [*c]const u8, ...) c_int;
pub fn _vfscanf_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfscanf(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _File, _Format, _Locale, _ArgList);
}
pub fn _vscanf_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, _Locale, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:110:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fscanf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:119:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scanf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vsscanf_s_l(arg__Src: [*c]const u8, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsscanf(@as(c_ulonglong, 1), _Src, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn vsscanf_s(arg__Src: [*c]const u8, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsscanf_s_l(_Src, _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:137:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sscanf_s_l(_Src: [*c]const u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:146:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn sscanf_s(_Src: [*c]const u8, _Format: [*c]const u8, ...) c_int;
pub fn _vsscanf_l(arg__Src: [*c]const u8, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsscanf(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _Src, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:160:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sscanf_l(_Src: [*c]const u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:171:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf_s_l(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:180:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf_s(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:191:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf_l(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vfprintf_s_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfprintf_s(__local_stdio_printf_options().*, _File, _Format, _Locale, _ArgList);
}
pub fn vfprintf_s(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_s_l(_File, _Format, null, _ArgList);
}
pub fn _vprintf_s_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn vprintf_s(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:218:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:227:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_s_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:236:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fprintf_s(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:245:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn printf_s(_Format: [*c]const u8, ...) c_int;
pub fn _vsnprintf_c_l(arg__DstBuf: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf(__local_stdio_printf_options().*, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
}
pub fn _vsnprintf_c(arg__DstBuf: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:263:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_c_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:272:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_c(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vsnprintf_s_l(arg__DstBuf: [*c]u8, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsnprintf_s(__local_stdio_printf_options().*, _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
}
pub fn vsnprintf_s(arg__DstBuf: [*c]u8, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, null, _ArgList);
}
pub fn _vsnprintf_s(arg__DstBuf: [*c]u8, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:294:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:303:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_s(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vsprintf_s_l(arg__DstBuf: [*c]u8, arg__DstSize: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf_s(__local_stdio_printf_options().*, _DstBuf, _DstSize, _Format, _Locale, _ArgList);
}
pub fn vsprintf_s(arg__DstBuf: [*c]u8, arg__Size: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _Size = arg__Size;
    _ = &_Size;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsprintf_s_l(_DstBuf, _Size, _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:321:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:330:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn sprintf_s(_DstBuf: [*c]u8, _DstSize: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vfprintf_p_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfprintf_p(__local_stdio_printf_options().*, _File, _Format, _Locale, _ArgList);
}
pub fn _vfprintf_p(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_p_l(_File, _Format, null, _ArgList);
}
pub fn _vprintf_p_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_p_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn _vprintf_p(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_p_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:356:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_p_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:365:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_p(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:374:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_p_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:383:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_p(_Format: [*c]const u8, ...) c_int;
pub fn _vsprintf_p_l(arg__DstBuf: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf_p(__local_stdio_printf_options().*, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
}
pub fn _vsprintf_p(arg__Dst: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Dst = arg__Dst;
    _ = &_Dst;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsprintf_p_l(_Dst, _MaxCount, _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:401:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_p_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:410:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_p(_Dst: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vscprintf_p_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf_p(@as(c_ulonglong, 2), null, @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))), _Format, _Locale, _ArgList);
}
pub fn _vscprintf_p(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vscprintf_p_l(_Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:428:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scprintf_p_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:437:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scprintf_p(_Format: [*c]const u8, ...) c_int;
pub fn _vfprintf_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfprintf(__local_stdio_printf_options().*, _File, _Format, _Locale, _ArgList);
}
pub fn _vprintf_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:455:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:464:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vsnprintf_l(arg__DstBuf: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf(@as(c_ulonglong, 1), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:478:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vsprintf_l(arg__DstBuf: [*c]u8, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnprintf_l(_DstBuf, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:491:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_l(_DstBuf: [*c]u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vscprintf_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf(@as(c_ulonglong, 2), null, @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))), _Format, _Locale, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:505:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scprintf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn fopen_s(_File: [*c][*c]FILE, _Filename: [*c]const u8, _Mode: [*c]const u8) errno_t;
pub extern fn freopen_s(_File: [*c][*c]FILE, _Filename: [*c]const u8, _Mode: [*c]const u8, _Stream: [*c]FILE) errno_t;
pub extern fn gets_s([*c]u8, rsize_t) [*c]u8;
pub extern fn tmpfile_s(_File: [*c][*c]FILE) errno_t;
pub extern fn tmpnam_s([*c]u8, rsize_t) errno_t;
pub extern fn _getws_s(_Str: [*c]wchar_t, _SizeInWords: usize) [*c]wchar_t;
pub extern fn __stdio_common_vswprintf_s(_Options: c_ulonglong, _Str: [*c]wchar_t, _Len: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vsnwprintf_s(_Options: c_ulonglong, _Str: [*c]wchar_t, _Len: usize, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vfwprintf_s(_Options: c_ulonglong, _File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub fn _vfwscanf_s_l(arg__File: [*c]FILE, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfwscanf(__local_stdio_scanf_options().* | @as(c_ulonglong, 1), _File, _Format, _Locale, _ArgList);
}
pub fn vfwscanf_s(arg__File: [*c]FILE, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwscanf_s_l(_File, _Format, null, _ArgList);
}
pub fn _vwscanf_s_l(arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwscanf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, _Locale, _ArgList);
}
pub fn vwscanf_s(arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwscanf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:631:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fwscanf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:641:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwscanf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:651:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _wscanf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:661:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wscanf_s(_Format: [*c]const wchar_t, ...) c_int;
pub fn _vswscanf_s_l(arg__Src: [*c]const wchar_t, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vswscanf(__local_stdio_scanf_options().* | @as(c_ulonglong, 1), _Src, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn vswscanf_s(arg__Src: [*c]const wchar_t, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vswscanf_s_l(_Src, _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:681:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swscanf_s_l(_Src: [*c]const wchar_t, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:690:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn swscanf_s(_Src: [*c]const wchar_t, _Format: [*c]const wchar_t, ...) c_int;
pub fn _vsnwscanf_s_l(arg__Src: [*c]const wchar_t, arg__MaxCount: usize, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vswscanf(__local_stdio_scanf_options().* | @as(c_ulonglong, 1), _Src, _MaxCount, _Format, _Locale, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:704:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwscanf_s_l(_Src: [*c]const wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:713:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwscanf_s(_Src: [*c]const wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, ...) c_int;
pub fn _vfwprintf_s_l(arg__File: [*c]FILE, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfwprintf_s(__local_stdio_printf_options().*, _File, _Format, _Locale, _ArgList);
}
pub fn _vwprintf_s_l(arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwprintf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn vfwprintf_s(arg__File: [*c]FILE, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwprintf_s_l(_File, _Format, null, _ArgList);
}
pub fn vwprintf_s(arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwprintf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:739:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fwprintf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:748:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _wprintf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:757:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwprintf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:766:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wprintf_s(_Format: [*c]const wchar_t, ...) c_int;
pub fn _vswprintf_s_l(arg__DstBuf: [*c]wchar_t, arg__DstSize: usize, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vswprintf_s(__local_stdio_printf_options().*, _DstBuf, _DstSize, _Format, _Locale, _ArgList);
}
pub fn vswprintf_s(arg__DstBuf: [*c]wchar_t, arg__DstSize: usize, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vswprintf_s_l(_DstBuf, _DstSize, _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:784:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:793:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn swprintf_s(_DstBuf: [*c]wchar_t, _DstSize: usize, _Format: [*c]const wchar_t, ...) c_int;
pub fn _vsnwprintf_s_l(arg__DstBuf: [*c]wchar_t, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsnwprintf_s(__local_stdio_printf_options().*, _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
}
pub fn _vsnwprintf_s(arg__DstBuf: [*c]wchar_t, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, null, _ArgList);
}
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:811:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:820:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwprintf_s(_DstBuf: [*c]wchar_t, _DstSize: usize, _MaxCount: usize, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wfopen_s(_File: [*c][*c]FILE, _Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t) errno_t;
pub extern fn _wfreopen_s(_File: [*c][*c]FILE, _Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t, _OldFile: [*c]FILE) errno_t;
pub extern fn _wtmpnam_s(_DstBuf: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _fread_nolock_s(_DstBuf: ?*anyopaque, _DstSize: usize, _ElementSize: usize, _Count: usize, _File: [*c]FILE) usize;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_least16_t = c_short;
pub const uint_least16_t = c_ushort;
pub const int_least32_t = c_int;
pub const uint_least32_t = c_uint;
pub const int_least64_t = c_longlong;
pub const uint_least64_t = c_ulonglong;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast16_t = c_short;
pub const uint_fast16_t = c_ushort;
pub const int_fast32_t = c_int;
pub const uint_fast32_t = c_uint;
pub const int_fast64_t = c_longlong;
pub const uint_fast64_t = c_ulonglong;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const struct_ImVec4_c = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    z: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec4_c = struct_ImVec4_c;
pub const ImU64 = c_ulonglong;
pub const ImTextureID = ImU64;
pub const struct_ImTextureRect = extern struct {
    x: c_ushort = @import("std").mem.zeroes(c_ushort),
    y: c_ushort = @import("std").mem.zeroes(c_ushort),
    w: c_ushort = @import("std").mem.zeroes(c_ushort),
    h: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const ImTextureRect = struct_ImTextureRect;
pub const struct_ImVector_ImTextureRect = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImTextureRect = @import("std").mem.zeroes([*c]ImTextureRect),
};
pub const ImVector_ImTextureRect = struct_ImVector_ImTextureRect;
pub const struct_ImTextureData = extern struct {
    UniqueID: c_int = @import("std").mem.zeroes(c_int),
    Status: ImTextureStatus = @import("std").mem.zeroes(ImTextureStatus),
    BackendUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    TexID: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    Format: ImTextureFormat = @import("std").mem.zeroes(ImTextureFormat),
    Width: c_int = @import("std").mem.zeroes(c_int),
    Height: c_int = @import("std").mem.zeroes(c_int),
    BytesPerPixel: c_int = @import("std").mem.zeroes(c_int),
    Pixels: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    UsedRect: ImTextureRect = @import("std").mem.zeroes(ImTextureRect),
    UpdateRect: ImTextureRect = @import("std").mem.zeroes(ImTextureRect),
    Updates: ImVector_ImTextureRect = @import("std").mem.zeroes(ImVector_ImTextureRect),
    UnusedFrames: c_int = @import("std").mem.zeroes(c_int),
    RefCount: c_ushort = @import("std").mem.zeroes(c_ushort),
    UseColors: bool = @import("std").mem.zeroes(bool),
    WantDestroyNextFrame: bool = @import("std").mem.zeroes(bool),
};
pub const ImTextureData = struct_ImTextureData;
pub const struct_ImTextureRef_c = extern struct {
    _TexData: [*c]ImTextureData = @import("std").mem.zeroes([*c]ImTextureData),
    _TexID: ImTextureID = @import("std").mem.zeroes(ImTextureID),
};
pub const ImTextureRef_c = struct_ImTextureRef_c;
pub const ImDrawIdx = c_ushort;
pub const struct_ImVector_ImDrawIdx = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawIdx = @import("std").mem.zeroes([*c]ImDrawIdx),
};
pub const ImVector_ImDrawIdx = struct_ImVector_ImDrawIdx;
pub const struct_ImVec2_c = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec2_c = struct_ImVec2_c;
pub const ImU32 = c_uint;
pub const struct_ImDrawVert = extern struct {
    pos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    uv: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    col: ImU32 = @import("std").mem.zeroes(ImU32),
};
pub const ImDrawVert = struct_ImDrawVert;
pub const struct_ImVector_ImDrawVert = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawVert = @import("std").mem.zeroes([*c]ImDrawVert),
};
pub const ImVector_ImDrawVert = struct_ImVector_ImDrawVert;
pub const ImDrawListFlags = c_int;
pub const ImFontAtlasFlags = c_int;
pub const struct_ImVector_ImTextureDataPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImTextureData = @import("std").mem.zeroes([*c][*c]ImTextureData),
};
pub const ImVector_ImTextureDataPtr = struct_ImVector_ImTextureDataPtr;
pub const struct_ImVector_float = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]f32 = @import("std").mem.zeroes([*c]f32),
};
pub const ImVector_float = struct_ImVector_float;
pub const ImU16 = c_ushort;
pub const struct_ImVector_ImU16 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU16 = @import("std").mem.zeroes([*c]ImU16),
};
pub const ImVector_ImU16 = struct_ImVector_ImU16;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:1560:18: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontGlyph = opaque {};
pub const ImFontGlyph = struct_ImFontGlyph;
pub const struct_ImVector_ImFontGlyph = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImFontGlyph = @import("std").mem.zeroes(?*ImFontGlyph),
};
pub const ImVector_ImFontGlyph = struct_ImVector_ImFontGlyph;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:1643:18: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontBaked = struct {};
pub const ImFontBaked = struct_ImFontBaked;
pub const ImFontFlags = c_int;
pub const ImGuiID = c_uint;
pub const ImS8 = i8;
pub const ImWchar16 = c_ushort;
pub const ImWchar = ImWchar16;
pub const struct_ImFontLoader = extern struct {
    Name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    LoaderInit: ?*const fn ([*c]ImFontAtlas) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas) callconv(.c) bool),
    LoaderShutdown: ?*const fn ([*c]ImFontAtlas) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas) callconv(.c) void),
    FontSrcInit: ?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig) callconv(.c) bool),
    FontSrcDestroy: ?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig) callconv(.c) void),
    FontSrcContainsGlyph: ?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig, ImWchar) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig, ImWchar) callconv(.c) bool),
    FontBakedInit: ?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig, ?*ImFontBaked, ?*anyopaque) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig, ?*ImFontBaked, ?*anyopaque) callconv(.c) bool),
    FontBakedDestroy: ?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig, ?*ImFontBaked, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig, ?*ImFontBaked, ?*anyopaque) callconv(.c) void),
    FontBakedLoadGlyph: ?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig, ?*ImFontBaked, ?*anyopaque, ImWchar, ?*ImFontGlyph, [*c]f32) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas, [*c]ImFontConfig, ?*ImFontBaked, ?*anyopaque, ImWchar, ?*ImFontGlyph, [*c]f32) callconv(.c) bool),
    FontBakedSrcLoaderDataSize: usize = @import("std").mem.zeroes(usize),
};
pub const ImFontLoader = struct_ImFontLoader;
pub const struct_ImFontConfig = extern struct {
    Name: [40]u8 = @import("std").mem.zeroes([40]u8),
    FontData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    FontDataSize: c_int = @import("std").mem.zeroes(c_int),
    FontDataOwnedByAtlas: bool = @import("std").mem.zeroes(bool),
    MergeMode: bool = @import("std").mem.zeroes(bool),
    PixelSnapH: bool = @import("std").mem.zeroes(bool),
    PixelSnapV: bool = @import("std").mem.zeroes(bool),
    OversampleH: ImS8 = @import("std").mem.zeroes(ImS8),
    OversampleV: ImS8 = @import("std").mem.zeroes(ImS8),
    EllipsisChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    SizePixels: f32 = @import("std").mem.zeroes(f32),
    GlyphRanges: [*c]const ImWchar = @import("std").mem.zeroes([*c]const ImWchar),
    GlyphExcludeRanges: [*c]const ImWchar = @import("std").mem.zeroes([*c]const ImWchar),
    GlyphOffset: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    GlyphMinAdvanceX: f32 = @import("std").mem.zeroes(f32),
    GlyphMaxAdvanceX: f32 = @import("std").mem.zeroes(f32),
    GlyphExtraAdvanceX: f32 = @import("std").mem.zeroes(f32),
    FontNo: ImU32 = @import("std").mem.zeroes(ImU32),
    FontLoaderFlags: c_uint = @import("std").mem.zeroes(c_uint),
    RasterizerMultiply: f32 = @import("std").mem.zeroes(f32),
    RasterizerDensity: f32 = @import("std").mem.zeroes(f32),
    Flags: ImFontFlags = @import("std").mem.zeroes(ImFontFlags),
    DstFont: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    FontLoader: [*c]const ImFontLoader = @import("std").mem.zeroes([*c]const ImFontLoader),
    FontLoaderData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImFontConfig = struct_ImFontConfig;
pub const struct_ImVector_ImFontConfigPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImFontConfig = @import("std").mem.zeroes([*c][*c]ImFontConfig),
};
pub const ImVector_ImFontConfigPtr = struct_ImVector_ImFontConfigPtr;
pub const ImU8 = u8;
const union_unnamed_1 = extern union {
    val_i: c_int,
    val_f: f32,
    val_p: ?*anyopaque,
};
pub const struct_ImGuiStoragePair = extern struct {
    key: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    unnamed_0: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
};
pub const ImGuiStoragePair = struct_ImGuiStoragePair;
pub const struct_ImVector_ImGuiStoragePair = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiStoragePair = @import("std").mem.zeroes([*c]ImGuiStoragePair),
};
pub const ImVector_ImGuiStoragePair = struct_ImVector_ImGuiStoragePair;
pub const struct_ImGuiStorage = extern struct {
    Data: ImVector_ImGuiStoragePair = @import("std").mem.zeroes(ImVector_ImGuiStoragePair),
};
pub const ImGuiStorage = struct_ImGuiStorage;
pub const struct_ImFont = extern struct {
    LastBaked: ?*ImFontBaked = @import("std").mem.zeroes(?*ImFontBaked),
    OwnerAtlas: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    Flags: ImFontFlags = @import("std").mem.zeroes(ImFontFlags),
    CurrentRasterizerDensity: f32 = @import("std").mem.zeroes(f32),
    FontId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LegacySize: f32 = @import("std").mem.zeroes(f32),
    Sources: ImVector_ImFontConfigPtr = @import("std").mem.zeroes(ImVector_ImFontConfigPtr),
    EllipsisChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    FallbackChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    Used8kPagesMap: [1]ImU8 = @import("std").mem.zeroes([1]ImU8),
    EllipsisAutoBake: bool = @import("std").mem.zeroes(bool),
    RemapPairs: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
};
pub const ImFont = struct_ImFont;
pub const struct_ImVector_ImFontPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImFont = @import("std").mem.zeroes([*c][*c]ImFont),
};
pub const ImVector_ImFontPtr = struct_ImVector_ImFontPtr;
pub const struct_ImVector_ImFontConfig = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImFontConfig = @import("std").mem.zeroes([*c]ImFontConfig),
};
pub const ImVector_ImFontConfig = struct_ImVector_ImFontConfig;
pub const struct_ImVector_ImDrawListSharedDataPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImDrawListSharedData = @import("std").mem.zeroes([*c][*c]ImDrawListSharedData),
};
pub const ImVector_ImDrawListSharedDataPtr = struct_ImVector_ImDrawListSharedDataPtr;
pub const struct_stbrp_context_opaque = extern struct {
    data: [80]u8 = @import("std").mem.zeroes([80]u8),
};
pub const stbrp_context_opaque = struct_stbrp_context_opaque;
pub const struct_stbrp_node = opaque {};
pub const stbrp_node = struct_stbrp_node;
pub const stbrp_node_im = stbrp_node;
pub const struct_ImVector_stbrp_node_im = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*stbrp_node_im = @import("std").mem.zeroes(?*stbrp_node_im),
};
pub const ImVector_stbrp_node_im = struct_ImVector_stbrp_node_im;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:3761:9: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontAtlasRectEntry = opaque {};
pub const ImFontAtlasRectEntry = struct_ImFontAtlasRectEntry;
pub const struct_ImVector_ImFontAtlasRectEntry = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImFontAtlasRectEntry = @import("std").mem.zeroes(?*ImFontAtlasRectEntry),
};
pub const ImVector_ImFontAtlasRectEntry = struct_ImVector_ImFontAtlasRectEntry;
pub const struct_ImVector_unsigned_char = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const ImVector_unsigned_char = struct_ImVector_unsigned_char;
pub const struct_ImVec2i_c = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImVec2i_c = struct_ImVec2i_c;
pub const struct_ImVector_ImFontBakedPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]?*ImFontBaked = @import("std").mem.zeroes([*c]?*ImFontBaked),
};
pub const ImVector_ImFontBakedPtr = struct_ImVector_ImFontBakedPtr;
pub const struct_ImStableVector_ImFontBaked__32 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Blocks: ImVector_ImFontBakedPtr = @import("std").mem.zeroes(ImVector_ImFontBakedPtr),
};
pub const ImStableVector_ImFontBaked__32 = struct_ImStableVector_ImFontBaked__32;
pub const ImFontAtlasRectId = c_int;
pub const struct_ImFontAtlasBuilder = extern struct {
    PackContext: stbrp_context_opaque = @import("std").mem.zeroes(stbrp_context_opaque),
    PackNodes: ImVector_stbrp_node_im = @import("std").mem.zeroes(ImVector_stbrp_node_im),
    Rects: ImVector_ImTextureRect = @import("std").mem.zeroes(ImVector_ImTextureRect),
    RectsIndex: ImVector_ImFontAtlasRectEntry = @import("std").mem.zeroes(ImVector_ImFontAtlasRectEntry),
    TempBuffer: ImVector_unsigned_char = @import("std").mem.zeroes(ImVector_unsigned_char),
    RectsIndexFreeListStart: c_int = @import("std").mem.zeroes(c_int),
    RectsPackedCount: c_int = @import("std").mem.zeroes(c_int),
    RectsPackedSurface: c_int = @import("std").mem.zeroes(c_int),
    RectsDiscardedCount: c_int = @import("std").mem.zeroes(c_int),
    RectsDiscardedSurface: c_int = @import("std").mem.zeroes(c_int),
    FrameCount: c_int = @import("std").mem.zeroes(c_int),
    MaxRectSize: ImVec2i_c = @import("std").mem.zeroes(ImVec2i_c),
    MaxRectBounds: ImVec2i_c = @import("std").mem.zeroes(ImVec2i_c),
    LockDisableResize: bool = @import("std").mem.zeroes(bool),
    PreloadedAllGlyphsRanges: bool = @import("std").mem.zeroes(bool),
    BakedPool: ImStableVector_ImFontBaked__32 = @import("std").mem.zeroes(ImStableVector_ImFontBaked__32),
    BakedMap: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    BakedDiscardedCount: c_int = @import("std").mem.zeroes(c_int),
    PackIdMouseCursors: ImFontAtlasRectId = @import("std").mem.zeroes(ImFontAtlasRectId),
    PackIdLinesTexData: ImFontAtlasRectId = @import("std").mem.zeroes(ImFontAtlasRectId),
};
pub const ImFontAtlasBuilder = struct_ImFontAtlasBuilder;
pub const ImGuiConfigFlags = c_int;
pub const ImGuiBackendFlags = c_int;
pub const ImGuiKeyChord = c_int;
pub const struct_ImGuiKeyData = extern struct {
    Down: bool = @import("std").mem.zeroes(bool),
    DownDuration: f32 = @import("std").mem.zeroes(f32),
    DownDurationPrev: f32 = @import("std").mem.zeroes(f32),
    AnalogValue: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiKeyData = struct_ImGuiKeyData;
pub const struct_ImVector_ImWchar = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImWchar = @import("std").mem.zeroes([*c]ImWchar),
};
pub const ImVector_ImWchar = struct_ImVector_ImWchar;
pub const struct_ImGuiIO = extern struct {
    ConfigFlags: ImGuiConfigFlags = @import("std").mem.zeroes(ImGuiConfigFlags),
    BackendFlags: ImGuiBackendFlags = @import("std").mem.zeroes(ImGuiBackendFlags),
    DisplaySize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DisplayFramebufferScale: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DeltaTime: f32 = @import("std").mem.zeroes(f32),
    IniSavingRate: f32 = @import("std").mem.zeroes(f32),
    IniFilename: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    LogFilename: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Fonts: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    FontDefault: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    FontAllowUserScaling: bool = @import("std").mem.zeroes(bool),
    ConfigNavSwapGamepadButtons: bool = @import("std").mem.zeroes(bool),
    ConfigNavMoveSetMousePos: bool = @import("std").mem.zeroes(bool),
    ConfigNavCaptureKeyboard: bool = @import("std").mem.zeroes(bool),
    ConfigNavEscapeClearFocusItem: bool = @import("std").mem.zeroes(bool),
    ConfigNavEscapeClearFocusWindow: bool = @import("std").mem.zeroes(bool),
    ConfigNavCursorVisibleAuto: bool = @import("std").mem.zeroes(bool),
    ConfigNavCursorVisibleAlways: bool = @import("std").mem.zeroes(bool),
    ConfigDockingNoSplit: bool = @import("std").mem.zeroes(bool),
    ConfigDockingNoDockingOver: bool = @import("std").mem.zeroes(bool),
    ConfigDockingWithShift: bool = @import("std").mem.zeroes(bool),
    ConfigDockingAlwaysTabBar: bool = @import("std").mem.zeroes(bool),
    ConfigDockingTransparentPayload: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoAutoMerge: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoTaskBarIcon: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoDecoration: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoDefaultParent: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsPlatformFocusSetsImGuiFocus: bool = @import("std").mem.zeroes(bool),
    ConfigDpiScaleFonts: bool = @import("std").mem.zeroes(bool),
    ConfigDpiScaleViewports: bool = @import("std").mem.zeroes(bool),
    MouseDrawCursor: bool = @import("std").mem.zeroes(bool),
    ConfigMacOSXBehaviors: bool = @import("std").mem.zeroes(bool),
    ConfigInputTrickleEventQueue: bool = @import("std").mem.zeroes(bool),
    ConfigInputTextCursorBlink: bool = @import("std").mem.zeroes(bool),
    ConfigInputTextEnterKeepActive: bool = @import("std").mem.zeroes(bool),
    ConfigDragClickToInputText: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsResizeFromEdges: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsMoveFromTitleBarOnly: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsCopyContentsWithCtrlC: bool = @import("std").mem.zeroes(bool),
    ConfigScrollbarScrollByPage: bool = @import("std").mem.zeroes(bool),
    ConfigMemoryCompactTimer: f32 = @import("std").mem.zeroes(f32),
    MouseDoubleClickTime: f32 = @import("std").mem.zeroes(f32),
    MouseDoubleClickMaxDist: f32 = @import("std").mem.zeroes(f32),
    MouseDragThreshold: f32 = @import("std").mem.zeroes(f32),
    KeyRepeatDelay: f32 = @import("std").mem.zeroes(f32),
    KeyRepeatRate: f32 = @import("std").mem.zeroes(f32),
    ConfigErrorRecovery: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableAssert: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableDebugLog: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableTooltip: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIsDebuggerPresent: bool = @import("std").mem.zeroes(bool),
    ConfigDebugHighlightIdConflicts: bool = @import("std").mem.zeroes(bool),
    ConfigDebugHighlightIdConflictsShowItemPicker: bool = @import("std").mem.zeroes(bool),
    ConfigDebugBeginReturnValueOnce: bool = @import("std").mem.zeroes(bool),
    ConfigDebugBeginReturnValueLoop: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIgnoreFocusLoss: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIniSettings: bool = @import("std").mem.zeroes(bool),
    BackendPlatformName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    BackendRendererName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    BackendPlatformUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BackendRendererUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BackendLanguageUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    WantCaptureMouse: bool = @import("std").mem.zeroes(bool),
    WantCaptureKeyboard: bool = @import("std").mem.zeroes(bool),
    WantTextInput: bool = @import("std").mem.zeroes(bool),
    WantSetMousePos: bool = @import("std").mem.zeroes(bool),
    WantSaveIniSettings: bool = @import("std").mem.zeroes(bool),
    NavActive: bool = @import("std").mem.zeroes(bool),
    NavVisible: bool = @import("std").mem.zeroes(bool),
    Framerate: f32 = @import("std").mem.zeroes(f32),
    MetricsRenderVertices: c_int = @import("std").mem.zeroes(c_int),
    MetricsRenderIndices: c_int = @import("std").mem.zeroes(c_int),
    MetricsRenderWindows: c_int = @import("std").mem.zeroes(c_int),
    MetricsActiveWindows: c_int = @import("std").mem.zeroes(c_int),
    MouseDelta: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    MousePos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    MouseDown: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheel: f32 = @import("std").mem.zeroes(f32),
    MouseWheelH: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
    MouseHoveredViewport: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    KeyCtrl: bool = @import("std").mem.zeroes(bool),
    KeyShift: bool = @import("std").mem.zeroes(bool),
    KeyAlt: bool = @import("std").mem.zeroes(bool),
    KeySuper: bool = @import("std").mem.zeroes(bool),
    KeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    KeysData: [155]ImGuiKeyData = @import("std").mem.zeroes([155]ImGuiKeyData),
    WantCaptureMouseUnlessPopupClose: bool = @import("std").mem.zeroes(bool),
    MousePosPrev: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    MouseClickedPos: [5]ImVec2_c = @import("std").mem.zeroes([5]ImVec2_c),
    MouseClickedTime: [5]f64 = @import("std").mem.zeroes([5]f64),
    MouseClicked: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseDoubleClicked: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseClickedCount: [5]ImU16 = @import("std").mem.zeroes([5]ImU16),
    MouseClickedLastCount: [5]ImU16 = @import("std").mem.zeroes([5]ImU16),
    MouseReleased: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseReleasedTime: [5]f64 = @import("std").mem.zeroes([5]f64),
    MouseDownOwned: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseDownOwnedUnlessPopupClose: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheelRequestAxisSwap: bool = @import("std").mem.zeroes(bool),
    MouseCtrlLeftAsRightClick: bool = @import("std").mem.zeroes(bool),
    MouseDownDuration: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDownDurationPrev: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDragMaxDistanceAbs: [5]ImVec2_c = @import("std").mem.zeroes([5]ImVec2_c),
    MouseDragMaxDistanceSqr: [5]f32 = @import("std").mem.zeroes([5]f32),
    PenPressure: f32 = @import("std").mem.zeroes(f32),
    AppFocusLost: bool = @import("std").mem.zeroes(bool),
    AppAcceptingEvents: bool = @import("std").mem.zeroes(bool),
    InputQueueSurrogate: ImWchar16 = @import("std").mem.zeroes(ImWchar16),
    InputQueueCharacters: ImVector_ImWchar = @import("std").mem.zeroes(ImVector_ImWchar),
};
pub const ImGuiIO = struct_ImGuiIO;
pub const ImGuiViewportFlags = c_int;
pub const struct_ImVector_ImDrawListPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImDrawList = @import("std").mem.zeroes([*c][*c]ImDrawList),
};
pub const ImVector_ImDrawListPtr = struct_ImVector_ImDrawListPtr;
pub const struct_ImDrawData = extern struct {
    Valid: bool = @import("std").mem.zeroes(bool),
    CmdListsCount: c_int = @import("std").mem.zeroes(c_int),
    TotalIdxCount: c_int = @import("std").mem.zeroes(c_int),
    TotalVtxCount: c_int = @import("std").mem.zeroes(c_int),
    CmdLists: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
    DisplayPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DisplaySize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    FramebufferScale: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    OwnerViewport: [*c]ImGuiViewport = @import("std").mem.zeroes([*c]ImGuiViewport),
    Textures: [*c]ImVector_ImTextureDataPtr = @import("std").mem.zeroes([*c]ImVector_ImTextureDataPtr),
};
pub const ImDrawData = struct_ImDrawData;
pub const struct_ImGuiViewport = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    Pos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Size: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    FramebufferScale: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DpiScale: f32 = @import("std").mem.zeroes(f32),
    ParentViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ParentViewport: [*c]ImGuiViewport = @import("std").mem.zeroes([*c]ImGuiViewport),
    DrawData: [*c]ImDrawData = @import("std").mem.zeroes([*c]ImDrawData),
    RendererUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformHandle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformHandleRaw: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformWindowCreated: bool = @import("std").mem.zeroes(bool),
    PlatformRequestMove: bool = @import("std").mem.zeroes(bool),
    PlatformRequestResize: bool = @import("std").mem.zeroes(bool),
    PlatformRequestClose: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiViewport = struct_ImGuiViewport;
pub const struct_ImGuiPlatformImeData = extern struct {
    WantVisible: bool = @import("std").mem.zeroes(bool),
    WantTextInput: bool = @import("std").mem.zeroes(bool),
    InputPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    InputLineHeight: f32 = @import("std").mem.zeroes(f32),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiPlatformImeData = struct_ImGuiPlatformImeData;
pub const struct_ImGuiPlatformMonitor = extern struct {
    MainPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    MainSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DpiScale: f32 = @import("std").mem.zeroes(f32),
    PlatformHandle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiPlatformMonitor = struct_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiPlatformMonitor = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPlatformMonitor = @import("std").mem.zeroes([*c]ImGuiPlatformMonitor),
};
pub const ImVector_ImGuiPlatformMonitor = struct_ImVector_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiViewportPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImGuiViewport = @import("std").mem.zeroes([*c][*c]ImGuiViewport),
};
pub const ImVector_ImGuiViewportPtr = struct_ImVector_ImGuiViewportPtr;
pub const struct_ImGuiPlatformIO = extern struct {
    Platform_GetClipboardTextFn: ?*const fn (?*ImGuiContext) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (?*ImGuiContext) callconv(.c) [*c]const u8),
    Platform_SetClipboardTextFn: ?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) void),
    Platform_ClipboardUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_OpenInShellFn: ?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) bool),
    Platform_OpenInShellUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_SetImeDataFn: ?*const fn (?*ImGuiContext, [*c]ImGuiViewport, [*c]ImGuiPlatformImeData) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiViewport, [*c]ImGuiPlatformImeData) callconv(.c) void),
    Platform_ImeUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_LocaleDecimalPoint: ImWchar = @import("std").mem.zeroes(ImWchar),
    Renderer_TextureMaxWidth: c_int = @import("std").mem.zeroes(c_int),
    Renderer_TextureMaxHeight: c_int = @import("std").mem.zeroes(c_int),
    Renderer_RenderState: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_ShowWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_SetWindowPos: ?*const fn ([*c]ImGuiViewport, ImVec2_c) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2_c) callconv(.c) void),
    Platform_GetWindowPos: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2_c = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2_c),
    Platform_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2_c) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2_c) callconv(.c) void),
    Platform_GetWindowSize: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2_c = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2_c),
    Platform_GetWindowFramebufferScale: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2_c = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2_c),
    Platform_SetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_GetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) bool),
    Platform_GetWindowMinimized: ?*const fn ([*c]ImGuiViewport) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) bool),
    Platform_SetWindowTitle: ?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.c) void),
    Platform_SetWindowAlpha: ?*const fn ([*c]ImGuiViewport, f32) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, f32) callconv(.c) void),
    Platform_UpdateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Platform_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Platform_GetWindowDpiScale: ?*const fn ([*c]ImGuiViewport) callconv(.c) f32 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) f32),
    Platform_OnChangedViewport: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_GetWindowWorkAreaInsets: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec4_c = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec4_c),
    Platform_CreateVkSurface: ?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.c) c_int),
    Renderer_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Renderer_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Renderer_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2_c) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2_c) callconv(.c) void),
    Renderer_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Renderer_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Monitors: ImVector_ImGuiPlatformMonitor = @import("std").mem.zeroes(ImVector_ImGuiPlatformMonitor),
    Textures: ImVector_ImTextureDataPtr = @import("std").mem.zeroes(ImVector_ImTextureDataPtr),
    Viewports: ImVector_ImGuiViewportPtr = @import("std").mem.zeroes(ImVector_ImGuiViewportPtr),
};
pub const ImGuiPlatformIO = struct_ImGuiPlatformIO;
pub const ImGuiTreeNodeFlags = c_int;
pub const ImGuiHoveredFlags = c_int;
pub const struct_ImGuiStyle = extern struct {
    FontSizeBase: f32 = @import("std").mem.zeroes(f32),
    FontScaleMain: f32 = @import("std").mem.zeroes(f32),
    FontScaleDpi: f32 = @import("std").mem.zeroes(f32),
    Alpha: f32 = @import("std").mem.zeroes(f32),
    DisabledAlpha: f32 = @import("std").mem.zeroes(f32),
    WindowPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WindowRounding: f32 = @import("std").mem.zeroes(f32),
    WindowBorderSize: f32 = @import("std").mem.zeroes(f32),
    WindowBorderHoverPadding: f32 = @import("std").mem.zeroes(f32),
    WindowMinSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WindowTitleAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WindowMenuButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ChildRounding: f32 = @import("std").mem.zeroes(f32),
    ChildBorderSize: f32 = @import("std").mem.zeroes(f32),
    PopupRounding: f32 = @import("std").mem.zeroes(f32),
    PopupBorderSize: f32 = @import("std").mem.zeroes(f32),
    FramePadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    FrameRounding: f32 = @import("std").mem.zeroes(f32),
    FrameBorderSize: f32 = @import("std").mem.zeroes(f32),
    ItemSpacing: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    ItemInnerSpacing: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CellPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TouchExtraPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    IndentSpacing: f32 = @import("std").mem.zeroes(f32),
    ColumnsMinSpacing: f32 = @import("std").mem.zeroes(f32),
    ScrollbarSize: f32 = @import("std").mem.zeroes(f32),
    ScrollbarRounding: f32 = @import("std").mem.zeroes(f32),
    ScrollbarPadding: f32 = @import("std").mem.zeroes(f32),
    GrabMinSize: f32 = @import("std").mem.zeroes(f32),
    GrabRounding: f32 = @import("std").mem.zeroes(f32),
    LogSliderDeadzone: f32 = @import("std").mem.zeroes(f32),
    ImageBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabRounding: f32 = @import("std").mem.zeroes(f32),
    TabBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabMinWidthBase: f32 = @import("std").mem.zeroes(f32),
    TabMinWidthShrink: f32 = @import("std").mem.zeroes(f32),
    TabCloseButtonMinWidthSelected: f32 = @import("std").mem.zeroes(f32),
    TabCloseButtonMinWidthUnselected: f32 = @import("std").mem.zeroes(f32),
    TabBarBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabBarOverlineSize: f32 = @import("std").mem.zeroes(f32),
    TableAngledHeadersAngle: f32 = @import("std").mem.zeroes(f32),
    TableAngledHeadersTextAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TreeLinesFlags: ImGuiTreeNodeFlags = @import("std").mem.zeroes(ImGuiTreeNodeFlags),
    TreeLinesSize: f32 = @import("std").mem.zeroes(f32),
    TreeLinesRounding: f32 = @import("std").mem.zeroes(f32),
    DragDropTargetRounding: f32 = @import("std").mem.zeroes(f32),
    DragDropTargetBorderSize: f32 = @import("std").mem.zeroes(f32),
    DragDropTargetPadding: f32 = @import("std").mem.zeroes(f32),
    ColorButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ButtonTextAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    SelectableTextAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    SeparatorTextBorderSize: f32 = @import("std").mem.zeroes(f32),
    SeparatorTextAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    SeparatorTextPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DisplayWindowPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DisplaySafeAreaPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DockingNodeHasCloseButton: bool = @import("std").mem.zeroes(bool),
    DockingSeparatorSize: f32 = @import("std").mem.zeroes(f32),
    MouseCursorScale: f32 = @import("std").mem.zeroes(f32),
    AntiAliasedLines: bool = @import("std").mem.zeroes(bool),
    AntiAliasedLinesUseTex: bool = @import("std").mem.zeroes(bool),
    AntiAliasedFill: bool = @import("std").mem.zeroes(bool),
    CurveTessellationTol: f32 = @import("std").mem.zeroes(f32),
    CircleTessellationMaxError: f32 = @import("std").mem.zeroes(f32),
    Colors: [62]ImVec4_c = @import("std").mem.zeroes([62]ImVec4_c),
    HoverStationaryDelay: f32 = @import("std").mem.zeroes(f32),
    HoverDelayShort: f32 = @import("std").mem.zeroes(f32),
    HoverDelayNormal: f32 = @import("std").mem.zeroes(f32),
    HoverFlagsForTooltipMouse: ImGuiHoveredFlags = @import("std").mem.zeroes(ImGuiHoveredFlags),
    HoverFlagsForTooltipNav: ImGuiHoveredFlags = @import("std").mem.zeroes(ImGuiHoveredFlags),
    _MainScale: f32 = @import("std").mem.zeroes(f32),
    _NextFrameFontSizeBase: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiStyle = struct_ImGuiStyle;
pub const struct_ImVector_ImFontAtlasPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImFontAtlas = @import("std").mem.zeroes([*c][*c]ImFontAtlas),
};
pub const ImVector_ImFontAtlasPtr = struct_ImVector_ImFontAtlasPtr;
pub const struct_ImGuiInputEventMousePos = extern struct {
    PosX: f32 = @import("std").mem.zeroes(f32),
    PosY: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMousePos = struct_ImGuiInputEventMousePos;
pub const struct_ImGuiInputEventMouseWheel = extern struct {
    WheelX: f32 = @import("std").mem.zeroes(f32),
    WheelY: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMouseWheel = struct_ImGuiInputEventMouseWheel;
pub const struct_ImGuiInputEventMouseButton = extern struct {
    Button: c_int = @import("std").mem.zeroes(c_int),
    Down: bool = @import("std").mem.zeroes(bool),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMouseButton = struct_ImGuiInputEventMouseButton;
pub const struct_ImGuiInputEventMouseViewport = extern struct {
    HoveredViewportID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiInputEventMouseViewport = struct_ImGuiInputEventMouseViewport;
pub const struct_ImGuiInputEventKey = extern struct {
    Key: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    Down: bool = @import("std").mem.zeroes(bool),
    AnalogValue: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiInputEventKey = struct_ImGuiInputEventKey;
pub const struct_ImGuiInputEventText = extern struct {
    Char: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ImGuiInputEventText = struct_ImGuiInputEventText;
pub const struct_ImGuiInputEventAppFocused = extern struct {
    Focused: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiInputEventAppFocused = struct_ImGuiInputEventAppFocused;
const union_unnamed_2 = extern union {
    MousePos: ImGuiInputEventMousePos,
    MouseWheel: ImGuiInputEventMouseWheel,
    MouseButton: ImGuiInputEventMouseButton,
    MouseViewport: ImGuiInputEventMouseViewport,
    Key: ImGuiInputEventKey,
    Text: ImGuiInputEventText,
    AppFocused: ImGuiInputEventAppFocused,
};
pub const struct_ImGuiInputEvent = extern struct {
    Type: ImGuiInputEventType = @import("std").mem.zeroes(ImGuiInputEventType),
    Source: ImGuiInputSource = @import("std").mem.zeroes(ImGuiInputSource),
    EventId: ImU32 = @import("std").mem.zeroes(ImU32),
    unnamed_0: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
    AddedByTestEngine: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiInputEvent = struct_ImGuiInputEvent;
pub const struct_ImVector_ImGuiInputEvent = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiInputEvent = @import("std").mem.zeroes([*c]ImGuiInputEvent),
};
pub const ImVector_ImGuiInputEvent = struct_ImVector_ImGuiInputEvent;
pub const ImGuiWindowFlags = c_int;
pub const ImGuiChildFlags = c_int;
pub const ImGuiTabItemFlags = c_int;
pub const ImGuiDockNodeFlags = c_int;
pub const struct_ImGuiWindowClass = extern struct {
    ClassId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ParentViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    FocusRouteParentWindowId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ViewportFlagsOverrideSet: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    ViewportFlagsOverrideClear: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    TabItemFlagsOverrideSet: ImGuiTabItemFlags = @import("std").mem.zeroes(ImGuiTabItemFlags),
    DockNodeFlagsOverrideSet: ImGuiDockNodeFlags = @import("std").mem.zeroes(ImGuiDockNodeFlags),
    DockingAlwaysTabBar: bool = @import("std").mem.zeroes(bool),
    DockingAllowUnclassed: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiWindowClass = struct_ImGuiWindowClass;
pub const struct_ImDrawDataBuilder = extern struct {
    Layers: [2][*c]ImVector_ImDrawListPtr = @import("std").mem.zeroes([2][*c]ImVector_ImDrawListPtr),
    LayerData1: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
};
pub const ImDrawDataBuilder = struct_ImDrawDataBuilder;
pub const struct_ImGuiViewportP = extern struct {
    _ImGuiViewport: ImGuiViewport = @import("std").mem.zeroes(ImGuiViewport),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    Idx: c_int = @import("std").mem.zeroes(c_int),
    LastFrameActive: c_int = @import("std").mem.zeroes(c_int),
    LastFocusedStampCount: c_int = @import("std").mem.zeroes(c_int),
    LastNameHash: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    LastSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Alpha: f32 = @import("std").mem.zeroes(f32),
    LastAlpha: f32 = @import("std").mem.zeroes(f32),
    LastFocusedHadNavWindow: bool = @import("std").mem.zeroes(bool),
    PlatformMonitor: c_short = @import("std").mem.zeroes(c_short),
    BgFgDrawListsLastFrame: [2]c_int = @import("std").mem.zeroes([2]c_int),
    BgFgDrawLists: [2][*c]ImDrawList = @import("std").mem.zeroes([2][*c]ImDrawList),
    DrawDataP: ImDrawData = @import("std").mem.zeroes(ImDrawData),
    DrawDataBuilder: ImDrawDataBuilder = @import("std").mem.zeroes(ImDrawDataBuilder),
    LastPlatformPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    LastPlatformSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    LastRendererSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkInsetMin: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkInsetMax: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BuildWorkInsetMin: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BuildWorkInsetMax: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
};
pub const ImGuiViewportP = struct_ImGuiViewportP;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:3387:29: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiWindow = opaque {};
pub const ImGuiWindow = struct_ImGuiWindow;
pub const struct_ImVector_ImGuiWindowPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]?*ImGuiWindow = @import("std").mem.zeroes([*c]?*ImGuiWindow),
};
pub const ImVector_ImGuiWindowPtr = struct_ImVector_ImGuiWindowPtr;
pub const ImGuiItemFlags = c_int;
pub const ImGuiItemStatusFlags = c_int;
pub const struct_ImRect_c = extern struct {
    Min: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Max: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
};
pub const ImRect_c = struct_ImRect_c;
pub const struct_ImGuiLastItemData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    StatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    Rect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    NavRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    DisplayRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    ClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    Shortcut: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
};
pub const ImGuiLastItemData = struct_ImGuiLastItemData;
pub const struct_ImGuiErrorRecoveryState = extern struct {
    SizeOfWindowStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfIDStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfTreeStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfColorStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfStyleVarStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfFontStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfFocusScopeStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfGroupStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfItemFlagsStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfBeginPopupStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfDisabledStack: c_short = @import("std").mem.zeroes(c_short),
};
pub const ImGuiErrorRecoveryState = struct_ImGuiErrorRecoveryState;
pub const struct_ImGuiWindowStackData = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ParentLastItemDataBackup: ImGuiLastItemData = @import("std").mem.zeroes(ImGuiLastItemData),
    StackSizesInBegin: ImGuiErrorRecoveryState = @import("std").mem.zeroes(ImGuiErrorRecoveryState),
    DisabledOverrideReenable: bool = @import("std").mem.zeroes(bool),
    DisabledOverrideReenableAlphaBackup: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiWindowStackData = struct_ImGuiWindowStackData;
pub const struct_ImVector_ImGuiWindowStackData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiWindowStackData = @import("std").mem.zeroes([*c]ImGuiWindowStackData),
};
pub const ImVector_ImGuiWindowStackData = struct_ImVector_ImGuiWindowStackData;
pub const struct_ImGuiDeactivatedItemData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ElapseFrame: c_int = @import("std").mem.zeroes(c_int),
    HasBeenEditedBefore: bool = @import("std").mem.zeroes(bool),
    IsAlive: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiDeactivatedItemData = struct_ImGuiDeactivatedItemData;
pub const struct_ImGuiDataTypeStorage = extern struct {
    Data: [8]ImU8 = @import("std").mem.zeroes([8]ImU8),
};
pub const ImGuiDataTypeStorage = struct_ImGuiDataTypeStorage;
pub const struct_ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN = extern struct {
    Storage: [5]ImU32 = @import("std").mem.zeroes([5]ImU32),
};
pub const ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN = struct_ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
pub const ImBitArrayForNamedKeys = ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
pub const struct_ImGuiKeyOwnerData = extern struct {
    OwnerCurr: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    OwnerNext: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LockThisFrame: bool = @import("std").mem.zeroes(bool),
    LockUntilRelease: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiKeyOwnerData = struct_ImGuiKeyOwnerData;
pub const ImS16 = c_short;
pub const ImGuiKeyRoutingIndex = ImS16;
pub const struct_ImGuiKeyRoutingData = extern struct {
    NextEntryIndex: ImGuiKeyRoutingIndex = @import("std").mem.zeroes(ImGuiKeyRoutingIndex),
    Mods: ImU16 = @import("std").mem.zeroes(ImU16),
    RoutingCurrScore: ImU16 = @import("std").mem.zeroes(ImU16),
    RoutingNextScore: ImU16 = @import("std").mem.zeroes(ImU16),
    RoutingCurr: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    RoutingNext: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiKeyRoutingData = struct_ImGuiKeyRoutingData;
pub const struct_ImVector_ImGuiKeyRoutingData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiKeyRoutingData = @import("std").mem.zeroes([*c]ImGuiKeyRoutingData),
};
pub const ImVector_ImGuiKeyRoutingData = struct_ImVector_ImGuiKeyRoutingData;
pub const struct_ImGuiKeyRoutingTable = extern struct {
    Index: [155]ImGuiKeyRoutingIndex = @import("std").mem.zeroes([155]ImGuiKeyRoutingIndex),
    Entries: ImVector_ImGuiKeyRoutingData = @import("std").mem.zeroes(ImVector_ImGuiKeyRoutingData),
    EntriesNext: ImVector_ImGuiKeyRoutingData = @import("std").mem.zeroes(ImVector_ImGuiKeyRoutingData),
};
pub const ImGuiKeyRoutingTable = struct_ImGuiKeyRoutingTable;
pub const ImGuiNextItemDataFlags = c_int;
pub const ImS64 = c_longlong;
pub const ImGuiSelectionUserData = ImS64;
pub const ImGuiInputFlags = c_int;
pub const struct_ImGuiNextItemData = extern struct {
    HasFlags: ImGuiNextItemDataFlags = @import("std").mem.zeroes(ImGuiNextItemDataFlags),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SelectionUserData: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    Width: f32 = @import("std").mem.zeroes(f32),
    Shortcut: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    ShortcutFlags: ImGuiInputFlags = @import("std").mem.zeroes(ImGuiInputFlags),
    OpenVal: bool = @import("std").mem.zeroes(bool),
    OpenCond: ImU8 = @import("std").mem.zeroes(ImU8),
    RefVal: ImGuiDataTypeStorage = @import("std").mem.zeroes(ImGuiDataTypeStorage),
    StorageId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiNextItemData = struct_ImGuiNextItemData;
pub const ImGuiNextWindowDataFlags = c_int;
pub const ImGuiCond = c_int;
pub const struct_ImGuiSizeCallbackData = extern struct {
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Pos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CurrentSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DesiredSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
};
pub const ImGuiSizeCallbackData = struct_ImGuiSizeCallbackData;
pub const ImGuiSizeCallback = ?*const fn ([*c]ImGuiSizeCallbackData) callconv(.c) void;
pub const ImGuiWindowRefreshFlags = c_int;
pub const struct_ImGuiNextWindowData = extern struct {
    HasFlags: ImGuiNextWindowDataFlags = @import("std").mem.zeroes(ImGuiNextWindowDataFlags),
    PosCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    SizeCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    CollapsedCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    DockCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    PosVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    PosPivotVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    SizeVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    ContentSizeVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    ScrollVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WindowFlags: ImGuiWindowFlags = @import("std").mem.zeroes(ImGuiWindowFlags),
    ChildFlags: ImGuiChildFlags = @import("std").mem.zeroes(ImGuiChildFlags),
    PosUndock: bool = @import("std").mem.zeroes(bool),
    CollapsedVal: bool = @import("std").mem.zeroes(bool),
    SizeConstraintRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    SizeCallback: ImGuiSizeCallback = @import("std").mem.zeroes(ImGuiSizeCallback),
    SizeCallbackUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BgAlphaVal: f32 = @import("std").mem.zeroes(f32),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    WindowClass: ImGuiWindowClass = @import("std").mem.zeroes(ImGuiWindowClass),
    MenuBarOffsetMinVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    RefreshFlagsVal: ImGuiWindowRefreshFlags = @import("std").mem.zeroes(ImGuiWindowRefreshFlags),
};
pub const ImGuiNextWindowData = struct_ImGuiNextWindowData;
pub const ImGuiCol = c_int;
pub const struct_ImGuiColorMod = extern struct {
    Col: ImGuiCol = @import("std").mem.zeroes(ImGuiCol),
    BackupValue: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
};
pub const ImGuiColorMod = struct_ImGuiColorMod;
pub const struct_ImVector_ImGuiColorMod = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiColorMod = @import("std").mem.zeroes([*c]ImGuiColorMod),
};
pub const ImVector_ImGuiColorMod = struct_ImVector_ImGuiColorMod;
pub const ImGuiStyleVar = c_int;
const union_unnamed_3 = extern union {
    BackupInt: [2]c_int,
    BackupFloat: [2]f32,
};
pub const struct_ImGuiStyleMod = extern struct {
    VarIdx: ImGuiStyleVar = @import("std").mem.zeroes(ImGuiStyleVar),
    unnamed_0: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
};
pub const ImGuiStyleMod = struct_ImGuiStyleMod;
pub const struct_ImVector_ImGuiStyleMod = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiStyleMod = @import("std").mem.zeroes([*c]ImGuiStyleMod),
};
pub const ImVector_ImGuiStyleMod = struct_ImVector_ImGuiStyleMod;
pub const struct_ImFontStackData = extern struct {
    Font: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    FontSizeBeforeScaling: f32 = @import("std").mem.zeroes(f32),
    FontSizeAfterScaling: f32 = @import("std").mem.zeroes(f32),
};
pub const ImFontStackData = struct_ImFontStackData;
pub const struct_ImVector_ImFontStackData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImFontStackData = @import("std").mem.zeroes([*c]ImFontStackData),
};
pub const ImVector_ImFontStackData = struct_ImVector_ImFontStackData;
pub const struct_ImGuiFocusScopeData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    WindowID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiFocusScopeData = struct_ImGuiFocusScopeData;
pub const struct_ImVector_ImGuiFocusScopeData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiFocusScopeData = @import("std").mem.zeroes([*c]ImGuiFocusScopeData),
};
pub const ImVector_ImGuiFocusScopeData = struct_ImVector_ImGuiFocusScopeData;
pub const struct_ImVector_ImGuiItemFlags = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiItemFlags = @import("std").mem.zeroes([*c]ImGuiItemFlags),
};
pub const ImVector_ImGuiItemFlags = struct_ImVector_ImGuiItemFlags;
pub const struct_ImVec1 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec1 = struct_ImVec1;
pub const struct_ImGuiGroupData = extern struct {
    WindowID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    BackupCursorPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorPosPrevLine: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupIndent: ImVec1 = @import("std").mem.zeroes(ImVec1),
    BackupGroupOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    BackupCurrLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCurrLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    BackupActiveIdIsAlive: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    BackupActiveIdHasBeenEditedThisFrame: bool = @import("std").mem.zeroes(bool),
    BackupDeactivatedIdIsAlive: bool = @import("std").mem.zeroes(bool),
    BackupHoveredIdIsAlive: bool = @import("std").mem.zeroes(bool),
    BackupIsSameLine: bool = @import("std").mem.zeroes(bool),
    EmitItem: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiGroupData = struct_ImGuiGroupData;
pub const struct_ImVector_ImGuiGroupData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiGroupData = @import("std").mem.zeroes([*c]ImGuiGroupData),
};
pub const ImVector_ImGuiGroupData = struct_ImVector_ImGuiGroupData;
pub const struct_ImGuiPopupData = extern struct {
    PopupId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    RestoreNavWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ParentNavLayer: c_int = @import("std").mem.zeroes(c_int),
    OpenFrameCount: c_int = @import("std").mem.zeroes(c_int),
    OpenParentId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    OpenPopupPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    OpenMousePos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
};
pub const ImGuiPopupData = struct_ImGuiPopupData;
pub const struct_ImVector_ImGuiPopupData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPopupData = @import("std").mem.zeroes([*c]ImGuiPopupData),
};
pub const ImVector_ImGuiPopupData = struct_ImVector_ImGuiPopupData;
pub const ImGuiTableColumnIdx = ImS16;
pub const struct_ImGuiTreeNodeStackData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TreeFlags: ImGuiTreeNodeFlags = @import("std").mem.zeroes(ImGuiTreeNodeFlags),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    NavRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    DrawLinesX1: f32 = @import("std").mem.zeroes(f32),
    DrawLinesToNodesY2: f32 = @import("std").mem.zeroes(f32),
    DrawLinesTableColumn: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
};
pub const ImGuiTreeNodeStackData = struct_ImGuiTreeNodeStackData;
pub const struct_ImVector_ImGuiTreeNodeStackData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTreeNodeStackData = @import("std").mem.zeroes([*c]ImGuiTreeNodeStackData),
};
pub const ImVector_ImGuiTreeNodeStackData = struct_ImVector_ImGuiTreeNodeStackData;
pub const struct_ImVector_ImGuiViewportPPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImGuiViewportP = @import("std").mem.zeroes([*c][*c]ImGuiViewportP),
};
pub const ImVector_ImGuiViewportPPtr = struct_ImVector_ImGuiViewportPPtr;
pub const ImGuiActivateFlags = c_int;
pub const struct_ImGuiNavItemData = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    RectRel: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    DistBox: f32 = @import("std").mem.zeroes(f32),
    DistCenter: f32 = @import("std").mem.zeroes(f32),
    DistAxial: f32 = @import("std").mem.zeroes(f32),
    SelectionUserData: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiNavItemData = struct_ImGuiNavItemData;
pub const ImGuiNavMoveFlags = c_int;
pub const ImGuiScrollFlags = c_int;
pub const ImGuiDragDropFlags = c_int;
pub const struct_ImGuiPayload = extern struct {
    Data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    DataSize: c_int = @import("std").mem.zeroes(c_int),
    SourceId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SourceParentId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DataFrameCount: c_int = @import("std").mem.zeroes(c_int),
    DataType: [33]u8 = @import("std").mem.zeroes([33]u8),
    Preview: bool = @import("std").mem.zeroes(bool),
    Delivery: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiPayload = struct_ImGuiPayload;
pub const ImGuiListClipperFlags = c_int;
pub const struct_ImGuiListClipper = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    DisplayStart: c_int = @import("std").mem.zeroes(c_int),
    DisplayEnd: c_int = @import("std").mem.zeroes(c_int),
    ItemsCount: c_int = @import("std").mem.zeroes(c_int),
    ItemsHeight: f32 = @import("std").mem.zeroes(f32),
    StartPosY: f64 = @import("std").mem.zeroes(f64),
    StartSeekOffsetY: f64 = @import("std").mem.zeroes(f64),
    TempData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Flags: ImGuiListClipperFlags = @import("std").mem.zeroes(ImGuiListClipperFlags),
};
pub const ImGuiListClipper = struct_ImGuiListClipper;
pub const struct_ImGuiListClipperRange = extern struct {
    Min: c_int = @import("std").mem.zeroes(c_int),
    Max: c_int = @import("std").mem.zeroes(c_int),
    PosToIndexConvert: bool = @import("std").mem.zeroes(bool),
    PosToIndexOffsetMin: ImS8 = @import("std").mem.zeroes(ImS8),
    PosToIndexOffsetMax: ImS8 = @import("std").mem.zeroes(ImS8),
};
pub const ImGuiListClipperRange = struct_ImGuiListClipperRange;
pub const struct_ImVector_ImGuiListClipperRange = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiListClipperRange = @import("std").mem.zeroes([*c]ImGuiListClipperRange),
};
pub const ImVector_ImGuiListClipperRange = struct_ImVector_ImGuiListClipperRange;
pub const struct_ImGuiListClipperData = extern struct {
    ListClipper: [*c]ImGuiListClipper = @import("std").mem.zeroes([*c]ImGuiListClipper),
    LossynessOffset: f32 = @import("std").mem.zeroes(f32),
    StepNo: c_int = @import("std").mem.zeroes(c_int),
    ItemsFrozen: c_int = @import("std").mem.zeroes(c_int),
    Ranges: ImVector_ImGuiListClipperRange = @import("std").mem.zeroes(ImVector_ImGuiListClipperRange),
};
pub const ImGuiListClipperData = struct_ImGuiListClipperData;
pub const struct_ImVector_ImGuiListClipperData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiListClipperData = @import("std").mem.zeroes([*c]ImGuiListClipperData),
};
pub const ImVector_ImGuiListClipperData = struct_ImVector_ImGuiListClipperData;
pub const ImGuiTableFlags = c_int;
pub const struct_ImGuiTableHeaderData = extern struct {
    Index: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    TextColor: ImU32 = @import("std").mem.zeroes(ImU32),
    BgColor0: ImU32 = @import("std").mem.zeroes(ImU32),
    BgColor1: ImU32 = @import("std").mem.zeroes(ImU32),
};
pub const ImGuiTableHeaderData = struct_ImGuiTableHeaderData;
pub const struct_ImVector_ImGuiTableHeaderData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableHeaderData = @import("std").mem.zeroes([*c]ImGuiTableHeaderData),
};
pub const ImVector_ImGuiTableHeaderData = struct_ImVector_ImGuiTableHeaderData;
pub const ImDrawChannel = struct_ImDrawChannel;
pub const struct_ImVector_ImDrawChannel = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawChannel = @import("std").mem.zeroes([*c]ImDrawChannel),
};
pub const ImVector_ImDrawChannel = struct_ImVector_ImDrawChannel;
pub const struct_ImDrawListSplitter = extern struct {
    _Current: c_int = @import("std").mem.zeroes(c_int),
    _Count: c_int = @import("std").mem.zeroes(c_int),
    _Channels: ImVector_ImDrawChannel = @import("std").mem.zeroes(ImVector_ImDrawChannel),
};
pub const ImDrawListSplitter = struct_ImDrawListSplitter;
pub const struct_ImGuiTableTempData = extern struct {
    WindowID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TableIndex: c_int = @import("std").mem.zeroes(c_int),
    LastTimeActive: f32 = @import("std").mem.zeroes(f32),
    AngledHeadersExtraWidth: f32 = @import("std").mem.zeroes(f32),
    AngledHeadersRequests: ImVector_ImGuiTableHeaderData = @import("std").mem.zeroes(ImVector_ImGuiTableHeaderData),
    UserOuterSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DrawSplitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    HostBackupWorkRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    HostBackupParentWorkRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    HostBackupPrevLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    HostBackupCurrLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    HostBackupCursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    HostBackupColumnsOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    HostBackupItemWidth: f32 = @import("std").mem.zeroes(f32),
    HostBackupItemWidthStackSize: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTableTempData = struct_ImGuiTableTempData;
pub const ImGuiTableColumnFlags = c_int;
pub const ImGuiTableDrawChannelIdx = ImU16;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:3552:10: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTableColumn = opaque {};
pub const ImGuiTableColumn = struct_ImGuiTableColumn;
pub const struct_ImSpan_ImGuiTableColumn = extern struct {
    Data: ?*ImGuiTableColumn = @import("std").mem.zeroes(?*ImGuiTableColumn),
    DataEnd: ?*ImGuiTableColumn = @import("std").mem.zeroes(?*ImGuiTableColumn),
};
pub const ImSpan_ImGuiTableColumn = struct_ImSpan_ImGuiTableColumn;
pub const struct_ImSpan_ImGuiTableColumnIdx = extern struct {
    Data: [*c]ImGuiTableColumnIdx = @import("std").mem.zeroes([*c]ImGuiTableColumnIdx),
    DataEnd: [*c]ImGuiTableColumnIdx = @import("std").mem.zeroes([*c]ImGuiTableColumnIdx),
};
pub const ImSpan_ImGuiTableColumnIdx = struct_ImSpan_ImGuiTableColumnIdx;
pub const struct_ImGuiTableCellData = extern struct {
    BgColor: ImU32 = @import("std").mem.zeroes(ImU32),
    Column: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
};
pub const ImGuiTableCellData = struct_ImGuiTableCellData;
pub const struct_ImSpan_ImGuiTableCellData = extern struct {
    Data: [*c]ImGuiTableCellData = @import("std").mem.zeroes([*c]ImGuiTableCellData),
    DataEnd: [*c]ImGuiTableCellData = @import("std").mem.zeroes([*c]ImGuiTableCellData),
};
pub const ImSpan_ImGuiTableCellData = struct_ImSpan_ImGuiTableCellData;
pub const ImBitArrayPtr = [*c]ImU32;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:3615:24: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTable = opaque {};
pub const ImGuiTable = struct_ImGuiTable;
pub const struct_ImVector_ImGuiTableTempData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableTempData = @import("std").mem.zeroes([*c]ImGuiTableTempData),
};
pub const ImVector_ImGuiTableTempData = struct_ImVector_ImGuiTableTempData;
pub const struct_ImVector_ImGuiTable = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiTable = @import("std").mem.zeroes(?*ImGuiTable),
};
pub const ImVector_ImGuiTable = struct_ImVector_ImGuiTable;
pub const ImPoolIdx = c_int;
pub const struct_ImPool_ImGuiTable = extern struct {
    Buf: ImVector_ImGuiTable = @import("std").mem.zeroes(ImVector_ImGuiTable),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiTable = struct_ImPool_ImGuiTable;
pub const ImS32 = c_int;
pub const struct_ImGuiTabItem = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiTabItemFlags = @import("std").mem.zeroes(ImGuiTabItemFlags),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    LastFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    LastFrameSelected: c_int = @import("std").mem.zeroes(c_int),
    Offset: f32 = @import("std").mem.zeroes(f32),
    Width: f32 = @import("std").mem.zeroes(f32),
    ContentWidth: f32 = @import("std").mem.zeroes(f32),
    RequestedWidth: f32 = @import("std").mem.zeroes(f32),
    NameOffset: ImS32 = @import("std").mem.zeroes(ImS32),
    BeginOrder: ImS16 = @import("std").mem.zeroes(ImS16),
    IndexDuringLayout: ImS16 = @import("std").mem.zeroes(ImS16),
    WantClose: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTabItem = struct_ImGuiTabItem;
pub const struct_ImVector_ImGuiTabItem = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTabItem = @import("std").mem.zeroes([*c]ImGuiTabItem),
};
pub const ImVector_ImGuiTabItem = struct_ImVector_ImGuiTabItem;
pub const ImGuiTabBarFlags = c_int;
pub const struct_ImVector_char = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const ImVector_char = struct_ImVector_char;
pub const struct_ImGuiTextBuffer = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImGuiTextBuffer = struct_ImGuiTextBuffer;
pub const struct_ImGuiTabBar = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    Tabs: ImVector_ImGuiTabItem = @import("std").mem.zeroes(ImVector_ImGuiTabItem),
    Flags: ImGuiTabBarFlags = @import("std").mem.zeroes(ImGuiTabBarFlags),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SelectedTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NextSelectedTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    VisibleTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    CurrFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    PrevFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    BarRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    BarRectPrevWidth: f32 = @import("std").mem.zeroes(f32),
    CurrTabsContentsHeight: f32 = @import("std").mem.zeroes(f32),
    PrevTabsContentsHeight: f32 = @import("std").mem.zeroes(f32),
    WidthAllTabs: f32 = @import("std").mem.zeroes(f32),
    WidthAllTabsIdeal: f32 = @import("std").mem.zeroes(f32),
    ScrollingAnim: f32 = @import("std").mem.zeroes(f32),
    ScrollingTarget: f32 = @import("std").mem.zeroes(f32),
    ScrollingTargetDistToVisibility: f32 = @import("std").mem.zeroes(f32),
    ScrollingSpeed: f32 = @import("std").mem.zeroes(f32),
    ScrollingRectMinX: f32 = @import("std").mem.zeroes(f32),
    ScrollingRectMaxX: f32 = @import("std").mem.zeroes(f32),
    SeparatorMinX: f32 = @import("std").mem.zeroes(f32),
    SeparatorMaxX: f32 = @import("std").mem.zeroes(f32),
    ReorderRequestTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ReorderRequestOffset: ImS16 = @import("std").mem.zeroes(ImS16),
    BeginCount: ImS8 = @import("std").mem.zeroes(ImS8),
    WantLayout: bool = @import("std").mem.zeroes(bool),
    VisibleTabWasSubmitted: bool = @import("std").mem.zeroes(bool),
    TabsAddedNew: bool = @import("std").mem.zeroes(bool),
    ScrollButtonEnabled: bool = @import("std").mem.zeroes(bool),
    TabsActiveCount: ImS16 = @import("std").mem.zeroes(ImS16),
    LastTabItemIdx: ImS16 = @import("std").mem.zeroes(ImS16),
    ItemSpacingY: f32 = @import("std").mem.zeroes(f32),
    FramePadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TabsNames: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
};
pub const ImGuiTabBar = struct_ImGuiTabBar;
pub const struct_ImVector_ImGuiTabBar = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTabBar = @import("std").mem.zeroes([*c]ImGuiTabBar),
};
pub const ImVector_ImGuiTabBar = struct_ImVector_ImGuiTabBar;
pub const struct_ImPool_ImGuiTabBar = extern struct {
    Buf: ImVector_ImGuiTabBar = @import("std").mem.zeroes(ImVector_ImGuiTabBar),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiTabBar = struct_ImPool_ImGuiTabBar;
pub const struct_ImGuiPtrOrIndex = extern struct {
    Ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Index: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiPtrOrIndex = struct_ImGuiPtrOrIndex;
pub const struct_ImVector_ImGuiPtrOrIndex = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPtrOrIndex = @import("std").mem.zeroes([*c]ImGuiPtrOrIndex),
};
pub const ImVector_ImGuiPtrOrIndex = struct_ImVector_ImGuiPtrOrIndex;
pub const struct_ImGuiShrinkWidthItem = extern struct {
    Index: c_int = @import("std").mem.zeroes(c_int),
    Width: f32 = @import("std").mem.zeroes(f32),
    InitialWidth: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiShrinkWidthItem = struct_ImGuiShrinkWidthItem;
pub const struct_ImVector_ImGuiShrinkWidthItem = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiShrinkWidthItem = @import("std").mem.zeroes([*c]ImGuiShrinkWidthItem),
};
pub const ImVector_ImGuiShrinkWidthItem = struct_ImVector_ImGuiShrinkWidthItem;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:2578:19: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiBoxSelectState = struct {};
pub const ImGuiBoxSelectState = struct_ImGuiBoxSelectState;
pub const struct_ImGuiSelectionRequest = extern struct {
    Type: ImGuiSelectionRequestType = @import("std").mem.zeroes(ImGuiSelectionRequestType),
    Selected: bool = @import("std").mem.zeroes(bool),
    RangeDirection: ImS8 = @import("std").mem.zeroes(ImS8),
    RangeFirstItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    RangeLastItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiSelectionRequest = struct_ImGuiSelectionRequest;
pub const struct_ImVector_ImGuiSelectionRequest = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiSelectionRequest = @import("std").mem.zeroes([*c]ImGuiSelectionRequest),
};
pub const ImVector_ImGuiSelectionRequest = struct_ImVector_ImGuiSelectionRequest;
pub const struct_ImGuiMultiSelectIO = extern struct {
    Requests: ImVector_ImGuiSelectionRequest = @import("std").mem.zeroes(ImVector_ImGuiSelectionRequest),
    RangeSrcItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdSelected: bool = @import("std").mem.zeroes(bool),
    RangeSrcReset: bool = @import("std").mem.zeroes(bool),
    ItemsCount: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiMultiSelectIO = struct_ImGuiMultiSelectIO;
pub const struct_ImGuiMultiSelectState = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastFrameActive: c_int = @import("std").mem.zeroes(c_int),
    LastSelectionSize: c_int = @import("std").mem.zeroes(c_int),
    RangeSelected: ImS8 = @import("std").mem.zeroes(ImS8),
    NavIdSelected: ImS8 = @import("std").mem.zeroes(ImS8),
    RangeSrcItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiMultiSelectState = struct_ImGuiMultiSelectState;
pub const ImGuiMultiSelectFlags = c_int;
pub const struct_ImGuiMultiSelectTempData = extern struct {
    IO: ImGuiMultiSelectIO = @import("std").mem.zeroes(ImGuiMultiSelectIO),
    Storage: [*c]ImGuiMultiSelectState = @import("std").mem.zeroes([*c]ImGuiMultiSelectState),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiMultiSelectFlags = @import("std").mem.zeroes(ImGuiMultiSelectFlags),
    ScopeRectMin: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    LastSubmittedItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    BoxSelectId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    KeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    LoopRequestSetAll: ImS8 = @import("std").mem.zeroes(ImS8),
    IsEndIO: bool = @import("std").mem.zeroes(bool),
    IsFocused: bool = @import("std").mem.zeroes(bool),
    IsKeyboardSetRange: bool = @import("std").mem.zeroes(bool),
    NavIdPassedBy: bool = @import("std").mem.zeroes(bool),
    RangeSrcPassedBy: bool = @import("std").mem.zeroes(bool),
    RangeDstPassedBy: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiMultiSelectTempData = struct_ImGuiMultiSelectTempData;
pub const struct_ImVector_ImGuiMultiSelectTempData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiMultiSelectTempData = @import("std").mem.zeroes([*c]ImGuiMultiSelectTempData),
};
pub const ImVector_ImGuiMultiSelectTempData = struct_ImVector_ImGuiMultiSelectTempData;
pub const struct_ImVector_ImGuiMultiSelectState = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiMultiSelectState = @import("std").mem.zeroes([*c]ImGuiMultiSelectState),
};
pub const ImVector_ImGuiMultiSelectState = struct_ImVector_ImGuiMultiSelectState;
pub const struct_ImPool_ImGuiMultiSelectState = extern struct {
    Buf: ImVector_ImGuiMultiSelectState = @import("std").mem.zeroes(ImVector_ImGuiMultiSelectState),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiMultiSelectState = struct_ImPool_ImGuiMultiSelectState;
pub const ImGuiMouseCursor = c_int;
pub const struct_STB_TexteditState = opaque {};
pub const STB_TexteditState = struct_STB_TexteditState;
pub const ImStbTexteditState = STB_TexteditState;
pub const ImGuiInputTextFlags = c_int;
pub const struct_ImGuiInputTextState = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    Stb: ?*ImStbTexteditState = @import("std").mem.zeroes(?*ImStbTexteditState),
    Flags: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TextLen: c_int = @import("std").mem.zeroes(c_int),
    TextSrc: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    TextA: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    TextToRevertTo: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    CallbackTextBackup: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    BufCapacity: c_int = @import("std").mem.zeroes(c_int),
    Scroll: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    LineCount: c_int = @import("std").mem.zeroes(c_int),
    WrapWidth: f32 = @import("std").mem.zeroes(f32),
    CursorAnim: f32 = @import("std").mem.zeroes(f32),
    CursorFollow: bool = @import("std").mem.zeroes(bool),
    CursorCenterY: bool = @import("std").mem.zeroes(bool),
    SelectedAllMouseLock: bool = @import("std").mem.zeroes(bool),
    Edited: bool = @import("std").mem.zeroes(bool),
    WantReloadUserBuf: bool = @import("std").mem.zeroes(bool),
    LastMoveDirectionLR: ImS8 = @import("std").mem.zeroes(ImS8),
    ReloadSelectionStart: c_int = @import("std").mem.zeroes(c_int),
    ReloadSelectionEnd: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiInputTextState = struct_ImGuiInputTextState;
pub const struct_ImVector_int = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
};
pub const ImVector_int = struct_ImVector_int;
pub const struct_ImGuiTextIndex = extern struct {
    Offsets: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    EndOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTextIndex = struct_ImGuiTextIndex;
pub const struct_ImGuiInputTextDeactivatedState = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TextA: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImGuiInputTextDeactivatedState = struct_ImGuiInputTextDeactivatedState;
pub const ImGuiColorEditFlags = c_int;
pub const ImGuiLayoutType = c_int;
pub const struct_ImGuiComboPreviewData = extern struct {
    PreviewRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    BackupCursorPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorPosPrevLine: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupPrevLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    BackupLayout: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
};
pub const ImGuiComboPreviewData = struct_ImGuiComboPreviewData;
pub const struct_ImVector_ImGuiID = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiID = @import("std").mem.zeroes([*c]ImGuiID),
};
pub const ImVector_ImGuiID = struct_ImVector_ImGuiID;
pub const ImGuiTypingSelectFlags = c_int;
pub const struct_ImGuiTypingSelectRequest = extern struct {
    Flags: ImGuiTypingSelectFlags = @import("std").mem.zeroes(ImGuiTypingSelectFlags),
    SearchBufferLen: c_int = @import("std").mem.zeroes(c_int),
    SearchBuffer: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    SelectRequest: bool = @import("std").mem.zeroes(bool),
    SingleCharMode: bool = @import("std").mem.zeroes(bool),
    SingleCharSize: ImS8 = @import("std").mem.zeroes(ImS8),
};
pub const ImGuiTypingSelectRequest = struct_ImGuiTypingSelectRequest;
pub const struct_ImGuiTypingSelectState = extern struct {
    Request: ImGuiTypingSelectRequest = @import("std").mem.zeroes(ImGuiTypingSelectRequest),
    SearchBuffer: [64]u8 = @import("std").mem.zeroes([64]u8),
    FocusScope: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastRequestFrame: c_int = @import("std").mem.zeroes(c_int),
    LastRequestTime: f32 = @import("std").mem.zeroes(f32),
    SingleCharModeLock: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTypingSelectState = struct_ImGuiTypingSelectState;
pub const struct_ImGuiDockRequest = opaque {};
pub const ImGuiDockRequest = struct_ImGuiDockRequest;
pub const struct_ImVector_ImGuiDockRequest = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiDockRequest = @import("std").mem.zeroes(?*ImGuiDockRequest),
};
pub const ImVector_ImGuiDockRequest = struct_ImVector_ImGuiDockRequest;
pub const struct_ImGuiDockNodeSettings = opaque {};
pub const ImGuiDockNodeSettings = struct_ImGuiDockNodeSettings;
pub const struct_ImVector_ImGuiDockNodeSettings = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiDockNodeSettings = @import("std").mem.zeroes(?*ImGuiDockNodeSettings),
};
pub const ImVector_ImGuiDockNodeSettings = struct_ImVector_ImGuiDockNodeSettings;
pub const struct_ImGuiDockContext = extern struct {
    Nodes: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    Requests: ImVector_ImGuiDockRequest = @import("std").mem.zeroes(ImVector_ImGuiDockRequest),
    NodesSettings: ImVector_ImGuiDockNodeSettings = @import("std").mem.zeroes(ImVector_ImGuiDockNodeSettings),
    WantFullRebuild: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiDockContext = struct_ImGuiDockContext;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:2681:24: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiDockNode = opaque {};
pub const ImGuiDockNode = struct_ImGuiDockNode;
pub const struct_ImGuiSettingsHandler = extern struct {
    TypeName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    TypeHash: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ClearAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    ReadInitFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    ReadOpenFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]const u8) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]const u8) callconv(.c) ?*anyopaque),
    ReadLineFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, ?*anyopaque, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, ?*anyopaque, [*c]const u8) callconv(.c) void),
    ApplyAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    WriteAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]ImGuiTextBuffer) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]ImGuiTextBuffer) callconv(.c) void),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiSettingsHandler = struct_ImGuiSettingsHandler;
pub const struct_ImVector_ImGuiSettingsHandler = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiSettingsHandler = @import("std").mem.zeroes([*c]ImGuiSettingsHandler),
};
pub const ImVector_ImGuiSettingsHandler = struct_ImVector_ImGuiSettingsHandler;
pub const struct_ImChunkStream_ImGuiWindowSettings = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImChunkStream_ImGuiWindowSettings = struct_ImChunkStream_ImGuiWindowSettings;
pub const struct_ImChunkStream_ImGuiTableSettings = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImChunkStream_ImGuiTableSettings = struct_ImChunkStream_ImGuiTableSettings;
pub const ImGuiContextHookCallback = ?*const fn (?*ImGuiContext, [*c]ImGuiContextHook) callconv(.c) void;
pub const struct_ImGuiContextHook = extern struct {
    HookId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Type: ImGuiContextHookType = @import("std").mem.zeroes(ImGuiContextHookType),
    Owner: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Callback: ImGuiContextHookCallback = @import("std").mem.zeroes(ImGuiContextHookCallback),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiContextHook = struct_ImGuiContextHook;
pub const struct_ImVector_ImGuiContextHook = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiContextHook = @import("std").mem.zeroes([*c]ImGuiContextHook),
};
pub const ImVector_ImGuiContextHook = struct_ImVector_ImGuiContextHook;
pub const ImGuiLogFlags = c_int;
pub const ImFileHandle = [*c]FILE;
pub const ImGuiErrorCallback = ?*const fn (?*ImGuiContext, ?*anyopaque, [*c]const u8) callconv(.c) void;
pub const ImGuiDebugLogFlags = c_int;
pub const struct_ImGuiMetricsConfig = extern struct {
    ShowDebugLog: bool = @import("std").mem.zeroes(bool),
    ShowIDStackTool: bool = @import("std").mem.zeroes(bool),
    ShowWindowsRects: bool = @import("std").mem.zeroes(bool),
    ShowWindowsBeginOrder: bool = @import("std").mem.zeroes(bool),
    ShowTablesRects: bool = @import("std").mem.zeroes(bool),
    ShowDrawCmdMesh: bool = @import("std").mem.zeroes(bool),
    ShowDrawCmdBoundingBoxes: bool = @import("std").mem.zeroes(bool),
    ShowTextEncodingViewer: bool = @import("std").mem.zeroes(bool),
    ShowTextureUsedRect: bool = @import("std").mem.zeroes(bool),
    ShowDockingNodes: bool = @import("std").mem.zeroes(bool),
    ShowWindowsRectsType: c_int = @import("std").mem.zeroes(c_int),
    ShowTablesRectsType: c_int = @import("std").mem.zeroes(c_int),
    HighlightMonitorIdx: c_int = @import("std").mem.zeroes(c_int),
    HighlightViewportID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ShowFontPreview: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiMetricsConfig = struct_ImGuiMetricsConfig;
pub const struct_ImGuiStackLevelInfo = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    QueryFrameCount: ImS8 = @import("std").mem.zeroes(ImS8),
    QuerySuccess: bool = @import("std").mem.zeroes(bool),
    DataType: ImS8 = @import("std").mem.zeroes(ImS8),
    DescOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiStackLevelInfo = struct_ImGuiStackLevelInfo;
pub const struct_ImVector_ImGuiStackLevelInfo = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiStackLevelInfo = @import("std").mem.zeroes([*c]ImGuiStackLevelInfo),
};
pub const ImVector_ImGuiStackLevelInfo = struct_ImVector_ImGuiStackLevelInfo;
pub const struct_ImGuiDebugItemPathQuery = extern struct {
    MainID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Active: bool = @import("std").mem.zeroes(bool),
    Complete: bool = @import("std").mem.zeroes(bool),
    Step: ImS8 = @import("std").mem.zeroes(ImS8),
    Results: ImVector_ImGuiStackLevelInfo = @import("std").mem.zeroes(ImVector_ImGuiStackLevelInfo),
    ResultsDescBuf: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    ResultPathBuf: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
};
pub const ImGuiDebugItemPathQuery = struct_ImGuiDebugItemPathQuery;
pub const struct_ImGuiIDStackTool = extern struct {
    OptHexEncodeNonAsciiChars: bool = @import("std").mem.zeroes(bool),
    OptCopyToClipboardOnCtrlC: bool = @import("std").mem.zeroes(bool),
    LastActiveFrame: c_int = @import("std").mem.zeroes(c_int),
    CopyToClipboardLastTime: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiIDStackTool = struct_ImGuiIDStackTool;
pub const struct_ImGuiDebugAllocEntry = extern struct {
    FrameCount: c_int = @import("std").mem.zeroes(c_int),
    AllocCount: ImS16 = @import("std").mem.zeroes(ImS16),
    FreeCount: ImS16 = @import("std").mem.zeroes(ImS16),
};
pub const ImGuiDebugAllocEntry = struct_ImGuiDebugAllocEntry;
pub const struct_ImGuiDebugAllocInfo = extern struct {
    TotalAllocCount: c_int = @import("std").mem.zeroes(c_int),
    TotalFreeCount: c_int = @import("std").mem.zeroes(c_int),
    LastEntriesIdx: ImS16 = @import("std").mem.zeroes(ImS16),
    LastEntriesBuf: [6]ImGuiDebugAllocEntry = @import("std").mem.zeroes([6]ImGuiDebugAllocEntry),
};
pub const ImGuiDebugAllocInfo = struct_ImGuiDebugAllocInfo;
pub const struct_ImGuiContext = extern struct {
    Initialized: bool = @import("std").mem.zeroes(bool),
    WithinFrameScope: bool = @import("std").mem.zeroes(bool),
    WithinFrameScopeWithImplicitWindow: bool = @import("std").mem.zeroes(bool),
    TestEngineHookItems: bool = @import("std").mem.zeroes(bool),
    FrameCount: c_int = @import("std").mem.zeroes(c_int),
    FrameCountEnded: c_int = @import("std").mem.zeroes(c_int),
    FrameCountPlatformEnded: c_int = @import("std").mem.zeroes(c_int),
    FrameCountRendered: c_int = @import("std").mem.zeroes(c_int),
    Time: f64 = @import("std").mem.zeroes(f64),
    ContextName: [16]u8 = @import("std").mem.zeroes([16]u8),
    IO: ImGuiIO = @import("std").mem.zeroes(ImGuiIO),
    PlatformIO: ImGuiPlatformIO = @import("std").mem.zeroes(ImGuiPlatformIO),
    Style: ImGuiStyle = @import("std").mem.zeroes(ImGuiStyle),
    ConfigFlagsCurrFrame: ImGuiConfigFlags = @import("std").mem.zeroes(ImGuiConfigFlags),
    ConfigFlagsLastFrame: ImGuiConfigFlags = @import("std").mem.zeroes(ImGuiConfigFlags),
    FontAtlases: ImVector_ImFontAtlasPtr = @import("std").mem.zeroes(ImVector_ImFontAtlasPtr),
    Font: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    FontBaked: ?*ImFontBaked = @import("std").mem.zeroes(?*ImFontBaked),
    FontSize: f32 = @import("std").mem.zeroes(f32),
    FontSizeBase: f32 = @import("std").mem.zeroes(f32),
    FontBakedScale: f32 = @import("std").mem.zeroes(f32),
    FontRasterizerDensity: f32 = @import("std").mem.zeroes(f32),
    CurrentDpiScale: f32 = @import("std").mem.zeroes(f32),
    DrawListSharedData: ImDrawListSharedData = @import("std").mem.zeroes(ImDrawListSharedData),
    WithinEndChildID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TestEngine: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    InputEventsQueue: ImVector_ImGuiInputEvent = @import("std").mem.zeroes(ImVector_ImGuiInputEvent),
    InputEventsTrail: ImVector_ImGuiInputEvent = @import("std").mem.zeroes(ImVector_ImGuiInputEvent),
    InputEventsNextMouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
    InputEventsNextEventId: ImU32 = @import("std").mem.zeroes(ImU32),
    Windows: ImVector_ImGuiWindowPtr = @import("std").mem.zeroes(ImVector_ImGuiWindowPtr),
    WindowsFocusOrder: ImVector_ImGuiWindowPtr = @import("std").mem.zeroes(ImVector_ImGuiWindowPtr),
    WindowsTempSortBuffer: ImVector_ImGuiWindowPtr = @import("std").mem.zeroes(ImVector_ImGuiWindowPtr),
    CurrentWindowStack: ImVector_ImGuiWindowStackData = @import("std").mem.zeroes(ImVector_ImGuiWindowStackData),
    WindowsById: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    WindowsActiveCount: c_int = @import("std").mem.zeroes(c_int),
    WindowsBorderHoverPadding: f32 = @import("std").mem.zeroes(f32),
    DebugBreakInWindow: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    CurrentWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    HoveredWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    HoveredWindowUnderMovingWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    HoveredWindowBeforeClear: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    MovingWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    WheelingWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    WheelingWindowRefMousePos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WheelingWindowStartFrame: c_int = @import("std").mem.zeroes(c_int),
    WheelingWindowScrolledFrame: c_int = @import("std").mem.zeroes(c_int),
    WheelingWindowReleaseTimer: f32 = @import("std").mem.zeroes(f32),
    WheelingWindowWheelRemainder: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WheelingAxisAvg: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DebugDrawIdConflictsId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DebugHookIdInfoId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    HoveredId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    HoveredIdPreviousFrame: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    HoveredIdPreviousFrameItemCount: c_int = @import("std").mem.zeroes(c_int),
    HoveredIdTimer: f32 = @import("std").mem.zeroes(f32),
    HoveredIdNotActiveTimer: f32 = @import("std").mem.zeroes(f32),
    HoveredIdAllowOverlap: bool = @import("std").mem.zeroes(bool),
    HoveredIdIsDisabled: bool = @import("std").mem.zeroes(bool),
    ItemUnclipByLog: bool = @import("std").mem.zeroes(bool),
    ActiveId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ActiveIdIsAlive: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ActiveIdTimer: f32 = @import("std").mem.zeroes(f32),
    ActiveIdIsJustActivated: bool = @import("std").mem.zeroes(bool),
    ActiveIdAllowOverlap: bool = @import("std").mem.zeroes(bool),
    ActiveIdNoClearOnFocusLoss: bool = @import("std").mem.zeroes(bool),
    ActiveIdHasBeenPressedBefore: bool = @import("std").mem.zeroes(bool),
    ActiveIdHasBeenEditedBefore: bool = @import("std").mem.zeroes(bool),
    ActiveIdHasBeenEditedThisFrame: bool = @import("std").mem.zeroes(bool),
    ActiveIdFromShortcut: bool = @import("std").mem.zeroes(bool),
    ActiveIdMouseButton: ImS8 = @import("std").mem.zeroes(ImS8),
    ActiveIdDisabledId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ActiveIdClickOffset: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    ActiveIdSource: ImGuiInputSource = @import("std").mem.zeroes(ImGuiInputSource),
    ActiveIdWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ActiveIdPreviousFrame: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DeactivatedItemData: ImGuiDeactivatedItemData = @import("std").mem.zeroes(ImGuiDeactivatedItemData),
    ActiveIdValueOnActivation: ImGuiDataTypeStorage = @import("std").mem.zeroes(ImGuiDataTypeStorage),
    LastActiveId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastActiveIdTimer: f32 = @import("std").mem.zeroes(f32),
    LastKeyModsChangeTime: f64 = @import("std").mem.zeroes(f64),
    LastKeyModsChangeFromNoneTime: f64 = @import("std").mem.zeroes(f64),
    LastKeyboardKeyPressTime: f64 = @import("std").mem.zeroes(f64),
    KeysMayBeCharInput: ImBitArrayForNamedKeys = @import("std").mem.zeroes(ImBitArrayForNamedKeys),
    KeysOwnerData: [155]ImGuiKeyOwnerData = @import("std").mem.zeroes([155]ImGuiKeyOwnerData),
    KeysRoutingTable: ImGuiKeyRoutingTable = @import("std").mem.zeroes(ImGuiKeyRoutingTable),
    ActiveIdUsingNavDirMask: ImU32 = @import("std").mem.zeroes(ImU32),
    ActiveIdUsingAllKeyboardKeys: bool = @import("std").mem.zeroes(bool),
    DebugBreakInShortcutRouting: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    CurrentFocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    CurrentItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    DebugLocateId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NextItemData: ImGuiNextItemData = @import("std").mem.zeroes(ImGuiNextItemData),
    LastItemData: ImGuiLastItemData = @import("std").mem.zeroes(ImGuiLastItemData),
    NextWindowData: ImGuiNextWindowData = @import("std").mem.zeroes(ImGuiNextWindowData),
    DebugShowGroupRects: bool = @import("std").mem.zeroes(bool),
    GcCompactAll: bool = @import("std").mem.zeroes(bool),
    DebugFlashStyleColorIdx: ImGuiCol = @import("std").mem.zeroes(ImGuiCol),
    ColorStack: ImVector_ImGuiColorMod = @import("std").mem.zeroes(ImVector_ImGuiColorMod),
    StyleVarStack: ImVector_ImGuiStyleMod = @import("std").mem.zeroes(ImVector_ImGuiStyleMod),
    FontStack: ImVector_ImFontStackData = @import("std").mem.zeroes(ImVector_ImFontStackData),
    FocusScopeStack: ImVector_ImGuiFocusScopeData = @import("std").mem.zeroes(ImVector_ImGuiFocusScopeData),
    ItemFlagsStack: ImVector_ImGuiItemFlags = @import("std").mem.zeroes(ImVector_ImGuiItemFlags),
    GroupStack: ImVector_ImGuiGroupData = @import("std").mem.zeroes(ImVector_ImGuiGroupData),
    OpenPopupStack: ImVector_ImGuiPopupData = @import("std").mem.zeroes(ImVector_ImGuiPopupData),
    BeginPopupStack: ImVector_ImGuiPopupData = @import("std").mem.zeroes(ImVector_ImGuiPopupData),
    TreeNodeStack: ImVector_ImGuiTreeNodeStackData = @import("std").mem.zeroes(ImVector_ImGuiTreeNodeStackData),
    Viewports: ImVector_ImGuiViewportPPtr = @import("std").mem.zeroes(ImVector_ImGuiViewportPPtr),
    CurrentViewport: [*c]ImGuiViewportP = @import("std").mem.zeroes([*c]ImGuiViewportP),
    MouseViewport: [*c]ImGuiViewportP = @import("std").mem.zeroes([*c]ImGuiViewportP),
    MouseLastHoveredViewport: [*c]ImGuiViewportP = @import("std").mem.zeroes([*c]ImGuiViewportP),
    PlatformLastFocusedViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    FallbackMonitor: ImGuiPlatformMonitor = @import("std").mem.zeroes(ImGuiPlatformMonitor),
    PlatformMonitorsFullWorkRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    ViewportCreatedCount: c_int = @import("std").mem.zeroes(c_int),
    PlatformWindowsCreatedCount: c_int = @import("std").mem.zeroes(c_int),
    ViewportFocusedStampCount: c_int = @import("std").mem.zeroes(c_int),
    NavCursorVisible: bool = @import("std").mem.zeroes(bool),
    NavHighlightItemUnderNav: bool = @import("std").mem.zeroes(bool),
    NavMousePosDirty: bool = @import("std").mem.zeroes(bool),
    NavIdIsAlive: bool = @import("std").mem.zeroes(bool),
    NavId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    NavFocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavLayer: ImGuiNavLayer = @import("std").mem.zeroes(ImGuiNavLayer),
    NavActivateId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavActivateDownId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavActivatePressedId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavActivateFlags: ImGuiActivateFlags = @import("std").mem.zeroes(ImGuiActivateFlags),
    NavFocusRoute: ImVector_ImGuiFocusScopeData = @import("std").mem.zeroes(ImVector_ImGuiFocusScopeData),
    NavHighlightActivatedId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavHighlightActivatedTimer: f32 = @import("std").mem.zeroes(f32),
    NavNextActivateId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavNextActivateFlags: ImGuiActivateFlags = @import("std").mem.zeroes(ImGuiActivateFlags),
    NavInputSource: ImGuiInputSource = @import("std").mem.zeroes(ImGuiInputSource),
    NavLastValidSelectionUserData: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavCursorHideFrames: ImS8 = @import("std").mem.zeroes(ImS8),
    NavAnyRequest: bool = @import("std").mem.zeroes(bool),
    NavInitRequest: bool = @import("std").mem.zeroes(bool),
    NavInitRequestFromMove: bool = @import("std").mem.zeroes(bool),
    NavInitResult: ImGuiNavItemData = @import("std").mem.zeroes(ImGuiNavItemData),
    NavMoveSubmitted: bool = @import("std").mem.zeroes(bool),
    NavMoveScoringItems: bool = @import("std").mem.zeroes(bool),
    NavMoveForwardToNextFrame: bool = @import("std").mem.zeroes(bool),
    NavMoveFlags: ImGuiNavMoveFlags = @import("std").mem.zeroes(ImGuiNavMoveFlags),
    NavMoveScrollFlags: ImGuiScrollFlags = @import("std").mem.zeroes(ImGuiScrollFlags),
    NavMoveKeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    NavMoveDir: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    NavMoveDirForDebug: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    NavMoveClipDir: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    NavScoringRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    NavScoringNoClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    NavScoringDebugCount: c_int = @import("std").mem.zeroes(c_int),
    NavTabbingDir: c_int = @import("std").mem.zeroes(c_int),
    NavTabbingCounter: c_int = @import("std").mem.zeroes(c_int),
    NavMoveResultLocal: ImGuiNavItemData = @import("std").mem.zeroes(ImGuiNavItemData),
    NavMoveResultLocalVisible: ImGuiNavItemData = @import("std").mem.zeroes(ImGuiNavItemData),
    NavMoveResultOther: ImGuiNavItemData = @import("std").mem.zeroes(ImGuiNavItemData),
    NavTabbingResultFirst: ImGuiNavItemData = @import("std").mem.zeroes(ImGuiNavItemData),
    NavJustMovedFromFocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavJustMovedToId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavJustMovedToFocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NavJustMovedToKeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    NavJustMovedToIsTabbing: bool = @import("std").mem.zeroes(bool),
    NavJustMovedToHasSelectionData: bool = @import("std").mem.zeroes(bool),
    ConfigNavWindowingWithGamepad: bool = @import("std").mem.zeroes(bool),
    ConfigNavWindowingKeyNext: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    ConfigNavWindowingKeyPrev: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    NavWindowingTarget: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    NavWindowingTargetAnim: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    NavWindowingListWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    NavWindowingTimer: f32 = @import("std").mem.zeroes(f32),
    NavWindowingHighlightAlpha: f32 = @import("std").mem.zeroes(f32),
    NavWindowingInputSource: ImGuiInputSource = @import("std").mem.zeroes(ImGuiInputSource),
    NavWindowingToggleLayer: bool = @import("std").mem.zeroes(bool),
    NavWindowingToggleKey: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    NavWindowingAccumDeltaPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    NavWindowingAccumDeltaSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DimBgRatio: f32 = @import("std").mem.zeroes(f32),
    DragDropActive: bool = @import("std").mem.zeroes(bool),
    DragDropWithinSource: bool = @import("std").mem.zeroes(bool),
    DragDropWithinTarget: bool = @import("std").mem.zeroes(bool),
    DragDropSourceFlags: ImGuiDragDropFlags = @import("std").mem.zeroes(ImGuiDragDropFlags),
    DragDropSourceFrameCount: c_int = @import("std").mem.zeroes(c_int),
    DragDropMouseButton: c_int = @import("std").mem.zeroes(c_int),
    DragDropPayload: ImGuiPayload = @import("std").mem.zeroes(ImGuiPayload),
    DragDropTargetRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    DragDropTargetClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    DragDropTargetId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DragDropTargetFullViewport: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DragDropAcceptFlagsCurr: ImGuiDragDropFlags = @import("std").mem.zeroes(ImGuiDragDropFlags),
    DragDropAcceptFlagsPrev: ImGuiDragDropFlags = @import("std").mem.zeroes(ImGuiDragDropFlags),
    DragDropAcceptIdCurrRectSurface: f32 = @import("std").mem.zeroes(f32),
    DragDropAcceptIdCurr: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DragDropAcceptIdPrev: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DragDropAcceptFrameCount: c_int = @import("std").mem.zeroes(c_int),
    DragDropHoldJustPressedId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DragDropPayloadBufHeap: ImVector_unsigned_char = @import("std").mem.zeroes(ImVector_unsigned_char),
    DragDropPayloadBufLocal: [16]u8 = @import("std").mem.zeroes([16]u8),
    ClipperTempDataStacked: c_int = @import("std").mem.zeroes(c_int),
    ClipperTempData: ImVector_ImGuiListClipperData = @import("std").mem.zeroes(ImVector_ImGuiListClipperData),
    CurrentTable: ?*ImGuiTable = @import("std").mem.zeroes(?*ImGuiTable),
    DebugBreakInTable: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TablesTempDataStacked: c_int = @import("std").mem.zeroes(c_int),
    TablesTempData: ImVector_ImGuiTableTempData = @import("std").mem.zeroes(ImVector_ImGuiTableTempData),
    Tables: ImPool_ImGuiTable = @import("std").mem.zeroes(ImPool_ImGuiTable),
    TablesLastTimeActive: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    DrawChannelsTempMergeBuffer: ImVector_ImDrawChannel = @import("std").mem.zeroes(ImVector_ImDrawChannel),
    CurrentTabBar: [*c]ImGuiTabBar = @import("std").mem.zeroes([*c]ImGuiTabBar),
    TabBars: ImPool_ImGuiTabBar = @import("std").mem.zeroes(ImPool_ImGuiTabBar),
    CurrentTabBarStack: ImVector_ImGuiPtrOrIndex = @import("std").mem.zeroes(ImVector_ImGuiPtrOrIndex),
    ShrinkWidthBuffer: ImVector_ImGuiShrinkWidthItem = @import("std").mem.zeroes(ImVector_ImGuiShrinkWidthItem),
    BoxSelectState: ImGuiBoxSelectState = @import("std").mem.zeroes(ImGuiBoxSelectState),
    CurrentMultiSelect: [*c]ImGuiMultiSelectTempData = @import("std").mem.zeroes([*c]ImGuiMultiSelectTempData),
    MultiSelectTempDataStacked: c_int = @import("std").mem.zeroes(c_int),
    MultiSelectTempData: ImVector_ImGuiMultiSelectTempData = @import("std").mem.zeroes(ImVector_ImGuiMultiSelectTempData),
    MultiSelectStorage: ImPool_ImGuiMultiSelectState = @import("std").mem.zeroes(ImPool_ImGuiMultiSelectState),
    HoverItemDelayId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    HoverItemDelayIdPreviousFrame: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    HoverItemDelayTimer: f32 = @import("std").mem.zeroes(f32),
    HoverItemDelayClearTimer: f32 = @import("std").mem.zeroes(f32),
    HoverItemUnlockedStationaryId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    HoverWindowUnlockedStationaryId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    MouseCursor: ImGuiMouseCursor = @import("std").mem.zeroes(ImGuiMouseCursor),
    MouseStationaryTimer: f32 = @import("std").mem.zeroes(f32),
    MouseLastValidPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    InputTextState: ImGuiInputTextState = @import("std").mem.zeroes(ImGuiInputTextState),
    InputTextLineIndex: ImGuiTextIndex = @import("std").mem.zeroes(ImGuiTextIndex),
    InputTextDeactivatedState: ImGuiInputTextDeactivatedState = @import("std").mem.zeroes(ImGuiInputTextDeactivatedState),
    InputTextPasswordFontBackupBaked: ImFontBaked = @import("std").mem.zeroes(ImFontBaked),
    InputTextPasswordFontBackupFlags: ImFontFlags = @import("std").mem.zeroes(ImFontFlags),
    TempInputId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DataTypeZeroValue: ImGuiDataTypeStorage = @import("std").mem.zeroes(ImGuiDataTypeStorage),
    BeginMenuDepth: c_int = @import("std").mem.zeroes(c_int),
    BeginComboDepth: c_int = @import("std").mem.zeroes(c_int),
    ColorEditOptions: ImGuiColorEditFlags = @import("std").mem.zeroes(ImGuiColorEditFlags),
    ColorEditCurrentID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ColorEditSavedID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ColorEditSavedHue: f32 = @import("std").mem.zeroes(f32),
    ColorEditSavedSat: f32 = @import("std").mem.zeroes(f32),
    ColorEditSavedColor: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorPickerRef: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    ComboPreviewData: ImGuiComboPreviewData = @import("std").mem.zeroes(ImGuiComboPreviewData),
    WindowResizeBorderExpectedRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    WindowResizeRelativeMode: bool = @import("std").mem.zeroes(bool),
    ScrollbarSeekMode: c_short = @import("std").mem.zeroes(c_short),
    ScrollbarClickDeltaToGrabCenter: f32 = @import("std").mem.zeroes(f32),
    SliderGrabClickOffset: f32 = @import("std").mem.zeroes(f32),
    SliderCurrentAccum: f32 = @import("std").mem.zeroes(f32),
    SliderCurrentAccumDirty: bool = @import("std").mem.zeroes(bool),
    DragCurrentAccumDirty: bool = @import("std").mem.zeroes(bool),
    DragCurrentAccum: f32 = @import("std").mem.zeroes(f32),
    DragSpeedDefaultRatio: f32 = @import("std").mem.zeroes(f32),
    DisabledAlphaBackup: f32 = @import("std").mem.zeroes(f32),
    DisabledStackSize: c_short = @import("std").mem.zeroes(c_short),
    TooltipOverrideCount: c_short = @import("std").mem.zeroes(c_short),
    TooltipPreviousWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ClipboardHandlerData: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    MenusIdSubmittedThisFrame: ImVector_ImGuiID = @import("std").mem.zeroes(ImVector_ImGuiID),
    TypingSelectState: ImGuiTypingSelectState = @import("std").mem.zeroes(ImGuiTypingSelectState),
    PlatformImeData: ImGuiPlatformImeData = @import("std").mem.zeroes(ImGuiPlatformImeData),
    PlatformImeDataPrev: ImGuiPlatformImeData = @import("std").mem.zeroes(ImGuiPlatformImeData),
    UserTextures: ImVector_ImTextureDataPtr = @import("std").mem.zeroes(ImVector_ImTextureDataPtr),
    DockContext: ImGuiDockContext = @import("std").mem.zeroes(ImGuiDockContext),
    DockNodeWindowMenuHandler: ?*const fn (?*ImGuiContext, ?*ImGuiDockNode, [*c]ImGuiTabBar) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, ?*ImGuiDockNode, [*c]ImGuiTabBar) callconv(.c) void),
    SettingsLoaded: bool = @import("std").mem.zeroes(bool),
    SettingsDirtyTimer: f32 = @import("std").mem.zeroes(f32),
    SettingsIniData: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    SettingsHandlers: ImVector_ImGuiSettingsHandler = @import("std").mem.zeroes(ImVector_ImGuiSettingsHandler),
    SettingsWindows: ImChunkStream_ImGuiWindowSettings = @import("std").mem.zeroes(ImChunkStream_ImGuiWindowSettings),
    SettingsTables: ImChunkStream_ImGuiTableSettings = @import("std").mem.zeroes(ImChunkStream_ImGuiTableSettings),
    Hooks: ImVector_ImGuiContextHook = @import("std").mem.zeroes(ImVector_ImGuiContextHook),
    HookIdNext: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LocalizationTable: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
    LogEnabled: bool = @import("std").mem.zeroes(bool),
    LogLineFirstItem: bool = @import("std").mem.zeroes(bool),
    LogFlags: ImGuiLogFlags = @import("std").mem.zeroes(ImGuiLogFlags),
    LogWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    LogFile: ImFileHandle = @import("std").mem.zeroes(ImFileHandle),
    LogBuffer: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    LogNextPrefix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    LogNextSuffix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    LogLinePosY: f32 = @import("std").mem.zeroes(f32),
    LogDepthRef: c_int = @import("std").mem.zeroes(c_int),
    LogDepthToExpand: c_int = @import("std").mem.zeroes(c_int),
    LogDepthToExpandDefault: c_int = @import("std").mem.zeroes(c_int),
    ErrorCallback: ImGuiErrorCallback = @import("std").mem.zeroes(ImGuiErrorCallback),
    ErrorCallbackUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ErrorTooltipLockedPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    ErrorFirst: bool = @import("std").mem.zeroes(bool),
    ErrorCountCurrentFrame: c_int = @import("std").mem.zeroes(c_int),
    StackSizesInNewFrame: ImGuiErrorRecoveryState = @import("std").mem.zeroes(ImGuiErrorRecoveryState),
    StackSizesInBeginForCurrentWindow: [*c]ImGuiErrorRecoveryState = @import("std").mem.zeroes([*c]ImGuiErrorRecoveryState),
    DebugDrawIdConflictsCount: c_int = @import("std").mem.zeroes(c_int),
    DebugLogFlags: ImGuiDebugLogFlags = @import("std").mem.zeroes(ImGuiDebugLogFlags),
    DebugLogBuf: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    DebugLogIndex: ImGuiTextIndex = @import("std").mem.zeroes(ImGuiTextIndex),
    DebugLogSkippedErrors: c_int = @import("std").mem.zeroes(c_int),
    DebugLogAutoDisableFlags: ImGuiDebugLogFlags = @import("std").mem.zeroes(ImGuiDebugLogFlags),
    DebugLogAutoDisableFrames: ImU8 = @import("std").mem.zeroes(ImU8),
    DebugLocateFrames: ImU8 = @import("std").mem.zeroes(ImU8),
    DebugBreakInLocateId: bool = @import("std").mem.zeroes(bool),
    DebugBreakKeyChord: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    DebugBeginReturnValueCullDepth: ImS8 = @import("std").mem.zeroes(ImS8),
    DebugItemPickerActive: bool = @import("std").mem.zeroes(bool),
    DebugItemPickerMouseButton: ImU8 = @import("std").mem.zeroes(ImU8),
    DebugItemPickerBreakId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DebugFlashStyleColorTime: f32 = @import("std").mem.zeroes(f32),
    DebugFlashStyleColorBackup: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    DebugMetricsConfig: ImGuiMetricsConfig = @import("std").mem.zeroes(ImGuiMetricsConfig),
    DebugItemPathQuery: ImGuiDebugItemPathQuery = @import("std").mem.zeroes(ImGuiDebugItemPathQuery),
    DebugIDStackTool: ImGuiIDStackTool = @import("std").mem.zeroes(ImGuiIDStackTool),
    DebugAllocInfo: ImGuiDebugAllocInfo = @import("std").mem.zeroes(ImGuiDebugAllocInfo),
    DebugHoveredDockNode: ?*ImGuiDockNode = @import("std").mem.zeroes(?*ImGuiDockNode),
    FramerateSecPerFrame: [60]f32 = @import("std").mem.zeroes([60]f32),
    FramerateSecPerFrameIdx: c_int = @import("std").mem.zeroes(c_int),
    FramerateSecPerFrameCount: c_int = @import("std").mem.zeroes(c_int),
    FramerateSecPerFrameAccum: f32 = @import("std").mem.zeroes(f32),
    WantCaptureMouseNextFrame: c_int = @import("std").mem.zeroes(c_int),
    WantCaptureKeyboardNextFrame: c_int = @import("std").mem.zeroes(c_int),
    WantTextInputNextFrame: c_int = @import("std").mem.zeroes(c_int),
    TempBuffer: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    TempKeychordName: [64]u8 = @import("std").mem.zeroes([64]u8),
};
pub const ImGuiContext = struct_ImGuiContext;
pub const struct_ImFontAtlas = extern struct {
    Flags: ImFontAtlasFlags = @import("std").mem.zeroes(ImFontAtlasFlags),
    TexDesiredFormat: ImTextureFormat = @import("std").mem.zeroes(ImTextureFormat),
    TexGlyphPadding: c_int = @import("std").mem.zeroes(c_int),
    TexMinWidth: c_int = @import("std").mem.zeroes(c_int),
    TexMinHeight: c_int = @import("std").mem.zeroes(c_int),
    TexMaxWidth: c_int = @import("std").mem.zeroes(c_int),
    TexMaxHeight: c_int = @import("std").mem.zeroes(c_int),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    TexRef: ImTextureRef_c = @import("std").mem.zeroes(ImTextureRef_c),
    TexData: [*c]ImTextureData = @import("std").mem.zeroes([*c]ImTextureData),
    TexList: ImVector_ImTextureDataPtr = @import("std").mem.zeroes(ImVector_ImTextureDataPtr),
    Locked: bool = @import("std").mem.zeroes(bool),
    RendererHasTextures: bool = @import("std").mem.zeroes(bool),
    TexIsBuilt: bool = @import("std").mem.zeroes(bool),
    TexPixelsUseColors: bool = @import("std").mem.zeroes(bool),
    TexUvScale: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TexUvWhitePixel: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Fonts: ImVector_ImFontPtr = @import("std").mem.zeroes(ImVector_ImFontPtr),
    Sources: ImVector_ImFontConfig = @import("std").mem.zeroes(ImVector_ImFontConfig),
    TexUvLines: [33]ImVec4_c = @import("std").mem.zeroes([33]ImVec4_c),
    TexNextUniqueID: c_int = @import("std").mem.zeroes(c_int),
    FontNextUniqueID: c_int = @import("std").mem.zeroes(c_int),
    DrawListSharedDatas: ImVector_ImDrawListSharedDataPtr = @import("std").mem.zeroes(ImVector_ImDrawListSharedDataPtr),
    Builder: [*c]ImFontAtlasBuilder = @import("std").mem.zeroes([*c]ImFontAtlasBuilder),
    FontLoader: [*c]const ImFontLoader = @import("std").mem.zeroes([*c]const ImFontLoader),
    FontLoaderName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    FontLoaderData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    FontLoaderFlags: c_uint = @import("std").mem.zeroes(c_uint),
    RefCount: c_int = @import("std").mem.zeroes(c_int),
    OwnerContext: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
};
pub const ImFontAtlas = struct_ImFontAtlas;
pub const struct_ImVector_ImVec2 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImVec2_c = @import("std").mem.zeroes([*c]ImVec2_c),
};
pub const ImVector_ImVec2 = struct_ImVector_ImVec2;
pub const struct_ImDrawListSharedData = extern struct {
    TexUvWhitePixel: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TexUvLines: [*c]const ImVec4_c = @import("std").mem.zeroes([*c]const ImVec4_c),
    FontAtlas: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    Font: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    FontSize: f32 = @import("std").mem.zeroes(f32),
    FontScale: f32 = @import("std").mem.zeroes(f32),
    CurveTessellationTol: f32 = @import("std").mem.zeroes(f32),
    CircleSegmentMaxError: f32 = @import("std").mem.zeroes(f32),
    InitialFringeScale: f32 = @import("std").mem.zeroes(f32),
    InitialFlags: ImDrawListFlags = @import("std").mem.zeroes(ImDrawListFlags),
    ClipRectFullscreen: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    TempBuffer: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    DrawLists: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
    Context: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    ArcFastVtx: [48]ImVec2_c = @import("std").mem.zeroes([48]ImVec2_c),
    ArcFastRadiusCutoff: f32 = @import("std").mem.zeroes(f32),
    CircleSegmentCounts: [64]ImU8 = @import("std").mem.zeroes([64]ImU8),
};
pub const ImDrawListSharedData = struct_ImDrawListSharedData;
pub const struct_ImDrawCmdHeader = extern struct {
    ClipRect: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    TexRef: ImTextureRef_c = @import("std").mem.zeroes(ImTextureRef_c),
    VtxOffset: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ImDrawCmdHeader = struct_ImDrawCmdHeader;
pub const struct_ImVector_ImVec4 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImVec4_c = @import("std").mem.zeroes([*c]ImVec4_c),
};
pub const ImVector_ImVec4 = struct_ImVector_ImVec4;
pub const struct_ImVector_ImTextureRef = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImTextureRef_c = @import("std").mem.zeroes([*c]ImTextureRef_c),
};
pub const ImVector_ImTextureRef = struct_ImVector_ImTextureRef;
pub const struct_ImVector_ImU8 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU8 = @import("std").mem.zeroes([*c]ImU8),
};
pub const ImVector_ImU8 = struct_ImVector_ImU8;
pub const struct_ImDrawList = extern struct {
    CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
    VtxBuffer: ImVector_ImDrawVert = @import("std").mem.zeroes(ImVector_ImDrawVert),
    Flags: ImDrawListFlags = @import("std").mem.zeroes(ImDrawListFlags),
    _VtxCurrentIdx: c_uint = @import("std").mem.zeroes(c_uint),
    _Data: [*c]ImDrawListSharedData = @import("std").mem.zeroes([*c]ImDrawListSharedData),
    _VtxWritePtr: [*c]ImDrawVert = @import("std").mem.zeroes([*c]ImDrawVert),
    _IdxWritePtr: [*c]ImDrawIdx = @import("std").mem.zeroes([*c]ImDrawIdx),
    _Path: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    _CmdHeader: ImDrawCmdHeader = @import("std").mem.zeroes(ImDrawCmdHeader),
    _Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    _ClipRectStack: ImVector_ImVec4 = @import("std").mem.zeroes(ImVector_ImVec4),
    _TextureStack: ImVector_ImTextureRef = @import("std").mem.zeroes(ImVector_ImTextureRef),
    _CallbacksDataBuf: ImVector_ImU8 = @import("std").mem.zeroes(ImVector_ImU8),
    _FringeScale: f32 = @import("std").mem.zeroes(f32),
    _OwnerName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImDrawList = struct_ImDrawList;
pub const ImDrawCallback = ?*const fn ([*c]const ImDrawList, [*c]const ImDrawCmd) callconv(.c) void;
pub const struct_ImDrawCmd = extern struct {
    ClipRect: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    TexRef: ImTextureRef_c = @import("std").mem.zeroes(ImTextureRef_c),
    VtxOffset: c_uint = @import("std").mem.zeroes(c_uint),
    IdxOffset: c_uint = @import("std").mem.zeroes(c_uint),
    ElemCount: c_uint = @import("std").mem.zeroes(c_uint),
    UserCallback: ImDrawCallback = @import("std").mem.zeroes(ImDrawCallback),
    UserCallbackData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    UserCallbackDataSize: c_int = @import("std").mem.zeroes(c_int),
    UserCallbackDataOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImDrawCmd = struct_ImDrawCmd;
pub const struct_ImVector_ImDrawCmd = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawCmd = @import("std").mem.zeroes([*c]ImDrawCmd),
};
pub const ImVector_ImDrawCmd = struct_ImVector_ImDrawCmd;
pub const struct_ImDrawChannel = extern struct {
    _CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    _IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
};
pub const struct_ImFontAtlasRect = extern struct {
    x: c_ushort = @import("std").mem.zeroes(c_ushort),
    y: c_ushort = @import("std").mem.zeroes(c_ushort),
    w: c_ushort = @import("std").mem.zeroes(c_ushort),
    h: c_ushort = @import("std").mem.zeroes(c_ushort),
    uv0: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    uv1: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
};
pub const ImFontAtlasRect = struct_ImFontAtlasRect;
pub const struct_ImVector_ImU32 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU32 = @import("std").mem.zeroes([*c]ImU32),
};
pub const ImVector_ImU32 = struct_ImVector_ImU32;
pub const struct_ImFontGlyphRangesBuilder = extern struct {
    UsedChars: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
};
pub const ImFontGlyphRangesBuilder = struct_ImFontGlyphRangesBuilder;
pub const struct_ImColor_c = extern struct {
    Value: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
};
pub const ImColor_c = struct_ImColor_c;
pub const struct_ImGuiInputTextCallbackData = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    EventFlag: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    Flags: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    EventChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    EventKey: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    Buf: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    BufTextLen: c_int = @import("std").mem.zeroes(c_int),
    BufSize: c_int = @import("std").mem.zeroes(c_int),
    BufDirty: bool = @import("std").mem.zeroes(bool),
    CursorPos: c_int = @import("std").mem.zeroes(c_int),
    SelectionStart: c_int = @import("std").mem.zeroes(c_int),
    SelectionEnd: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiInputTextCallbackData = struct_ImGuiInputTextCallbackData;
pub const struct_ImGuiOnceUponAFrame = extern struct {
    RefFrame: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiOnceUponAFrame = struct_ImGuiOnceUponAFrame;
pub const ImGuiSelectionBasicStorage = struct_ImGuiSelectionBasicStorage;
pub const struct_ImGuiSelectionBasicStorage = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    PreserveOrder: bool = @import("std").mem.zeroes(bool),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    AdapterIndexToStorageId: ?*const fn ([*c]ImGuiSelectionBasicStorage, c_int) callconv(.c) ImGuiID = @import("std").mem.zeroes(?*const fn ([*c]ImGuiSelectionBasicStorage, c_int) callconv(.c) ImGuiID),
    _SelectionOrder: c_int = @import("std").mem.zeroes(c_int),
    _Storage: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
};
pub const ImGuiSelectionExternalStorage = struct_ImGuiSelectionExternalStorage;
pub const struct_ImGuiSelectionExternalStorage = extern struct {
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    AdapterSetItemSelected: ?*const fn ([*c]ImGuiSelectionExternalStorage, c_int, bool) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiSelectionExternalStorage, c_int, bool) callconv(.c) void),
};
pub const struct_ImGuiTableColumnSortSpecs = extern struct {
    ColumnUserID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ColumnIndex: ImS16 = @import("std").mem.zeroes(ImS16),
    SortOrder: ImS16 = @import("std").mem.zeroes(ImS16),
    SortDirection: ImGuiSortDirection = @import("std").mem.zeroes(ImGuiSortDirection),
};
pub const ImGuiTableColumnSortSpecs = struct_ImGuiTableColumnSortSpecs;
pub const struct_ImGuiTableSortSpecs = extern struct {
    Specs: [*c]const ImGuiTableColumnSortSpecs = @import("std").mem.zeroes([*c]const ImGuiTableColumnSortSpecs),
    SpecsCount: c_int = @import("std").mem.zeroes(c_int),
    SpecsDirty: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTableSortSpecs = struct_ImGuiTableSortSpecs;
pub const struct_ImGuiTextRange = extern struct {
    b: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    e: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiTextRange = struct_ImGuiTextRange;
pub const struct_ImVector_ImGuiTextRange = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTextRange = @import("std").mem.zeroes([*c]ImGuiTextRange),
};
pub const ImVector_ImGuiTextRange = struct_ImVector_ImGuiTextRange;
pub const struct_ImGuiTextFilter = extern struct {
    InputBuf: [256]u8 = @import("std").mem.zeroes([256]u8),
    Filters: ImVector_ImGuiTextRange = @import("std").mem.zeroes(ImVector_ImGuiTextRange),
    CountGrep: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTextFilter = struct_ImGuiTextFilter;
pub const struct_ImBitVector = extern struct {
    Storage: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
};
pub const ImBitVector = struct_ImBitVector;
pub const struct_ImFontAtlasPostProcessData = extern struct {
    FontAtlas: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    Font: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    FontSrc: [*c]ImFontConfig = @import("std").mem.zeroes([*c]ImFontConfig),
    FontBaked: ?*ImFontBaked = @import("std").mem.zeroes(?*ImFontBaked),
    Glyph: ?*ImFontGlyph = @import("std").mem.zeroes(?*ImFontGlyph),
    Pixels: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Format: ImTextureFormat = @import("std").mem.zeroes(ImTextureFormat),
    Pitch: c_int = @import("std").mem.zeroes(c_int),
    Width: c_int = @import("std").mem.zeroes(c_int),
    Height: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImFontAtlasPostProcessData = struct_ImFontAtlasPostProcessData;
pub const struct_ImGuiDataTypeInfo = extern struct {
    Size: usize = @import("std").mem.zeroes(usize),
    Name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    PrintFmt: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    ScanFmt: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiDataTypeInfo = struct_ImGuiDataTypeInfo;
pub const struct_ImGuiInputTextDeactivateData = opaque {};
pub const ImGuiInputTextDeactivateData = struct_ImGuiInputTextDeactivateData;
pub const struct_ImGuiLocEntry = extern struct {
    Key: ImGuiLocKey = @import("std").mem.zeroes(ImGuiLocKey),
    Text: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiLocEntry = struct_ImGuiLocEntry;
pub const struct_ImGuiMenuColumns = extern struct {
    TotalWidth: ImU32 = @import("std").mem.zeroes(ImU32),
    NextTotalWidth: ImU32 = @import("std").mem.zeroes(ImU32),
    Spacing: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetIcon: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetLabel: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetShortcut: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetMark: ImU16 = @import("std").mem.zeroes(ImU16),
    Widths: [4]ImU16 = @import("std").mem.zeroes([4]ImU16),
};
pub const ImGuiMenuColumns = struct_ImGuiMenuColumns;
pub const ImGuiOldColumnFlags = c_int;
pub const struct_ImGuiOldColumnData = extern struct {
    OffsetNorm: f32 = @import("std").mem.zeroes(f32),
    OffsetNormBeforeResize: f32 = @import("std").mem.zeroes(f32),
    Flags: ImGuiOldColumnFlags = @import("std").mem.zeroes(ImGuiOldColumnFlags),
    ClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
};
pub const ImGuiOldColumnData = struct_ImGuiOldColumnData;
pub const struct_ImVector_ImGuiOldColumnData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiOldColumnData = @import("std").mem.zeroes([*c]ImGuiOldColumnData),
};
pub const ImVector_ImGuiOldColumnData = struct_ImVector_ImGuiOldColumnData;
pub const struct_ImGuiOldColumns = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiOldColumnFlags = @import("std").mem.zeroes(ImGuiOldColumnFlags),
    IsFirstFrame: bool = @import("std").mem.zeroes(bool),
    IsBeingResized: bool = @import("std").mem.zeroes(bool),
    Current: c_int = @import("std").mem.zeroes(c_int),
    Count: c_int = @import("std").mem.zeroes(c_int),
    OffMinX: f32 = @import("std").mem.zeroes(f32),
    OffMaxX: f32 = @import("std").mem.zeroes(f32),
    LineMinY: f32 = @import("std").mem.zeroes(f32),
    LineMaxY: f32 = @import("std").mem.zeroes(f32),
    HostCursorPosY: f32 = @import("std").mem.zeroes(f32),
    HostCursorMaxPosX: f32 = @import("std").mem.zeroes(f32),
    HostInitialClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    HostBackupClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    HostBackupParentWorkRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    Columns: ImVector_ImGuiOldColumnData = @import("std").mem.zeroes(ImVector_ImGuiOldColumnData),
    Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
};
pub const ImGuiOldColumns = struct_ImGuiOldColumns;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:1925:11: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiStyleVarInfo = opaque {};
pub const ImGuiStyleVarInfo = struct_ImGuiStyleVarInfo;
pub const struct_ImGuiTableInstanceData = extern struct {
    TableInstanceID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastOuterHeight: f32 = @import("std").mem.zeroes(f32),
    LastTopHeadersRowHeight: f32 = @import("std").mem.zeroes(f32),
    LastFrozenHeight: f32 = @import("std").mem.zeroes(f32),
    HoveredRowLast: c_int = @import("std").mem.zeroes(c_int),
    HoveredRowNext: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTableInstanceData = struct_ImGuiTableInstanceData;
pub const struct_ImGuiTableSettings = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SaveFlags: ImGuiTableFlags = @import("std").mem.zeroes(ImGuiTableFlags),
    RefScale: f32 = @import("std").mem.zeroes(f32),
    ColumnsCount: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    ColumnsCountMax: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    WantApply: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTableSettings = struct_ImGuiTableSettings;
pub const struct_ImGuiTableColumnsSettings = opaque {};
pub const ImGuiTableColumnsSettings = struct_ImGuiTableColumnsSettings;
pub const struct_ImGuiWindowDockStyle = extern struct {
    Colors: [9]ImU32 = @import("std").mem.zeroes([9]ImU32),
};
pub const ImGuiWindowDockStyle = struct_ImGuiWindowDockStyle;
pub const struct_ImGuiWindowTempData = extern struct {
    CursorPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CursorPosPrevLine: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CursorStartPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    IdealMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CurrLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    PrevLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CurrLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    PrevLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    IsSameLine: bool = @import("std").mem.zeroes(bool),
    IsSetPos: bool = @import("std").mem.zeroes(bool),
    Indent: ImVec1 = @import("std").mem.zeroes(ImVec1),
    ColumnsOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    GroupOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    CursorStartPosLossyness: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    NavLayerCurrent: ImGuiNavLayer = @import("std").mem.zeroes(ImGuiNavLayer),
    NavLayersActiveMask: c_short = @import("std").mem.zeroes(c_short),
    NavLayersActiveMaskNext: c_short = @import("std").mem.zeroes(c_short),
    NavIsScrollPushableX: bool = @import("std").mem.zeroes(bool),
    NavHideHighlightOneFrame: bool = @import("std").mem.zeroes(bool),
    NavWindowHasScrollY: bool = @import("std").mem.zeroes(bool),
    MenuBarAppending: bool = @import("std").mem.zeroes(bool),
    MenuBarOffset: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    MenuColumns: ImGuiMenuColumns = @import("std").mem.zeroes(ImGuiMenuColumns),
    TreeDepth: c_int = @import("std").mem.zeroes(c_int),
    TreeHasStackDataDepthMask: ImU32 = @import("std").mem.zeroes(ImU32),
    TreeRecordsClippedNodesY2Mask: ImU32 = @import("std").mem.zeroes(ImU32),
    ChildWindows: ImVector_ImGuiWindowPtr = @import("std").mem.zeroes(ImVector_ImGuiWindowPtr),
    StateStorage: [*c]ImGuiStorage = @import("std").mem.zeroes([*c]ImGuiStorage),
    CurrentColumns: [*c]ImGuiOldColumns = @import("std").mem.zeroes([*c]ImGuiOldColumns),
    CurrentTableIdx: c_int = @import("std").mem.zeroes(c_int),
    LayoutType: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
    ParentLayoutType: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
    ModalDimBgColor: ImU32 = @import("std").mem.zeroes(ImU32),
    WindowItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    ChildItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    DockTabItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    DockTabItemRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    ItemWidth: f32 = @import("std").mem.zeroes(f32),
    TextWrapPos: f32 = @import("std").mem.zeroes(f32),
    ItemWidthStack: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    TextWrapPosStack: ImVector_float = @import("std").mem.zeroes(ImVector_float),
};
pub const ImGuiWindowTempData = struct_ImGuiWindowTempData;
pub const struct_ImVec2ih = extern struct {
    x: c_short = @import("std").mem.zeroes(c_short),
    y: c_short = @import("std").mem.zeroes(c_short),
};
pub const ImVec2ih = struct_ImVec2ih;
pub const struct_ImGuiWindowSettings = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Pos: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    Size: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    ViewportPos: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ClassId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockOrder: c_short = @import("std").mem.zeroes(c_short),
    Collapsed: bool = @import("std").mem.zeroes(bool),
    IsChild: bool = @import("std").mem.zeroes(bool),
    WantApply: bool = @import("std").mem.zeroes(bool),
    WantDelete: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiWindowSettings = struct_ImGuiWindowSettings;
pub const struct_ImVector_const_charPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
};
pub const ImVector_const_charPtr = struct_ImVector_const_charPtr;
pub const ImGuiDataType = c_int;
pub const ImGuiMouseButton = c_int;
pub const ImGuiTableBgTarget = c_int;
pub const ImDrawFlags = c_int;
pub const ImDrawTextFlags = c_int;
pub const ImGuiButtonFlags = c_int;
pub const ImGuiComboFlags = c_int;
pub const ImGuiFocusedFlags = c_int;
pub const ImGuiPopupFlags = c_int;
pub const ImGuiSelectableFlags = c_int;
pub const ImGuiSliderFlags = c_int;
pub const ImGuiTableRowFlags = c_int;
pub const ImWchar32 = c_uint;
pub const ImGuiInputTextCallback = ?*const fn ([*c]ImGuiInputTextCallbackData) callconv(.c) c_int;
pub const ImGuiMemAllocFunc = ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque;
pub const ImGuiMemFreeFunc = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const ImGuiWindowFlags_None: c_int = 0;
pub const ImGuiWindowFlags_NoTitleBar: c_int = 1;
pub const ImGuiWindowFlags_NoResize: c_int = 2;
pub const ImGuiWindowFlags_NoMove: c_int = 4;
pub const ImGuiWindowFlags_NoScrollbar: c_int = 8;
pub const ImGuiWindowFlags_NoScrollWithMouse: c_int = 16;
pub const ImGuiWindowFlags_NoCollapse: c_int = 32;
pub const ImGuiWindowFlags_AlwaysAutoResize: c_int = 64;
pub const ImGuiWindowFlags_NoBackground: c_int = 128;
pub const ImGuiWindowFlags_NoSavedSettings: c_int = 256;
pub const ImGuiWindowFlags_NoMouseInputs: c_int = 512;
pub const ImGuiWindowFlags_MenuBar: c_int = 1024;
pub const ImGuiWindowFlags_HorizontalScrollbar: c_int = 2048;
pub const ImGuiWindowFlags_NoFocusOnAppearing: c_int = 4096;
pub const ImGuiWindowFlags_NoBringToFrontOnFocus: c_int = 8192;
pub const ImGuiWindowFlags_AlwaysVerticalScrollbar: c_int = 16384;
pub const ImGuiWindowFlags_AlwaysHorizontalScrollbar: c_int = 32768;
pub const ImGuiWindowFlags_NoNavInputs: c_int = 65536;
pub const ImGuiWindowFlags_NoNavFocus: c_int = 131072;
pub const ImGuiWindowFlags_UnsavedDocument: c_int = 262144;
pub const ImGuiWindowFlags_NoDocking: c_int = 524288;
pub const ImGuiWindowFlags_NoNav: c_int = 196608;
pub const ImGuiWindowFlags_NoDecoration: c_int = 43;
pub const ImGuiWindowFlags_NoInputs: c_int = 197120;
pub const ImGuiWindowFlags_DockNodeHost: c_int = 8388608;
pub const ImGuiWindowFlags_ChildWindow: c_int = 16777216;
pub const ImGuiWindowFlags_Tooltip: c_int = 33554432;
pub const ImGuiWindowFlags_Popup: c_int = 67108864;
pub const ImGuiWindowFlags_Modal: c_int = 134217728;
pub const ImGuiWindowFlags_ChildMenu: c_int = 268435456;
pub const ImGuiWindowFlags_ = c_uint;
pub const ImGuiChildFlags_None: c_int = 0;
pub const ImGuiChildFlags_Borders: c_int = 1;
pub const ImGuiChildFlags_AlwaysUseWindowPadding: c_int = 2;
pub const ImGuiChildFlags_ResizeX: c_int = 4;
pub const ImGuiChildFlags_ResizeY: c_int = 8;
pub const ImGuiChildFlags_AutoResizeX: c_int = 16;
pub const ImGuiChildFlags_AutoResizeY: c_int = 32;
pub const ImGuiChildFlags_AlwaysAutoResize: c_int = 64;
pub const ImGuiChildFlags_FrameStyle: c_int = 128;
pub const ImGuiChildFlags_NavFlattened: c_int = 256;
pub const ImGuiChildFlags_ = c_uint;
pub const ImGuiItemFlags_None: c_int = 0;
pub const ImGuiItemFlags_NoTabStop: c_int = 1;
pub const ImGuiItemFlags_NoNav: c_int = 2;
pub const ImGuiItemFlags_NoNavDefaultFocus: c_int = 4;
pub const ImGuiItemFlags_ButtonRepeat: c_int = 8;
pub const ImGuiItemFlags_AutoClosePopups: c_int = 16;
pub const ImGuiItemFlags_AllowDuplicateId: c_int = 32;
pub const ImGuiItemFlags_ = c_uint;
pub const ImGuiInputTextFlags_None: c_int = 0;
pub const ImGuiInputTextFlags_CharsDecimal: c_int = 1;
pub const ImGuiInputTextFlags_CharsHexadecimal: c_int = 2;
pub const ImGuiInputTextFlags_CharsScientific: c_int = 4;
pub const ImGuiInputTextFlags_CharsUppercase: c_int = 8;
pub const ImGuiInputTextFlags_CharsNoBlank: c_int = 16;
pub const ImGuiInputTextFlags_AllowTabInput: c_int = 32;
pub const ImGuiInputTextFlags_EnterReturnsTrue: c_int = 64;
pub const ImGuiInputTextFlags_EscapeClearsAll: c_int = 128;
pub const ImGuiInputTextFlags_CtrlEnterForNewLine: c_int = 256;
pub const ImGuiInputTextFlags_ReadOnly: c_int = 512;
pub const ImGuiInputTextFlags_Password: c_int = 1024;
pub const ImGuiInputTextFlags_AlwaysOverwrite: c_int = 2048;
pub const ImGuiInputTextFlags_AutoSelectAll: c_int = 4096;
pub const ImGuiInputTextFlags_ParseEmptyRefVal: c_int = 8192;
pub const ImGuiInputTextFlags_DisplayEmptyRefVal: c_int = 16384;
pub const ImGuiInputTextFlags_NoHorizontalScroll: c_int = 32768;
pub const ImGuiInputTextFlags_NoUndoRedo: c_int = 65536;
pub const ImGuiInputTextFlags_ElideLeft: c_int = 131072;
pub const ImGuiInputTextFlags_CallbackCompletion: c_int = 262144;
pub const ImGuiInputTextFlags_CallbackHistory: c_int = 524288;
pub const ImGuiInputTextFlags_CallbackAlways: c_int = 1048576;
pub const ImGuiInputTextFlags_CallbackCharFilter: c_int = 2097152;
pub const ImGuiInputTextFlags_CallbackResize: c_int = 4194304;
pub const ImGuiInputTextFlags_CallbackEdit: c_int = 8388608;
pub const ImGuiInputTextFlags_WordWrap: c_int = 16777216;
pub const ImGuiInputTextFlags_ = c_uint;
pub const ImGuiTreeNodeFlags_None: c_int = 0;
pub const ImGuiTreeNodeFlags_Selected: c_int = 1;
pub const ImGuiTreeNodeFlags_Framed: c_int = 2;
pub const ImGuiTreeNodeFlags_AllowOverlap: c_int = 4;
pub const ImGuiTreeNodeFlags_NoTreePushOnOpen: c_int = 8;
pub const ImGuiTreeNodeFlags_NoAutoOpenOnLog: c_int = 16;
pub const ImGuiTreeNodeFlags_DefaultOpen: c_int = 32;
pub const ImGuiTreeNodeFlags_OpenOnDoubleClick: c_int = 64;
pub const ImGuiTreeNodeFlags_OpenOnArrow: c_int = 128;
pub const ImGuiTreeNodeFlags_Leaf: c_int = 256;
pub const ImGuiTreeNodeFlags_Bullet: c_int = 512;
pub const ImGuiTreeNodeFlags_FramePadding: c_int = 1024;
pub const ImGuiTreeNodeFlags_SpanAvailWidth: c_int = 2048;
pub const ImGuiTreeNodeFlags_SpanFullWidth: c_int = 4096;
pub const ImGuiTreeNodeFlags_SpanLabelWidth: c_int = 8192;
pub const ImGuiTreeNodeFlags_SpanAllColumns: c_int = 16384;
pub const ImGuiTreeNodeFlags_LabelSpanAllColumns: c_int = 32768;
pub const ImGuiTreeNodeFlags_NavLeftJumpsToParent: c_int = 131072;
pub const ImGuiTreeNodeFlags_CollapsingHeader: c_int = 26;
pub const ImGuiTreeNodeFlags_DrawLinesNone: c_int = 262144;
pub const ImGuiTreeNodeFlags_DrawLinesFull: c_int = 524288;
pub const ImGuiTreeNodeFlags_DrawLinesToNodes: c_int = 1048576;
pub const ImGuiTreeNodeFlags_ = c_uint;
pub const ImGuiPopupFlags_None: c_int = 0;
pub const ImGuiPopupFlags_MouseButtonLeft: c_int = 0;
pub const ImGuiPopupFlags_MouseButtonRight: c_int = 1;
pub const ImGuiPopupFlags_MouseButtonMiddle: c_int = 2;
pub const ImGuiPopupFlags_MouseButtonMask_: c_int = 31;
pub const ImGuiPopupFlags_MouseButtonDefault_: c_int = 1;
pub const ImGuiPopupFlags_NoReopen: c_int = 32;
pub const ImGuiPopupFlags_NoOpenOverExistingPopup: c_int = 128;
pub const ImGuiPopupFlags_NoOpenOverItems: c_int = 256;
pub const ImGuiPopupFlags_AnyPopupId: c_int = 1024;
pub const ImGuiPopupFlags_AnyPopupLevel: c_int = 2048;
pub const ImGuiPopupFlags_AnyPopup: c_int = 3072;
pub const ImGuiPopupFlags_ = c_uint;
pub const ImGuiSelectableFlags_None: c_int = 0;
pub const ImGuiSelectableFlags_NoAutoClosePopups: c_int = 1;
pub const ImGuiSelectableFlags_SpanAllColumns: c_int = 2;
pub const ImGuiSelectableFlags_AllowDoubleClick: c_int = 4;
pub const ImGuiSelectableFlags_Disabled: c_int = 8;
pub const ImGuiSelectableFlags_AllowOverlap: c_int = 16;
pub const ImGuiSelectableFlags_Highlight: c_int = 32;
pub const ImGuiSelectableFlags_SelectOnNav: c_int = 64;
pub const ImGuiSelectableFlags_ = c_uint;
pub const ImGuiComboFlags_None: c_int = 0;
pub const ImGuiComboFlags_PopupAlignLeft: c_int = 1;
pub const ImGuiComboFlags_HeightSmall: c_int = 2;
pub const ImGuiComboFlags_HeightRegular: c_int = 4;
pub const ImGuiComboFlags_HeightLarge: c_int = 8;
pub const ImGuiComboFlags_HeightLargest: c_int = 16;
pub const ImGuiComboFlags_NoArrowButton: c_int = 32;
pub const ImGuiComboFlags_NoPreview: c_int = 64;
pub const ImGuiComboFlags_WidthFitPreview: c_int = 128;
pub const ImGuiComboFlags_HeightMask_: c_int = 30;
pub const ImGuiComboFlags_ = c_uint;
pub const ImGuiTabBarFlags_None: c_int = 0;
pub const ImGuiTabBarFlags_Reorderable: c_int = 1;
pub const ImGuiTabBarFlags_AutoSelectNewTabs: c_int = 2;
pub const ImGuiTabBarFlags_TabListPopupButton: c_int = 4;
pub const ImGuiTabBarFlags_NoCloseWithMiddleMouseButton: c_int = 8;
pub const ImGuiTabBarFlags_NoTabListScrollingButtons: c_int = 16;
pub const ImGuiTabBarFlags_NoTooltip: c_int = 32;
pub const ImGuiTabBarFlags_DrawSelectedOverline: c_int = 64;
pub const ImGuiTabBarFlags_FittingPolicyMixed: c_int = 128;
pub const ImGuiTabBarFlags_FittingPolicyShrink: c_int = 256;
pub const ImGuiTabBarFlags_FittingPolicyScroll: c_int = 512;
pub const ImGuiTabBarFlags_FittingPolicyMask_: c_int = 896;
pub const ImGuiTabBarFlags_FittingPolicyDefault_: c_int = 128;
pub const ImGuiTabBarFlags_ = c_uint;
pub const ImGuiTabItemFlags_None: c_int = 0;
pub const ImGuiTabItemFlags_UnsavedDocument: c_int = 1;
pub const ImGuiTabItemFlags_SetSelected: c_int = 2;
pub const ImGuiTabItemFlags_NoCloseWithMiddleMouseButton: c_int = 4;
pub const ImGuiTabItemFlags_NoPushId: c_int = 8;
pub const ImGuiTabItemFlags_NoTooltip: c_int = 16;
pub const ImGuiTabItemFlags_NoReorder: c_int = 32;
pub const ImGuiTabItemFlags_Leading: c_int = 64;
pub const ImGuiTabItemFlags_Trailing: c_int = 128;
pub const ImGuiTabItemFlags_NoAssumedClosure: c_int = 256;
pub const ImGuiTabItemFlags_ = c_uint;
pub const ImGuiFocusedFlags_None: c_int = 0;
pub const ImGuiFocusedFlags_ChildWindows: c_int = 1;
pub const ImGuiFocusedFlags_RootWindow: c_int = 2;
pub const ImGuiFocusedFlags_AnyWindow: c_int = 4;
pub const ImGuiFocusedFlags_NoPopupHierarchy: c_int = 8;
pub const ImGuiFocusedFlags_DockHierarchy: c_int = 16;
pub const ImGuiFocusedFlags_RootAndChildWindows: c_int = 3;
pub const ImGuiFocusedFlags_ = c_uint;
pub const ImGuiHoveredFlags_None: c_int = 0;
pub const ImGuiHoveredFlags_ChildWindows: c_int = 1;
pub const ImGuiHoveredFlags_RootWindow: c_int = 2;
pub const ImGuiHoveredFlags_AnyWindow: c_int = 4;
pub const ImGuiHoveredFlags_NoPopupHierarchy: c_int = 8;
pub const ImGuiHoveredFlags_DockHierarchy: c_int = 16;
pub const ImGuiHoveredFlags_AllowWhenBlockedByPopup: c_int = 32;
pub const ImGuiHoveredFlags_AllowWhenBlockedByActiveItem: c_int = 128;
pub const ImGuiHoveredFlags_AllowWhenOverlappedByItem: c_int = 256;
pub const ImGuiHoveredFlags_AllowWhenOverlappedByWindow: c_int = 512;
pub const ImGuiHoveredFlags_AllowWhenDisabled: c_int = 1024;
pub const ImGuiHoveredFlags_NoNavOverride: c_int = 2048;
pub const ImGuiHoveredFlags_AllowWhenOverlapped: c_int = 768;
pub const ImGuiHoveredFlags_RectOnly: c_int = 928;
pub const ImGuiHoveredFlags_RootAndChildWindows: c_int = 3;
pub const ImGuiHoveredFlags_ForTooltip: c_int = 4096;
pub const ImGuiHoveredFlags_Stationary: c_int = 8192;
pub const ImGuiHoveredFlags_DelayNone: c_int = 16384;
pub const ImGuiHoveredFlags_DelayShort: c_int = 32768;
pub const ImGuiHoveredFlags_DelayNormal: c_int = 65536;
pub const ImGuiHoveredFlags_NoSharedDelay: c_int = 131072;
pub const ImGuiHoveredFlags_ = c_uint;
pub const ImGuiDockNodeFlags_None: c_int = 0;
pub const ImGuiDockNodeFlags_KeepAliveOnly: c_int = 1;
pub const ImGuiDockNodeFlags_NoDockingOverCentralNode: c_int = 4;
pub const ImGuiDockNodeFlags_PassthruCentralNode: c_int = 8;
pub const ImGuiDockNodeFlags_NoDockingSplit: c_int = 16;
pub const ImGuiDockNodeFlags_NoResize: c_int = 32;
pub const ImGuiDockNodeFlags_AutoHideTabBar: c_int = 64;
pub const ImGuiDockNodeFlags_NoUndocking: c_int = 128;
pub const ImGuiDockNodeFlags_ = c_uint;
pub const ImGuiDragDropFlags_None: c_int = 0;
pub const ImGuiDragDropFlags_SourceNoPreviewTooltip: c_int = 1;
pub const ImGuiDragDropFlags_SourceNoDisableHover: c_int = 2;
pub const ImGuiDragDropFlags_SourceNoHoldToOpenOthers: c_int = 4;
pub const ImGuiDragDropFlags_SourceAllowNullID: c_int = 8;
pub const ImGuiDragDropFlags_SourceExtern: c_int = 16;
pub const ImGuiDragDropFlags_PayloadAutoExpire: c_int = 32;
pub const ImGuiDragDropFlags_PayloadNoCrossContext: c_int = 64;
pub const ImGuiDragDropFlags_PayloadNoCrossProcess: c_int = 128;
pub const ImGuiDragDropFlags_AcceptBeforeDelivery: c_int = 1024;
pub const ImGuiDragDropFlags_AcceptNoDrawDefaultRect: c_int = 2048;
pub const ImGuiDragDropFlags_AcceptNoPreviewTooltip: c_int = 4096;
pub const ImGuiDragDropFlags_AcceptDrawAsHovered: c_int = 8192;
pub const ImGuiDragDropFlags_AcceptPeekOnly: c_int = 3072;
pub const ImGuiDragDropFlags_ = c_uint;
pub const ImGuiDataType_S8: c_int = 0;
pub const ImGuiDataType_U8: c_int = 1;
pub const ImGuiDataType_S16: c_int = 2;
pub const ImGuiDataType_U16: c_int = 3;
pub const ImGuiDataType_S32: c_int = 4;
pub const ImGuiDataType_U32: c_int = 5;
pub const ImGuiDataType_S64: c_int = 6;
pub const ImGuiDataType_U64: c_int = 7;
pub const ImGuiDataType_Float: c_int = 8;
pub const ImGuiDataType_Double: c_int = 9;
pub const ImGuiDataType_Bool: c_int = 10;
pub const ImGuiDataType_String: c_int = 11;
pub const ImGuiDataType_COUNT: c_int = 12;
pub const ImGuiDataType_ = c_uint;
pub const ImGuiDir_None: c_int = -1;
pub const ImGuiDir_Left: c_int = 0;
pub const ImGuiDir_Right: c_int = 1;
pub const ImGuiDir_Up: c_int = 2;
pub const ImGuiDir_Down: c_int = 3;
pub const ImGuiDir_COUNT: c_int = 4;
pub const ImGuiDir = c_int;
pub const ImGuiSortDirection_None: c_int = 0;
pub const ImGuiSortDirection_Ascending: c_int = 1;
pub const ImGuiSortDirection_Descending: c_int = 2;
pub const ImGuiSortDirection = c_uint;
pub const ImGuiKey_None: c_int = 0;
pub const ImGuiKey_NamedKey_BEGIN: c_int = 512;
pub const ImGuiKey_Tab: c_int = 512;
pub const ImGuiKey_LeftArrow: c_int = 513;
pub const ImGuiKey_RightArrow: c_int = 514;
pub const ImGuiKey_UpArrow: c_int = 515;
pub const ImGuiKey_DownArrow: c_int = 516;
pub const ImGuiKey_PageUp: c_int = 517;
pub const ImGuiKey_PageDown: c_int = 518;
pub const ImGuiKey_Home: c_int = 519;
pub const ImGuiKey_End: c_int = 520;
pub const ImGuiKey_Insert: c_int = 521;
pub const ImGuiKey_Delete: c_int = 522;
pub const ImGuiKey_Backspace: c_int = 523;
pub const ImGuiKey_Space: c_int = 524;
pub const ImGuiKey_Enter: c_int = 525;
pub const ImGuiKey_Escape: c_int = 526;
pub const ImGuiKey_LeftCtrl: c_int = 527;
pub const ImGuiKey_LeftShift: c_int = 528;
pub const ImGuiKey_LeftAlt: c_int = 529;
pub const ImGuiKey_LeftSuper: c_int = 530;
pub const ImGuiKey_RightCtrl: c_int = 531;
pub const ImGuiKey_RightShift: c_int = 532;
pub const ImGuiKey_RightAlt: c_int = 533;
pub const ImGuiKey_RightSuper: c_int = 534;
pub const ImGuiKey_Menu: c_int = 535;
pub const ImGuiKey_0: c_int = 536;
pub const ImGuiKey_1: c_int = 537;
pub const ImGuiKey_2: c_int = 538;
pub const ImGuiKey_3: c_int = 539;
pub const ImGuiKey_4: c_int = 540;
pub const ImGuiKey_5: c_int = 541;
pub const ImGuiKey_6: c_int = 542;
pub const ImGuiKey_7: c_int = 543;
pub const ImGuiKey_8: c_int = 544;
pub const ImGuiKey_9: c_int = 545;
pub const ImGuiKey_A: c_int = 546;
pub const ImGuiKey_B: c_int = 547;
pub const ImGuiKey_C: c_int = 548;
pub const ImGuiKey_D: c_int = 549;
pub const ImGuiKey_E: c_int = 550;
pub const ImGuiKey_F: c_int = 551;
pub const ImGuiKey_G: c_int = 552;
pub const ImGuiKey_H: c_int = 553;
pub const ImGuiKey_I: c_int = 554;
pub const ImGuiKey_J: c_int = 555;
pub const ImGuiKey_K: c_int = 556;
pub const ImGuiKey_L: c_int = 557;
pub const ImGuiKey_M: c_int = 558;
pub const ImGuiKey_N: c_int = 559;
pub const ImGuiKey_O: c_int = 560;
pub const ImGuiKey_P: c_int = 561;
pub const ImGuiKey_Q: c_int = 562;
pub const ImGuiKey_R: c_int = 563;
pub const ImGuiKey_S: c_int = 564;
pub const ImGuiKey_T: c_int = 565;
pub const ImGuiKey_U: c_int = 566;
pub const ImGuiKey_V: c_int = 567;
pub const ImGuiKey_W: c_int = 568;
pub const ImGuiKey_X: c_int = 569;
pub const ImGuiKey_Y: c_int = 570;
pub const ImGuiKey_Z: c_int = 571;
pub const ImGuiKey_F1: c_int = 572;
pub const ImGuiKey_F2: c_int = 573;
pub const ImGuiKey_F3: c_int = 574;
pub const ImGuiKey_F4: c_int = 575;
pub const ImGuiKey_F5: c_int = 576;
pub const ImGuiKey_F6: c_int = 577;
pub const ImGuiKey_F7: c_int = 578;
pub const ImGuiKey_F8: c_int = 579;
pub const ImGuiKey_F9: c_int = 580;
pub const ImGuiKey_F10: c_int = 581;
pub const ImGuiKey_F11: c_int = 582;
pub const ImGuiKey_F12: c_int = 583;
pub const ImGuiKey_F13: c_int = 584;
pub const ImGuiKey_F14: c_int = 585;
pub const ImGuiKey_F15: c_int = 586;
pub const ImGuiKey_F16: c_int = 587;
pub const ImGuiKey_F17: c_int = 588;
pub const ImGuiKey_F18: c_int = 589;
pub const ImGuiKey_F19: c_int = 590;
pub const ImGuiKey_F20: c_int = 591;
pub const ImGuiKey_F21: c_int = 592;
pub const ImGuiKey_F22: c_int = 593;
pub const ImGuiKey_F23: c_int = 594;
pub const ImGuiKey_F24: c_int = 595;
pub const ImGuiKey_Apostrophe: c_int = 596;
pub const ImGuiKey_Comma: c_int = 597;
pub const ImGuiKey_Minus: c_int = 598;
pub const ImGuiKey_Period: c_int = 599;
pub const ImGuiKey_Slash: c_int = 600;
pub const ImGuiKey_Semicolon: c_int = 601;
pub const ImGuiKey_Equal: c_int = 602;
pub const ImGuiKey_LeftBracket: c_int = 603;
pub const ImGuiKey_Backslash: c_int = 604;
pub const ImGuiKey_RightBracket: c_int = 605;
pub const ImGuiKey_GraveAccent: c_int = 606;
pub const ImGuiKey_CapsLock: c_int = 607;
pub const ImGuiKey_ScrollLock: c_int = 608;
pub const ImGuiKey_NumLock: c_int = 609;
pub const ImGuiKey_PrintScreen: c_int = 610;
pub const ImGuiKey_Pause: c_int = 611;
pub const ImGuiKey_Keypad0: c_int = 612;
pub const ImGuiKey_Keypad1: c_int = 613;
pub const ImGuiKey_Keypad2: c_int = 614;
pub const ImGuiKey_Keypad3: c_int = 615;
pub const ImGuiKey_Keypad4: c_int = 616;
pub const ImGuiKey_Keypad5: c_int = 617;
pub const ImGuiKey_Keypad6: c_int = 618;
pub const ImGuiKey_Keypad7: c_int = 619;
pub const ImGuiKey_Keypad8: c_int = 620;
pub const ImGuiKey_Keypad9: c_int = 621;
pub const ImGuiKey_KeypadDecimal: c_int = 622;
pub const ImGuiKey_KeypadDivide: c_int = 623;
pub const ImGuiKey_KeypadMultiply: c_int = 624;
pub const ImGuiKey_KeypadSubtract: c_int = 625;
pub const ImGuiKey_KeypadAdd: c_int = 626;
pub const ImGuiKey_KeypadEnter: c_int = 627;
pub const ImGuiKey_KeypadEqual: c_int = 628;
pub const ImGuiKey_AppBack: c_int = 629;
pub const ImGuiKey_AppForward: c_int = 630;
pub const ImGuiKey_Oem102: c_int = 631;
pub const ImGuiKey_GamepadStart: c_int = 632;
pub const ImGuiKey_GamepadBack: c_int = 633;
pub const ImGuiKey_GamepadFaceLeft: c_int = 634;
pub const ImGuiKey_GamepadFaceRight: c_int = 635;
pub const ImGuiKey_GamepadFaceUp: c_int = 636;
pub const ImGuiKey_GamepadFaceDown: c_int = 637;
pub const ImGuiKey_GamepadDpadLeft: c_int = 638;
pub const ImGuiKey_GamepadDpadRight: c_int = 639;
pub const ImGuiKey_GamepadDpadUp: c_int = 640;
pub const ImGuiKey_GamepadDpadDown: c_int = 641;
pub const ImGuiKey_GamepadL1: c_int = 642;
pub const ImGuiKey_GamepadR1: c_int = 643;
pub const ImGuiKey_GamepadL2: c_int = 644;
pub const ImGuiKey_GamepadR2: c_int = 645;
pub const ImGuiKey_GamepadL3: c_int = 646;
pub const ImGuiKey_GamepadR3: c_int = 647;
pub const ImGuiKey_GamepadLStickLeft: c_int = 648;
pub const ImGuiKey_GamepadLStickRight: c_int = 649;
pub const ImGuiKey_GamepadLStickUp: c_int = 650;
pub const ImGuiKey_GamepadLStickDown: c_int = 651;
pub const ImGuiKey_GamepadRStickLeft: c_int = 652;
pub const ImGuiKey_GamepadRStickRight: c_int = 653;
pub const ImGuiKey_GamepadRStickUp: c_int = 654;
pub const ImGuiKey_GamepadRStickDown: c_int = 655;
pub const ImGuiKey_MouseLeft: c_int = 656;
pub const ImGuiKey_MouseRight: c_int = 657;
pub const ImGuiKey_MouseMiddle: c_int = 658;
pub const ImGuiKey_MouseX1: c_int = 659;
pub const ImGuiKey_MouseX2: c_int = 660;
pub const ImGuiKey_MouseWheelX: c_int = 661;
pub const ImGuiKey_MouseWheelY: c_int = 662;
pub const ImGuiKey_ReservedForModCtrl: c_int = 663;
pub const ImGuiKey_ReservedForModShift: c_int = 664;
pub const ImGuiKey_ReservedForModAlt: c_int = 665;
pub const ImGuiKey_ReservedForModSuper: c_int = 666;
pub const ImGuiKey_NamedKey_END: c_int = 667;
pub const ImGuiKey_NamedKey_COUNT: c_int = 155;
pub const ImGuiMod_None: c_int = 0;
pub const ImGuiMod_Ctrl: c_int = 4096;
pub const ImGuiMod_Shift: c_int = 8192;
pub const ImGuiMod_Alt: c_int = 16384;
pub const ImGuiMod_Super: c_int = 32768;
pub const ImGuiMod_Mask_: c_int = 61440;
pub const ImGuiKey = c_uint;
pub const ImGuiInputFlags_None: c_int = 0;
pub const ImGuiInputFlags_Repeat: c_int = 1;
pub const ImGuiInputFlags_RouteActive: c_int = 1024;
pub const ImGuiInputFlags_RouteFocused: c_int = 2048;
pub const ImGuiInputFlags_RouteGlobal: c_int = 4096;
pub const ImGuiInputFlags_RouteAlways: c_int = 8192;
pub const ImGuiInputFlags_RouteOverFocused: c_int = 16384;
pub const ImGuiInputFlags_RouteOverActive: c_int = 32768;
pub const ImGuiInputFlags_RouteUnlessBgFocused: c_int = 65536;
pub const ImGuiInputFlags_RouteFromRootWindow: c_int = 131072;
pub const ImGuiInputFlags_Tooltip: c_int = 262144;
pub const ImGuiInputFlags_ = c_uint;
pub const ImGuiConfigFlags_None: c_int = 0;
pub const ImGuiConfigFlags_NavEnableKeyboard: c_int = 1;
pub const ImGuiConfigFlags_NavEnableGamepad: c_int = 2;
pub const ImGuiConfigFlags_NoMouse: c_int = 16;
pub const ImGuiConfigFlags_NoMouseCursorChange: c_int = 32;
pub const ImGuiConfigFlags_NoKeyboard: c_int = 64;
pub const ImGuiConfigFlags_DockingEnable: c_int = 128;
pub const ImGuiConfigFlags_ViewportsEnable: c_int = 1024;
pub const ImGuiConfigFlags_IsSRGB: c_int = 1048576;
pub const ImGuiConfigFlags_IsTouchScreen: c_int = 2097152;
pub const ImGuiConfigFlags_ = c_uint;
pub const ImGuiBackendFlags_None: c_int = 0;
pub const ImGuiBackendFlags_HasGamepad: c_int = 1;
pub const ImGuiBackendFlags_HasMouseCursors: c_int = 2;
pub const ImGuiBackendFlags_HasSetMousePos: c_int = 4;
pub const ImGuiBackendFlags_RendererHasVtxOffset: c_int = 8;
pub const ImGuiBackendFlags_RendererHasTextures: c_int = 16;
pub const ImGuiBackendFlags_RendererHasViewports: c_int = 1024;
pub const ImGuiBackendFlags_PlatformHasViewports: c_int = 2048;
pub const ImGuiBackendFlags_HasMouseHoveredViewport: c_int = 4096;
pub const ImGuiBackendFlags_HasParentViewport: c_int = 8192;
pub const ImGuiBackendFlags_ = c_uint;
pub const ImGuiCol_Text: c_int = 0;
pub const ImGuiCol_TextDisabled: c_int = 1;
pub const ImGuiCol_WindowBg: c_int = 2;
pub const ImGuiCol_ChildBg: c_int = 3;
pub const ImGuiCol_PopupBg: c_int = 4;
pub const ImGuiCol_Border: c_int = 5;
pub const ImGuiCol_BorderShadow: c_int = 6;
pub const ImGuiCol_FrameBg: c_int = 7;
pub const ImGuiCol_FrameBgHovered: c_int = 8;
pub const ImGuiCol_FrameBgActive: c_int = 9;
pub const ImGuiCol_TitleBg: c_int = 10;
pub const ImGuiCol_TitleBgActive: c_int = 11;
pub const ImGuiCol_TitleBgCollapsed: c_int = 12;
pub const ImGuiCol_MenuBarBg: c_int = 13;
pub const ImGuiCol_ScrollbarBg: c_int = 14;
pub const ImGuiCol_ScrollbarGrab: c_int = 15;
pub const ImGuiCol_ScrollbarGrabHovered: c_int = 16;
pub const ImGuiCol_ScrollbarGrabActive: c_int = 17;
pub const ImGuiCol_CheckMark: c_int = 18;
pub const ImGuiCol_SliderGrab: c_int = 19;
pub const ImGuiCol_SliderGrabActive: c_int = 20;
pub const ImGuiCol_Button: c_int = 21;
pub const ImGuiCol_ButtonHovered: c_int = 22;
pub const ImGuiCol_ButtonActive: c_int = 23;
pub const ImGuiCol_Header: c_int = 24;
pub const ImGuiCol_HeaderHovered: c_int = 25;
pub const ImGuiCol_HeaderActive: c_int = 26;
pub const ImGuiCol_Separator: c_int = 27;
pub const ImGuiCol_SeparatorHovered: c_int = 28;
pub const ImGuiCol_SeparatorActive: c_int = 29;
pub const ImGuiCol_ResizeGrip: c_int = 30;
pub const ImGuiCol_ResizeGripHovered: c_int = 31;
pub const ImGuiCol_ResizeGripActive: c_int = 32;
pub const ImGuiCol_InputTextCursor: c_int = 33;
pub const ImGuiCol_TabHovered: c_int = 34;
pub const ImGuiCol_Tab: c_int = 35;
pub const ImGuiCol_TabSelected: c_int = 36;
pub const ImGuiCol_TabSelectedOverline: c_int = 37;
pub const ImGuiCol_TabDimmed: c_int = 38;
pub const ImGuiCol_TabDimmedSelected: c_int = 39;
pub const ImGuiCol_TabDimmedSelectedOverline: c_int = 40;
pub const ImGuiCol_DockingPreview: c_int = 41;
pub const ImGuiCol_DockingEmptyBg: c_int = 42;
pub const ImGuiCol_PlotLines: c_int = 43;
pub const ImGuiCol_PlotLinesHovered: c_int = 44;
pub const ImGuiCol_PlotHistogram: c_int = 45;
pub const ImGuiCol_PlotHistogramHovered: c_int = 46;
pub const ImGuiCol_TableHeaderBg: c_int = 47;
pub const ImGuiCol_TableBorderStrong: c_int = 48;
pub const ImGuiCol_TableBorderLight: c_int = 49;
pub const ImGuiCol_TableRowBg: c_int = 50;
pub const ImGuiCol_TableRowBgAlt: c_int = 51;
pub const ImGuiCol_TextLink: c_int = 52;
pub const ImGuiCol_TextSelectedBg: c_int = 53;
pub const ImGuiCol_TreeLines: c_int = 54;
pub const ImGuiCol_DragDropTarget: c_int = 55;
pub const ImGuiCol_DragDropTargetBg: c_int = 56;
pub const ImGuiCol_UnsavedMarker: c_int = 57;
pub const ImGuiCol_NavCursor: c_int = 58;
pub const ImGuiCol_NavWindowingHighlight: c_int = 59;
pub const ImGuiCol_NavWindowingDimBg: c_int = 60;
pub const ImGuiCol_ModalWindowDimBg: c_int = 61;
pub const ImGuiCol_COUNT: c_int = 62;
pub const ImGuiCol_ = c_uint;
pub const ImGuiStyleVar_Alpha: c_int = 0;
pub const ImGuiStyleVar_DisabledAlpha: c_int = 1;
pub const ImGuiStyleVar_WindowPadding: c_int = 2;
pub const ImGuiStyleVar_WindowRounding: c_int = 3;
pub const ImGuiStyleVar_WindowBorderSize: c_int = 4;
pub const ImGuiStyleVar_WindowMinSize: c_int = 5;
pub const ImGuiStyleVar_WindowTitleAlign: c_int = 6;
pub const ImGuiStyleVar_ChildRounding: c_int = 7;
pub const ImGuiStyleVar_ChildBorderSize: c_int = 8;
pub const ImGuiStyleVar_PopupRounding: c_int = 9;
pub const ImGuiStyleVar_PopupBorderSize: c_int = 10;
pub const ImGuiStyleVar_FramePadding: c_int = 11;
pub const ImGuiStyleVar_FrameRounding: c_int = 12;
pub const ImGuiStyleVar_FrameBorderSize: c_int = 13;
pub const ImGuiStyleVar_ItemSpacing: c_int = 14;
pub const ImGuiStyleVar_ItemInnerSpacing: c_int = 15;
pub const ImGuiStyleVar_IndentSpacing: c_int = 16;
pub const ImGuiStyleVar_CellPadding: c_int = 17;
pub const ImGuiStyleVar_ScrollbarSize: c_int = 18;
pub const ImGuiStyleVar_ScrollbarRounding: c_int = 19;
pub const ImGuiStyleVar_ScrollbarPadding: c_int = 20;
pub const ImGuiStyleVar_GrabMinSize: c_int = 21;
pub const ImGuiStyleVar_GrabRounding: c_int = 22;
pub const ImGuiStyleVar_ImageBorderSize: c_int = 23;
pub const ImGuiStyleVar_TabRounding: c_int = 24;
pub const ImGuiStyleVar_TabBorderSize: c_int = 25;
pub const ImGuiStyleVar_TabMinWidthBase: c_int = 26;
pub const ImGuiStyleVar_TabMinWidthShrink: c_int = 27;
pub const ImGuiStyleVar_TabBarBorderSize: c_int = 28;
pub const ImGuiStyleVar_TabBarOverlineSize: c_int = 29;
pub const ImGuiStyleVar_TableAngledHeadersAngle: c_int = 30;
pub const ImGuiStyleVar_TableAngledHeadersTextAlign: c_int = 31;
pub const ImGuiStyleVar_TreeLinesSize: c_int = 32;
pub const ImGuiStyleVar_TreeLinesRounding: c_int = 33;
pub const ImGuiStyleVar_ButtonTextAlign: c_int = 34;
pub const ImGuiStyleVar_SelectableTextAlign: c_int = 35;
pub const ImGuiStyleVar_SeparatorTextBorderSize: c_int = 36;
pub const ImGuiStyleVar_SeparatorTextAlign: c_int = 37;
pub const ImGuiStyleVar_SeparatorTextPadding: c_int = 38;
pub const ImGuiStyleVar_DockingSeparatorSize: c_int = 39;
pub const ImGuiStyleVar_COUNT: c_int = 40;
pub const ImGuiStyleVar_ = c_uint;
pub const ImGuiButtonFlags_None: c_int = 0;
pub const ImGuiButtonFlags_MouseButtonLeft: c_int = 1;
pub const ImGuiButtonFlags_MouseButtonRight: c_int = 2;
pub const ImGuiButtonFlags_MouseButtonMiddle: c_int = 4;
pub const ImGuiButtonFlags_MouseButtonMask_: c_int = 7;
pub const ImGuiButtonFlags_EnableNav: c_int = 8;
pub const ImGuiButtonFlags_ = c_uint;
pub const ImGuiColorEditFlags_None: c_int = 0;
pub const ImGuiColorEditFlags_NoAlpha: c_int = 2;
pub const ImGuiColorEditFlags_NoPicker: c_int = 4;
pub const ImGuiColorEditFlags_NoOptions: c_int = 8;
pub const ImGuiColorEditFlags_NoSmallPreview: c_int = 16;
pub const ImGuiColorEditFlags_NoInputs: c_int = 32;
pub const ImGuiColorEditFlags_NoTooltip: c_int = 64;
pub const ImGuiColorEditFlags_NoLabel: c_int = 128;
pub const ImGuiColorEditFlags_NoSidePreview: c_int = 256;
pub const ImGuiColorEditFlags_NoDragDrop: c_int = 512;
pub const ImGuiColorEditFlags_NoBorder: c_int = 1024;
pub const ImGuiColorEditFlags_AlphaOpaque: c_int = 2048;
pub const ImGuiColorEditFlags_AlphaNoBg: c_int = 4096;
pub const ImGuiColorEditFlags_AlphaPreviewHalf: c_int = 8192;
pub const ImGuiColorEditFlags_AlphaBar: c_int = 65536;
pub const ImGuiColorEditFlags_HDR: c_int = 524288;
pub const ImGuiColorEditFlags_DisplayRGB: c_int = 1048576;
pub const ImGuiColorEditFlags_DisplayHSV: c_int = 2097152;
pub const ImGuiColorEditFlags_DisplayHex: c_int = 4194304;
pub const ImGuiColorEditFlags_Uint8: c_int = 8388608;
pub const ImGuiColorEditFlags_Float: c_int = 16777216;
pub const ImGuiColorEditFlags_PickerHueBar: c_int = 33554432;
pub const ImGuiColorEditFlags_PickerHueWheel: c_int = 67108864;
pub const ImGuiColorEditFlags_InputRGB: c_int = 134217728;
pub const ImGuiColorEditFlags_InputHSV: c_int = 268435456;
pub const ImGuiColorEditFlags_DefaultOptions_: c_int = 177209344;
pub const ImGuiColorEditFlags_AlphaMask_: c_int = 14338;
pub const ImGuiColorEditFlags_DisplayMask_: c_int = 7340032;
pub const ImGuiColorEditFlags_DataTypeMask_: c_int = 25165824;
pub const ImGuiColorEditFlags_PickerMask_: c_int = 100663296;
pub const ImGuiColorEditFlags_InputMask_: c_int = 402653184;
pub const ImGuiColorEditFlags_ = c_uint;
pub const ImGuiSliderFlags_None: c_int = 0;
pub const ImGuiSliderFlags_Logarithmic: c_int = 32;
pub const ImGuiSliderFlags_NoRoundToFormat: c_int = 64;
pub const ImGuiSliderFlags_NoInput: c_int = 128;
pub const ImGuiSliderFlags_WrapAround: c_int = 256;
pub const ImGuiSliderFlags_ClampOnInput: c_int = 512;
pub const ImGuiSliderFlags_ClampZeroRange: c_int = 1024;
pub const ImGuiSliderFlags_NoSpeedTweaks: c_int = 2048;
pub const ImGuiSliderFlags_AlwaysClamp: c_int = 1536;
pub const ImGuiSliderFlags_InvalidMask_: c_int = 1879048207;
pub const ImGuiSliderFlags_ = c_uint;
pub const ImGuiMouseButton_Left: c_int = 0;
pub const ImGuiMouseButton_Right: c_int = 1;
pub const ImGuiMouseButton_Middle: c_int = 2;
pub const ImGuiMouseButton_COUNT: c_int = 5;
pub const ImGuiMouseButton_ = c_uint;
pub const ImGuiMouseCursor_None: c_int = -1;
pub const ImGuiMouseCursor_Arrow: c_int = 0;
pub const ImGuiMouseCursor_TextInput: c_int = 1;
pub const ImGuiMouseCursor_ResizeAll: c_int = 2;
pub const ImGuiMouseCursor_ResizeNS: c_int = 3;
pub const ImGuiMouseCursor_ResizeEW: c_int = 4;
pub const ImGuiMouseCursor_ResizeNESW: c_int = 5;
pub const ImGuiMouseCursor_ResizeNWSE: c_int = 6;
pub const ImGuiMouseCursor_Hand: c_int = 7;
pub const ImGuiMouseCursor_Wait: c_int = 8;
pub const ImGuiMouseCursor_Progress: c_int = 9;
pub const ImGuiMouseCursor_NotAllowed: c_int = 10;
pub const ImGuiMouseCursor_COUNT: c_int = 11;
pub const ImGuiMouseCursor_ = c_int;
pub const ImGuiMouseSource_Mouse: c_int = 0;
pub const ImGuiMouseSource_TouchScreen: c_int = 1;
pub const ImGuiMouseSource_Pen: c_int = 2;
pub const ImGuiMouseSource_COUNT: c_int = 3;
pub const ImGuiMouseSource = c_uint;
pub const ImGuiCond_None: c_int = 0;
pub const ImGuiCond_Always: c_int = 1;
pub const ImGuiCond_Once: c_int = 2;
pub const ImGuiCond_FirstUseEver: c_int = 4;
pub const ImGuiCond_Appearing: c_int = 8;
pub const ImGuiCond_ = c_uint;
pub const ImGuiTableFlags_None: c_int = 0;
pub const ImGuiTableFlags_Resizable: c_int = 1;
pub const ImGuiTableFlags_Reorderable: c_int = 2;
pub const ImGuiTableFlags_Hideable: c_int = 4;
pub const ImGuiTableFlags_Sortable: c_int = 8;
pub const ImGuiTableFlags_NoSavedSettings: c_int = 16;
pub const ImGuiTableFlags_ContextMenuInBody: c_int = 32;
pub const ImGuiTableFlags_RowBg: c_int = 64;
pub const ImGuiTableFlags_BordersInnerH: c_int = 128;
pub const ImGuiTableFlags_BordersOuterH: c_int = 256;
pub const ImGuiTableFlags_BordersInnerV: c_int = 512;
pub const ImGuiTableFlags_BordersOuterV: c_int = 1024;
pub const ImGuiTableFlags_BordersH: c_int = 384;
pub const ImGuiTableFlags_BordersV: c_int = 1536;
pub const ImGuiTableFlags_BordersInner: c_int = 640;
pub const ImGuiTableFlags_BordersOuter: c_int = 1280;
pub const ImGuiTableFlags_Borders: c_int = 1920;
pub const ImGuiTableFlags_NoBordersInBody: c_int = 2048;
pub const ImGuiTableFlags_NoBordersInBodyUntilResize: c_int = 4096;
pub const ImGuiTableFlags_SizingFixedFit: c_int = 8192;
pub const ImGuiTableFlags_SizingFixedSame: c_int = 16384;
pub const ImGuiTableFlags_SizingStretchProp: c_int = 24576;
pub const ImGuiTableFlags_SizingStretchSame: c_int = 32768;
pub const ImGuiTableFlags_NoHostExtendX: c_int = 65536;
pub const ImGuiTableFlags_NoHostExtendY: c_int = 131072;
pub const ImGuiTableFlags_NoKeepColumnsVisible: c_int = 262144;
pub const ImGuiTableFlags_PreciseWidths: c_int = 524288;
pub const ImGuiTableFlags_NoClip: c_int = 1048576;
pub const ImGuiTableFlags_PadOuterX: c_int = 2097152;
pub const ImGuiTableFlags_NoPadOuterX: c_int = 4194304;
pub const ImGuiTableFlags_NoPadInnerX: c_int = 8388608;
pub const ImGuiTableFlags_ScrollX: c_int = 16777216;
pub const ImGuiTableFlags_ScrollY: c_int = 33554432;
pub const ImGuiTableFlags_SortMulti: c_int = 67108864;
pub const ImGuiTableFlags_SortTristate: c_int = 134217728;
pub const ImGuiTableFlags_HighlightHoveredColumn: c_int = 268435456;
pub const ImGuiTableFlags_SizingMask_: c_int = 57344;
pub const ImGuiTableFlags_ = c_uint;
pub const ImGuiTableColumnFlags_None: c_int = 0;
pub const ImGuiTableColumnFlags_Disabled: c_int = 1;
pub const ImGuiTableColumnFlags_DefaultHide: c_int = 2;
pub const ImGuiTableColumnFlags_DefaultSort: c_int = 4;
pub const ImGuiTableColumnFlags_WidthStretch: c_int = 8;
pub const ImGuiTableColumnFlags_WidthFixed: c_int = 16;
pub const ImGuiTableColumnFlags_NoResize: c_int = 32;
pub const ImGuiTableColumnFlags_NoReorder: c_int = 64;
pub const ImGuiTableColumnFlags_NoHide: c_int = 128;
pub const ImGuiTableColumnFlags_NoClip: c_int = 256;
pub const ImGuiTableColumnFlags_NoSort: c_int = 512;
pub const ImGuiTableColumnFlags_NoSortAscending: c_int = 1024;
pub const ImGuiTableColumnFlags_NoSortDescending: c_int = 2048;
pub const ImGuiTableColumnFlags_NoHeaderLabel: c_int = 4096;
pub const ImGuiTableColumnFlags_NoHeaderWidth: c_int = 8192;
pub const ImGuiTableColumnFlags_PreferSortAscending: c_int = 16384;
pub const ImGuiTableColumnFlags_PreferSortDescending: c_int = 32768;
pub const ImGuiTableColumnFlags_IndentEnable: c_int = 65536;
pub const ImGuiTableColumnFlags_IndentDisable: c_int = 131072;
pub const ImGuiTableColumnFlags_AngledHeader: c_int = 262144;
pub const ImGuiTableColumnFlags_IsEnabled: c_int = 16777216;
pub const ImGuiTableColumnFlags_IsVisible: c_int = 33554432;
pub const ImGuiTableColumnFlags_IsSorted: c_int = 67108864;
pub const ImGuiTableColumnFlags_IsHovered: c_int = 134217728;
pub const ImGuiTableColumnFlags_WidthMask_: c_int = 24;
pub const ImGuiTableColumnFlags_IndentMask_: c_int = 196608;
pub const ImGuiTableColumnFlags_StatusMask_: c_int = 251658240;
pub const ImGuiTableColumnFlags_NoDirectResize_: c_int = 1073741824;
pub const ImGuiTableColumnFlags_ = c_uint;
pub const ImGuiTableRowFlags_None: c_int = 0;
pub const ImGuiTableRowFlags_Headers: c_int = 1;
pub const ImGuiTableRowFlags_ = c_uint;
pub const ImGuiTableBgTarget_None: c_int = 0;
pub const ImGuiTableBgTarget_RowBg0: c_int = 1;
pub const ImGuiTableBgTarget_RowBg1: c_int = 2;
pub const ImGuiTableBgTarget_CellBg: c_int = 3;
pub const ImGuiTableBgTarget_ = c_uint;
pub const ImGuiListClipperFlags_None: c_int = 0;
pub const ImGuiListClipperFlags_NoSetTableRowCounters: c_int = 1;
pub const ImGuiListClipperFlags_ = c_uint;
pub const ImGuiMultiSelectFlags_None: c_int = 0;
pub const ImGuiMultiSelectFlags_SingleSelect: c_int = 1;
pub const ImGuiMultiSelectFlags_NoSelectAll: c_int = 2;
pub const ImGuiMultiSelectFlags_NoRangeSelect: c_int = 4;
pub const ImGuiMultiSelectFlags_NoAutoSelect: c_int = 8;
pub const ImGuiMultiSelectFlags_NoAutoClear: c_int = 16;
pub const ImGuiMultiSelectFlags_NoAutoClearOnReselect: c_int = 32;
pub const ImGuiMultiSelectFlags_BoxSelect1d: c_int = 64;
pub const ImGuiMultiSelectFlags_BoxSelect2d: c_int = 128;
pub const ImGuiMultiSelectFlags_BoxSelectNoScroll: c_int = 256;
pub const ImGuiMultiSelectFlags_ClearOnEscape: c_int = 512;
pub const ImGuiMultiSelectFlags_ClearOnClickVoid: c_int = 1024;
pub const ImGuiMultiSelectFlags_ScopeWindow: c_int = 2048;
pub const ImGuiMultiSelectFlags_ScopeRect: c_int = 4096;
pub const ImGuiMultiSelectFlags_SelectOnClick: c_int = 8192;
pub const ImGuiMultiSelectFlags_SelectOnClickRelease: c_int = 16384;
pub const ImGuiMultiSelectFlags_NavWrapX: c_int = 65536;
pub const ImGuiMultiSelectFlags_NoSelectOnRightClick: c_int = 131072;
pub const ImGuiMultiSelectFlags_ = c_uint;
pub const ImGuiSelectionRequestType_None: c_int = 0;
pub const ImGuiSelectionRequestType_SetAll: c_int = 1;
pub const ImGuiSelectionRequestType_SetRange: c_int = 2;
pub const ImGuiSelectionRequestType = c_uint;
pub const ImDrawFlags_None: c_int = 0;
pub const ImDrawFlags_Closed: c_int = 1;
pub const ImDrawFlags_RoundCornersTopLeft: c_int = 16;
pub const ImDrawFlags_RoundCornersTopRight: c_int = 32;
pub const ImDrawFlags_RoundCornersBottomLeft: c_int = 64;
pub const ImDrawFlags_RoundCornersBottomRight: c_int = 128;
pub const ImDrawFlags_RoundCornersNone: c_int = 256;
pub const ImDrawFlags_RoundCornersTop: c_int = 48;
pub const ImDrawFlags_RoundCornersBottom: c_int = 192;
pub const ImDrawFlags_RoundCornersLeft: c_int = 80;
pub const ImDrawFlags_RoundCornersRight: c_int = 160;
pub const ImDrawFlags_RoundCornersAll: c_int = 240;
pub const ImDrawFlags_RoundCornersDefault_: c_int = 240;
pub const ImDrawFlags_RoundCornersMask_: c_int = 496;
pub const ImDrawFlags_ = c_uint;
pub const ImDrawListFlags_None: c_int = 0;
pub const ImDrawListFlags_AntiAliasedLines: c_int = 1;
pub const ImDrawListFlags_AntiAliasedLinesUseTex: c_int = 2;
pub const ImDrawListFlags_AntiAliasedFill: c_int = 4;
pub const ImDrawListFlags_AllowVtxOffset: c_int = 8;
pub const ImDrawListFlags_ = c_uint;
pub const ImTextureFormat_RGBA32: c_int = 0;
pub const ImTextureFormat_Alpha8: c_int = 1;
pub const ImTextureFormat = c_uint;
pub const ImTextureStatus_OK: c_int = 0;
pub const ImTextureStatus_Destroyed: c_int = 1;
pub const ImTextureStatus_WantCreate: c_int = 2;
pub const ImTextureStatus_WantUpdates: c_int = 3;
pub const ImTextureStatus_WantDestroy: c_int = 4;
pub const ImTextureStatus = c_uint;
pub const ImFontAtlasFlags_None: c_int = 0;
pub const ImFontAtlasFlags_NoPowerOfTwoHeight: c_int = 1;
pub const ImFontAtlasFlags_NoMouseCursors: c_int = 2;
pub const ImFontAtlasFlags_NoBakedLines: c_int = 4;
pub const ImFontAtlasFlags_ = c_uint;
pub const ImFontFlags_None: c_int = 0;
pub const ImFontFlags_NoLoadError: c_int = 2;
pub const ImFontFlags_NoLoadGlyphs: c_int = 4;
pub const ImFontFlags_LockBakedSizes: c_int = 8;
pub const ImFontFlags_ = c_uint;
pub const ImGuiViewportFlags_None: c_int = 0;
pub const ImGuiViewportFlags_IsPlatformWindow: c_int = 1;
pub const ImGuiViewportFlags_IsPlatformMonitor: c_int = 2;
pub const ImGuiViewportFlags_OwnedByApp: c_int = 4;
pub const ImGuiViewportFlags_NoDecoration: c_int = 8;
pub const ImGuiViewportFlags_NoTaskBarIcon: c_int = 16;
pub const ImGuiViewportFlags_NoFocusOnAppearing: c_int = 32;
pub const ImGuiViewportFlags_NoFocusOnClick: c_int = 64;
pub const ImGuiViewportFlags_NoInputs: c_int = 128;
pub const ImGuiViewportFlags_NoRendererClear: c_int = 256;
pub const ImGuiViewportFlags_NoAutoMerge: c_int = 512;
pub const ImGuiViewportFlags_TopMost: c_int = 1024;
pub const ImGuiViewportFlags_CanHostOtherWindows: c_int = 2048;
pub const ImGuiViewportFlags_IsMinimized: c_int = 4096;
pub const ImGuiViewportFlags_IsFocused: c_int = 8192;
pub const ImGuiViewportFlags_ = c_uint;
pub const ImGuiDataAuthority = c_int;
pub const ImGuiFocusRequestFlags = c_int;
pub const ImGuiNavRenderCursorFlags = c_int;
pub const ImGuiSeparatorFlags = c_int;
pub const ImGuiTextFlags = c_int;
pub const ImGuiTooltipFlags = c_int;
pub const ImGuiWindowBgClickFlags = c_int;
pub extern var GImGui: ?*ImGuiContext;
pub const ImDrawTextFlags_None: c_int = 0;
pub const ImDrawTextFlags_CpuFineClip: c_int = 1;
pub const ImDrawTextFlags_WrapKeepBlanks: c_int = 2;
pub const ImDrawTextFlags_StopOnNewLine: c_int = 4;
pub const ImDrawTextFlags_ = c_uint;
pub const ImGuiDataType_Pointer: c_int = 12;
pub const ImGuiDataType_ID: c_int = 13;
pub const ImGuiDataTypePrivate_ = c_uint;
pub const ImGuiItemFlags_Disabled: c_int = 1024;
pub const ImGuiItemFlags_ReadOnly: c_int = 2048;
pub const ImGuiItemFlags_MixedValue: c_int = 4096;
pub const ImGuiItemFlags_NoWindowHoverableCheck: c_int = 8192;
pub const ImGuiItemFlags_AllowOverlap: c_int = 16384;
pub const ImGuiItemFlags_NoNavDisableMouseHover: c_int = 32768;
pub const ImGuiItemFlags_NoMarkEdited: c_int = 65536;
pub const ImGuiItemFlags_NoFocus: c_int = 131072;
pub const ImGuiItemFlags_Inputable: c_int = 1048576;
pub const ImGuiItemFlags_HasSelectionUserData: c_int = 2097152;
pub const ImGuiItemFlags_IsMultiSelect: c_int = 4194304;
pub const ImGuiItemFlags_Default_: c_int = 16;
pub const ImGuiItemFlagsPrivate_ = c_uint;
pub const ImGuiItemStatusFlags_None: c_int = 0;
pub const ImGuiItemStatusFlags_HoveredRect: c_int = 1;
pub const ImGuiItemStatusFlags_HasDisplayRect: c_int = 2;
pub const ImGuiItemStatusFlags_Edited: c_int = 4;
pub const ImGuiItemStatusFlags_ToggledSelection: c_int = 8;
pub const ImGuiItemStatusFlags_ToggledOpen: c_int = 16;
pub const ImGuiItemStatusFlags_HasDeactivated: c_int = 32;
pub const ImGuiItemStatusFlags_Deactivated: c_int = 64;
pub const ImGuiItemStatusFlags_HoveredWindow: c_int = 128;
pub const ImGuiItemStatusFlags_Visible: c_int = 256;
pub const ImGuiItemStatusFlags_HasClipRect: c_int = 512;
pub const ImGuiItemStatusFlags_HasShortcut: c_int = 1024;
pub const ImGuiItemStatusFlags_ = c_uint;
pub const ImGuiHoveredFlags_DelayMask_: c_int = 245760;
pub const ImGuiHoveredFlags_AllowedMaskForIsWindowHovered: c_int = 12479;
pub const ImGuiHoveredFlags_AllowedMaskForIsItemHovered: c_int = 262048;
pub const ImGuiHoveredFlagsPrivate_ = c_uint;
pub const ImGuiInputTextFlags_Multiline: c_int = 67108864;
pub const ImGuiInputTextFlags_MergedItem: c_int = 134217728;
pub const ImGuiInputTextFlags_LocalizeDecimalPoint: c_int = 268435456;
pub const ImGuiInputTextFlagsPrivate_ = c_uint;
pub const ImGuiButtonFlags_PressedOnClick: c_int = 16;
pub const ImGuiButtonFlags_PressedOnClickRelease: c_int = 32;
pub const ImGuiButtonFlags_PressedOnClickReleaseAnywhere: c_int = 64;
pub const ImGuiButtonFlags_PressedOnRelease: c_int = 128;
pub const ImGuiButtonFlags_PressedOnDoubleClick: c_int = 256;
pub const ImGuiButtonFlags_PressedOnDragDropHold: c_int = 512;
pub const ImGuiButtonFlags_FlattenChildren: c_int = 2048;
pub const ImGuiButtonFlags_AllowOverlap: c_int = 4096;
pub const ImGuiButtonFlags_AlignTextBaseLine: c_int = 32768;
pub const ImGuiButtonFlags_NoKeyModsAllowed: c_int = 65536;
pub const ImGuiButtonFlags_NoHoldingActiveId: c_int = 131072;
pub const ImGuiButtonFlags_NoNavFocus: c_int = 262144;
pub const ImGuiButtonFlags_NoHoveredOnFocus: c_int = 524288;
pub const ImGuiButtonFlags_NoSetKeyOwner: c_int = 1048576;
pub const ImGuiButtonFlags_NoTestKeyOwner: c_int = 2097152;
pub const ImGuiButtonFlags_NoFocus: c_int = 4194304;
pub const ImGuiButtonFlags_PressedOnMask_: c_int = 1008;
pub const ImGuiButtonFlags_PressedOnDefault_: c_int = 32;
pub const ImGuiButtonFlagsPrivate_ = c_uint;
pub const ImGuiComboFlags_CustomPreview: c_int = 1048576;
pub const ImGuiComboFlagsPrivate_ = c_uint;
pub const ImGuiSliderFlags_Vertical: c_int = 1048576;
pub const ImGuiSliderFlags_ReadOnly: c_int = 2097152;
pub const ImGuiSliderFlagsPrivate_ = c_uint;
pub const ImGuiSelectableFlags_NoHoldingActiveID: c_int = 1048576;
pub const ImGuiSelectableFlags_SelectOnClick: c_int = 4194304;
pub const ImGuiSelectableFlags_SelectOnRelease: c_int = 8388608;
pub const ImGuiSelectableFlags_SpanAvailWidth: c_int = 16777216;
pub const ImGuiSelectableFlags_SetNavIdOnHover: c_int = 33554432;
pub const ImGuiSelectableFlags_NoPadWithHalfSpacing: c_int = 67108864;
pub const ImGuiSelectableFlags_NoSetKeyOwner: c_int = 134217728;
pub const ImGuiSelectableFlagsPrivate_ = c_uint;
pub const ImGuiTreeNodeFlags_NoNavFocus: c_int = 134217728;
pub const ImGuiTreeNodeFlags_ClipLabelForTrailingButton: c_int = 268435456;
pub const ImGuiTreeNodeFlags_UpsideDownArrow: c_int = 536870912;
pub const ImGuiTreeNodeFlags_OpenOnMask_: c_int = 192;
pub const ImGuiTreeNodeFlags_DrawLinesMask_: c_int = 1835008;
pub const ImGuiTreeNodeFlagsPrivate_ = c_uint;
pub const ImGuiSeparatorFlags_None: c_int = 0;
pub const ImGuiSeparatorFlags_Horizontal: c_int = 1;
pub const ImGuiSeparatorFlags_Vertical: c_int = 2;
pub const ImGuiSeparatorFlags_SpanAllColumns: c_int = 4;
pub const ImGuiSeparatorFlags_ = c_uint;
pub const ImGuiFocusRequestFlags_None: c_int = 0;
pub const ImGuiFocusRequestFlags_RestoreFocusedChild: c_int = 1;
pub const ImGuiFocusRequestFlags_UnlessBelowModal: c_int = 2;
pub const ImGuiFocusRequestFlags_ = c_uint;
pub const ImGuiTextFlags_None: c_int = 0;
pub const ImGuiTextFlags_NoWidthForLargeClippedText: c_int = 1;
pub const ImGuiTextFlags_ = c_uint;
pub const ImGuiTooltipFlags_None: c_int = 0;
pub const ImGuiTooltipFlags_OverridePrevious: c_int = 2;
pub const ImGuiTooltipFlags_ = c_uint;
pub const ImGuiLayoutType_Horizontal: c_int = 0;
pub const ImGuiLayoutType_Vertical: c_int = 1;
pub const ImGuiLayoutType_ = c_uint;
pub const ImGuiLogFlags_None: c_int = 0;
pub const ImGuiLogFlags_OutputTTY: c_int = 1;
pub const ImGuiLogFlags_OutputFile: c_int = 2;
pub const ImGuiLogFlags_OutputBuffer: c_int = 4;
pub const ImGuiLogFlags_OutputClipboard: c_int = 8;
pub const ImGuiLogFlags_OutputMask_: c_int = 15;
pub const ImGuiLogFlags_ = c_uint;
pub const ImGuiAxis_None: c_int = -1;
pub const ImGuiAxis_X: c_int = 0;
pub const ImGuiAxis_Y: c_int = 1;
pub const ImGuiAxis = c_int;
pub const ImGuiPlotType_Lines: c_int = 0;
pub const ImGuiPlotType_Histogram: c_int = 1;
pub const ImGuiPlotType = c_uint;
pub const ImGuiWindowRefreshFlags_None: c_int = 0;
pub const ImGuiWindowRefreshFlags_TryToAvoidRefresh: c_int = 1;
pub const ImGuiWindowRefreshFlags_RefreshOnHover: c_int = 2;
pub const ImGuiWindowRefreshFlags_RefreshOnFocus: c_int = 4;
pub const ImGuiWindowRefreshFlags_ = c_uint;
pub const ImGuiWindowBgClickFlags_None: c_int = 0;
pub const ImGuiWindowBgClickFlags_Move: c_int = 1;
pub const ImGuiWindowBgClickFlags_ = c_uint;
pub const ImGuiNextWindowDataFlags_None: c_int = 0;
pub const ImGuiNextWindowDataFlags_HasPos: c_int = 1;
pub const ImGuiNextWindowDataFlags_HasSize: c_int = 2;
pub const ImGuiNextWindowDataFlags_HasContentSize: c_int = 4;
pub const ImGuiNextWindowDataFlags_HasCollapsed: c_int = 8;
pub const ImGuiNextWindowDataFlags_HasSizeConstraint: c_int = 16;
pub const ImGuiNextWindowDataFlags_HasFocus: c_int = 32;
pub const ImGuiNextWindowDataFlags_HasBgAlpha: c_int = 64;
pub const ImGuiNextWindowDataFlags_HasScroll: c_int = 128;
pub const ImGuiNextWindowDataFlags_HasWindowFlags: c_int = 256;
pub const ImGuiNextWindowDataFlags_HasChildFlags: c_int = 512;
pub const ImGuiNextWindowDataFlags_HasRefreshPolicy: c_int = 1024;
pub const ImGuiNextWindowDataFlags_HasViewport: c_int = 2048;
pub const ImGuiNextWindowDataFlags_HasDock: c_int = 4096;
pub const ImGuiNextWindowDataFlags_HasWindowClass: c_int = 8192;
pub const ImGuiNextWindowDataFlags_ = c_uint;
pub const ImGuiNextItemDataFlags_None: c_int = 0;
pub const ImGuiNextItemDataFlags_HasWidth: c_int = 1;
pub const ImGuiNextItemDataFlags_HasOpen: c_int = 2;
pub const ImGuiNextItemDataFlags_HasShortcut: c_int = 4;
pub const ImGuiNextItemDataFlags_HasRefVal: c_int = 8;
pub const ImGuiNextItemDataFlags_HasStorageID: c_int = 16;
pub const ImGuiNextItemDataFlags_ = c_uint;
pub const ImGuiPopupPositionPolicy_Default: c_int = 0;
pub const ImGuiPopupPositionPolicy_ComboBox: c_int = 1;
pub const ImGuiPopupPositionPolicy_Tooltip: c_int = 2;
pub const ImGuiPopupPositionPolicy = c_uint;
pub const ImGuiInputEventType_None: c_int = 0;
pub const ImGuiInputEventType_MousePos: c_int = 1;
pub const ImGuiInputEventType_MouseWheel: c_int = 2;
pub const ImGuiInputEventType_MouseButton: c_int = 3;
pub const ImGuiInputEventType_MouseViewport: c_int = 4;
pub const ImGuiInputEventType_Key: c_int = 5;
pub const ImGuiInputEventType_Text: c_int = 6;
pub const ImGuiInputEventType_Focus: c_int = 7;
pub const ImGuiInputEventType_COUNT: c_int = 8;
pub const ImGuiInputEventType = c_uint;
pub const ImGuiInputSource_None: c_int = 0;
pub const ImGuiInputSource_Mouse: c_int = 1;
pub const ImGuiInputSource_Keyboard: c_int = 2;
pub const ImGuiInputSource_Gamepad: c_int = 3;
pub const ImGuiInputSource_COUNT: c_int = 4;
pub const ImGuiInputSource = c_uint;
pub const ImGuiInputFlags_RepeatRateDefault: c_int = 2;
pub const ImGuiInputFlags_RepeatRateNavMove: c_int = 4;
pub const ImGuiInputFlags_RepeatRateNavTweak: c_int = 8;
pub const ImGuiInputFlags_RepeatUntilRelease: c_int = 16;
pub const ImGuiInputFlags_RepeatUntilKeyModsChange: c_int = 32;
pub const ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone: c_int = 64;
pub const ImGuiInputFlags_RepeatUntilOtherKeyPress: c_int = 128;
pub const ImGuiInputFlags_LockThisFrame: c_int = 1048576;
pub const ImGuiInputFlags_LockUntilRelease: c_int = 2097152;
pub const ImGuiInputFlags_CondHovered: c_int = 4194304;
pub const ImGuiInputFlags_CondActive: c_int = 8388608;
pub const ImGuiInputFlags_CondDefault_: c_int = 12582912;
pub const ImGuiInputFlags_RepeatRateMask_: c_int = 14;
pub const ImGuiInputFlags_RepeatUntilMask_: c_int = 240;
pub const ImGuiInputFlags_RepeatMask_: c_int = 255;
pub const ImGuiInputFlags_CondMask_: c_int = 12582912;
pub const ImGuiInputFlags_RouteTypeMask_: c_int = 15360;
pub const ImGuiInputFlags_RouteOptionsMask_: c_int = 245760;
pub const ImGuiInputFlags_SupportedByIsKeyPressed: c_int = 255;
pub const ImGuiInputFlags_SupportedByIsMouseClicked: c_int = 1;
pub const ImGuiInputFlags_SupportedByShortcut: c_int = 261375;
pub const ImGuiInputFlags_SupportedBySetNextItemShortcut: c_int = 523519;
pub const ImGuiInputFlags_SupportedBySetKeyOwner: c_int = 3145728;
pub const ImGuiInputFlags_SupportedBySetItemKeyOwner: c_int = 15728640;
pub const ImGuiInputFlagsPrivate_ = c_uint;
pub const ImGuiActivateFlags_None: c_int = 0;
pub const ImGuiActivateFlags_PreferInput: c_int = 1;
pub const ImGuiActivateFlags_PreferTweak: c_int = 2;
pub const ImGuiActivateFlags_TryToPreserveState: c_int = 4;
pub const ImGuiActivateFlags_FromTabbing: c_int = 8;
pub const ImGuiActivateFlags_FromShortcut: c_int = 16;
pub const ImGuiActivateFlags_FromFocusApi: c_int = 32;
pub const ImGuiActivateFlags_ = c_uint;
pub const ImGuiScrollFlags_None: c_int = 0;
pub const ImGuiScrollFlags_KeepVisibleEdgeX: c_int = 1;
pub const ImGuiScrollFlags_KeepVisibleEdgeY: c_int = 2;
pub const ImGuiScrollFlags_KeepVisibleCenterX: c_int = 4;
pub const ImGuiScrollFlags_KeepVisibleCenterY: c_int = 8;
pub const ImGuiScrollFlags_AlwaysCenterX: c_int = 16;
pub const ImGuiScrollFlags_AlwaysCenterY: c_int = 32;
pub const ImGuiScrollFlags_NoScrollParent: c_int = 64;
pub const ImGuiScrollFlags_MaskX_: c_int = 21;
pub const ImGuiScrollFlags_MaskY_: c_int = 42;
pub const ImGuiScrollFlags_ = c_uint;
pub const ImGuiNavRenderCursorFlags_None: c_int = 0;
pub const ImGuiNavRenderCursorFlags_Compact: c_int = 2;
pub const ImGuiNavRenderCursorFlags_AlwaysDraw: c_int = 4;
pub const ImGuiNavRenderCursorFlags_NoRounding: c_int = 8;
pub const ImGuiNavRenderCursorFlags_ = c_uint;
pub const ImGuiNavMoveFlags_None: c_int = 0;
pub const ImGuiNavMoveFlags_LoopX: c_int = 1;
pub const ImGuiNavMoveFlags_LoopY: c_int = 2;
pub const ImGuiNavMoveFlags_WrapX: c_int = 4;
pub const ImGuiNavMoveFlags_WrapY: c_int = 8;
pub const ImGuiNavMoveFlags_WrapMask_: c_int = 15;
pub const ImGuiNavMoveFlags_AllowCurrentNavId: c_int = 16;
pub const ImGuiNavMoveFlags_AlsoScoreVisibleSet: c_int = 32;
pub const ImGuiNavMoveFlags_ScrollToEdgeY: c_int = 64;
pub const ImGuiNavMoveFlags_Forwarded: c_int = 128;
pub const ImGuiNavMoveFlags_DebugNoResult: c_int = 256;
pub const ImGuiNavMoveFlags_FocusApi: c_int = 512;
pub const ImGuiNavMoveFlags_IsTabbing: c_int = 1024;
pub const ImGuiNavMoveFlags_IsPageMove: c_int = 2048;
pub const ImGuiNavMoveFlags_Activate: c_int = 4096;
pub const ImGuiNavMoveFlags_NoSelect: c_int = 8192;
pub const ImGuiNavMoveFlags_NoSetNavCursorVisible: c_int = 16384;
pub const ImGuiNavMoveFlags_NoClearActiveId: c_int = 32768;
pub const ImGuiNavMoveFlags_ = c_uint;
pub const ImGuiNavLayer_Main: c_int = 0;
pub const ImGuiNavLayer_Menu: c_int = 1;
pub const ImGuiNavLayer_COUNT: c_int = 2;
pub const ImGuiNavLayer = c_uint;
pub const ImGuiTypingSelectFlags_None: c_int = 0;
pub const ImGuiTypingSelectFlags_AllowBackspace: c_int = 1;
pub const ImGuiTypingSelectFlags_AllowSingleCharMode: c_int = 2;
pub const ImGuiTypingSelectFlags_ = c_uint;
pub const ImGuiOldColumnFlags_None: c_int = 0;
pub const ImGuiOldColumnFlags_NoBorder: c_int = 1;
pub const ImGuiOldColumnFlags_NoResize: c_int = 2;
pub const ImGuiOldColumnFlags_NoPreserveWidths: c_int = 4;
pub const ImGuiOldColumnFlags_NoForceWithinWindow: c_int = 8;
pub const ImGuiOldColumnFlags_GrowParentContentsSize: c_int = 16;
pub const ImGuiOldColumnFlags_ = c_uint;
pub const ImGuiDockNodeFlags_DockSpace: c_int = 1024;
pub const ImGuiDockNodeFlags_CentralNode: c_int = 2048;
pub const ImGuiDockNodeFlags_NoTabBar: c_int = 4096;
pub const ImGuiDockNodeFlags_HiddenTabBar: c_int = 8192;
pub const ImGuiDockNodeFlags_NoWindowMenuButton: c_int = 16384;
pub const ImGuiDockNodeFlags_NoCloseButton: c_int = 32768;
pub const ImGuiDockNodeFlags_NoResizeX: c_int = 65536;
pub const ImGuiDockNodeFlags_NoResizeY: c_int = 131072;
pub const ImGuiDockNodeFlags_DockedWindowsInFocusRoute: c_int = 262144;
pub const ImGuiDockNodeFlags_NoDockingSplitOther: c_int = 524288;
pub const ImGuiDockNodeFlags_NoDockingOverMe: c_int = 1048576;
pub const ImGuiDockNodeFlags_NoDockingOverOther: c_int = 2097152;
pub const ImGuiDockNodeFlags_NoDockingOverEmpty: c_int = 4194304;
pub const ImGuiDockNodeFlags_NoDocking: c_int = 7864336;
pub const ImGuiDockNodeFlags_SharedFlagsInheritMask_: c_int = -1;
pub const ImGuiDockNodeFlags_NoResizeFlagsMask_: c_int = 196640;
pub const ImGuiDockNodeFlags_LocalFlagsTransferMask_: c_int = 260208;
pub const ImGuiDockNodeFlags_SavedFlagsMask_: c_int = 261152;
pub const ImGuiDockNodeFlagsPrivate_ = c_int;
pub const ImGuiDataAuthority_Auto: c_int = 0;
pub const ImGuiDataAuthority_DockNode: c_int = 1;
pub const ImGuiDataAuthority_Window: c_int = 2;
pub const ImGuiDataAuthority_ = c_uint;
pub const ImGuiDockNodeState_Unknown: c_int = 0;
pub const ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow: c_int = 1;
pub const ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing: c_int = 2;
pub const ImGuiDockNodeState_HostWindowVisible: c_int = 3;
pub const ImGuiDockNodeState = c_uint;
pub const ImGuiWindowDockStyleCol_Text: c_int = 0;
pub const ImGuiWindowDockStyleCol_TabHovered: c_int = 1;
pub const ImGuiWindowDockStyleCol_TabFocused: c_int = 2;
pub const ImGuiWindowDockStyleCol_TabSelected: c_int = 3;
pub const ImGuiWindowDockStyleCol_TabSelectedOverline: c_int = 4;
pub const ImGuiWindowDockStyleCol_TabDimmed: c_int = 5;
pub const ImGuiWindowDockStyleCol_TabDimmedSelected: c_int = 6;
pub const ImGuiWindowDockStyleCol_TabDimmedSelectedOverline: c_int = 7;
pub const ImGuiWindowDockStyleCol_UnsavedMarker: c_int = 8;
pub const ImGuiWindowDockStyleCol_COUNT: c_int = 9;
pub const ImGuiWindowDockStyleCol = c_uint;
pub const ImGuiLocKey_VersionStr: c_int = 0;
pub const ImGuiLocKey_TableSizeOne: c_int = 1;
pub const ImGuiLocKey_TableSizeAllFit: c_int = 2;
pub const ImGuiLocKey_TableSizeAllDefault: c_int = 3;
pub const ImGuiLocKey_TableResetOrder: c_int = 4;
pub const ImGuiLocKey_WindowingMainMenuBar: c_int = 5;
pub const ImGuiLocKey_WindowingPopup: c_int = 6;
pub const ImGuiLocKey_WindowingUntitled: c_int = 7;
pub const ImGuiLocKey_OpenLink_s: c_int = 8;
pub const ImGuiLocKey_CopyLink: c_int = 9;
pub const ImGuiLocKey_DockingHideTabBar: c_int = 10;
pub const ImGuiLocKey_DockingHoldShiftToDock: c_int = 11;
pub const ImGuiLocKey_DockingDragToUndockOrMoveNode: c_int = 12;
pub const ImGuiLocKey_COUNT: c_int = 13;
pub const ImGuiLocKey = c_uint;
pub const ImGuiDebugLogFlags_None: c_int = 0;
pub const ImGuiDebugLogFlags_EventError: c_int = 1;
pub const ImGuiDebugLogFlags_EventActiveId: c_int = 2;
pub const ImGuiDebugLogFlags_EventFocus: c_int = 4;
pub const ImGuiDebugLogFlags_EventPopup: c_int = 8;
pub const ImGuiDebugLogFlags_EventNav: c_int = 16;
pub const ImGuiDebugLogFlags_EventClipper: c_int = 32;
pub const ImGuiDebugLogFlags_EventSelection: c_int = 64;
pub const ImGuiDebugLogFlags_EventIO: c_int = 128;
pub const ImGuiDebugLogFlags_EventFont: c_int = 256;
pub const ImGuiDebugLogFlags_EventInputRouting: c_int = 512;
pub const ImGuiDebugLogFlags_EventDocking: c_int = 1024;
pub const ImGuiDebugLogFlags_EventViewport: c_int = 2048;
pub const ImGuiDebugLogFlags_EventMask_: c_int = 4095;
pub const ImGuiDebugLogFlags_OutputToTTY: c_int = 1048576;
pub const ImGuiDebugLogFlags_OutputToTestEngine: c_int = 2097152;
pub const ImGuiDebugLogFlags_ = c_uint;
pub const ImGuiContextHookType_NewFramePre: c_int = 0;
pub const ImGuiContextHookType_NewFramePost: c_int = 1;
pub const ImGuiContextHookType_EndFramePre: c_int = 2;
pub const ImGuiContextHookType_EndFramePost: c_int = 3;
pub const ImGuiContextHookType_RenderPre: c_int = 4;
pub const ImGuiContextHookType_RenderPost: c_int = 5;
pub const ImGuiContextHookType_Shutdown: c_int = 6;
pub const ImGuiContextHookType_PendingRemoval_: c_int = 7;
pub const ImGuiContextHookType = c_uint;
pub const struct_ImVector_ImGuiOldColumns = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiOldColumns = @import("std").mem.zeroes([*c]ImGuiOldColumns),
};
pub const ImVector_ImGuiOldColumns = struct_ImVector_ImGuiOldColumns;
pub const ImGuiTabBarFlags_DockNode: c_int = 1048576;
pub const ImGuiTabBarFlags_IsFocused: c_int = 2097152;
pub const ImGuiTabBarFlags_SaveSettings: c_int = 4194304;
pub const ImGuiTabBarFlagsPrivate_ = c_uint;
pub const ImGuiTabItemFlags_SectionMask_: c_int = 192;
pub const ImGuiTabItemFlags_NoCloseButton: c_int = 1048576;
pub const ImGuiTabItemFlags_Button: c_int = 2097152;
pub const ImGuiTabItemFlags_Invisible: c_int = 4194304;
pub const ImGuiTabItemFlags_Unsorted: c_int = 8388608;
pub const ImGuiTabItemFlagsPrivate_ = c_uint;
pub const struct_ImVector_ImGuiTableInstanceData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableInstanceData = @import("std").mem.zeroes([*c]ImGuiTableInstanceData),
};
pub const ImVector_ImGuiTableInstanceData = struct_ImVector_ImGuiTableInstanceData;
pub const struct_ImVector_ImGuiTableColumnSortSpecs = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableColumnSortSpecs = @import("std").mem.zeroes([*c]ImGuiTableColumnSortSpecs),
};
pub const ImVector_ImGuiTableColumnSortSpecs = struct_ImVector_ImGuiTableColumnSortSpecs;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:3733:10: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTableColumnSettings = opaque {};
pub const ImGuiTableColumnSettings = struct_ImGuiTableColumnSettings;
pub const ImTextureRef = struct_ImTextureRef_c;
pub const ImVec2 = struct_ImVec2_c;
pub const ImVec2i = struct_ImVec2i_c;
pub const ImVec4 = struct_ImVec4_c;
pub const ImColor = struct_ImColor_c;
pub const ImRect = struct_ImRect_c;
pub extern fn ImVec2_ImVec2_Nil() [*c]ImVec2;
pub extern fn ImVec2_destroy(self: [*c]ImVec2) void;
pub extern fn ImVec2_ImVec2_Float(_x: f32, _y: f32) [*c]ImVec2;
pub extern fn ImVec4_ImVec4_Nil() [*c]ImVec4;
pub extern fn ImVec4_destroy(self: [*c]ImVec4) void;
pub extern fn ImVec4_ImVec4_Float(_x: f32, _y: f32, _z: f32, _w: f32) [*c]ImVec4;
pub extern fn ImTextureRef_ImTextureRef_Nil() [*c]ImTextureRef;
pub extern fn ImTextureRef_destroy(self: [*c]ImTextureRef) void;
pub extern fn ImTextureRef_ImTextureRef_TextureID(tex_id: ImTextureID) [*c]ImTextureRef;
pub extern fn ImTextureRef_GetTexID(self: [*c]ImTextureRef) ImTextureID;
pub extern fn igCreateContext(shared_font_atlas: [*c]ImFontAtlas) ?*ImGuiContext;
pub extern fn igDestroyContext(ctx: ?*ImGuiContext) void;
pub extern fn igGetCurrentContext() ?*ImGuiContext;
pub extern fn igSetCurrentContext(ctx: ?*ImGuiContext) void;
pub extern fn igGetIO_Nil() [*c]ImGuiIO;
pub extern fn igGetPlatformIO_Nil() [*c]ImGuiPlatformIO;
pub extern fn igGetStyle() [*c]ImGuiStyle;
pub extern fn igNewFrame() void;
pub extern fn igEndFrame() void;
pub extern fn igRender() void;
pub extern fn igGetDrawData() [*c]ImDrawData;
pub extern fn igShowDemoWindow(p_open: [*c]bool) void;
pub extern fn igShowMetricsWindow(p_open: [*c]bool) void;
pub extern fn igShowDebugLogWindow(p_open: [*c]bool) void;
pub extern fn igShowIDStackToolWindow(p_open: [*c]bool) void;
pub extern fn igShowAboutWindow(p_open: [*c]bool) void;
pub extern fn igShowStyleEditor(ref: [*c]ImGuiStyle) void;
pub extern fn igShowStyleSelector(label: [*c]const u8) bool;
pub extern fn igShowFontSelector(label: [*c]const u8) void;
pub extern fn igShowUserGuide() void;
pub extern fn igGetVersion() [*c]const u8;
pub extern fn igStyleColorsDark(dst: [*c]ImGuiStyle) void;
pub extern fn igStyleColorsLight(dst: [*c]ImGuiStyle) void;
pub extern fn igStyleColorsClassic(dst: [*c]ImGuiStyle) void;
pub extern fn igBegin(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEnd() void;
pub extern fn igBeginChild_Str(str_id: [*c]const u8, size: ImVec2_c, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginChild_ID(id: ImGuiID, size: ImVec2_c, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igEndChild() void;
pub extern fn igIsWindowAppearing() bool;
pub extern fn igIsWindowCollapsed() bool;
pub extern fn igIsWindowFocused(flags: ImGuiFocusedFlags) bool;
pub extern fn igIsWindowHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igGetWindowDrawList() [*c]ImDrawList;
pub extern fn igGetWindowDpiScale() f32;
pub extern fn igGetWindowPos() ImVec2_c;
pub extern fn igGetWindowSize() ImVec2_c;
pub extern fn igGetWindowWidth() f32;
pub extern fn igGetWindowHeight() f32;
pub extern fn igGetWindowViewport() [*c]ImGuiViewport;
pub extern fn igSetNextWindowPos(pos: ImVec2_c, cond: ImGuiCond, pivot: ImVec2_c) void;
pub extern fn igSetNextWindowSize(size: ImVec2_c, cond: ImGuiCond) void;
pub extern fn igSetNextWindowSizeConstraints(size_min: ImVec2_c, size_max: ImVec2_c, custom_callback: ImGuiSizeCallback, custom_callback_data: ?*anyopaque) void;
pub extern fn igSetNextWindowContentSize(size: ImVec2_c) void;
pub extern fn igSetNextWindowCollapsed(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetNextWindowFocus() void;
pub extern fn igSetNextWindowScroll(scroll: ImVec2_c) void;
pub extern fn igSetNextWindowBgAlpha(alpha: f32) void;
pub extern fn igSetNextWindowViewport(viewport_id: ImGuiID) void;
pub extern fn igSetWindowPos_Vec2(pos: ImVec2_c, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_Vec2(size: ImVec2_c, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_Bool(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocus_Nil() void;
pub extern fn igSetWindowPos_Str(name: [*c]const u8, pos: ImVec2_c, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_Str(name: [*c]const u8, size: ImVec2_c, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_Str(name: [*c]const u8, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocus_Str(name: [*c]const u8) void;
pub extern fn igGetScrollX() f32;
pub extern fn igGetScrollY() f32;
pub extern fn igSetScrollX_Float(scroll_x: f32) void;
pub extern fn igSetScrollY_Float(scroll_y: f32) void;
pub extern fn igGetScrollMaxX() f32;
pub extern fn igGetScrollMaxY() f32;
pub extern fn igSetScrollHereX(center_x_ratio: f32) void;
pub extern fn igSetScrollHereY(center_y_ratio: f32) void;
pub extern fn igSetScrollFromPosX_Float(local_x: f32, center_x_ratio: f32) void;
pub extern fn igSetScrollFromPosY_Float(local_y: f32, center_y_ratio: f32) void;
pub extern fn igPushFont(font: [*c]ImFont, font_size_base_unscaled: f32) void;
pub extern fn igPopFont() void;
pub extern fn igGetFont() [*c]ImFont;
pub extern fn igGetFontSize() f32;
pub extern fn igGetFontBaked() ?*ImFontBaked;
pub extern fn igPushStyleColor_U32(idx: ImGuiCol, col: ImU32) void;
pub extern fn igPushStyleColor_Vec4(idx: ImGuiCol, col: ImVec4_c) void;
pub extern fn igPopStyleColor(count: c_int) void;
pub extern fn igPushStyleVar_Float(idx: ImGuiStyleVar, val: f32) void;
pub extern fn igPushStyleVar_Vec2(idx: ImGuiStyleVar, val: ImVec2_c) void;
pub extern fn igPushStyleVarX(idx: ImGuiStyleVar, val_x: f32) void;
pub extern fn igPushStyleVarY(idx: ImGuiStyleVar, val_y: f32) void;
pub extern fn igPopStyleVar(count: c_int) void;
pub extern fn igPushItemFlag(option: ImGuiItemFlags, enabled: bool) void;
pub extern fn igPopItemFlag() void;
pub extern fn igPushItemWidth(item_width: f32) void;
pub extern fn igPopItemWidth() void;
pub extern fn igSetNextItemWidth(item_width: f32) void;
pub extern fn igCalcItemWidth() f32;
pub extern fn igPushTextWrapPos(wrap_local_pos_x: f32) void;
pub extern fn igPopTextWrapPos() void;
pub extern fn igGetFontTexUvWhitePixel() ImVec2_c;
pub extern fn igGetColorU32_Col(idx: ImGuiCol, alpha_mul: f32) ImU32;
pub extern fn igGetColorU32_Vec4(col: ImVec4_c) ImU32;
pub extern fn igGetColorU32_U32(col: ImU32, alpha_mul: f32) ImU32;
pub extern fn igGetStyleColorVec4(idx: ImGuiCol) [*c]const ImVec4_c;
pub extern fn igGetCursorScreenPos() ImVec2_c;
pub extern fn igSetCursorScreenPos(pos: ImVec2_c) void;
pub extern fn igGetContentRegionAvail() ImVec2_c;
pub extern fn igGetCursorPos() ImVec2_c;
pub extern fn igGetCursorPosX() f32;
pub extern fn igGetCursorPosY() f32;
pub extern fn igSetCursorPos(local_pos: ImVec2_c) void;
pub extern fn igSetCursorPosX(local_x: f32) void;
pub extern fn igSetCursorPosY(local_y: f32) void;
pub extern fn igGetCursorStartPos() ImVec2_c;
pub extern fn igSeparator() void;
pub extern fn igSameLine(offset_from_start_x: f32, spacing: f32) void;
pub extern fn igNewLine() void;
pub extern fn igSpacing() void;
pub extern fn igDummy(size: ImVec2_c) void;
pub extern fn igIndent(indent_w: f32) void;
pub extern fn igUnindent(indent_w: f32) void;
pub extern fn igBeginGroup() void;
pub extern fn igEndGroup() void;
pub extern fn igAlignTextToFramePadding() void;
pub extern fn igGetTextLineHeight() f32;
pub extern fn igGetTextLineHeightWithSpacing() f32;
pub extern fn igGetFrameHeight() f32;
pub extern fn igGetFrameHeightWithSpacing() f32;
pub extern fn igPushID_Str(str_id: [*c]const u8) void;
pub extern fn igPushID_StrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) void;
pub extern fn igPushID_Ptr(ptr_id: ?*const anyopaque) void;
pub extern fn igPushID_Int(int_id: c_int) void;
pub extern fn igPopID() void;
pub extern fn igGetID_Str(str_id: [*c]const u8) ImGuiID;
pub extern fn igGetID_StrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) ImGuiID;
pub extern fn igGetID_Ptr(ptr_id: ?*const anyopaque) ImGuiID;
pub extern fn igGetID_Int(int_id: c_int) ImGuiID;
pub extern fn igTextUnformatted(text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn igText(fmt: [*c]const u8, ...) void;
pub extern fn igTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextColored(col: ImVec4_c, fmt: [*c]const u8, ...) void;
pub extern fn igTextColoredV(col: ImVec4_c, fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextDisabled(fmt: [*c]const u8, ...) void;
pub extern fn igTextDisabledV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextWrapped(fmt: [*c]const u8, ...) void;
pub extern fn igTextWrappedV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igLabelText(label: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn igLabelTextV(label: [*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn igBulletText(fmt: [*c]const u8, ...) void;
pub extern fn igBulletTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igSeparatorText(label: [*c]const u8) void;
pub extern fn igButton(label: [*c]const u8, size: ImVec2_c) bool;
pub extern fn igSmallButton(label: [*c]const u8) bool;
pub extern fn igInvisibleButton(str_id: [*c]const u8, size: ImVec2_c, flags: ImGuiButtonFlags) bool;
pub extern fn igArrowButton(str_id: [*c]const u8, dir: ImGuiDir) bool;
pub extern fn igCheckbox(label: [*c]const u8, v: [*c]bool) bool;
pub extern fn igCheckboxFlags_IntPtr(label: [*c]const u8, flags: [*c]c_int, flags_value: c_int) bool;
pub extern fn igCheckboxFlags_UintPtr(label: [*c]const u8, flags: [*c]c_uint, flags_value: c_uint) bool;
pub extern fn igRadioButton_Bool(label: [*c]const u8, active: bool) bool;
pub extern fn igRadioButton_IntPtr(label: [*c]const u8, v: [*c]c_int, v_button: c_int) bool;
pub extern fn igProgressBar(fraction: f32, size_arg: ImVec2_c, overlay: [*c]const u8) void;
pub extern fn igBullet() void;
pub extern fn igTextLink(label: [*c]const u8) bool;
pub extern fn igTextLinkOpenURL(label: [*c]const u8, url: [*c]const u8) bool;
pub extern fn igImage(tex_ref: ImTextureRef_c, image_size: ImVec2_c, uv0: ImVec2_c, uv1: ImVec2_c) void;
pub extern fn igImageWithBg(tex_ref: ImTextureRef_c, image_size: ImVec2_c, uv0: ImVec2_c, uv1: ImVec2_c, bg_col: ImVec4_c, tint_col: ImVec4_c) void;
pub extern fn igImageButton(str_id: [*c]const u8, tex_ref: ImTextureRef_c, image_size: ImVec2_c, uv0: ImVec2_c, uv1: ImVec2_c, bg_col: ImVec4_c, tint_col: ImVec4_c) bool;
pub extern fn igBeginCombo(label: [*c]const u8, preview_value: [*c]const u8, flags: ImGuiComboFlags) bool;
pub extern fn igEndCombo() void;
pub extern fn igCombo_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igCombo_Str(label: [*c]const u8, current_item: [*c]c_int, items_separated_by_zeros: [*c]const u8, popup_max_height_in_items: c_int) bool;
pub extern fn igCombo_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igDragFloat(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat2(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat3(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat4(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloatRange2(label: [*c]const u8, v_current_min: [*c]f32, v_current_max: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt2(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt3(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt4(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragIntRange2(label: [*c]const u8, v_current_min: [*c]c_int, v_current_max: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat2(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat3(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat4(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderAngle(label: [*c]const u8, v_rad: [*c]f32, v_degrees_min: f32, v_degrees_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt2(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt3(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt4(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderFloat(label: [*c]const u8, size: ImVec2_c, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderInt(label: [*c]const u8, size: ImVec2_c, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderScalar(label: [*c]const u8, size: ImVec2_c, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igInputText(label: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextMultiline(label: [*c]const u8, buf: [*c]u8, buf_size: usize, size: ImVec2_c, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextWithHint(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputFloat(label: [*c]const u8, v: [*c]f32, step: f32, step_fast: f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat2(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat3(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat4(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt(label: [*c]const u8, v: [*c]c_int, step: c_int, step_fast: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt2(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt3(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt4(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputDouble(label: [*c]const u8, v: [*c]f64, step: f64, step_fast: f64, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igColorEdit3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorEdit4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags, ref_col: [*c]const f32) bool;
pub extern fn igColorButton(desc_id: [*c]const u8, col: ImVec4_c, flags: ImGuiColorEditFlags, size: ImVec2_c) bool;
pub extern fn igSetColorEditOptions(flags: ImGuiColorEditFlags) void;
pub extern fn igTreeNode_Str(label: [*c]const u8) bool;
pub extern fn igTreeNode_StrStr(str_id: [*c]const u8, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNode_Ptr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeV_Str(str_id: [*c]const u8, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeV_Ptr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeEx_Str(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igTreeNodeEx_StrStr(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeEx_Ptr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeExV_Str(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeExV_Ptr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreePush_Str(str_id: [*c]const u8) void;
pub extern fn igTreePush_Ptr(ptr_id: ?*const anyopaque) void;
pub extern fn igTreePop() void;
pub extern fn igGetTreeNodeToLabelSpacing() f32;
pub extern fn igCollapsingHeader_TreeNodeFlags(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igCollapsingHeader_BoolPtr(label: [*c]const u8, p_visible: [*c]bool, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igSetNextItemOpen(is_open: bool, cond: ImGuiCond) void;
pub extern fn igSetNextItemStorageID(storage_id: ImGuiID) void;
pub extern fn igSelectable_Bool(label: [*c]const u8, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2_c) bool;
pub extern fn igSelectable_BoolPtr(label: [*c]const u8, p_selected: [*c]bool, flags: ImGuiSelectableFlags, size: ImVec2_c) bool;
pub extern fn igBeginMultiSelect(flags: ImGuiMultiSelectFlags, selection_size: c_int, items_count: c_int) [*c]ImGuiMultiSelectIO;
pub extern fn igEndMultiSelect() [*c]ImGuiMultiSelectIO;
pub extern fn igSetNextItemSelectionUserData(selection_user_data: ImGuiSelectionUserData) void;
pub extern fn igIsItemToggledSelection() bool;
pub extern fn igBeginListBox(label: [*c]const u8, size: ImVec2_c) bool;
pub extern fn igEndListBox() void;
pub extern fn igListBox_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBox_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igPlotLines_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2_c, stride: c_int) void;
pub extern fn igPlotLines_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2_c) void;
pub extern fn igPlotHistogram_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2_c, stride: c_int) void;
pub extern fn igPlotHistogram_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2_c) void;
pub extern fn igValue_Bool(prefix: [*c]const u8, b: bool) void;
pub extern fn igValue_Int(prefix: [*c]const u8, v: c_int) void;
pub extern fn igValue_Uint(prefix: [*c]const u8, v: c_uint) void;
pub extern fn igValue_Float(prefix: [*c]const u8, v: f32, float_format: [*c]const u8) void;
pub extern fn igBeginMenuBar() bool;
pub extern fn igEndMenuBar() void;
pub extern fn igBeginMainMenuBar() bool;
pub extern fn igEndMainMenuBar() void;
pub extern fn igBeginMenu(label: [*c]const u8, enabled: bool) bool;
pub extern fn igEndMenu() void;
pub extern fn igMenuItem_Bool(label: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn igMenuItem_BoolPtr(label: [*c]const u8, shortcut: [*c]const u8, p_selected: [*c]bool, enabled: bool) bool;
pub extern fn igBeginTooltip() bool;
pub extern fn igEndTooltip() void;
pub extern fn igSetTooltip(fmt: [*c]const u8, ...) void;
pub extern fn igSetTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginItemTooltip() bool;
pub extern fn igSetItemTooltip(fmt: [*c]const u8, ...) void;
pub extern fn igSetItemTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginPopup(str_id: [*c]const u8, flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupModal(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEndPopup() void;
pub extern fn igOpenPopup_Str(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn igOpenPopup_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn igOpenPopupOnItemClick(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn igCloseCurrentPopup() void;
pub extern fn igBeginPopupContextItem(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupContextWindow(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupContextVoid(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igIsPopupOpen_Str(str_id: [*c]const u8, flags: ImGuiPopupFlags) bool;
pub extern fn igBeginTable(str_id: [*c]const u8, columns: c_int, flags: ImGuiTableFlags, outer_size: ImVec2_c, inner_width: f32) bool;
pub extern fn igEndTable() void;
pub extern fn igTableNextRow(row_flags: ImGuiTableRowFlags, min_row_height: f32) void;
pub extern fn igTableNextColumn() bool;
pub extern fn igTableSetColumnIndex(column_n: c_int) bool;
pub extern fn igTableSetupColumn(label: [*c]const u8, flags: ImGuiTableColumnFlags, init_width_or_weight: f32, user_id: ImGuiID) void;
pub extern fn igTableSetupScrollFreeze(cols: c_int, rows: c_int) void;
pub extern fn igTableHeader(label: [*c]const u8) void;
pub extern fn igTableHeadersRow() void;
pub extern fn igTableAngledHeadersRow() void;
pub extern fn igTableGetSortSpecs() [*c]ImGuiTableSortSpecs;
pub extern fn igTableGetColumnCount() c_int;
pub extern fn igTableGetColumnIndex() c_int;
pub extern fn igTableGetRowIndex() c_int;
pub extern fn igTableGetColumnName_Int(column_n: c_int) [*c]const u8;
pub extern fn igTableGetColumnFlags(column_n: c_int) ImGuiTableColumnFlags;
pub extern fn igTableSetColumnEnabled(column_n: c_int, v: bool) void;
pub extern fn igTableGetHoveredColumn() c_int;
pub extern fn igTableSetBgColor(target: ImGuiTableBgTarget, color: ImU32, column_n: c_int) void;
pub extern fn igColumns(count: c_int, id: [*c]const u8, borders: bool) void;
pub extern fn igNextColumn() void;
pub extern fn igGetColumnIndex() c_int;
pub extern fn igGetColumnWidth(column_index: c_int) f32;
pub extern fn igSetColumnWidth(column_index: c_int, width: f32) void;
pub extern fn igGetColumnOffset(column_index: c_int) f32;
pub extern fn igSetColumnOffset(column_index: c_int, offset_x: f32) void;
pub extern fn igGetColumnsCount() c_int;
pub extern fn igBeginTabBar(str_id: [*c]const u8, flags: ImGuiTabBarFlags) bool;
pub extern fn igEndTabBar() void;
pub extern fn igBeginTabItem(label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags) bool;
pub extern fn igEndTabItem() void;
pub extern fn igTabItemButton(label: [*c]const u8, flags: ImGuiTabItemFlags) bool;
pub extern fn igSetTabItemClosed(tab_or_docked_window_label: [*c]const u8) void;
pub extern fn igDockSpace(dockspace_id: ImGuiID, size: ImVec2_c, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn igDockSpaceOverViewport(dockspace_id: ImGuiID, viewport: [*c]const ImGuiViewport, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn igSetNextWindowDockID(dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn igSetNextWindowClass(window_class: [*c]const ImGuiWindowClass) void;
pub extern fn igGetWindowDockID() ImGuiID;
pub extern fn igIsWindowDocked() bool;
pub extern fn igLogToTTY(auto_open_depth: c_int) void;
pub extern fn igLogToFile(auto_open_depth: c_int, filename: [*c]const u8) void;
pub extern fn igLogToClipboard(auto_open_depth: c_int) void;
pub extern fn igLogFinish() void;
pub extern fn igLogButtons() void;
pub extern fn igLogText(fmt: [*c]const u8, ...) void;
pub extern fn igLogTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginDragDropSource(flags: ImGuiDragDropFlags) bool;
pub extern fn igSetDragDropPayload(@"type": [*c]const u8, data: ?*const anyopaque, sz: usize, cond: ImGuiCond) bool;
pub extern fn igEndDragDropSource() void;
pub extern fn igBeginDragDropTarget() bool;
pub extern fn igAcceptDragDropPayload(@"type": [*c]const u8, flags: ImGuiDragDropFlags) [*c]const ImGuiPayload;
pub extern fn igEndDragDropTarget() void;
pub extern fn igGetDragDropPayload() [*c]const ImGuiPayload;
pub extern fn igBeginDisabled(disabled: bool) void;
pub extern fn igEndDisabled() void;
pub extern fn igPushClipRect(clip_rect_min: ImVec2_c, clip_rect_max: ImVec2_c, intersect_with_current_clip_rect: bool) void;
pub extern fn igPopClipRect() void;
pub extern fn igSetItemDefaultFocus() void;
pub extern fn igSetKeyboardFocusHere(offset: c_int) void;
pub extern fn igSetNavCursorVisible(visible: bool) void;
pub extern fn igSetNextItemAllowOverlap() void;
pub extern fn igIsItemHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igIsItemActive() bool;
pub extern fn igIsItemFocused() bool;
pub extern fn igIsItemClicked(mouse_button: ImGuiMouseButton) bool;
pub extern fn igIsItemVisible() bool;
pub extern fn igIsItemEdited() bool;
pub extern fn igIsItemActivated() bool;
pub extern fn igIsItemDeactivated() bool;
pub extern fn igIsItemDeactivatedAfterEdit() bool;
pub extern fn igIsItemToggledOpen() bool;
pub extern fn igIsAnyItemHovered() bool;
pub extern fn igIsAnyItemActive() bool;
pub extern fn igIsAnyItemFocused() bool;
pub extern fn igGetItemID() ImGuiID;
pub extern fn igGetItemRectMin() ImVec2_c;
pub extern fn igGetItemRectMax() ImVec2_c;
pub extern fn igGetItemRectSize() ImVec2_c;
pub extern fn igGetMainViewport() [*c]ImGuiViewport;
pub extern fn igGetBackgroundDrawList(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn igGetForegroundDrawList_ViewportPtr(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn igIsRectVisible_Nil(size: ImVec2_c) bool;
pub extern fn igIsRectVisible_Vec2(rect_min: ImVec2_c, rect_max: ImVec2_c) bool;
pub extern fn igGetTime() f64;
pub extern fn igGetFrameCount() c_int;
pub extern fn igGetDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn igGetStyleColorName(idx: ImGuiCol) [*c]const u8;
pub extern fn igSetStateStorage(storage: [*c]ImGuiStorage) void;
pub extern fn igGetStateStorage() [*c]ImGuiStorage;
pub extern fn igCalcTextSize(text: [*c]const u8, text_end: [*c]const u8, hide_text_after_double_hash: bool, wrap_width: f32) ImVec2_c;
pub extern fn igColorConvertU32ToFloat4(in: ImU32) ImVec4_c;
pub extern fn igColorConvertFloat4ToU32(in: ImVec4_c) ImU32;
pub extern fn igColorConvertRGBtoHSV(r: f32, g: f32, b: f32, out_h: [*c]f32, out_s: [*c]f32, out_v: [*c]f32) void;
pub extern fn igColorConvertHSVtoRGB(h: f32, s: f32, v: f32, out_r: [*c]f32, out_g: [*c]f32, out_b: [*c]f32) void;
pub extern fn igIsKeyDown_Nil(key: ImGuiKey) bool;
pub extern fn igIsKeyPressed_Bool(key: ImGuiKey, repeat: bool) bool;
pub extern fn igIsKeyReleased_Nil(key: ImGuiKey) bool;
pub extern fn igIsKeyChordPressed_Nil(key_chord: ImGuiKeyChord) bool;
pub extern fn igGetKeyPressedAmount(key: ImGuiKey, repeat_delay: f32, rate: f32) c_int;
pub extern fn igGetKeyName(key: ImGuiKey) [*c]const u8;
pub extern fn igSetNextFrameWantCaptureKeyboard(want_capture_keyboard: bool) void;
pub extern fn igShortcut_Nil(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) bool;
pub extern fn igSetNextItemShortcut(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) void;
pub extern fn igSetItemKeyOwner_Nil(key: ImGuiKey) void;
pub extern fn igIsMouseDown_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseClicked_Bool(button: ImGuiMouseButton, repeat: bool) bool;
pub extern fn igIsMouseReleased_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseDoubleClicked_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseReleasedWithDelay(button: ImGuiMouseButton, delay: f32) bool;
pub extern fn igGetMouseClickedCount(button: ImGuiMouseButton) c_int;
pub extern fn igIsMouseHoveringRect(r_min: ImVec2_c, r_max: ImVec2_c, clip: bool) bool;
pub extern fn igIsMousePosValid(mouse_pos: [*c]const ImVec2_c) bool;
pub extern fn igIsAnyMouseDown() bool;
pub extern fn igGetMousePos() ImVec2_c;
pub extern fn igGetMousePosOnOpeningCurrentPopup() ImVec2_c;
pub extern fn igIsMouseDragging(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn igGetMouseDragDelta(button: ImGuiMouseButton, lock_threshold: f32) ImVec2_c;
pub extern fn igResetMouseDragDelta(button: ImGuiMouseButton) void;
pub extern fn igGetMouseCursor() ImGuiMouseCursor;
pub extern fn igSetMouseCursor(cursor_type: ImGuiMouseCursor) void;
pub extern fn igSetNextFrameWantCaptureMouse(want_capture_mouse: bool) void;
pub extern fn igGetClipboardText() [*c]const u8;
pub extern fn igSetClipboardText(text: [*c]const u8) void;
pub extern fn igLoadIniSettingsFromDisk(ini_filename: [*c]const u8) void;
pub extern fn igLoadIniSettingsFromMemory(ini_data: [*c]const u8, ini_size: usize) void;
pub extern fn igSaveIniSettingsToDisk(ini_filename: [*c]const u8) void;
pub extern fn igSaveIniSettingsToMemory(out_ini_size: [*c]usize) [*c]const u8;
pub extern fn igDebugTextEncoding(text: [*c]const u8) void;
pub extern fn igDebugFlashStyleColor(idx: ImGuiCol) void;
pub extern fn igDebugStartItemPicker() void;
pub extern fn igDebugCheckVersionAndDataLayout(version_str: [*c]const u8, sz_io: usize, sz_style: usize, sz_vec2: usize, sz_vec4: usize, sz_drawvert: usize, sz_drawidx: usize) bool;
pub extern fn igDebugLog(fmt: [*c]const u8, ...) void;
pub extern fn igDebugLogV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igSetAllocatorFunctions(alloc_func: ImGuiMemAllocFunc, free_func: ImGuiMemFreeFunc, user_data: ?*anyopaque) void;
pub extern fn igGetAllocatorFunctions(p_alloc_func: [*c]ImGuiMemAllocFunc, p_free_func: [*c]ImGuiMemFreeFunc, p_user_data: [*c]?*anyopaque) void;
pub extern fn igMemAlloc(size: usize) ?*anyopaque;
pub extern fn igMemFree(ptr: ?*anyopaque) void;
pub extern fn igUpdatePlatformWindows() void;
pub extern fn igRenderPlatformWindowsDefault(platform_render_arg: ?*anyopaque, renderer_render_arg: ?*anyopaque) void;
pub extern fn igDestroyPlatformWindows() void;
pub extern fn igFindViewportByID(viewport_id: ImGuiID) [*c]ImGuiViewport;
pub extern fn igFindViewportByPlatformHandle(platform_handle: ?*anyopaque) [*c]ImGuiViewport;
pub extern fn ImGuiTableSortSpecs_ImGuiTableSortSpecs() [*c]ImGuiTableSortSpecs;
pub extern fn ImGuiTableSortSpecs_destroy(self: [*c]ImGuiTableSortSpecs) void;
pub extern fn ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs() [*c]ImGuiTableColumnSortSpecs;
pub extern fn ImGuiTableColumnSortSpecs_destroy(self: [*c]ImGuiTableColumnSortSpecs) void;
pub extern fn ImGuiStyle_ImGuiStyle() [*c]ImGuiStyle;
pub extern fn ImGuiStyle_destroy(self: [*c]ImGuiStyle) void;
pub extern fn ImGuiStyle_ScaleAllSizes(self: [*c]ImGuiStyle, scale_factor: f32) void;
pub extern fn ImGuiIO_AddKeyEvent(self: [*c]ImGuiIO, key: ImGuiKey, down: bool) void;
pub extern fn ImGuiIO_AddKeyAnalogEvent(self: [*c]ImGuiIO, key: ImGuiKey, down: bool, v: f32) void;
pub extern fn ImGuiIO_AddMousePosEvent(self: [*c]ImGuiIO, x: f32, y: f32) void;
pub extern fn ImGuiIO_AddMouseButtonEvent(self: [*c]ImGuiIO, button: c_int, down: bool) void;
pub extern fn ImGuiIO_AddMouseWheelEvent(self: [*c]ImGuiIO, wheel_x: f32, wheel_y: f32) void;
pub extern fn ImGuiIO_AddMouseSourceEvent(self: [*c]ImGuiIO, source: ImGuiMouseSource) void;
pub extern fn ImGuiIO_AddMouseViewportEvent(self: [*c]ImGuiIO, id: ImGuiID) void;
pub extern fn ImGuiIO_AddFocusEvent(self: [*c]ImGuiIO, focused: bool) void;
pub extern fn ImGuiIO_AddInputCharacter(self: [*c]ImGuiIO, c: c_uint) void;
pub extern fn ImGuiIO_AddInputCharacterUTF16(self: [*c]ImGuiIO, c: ImWchar16) void;
pub extern fn ImGuiIO_AddInputCharactersUTF8(self: [*c]ImGuiIO, str: [*c]const u8) void;
pub extern fn ImGuiIO_SetKeyEventNativeData(self: [*c]ImGuiIO, key: ImGuiKey, native_keycode: c_int, native_scancode: c_int, native_legacy_index: c_int) void;
pub extern fn ImGuiIO_SetAppAcceptingEvents(self: [*c]ImGuiIO, accepting_events: bool) void;
pub extern fn ImGuiIO_ClearEventsQueue(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputKeys(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputMouse(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ImGuiIO() [*c]ImGuiIO;
pub extern fn ImGuiIO_destroy(self: [*c]ImGuiIO) void;
pub extern fn ImGuiInputTextCallbackData_ImGuiInputTextCallbackData() [*c]ImGuiInputTextCallbackData;
pub extern fn ImGuiInputTextCallbackData_destroy(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_DeleteChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, bytes_count: c_int) void;
pub extern fn ImGuiInputTextCallbackData_InsertChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImGuiInputTextCallbackData_SelectAll(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_ClearSelection(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_HasSelection(self: [*c]ImGuiInputTextCallbackData) bool;
pub extern fn ImGuiWindowClass_ImGuiWindowClass() [*c]ImGuiWindowClass;
pub extern fn ImGuiWindowClass_destroy(self: [*c]ImGuiWindowClass) void;
pub extern fn ImGuiPayload_ImGuiPayload() [*c]ImGuiPayload;
pub extern fn ImGuiPayload_destroy(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_Clear(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_IsDataType(self: [*c]ImGuiPayload, @"type": [*c]const u8) bool;
pub extern fn ImGuiPayload_IsPreview(self: [*c]ImGuiPayload) bool;
pub extern fn ImGuiPayload_IsDelivery(self: [*c]ImGuiPayload) bool;
pub extern fn ImGuiOnceUponAFrame_ImGuiOnceUponAFrame() [*c]ImGuiOnceUponAFrame;
pub extern fn ImGuiOnceUponAFrame_destroy(self: [*c]ImGuiOnceUponAFrame) void;
pub extern fn ImGuiTextFilter_ImGuiTextFilter(default_filter: [*c]const u8) [*c]ImGuiTextFilter;
pub extern fn ImGuiTextFilter_destroy(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Draw(self: [*c]ImGuiTextFilter, label: [*c]const u8, width: f32) bool;
pub extern fn ImGuiTextFilter_PassFilter(self: [*c]ImGuiTextFilter, text: [*c]const u8, text_end: [*c]const u8) bool;
pub extern fn ImGuiTextFilter_Build(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Clear(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_IsActive(self: [*c]ImGuiTextFilter) bool;
pub extern fn ImGuiTextRange_ImGuiTextRange_Nil() [*c]ImGuiTextRange;
pub extern fn ImGuiTextRange_destroy(self: [*c]ImGuiTextRange) void;
pub extern fn ImGuiTextRange_ImGuiTextRange_Str(_b: [*c]const u8, _e: [*c]const u8) [*c]ImGuiTextRange;
pub extern fn ImGuiTextRange_empty(self: [*c]ImGuiTextRange) bool;
pub extern fn ImGuiTextRange_split(self: [*c]ImGuiTextRange, separator: u8, out: [*c]ImVector_ImGuiTextRange) void;
pub extern fn ImGuiTextBuffer_ImGuiTextBuffer() [*c]ImGuiTextBuffer;
pub extern fn ImGuiTextBuffer_destroy(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_begin(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_end(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_size(self: [*c]ImGuiTextBuffer) c_int;
pub extern fn ImGuiTextBuffer_empty(self: [*c]ImGuiTextBuffer) bool;
pub extern fn ImGuiTextBuffer_clear(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_resize(self: [*c]ImGuiTextBuffer, size: c_int) void;
pub extern fn ImGuiTextBuffer_reserve(self: [*c]ImGuiTextBuffer, capacity: c_int) void;
pub extern fn ImGuiTextBuffer_c_str(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_append(self: [*c]ImGuiTextBuffer, str: [*c]const u8, str_end: [*c]const u8) void;
pub extern fn ImGuiTextBuffer_appendfv(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Int(_key: ImGuiID, _val: c_int) [*c]ImGuiStoragePair;
pub extern fn ImGuiStoragePair_destroy(self: [*c]ImGuiStoragePair) void;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Float(_key: ImGuiID, _val: f32) [*c]ImGuiStoragePair;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Ptr(_key: ImGuiID, _val: ?*anyopaque) [*c]ImGuiStoragePair;
pub extern fn ImGuiStorage_Clear(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_GetInt(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) c_int;
pub extern fn ImGuiStorage_SetInt(self: [*c]ImGuiStorage, key: ImGuiID, val: c_int) void;
pub extern fn ImGuiStorage_GetBool(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) bool;
pub extern fn ImGuiStorage_SetBool(self: [*c]ImGuiStorage, key: ImGuiID, val: bool) void;
pub extern fn ImGuiStorage_GetFloat(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) f32;
pub extern fn ImGuiStorage_SetFloat(self: [*c]ImGuiStorage, key: ImGuiID, val: f32) void;
pub extern fn ImGuiStorage_GetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID) ?*anyopaque;
pub extern fn ImGuiStorage_SetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID, val: ?*anyopaque) void;
pub extern fn ImGuiStorage_GetIntRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) [*c]c_int;
pub extern fn ImGuiStorage_GetBoolRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) [*c]bool;
pub extern fn ImGuiStorage_GetFloatRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) [*c]f32;
pub extern fn ImGuiStorage_GetVoidPtrRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: ?*anyopaque) [*c]?*anyopaque;
pub extern fn ImGuiStorage_BuildSortByKey(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_SetAllInt(self: [*c]ImGuiStorage, val: c_int) void;
pub extern fn ImGuiListClipper_ImGuiListClipper() [*c]ImGuiListClipper;
pub extern fn ImGuiListClipper_destroy(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Begin(self: [*c]ImGuiListClipper, items_count: c_int, items_height: f32) void;
pub extern fn ImGuiListClipper_End(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Step(self: [*c]ImGuiListClipper) bool;
pub extern fn ImGuiListClipper_IncludeItemByIndex(self: [*c]ImGuiListClipper, item_index: c_int) void;
pub extern fn ImGuiListClipper_IncludeItemsByIndex(self: [*c]ImGuiListClipper, item_begin: c_int, item_end: c_int) void;
pub extern fn ImGuiListClipper_SeekCursorForItem(self: [*c]ImGuiListClipper, item_index: c_int) void;
pub extern fn ImColor_ImColor_Nil() [*c]ImColor;
pub extern fn ImColor_destroy(self: [*c]ImColor) void;
pub extern fn ImColor_ImColor_Float(r: f32, g: f32, b: f32, a: f32) [*c]ImColor;
pub extern fn ImColor_ImColor_Vec4(col: ImVec4_c) [*c]ImColor;
pub extern fn ImColor_ImColor_Int(r: c_int, g: c_int, b: c_int, a: c_int) [*c]ImColor;
pub extern fn ImColor_ImColor_U32(rgba: ImU32) [*c]ImColor;
pub extern fn ImColor_SetHSV(self: [*c]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImColor_HSV(h: f32, s: f32, v: f32, a: f32) ImColor_c;
pub extern fn ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage() [*c]ImGuiSelectionBasicStorage;
pub extern fn ImGuiSelectionBasicStorage_destroy(self: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_ApplyRequests(self: [*c]ImGuiSelectionBasicStorage, ms_io: [*c]ImGuiMultiSelectIO) void;
pub extern fn ImGuiSelectionBasicStorage_Contains(self: [*c]ImGuiSelectionBasicStorage, id: ImGuiID) bool;
pub extern fn ImGuiSelectionBasicStorage_Clear(self: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_Swap(self: [*c]ImGuiSelectionBasicStorage, r: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_SetItemSelected(self: [*c]ImGuiSelectionBasicStorage, id: ImGuiID, selected: bool) void;
pub extern fn ImGuiSelectionBasicStorage_GetNextSelectedItem(self: [*c]ImGuiSelectionBasicStorage, opaque_it: [*c]?*anyopaque, out_id: [*c]ImGuiID) bool;
pub extern fn ImGuiSelectionBasicStorage_GetStorageIdFromIndex(self: [*c]ImGuiSelectionBasicStorage, idx: c_int) ImGuiID;
pub extern fn ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage() [*c]ImGuiSelectionExternalStorage;
pub extern fn ImGuiSelectionExternalStorage_destroy(self: [*c]ImGuiSelectionExternalStorage) void;
pub extern fn ImGuiSelectionExternalStorage_ApplyRequests(self: [*c]ImGuiSelectionExternalStorage, ms_io: [*c]ImGuiMultiSelectIO) void;
pub extern fn ImDrawCmd_ImDrawCmd() [*c]ImDrawCmd;
pub extern fn ImDrawCmd_destroy(self: [*c]ImDrawCmd) void;
pub extern fn ImDrawCmd_GetTexID(self: [*c]ImDrawCmd) ImTextureID;
pub extern fn ImDrawListSplitter_ImDrawListSplitter() [*c]ImDrawListSplitter;
pub extern fn ImDrawListSplitter_destroy(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Clear(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_ClearFreeMemory(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Split(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawListSplitter_Merge(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawListSplitter_SetCurrentChannel(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, channel_idx: c_int) void;
pub extern fn ImDrawList_ImDrawList(shared_data: [*c]ImDrawListSharedData) [*c]ImDrawList;
pub extern fn ImDrawList_destroy(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushClipRect(self: [*c]ImDrawList, clip_rect_min: ImVec2_c, clip_rect_max: ImVec2_c, intersect_with_current_clip_rect: bool) void;
pub extern fn ImDrawList_PushClipRectFullScreen(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PopClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushTexture(self: [*c]ImDrawList, tex_ref: ImTextureRef_c) void;
pub extern fn ImDrawList_PopTexture(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMin(self: [*c]ImDrawList) ImVec2_c;
pub extern fn ImDrawList_GetClipRectMax(self: [*c]ImDrawList) ImVec2_c;
pub extern fn ImDrawList_AddLine(self: [*c]ImDrawList, p1: ImVec2_c, p2: ImVec2_c, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddRect(self: [*c]ImDrawList, p_min: ImVec2_c, p_max: ImVec2_c, col: ImU32, rounding: f32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_AddRectFilled(self: [*c]ImDrawList, p_min: ImVec2_c, p_max: ImVec2_c, col: ImU32, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_AddRectFilledMultiColor(self: [*c]ImDrawList, p_min: ImVec2_c, p_max: ImVec2_c, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32) void;
pub extern fn ImDrawList_AddQuad(self: [*c]ImDrawList, p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, p4: ImVec2_c, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddQuadFilled(self: [*c]ImDrawList, p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, p4: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList_AddTriangle(self: [*c]ImDrawList, p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddTriangleFilled(self: [*c]ImDrawList, p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList_AddCircle(self: [*c]ImDrawList, center: ImVec2_c, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddCircleFilled(self: [*c]ImDrawList, center: ImVec2_c, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddNgon(self: [*c]ImDrawList, center: ImVec2_c, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddNgonFilled(self: [*c]ImDrawList, center: ImVec2_c, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddEllipse(self: [*c]ImDrawList, center: ImVec2_c, radius: ImVec2_c, col: ImU32, rot: f32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddEllipseFilled(self: [*c]ImDrawList, center: ImVec2_c, radius: ImVec2_c, col: ImU32, rot: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddText_Vec2(self: [*c]ImDrawList, pos: ImVec2_c, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImDrawList_AddText_FontPtr(self: [*c]ImDrawList, font: [*c]ImFont, font_size: f32, pos: ImVec2_c, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip_rect: [*c]const ImVec4) void;
pub extern fn ImDrawList_AddBezierCubic(self: [*c]ImDrawList, p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, p4: ImVec2_c, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddBezierQuadratic(self: [*c]ImDrawList, p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddPolyline(self: [*c]ImDrawList, points: [*c]const ImVec2_c, num_points: c_int, col: ImU32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_AddConvexPolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2_c, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddConcavePolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2_c, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddImage(self: [*c]ImDrawList, tex_ref: ImTextureRef_c, p_min: ImVec2_c, p_max: ImVec2_c, uv_min: ImVec2_c, uv_max: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList_AddImageQuad(self: [*c]ImDrawList, tex_ref: ImTextureRef_c, p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, p4: ImVec2_c, uv1: ImVec2_c, uv2: ImVec2_c, uv3: ImVec2_c, uv4: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList_AddImageRounded(self: [*c]ImDrawList, tex_ref: ImTextureRef_c, p_min: ImVec2_c, p_max: ImVec2_c, uv_min: ImVec2_c, uv_max: ImVec2_c, col: ImU32, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_PathClear(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PathLineTo(self: [*c]ImDrawList, pos: ImVec2_c) void;
pub extern fn ImDrawList_PathLineToMergeDuplicate(self: [*c]ImDrawList, pos: ImVec2_c) void;
pub extern fn ImDrawList_PathFillConvex(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathFillConcave(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathStroke(self: [*c]ImDrawList, col: ImU32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_PathArcTo(self: [*c]ImDrawList, center: ImVec2_c, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathArcToFast(self: [*c]ImDrawList, center: ImVec2_c, radius: f32, a_min_of_12: c_int, a_max_of_12: c_int) void;
pub extern fn ImDrawList_PathEllipticalArcTo(self: [*c]ImDrawList, center: ImVec2_c, radius: ImVec2_c, rot: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathBezierCubicCurveTo(self: [*c]ImDrawList, p2: ImVec2_c, p3: ImVec2_c, p4: ImVec2_c, num_segments: c_int) void;
pub extern fn ImDrawList_PathBezierQuadraticCurveTo(self: [*c]ImDrawList, p2: ImVec2_c, p3: ImVec2_c, num_segments: c_int) void;
pub extern fn ImDrawList_PathRect(self: [*c]ImDrawList, rect_min: ImVec2_c, rect_max: ImVec2_c, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_AddCallback(self: [*c]ImDrawList, callback: ImDrawCallback, userdata: ?*anyopaque, userdata_size: usize) void;
pub extern fn ImDrawList_AddDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_CloneOutput(self: [*c]ImDrawList) [*c]ImDrawList;
pub extern fn ImDrawList_ChannelsSplit(self: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawList_ChannelsMerge(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_ChannelsSetCurrent(self: [*c]ImDrawList, n: c_int) void;
pub extern fn ImDrawList_PrimReserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimUnreserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimRect(self: [*c]ImDrawList, a: ImVec2_c, b: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList_PrimRectUV(self: [*c]ImDrawList, a: ImVec2_c, b: ImVec2_c, uv_a: ImVec2_c, uv_b: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList_PrimQuadUV(self: [*c]ImDrawList, a: ImVec2_c, b: ImVec2_c, c: ImVec2_c, d: ImVec2_c, uv_a: ImVec2_c, uv_b: ImVec2_c, uv_c: ImVec2_c, uv_d: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteVtx(self: [*c]ImDrawList, pos: ImVec2_c, uv: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteIdx(self: [*c]ImDrawList, idx: ImDrawIdx) void;
pub extern fn ImDrawList_PrimVtx(self: [*c]ImDrawList, pos: ImVec2_c, uv: ImVec2_c, col: ImU32) void;
pub extern fn ImDrawList__SetDrawListSharedData(self: [*c]ImDrawList, data: [*c]ImDrawListSharedData) void;
pub extern fn ImDrawList__ResetForNewFrame(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__ClearFreeMemory(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__PopUnusedDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__TryMergeDrawCmds(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedTexture(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedVtxOffset(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__SetTexture(self: [*c]ImDrawList, tex_ref: ImTextureRef_c) void;
pub extern fn ImDrawList__CalcCircleAutoSegmentCount(self: [*c]ImDrawList, radius: f32) c_int;
pub extern fn ImDrawList__PathArcToFastEx(self: [*c]ImDrawList, center: ImVec2_c, radius: f32, a_min_sample: c_int, a_max_sample: c_int, a_step: c_int) void;
pub extern fn ImDrawList__PathArcToN(self: [*c]ImDrawList, center: ImVec2_c, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawData_ImDrawData() [*c]ImDrawData;
pub extern fn ImDrawData_destroy(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_Clear(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_AddDrawList(self: [*c]ImDrawData, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawData_DeIndexAllBuffers(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_ScaleClipRects(self: [*c]ImDrawData, fb_scale: ImVec2_c) void;
pub extern fn ImTextureData_ImTextureData() [*c]ImTextureData;
pub extern fn ImTextureData_destroy(self: [*c]ImTextureData) void;
pub extern fn ImTextureData_Create(self: [*c]ImTextureData, format: ImTextureFormat, w: c_int, h: c_int) void;
pub extern fn ImTextureData_DestroyPixels(self: [*c]ImTextureData) void;
pub extern fn ImTextureData_GetPixels(self: [*c]ImTextureData) ?*anyopaque;
pub extern fn ImTextureData_GetPixelsAt(self: [*c]ImTextureData, x: c_int, y: c_int) ?*anyopaque;
pub extern fn ImTextureData_GetSizeInBytes(self: [*c]ImTextureData) c_int;
pub extern fn ImTextureData_GetPitch(self: [*c]ImTextureData) c_int;
pub extern fn ImTextureData_GetTexRef(self: [*c]ImTextureData) ImTextureRef_c;
pub extern fn ImTextureData_GetTexID(self: [*c]ImTextureData) ImTextureID;
pub extern fn ImTextureData_SetTexID(self: [*c]ImTextureData, tex_id: ImTextureID) void;
pub extern fn ImTextureData_SetStatus(self: [*c]ImTextureData, status: ImTextureStatus) void;
pub extern fn ImFontConfig_ImFontConfig() [*c]ImFontConfig;
pub extern fn ImFontConfig_destroy(self: [*c]ImFontConfig) void;
pub extern fn ImFontGlyph_ImFontGlyph() ?*ImFontGlyph;
pub extern fn ImFontGlyph_destroy(self: ?*ImFontGlyph) void;
pub extern fn ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder() [*c]ImFontGlyphRangesBuilder;
pub extern fn ImFontGlyphRangesBuilder_destroy(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_Clear(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_GetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) bool;
pub extern fn ImFontGlyphRangesBuilder_SetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) void;
pub extern fn ImFontGlyphRangesBuilder_AddChar(self: [*c]ImFontGlyphRangesBuilder, c: ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_AddText(self: [*c]ImFontGlyphRangesBuilder, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImFontGlyphRangesBuilder_AddRanges(self: [*c]ImFontGlyphRangesBuilder, ranges: [*c]const ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_BuildRanges(self: [*c]ImFontGlyphRangesBuilder, out_ranges: [*c]ImVector_ImWchar) void;
pub extern fn ImFontAtlasRect_ImFontAtlasRect() [*c]ImFontAtlasRect;
pub extern fn ImFontAtlasRect_destroy(self: [*c]ImFontAtlasRect) void;
pub extern fn ImFontAtlas_ImFontAtlas() [*c]ImFontAtlas;
pub extern fn ImFontAtlas_destroy(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_AddFont(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontDefault(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromFileTTF(self: [*c]ImFontAtlas, filename: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryTTF(self: [*c]ImFontAtlas, font_data: ?*anyopaque, font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedTTF(self: [*c]ImFontAtlas, compressed_font_data: ?*const anyopaque, compressed_font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self: [*c]ImFontAtlas, compressed_font_data_base85: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_RemoveFont(self: [*c]ImFontAtlas, font: [*c]ImFont) void;
pub extern fn ImFontAtlas_Clear(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_CompactCache(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_SetFontLoader(self: [*c]ImFontAtlas, font_loader: [*c]const ImFontLoader) void;
pub extern fn ImFontAtlas_ClearInputData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearFonts(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearTexData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_GetGlyphRangesDefault(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_AddCustomRect(self: [*c]ImFontAtlas, width: c_int, height: c_int, out_r: [*c]ImFontAtlasRect) ImFontAtlasRectId;
pub extern fn ImFontAtlas_RemoveCustomRect(self: [*c]ImFontAtlas, id: ImFontAtlasRectId) void;
pub extern fn ImFontAtlas_GetCustomRect(self: [*c]ImFontAtlas, id: ImFontAtlasRectId, out_r: [*c]ImFontAtlasRect) bool;
pub extern fn ImFontBaked_ImFontBaked() ?*ImFontBaked;
pub extern fn ImFontBaked_destroy(self: ?*ImFontBaked) void;
pub extern fn ImFontBaked_ClearOutputData(self: ?*ImFontBaked) void;
pub extern fn ImFontBaked_FindGlyph(self: ?*ImFontBaked, c: ImWchar) ?*ImFontGlyph;
pub extern fn ImFontBaked_FindGlyphNoFallback(self: ?*ImFontBaked, c: ImWchar) ?*ImFontGlyph;
pub extern fn ImFontBaked_GetCharAdvance(self: ?*ImFontBaked, c: ImWchar) f32;
pub extern fn ImFontBaked_IsGlyphLoaded(self: ?*ImFontBaked, c: ImWchar) bool;
pub extern fn ImFont_ImFont() [*c]ImFont;
pub extern fn ImFont_destroy(self: [*c]ImFont) void;
pub extern fn ImFont_IsGlyphInFont(self: [*c]ImFont, c: ImWchar) bool;
pub extern fn ImFont_IsLoaded(self: [*c]ImFont) bool;
pub extern fn ImFont_GetDebugName(self: [*c]ImFont) [*c]const u8;
pub extern fn ImFont_GetFontBaked(self: [*c]ImFont, font_size: f32, density: f32) ?*ImFontBaked;
pub extern fn ImFont_CalcTextSizeA(self: [*c]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: [*c]const u8, text_end: [*c]const u8, out_remaining: [*c][*c]const u8) ImVec2_c;
pub extern fn ImFont_CalcWordWrapPosition(self: [*c]ImFont, size: f32, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) [*c]const u8;
pub extern fn ImFont_RenderChar(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2_c, col: ImU32, c: ImWchar, cpu_fine_clip: [*c]const ImVec4) void;
pub extern fn ImFont_RenderText(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2_c, col: ImU32, clip_rect: ImVec4_c, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, flags: ImDrawTextFlags) void;
pub extern fn ImFont_ClearOutputData(self: [*c]ImFont) void;
pub extern fn ImFont_AddRemapChar(self: [*c]ImFont, from_codepoint: ImWchar, to_codepoint: ImWchar) void;
pub extern fn ImFont_IsGlyphRangeUnused(self: [*c]ImFont, c_begin: c_uint, c_last: c_uint) bool;
pub extern fn ImGuiViewport_ImGuiViewport() [*c]ImGuiViewport;
pub extern fn ImGuiViewport_destroy(self: [*c]ImGuiViewport) void;
pub extern fn ImGuiViewport_GetCenter(self: [*c]ImGuiViewport) ImVec2_c;
pub extern fn ImGuiViewport_GetWorkCenter(self: [*c]ImGuiViewport) ImVec2_c;
pub extern fn ImGuiPlatformIO_ImGuiPlatformIO() [*c]ImGuiPlatformIO;
pub extern fn ImGuiPlatformIO_destroy(self: [*c]ImGuiPlatformIO) void;
pub extern fn ImGuiPlatformIO_ClearPlatformHandlers(self: [*c]ImGuiPlatformIO) void;
pub extern fn ImGuiPlatformIO_ClearRendererHandlers(self: [*c]ImGuiPlatformIO) void;
pub extern fn ImGuiPlatformMonitor_ImGuiPlatformMonitor() [*c]ImGuiPlatformMonitor;
pub extern fn ImGuiPlatformMonitor_destroy(self: [*c]ImGuiPlatformMonitor) void;
pub extern fn ImGuiPlatformImeData_ImGuiPlatformImeData() [*c]ImGuiPlatformImeData;
pub extern fn ImGuiPlatformImeData_destroy(self: [*c]ImGuiPlatformImeData) void;
pub extern fn igImHashData(data: ?*const anyopaque, data_size: usize, seed: ImGuiID) ImGuiID;
pub extern fn igImHashStr(data: [*c]const u8, data_size: usize, seed: ImGuiID) ImGuiID;
pub extern fn igImHashSkipUncontributingPrefix(label: [*c]const u8) [*c]const u8;
pub extern fn igImQsort(base: ?*anyopaque, count: usize, size_of_element: usize, compare_func: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int) void;
pub extern fn igImAlphaBlendColors(col_a: ImU32, col_b: ImU32) ImU32;
pub extern fn igImIsPowerOfTwo_Int(v: c_int) bool;
pub extern fn igImIsPowerOfTwo_U64(v: ImU64) bool;
pub extern fn igImUpperPowerOfTwo(v: c_int) c_int;
pub extern fn igImCountSetBits(v: c_uint) c_uint;
pub extern fn igImStricmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn igImStrnicmp(str1: [*c]const u8, str2: [*c]const u8, count: usize) c_int;
pub extern fn igImStrncpy(dst: [*c]u8, src: [*c]const u8, count: usize) void;
pub extern fn igImStrdup(str: [*c]const u8) [*c]u8;
pub extern fn igImMemdup(src: ?*const anyopaque, size: usize) ?*anyopaque;
pub extern fn igImStrdupcpy(dst: [*c]u8, p_dst_size: [*c]usize, str: [*c]const u8) [*c]u8;
pub extern fn igImStrchrRange(str_begin: [*c]const u8, str_end: [*c]const u8, c: u8) [*c]const u8;
pub extern fn igImStreolRange(str: [*c]const u8, str_end: [*c]const u8) [*c]const u8;
pub extern fn igImStristr(haystack: [*c]const u8, haystack_end: [*c]const u8, needle: [*c]const u8, needle_end: [*c]const u8) [*c]const u8;
pub extern fn igImStrTrimBlanks(str: [*c]u8) void;
pub extern fn igImStrSkipBlank(str: [*c]const u8) [*c]const u8;
pub extern fn igImStrlenW(str: [*c]const ImWchar) c_int;
pub extern fn igImStrbol(buf_mid_line: [*c]const u8, buf_begin: [*c]const u8) [*c]const u8;
pub extern fn igImToUpper(c: u8) u8;
pub extern fn igImCharIsBlankA(c: u8) bool;
pub extern fn igImCharIsBlankW(c: c_uint) bool;
pub extern fn igImCharIsXdigitA(c: u8) bool;
pub extern fn igImFormatString(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn igImFormatStringV(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, args: va_list) c_int;
pub extern fn igImFormatStringToTempBuffer(out_buf: [*c][*c]const u8, out_buf_end: [*c][*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn igImFormatStringToTempBufferV(out_buf: [*c][*c]const u8, out_buf_end: [*c][*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn igImParseFormatFindStart(format: [*c]const u8) [*c]const u8;
pub extern fn igImParseFormatFindEnd(format: [*c]const u8) [*c]const u8;
pub extern fn igImParseFormatTrimDecorations(format: [*c]const u8, buf: [*c]u8, buf_size: usize) [*c]const u8;
pub extern fn igImParseFormatSanitizeForPrinting(fmt_in: [*c]const u8, fmt_out: [*c]u8, fmt_out_size: usize) void;
pub extern fn igImParseFormatSanitizeForScanning(fmt_in: [*c]const u8, fmt_out: [*c]u8, fmt_out_size: usize) [*c]const u8;
pub extern fn igImParseFormatPrecision(format: [*c]const u8, default_value: c_int) c_int;
pub extern fn igImTextCharToUtf8(out_buf: [*c]u8, c: c_uint) c_int;
pub extern fn igImTextStrToUtf8(out_buf: [*c]u8, out_buf_size: c_int, in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn igImTextCharFromUtf8(out_char: [*c]c_uint, in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextStrFromUtf8(out_buf: [*c]ImWchar, out_buf_size: c_int, in_text: [*c]const u8, in_text_end: [*c]const u8, in_remaining: [*c][*c]const u8) c_int;
pub extern fn igImTextCountCharsFromUtf8(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextCountUtf8BytesFromChar(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextCountUtf8BytesFromStr(in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn igImTextFindPreviousUtf8Codepoint(in_text_start: [*c]const u8, in_p: [*c]const u8) [*c]const u8;
pub extern fn igImTextFindValidUtf8CodepointEnd(in_text_start: [*c]const u8, in_text_end: [*c]const u8, in_p: [*c]const u8) [*c]const u8;
pub extern fn igImTextCountLines(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImFontCalcTextSizeEx(font: [*c]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: [*c]const u8, text_end_display: [*c]const u8, text_end: [*c]const u8, out_remaining: [*c][*c]const u8, out_offset: [*c]ImVec2_c, flags: ImDrawTextFlags) ImVec2_c;
pub extern fn igImFontCalcWordWrapPositionEx(font: [*c]ImFont, size: f32, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, flags: ImDrawTextFlags) [*c]const u8;
pub extern fn igImTextCalcWordWrapNextLineStart(text: [*c]const u8, text_end: [*c]const u8, flags: ImDrawTextFlags) [*c]const u8;
pub extern fn igImFileOpen(filename: [*c]const u8, mode: [*c]const u8) ImFileHandle;
pub extern fn igImFileClose(file: ImFileHandle) bool;
pub extern fn igImFileGetSize(file: ImFileHandle) ImU64;
pub extern fn igImFileRead(data: ?*anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn igImFileWrite(data: ?*const anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn igImFileLoadToMemory(filename: [*c]const u8, mode: [*c]const u8, out_file_size: [*c]usize, padding_bytes: c_int) ?*anyopaque;
pub extern fn igImPow_Float(x: f32, y: f32) f32;
pub extern fn igImPow_double(x: f64, y: f64) f64;
pub extern fn igImLog_Float(x: f32) f32;
pub extern fn igImLog_double(x: f64) f64;
pub extern fn igImAbs_Int(x: c_int) c_int;
pub extern fn igImAbs_Float(x: f32) f32;
pub extern fn igImAbs_double(x: f64) f64;
pub extern fn igImSign_Float(x: f32) f32;
pub extern fn igImSign_double(x: f64) f64;
pub extern fn igImRsqrt_Float(x: f32) f32;
pub extern fn igImRsqrt_double(x: f64) f64;
pub extern fn igImMin(lhs: ImVec2_c, rhs: ImVec2_c) ImVec2_c;
pub extern fn igImMax(lhs: ImVec2_c, rhs: ImVec2_c) ImVec2_c;
pub extern fn igImClamp(v: ImVec2_c, mn: ImVec2_c, mx: ImVec2_c) ImVec2_c;
pub extern fn igImLerp_Vec2Float(a: ImVec2_c, b: ImVec2_c, t: f32) ImVec2_c;
pub extern fn igImLerp_Vec2Vec2(a: ImVec2_c, b: ImVec2_c, t: ImVec2_c) ImVec2_c;
pub extern fn igImLerp_Vec4(a: ImVec4_c, b: ImVec4_c, t: f32) ImVec4_c;
pub extern fn igImSaturate(f: f32) f32;
pub extern fn igImLengthSqr_Vec2(lhs: ImVec2_c) f32;
pub extern fn igImLengthSqr_Vec4(lhs: ImVec4_c) f32;
pub extern fn igImInvLength(lhs: ImVec2_c, fail_value: f32) f32;
pub extern fn igImTrunc_Float(f: f32) f32;
pub extern fn igImTrunc_Vec2(v: ImVec2_c) ImVec2_c;
pub extern fn igImFloor_Float(f: f32) f32;
pub extern fn igImFloor_Vec2(v: ImVec2_c) ImVec2_c;
pub extern fn igImTrunc64(f: f32) f32;
pub extern fn igImRound64(f: f32) f32;
pub extern fn igImModPositive(a: c_int, b: c_int) c_int;
pub extern fn igImDot(a: ImVec2_c, b: ImVec2_c) f32;
pub extern fn igImRotate(v: ImVec2_c, cos_a: f32, sin_a: f32) ImVec2_c;
pub extern fn igImLinearSweep(current: f32, target: f32, speed: f32) f32;
pub extern fn igImLinearRemapClamp(s0: f32, s1: f32, d0: f32, d1: f32, x: f32) f32;
pub extern fn igImMul(lhs: ImVec2_c, rhs: ImVec2_c) ImVec2_c;
pub extern fn igImIsFloatAboveGuaranteedIntegerPrecision(f: f32) bool;
pub extern fn igImExponentialMovingAverage(avg: f32, sample: f32, n: c_int) f32;
pub extern fn igImBezierCubicCalc(p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, p4: ImVec2_c, t: f32) ImVec2_c;
pub extern fn igImBezierCubicClosestPoint(p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, p4: ImVec2_c, p: ImVec2_c, num_segments: c_int) ImVec2_c;
pub extern fn igImBezierCubicClosestPointCasteljau(p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, p4: ImVec2_c, p: ImVec2_c, tess_tol: f32) ImVec2_c;
pub extern fn igImBezierQuadraticCalc(p1: ImVec2_c, p2: ImVec2_c, p3: ImVec2_c, t: f32) ImVec2_c;
pub extern fn igImLineClosestPoint(a: ImVec2_c, b: ImVec2_c, p: ImVec2_c) ImVec2_c;
pub extern fn igImTriangleContainsPoint(a: ImVec2_c, b: ImVec2_c, c: ImVec2_c, p: ImVec2_c) bool;
pub extern fn igImTriangleClosestPoint(a: ImVec2_c, b: ImVec2_c, c: ImVec2_c, p: ImVec2_c) ImVec2_c;
pub extern fn igImTriangleBarycentricCoords(a: ImVec2_c, b: ImVec2_c, c: ImVec2_c, p: ImVec2_c, out_u: [*c]f32, out_v: [*c]f32, out_w: [*c]f32) void;
pub extern fn igImTriangleArea(a: ImVec2_c, b: ImVec2_c, c: ImVec2_c) f32;
pub extern fn igImTriangleIsClockwise(a: ImVec2_c, b: ImVec2_c, c: ImVec2_c) bool;
pub extern fn ImVec1_ImVec1_Nil() [*c]ImVec1;
pub extern fn ImVec1_destroy(self: [*c]ImVec1) void;
pub extern fn ImVec1_ImVec1_Float(_x: f32) [*c]ImVec1;
pub extern fn ImVec2i_ImVec2i_Nil() [*c]ImVec2i;
pub extern fn ImVec2i_destroy(self: [*c]ImVec2i) void;
pub extern fn ImVec2i_ImVec2i_Int(_x: c_int, _y: c_int) [*c]ImVec2i;
pub extern fn ImVec2ih_ImVec2ih_Nil() [*c]ImVec2ih;
pub extern fn ImVec2ih_destroy(self: [*c]ImVec2ih) void;
pub extern fn ImVec2ih_ImVec2ih_short(_x: c_short, _y: c_short) [*c]ImVec2ih;
pub extern fn ImVec2ih_ImVec2ih_Vec2(rhs: ImVec2_c) [*c]ImVec2ih;
pub extern fn ImRect_ImRect_Nil() [*c]ImRect;
pub extern fn ImRect_destroy(self: [*c]ImRect) void;
pub extern fn ImRect_ImRect_Vec2(min: ImVec2_c, max: ImVec2_c) [*c]ImRect;
pub extern fn ImRect_ImRect_Vec4(v: ImVec4_c) [*c]ImRect;
pub extern fn ImRect_ImRect_Float(x1: f32, y1: f32, x2: f32, y2: f32) [*c]ImRect;
pub extern fn ImRect_GetCenter(self: [*c]ImRect) ImVec2_c;
pub extern fn ImRect_GetSize(self: [*c]ImRect) ImVec2_c;
pub extern fn ImRect_GetWidth(self: [*c]ImRect) f32;
pub extern fn ImRect_GetHeight(self: [*c]ImRect) f32;
pub extern fn ImRect_GetArea(self: [*c]ImRect) f32;
pub extern fn ImRect_GetTL(self: [*c]ImRect) ImVec2_c;
pub extern fn ImRect_GetTR(self: [*c]ImRect) ImVec2_c;
pub extern fn ImRect_GetBL(self: [*c]ImRect) ImVec2_c;
pub extern fn ImRect_GetBR(self: [*c]ImRect) ImVec2_c;
pub extern fn ImRect_Contains_Vec2(self: [*c]ImRect, p: ImVec2_c) bool;
pub extern fn ImRect_Contains_Rect(self: [*c]ImRect, r: ImRect_c) bool;
pub extern fn ImRect_ContainsWithPad(self: [*c]ImRect, p: ImVec2_c, pad: ImVec2_c) bool;
pub extern fn ImRect_Overlaps(self: [*c]ImRect, r: ImRect_c) bool;
pub extern fn ImRect_Add_Vec2(self: [*c]ImRect, p: ImVec2_c) void;
pub extern fn ImRect_Add_Rect(self: [*c]ImRect, r: ImRect_c) void;
pub extern fn ImRect_Expand_Float(self: [*c]ImRect, amount: f32) void;
pub extern fn ImRect_Expand_Vec2(self: [*c]ImRect, amount: ImVec2_c) void;
pub extern fn ImRect_Translate(self: [*c]ImRect, d: ImVec2_c) void;
pub extern fn ImRect_TranslateX(self: [*c]ImRect, dx: f32) void;
pub extern fn ImRect_TranslateY(self: [*c]ImRect, dy: f32) void;
pub extern fn ImRect_ClipWith(self: [*c]ImRect, r: ImRect_c) void;
pub extern fn ImRect_ClipWithFull(self: [*c]ImRect, r: ImRect_c) void;
pub extern fn ImRect_Floor(self: [*c]ImRect) void;
pub extern fn ImRect_IsInverted(self: [*c]ImRect) bool;
pub extern fn ImRect_ToVec4(self: [*c]ImRect) ImVec4_c;
pub extern fn ImRect_AsVec4(self: [*c]ImRect) [*c]const ImVec4_c;
pub extern fn igImBitArrayGetStorageSizeInBytes(bitcount: c_int) usize;
pub extern fn igImBitArrayClearAllBits(arr: [*c]ImU32, bitcount: c_int) void;
pub extern fn igImBitArrayTestBit(arr: [*c]const ImU32, n: c_int) bool;
pub extern fn igImBitArrayClearBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn igImBitArraySetBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn igImBitArraySetBitRange(arr: [*c]ImU32, n: c_int, n2: c_int) void;
pub extern fn ImBitVector_Create(self: [*c]ImBitVector, sz: c_int) void;
pub extern fn ImBitVector_Clear(self: [*c]ImBitVector) void;
pub extern fn ImBitVector_TestBit(self: [*c]ImBitVector, n: c_int) bool;
pub extern fn ImBitVector_SetBit(self: [*c]ImBitVector, n: c_int) void;
pub extern fn ImBitVector_ClearBit(self: [*c]ImBitVector, n: c_int) void;
pub extern fn ImGuiTextIndex_clear(self: [*c]ImGuiTextIndex) void;
pub extern fn ImGuiTextIndex_size(self: [*c]ImGuiTextIndex) c_int;
pub extern fn ImGuiTextIndex_get_line_begin(self: [*c]ImGuiTextIndex, base: [*c]const u8, n: c_int) [*c]const u8;
pub extern fn ImGuiTextIndex_get_line_end(self: [*c]ImGuiTextIndex, base: [*c]const u8, n: c_int) [*c]const u8;
pub extern fn ImGuiTextIndex_append(self: [*c]ImGuiTextIndex, base: [*c]const u8, old_size: c_int, new_size: c_int) void;
pub extern fn igImLowerBound(in_begin: [*c]ImGuiStoragePair, in_end: [*c]ImGuiStoragePair, key: ImGuiID) [*c]ImGuiStoragePair;
pub extern fn ImDrawListSharedData_ImDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn ImDrawListSharedData_destroy(self: [*c]ImDrawListSharedData) void;
pub extern fn ImDrawListSharedData_SetCircleTessellationMaxError(self: [*c]ImDrawListSharedData, max_error: f32) void;
pub extern fn ImDrawDataBuilder_ImDrawDataBuilder() [*c]ImDrawDataBuilder;
pub extern fn ImDrawDataBuilder_destroy(self: [*c]ImDrawDataBuilder) void;
pub extern fn ImGuiStyleVarInfo_GetVarPtr(self: ?*ImGuiStyleVarInfo, parent: ?*anyopaque) ?*anyopaque;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Int(idx: ImGuiStyleVar, v: c_int) [*c]ImGuiStyleMod;
pub extern fn ImGuiStyleMod_destroy(self: [*c]ImGuiStyleMod) void;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Float(idx: ImGuiStyleVar, v: f32) [*c]ImGuiStyleMod;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Vec2(idx: ImGuiStyleVar, v: ImVec2_c) [*c]ImGuiStyleMod;
pub extern fn ImGuiComboPreviewData_ImGuiComboPreviewData() [*c]ImGuiComboPreviewData;
pub extern fn ImGuiComboPreviewData_destroy(self: [*c]ImGuiComboPreviewData) void;
pub extern fn ImGuiMenuColumns_ImGuiMenuColumns() [*c]ImGuiMenuColumns;
pub extern fn ImGuiMenuColumns_destroy(self: [*c]ImGuiMenuColumns) void;
pub extern fn ImGuiMenuColumns_Update(self: [*c]ImGuiMenuColumns, spacing: f32, window_reappearing: bool) void;
pub extern fn ImGuiMenuColumns_DeclColumns(self: [*c]ImGuiMenuColumns, w_icon: f32, w_label: f32, w_shortcut: f32, w_mark: f32) f32;
pub extern fn ImGuiMenuColumns_CalcNextTotalWidth(self: [*c]ImGuiMenuColumns, update_offsets: bool) void;
pub extern fn ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState() [*c]ImGuiInputTextDeactivatedState;
pub extern fn ImGuiInputTextDeactivatedState_destroy(self: [*c]ImGuiInputTextDeactivatedState) void;
pub extern fn ImGuiInputTextDeactivatedState_ClearFreeMemory(self: [*c]ImGuiInputTextDeactivatedState) void;
pub extern fn ImGuiInputTextState_ImGuiInputTextState() [*c]ImGuiInputTextState;
pub extern fn ImGuiInputTextState_destroy(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ClearText(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ClearFreeMemory(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_OnKeyPressed(self: [*c]ImGuiInputTextState, key: c_int) void;
pub extern fn ImGuiInputTextState_OnCharPressed(self: [*c]ImGuiInputTextState, c: c_uint) void;
pub extern fn ImGuiInputTextState_GetPreferredOffsetX(self: [*c]ImGuiInputTextState) f32;
pub extern fn ImGuiInputTextState_CursorAnimReset(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_CursorClamp(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_HasSelection(self: [*c]ImGuiInputTextState) bool;
pub extern fn ImGuiInputTextState_ClearSelection(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_GetCursorPos(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetSelectionStart(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetSelectionEnd(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_SelectAll(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndSelectAll(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndKeepSelection(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndMoveToEnd(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiNextWindowData_ImGuiNextWindowData() [*c]ImGuiNextWindowData;
pub extern fn ImGuiNextWindowData_destroy(self: [*c]ImGuiNextWindowData) void;
pub extern fn ImGuiNextWindowData_ClearFlags(self: [*c]ImGuiNextWindowData) void;
pub extern fn ImGuiNextItemData_ImGuiNextItemData() [*c]ImGuiNextItemData;
pub extern fn ImGuiNextItemData_destroy(self: [*c]ImGuiNextItemData) void;
pub extern fn ImGuiNextItemData_ClearFlags(self: [*c]ImGuiNextItemData) void;
pub extern fn ImGuiLastItemData_ImGuiLastItemData() [*c]ImGuiLastItemData;
pub extern fn ImGuiLastItemData_destroy(self: [*c]ImGuiLastItemData) void;
pub extern fn ImGuiErrorRecoveryState_ImGuiErrorRecoveryState() [*c]ImGuiErrorRecoveryState;
pub extern fn ImGuiErrorRecoveryState_destroy(self: [*c]ImGuiErrorRecoveryState) void;
pub extern fn ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr(ptr: ?*anyopaque) [*c]ImGuiPtrOrIndex;
pub extern fn ImGuiPtrOrIndex_destroy(self: [*c]ImGuiPtrOrIndex) void;
pub extern fn ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int(index: c_int) [*c]ImGuiPtrOrIndex;
pub extern fn ImGuiPopupData_ImGuiPopupData() [*c]ImGuiPopupData;
pub extern fn ImGuiPopupData_destroy(self: [*c]ImGuiPopupData) void;
pub extern fn ImGuiInputEvent_ImGuiInputEvent() [*c]ImGuiInputEvent;
pub extern fn ImGuiInputEvent_destroy(self: [*c]ImGuiInputEvent) void;
pub extern fn ImGuiKeyRoutingData_ImGuiKeyRoutingData() [*c]ImGuiKeyRoutingData;
pub extern fn ImGuiKeyRoutingData_destroy(self: [*c]ImGuiKeyRoutingData) void;
pub extern fn ImGuiKeyRoutingTable_ImGuiKeyRoutingTable() [*c]ImGuiKeyRoutingTable;
pub extern fn ImGuiKeyRoutingTable_destroy(self: [*c]ImGuiKeyRoutingTable) void;
pub extern fn ImGuiKeyRoutingTable_Clear(self: [*c]ImGuiKeyRoutingTable) void;
pub extern fn ImGuiKeyOwnerData_ImGuiKeyOwnerData() [*c]ImGuiKeyOwnerData;
pub extern fn ImGuiKeyOwnerData_destroy(self: [*c]ImGuiKeyOwnerData) void;
pub extern fn ImGuiListClipperRange_FromIndices(min: c_int, max: c_int) ImGuiListClipperRange;
pub extern fn ImGuiListClipperRange_FromPositions(y1: f32, y2: f32, off_min: c_int, off_max: c_int) ImGuiListClipperRange;
pub extern fn ImGuiListClipperData_ImGuiListClipperData() [*c]ImGuiListClipperData;
pub extern fn ImGuiListClipperData_destroy(self: [*c]ImGuiListClipperData) void;
pub extern fn ImGuiListClipperData_Reset(self: [*c]ImGuiListClipperData, clipper: [*c]ImGuiListClipper) void;
pub extern fn ImGuiNavItemData_ImGuiNavItemData() [*c]ImGuiNavItemData;
pub extern fn ImGuiNavItemData_destroy(self: [*c]ImGuiNavItemData) void;
pub extern fn ImGuiNavItemData_Clear(self: [*c]ImGuiNavItemData) void;
pub extern fn ImGuiTypingSelectState_ImGuiTypingSelectState() [*c]ImGuiTypingSelectState;
pub extern fn ImGuiTypingSelectState_destroy(self: [*c]ImGuiTypingSelectState) void;
pub extern fn ImGuiTypingSelectState_Clear(self: [*c]ImGuiTypingSelectState) void;
pub extern fn ImGuiOldColumnData_ImGuiOldColumnData() [*c]ImGuiOldColumnData;
pub extern fn ImGuiOldColumnData_destroy(self: [*c]ImGuiOldColumnData) void;
pub extern fn ImGuiOldColumns_ImGuiOldColumns() [*c]ImGuiOldColumns;
pub extern fn ImGuiOldColumns_destroy(self: [*c]ImGuiOldColumns) void;
pub extern fn ImGuiBoxSelectState_ImGuiBoxSelectState() ?*ImGuiBoxSelectState;
pub extern fn ImGuiBoxSelectState_destroy(self: ?*ImGuiBoxSelectState) void;
pub extern fn ImGuiMultiSelectTempData_ImGuiMultiSelectTempData() [*c]ImGuiMultiSelectTempData;
pub extern fn ImGuiMultiSelectTempData_destroy(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectTempData_Clear(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectTempData_ClearIO(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectState_ImGuiMultiSelectState() [*c]ImGuiMultiSelectState;
pub extern fn ImGuiMultiSelectState_destroy(self: [*c]ImGuiMultiSelectState) void;
pub extern fn ImGuiDockNode_ImGuiDockNode(id: ImGuiID) ?*ImGuiDockNode;
pub extern fn ImGuiDockNode_destroy(self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockNode_IsRootNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsDockSpace(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsFloatingNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsCentralNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsHiddenTabBar(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsNoTabBar(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsSplitNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsLeafNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsEmpty(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_Rect(self: ?*ImGuiDockNode) ImRect_c;
pub extern fn ImGuiDockNode_SetLocalFlags(self: ?*ImGuiDockNode, flags: ImGuiDockNodeFlags) void;
pub extern fn ImGuiDockNode_UpdateMergedFlags(self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockContext_ImGuiDockContext() [*c]ImGuiDockContext;
pub extern fn ImGuiDockContext_destroy(self: [*c]ImGuiDockContext) void;
pub extern fn ImGuiViewportP_ImGuiViewportP() [*c]ImGuiViewportP;
pub extern fn ImGuiViewportP_destroy(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_ClearRequestFlags(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_CalcWorkRectPos(self: [*c]ImGuiViewportP, inset_min: ImVec2_c) ImVec2_c;
pub extern fn ImGuiViewportP_CalcWorkRectSize(self: [*c]ImGuiViewportP, inset_min: ImVec2_c, inset_max: ImVec2_c) ImVec2_c;
pub extern fn ImGuiViewportP_UpdateWorkRect(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetMainRect(self: [*c]ImGuiViewportP) ImRect_c;
pub extern fn ImGuiViewportP_GetWorkRect(self: [*c]ImGuiViewportP) ImRect_c;
pub extern fn ImGuiViewportP_GetBuildWorkRect(self: [*c]ImGuiViewportP) ImRect_c;
pub extern fn ImGuiWindowSettings_ImGuiWindowSettings() [*c]ImGuiWindowSettings;
pub extern fn ImGuiWindowSettings_destroy(self: [*c]ImGuiWindowSettings) void;
pub extern fn ImGuiWindowSettings_GetName(self: [*c]ImGuiWindowSettings) [*c]u8;
pub extern fn ImGuiSettingsHandler_ImGuiSettingsHandler() [*c]ImGuiSettingsHandler;
pub extern fn ImGuiSettingsHandler_destroy(self: [*c]ImGuiSettingsHandler) void;
pub extern fn ImGuiDebugAllocInfo_ImGuiDebugAllocInfo() [*c]ImGuiDebugAllocInfo;
pub extern fn ImGuiDebugAllocInfo_destroy(self: [*c]ImGuiDebugAllocInfo) void;
pub extern fn ImGuiStackLevelInfo_ImGuiStackLevelInfo() [*c]ImGuiStackLevelInfo;
pub extern fn ImGuiStackLevelInfo_destroy(self: [*c]ImGuiStackLevelInfo) void;
pub extern fn ImGuiDebugItemPathQuery_ImGuiDebugItemPathQuery() [*c]ImGuiDebugItemPathQuery;
pub extern fn ImGuiDebugItemPathQuery_destroy(self: [*c]ImGuiDebugItemPathQuery) void;
pub extern fn ImGuiIDStackTool_ImGuiIDStackTool() [*c]ImGuiIDStackTool;
pub extern fn ImGuiIDStackTool_destroy(self: [*c]ImGuiIDStackTool) void;
pub extern fn ImGuiContextHook_ImGuiContextHook() [*c]ImGuiContextHook;
pub extern fn ImGuiContextHook_destroy(self: [*c]ImGuiContextHook) void;
pub extern fn ImGuiContext_ImGuiContext(shared_font_atlas: [*c]ImFontAtlas) ?*ImGuiContext;
pub extern fn ImGuiContext_destroy(self: ?*ImGuiContext) void;
pub extern fn ImGuiWindow_ImGuiWindow(context: ?*ImGuiContext, name: [*c]const u8) ?*ImGuiWindow;
pub extern fn ImGuiWindow_destroy(self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_GetID_Str(self: ?*ImGuiWindow, str: [*c]const u8, str_end: [*c]const u8) ImGuiID;
pub extern fn ImGuiWindow_GetID_Ptr(self: ?*ImGuiWindow, ptr: ?*const anyopaque) ImGuiID;
pub extern fn ImGuiWindow_GetID_Int(self: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn ImGuiWindow_GetIDFromPos(self: ?*ImGuiWindow, p_abs: ImVec2_c) ImGuiID;
pub extern fn ImGuiWindow_GetIDFromRectangle(self: ?*ImGuiWindow, r_abs: ImRect_c) ImGuiID;
pub extern fn ImGuiWindow_Rect(self: ?*ImGuiWindow) ImRect_c;
pub extern fn ImGuiWindow_TitleBarRect(self: ?*ImGuiWindow) ImRect_c;
pub extern fn ImGuiWindow_MenuBarRect(self: ?*ImGuiWindow) ImRect_c;
pub extern fn ImGuiTabItem_ImGuiTabItem() [*c]ImGuiTabItem;
pub extern fn ImGuiTabItem_destroy(self: [*c]ImGuiTabItem) void;
pub extern fn ImGuiTabBar_ImGuiTabBar() [*c]ImGuiTabBar;
pub extern fn ImGuiTabBar_destroy(self: [*c]ImGuiTabBar) void;
pub extern fn ImGuiTableColumn_ImGuiTableColumn() ?*ImGuiTableColumn;
pub extern fn ImGuiTableColumn_destroy(self: ?*ImGuiTableColumn) void;
pub extern fn ImGuiTableInstanceData_ImGuiTableInstanceData() [*c]ImGuiTableInstanceData;
pub extern fn ImGuiTableInstanceData_destroy(self: [*c]ImGuiTableInstanceData) void;
pub extern fn ImGuiTable_ImGuiTable() ?*ImGuiTable;
pub extern fn ImGuiTable_destroy(self: ?*ImGuiTable) void;
pub extern fn ImGuiTableTempData_ImGuiTableTempData() [*c]ImGuiTableTempData;
pub extern fn ImGuiTableTempData_destroy(self: [*c]ImGuiTableTempData) void;
pub extern fn ImGuiTableColumnSettings_ImGuiTableColumnSettings() ?*ImGuiTableColumnSettings;
pub extern fn ImGuiTableColumnSettings_destroy(self: ?*ImGuiTableColumnSettings) void;
pub extern fn ImGuiTableSettings_ImGuiTableSettings() [*c]ImGuiTableSettings;
pub extern fn ImGuiTableSettings_destroy(self: [*c]ImGuiTableSettings) void;
pub extern fn ImGuiTableSettings_GetColumnSettings(self: [*c]ImGuiTableSettings) ?*ImGuiTableColumnSettings;
pub extern fn igGetIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiIO;
pub extern fn igGetPlatformIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiPlatformIO;
pub extern fn igGetCurrentWindowRead() ?*ImGuiWindow;
pub extern fn igGetCurrentWindow() ?*ImGuiWindow;
pub extern fn igFindWindowByID(id: ImGuiID) ?*ImGuiWindow;
pub extern fn igFindWindowByName(name: [*c]const u8) ?*ImGuiWindow;
pub extern fn igUpdateWindowParentAndRootLinks(window: ?*ImGuiWindow, flags: ImGuiWindowFlags, parent_window: ?*ImGuiWindow) void;
pub extern fn igUpdateWindowSkipRefresh(window: ?*ImGuiWindow) void;
pub extern fn igCalcWindowNextAutoFitSize(window: ?*ImGuiWindow) ImVec2_c;
pub extern fn igIsWindowChildOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow, popup_hierarchy: bool, dock_hierarchy: bool) bool;
pub extern fn igIsWindowInBeginStack(window: ?*ImGuiWindow) bool;
pub extern fn igIsWindowWithinBeginStackOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow) bool;
pub extern fn igIsWindowAbove(potential_above: ?*ImGuiWindow, potential_below: ?*ImGuiWindow) bool;
pub extern fn igIsWindowNavFocusable(window: ?*ImGuiWindow) bool;
pub extern fn igSetWindowPos_WindowPtr(window: ?*ImGuiWindow, pos: ImVec2_c, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_WindowPtr(window: ?*ImGuiWindow, size: ImVec2_c, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_WindowPtr(window: ?*ImGuiWindow, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowHitTestHole(window: ?*ImGuiWindow, pos: ImVec2_c, size: ImVec2_c) void;
pub extern fn igSetWindowHiddenAndSkipItemsForCurrentFrame(window: ?*ImGuiWindow) void;
pub extern fn igSetWindowParentWindowForFocusRoute(window: ?*ImGuiWindow, parent_window: ?*ImGuiWindow) void;
pub extern fn igWindowRectAbsToRel(window: ?*ImGuiWindow, r: ImRect_c) ImRect_c;
pub extern fn igWindowRectRelToAbs(window: ?*ImGuiWindow, r: ImRect_c) ImRect_c;
pub extern fn igWindowPosAbsToRel(window: ?*ImGuiWindow, p: ImVec2_c) ImVec2_c;
pub extern fn igWindowPosRelToAbs(window: ?*ImGuiWindow, p: ImVec2_c) ImVec2_c;
pub extern fn igFocusWindow(window: ?*ImGuiWindow, flags: ImGuiFocusRequestFlags) void;
pub extern fn igFocusTopMostWindowUnderOne(under_this_window: ?*ImGuiWindow, ignore_window: ?*ImGuiWindow, filter_viewport: [*c]ImGuiViewport, flags: ImGuiFocusRequestFlags) void;
pub extern fn igBringWindowToFocusFront(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayFront(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayBack(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayBehind(window: ?*ImGuiWindow, above_window: ?*ImGuiWindow) void;
pub extern fn igFindWindowDisplayIndex(window: ?*ImGuiWindow) c_int;
pub extern fn igFindBottomMostVisibleWindowWithinBeginStack(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn igSetNextWindowRefreshPolicy(flags: ImGuiWindowRefreshFlags) void;
pub extern fn igRegisterUserTexture(tex: [*c]ImTextureData) void;
pub extern fn igUnregisterUserTexture(tex: [*c]ImTextureData) void;
pub extern fn igRegisterFontAtlas(atlas: [*c]ImFontAtlas) void;
pub extern fn igUnregisterFontAtlas(atlas: [*c]ImFontAtlas) void;
pub extern fn igSetCurrentFont(font: [*c]ImFont, font_size_before_scaling: f32, font_size_after_scaling: f32) void;
pub extern fn igUpdateCurrentFontSize(restore_font_size_after_scaling: f32) void;
pub extern fn igSetFontRasterizerDensity(rasterizer_density: f32) void;
pub extern fn igGetFontRasterizerDensity() f32;
pub extern fn igGetRoundedFontSize(size: f32) f32;
pub extern fn igGetDefaultFont() [*c]ImFont;
pub extern fn igPushPasswordFont() void;
pub extern fn igPopPasswordFont() void;
pub extern fn igGetForegroundDrawList_WindowPtr(window: ?*ImGuiWindow) [*c]ImDrawList;
pub extern fn igAddDrawListToDrawDataEx(draw_data: [*c]ImDrawData, out_list: [*c]ImVector_ImDrawListPtr, draw_list: [*c]ImDrawList) void;
pub extern fn igInitialize() void;
pub extern fn igShutdown() void;
pub extern fn igUpdateInputEvents(trickle_fast_inputs: bool) void;
pub extern fn igUpdateHoveredWindowAndCaptureFlags(mouse_pos: ImVec2_c) void;
pub extern fn igFindHoveredWindowEx(pos: ImVec2_c, find_first_and_in_any_viewport: bool, out_hovered_window: [*c]?*ImGuiWindow, out_hovered_window_under_moving_window: [*c]?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindow(window: ?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindowOrNode(window: ?*ImGuiWindow, node: ?*ImGuiDockNode, undock: bool) void;
pub extern fn igStopMouseMovingWindow() void;
pub extern fn igUpdateMouseMovingWindowNewFrame() void;
pub extern fn igUpdateMouseMovingWindowEndFrame() void;
pub extern fn igAddContextHook(context: ?*ImGuiContext, hook: [*c]const ImGuiContextHook) ImGuiID;
pub extern fn igRemoveContextHook(context: ?*ImGuiContext, hook_to_remove: ImGuiID) void;
pub extern fn igCallContextHooks(context: ?*ImGuiContext, @"type": ImGuiContextHookType) void;
pub extern fn igTranslateWindowsInViewport(viewport: [*c]ImGuiViewportP, old_pos: ImVec2_c, new_pos: ImVec2_c, old_size: ImVec2_c, new_size: ImVec2_c) void;
pub extern fn igScaleWindowsInViewport(viewport: [*c]ImGuiViewportP, scale: f32) void;
pub extern fn igDestroyPlatformWindow(viewport: [*c]ImGuiViewportP) void;
pub extern fn igSetWindowViewport(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP) void;
pub extern fn igSetCurrentViewport(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP) void;
pub extern fn igGetViewportPlatformMonitor(viewport: [*c]ImGuiViewport) [*c]const ImGuiPlatformMonitor;
pub extern fn igFindHoveredViewportFromPlatformWindowStack(mouse_platform_pos: ImVec2_c) [*c]ImGuiViewportP;
pub extern fn igMarkIniSettingsDirty_Nil() void;
pub extern fn igMarkIniSettingsDirty_WindowPtr(window: ?*ImGuiWindow) void;
pub extern fn igClearIniSettings() void;
pub extern fn igAddSettingsHandler(handler: [*c]const ImGuiSettingsHandler) void;
pub extern fn igRemoveSettingsHandler(type_name: [*c]const u8) void;
pub extern fn igFindSettingsHandler(type_name: [*c]const u8) [*c]ImGuiSettingsHandler;
pub extern fn igCreateNewWindowSettings(name: [*c]const u8) [*c]ImGuiWindowSettings;
pub extern fn igFindWindowSettingsByID(id: ImGuiID) [*c]ImGuiWindowSettings;
pub extern fn igFindWindowSettingsByWindow(window: ?*ImGuiWindow) [*c]ImGuiWindowSettings;
pub extern fn igClearWindowSettings(name: [*c]const u8) void;
pub extern fn igLocalizeRegisterEntries(entries: [*c]const ImGuiLocEntry, count: c_int) void;
pub extern fn igLocalizeGetMsg(key: ImGuiLocKey) [*c]const u8;
pub extern fn igSetScrollX_WindowPtr(window: ?*ImGuiWindow, scroll_x: f32) void;
pub extern fn igSetScrollY_WindowPtr(window: ?*ImGuiWindow, scroll_y: f32) void;
pub extern fn igSetScrollFromPosX_WindowPtr(window: ?*ImGuiWindow, local_x: f32, center_x_ratio: f32) void;
pub extern fn igSetScrollFromPosY_WindowPtr(window: ?*ImGuiWindow, local_y: f32, center_y_ratio: f32) void;
pub extern fn igScrollToItem(flags: ImGuiScrollFlags) void;
pub extern fn igScrollToRect(window: ?*ImGuiWindow, rect: ImRect_c, flags: ImGuiScrollFlags) void;
pub extern fn igScrollToRectEx(window: ?*ImGuiWindow, rect: ImRect_c, flags: ImGuiScrollFlags) ImVec2_c;
pub extern fn igScrollToBringRectIntoView(window: ?*ImGuiWindow, rect: ImRect_c) void;
pub extern fn igGetItemStatusFlags() ImGuiItemStatusFlags;
pub extern fn igGetItemFlags() ImGuiItemFlags;
pub extern fn igGetActiveID() ImGuiID;
pub extern fn igGetFocusID() ImGuiID;
pub extern fn igSetActiveID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn igSetFocusID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn igClearActiveID() void;
pub extern fn igGetHoveredID() ImGuiID;
pub extern fn igSetHoveredID(id: ImGuiID) void;
pub extern fn igKeepAliveID(id: ImGuiID) void;
pub extern fn igMarkItemEdited(id: ImGuiID) void;
pub extern fn igPushOverrideID(id: ImGuiID) void;
pub extern fn igGetIDWithSeed_Str(str_id_begin: [*c]const u8, str_id_end: [*c]const u8, seed: ImGuiID) ImGuiID;
pub extern fn igGetIDWithSeed_Int(n: c_int, seed: ImGuiID) ImGuiID;
pub extern fn igItemSize_Vec2(size: ImVec2_c, text_baseline_y: f32) void;
pub extern fn igItemSize_Rect(bb: ImRect_c, text_baseline_y: f32) void;
pub extern fn igItemAdd(bb: ImRect_c, id: ImGuiID, nav_bb: [*c]const ImRect, extra_flags: ImGuiItemFlags) bool;
pub extern fn igItemHoverable(bb: ImRect_c, id: ImGuiID, item_flags: ImGuiItemFlags) bool;
pub extern fn igIsWindowContentHoverable(window: ?*ImGuiWindow, flags: ImGuiHoveredFlags) bool;
pub extern fn igIsClippedEx(bb: ImRect_c, id: ImGuiID) bool;
pub extern fn igSetLastItemData(item_id: ImGuiID, item_flags: ImGuiItemFlags, status_flags: ImGuiItemStatusFlags, item_rect: ImRect_c) void;
pub extern fn igCalcItemSize(size: ImVec2_c, default_w: f32, default_h: f32) ImVec2_c;
pub extern fn igCalcWrapWidthForPos(pos: ImVec2_c, wrap_pos_x: f32) f32;
pub extern fn igPushMultiItemsWidths(components: c_int, width_full: f32) void;
pub extern fn igShrinkWidths(items: [*c]ImGuiShrinkWidthItem, count: c_int, width_excess: f32, width_min: f32) void;
pub extern fn igCalcClipRectVisibleItemsY(clip_rect: ImRect_c, pos: ImVec2_c, items_height: f32, out_visible_start: [*c]c_int, out_visible_end: [*c]c_int) void;
pub extern fn igGetStyleVarInfo(idx: ImGuiStyleVar) ?*const ImGuiStyleVarInfo;
pub extern fn igBeginDisabledOverrideReenable() void;
pub extern fn igEndDisabledOverrideReenable() void;
pub extern fn igLogBegin(flags: ImGuiLogFlags, auto_open_depth: c_int) void;
pub extern fn igLogToBuffer(auto_open_depth: c_int) void;
pub extern fn igLogRenderedText(ref_pos: [*c]const ImVec2_c, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn igLogSetNextTextDecoration(prefix: [*c]const u8, suffix: [*c]const u8) void;
pub extern fn igBeginChildEx(name: [*c]const u8, id: ImGuiID, size_arg: ImVec2_c, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupEx(id: ImGuiID, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupMenuEx(id: ImGuiID, label: [*c]const u8, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igOpenPopupEx(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn igClosePopupToLevel(remaining: c_int, restore_focus_to_window_under_popup: bool) void;
pub extern fn igClosePopupsOverWindow(ref_window: ?*ImGuiWindow, restore_focus_to_window_under_popup: bool) void;
pub extern fn igClosePopupsExceptModals() void;
pub extern fn igIsPopupOpen_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igGetPopupAllowedExtentRect(window: ?*ImGuiWindow) ImRect_c;
pub extern fn igGetTopMostPopupModal() ?*ImGuiWindow;
pub extern fn igGetTopMostAndVisiblePopupModal() ?*ImGuiWindow;
pub extern fn igFindBlockingModal(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn igFindBestWindowPosForPopup(window: ?*ImGuiWindow) ImVec2_c;
pub extern fn igFindBestWindowPosForPopupEx(ref_pos: ImVec2_c, size: ImVec2_c, last_dir: [*c]ImGuiDir, r_outer: ImRect_c, r_avoid: ImRect_c, policy: ImGuiPopupPositionPolicy) ImVec2_c;
pub extern fn igBeginTooltipEx(tooltip_flags: ImGuiTooltipFlags, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginTooltipHidden() bool;
pub extern fn igBeginViewportSideBar(name: [*c]const u8, viewport: [*c]ImGuiViewport, dir: ImGuiDir, size: f32, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginMenuEx(label: [*c]const u8, icon: [*c]const u8, enabled: bool) bool;
pub extern fn igMenuItemEx(label: [*c]const u8, icon: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn igBeginComboPopup(popup_id: ImGuiID, bb: ImRect_c, flags: ImGuiComboFlags) bool;
pub extern fn igBeginComboPreview() bool;
pub extern fn igEndComboPreview() void;
pub extern fn igNavInitWindow(window: ?*ImGuiWindow, force_reinit: bool) void;
pub extern fn igNavInitRequestApplyResult() void;
pub extern fn igNavMoveRequestButNoResultYet() bool;
pub extern fn igNavMoveRequestSubmit(move_dir: ImGuiDir, clip_dir: ImGuiDir, move_flags: ImGuiNavMoveFlags, scroll_flags: ImGuiScrollFlags) void;
pub extern fn igNavMoveRequestForward(move_dir: ImGuiDir, clip_dir: ImGuiDir, move_flags: ImGuiNavMoveFlags, scroll_flags: ImGuiScrollFlags) void;
pub extern fn igNavMoveRequestResolveWithLastItem(result: [*c]ImGuiNavItemData) void;
pub extern fn igNavMoveRequestResolveWithPastTreeNode(result: [*c]ImGuiNavItemData, tree_node_data: [*c]const ImGuiTreeNodeStackData) void;
pub extern fn igNavMoveRequestCancel() void;
pub extern fn igNavMoveRequestApplyResult() void;
pub extern fn igNavMoveRequestTryWrapping(window: ?*ImGuiWindow, move_flags: ImGuiNavMoveFlags) void;
pub extern fn igNavHighlightActivated(id: ImGuiID) void;
pub extern fn igNavClearPreferredPosForAxis(axis: ImGuiAxis) void;
pub extern fn igSetNavCursorVisibleAfterMove() void;
pub extern fn igNavUpdateCurrentWindowIsScrollPushableX() void;
pub extern fn igSetNavWindow(window: ?*ImGuiWindow) void;
pub extern fn igSetNavID(id: ImGuiID, nav_layer: ImGuiNavLayer, focus_scope_id: ImGuiID, rect_rel: ImRect_c) void;
pub extern fn igSetNavFocusScope(focus_scope_id: ImGuiID) void;
pub extern fn igFocusItem() void;
pub extern fn igActivateItemByID(id: ImGuiID) void;
pub extern fn igIsNamedKey(key: ImGuiKey) bool;
pub extern fn igIsNamedKeyOrMod(key: ImGuiKey) bool;
pub extern fn igIsLegacyKey(key: ImGuiKey) bool;
pub extern fn igIsKeyboardKey(key: ImGuiKey) bool;
pub extern fn igIsGamepadKey(key: ImGuiKey) bool;
pub extern fn igIsMouseKey(key: ImGuiKey) bool;
pub extern fn igIsAliasKey(key: ImGuiKey) bool;
pub extern fn igIsLRModKey(key: ImGuiKey) bool;
pub extern fn igFixupKeyChord(key_chord: ImGuiKeyChord) ImGuiKeyChord;
pub extern fn igConvertSingleModFlagToKey(key: ImGuiKey) ImGuiKey;
pub extern fn igGetKeyData_ContextPtr(ctx: ?*ImGuiContext, key: ImGuiKey) [*c]ImGuiKeyData;
pub extern fn igGetKeyData_Key(key: ImGuiKey) [*c]ImGuiKeyData;
pub extern fn igGetKeyChordName(key_chord: ImGuiKeyChord) [*c]const u8;
pub extern fn igMouseButtonToKey(button: ImGuiMouseButton) ImGuiKey;
pub extern fn igIsMouseDragPastThreshold(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn igGetKeyMagnitude2d(key_left: ImGuiKey, key_right: ImGuiKey, key_up: ImGuiKey, key_down: ImGuiKey) ImVec2_c;
pub extern fn igGetNavTweakPressedAmount(axis: ImGuiAxis) f32;
pub extern fn igCalcTypematicRepeatAmount(t0: f32, t1: f32, repeat_delay: f32, repeat_rate: f32) c_int;
pub extern fn igGetTypematicRepeatRate(flags: ImGuiInputFlags, repeat_delay: [*c]f32, repeat_rate: [*c]f32) void;
pub extern fn igTeleportMousePos(pos: ImVec2_c) void;
pub extern fn igSetActiveIdUsingAllKeyboardKeys() void;
pub extern fn igIsActiveIdUsingNavDir(dir: ImGuiDir) bool;
pub extern fn igGetKeyOwner(key: ImGuiKey) ImGuiID;
pub extern fn igSetKeyOwner(key: ImGuiKey, owner_id: ImGuiID, flags: ImGuiInputFlags) void;
pub extern fn igSetKeyOwnersForKeyChord(key: ImGuiKeyChord, owner_id: ImGuiID, flags: ImGuiInputFlags) void;
pub extern fn igSetItemKeyOwner_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags) void;
pub extern fn igTestKeyOwner(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igGetKeyOwnerData(ctx: ?*ImGuiContext, key: ImGuiKey) [*c]ImGuiKeyOwnerData;
pub extern fn igIsKeyDown_ID(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igIsKeyPressed_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsKeyReleased_ID(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igIsKeyChordPressed_InputFlags(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsMouseDown_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igIsMouseClicked_InputFlags(button: ImGuiMouseButton, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsMouseReleased_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igIsMouseDoubleClicked_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igShortcut_ID(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igSetShortcutRouting(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igTestShortcutRouting(key_chord: ImGuiKeyChord, owner_id: ImGuiID) bool;
pub extern fn igGetShortcutRoutingData(key_chord: ImGuiKeyChord) [*c]ImGuiKeyRoutingData;
pub extern fn igDockContextInitialize(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextShutdown(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextClearNodes(ctx: ?*ImGuiContext, root_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn igDockContextRebuildNodes(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextNewFrameUpdateUndocking(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextNewFrameUpdateDocking(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextEndFrame(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextGenNodeID(ctx: ?*ImGuiContext) ImGuiID;
pub extern fn igDockContextQueueDock(ctx: ?*ImGuiContext, target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload: ?*ImGuiWindow, split_dir: ImGuiDir, split_ratio: f32, split_outer: bool) void;
pub extern fn igDockContextQueueUndockWindow(ctx: ?*ImGuiContext, window: ?*ImGuiWindow) void;
pub extern fn igDockContextQueueUndockNode(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn igDockContextProcessUndockWindow(ctx: ?*ImGuiContext, window: ?*ImGuiWindow, clear_persistent_docking_ref: bool) void;
pub extern fn igDockContextProcessUndockNode(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn igDockContextCalcDropPosForDocking(target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload_window: ?*ImGuiWindow, payload_node: ?*ImGuiDockNode, split_dir: ImGuiDir, split_outer: bool, out_pos: [*c]ImVec2_c) bool;
pub extern fn igDockContextFindNodeByID(ctx: ?*ImGuiContext, id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockNodeWindowMenuHandler_Default(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode, tab_bar: [*c]ImGuiTabBar) void;
pub extern fn igDockNodeBeginAmendTabBar(node: ?*ImGuiDockNode) bool;
pub extern fn igDockNodeEndAmendTabBar() void;
pub extern fn igDockNodeGetRootNode(node: ?*ImGuiDockNode) ?*ImGuiDockNode;
pub extern fn igDockNodeIsInHierarchyOf(node: ?*ImGuiDockNode, parent: ?*ImGuiDockNode) bool;
pub extern fn igDockNodeGetDepth(node: ?*const ImGuiDockNode) c_int;
pub extern fn igDockNodeGetWindowMenuButtonId(node: ?*const ImGuiDockNode) ImGuiID;
pub extern fn igGetWindowDockNode() ?*ImGuiDockNode;
pub extern fn igGetWindowAlwaysWantOwnTabBar(window: ?*ImGuiWindow) bool;
pub extern fn igBeginDocked(window: ?*ImGuiWindow, p_open: [*c]bool) void;
pub extern fn igBeginDockableDragDropSource(window: ?*ImGuiWindow) void;
pub extern fn igBeginDockableDragDropTarget(window: ?*ImGuiWindow) void;
pub extern fn igSetWindowDock(window: ?*ImGuiWindow, dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn igDockBuilderDockWindow(window_name: [*c]const u8, node_id: ImGuiID) void;
pub extern fn igDockBuilderGetNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockBuilderGetCentralNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockBuilderAddNode(node_id: ImGuiID, flags: ImGuiDockNodeFlags) ImGuiID;
pub extern fn igDockBuilderRemoveNode(node_id: ImGuiID) void;
pub extern fn igDockBuilderRemoveNodeDockedWindows(node_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn igDockBuilderRemoveNodeChildNodes(node_id: ImGuiID) void;
pub extern fn igDockBuilderSetNodePos(node_id: ImGuiID, pos: ImVec2_c) void;
pub extern fn igDockBuilderSetNodeSize(node_id: ImGuiID, size: ImVec2_c) void;
pub extern fn igDockBuilderSplitNode(node_id: ImGuiID, split_dir: ImGuiDir, size_ratio_for_node_at_dir: f32, out_id_at_dir: [*c]ImGuiID, out_id_at_opposite_dir: [*c]ImGuiID) ImGuiID;
pub extern fn igDockBuilderCopyDockSpace(src_dockspace_id: ImGuiID, dst_dockspace_id: ImGuiID, in_window_remap_pairs: [*c]ImVector_const_charPtr) void;
pub extern fn igDockBuilderCopyNode(src_node_id: ImGuiID, dst_node_id: ImGuiID, out_node_remap_pairs: [*c]ImVector_ImGuiID) void;
pub extern fn igDockBuilderCopyWindowSettings(src_name: [*c]const u8, dst_name: [*c]const u8) void;
pub extern fn igDockBuilderFinish(node_id: ImGuiID) void;
pub extern fn igPushFocusScope(id: ImGuiID) void;
pub extern fn igPopFocusScope() void;
pub extern fn igGetCurrentFocusScope() ImGuiID;
pub extern fn igIsDragDropActive() bool;
pub extern fn igBeginDragDropTargetCustom(bb: ImRect_c, id: ImGuiID) bool;
pub extern fn igBeginDragDropTargetViewport(viewport: [*c]ImGuiViewport, p_bb: [*c]const ImRect) bool;
pub extern fn igClearDragDrop() void;
pub extern fn igIsDragDropPayloadBeingAccepted() bool;
pub extern fn igRenderDragDropTargetRectForItem(bb: ImRect_c) void;
pub extern fn igRenderDragDropTargetRectEx(draw_list: [*c]ImDrawList, bb: ImRect_c) void;
pub extern fn igGetTypingSelectRequest(flags: ImGuiTypingSelectFlags) [*c]ImGuiTypingSelectRequest;
pub extern fn igTypingSelectFindMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn igTypingSelectFindNextSingleCharMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn igTypingSelectFindBestLeadingMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque) c_int;
pub extern fn igBeginBoxSelect(scope_rect: ImRect_c, window: ?*ImGuiWindow, box_select_id: ImGuiID, ms_flags: ImGuiMultiSelectFlags) bool;
pub extern fn igEndBoxSelect(scope_rect: ImRect_c, ms_flags: ImGuiMultiSelectFlags) void;
pub extern fn igMultiSelectItemHeader(id: ImGuiID, p_selected: [*c]bool, p_button_flags: [*c]ImGuiButtonFlags) void;
pub extern fn igMultiSelectItemFooter(id: ImGuiID, p_selected: [*c]bool, p_pressed: [*c]bool) void;
pub extern fn igMultiSelectAddSetAll(ms: [*c]ImGuiMultiSelectTempData, selected: bool) void;
pub extern fn igMultiSelectAddSetRange(ms: [*c]ImGuiMultiSelectTempData, selected: bool, range_dir: c_int, first_item: ImGuiSelectionUserData, last_item: ImGuiSelectionUserData) void;
pub extern fn igGetBoxSelectState(id: ImGuiID) ?*ImGuiBoxSelectState;
pub extern fn igGetMultiSelectState(id: ImGuiID) [*c]ImGuiMultiSelectState;
pub extern fn igSetWindowClipRectBeforeSetChannel(window: ?*ImGuiWindow, clip_rect: ImRect_c) void;
pub extern fn igBeginColumns(str_id: [*c]const u8, count: c_int, flags: ImGuiOldColumnFlags) void;
pub extern fn igEndColumns() void;
pub extern fn igPushColumnClipRect(column_index: c_int) void;
pub extern fn igPushColumnsBackground() void;
pub extern fn igPopColumnsBackground() void;
pub extern fn igGetColumnsID(str_id: [*c]const u8, count: c_int) ImGuiID;
pub extern fn igFindOrCreateColumns(window: ?*ImGuiWindow, id: ImGuiID) [*c]ImGuiOldColumns;
pub extern fn igGetColumnOffsetFromNorm(columns: [*c]const ImGuiOldColumns, offset_norm: f32) f32;
pub extern fn igGetColumnNormFromOffset(columns: [*c]const ImGuiOldColumns, offset: f32) f32;
pub extern fn igTableOpenContextMenu(column_n: c_int) void;
pub extern fn igTableSetColumnWidth(column_n: c_int, width: f32) void;
pub extern fn igTableSetColumnSortDirection(column_n: c_int, sort_direction: ImGuiSortDirection, append_to_sort_specs: bool) void;
pub extern fn igTableGetHoveredRow() c_int;
pub extern fn igTableGetHeaderRowHeight() f32;
pub extern fn igTableGetHeaderAngledMaxLabelWidth() f32;
pub extern fn igTablePushBackgroundChannel() void;
pub extern fn igTablePopBackgroundChannel() void;
pub extern fn igTablePushColumnChannel(column_n: c_int) void;
pub extern fn igTablePopColumnChannel() void;
pub extern fn igTableAngledHeadersRowEx(row_id: ImGuiID, angle: f32, max_label_width: f32, data: [*c]const ImGuiTableHeaderData, data_count: c_int) void;
pub extern fn igGetCurrentTable() ?*ImGuiTable;
pub extern fn igTableFindByID(id: ImGuiID) ?*ImGuiTable;
pub extern fn igBeginTableEx(name: [*c]const u8, id: ImGuiID, columns_count: c_int, flags: ImGuiTableFlags, outer_size: ImVec2_c, inner_width: f32) bool;
pub extern fn igTableBeginInitMemory(table: ?*ImGuiTable, columns_count: c_int) void;
pub extern fn igTableBeginApplyRequests(table: ?*ImGuiTable) void;
pub extern fn igTableSetupDrawChannels(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateLayout(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateBorders(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateColumnsWeightFromWidth(table: ?*ImGuiTable) void;
pub extern fn igTableDrawBorders(table: ?*ImGuiTable) void;
pub extern fn igTableDrawDefaultContextMenu(table: ?*ImGuiTable, flags_for_section_to_display: ImGuiTableFlags) void;
pub extern fn igTableBeginContextMenuPopup(table: ?*ImGuiTable) bool;
pub extern fn igTableMergeDrawChannels(table: ?*ImGuiTable) void;
pub extern fn igTableGetInstanceData(table: ?*ImGuiTable, instance_no: c_int) [*c]ImGuiTableInstanceData;
pub extern fn igTableGetInstanceID(table: ?*ImGuiTable, instance_no: c_int) ImGuiID;
pub extern fn igTableSortSpecsSanitize(table: ?*ImGuiTable) void;
pub extern fn igTableSortSpecsBuild(table: ?*ImGuiTable) void;
pub extern fn igTableGetColumnNextSortDirection(column: ?*ImGuiTableColumn) ImGuiSortDirection;
pub extern fn igTableFixColumnSortDirection(table: ?*ImGuiTable, column: ?*ImGuiTableColumn) void;
pub extern fn igTableGetColumnWidthAuto(table: ?*ImGuiTable, column: ?*ImGuiTableColumn) f32;
pub extern fn igTableBeginRow(table: ?*ImGuiTable) void;
pub extern fn igTableEndRow(table: ?*ImGuiTable) void;
pub extern fn igTableBeginCell(table: ?*ImGuiTable, column_n: c_int) void;
pub extern fn igTableEndCell(table: ?*ImGuiTable) void;
pub extern fn igTableGetCellBgRect(table: ?*const ImGuiTable, column_n: c_int) ImRect_c;
pub extern fn igTableGetColumnName_TablePtr(table: ?*const ImGuiTable, column_n: c_int) [*c]const u8;
pub extern fn igTableGetColumnResizeID(table: ?*ImGuiTable, column_n: c_int, instance_no: c_int) ImGuiID;
pub extern fn igTableCalcMaxColumnWidth(table: ?*const ImGuiTable, column_n: c_int) f32;
pub extern fn igTableSetColumnWidthAutoSingle(table: ?*ImGuiTable, column_n: c_int) void;
pub extern fn igTableSetColumnWidthAutoAll(table: ?*ImGuiTable) void;
pub extern fn igTableRemove(table: ?*ImGuiTable) void;
pub extern fn igTableGcCompactTransientBuffers_TablePtr(table: ?*ImGuiTable) void;
pub extern fn igTableGcCompactTransientBuffers_TableTempDataPtr(table: [*c]ImGuiTableTempData) void;
pub extern fn igTableGcCompactSettings() void;
pub extern fn igTableLoadSettings(table: ?*ImGuiTable) void;
pub extern fn igTableSaveSettings(table: ?*ImGuiTable) void;
pub extern fn igTableResetSettings(table: ?*ImGuiTable) void;
pub extern fn igTableGetBoundSettings(table: ?*ImGuiTable) [*c]ImGuiTableSettings;
pub extern fn igTableSettingsAddSettingsHandler() void;
pub extern fn igTableSettingsCreate(id: ImGuiID, columns_count: c_int) [*c]ImGuiTableSettings;
pub extern fn igTableSettingsFindByID(id: ImGuiID) [*c]ImGuiTableSettings;
pub extern fn igGetCurrentTabBar() [*c]ImGuiTabBar;
pub extern fn igTabBarFindByID(id: ImGuiID) [*c]ImGuiTabBar;
pub extern fn igTabBarRemove(tab_bar: [*c]ImGuiTabBar) void;
pub extern fn igBeginTabBarEx(tab_bar: [*c]ImGuiTabBar, bb: ImRect_c, flags: ImGuiTabBarFlags) bool;
pub extern fn igTabBarFindTabByID(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) [*c]ImGuiTabItem;
pub extern fn igTabBarFindTabByOrder(tab_bar: [*c]ImGuiTabBar, order: c_int) [*c]ImGuiTabItem;
pub extern fn igTabBarFindMostRecentlySelectedTabForActiveWindow(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn igTabBarGetCurrentTab(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn igTabBarGetTabOrder(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) c_int;
pub extern fn igTabBarGetTabName(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) [*c]const u8;
pub extern fn igTabBarAddTab(tab_bar: [*c]ImGuiTabBar, tab_flags: ImGuiTabItemFlags, window: ?*ImGuiWindow) void;
pub extern fn igTabBarRemoveTab(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) void;
pub extern fn igTabBarCloseTab(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn igTabBarQueueFocus_TabItemPtr(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn igTabBarQueueFocus_Str(tab_bar: [*c]ImGuiTabBar, tab_name: [*c]const u8) void;
pub extern fn igTabBarQueueReorder(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem, offset: c_int) void;
pub extern fn igTabBarQueueReorderFromMousePos(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem, mouse_pos: ImVec2_c) void;
pub extern fn igTabBarProcessReorder(tab_bar: [*c]ImGuiTabBar) bool;
pub extern fn igTabItemEx(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags, docked_window: ?*ImGuiWindow) bool;
pub extern fn igTabItemSpacing(str_id: [*c]const u8, flags: ImGuiTabItemFlags, width: f32) void;
pub extern fn igTabItemCalcSize_Str(label: [*c]const u8, has_close_button_or_unsaved_marker: bool) ImVec2_c;
pub extern fn igTabItemCalcSize_WindowPtr(window: ?*ImGuiWindow) ImVec2_c;
pub extern fn igTabItemBackground(draw_list: [*c]ImDrawList, bb: ImRect_c, flags: ImGuiTabItemFlags, col: ImU32) void;
pub extern fn igTabItemLabelAndCloseButton(draw_list: [*c]ImDrawList, bb: ImRect_c, flags: ImGuiTabItemFlags, frame_padding: ImVec2_c, label: [*c]const u8, tab_id: ImGuiID, close_button_id: ImGuiID, is_contents_visible: bool, out_just_closed: [*c]bool, out_text_clipped: [*c]bool) void;
pub extern fn igRenderText(pos: ImVec2_c, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_hash: bool) void;
pub extern fn igRenderTextWrapped(pos: ImVec2_c, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) void;
pub extern fn igRenderTextClipped(pos_min: ImVec2_c, pos_max: ImVec2_c, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2_c, @"align": ImVec2_c, clip_rect: [*c]const ImRect) void;
pub extern fn igRenderTextClippedEx(draw_list: [*c]ImDrawList, pos_min: ImVec2_c, pos_max: ImVec2_c, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2_c, @"align": ImVec2_c, clip_rect: [*c]const ImRect) void;
pub extern fn igRenderTextEllipsis(draw_list: [*c]ImDrawList, pos_min: ImVec2_c, pos_max: ImVec2_c, ellipsis_max_x: f32, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2_c) void;
pub extern fn igRenderFrame(p_min: ImVec2_c, p_max: ImVec2_c, fill_col: ImU32, borders: bool, rounding: f32) void;
pub extern fn igRenderFrameBorder(p_min: ImVec2_c, p_max: ImVec2_c, rounding: f32) void;
pub extern fn igRenderColorRectWithAlphaCheckerboard(draw_list: [*c]ImDrawList, p_min: ImVec2_c, p_max: ImVec2_c, fill_col: ImU32, grid_step: f32, grid_off: ImVec2_c, rounding: f32, flags: ImDrawFlags) void;
pub extern fn igRenderNavCursor(bb: ImRect_c, id: ImGuiID, flags: ImGuiNavRenderCursorFlags) void;
pub extern fn igFindRenderedTextEnd(text: [*c]const u8, text_end: [*c]const u8) [*c]const u8;
pub extern fn igRenderMouseCursor(pos: ImVec2_c, scale: f32, mouse_cursor: ImGuiMouseCursor, col_fill: ImU32, col_border: ImU32, col_shadow: ImU32) void;
pub extern fn igRenderArrow(draw_list: [*c]ImDrawList, pos: ImVec2_c, col: ImU32, dir: ImGuiDir, scale: f32) void;
pub extern fn igRenderBullet(draw_list: [*c]ImDrawList, pos: ImVec2_c, col: ImU32) void;
pub extern fn igRenderCheckMark(draw_list: [*c]ImDrawList, pos: ImVec2_c, col: ImU32, sz: f32) void;
pub extern fn igRenderArrowPointingAt(draw_list: [*c]ImDrawList, pos: ImVec2_c, half_sz: ImVec2_c, direction: ImGuiDir, col: ImU32) void;
pub extern fn igRenderArrowDockMenu(draw_list: [*c]ImDrawList, p_min: ImVec2_c, sz: f32, col: ImU32) void;
pub extern fn igRenderRectFilledRangeH(draw_list: [*c]ImDrawList, rect: ImRect_c, col: ImU32, x_start_norm: f32, x_end_norm: f32, rounding: f32) void;
pub extern fn igRenderRectFilledWithHole(draw_list: [*c]ImDrawList, outer: ImRect_c, inner: ImRect_c, col: ImU32, rounding: f32) void;
pub extern fn igCalcRoundingFlagsForRectInRect(r_in: ImRect_c, r_outer: ImRect_c, threshold: f32) ImDrawFlags;
pub extern fn igTextEx(text: [*c]const u8, text_end: [*c]const u8, flags: ImGuiTextFlags) void;
pub extern fn igTextAligned(align_x: f32, size_x: f32, fmt: [*c]const u8, ...) void;
pub extern fn igTextAlignedV(align_x: f32, size_x: f32, fmt: [*c]const u8, args: va_list) void;
pub extern fn igButtonEx(label: [*c]const u8, size_arg: ImVec2_c, flags: ImGuiButtonFlags) bool;
pub extern fn igArrowButtonEx(str_id: [*c]const u8, dir: ImGuiDir, size_arg: ImVec2_c, flags: ImGuiButtonFlags) bool;
pub extern fn igImageButtonEx(id: ImGuiID, tex_ref: ImTextureRef_c, image_size: ImVec2_c, uv0: ImVec2_c, uv1: ImVec2_c, bg_col: ImVec4_c, tint_col: ImVec4_c, flags: ImGuiButtonFlags) bool;
pub extern fn igSeparatorEx(flags: ImGuiSeparatorFlags, thickness: f32) void;
pub extern fn igSeparatorTextEx(id: ImGuiID, label: [*c]const u8, label_end: [*c]const u8, extra_width: f32) void;
pub extern fn igCheckboxFlags_S64Ptr(label: [*c]const u8, flags: [*c]ImS64, flags_value: ImS64) bool;
pub extern fn igCheckboxFlags_U64Ptr(label: [*c]const u8, flags: [*c]ImU64, flags_value: ImU64) bool;
pub extern fn igCloseButton(id: ImGuiID, pos: ImVec2_c) bool;
pub extern fn igCollapseButton(id: ImGuiID, pos: ImVec2_c, dock_node: ?*ImGuiDockNode) bool;
pub extern fn igScrollbar(axis: ImGuiAxis) void;
pub extern fn igScrollbarEx(bb: ImRect_c, id: ImGuiID, axis: ImGuiAxis, p_scroll_v: [*c]ImS64, avail_v: ImS64, contents_v: ImS64, draw_rounding_flags: ImDrawFlags) bool;
pub extern fn igGetWindowScrollbarRect(window: ?*ImGuiWindow, axis: ImGuiAxis) ImRect_c;
pub extern fn igGetWindowScrollbarID(window: ?*ImGuiWindow, axis: ImGuiAxis) ImGuiID;
pub extern fn igGetWindowResizeCornerID(window: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn igGetWindowResizeBorderID(window: ?*ImGuiWindow, dir: ImGuiDir) ImGuiID;
pub extern fn igButtonBehavior(bb: ImRect_c, id: ImGuiID, out_hovered: [*c]bool, out_held: [*c]bool, flags: ImGuiButtonFlags) bool;
pub extern fn igDragBehavior(id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderBehavior(bb: ImRect_c, id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags, out_grab_bb: [*c]ImRect) bool;
pub extern fn igSplitterBehavior(bb: ImRect_c, id: ImGuiID, axis: ImGuiAxis, size1: [*c]f32, size2: [*c]f32, min_size1: f32, min_size2: f32, hover_extend: f32, hover_visibility_delay: f32, bg_col: ImU32) bool;
pub extern fn igTreeNodeBehavior(id: ImGuiID, flags: ImGuiTreeNodeFlags, label: [*c]const u8, label_end: [*c]const u8) bool;
pub extern fn igTreeNodeDrawLineToChildNode(target_pos: ImVec2_c) void;
pub extern fn igTreeNodeDrawLineToTreePop(data: [*c]const ImGuiTreeNodeStackData) void;
pub extern fn igTreePushOverrideID(id: ImGuiID) void;
pub extern fn igTreeNodeGetOpen(storage_id: ImGuiID) bool;
pub extern fn igTreeNodeSetOpen(storage_id: ImGuiID, open: bool) void;
pub extern fn igTreeNodeUpdateNextOpen(storage_id: ImGuiID, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igDataTypeGetInfo(data_type: ImGuiDataType) [*c]const ImGuiDataTypeInfo;
pub extern fn igDataTypeFormatString(buf: [*c]u8, buf_size: c_int, data_type: ImGuiDataType, p_data: ?*const anyopaque, format: [*c]const u8) c_int;
pub extern fn igDataTypeApplyOp(data_type: ImGuiDataType, op: c_int, output: ?*anyopaque, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) void;
pub extern fn igDataTypeApplyFromText(buf: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_data_when_empty: ?*anyopaque) bool;
pub extern fn igDataTypeCompare(data_type: ImGuiDataType, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) c_int;
pub extern fn igDataTypeClamp(data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque) bool;
pub extern fn igDataTypeIsZero(data_type: ImGuiDataType, p_data: ?*const anyopaque) bool;
pub extern fn igInputTextEx(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: c_int, size_arg: ImVec2_c, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextDeactivateHook(id: ImGuiID) void;
pub extern fn igTempInputText(bb: ImRect_c, id: ImGuiID, label: [*c]const u8, buf: [*c]u8, buf_size: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igTempInputScalar(bb: ImRect_c, id: ImGuiID, label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_clamp_min: ?*const anyopaque, p_clamp_max: ?*const anyopaque) bool;
pub extern fn igTempInputIsActive(id: ImGuiID) bool;
pub extern fn igGetInputTextState(id: ImGuiID) [*c]ImGuiInputTextState;
pub extern fn igSetNextItemRefVal(data_type: ImGuiDataType, p_data: ?*anyopaque) void;
pub extern fn igIsItemActiveAsInputText() bool;
pub extern fn igColorTooltip(text: [*c]const u8, col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorEditOptionsPopup(col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorPickerOptionsPopup(ref_col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igPlotEx(plot_type: ImGuiPlotType, label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, size_arg: ImVec2_c) c_int;
pub extern fn igShadeVertsLinearColorGradientKeepAlpha(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, gradient_p0: ImVec2_c, gradient_p1: ImVec2_c, col0: ImU32, col1: ImU32) void;
pub extern fn igShadeVertsLinearUV(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, a: ImVec2_c, b: ImVec2_c, uv_a: ImVec2_c, uv_b: ImVec2_c, clamp: bool) void;
pub extern fn igShadeVertsTransformPos(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, pivot_in: ImVec2_c, cos_a: f32, sin_a: f32, pivot_out: ImVec2_c) void;
pub extern fn igGcCompactTransientMiscBuffers() void;
pub extern fn igGcCompactTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn igGcAwakeTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn igErrorLog(msg: [*c]const u8) bool;
pub extern fn igErrorRecoveryStoreState(state_out: [*c]ImGuiErrorRecoveryState) void;
pub extern fn igErrorRecoveryTryToRecoverState(state_in: [*c]const ImGuiErrorRecoveryState) void;
pub extern fn igErrorRecoveryTryToRecoverWindowState(state_in: [*c]const ImGuiErrorRecoveryState) void;
pub extern fn igErrorCheckUsingSetCursorPosToExtendParentBoundaries() void;
pub extern fn igErrorCheckEndFrameFinalizeErrorTooltip() void;
pub extern fn igBeginErrorTooltip() bool;
pub extern fn igEndErrorTooltip() void;
pub extern fn igDebugAllocHook(info: [*c]ImGuiDebugAllocInfo, frame_count: c_int, ptr: ?*anyopaque, size: usize) void;
pub extern fn igDebugDrawCursorPos(col: ImU32) void;
pub extern fn igDebugDrawLineExtents(col: ImU32) void;
pub extern fn igDebugDrawItemRect(col: ImU32) void;
pub extern fn igDebugTextUnformattedWithLocateItem(line_begin: [*c]const u8, line_end: [*c]const u8) void;
pub extern fn igDebugLocateItem(target_id: ImGuiID) void;
pub extern fn igDebugLocateItemOnHover(target_id: ImGuiID) void;
pub extern fn igDebugLocateItemResolveWithLastItem() void;
pub extern fn igDebugBreakClearData() void;
pub extern fn igDebugBreakButton(label: [*c]const u8, description_of_location: [*c]const u8) bool;
pub extern fn igDebugBreakButtonTooltip(keyboard_only: bool, description_of_location: [*c]const u8) void;
pub extern fn igShowFontAtlas(atlas: [*c]ImFontAtlas) void;
pub extern fn igDebugHookIdInfo(id: ImGuiID, data_type: ImGuiDataType, data_id: ?*const anyopaque, data_id_end: ?*const anyopaque) void;
pub extern fn igDebugNodeColumns(columns: [*c]ImGuiOldColumns) void;
pub extern fn igDebugNodeDockNode(node: ?*ImGuiDockNode, label: [*c]const u8) void;
pub extern fn igDebugNodeDrawList(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP, draw_list: [*c]const ImDrawList, label: [*c]const u8) void;
pub extern fn igDebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list: [*c]ImDrawList, draw_list: [*c]const ImDrawList, draw_cmd: [*c]const ImDrawCmd, show_mesh: bool, show_aabb: bool) void;
pub extern fn igDebugNodeFont(font: [*c]ImFont) void;
pub extern fn igDebugNodeFontGlyphesForSrcMask(font: [*c]ImFont, baked: ?*ImFontBaked, src_mask: c_int) void;
pub extern fn igDebugNodeFontGlyph(font: [*c]ImFont, glyph: ?*const ImFontGlyph) void;
pub extern fn igDebugNodeTexture(tex: [*c]ImTextureData, int_id: c_int, highlight_rect: [*c]const ImFontAtlasRect) void;
pub extern fn igDebugNodeStorage(storage: [*c]ImGuiStorage, label: [*c]const u8) void;
pub extern fn igDebugNodeTabBar(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8) void;
pub extern fn igDebugNodeTable(table: ?*ImGuiTable) void;
pub extern fn igDebugNodeTableSettings(settings: [*c]ImGuiTableSettings) void;
pub extern fn igDebugNodeInputTextState(state: [*c]ImGuiInputTextState) void;
pub extern fn igDebugNodeTypingSelectState(state: [*c]ImGuiTypingSelectState) void;
pub extern fn igDebugNodeMultiSelectState(state: [*c]ImGuiMultiSelectState) void;
pub extern fn igDebugNodeWindow(window: ?*ImGuiWindow, label: [*c]const u8) void;
pub extern fn igDebugNodeWindowSettings(settings: [*c]ImGuiWindowSettings) void;
pub extern fn igDebugNodeWindowsList(windows: [*c]ImVector_ImGuiWindowPtr, label: [*c]const u8) void;
pub extern fn igDebugNodeWindowsListByBeginStackParent(windows: [*c]?*ImGuiWindow, windows_size: c_int, parent_in_begin_stack: ?*ImGuiWindow) void;
pub extern fn igDebugNodeViewport(viewport: [*c]ImGuiViewportP) void;
pub extern fn igDebugNodePlatformMonitor(monitor: [*c]ImGuiPlatformMonitor, label: [*c]const u8, idx: c_int) void;
pub extern fn igDebugRenderKeyboardPreview(draw_list: [*c]ImDrawList) void;
pub extern fn igDebugRenderViewportThumbnail(draw_list: [*c]ImDrawList, viewport: [*c]ImGuiViewportP, bb: ImRect_c) void;
pub extern fn ImFontLoader_ImFontLoader() [*c]ImFontLoader;
pub extern fn ImFontLoader_destroy(self: [*c]ImFontLoader) void;
pub extern fn igImFontAtlasGetFontLoaderForStbTruetype() [*c]const ImFontLoader;
pub extern fn igImFontAtlasRectId_GetIndex(id: ImFontAtlasRectId) c_int;
pub extern fn igImFontAtlasRectId_GetGeneration(id: ImFontAtlasRectId) c_uint;
pub extern fn igImFontAtlasRectId_Make(index_idx: c_int, gen_idx: c_int) ImFontAtlasRectId;
pub extern fn ImFontAtlasBuilder_ImFontAtlasBuilder() [*c]ImFontAtlasBuilder;
pub extern fn ImFontAtlasBuilder_destroy(self: [*c]ImFontAtlasBuilder) void;
pub extern fn igImFontAtlasBuildInit(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildDestroy(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildMain(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildSetupFontLoader(atlas: [*c]ImFontAtlas, font_loader: [*c]const ImFontLoader) void;
pub extern fn igImFontAtlasBuildNotifySetFont(atlas: [*c]ImFontAtlas, old_font: [*c]ImFont, new_font: [*c]ImFont) void;
pub extern fn igImFontAtlasBuildUpdatePointers(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildRenderBitmapFromString(atlas: [*c]ImFontAtlas, x: c_int, y: c_int, w: c_int, h: c_int, in_str: [*c]const u8, in_marker_char: u8) void;
pub extern fn igImFontAtlasBuildClear(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasTextureAdd(atlas: [*c]ImFontAtlas, w: c_int, h: c_int) [*c]ImTextureData;
pub extern fn igImFontAtlasTextureMakeSpace(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasTextureRepack(atlas: [*c]ImFontAtlas, w: c_int, h: c_int) void;
pub extern fn igImFontAtlasTextureGrow(atlas: [*c]ImFontAtlas, old_w: c_int, old_h: c_int) void;
pub extern fn igImFontAtlasTextureCompact(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasTextureGetSizeEstimate(atlas: [*c]ImFontAtlas) ImVec2i_c;
pub extern fn igImFontAtlasBuildSetupFontSpecialGlyphs(atlas: [*c]ImFontAtlas, font: [*c]ImFont, src: [*c]ImFontConfig) void;
pub extern fn igImFontAtlasBuildLegacyPreloadAllGlyphRanges(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildGetOversampleFactors(src: [*c]ImFontConfig, baked: ?*ImFontBaked, out_oversample_h: [*c]c_int, out_oversample_v: [*c]c_int) void;
pub extern fn igImFontAtlasBuildDiscardBakes(atlas: [*c]ImFontAtlas, unused_frames: c_int) void;
pub extern fn igImFontAtlasFontSourceInit(atlas: [*c]ImFontAtlas, src: [*c]ImFontConfig) bool;
pub extern fn igImFontAtlasFontSourceAddToFont(atlas: [*c]ImFontAtlas, font: [*c]ImFont, src: [*c]ImFontConfig) void;
pub extern fn igImFontAtlasFontDestroySourceData(atlas: [*c]ImFontAtlas, src: [*c]ImFontConfig) void;
pub extern fn igImFontAtlasFontInitOutput(atlas: [*c]ImFontAtlas, font: [*c]ImFont) bool;
pub extern fn igImFontAtlasFontDestroyOutput(atlas: [*c]ImFontAtlas, font: [*c]ImFont) void;
pub extern fn igImFontAtlasFontDiscardBakes(atlas: [*c]ImFontAtlas, font: [*c]ImFont, unused_frames: c_int) void;
pub extern fn igImFontAtlasBakedGetId(font_id: ImGuiID, baked_size: f32, rasterizer_density: f32) ImGuiID;
pub extern fn igImFontAtlasBakedGetOrAdd(atlas: [*c]ImFontAtlas, font: [*c]ImFont, font_size: f32, font_rasterizer_density: f32) ?*ImFontBaked;
pub extern fn igImFontAtlasBakedGetClosestMatch(atlas: [*c]ImFontAtlas, font: [*c]ImFont, font_size: f32, font_rasterizer_density: f32) ?*ImFontBaked;
pub extern fn igImFontAtlasBakedAdd(atlas: [*c]ImFontAtlas, font: [*c]ImFont, font_size: f32, font_rasterizer_density: f32, baked_id: ImGuiID) ?*ImFontBaked;
pub extern fn igImFontAtlasBakedDiscard(atlas: [*c]ImFontAtlas, font: [*c]ImFont, baked: ?*ImFontBaked) void;
pub extern fn igImFontAtlasBakedAddFontGlyph(atlas: [*c]ImFontAtlas, baked: ?*ImFontBaked, src: [*c]ImFontConfig, in_glyph: ?*const ImFontGlyph) ?*ImFontGlyph;
pub extern fn igImFontAtlasBakedAddFontGlyphAdvancedX(atlas: [*c]ImFontAtlas, baked: ?*ImFontBaked, src: [*c]ImFontConfig, codepoint: ImWchar, advance_x: f32) void;
pub extern fn igImFontAtlasBakedDiscardFontGlyph(atlas: [*c]ImFontAtlas, font: [*c]ImFont, baked: ?*ImFontBaked, glyph: ?*ImFontGlyph) void;
pub extern fn igImFontAtlasBakedSetFontGlyphBitmap(atlas: [*c]ImFontAtlas, baked: ?*ImFontBaked, src: [*c]ImFontConfig, glyph: ?*ImFontGlyph, r: [*c]ImTextureRect, src_pixels: [*c]const u8, src_fmt: ImTextureFormat, src_pitch: c_int) void;
pub extern fn igImFontAtlasPackInit(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasPackAddRect(atlas: [*c]ImFontAtlas, w: c_int, h: c_int, overwrite_entry: ?*ImFontAtlasRectEntry) ImFontAtlasRectId;
pub extern fn igImFontAtlasPackGetRect(atlas: [*c]ImFontAtlas, id: ImFontAtlasRectId) [*c]ImTextureRect;
pub extern fn igImFontAtlasPackGetRectSafe(atlas: [*c]ImFontAtlas, id: ImFontAtlasRectId) [*c]ImTextureRect;
pub extern fn igImFontAtlasPackDiscardRect(atlas: [*c]ImFontAtlas, id: ImFontAtlasRectId) void;
pub extern fn igImFontAtlasUpdateNewFrame(atlas: [*c]ImFontAtlas, frame_count: c_int, renderer_has_textures: bool) void;
pub extern fn igImFontAtlasAddDrawListSharedData(atlas: [*c]ImFontAtlas, data: [*c]ImDrawListSharedData) void;
pub extern fn igImFontAtlasRemoveDrawListSharedData(atlas: [*c]ImFontAtlas, data: [*c]ImDrawListSharedData) void;
pub extern fn igImFontAtlasUpdateDrawListsTextures(atlas: [*c]ImFontAtlas, old_tex: ImTextureRef_c, new_tex: ImTextureRef_c) void;
pub extern fn igImFontAtlasUpdateDrawListsSharedData(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasTextureBlockConvert(src_pixels: [*c]const u8, src_fmt: ImTextureFormat, src_pitch: c_int, dst_pixels: [*c]u8, dst_fmt: ImTextureFormat, dst_pitch: c_int, w: c_int, h: c_int) void;
pub extern fn igImFontAtlasTextureBlockPostProcess(data: [*c]ImFontAtlasPostProcessData) void;
pub extern fn igImFontAtlasTextureBlockPostProcessMultiply(data: [*c]ImFontAtlasPostProcessData, multiply_factor: f32) void;
pub extern fn igImFontAtlasTextureBlockFill(dst_tex: [*c]ImTextureData, dst_x: c_int, dst_y: c_int, w: c_int, h: c_int, col: ImU32) void;
pub extern fn igImFontAtlasTextureBlockCopy(src_tex: [*c]ImTextureData, src_x: c_int, src_y: c_int, dst_tex: [*c]ImTextureData, dst_x: c_int, dst_y: c_int, w: c_int, h: c_int) void;
pub extern fn igImFontAtlasTextureBlockQueueUpload(atlas: [*c]ImFontAtlas, tex: [*c]ImTextureData, x: c_int, y: c_int, w: c_int, h: c_int) void;
pub extern fn igImTextureDataGetFormatBytesPerPixel(format: ImTextureFormat) c_int;
pub extern fn igImTextureDataGetStatusName(status: ImTextureStatus) [*c]const u8;
pub extern fn igImTextureDataGetFormatName(format: ImTextureFormat) [*c]const u8;
pub extern fn igImFontAtlasDebugLogTextureRequests(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasGetMouseCursorTexData(atlas: [*c]ImFontAtlas, cursor_type: ImGuiMouseCursor, out_offset: [*c]ImVec2_c, out_size: [*c]ImVec2_c, out_uv_border: [*c]ImVec2, out_uv_fill: [*c]ImVec2) bool;
pub extern fn ImGuiTextBuffer_appendf(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, ...) void;
pub extern fn igGET_FLT_MAX() f32;
pub extern fn igGET_FLT_MIN() f32;
pub extern fn ImVector_ImWchar_create() [*c]ImVector_ImWchar;
pub extern fn ImVector_ImWchar_destroy(self: [*c]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_Init(p: [*c]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_UnInit(p: [*c]ImVector_ImWchar) void;
pub extern fn ImGuiPlatformIO_Set_Platform_GetWindowPos(platform_io: [*c]ImGuiPlatformIO, user_callback: ?*const fn ([*c]ImGuiViewport, [*c]ImVec2) callconv(.c) void) void;
pub extern fn ImGuiPlatformIO_Set_Platform_GetWindowSize(platform_io: [*c]ImGuiPlatformIO, user_callback: ?*const fn ([*c]ImGuiViewport, [*c]ImVec2) callconv(.c) void) void;
pub extern fn _memccpy(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Val: c_int, _MaxCount: usize) ?*anyopaque;
pub extern fn memchr(_Buf: ?*const anyopaque, _Val: c_int, _MaxCount: c_ulonglong) ?*anyopaque;
pub extern fn _memicmp(_Buf1: ?*const anyopaque, _Buf2: ?*const anyopaque, _Size: usize) c_int;
pub extern fn _memicmp_l(_Buf1: ?*const anyopaque, _Buf2: ?*const anyopaque, _Size: usize, _Locale: _locale_t) c_int;
pub extern fn memcmp(_Buf1: ?*const anyopaque, _Buf2: ?*const anyopaque, _Size: c_ulonglong) c_int;
pub extern fn memcpy(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Size: c_ulonglong) ?*anyopaque;
pub extern fn memcpy_s(_dest: ?*anyopaque, _numberOfElements: usize, _src: ?*const anyopaque, _count: usize) errno_t;
pub extern fn mempcpy(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Size: c_ulonglong) ?*anyopaque;
pub extern fn memset(_Dst: ?*anyopaque, _Val: c_int, _Size: c_ulonglong) ?*anyopaque;
pub extern fn memccpy(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Val: c_int, _Size: c_ulonglong) ?*anyopaque;
pub extern fn memicmp(_Buf1: ?*const anyopaque, _Buf2: ?*const anyopaque, _Size: usize) c_int;
pub extern fn _strset(_Str: [*c]u8, _Val: c_int) [*c]u8;
pub extern fn _strset_l(_Str: [*c]u8, _Val: c_int, _Locale: _locale_t) [*c]u8;
pub extern fn strcpy(_Dest: [*c]u8, _Source: [*c]const u8) [*c]u8;
pub extern fn strcat(_Dest: [*c]u8, _Source: [*c]const u8) [*c]u8;
pub extern fn strcmp(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;
pub extern fn strlen(_Str: [*c]const u8) c_ulonglong;
pub extern fn strnlen(_Str: [*c]const u8, _MaxCount: usize) usize;
pub extern fn memmove(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Size: c_ulonglong) ?*anyopaque;
pub extern fn _strdup(_Src: [*c]const u8) [*c]u8;
pub extern fn strchr(_Str: [*c]const u8, _Val: c_int) [*c]u8;
pub extern fn _stricmp(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;
pub extern fn _strcmpi(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;
pub extern fn _stricmp_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _Locale: _locale_t) c_int;
pub extern fn strcoll(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;
pub extern fn _strcoll_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _Locale: _locale_t) c_int;
pub extern fn _stricoll(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;
pub extern fn _stricoll_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _Locale: _locale_t) c_int;
pub extern fn _strncoll(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize) c_int;
pub extern fn _strncoll_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) c_int;
pub extern fn _strnicoll(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize) c_int;
pub extern fn _strnicoll_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) c_int;
pub extern fn strcspn(_Str: [*c]const u8, _Control: [*c]const u8) c_ulonglong;
pub extern fn _strerror(_ErrMsg: [*c]const u8) [*c]u8;
pub extern fn strerror(c_int) [*c]u8;
pub extern fn _strlwr(_String: [*c]u8) [*c]u8;
pub extern fn strlwr_l(_String: [*c]u8, _Locale: _locale_t) [*c]u8;
pub extern fn strncat(_Dest: [*c]u8, _Source: [*c]const u8, _Count: c_ulonglong) [*c]u8;
pub extern fn strncmp(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: c_ulonglong) c_int;
pub extern fn _strnicmp(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize) c_int;
pub extern fn _strnicmp_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) c_int;
pub extern fn strncpy(_Dest: [*c]u8, _Source: [*c]const u8, _Count: c_ulonglong) [*c]u8;
pub extern fn _strnset(_Str: [*c]u8, _Val: c_int, _MaxCount: usize) [*c]u8;
pub extern fn _strnset_l(str: [*c]u8, c: c_int, count: usize, _Locale: _locale_t) [*c]u8;
pub extern fn strpbrk(_Str: [*c]const u8, _Control: [*c]const u8) [*c]u8;
pub extern fn strrchr(_Str: [*c]const u8, _Ch: c_int) [*c]u8;
pub extern fn _strrev(_Str: [*c]u8) [*c]u8;
pub extern fn strspn(_Str: [*c]const u8, _Control: [*c]const u8) c_ulonglong;
pub extern fn strstr(_Str: [*c]const u8, _SubStr: [*c]const u8) [*c]u8;
pub extern fn strtok(_Str: [*c]u8, _Delim: [*c]const u8) [*c]u8;
pub extern fn strtok_r(noalias _Str: [*c]u8, noalias _Delim: [*c]const u8, noalias __last: [*c][*c]u8) [*c]u8;
pub extern fn _strupr(_String: [*c]u8) [*c]u8;
pub extern fn _strupr_l(_String: [*c]u8, _Locale: _locale_t) [*c]u8;
pub extern fn strxfrm(_Dst: [*c]u8, _Src: [*c]const u8, _MaxCount: c_ulonglong) c_ulonglong;
pub extern fn _strxfrm_l(noalias _Dst: [*c]u8, noalias _Src: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) usize;
pub extern fn strdup(_Src: [*c]const u8) [*c]u8;
pub extern fn strcmpi(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;
pub extern fn stricmp(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;
pub extern fn strlwr(_Str: [*c]u8) [*c]u8;
pub extern fn strnicmp(_Str1: [*c]const u8, _Str: [*c]const u8, _MaxCount: usize) c_int;
pub fn strncasecmp(arg___sz1: [*c]const u8, arg___sz2: [*c]const u8, arg___sizeMaxCompare: c_ulonglong) callconv(.c) c_int {
    var __sz1 = arg___sz1;
    _ = &__sz1;
    var __sz2 = arg___sz2;
    _ = &__sz2;
    var __sizeMaxCompare = arg___sizeMaxCompare;
    _ = &__sizeMaxCompare;
    return _strnicmp(__sz1, __sz2, __sizeMaxCompare);
}
pub fn strcasecmp(arg___sz1: [*c]const u8, arg___sz2: [*c]const u8) callconv(.c) c_int {
    var __sz1 = arg___sz1;
    _ = &__sz1;
    var __sz2 = arg___sz2;
    _ = &__sz2;
    return _stricmp(__sz1, __sz2);
}
pub extern fn strnset(_Str: [*c]u8, _Val: c_int, _MaxCount: usize) [*c]u8;
pub extern fn strrev(_Str: [*c]u8) [*c]u8;
pub extern fn strset(_Str: [*c]u8, _Val: c_int) [*c]u8;
pub extern fn strupr(_Str: [*c]u8) [*c]u8;
pub extern fn _wcsdup(_Str: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcscat(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcschr(_Str: [*c]const c_ushort, _Ch: c_ushort) [*c]c_ushort;
pub extern fn wcscmp(_Str1: [*c]const c_ushort, _Str2: [*c]const c_ushort) c_int;
pub extern fn wcscpy(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcscspn(_Str: [*c]const wchar_t, _Control: [*c]const wchar_t) usize;
pub extern fn wcslen(_Str: [*c]const c_ushort) c_ulonglong;
pub extern fn wcsnlen(_Src: [*c]const wchar_t, _MaxCount: usize) usize;
pub extern fn wcsncat(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t, _Count: usize) [*c]wchar_t;
pub extern fn wcsncmp(_Str1: [*c]const c_ushort, _Str2: [*c]const c_ushort, _MaxCount: c_ulonglong) c_int;
pub extern fn wcsncpy(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t, _Count: usize) [*c]wchar_t;
pub extern fn _wcsncpy_l(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t, _Count: usize, _Locale: _locale_t) [*c]wchar_t;
pub extern fn wcspbrk(_Str: [*c]const wchar_t, _Control: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcsrchr(_Str: [*c]const wchar_t, _Ch: wchar_t) [*c]wchar_t;
pub extern fn wcsspn(_Str: [*c]const wchar_t, _Control: [*c]const wchar_t) usize;
pub extern fn wcsstr(_Str: [*c]const wchar_t, _SubStr: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcstok(noalias _Str: [*c]wchar_t, noalias _Delim: [*c]const wchar_t, noalias _Ptr: [*c][*c]wchar_t) [*c]wchar_t;
pub extern fn _wcstok(noalias _Str: [*c]wchar_t, noalias _Delim: [*c]const wchar_t) [*c]wchar_t;
pub extern fn _wcserror(_ErrNum: c_int) [*c]wchar_t;
pub extern fn __wcserror(_Str: [*c]const wchar_t) [*c]wchar_t;
pub extern fn _wcsicmp(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;
pub extern fn _wcsicmp_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _Locale: _locale_t) c_int;
pub extern fn _wcsnicmp(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize) c_int;
pub extern fn _wcsnicmp_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) c_int;
pub extern fn _wcsnset(_Str: [*c]wchar_t, _Val: wchar_t, _MaxCount: usize) [*c]wchar_t;
pub extern fn _wcsrev(_Str: [*c]wchar_t) [*c]wchar_t;
pub extern fn _wcsset(_Str: [*c]wchar_t, _Val: wchar_t) [*c]wchar_t;
pub extern fn _wcslwr(_String: [*c]wchar_t) [*c]wchar_t;
pub extern fn _wcslwr_l(_String: [*c]wchar_t, _Locale: _locale_t) [*c]wchar_t;
pub extern fn _wcsupr(_String: [*c]wchar_t) [*c]wchar_t;
pub extern fn _wcsupr_l(_String: [*c]wchar_t, _Locale: _locale_t) [*c]wchar_t;
pub extern fn wcsxfrm(noalias _Dst: [*c]wchar_t, noalias _Src: [*c]const wchar_t, _MaxCount: usize) usize;
pub extern fn _wcsxfrm_l(noalias _Dst: [*c]wchar_t, noalias _Src: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) usize;
pub extern fn wcscoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;
pub extern fn _wcscoll_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _Locale: _locale_t) c_int;
pub extern fn _wcsicoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;
pub extern fn _wcsicoll_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _Locale: _locale_t) c_int;
pub extern fn _wcsncoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize) c_int;
pub extern fn _wcsncoll_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) c_int;
pub extern fn _wcsnicoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize) c_int;
pub extern fn _wcsnicoll_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) c_int;
pub extern fn wcsdup(_Str: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcsicmp(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;
pub extern fn wcsnicmp(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize) c_int;
pub extern fn wcsnset(_Str: [*c]wchar_t, _Val: wchar_t, _MaxCount: usize) [*c]wchar_t;
pub extern fn wcsrev(_Str: [*c]wchar_t) [*c]wchar_t;
pub extern fn wcsset(_Str: [*c]wchar_t, _Val: wchar_t) [*c]wchar_t;
pub extern fn wcslwr(_Str: [*c]wchar_t) [*c]wchar_t;
pub extern fn wcsupr(_Str: [*c]wchar_t) [*c]wchar_t;
pub extern fn wcsicoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;
pub extern fn _strset_s(_Dst: [*c]u8, _DstSize: usize, _Value: c_int) errno_t;
pub extern fn _strerror_s(_Buf: [*c]u8, _SizeInBytes: usize, _ErrMsg: [*c]const u8) errno_t;
pub extern fn strerror_s(_Buf: [*c]u8, _SizeInBytes: usize, _ErrNum: c_int) errno_t;
pub extern fn _strlwr_s(_Str: [*c]u8, _Size: usize) errno_t;
pub extern fn _strlwr_s_l(_Str: [*c]u8, _Size: usize, _Locale: _locale_t) errno_t;
pub extern fn _strnset_s(_Str: [*c]u8, _Size: usize, _Val: c_int, _MaxCount: usize) errno_t;
pub extern fn _strupr_s(_Str: [*c]u8, _Size: usize) errno_t;
pub extern fn _strupr_s_l(_Str: [*c]u8, _Size: usize, _Locale: _locale_t) errno_t;
pub extern fn strncat_s(_Dst: [*c]u8, _DstSizeInChars: usize, _Src: [*c]const u8, _MaxCount: usize) errno_t;
pub extern fn _strncat_s_l(_Dst: [*c]u8, _DstSizeInChars: usize, _Src: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) errno_t;
pub extern fn strcpy_s(_Dst: [*c]u8, _SizeInBytes: rsize_t, _Src: [*c]const u8) errno_t;
pub extern fn strncpy_s(_Dst: [*c]u8, _DstSizeInChars: usize, _Src: [*c]const u8, _MaxCount: usize) errno_t;
pub extern fn _strncpy_s_l(_Dst: [*c]u8, _DstSizeInChars: usize, _Src: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) errno_t;
pub extern fn strtok_s(_Str: [*c]u8, _Delim: [*c]const u8, _Context: [*c][*c]u8) [*c]u8;
pub extern fn _strtok_s_l(_Str: [*c]u8, _Delim: [*c]const u8, _Context: [*c][*c]u8, _Locale: _locale_t) [*c]u8;
pub extern fn strcat_s(_Dst: [*c]u8, _SizeInBytes: rsize_t, _Src: [*c]const u8) errno_t;
pub inline fn strnlen_s(arg__src: [*c]const u8, arg__count: usize) usize {
    var _src = arg__src;
    _ = &_src;
    var _count = arg__count;
    _ = &_count;
    return if (_src != null) strnlen(_src, _count) else @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0))));
}
pub extern fn memmove_s(_dest: ?*anyopaque, _numberOfElements: usize, _src: ?*const anyopaque, _count: usize) errno_t;
pub extern fn wcstok_s(_Str: [*c]wchar_t, _Delim: [*c]const wchar_t, _Context: [*c][*c]wchar_t) [*c]wchar_t;
pub extern fn _wcserror_s(_Buf: [*c]wchar_t, _SizeInWords: usize, _ErrNum: c_int) errno_t;
pub extern fn __wcserror_s(_Buffer: [*c]wchar_t, _SizeInWords: usize, _ErrMsg: [*c]const wchar_t) errno_t;
pub extern fn _wcsnset_s(_Dst: [*c]wchar_t, _DstSizeInWords: usize, _Val: wchar_t, _MaxCount: usize) errno_t;
pub extern fn _wcsset_s(_Str: [*c]wchar_t, _SizeInWords: usize, _Val: wchar_t) errno_t;
pub extern fn _wcslwr_s(_Str: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _wcslwr_s_l(_Str: [*c]wchar_t, _SizeInWords: usize, _Locale: _locale_t) errno_t;
pub extern fn _wcsupr_s(_Str: [*c]wchar_t, _Size: usize) errno_t;
pub extern fn _wcsupr_s_l(_Str: [*c]wchar_t, _Size: usize, _Locale: _locale_t) errno_t;
pub extern fn wcscpy_s(_Dst: [*c]wchar_t, _SizeInWords: rsize_t, _Src: [*c]const wchar_t) errno_t;
pub extern fn wcscat_s(_Dst: [*c]wchar_t, _SizeInWords: rsize_t, _Src: [*c]const wchar_t) errno_t;
pub extern fn wcsncat_s(_Dst: [*c]wchar_t, _DstSizeInChars: usize, _Src: [*c]const wchar_t, _MaxCount: usize) errno_t;
pub extern fn _wcsncat_s_l(_Dst: [*c]wchar_t, _DstSizeInChars: usize, _Src: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) errno_t;
pub extern fn wcsncpy_s(_Dst: [*c]wchar_t, _DstSizeInChars: usize, _Src: [*c]const wchar_t, _MaxCount: usize) errno_t;
pub extern fn _wcsncpy_s_l(_Dst: [*c]wchar_t, _DstSizeInChars: usize, _Src: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) errno_t;
pub extern fn _wcstok_s_l(_Str: [*c]wchar_t, _Delim: [*c]const wchar_t, _Context: [*c][*c]wchar_t, _Locale: _locale_t) [*c]wchar_t;
pub extern fn _wcsset_s_l(_Str: [*c]wchar_t, _SizeInChars: usize, _Val: wchar_t, _Locale: _locale_t) errno_t;
pub extern fn _wcsnset_s_l(_Str: [*c]wchar_t, _SizeInChars: usize, _Val: wchar_t, _Count: usize, _Locale: _locale_t) errno_t;
pub inline fn wcsnlen_s(arg__src: [*c]const wchar_t, arg__count: usize) usize {
    var _src = arg__src;
    _ = &_src;
    var _count = arg__count;
    _ = &_count;
    return if (_src != null) wcsnlen(_src, _count) else @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0))));
}
pub extern fn _wdupenv_s(_Buffer: [*c][*c]wchar_t, _BufferSizeInWords: [*c]usize, _VarName: [*c]const wchar_t) errno_t;
pub extern fn _itow_s(_Val: c_int, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _ltow_s(_Val: c_long, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _ultow_s(_Val: c_ulong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _wgetenv_s(_ReturnSize: [*c]usize, _DstBuf: [*c]wchar_t, _DstSizeInWords: usize, _VarName: [*c]const wchar_t) errno_t;
pub extern fn _i64tow_s(_Val: c_longlong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _ui64tow_s(_Val: c_ulonglong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _wmakepath_s(_PathResult: [*c]wchar_t, _SizeInWords: usize, _Drive: [*c]const wchar_t, _Dir: [*c]const wchar_t, _Filename: [*c]const wchar_t, _Ext: [*c]const wchar_t) errno_t;
pub extern fn _wputenv_s(_Name: [*c]const wchar_t, _Value: [*c]const wchar_t) errno_t;
pub extern fn _wsearchenv_s(_Filename: [*c]const wchar_t, _EnvVar: [*c]const wchar_t, _ResultPath: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _wsplitpath_s(_FullPath: [*c]const wchar_t, _Drive: [*c]wchar_t, _DriveSizeInWords: usize, _Dir: [*c]wchar_t, _DirSizeInWords: usize, _Filename: [*c]wchar_t, _FilenameSizeInWords: usize, _Ext: [*c]wchar_t, _ExtSizeInWords: usize) errno_t;
pub extern fn __pctype_func() [*c]const c_ushort;
pub extern var __imp__wctype: [*c][*c]const c_ushort;
pub extern fn __pwctype_func() [*c]const wctype_t;
pub extern fn iswalpha(_C: wint_t) c_int;
pub extern fn iswupper(_C: wint_t) c_int;
pub extern fn iswlower(_C: wint_t) c_int;
pub extern fn iswdigit(_C: wint_t) c_int;
pub extern fn iswxdigit(_C: wint_t) c_int;
pub extern fn iswspace(_C: wint_t) c_int;
pub extern fn iswpunct(_C: wint_t) c_int;
pub extern fn iswalnum(_C: wint_t) c_int;
pub extern fn iswprint(_C: wint_t) c_int;
pub extern fn iswgraph(_C: wint_t) c_int;
pub extern fn iswcntrl(_C: wint_t) c_int;
pub extern fn iswascii(_C: wint_t) c_int;
pub extern fn isleadbyte(_C: c_int) c_int;
pub extern fn towupper(_C: wint_t) wint_t;
pub extern fn towlower(_C: wint_t) wint_t;
pub extern fn iswctype(_C: wint_t, _Type: wctype_t) c_int;
pub extern fn __iswcsymf(_C: wint_t) c_int;
pub extern fn __iswcsym(_C: wint_t) c_int;
pub extern fn iswblank(_C: wint_t) c_int;
pub extern fn _iswalpha_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswupper_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswlower_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswdigit_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswxdigit_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswspace_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswpunct_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswalnum_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswprint_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswgraph_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswcntrl_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _towupper_l(_C: wint_t, _Locale: _locale_t) wint_t;
pub extern fn _towlower_l(_C: wint_t, _Locale: _locale_t) wint_t;
pub extern fn _isleadbyte_l(_C: c_int, _Locale: _locale_t) c_int;
pub extern fn _iswctype_l(_C: wint_t, _Type: wctype_t, _Locale: _locale_t) c_int;
pub extern fn _iswblank_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswcsymf_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn _iswcsym_l(_C: wint_t, _Locale: _locale_t) c_int;
pub extern fn is_wctype(_C: wint_t, _Type: wctype_t) c_int;
pub const _fsize_t = c_ulong;
pub const struct__wfinddata32_t = extern struct {
    attrib: c_uint = @import("std").mem.zeroes(c_uint),
    time_create: __time32_t = @import("std").mem.zeroes(__time32_t),
    time_access: __time32_t = @import("std").mem.zeroes(__time32_t),
    time_write: __time32_t = @import("std").mem.zeroes(__time32_t),
    size: _fsize_t = @import("std").mem.zeroes(_fsize_t),
    name: [260]wchar_t = @import("std").mem.zeroes([260]wchar_t),
};
pub const struct__wfinddata32i64_t = extern struct {
    attrib: c_uint = @import("std").mem.zeroes(c_uint),
    time_create: __time32_t = @import("std").mem.zeroes(__time32_t),
    time_access: __time32_t = @import("std").mem.zeroes(__time32_t),
    time_write: __time32_t = @import("std").mem.zeroes(__time32_t),
    size: c_longlong = @import("std").mem.zeroes(c_longlong),
    name: [260]wchar_t = @import("std").mem.zeroes([260]wchar_t),
};
pub const struct__wfinddata64i32_t = extern struct {
    attrib: c_uint = @import("std").mem.zeroes(c_uint),
    time_create: __time64_t = @import("std").mem.zeroes(__time64_t),
    time_access: __time64_t = @import("std").mem.zeroes(__time64_t),
    time_write: __time64_t = @import("std").mem.zeroes(__time64_t),
    size: _fsize_t = @import("std").mem.zeroes(_fsize_t),
    name: [260]wchar_t = @import("std").mem.zeroes([260]wchar_t),
};
pub const struct__wfinddata64_t = extern struct {
    attrib: c_uint = @import("std").mem.zeroes(c_uint),
    time_create: __time64_t = @import("std").mem.zeroes(__time64_t),
    time_access: __time64_t = @import("std").mem.zeroes(__time64_t),
    time_write: __time64_t = @import("std").mem.zeroes(__time64_t),
    size: c_longlong = @import("std").mem.zeroes(c_longlong),
    name: [260]wchar_t = @import("std").mem.zeroes([260]wchar_t),
};
pub extern fn _wgetcwd(_DstBuf: [*c]wchar_t, _SizeInWords: c_int) [*c]wchar_t;
pub extern fn _wgetdcwd(_Drive: c_int, _DstBuf: [*c]wchar_t, _SizeInWords: c_int) [*c]wchar_t;
pub extern fn _wgetdcwd_nolock(_Drive: c_int, _DstBuf: [*c]wchar_t, _SizeInWords: c_int) [*c]wchar_t;
pub extern fn _wchdir(_Path: [*c]const wchar_t) c_int;
pub extern fn _wmkdir(_Path: [*c]const wchar_t) c_int;
pub extern fn _wrmdir(_Path: [*c]const wchar_t) c_int;
pub extern fn _waccess(_Filename: [*c]const wchar_t, _AccessMode: c_int) c_int;
pub extern fn _wchmod(_Filename: [*c]const wchar_t, _Mode: c_int) c_int;
pub extern fn _wcreat(_Filename: [*c]const wchar_t, _PermissionMode: c_int) c_int;
pub extern fn _wfindfirst32(_Filename: [*c]const wchar_t, _FindData: [*c]struct__wfinddata32_t) isize;
pub extern fn _wfindnext32(_FindHandle: isize, _FindData: [*c]struct__wfinddata32_t) c_int;
pub extern fn _wunlink(_Filename: [*c]const wchar_t) c_int;
pub extern fn _wrename(_OldFilename: [*c]const wchar_t, _NewFilename: [*c]const wchar_t) c_int;
pub extern fn _wmktemp(_TemplateName: [*c]wchar_t) [*c]wchar_t;
pub extern fn _wfindfirst32i64(_Filename: [*c]const wchar_t, _FindData: [*c]struct__wfinddata32i64_t) isize;
pub extern fn _wfindfirst64i32(_Filename: [*c]const wchar_t, _FindData: [*c]struct__wfinddata64i32_t) isize;
pub extern fn _wfindfirst64(_Filename: [*c]const wchar_t, _FindData: [*c]struct__wfinddata64_t) isize;
pub extern fn _wfindnext32i64(_FindHandle: isize, _FindData: [*c]struct__wfinddata32i64_t) c_int;
pub extern fn _wfindnext64i32(_FindHandle: isize, _FindData: [*c]struct__wfinddata64i32_t) c_int;
pub extern fn _wfindnext64(_FindHandle: isize, _FindData: [*c]struct__wfinddata64_t) c_int;
pub extern fn _wsopen_s(_FileHandle: [*c]c_int, _Filename: [*c]const wchar_t, _OpenFlag: c_int, _ShareFlag: c_int, _PermissionFlag: c_int) errno_t;
pub extern fn _wopen(_Filename: [*c]const wchar_t, _OpenFlag: c_int, ...) c_int;
pub extern fn _wsopen(_Filename: [*c]const wchar_t, _OpenFlag: c_int, _ShareFlag: c_int, ...) c_int;
pub extern fn _wsetlocale(_Category: c_int, _Locale: [*c]const wchar_t) [*c]wchar_t;
pub extern fn _wcreate_locale(_Category: c_int, _Locale: [*c]const wchar_t) _locale_t;
pub extern fn _wexecl(_Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wexecle(_Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wexeclp(_Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wexeclpe(_Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wexecv(_Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t) isize;
pub extern fn _wexecve(_Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t, _Env: [*c]const [*c]const wchar_t) isize;
pub extern fn _wexecvp(_Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t) isize;
pub extern fn _wexecvpe(_Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t, _Env: [*c]const [*c]const wchar_t) isize;
pub extern fn _wsystem(_Command: [*c]const wchar_t) c_int;
pub const _ino_t = c_ushort;
pub const ino_t = c_ushort;
pub const _dev_t = c_uint;
pub const dev_t = c_uint;
pub const struct__stat32 = extern struct {
    st_dev: _dev_t = @import("std").mem.zeroes(_dev_t),
    st_ino: _ino_t = @import("std").mem.zeroes(_ino_t),
    st_mode: c_ushort = @import("std").mem.zeroes(c_ushort),
    st_nlink: c_short = @import("std").mem.zeroes(c_short),
    st_uid: c_short = @import("std").mem.zeroes(c_short),
    st_gid: c_short = @import("std").mem.zeroes(c_short),
    st_rdev: _dev_t = @import("std").mem.zeroes(_dev_t),
    st_size: _off_t = @import("std").mem.zeroes(_off_t),
    st_atime: __time32_t = @import("std").mem.zeroes(__time32_t),
    st_mtime: __time32_t = @import("std").mem.zeroes(__time32_t),
    st_ctime: __time32_t = @import("std").mem.zeroes(__time32_t),
};
pub const struct__stat32i64 = extern struct {
    st_dev: _dev_t = @import("std").mem.zeroes(_dev_t),
    st_ino: _ino_t = @import("std").mem.zeroes(_ino_t),
    st_mode: c_ushort = @import("std").mem.zeroes(c_ushort),
    st_nlink: c_short = @import("std").mem.zeroes(c_short),
    st_uid: c_short = @import("std").mem.zeroes(c_short),
    st_gid: c_short = @import("std").mem.zeroes(c_short),
    st_rdev: _dev_t = @import("std").mem.zeroes(_dev_t),
    st_size: c_longlong = @import("std").mem.zeroes(c_longlong),
    st_atime: __time32_t = @import("std").mem.zeroes(__time32_t),
    st_mtime: __time32_t = @import("std").mem.zeroes(__time32_t),
    st_ctime: __time32_t = @import("std").mem.zeroes(__time32_t),
};
pub const struct__stat64i32 = extern struct {
    st_dev: _dev_t = @import("std").mem.zeroes(_dev_t),
    st_ino: _ino_t = @import("std").mem.zeroes(_ino_t),
    st_mode: c_ushort = @import("std").mem.zeroes(c_ushort),
    st_nlink: c_short = @import("std").mem.zeroes(c_short),
    st_uid: c_short = @import("std").mem.zeroes(c_short),
    st_gid: c_short = @import("std").mem.zeroes(c_short),
    st_rdev: _dev_t = @import("std").mem.zeroes(_dev_t),
    st_size: _off_t = @import("std").mem.zeroes(_off_t),
    st_atime: __time64_t = @import("std").mem.zeroes(__time64_t),
    st_mtime: __time64_t = @import("std").mem.zeroes(__time64_t),
    st_ctime: __time64_t = @import("std").mem.zeroes(__time64_t),
};
pub const struct__stat64 = extern struct {
    st_dev: _dev_t = @import("std").mem.zeroes(_dev_t),
    st_ino: _ino_t = @import("std").mem.zeroes(_ino_t),
    st_mode: c_ushort = @import("std").mem.zeroes(c_ushort),
    st_nlink: c_short = @import("std").mem.zeroes(c_short),
    st_uid: c_short = @import("std").mem.zeroes(c_short),
    st_gid: c_short = @import("std").mem.zeroes(c_short),
    st_rdev: _dev_t = @import("std").mem.zeroes(_dev_t),
    st_size: c_longlong = @import("std").mem.zeroes(c_longlong),
    st_atime: __time64_t = @import("std").mem.zeroes(__time64_t),
    st_mtime: __time64_t = @import("std").mem.zeroes(__time64_t),
    st_ctime: __time64_t = @import("std").mem.zeroes(__time64_t),
};
pub extern fn _wstat32(_Name: [*c]const wchar_t, _Stat: [*c]struct__stat32) c_int;
pub extern fn _wstat32i64(_Name: [*c]const wchar_t, _Stat: [*c]struct__stat32i64) c_int;
pub extern fn _wstat64i32(_Name: [*c]const wchar_t, _Stat: [*c]struct__stat64i32) c_int;
pub extern fn _wstat64(_Name: [*c]const wchar_t, _Stat: [*c]struct__stat64) c_int;
pub extern fn _cgetws(_Buffer: [*c]wchar_t) [*c]wchar_t;
pub extern fn _getwch() wint_t;
pub extern fn _getwche() wint_t;
pub extern fn _putwch(_WCh: wchar_t) wint_t;
pub extern fn _ungetwch(_WCh: wint_t) wint_t;
pub extern fn _cputws(_String: [*c]const wchar_t) c_int;
pub extern fn _cwprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _cwscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _cwscanf_l(noalias _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vcwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _cwprintf_p(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vcwprintf_p(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _cwprintf_l(noalias _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vcwprintf_l(noalias _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _cwprintf_p_l(noalias _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vcwprintf_p_l(noalias _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _putwch_nolock(_WCh: wchar_t) wint_t;
pub extern fn _getwch_nolock() wint_t;
pub extern fn _getwche_nolock() wint_t;
pub extern fn _ungetwch_nolock(_WCh: wint_t) wint_t;
pub extern fn __stdio_common_vswprintf_p(_Options: c_ulonglong, _Str: [*c]wchar_t, _Len: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vfwprintf_p(_Options: c_ulonglong, _File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _itow(_Value: c_int, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _ltow(_Value: c_long, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _ultow(_Value: c_ulong, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _wcstod_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Locale: _locale_t) f64;
pub extern fn __mingw_wcstod(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t) f64;
pub extern fn __mingw_wcstof(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t) f32;
pub extern fn __mingw_wcstold(noalias [*c]const wchar_t, noalias [*c][*c]wchar_t) c_longdouble;
pub extern fn wcstod(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t) f64;
pub extern fn wcstof(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t) f32;
pub extern fn wcstold(noalias [*c]const wchar_t, noalias [*c][*c]wchar_t) c_longdouble;
pub extern fn wcstol(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_long;
pub extern fn _wcstol_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_long;
pub extern fn wcstoul(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_ulong;
pub extern fn _wcstoul_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_ulong;
pub extern fn _wgetenv(_VarName: [*c]const wchar_t) [*c]wchar_t;
pub extern fn _wtof(_Str: [*c]const wchar_t) f64;
pub extern fn _wtof_l(_Str: [*c]const wchar_t, _Locale: _locale_t) f64;
pub extern fn _wtoi(_Str: [*c]const wchar_t) c_int;
pub extern fn _wtoi_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_int;
pub extern fn _wtol(_Str: [*c]const wchar_t) c_long;
pub extern fn _wtol_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_long;
pub extern fn _i64tow(_Val: c_longlong, _DstBuf: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _ui64tow(_Val: c_ulonglong, _DstBuf: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _wtoi64(_Str: [*c]const wchar_t) c_longlong;
pub extern fn _wtoi64_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_longlong;
pub extern fn _wcstoi64(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_longlong;
pub extern fn _wcstoi64_l(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_longlong;
pub extern fn _wcstoui64(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_ulonglong;
pub extern fn _wcstoui64_l(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_ulonglong;
pub extern fn _wfullpath(_FullPath: [*c]wchar_t, _Path: [*c]const wchar_t, _SizeInWords: usize) [*c]wchar_t;
pub extern fn _wmakepath(_ResultPath: [*c]wchar_t, _Drive: [*c]const wchar_t, _Dir: [*c]const wchar_t, _Filename: [*c]const wchar_t, _Ext: [*c]const wchar_t) void;
pub extern fn _wputenv(_EnvString: [*c]const wchar_t) c_int;
pub extern fn _wsearchenv(_Filename: [*c]const wchar_t, _EnvVar: [*c]const wchar_t, _ResultPath: [*c]wchar_t) void;
pub extern fn _wsplitpath(_FullPath: [*c]const wchar_t, _Drive: [*c]wchar_t, _Dir: [*c]wchar_t, _Filename: [*c]wchar_t, _Ext: [*c]wchar_t) void;
pub const struct_tm = extern struct {
    tm_sec: c_int = @import("std").mem.zeroes(c_int),
    tm_min: c_int = @import("std").mem.zeroes(c_int),
    tm_hour: c_int = @import("std").mem.zeroes(c_int),
    tm_mday: c_int = @import("std").mem.zeroes(c_int),
    tm_mon: c_int = @import("std").mem.zeroes(c_int),
    tm_year: c_int = @import("std").mem.zeroes(c_int),
    tm_wday: c_int = @import("std").mem.zeroes(c_int),
    tm_yday: c_int = @import("std").mem.zeroes(c_int),
    tm_isdst: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn _wasctime(_Tm: [*c]const struct_tm) [*c]wchar_t;
pub extern fn _wasctime_s(_Buf: [*c]wchar_t, _SizeInWords: usize, _Tm: [*c]const struct_tm) errno_t;
pub extern fn _wctime32(_Time: [*c]const __time32_t) [*c]wchar_t;
pub extern fn _wctime32_s(_Buf: [*c]wchar_t, _SizeInWords: usize, _Time: [*c]const __time32_t) errno_t;
pub extern fn wcsftime(noalias _Buf: [*c]wchar_t, _SizeInWords: usize, noalias _Format: [*c]const wchar_t, noalias _Tm: [*c]const struct_tm) usize;
pub extern fn _wcsftime_l(noalias _Buf: [*c]wchar_t, _SizeInWords: usize, noalias _Format: [*c]const wchar_t, noalias _Tm: [*c]const struct_tm, _Locale: _locale_t) usize;
pub extern fn _wstrdate(_Buffer: [*c]wchar_t) [*c]wchar_t;
pub extern fn _wstrdate_s(_Buf: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _wstrtime(_Buffer: [*c]wchar_t) [*c]wchar_t;
pub extern fn _wstrtime_s(_Buf: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _wctime64(_Time: [*c]const __time64_t) [*c]wchar_t;
pub extern fn _wctime64_s(_Buf: [*c]wchar_t, _SizeInWords: usize, _Time: [*c]const __time64_t) errno_t;
pub fn _wctime(arg__Time: [*c]const time_t) callconv(.c) [*c]wchar_t {
    var _Time = arg__Time;
    _ = &_Time;
    return _wctime64(_Time);
}
pub fn _wctime_s(arg__Buffer: [*c]wchar_t, arg__SizeInWords: usize, arg__Time: [*c]const time_t) callconv(.c) errno_t {
    var _Buffer = arg__Buffer;
    _ = &_Buffer;
    var _SizeInWords = arg__SizeInWords;
    _ = &_SizeInWords;
    var _Time = arg__Time;
    _ = &_Time;
    return _wctime64_s(_Buffer, _SizeInWords, _Time);
}
pub const struct__Mbstatet = extern struct {
    _Wchar: c_ulong = @import("std").mem.zeroes(c_ulong),
    _Byte: c_ushort = @import("std").mem.zeroes(c_ushort),
    _State: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const _Mbstatet = struct__Mbstatet;
pub const mbstate_t = _Mbstatet;
pub const _Wint_t = wchar_t;
pub extern fn btowc(c_int) wint_t;
pub extern fn mbrlen(noalias _Ch: [*c]const u8, _SizeInBytes: usize, noalias _State: [*c]mbstate_t) usize;
pub extern fn mbrtowc(noalias _DstCh: [*c]wchar_t, noalias _SrcCh: [*c]const u8, _SizeInBytes: usize, noalias _State: [*c]mbstate_t) usize;
pub extern fn mbsrtowcs(noalias _Dest: [*c]wchar_t, noalias _PSrc: [*c][*c]const u8, _Count: usize, noalias _State: [*c]mbstate_t) usize;
pub extern fn wcrtomb(noalias _Dest: [*c]u8, _Source: wchar_t, noalias _State: [*c]mbstate_t) usize;
pub extern fn wcsrtombs(noalias _Dest: [*c]u8, noalias _PSource: [*c][*c]const wchar_t, _Count: usize, noalias _State: [*c]mbstate_t) usize;
pub extern fn wctob(_WCh: wint_t) c_int;
pub fn wmemset(arg__S: [*c]wchar_t, arg__C: wchar_t, arg__N: usize) callconv(.c) [*c]wchar_t {
    var _S = arg__S;
    _ = &_S;
    var _C = arg__C;
    _ = &_C;
    var _N = arg__N;
    _ = &_N;
    var _Su: [*c]wchar_t = _S;
    _ = &_Su;
    while (@as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))) < _N) : (_ = blk: {
        _Su += 1;
        break :blk blk_1: {
            const ref = &_N;
            ref.* -%= 1;
            break :blk_1 ref.*;
        };
    }) {
        _Su.* = _C;
    }
    return _S;
}
pub fn wmemchr(arg__S: [*c]const c_ushort, arg__C: c_ushort, arg__N: c_ulonglong) callconv(.c) [*c]c_ushort {
    var _S = arg__S;
    _ = &_S;
    var _C = arg__C;
    _ = &_C;
    var _N = arg__N;
    _ = &_N;
    if (_S != null) {
        while (@as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))) < _N) : (_ = blk: {
            _S += 1;
            break :blk blk_1: {
                const ref = &_N;
                ref.* -%= 1;
                break :blk_1 ref.*;
            };
        }) if (@as(c_int, @bitCast(@as(c_uint, _S.*))) == @as(c_int, @bitCast(@as(c_uint, _C)))) return @as([*c]wchar_t, @ptrCast(@constCast(@volatileCast(_S))));
    }
    return @as([*c]wchar_t, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))));
}
pub fn wmemcmp(arg__S1: [*c]const c_ushort, arg__S2: [*c]const c_ushort, arg__N: c_ulonglong) callconv(.c) c_int {
    var _S1 = arg__S1;
    _ = &_S1;
    var _S2 = arg__S2;
    _ = &_S2;
    var _N = arg__N;
    _ = &_N;
    if ((_N == @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0))))) or (_S1 == _S2)) return 0;
    if (((_S1 != null) and !(_S2 != null)) or ((_S2 != null) and !(_S1 != null))) return if (!(_S2 != null)) @as(c_int, 1) else -@as(c_int, 1);
    while (@as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))) < _N) : (_ = blk: {
        _ = blk_1: {
            _S1 += 1;
            break :blk_1 blk_2: {
                const ref = &_S2;
                ref.* += 1;
                break :blk_2 ref.*;
            };
        };
        break :blk blk_1: {
            const ref = &_N;
            ref.* -%= 1;
            break :blk_1 ref.*;
        };
    }) if (@as(c_int, @bitCast(@as(c_uint, _S1.*))) != @as(c_int, @bitCast(@as(c_uint, _S2.*)))) return if (@as(c_int, @bitCast(@as(c_uint, _S1.*))) < @as(c_int, @bitCast(@as(c_uint, _S2.*)))) -@as(c_int, 1) else @as(c_int, 1);
    return 0;
}
pub fn wmemcpy(arg__S1: [*c]c_ushort, arg__S2: [*c]const c_ushort, arg__N: c_ulonglong) callconv(.c) [*c]c_ushort {
    var _S1 = arg__S1;
    _ = &_S1;
    var _S2 = arg__S2;
    _ = &_S2;
    var _N = arg__N;
    _ = &_N;
    return @as([*c]wchar_t, @ptrCast(@alignCast(memcpy(@as(?*anyopaque, @ptrCast(_S1)), @as(?*const anyopaque, @ptrCast(_S2)), _N *% @sizeOf(wchar_t)))));
}
pub extern fn wmempcpy(_Dst: [*c]wchar_t, _Src: [*c]const wchar_t, _Size: usize) [*c]wchar_t;
pub fn wmemmove(arg__S1: [*c]c_ushort, arg__S2: [*c]const c_ushort, arg__N: c_ulonglong) callconv(.c) [*c]c_ushort {
    var _S1 = arg__S1;
    _ = &_S1;
    var _S2 = arg__S2;
    _ = &_S2;
    var _N = arg__N;
    _ = &_N;
    return @as([*c]wchar_t, @ptrCast(@alignCast(memmove(@as(?*anyopaque, @ptrCast(_S1)), @as(?*const anyopaque, @ptrCast(_S2)), _N *% @sizeOf(wchar_t)))));
}
pub fn fwide(arg__F: [*c]FILE, arg__M: c_int) callconv(.c) c_int {
    var _F = arg__F;
    _ = &_F;
    var _M = arg__M;
    _ = &_M;
    _ = &_F;
    return _M;
}
pub fn mbsinit(arg__P: [*c]const mbstate_t) callconv(.c) c_int {
    var _P = arg__P;
    _ = &_P;
    return @intFromBool(!(_P != null) or (_P.*._Wchar == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 0))))));
}
pub extern fn wcstoll(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t, base: c_int) c_longlong;
pub extern fn wcstoull(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t, base: c_int) c_ulonglong;
pub extern fn _waccess_s(_Filename: [*c]const wchar_t, _AccessMode: c_int) errno_t;
pub extern fn _wmktemp_s(_TemplateName: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _cgetws_s(_Buffer: [*c]wchar_t, _SizeInWords: usize, _SizeRead: [*c]usize) errno_t;
pub extern fn _cwprintf_s(_Format: [*c]const wchar_t, ...) c_int;
pub extern fn _cwscanf_s(_Format: [*c]const wchar_t, ...) c_int;
pub extern fn _cwscanf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vcwprintf_s(_Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _cwprintf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vcwprintf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn mbsrtowcs_s(_Retval: [*c]usize, _Dst: [*c]wchar_t, _SizeInWords: usize, _PSrc: [*c][*c]const u8, _N: usize, _State: [*c]mbstate_t) errno_t;
pub extern fn wcrtomb_s(_Retval: [*c]usize, _Dst: [*c]u8, _SizeInBytes: usize, _Ch: wchar_t, _State: [*c]mbstate_t) errno_t;
pub extern fn wcsrtombs_s(_Retval: [*c]usize, _Dst: [*c]u8, _SizeInBytes: usize, _Src: [*c][*c]const wchar_t, _Size: usize, _State: [*c]mbstate_t) errno_t;
pub extern fn wmemcpy_s(_dest: [*c]wchar_t, _numberOfElements: usize, _src: [*c]const wchar_t, _count: usize) errno_t;
pub extern fn wmemmove_s(_dest: [*c]wchar_t, _numberOfElements: usize, _src: [*c]const wchar_t, _count: usize) errno_t;
pub const imaxdiv_t = extern struct {
    quot: intmax_t = @import("std").mem.zeroes(intmax_t),
    rem: intmax_t = @import("std").mem.zeroes(intmax_t),
};
pub fn imaxabs(arg_j: intmax_t) callconv(.c) intmax_t {
    var j = arg_j;
    _ = &j;
    return if (j >= @as(intmax_t, @bitCast(@as(c_longlong, @as(c_int, 0))))) j else -j;
}
pub extern fn imaxdiv(numer: intmax_t, denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias nptr: [*c]const u8, noalias endptr: [*c][*c]u8, base: c_int) intmax_t;
pub extern fn strtoumax(noalias nptr: [*c]const u8, noalias endptr: [*c][*c]u8, base: c_int) uintmax_t;
pub extern fn wcstoimax(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t, base: c_int) intmax_t;
pub extern fn wcstoumax(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t, base: c_int) uintmax_t;
pub const Sint8 = i8;
pub const Uint8 = u8;
pub const Sint16 = i16;
pub const Uint16 = u16;
pub const Sint32 = i32;
pub const Uint32 = u32;
pub const Sint64 = i64;
pub const Uint64 = u64;
pub const SDL_Time = Sint64;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration
pub const struct_SDL_alignment_test = extern struct {
    a: Uint8 = @import("std").mem.zeroes(Uint8),
    b: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const SDL_alignment_test = struct_SDL_alignment_test;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration
pub const DUMMY_ENUM_VALUE: c_int = 0;
pub const enum_SDL_DUMMY_ENUM = c_uint;
pub const SDL_DUMMY_ENUM = enum_SDL_DUMMY_ENUM;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration
pub extern fn SDL_malloc(size: usize) ?*anyopaque;
pub extern fn SDL_calloc(nmemb: usize, size: usize) ?*anyopaque;
pub extern fn SDL_realloc(mem: ?*anyopaque, size: usize) ?*anyopaque;
pub extern fn SDL_free(mem: ?*anyopaque) void;
pub const SDL_malloc_func = ?*const fn (usize) callconv(.c) ?*anyopaque;
pub const SDL_calloc_func = ?*const fn (usize, usize) callconv(.c) ?*anyopaque;
pub const SDL_realloc_func = ?*const fn (?*anyopaque, usize) callconv(.c) ?*anyopaque;
pub const SDL_free_func = ?*const fn (?*anyopaque) callconv(.c) void;
pub extern fn SDL_GetOriginalMemoryFunctions(malloc_func: [*c]SDL_malloc_func, calloc_func: [*c]SDL_calloc_func, realloc_func: [*c]SDL_realloc_func, free_func: [*c]SDL_free_func) void;
pub extern fn SDL_GetMemoryFunctions(malloc_func: [*c]SDL_malloc_func, calloc_func: [*c]SDL_calloc_func, realloc_func: [*c]SDL_realloc_func, free_func: [*c]SDL_free_func) void;
pub extern fn SDL_SetMemoryFunctions(malloc_func: SDL_malloc_func, calloc_func: SDL_calloc_func, realloc_func: SDL_realloc_func, free_func: SDL_free_func) bool;
pub extern fn SDL_aligned_alloc(alignment: usize, size: usize) ?*anyopaque;
pub extern fn SDL_aligned_free(mem: ?*anyopaque) void;
pub extern fn SDL_GetNumAllocations() c_int;
pub const struct_SDL_Environment = opaque {};
pub const SDL_Environment = struct_SDL_Environment;
pub extern fn SDL_GetEnvironment() ?*SDL_Environment;
pub extern fn SDL_CreateEnvironment(populated: bool) ?*SDL_Environment;
pub extern fn SDL_GetEnvironmentVariable(env: ?*SDL_Environment, name: [*c]const u8) [*c]const u8;
pub extern fn SDL_GetEnvironmentVariables(env: ?*SDL_Environment) [*c][*c]u8;
pub extern fn SDL_SetEnvironmentVariable(env: ?*SDL_Environment, name: [*c]const u8, value: [*c]const u8, overwrite: bool) bool;
pub extern fn SDL_UnsetEnvironmentVariable(env: ?*SDL_Environment, name: [*c]const u8) bool;
pub extern fn SDL_DestroyEnvironment(env: ?*SDL_Environment) void;
pub extern fn SDL_getenv(name: [*c]const u8) [*c]const u8;
pub extern fn SDL_getenv_unsafe(name: [*c]const u8) [*c]const u8;
pub extern fn SDL_setenv_unsafe(name: [*c]const u8, value: [*c]const u8, overwrite: c_int) c_int;
pub extern fn SDL_unsetenv_unsafe(name: [*c]const u8) c_int;
pub const SDL_CompareCallback = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int;
pub extern fn SDL_qsort(base: ?*anyopaque, nmemb: usize, size: usize, compare: SDL_CompareCallback) void;
pub extern fn SDL_bsearch(key: ?*const anyopaque, base: ?*const anyopaque, nmemb: usize, size: usize, compare: SDL_CompareCallback) ?*anyopaque;
pub const SDL_CompareCallback_r = ?*const fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.c) c_int;
pub extern fn SDL_qsort_r(base: ?*anyopaque, nmemb: usize, size: usize, compare: SDL_CompareCallback_r, userdata: ?*anyopaque) void;
pub extern fn SDL_bsearch_r(key: ?*const anyopaque, base: ?*const anyopaque, nmemb: usize, size: usize, compare: SDL_CompareCallback_r, userdata: ?*anyopaque) ?*anyopaque;
pub extern fn SDL_abs(x: c_int) c_int;
pub extern fn SDL_isalpha(x: c_int) c_int;
pub extern fn SDL_isalnum(x: c_int) c_int;
pub extern fn SDL_isblank(x: c_int) c_int;
pub extern fn SDL_iscntrl(x: c_int) c_int;
pub extern fn SDL_isdigit(x: c_int) c_int;
pub extern fn SDL_isxdigit(x: c_int) c_int;
pub extern fn SDL_ispunct(x: c_int) c_int;
pub extern fn SDL_isspace(x: c_int) c_int;
pub extern fn SDL_isupper(x: c_int) c_int;
pub extern fn SDL_islower(x: c_int) c_int;
pub extern fn SDL_isprint(x: c_int) c_int;
pub extern fn SDL_isgraph(x: c_int) c_int;
pub extern fn SDL_toupper(x: c_int) c_int;
pub extern fn SDL_tolower(x: c_int) c_int;
pub extern fn SDL_crc16(crc: Uint16, data: ?*const anyopaque, len: usize) Uint16;
pub extern fn SDL_crc32(crc: Uint32, data: ?*const anyopaque, len: usize) Uint32;
pub extern fn SDL_murmur3_32(data: ?*const anyopaque, len: usize, seed: Uint32) Uint32;
pub extern fn SDL_memcpy(dst: ?*anyopaque, src: ?*const anyopaque, len: usize) ?*anyopaque;
pub extern fn SDL_memmove(dst: ?*anyopaque, src: ?*const anyopaque, len: usize) ?*anyopaque;
pub extern fn SDL_memset(dst: ?*anyopaque, c: c_int, len: usize) ?*anyopaque;
pub extern fn SDL_memset4(dst: ?*anyopaque, val: Uint32, dwords: usize) ?*anyopaque;
pub extern fn SDL_memcmp(s1: ?*const anyopaque, s2: ?*const anyopaque, len: usize) c_int;
pub extern fn SDL_wcslen(wstr: [*c]const wchar_t) usize;
pub extern fn SDL_wcsnlen(wstr: [*c]const wchar_t, maxlen: usize) usize;
pub extern fn SDL_wcslcpy(dst: [*c]wchar_t, src: [*c]const wchar_t, maxlen: usize) usize;
pub extern fn SDL_wcslcat(dst: [*c]wchar_t, src: [*c]const wchar_t, maxlen: usize) usize;
pub extern fn SDL_wcsdup(wstr: [*c]const wchar_t) [*c]wchar_t;
pub extern fn SDL_wcsstr(haystack: [*c]const wchar_t, needle: [*c]const wchar_t) [*c]wchar_t;
pub extern fn SDL_wcsnstr(haystack: [*c]const wchar_t, needle: [*c]const wchar_t, maxlen: usize) [*c]wchar_t;
pub extern fn SDL_wcscmp(str1: [*c]const wchar_t, str2: [*c]const wchar_t) c_int;
pub extern fn SDL_wcsncmp(str1: [*c]const wchar_t, str2: [*c]const wchar_t, maxlen: usize) c_int;
pub extern fn SDL_wcscasecmp(str1: [*c]const wchar_t, str2: [*c]const wchar_t) c_int;
pub extern fn SDL_wcsncasecmp(str1: [*c]const wchar_t, str2: [*c]const wchar_t, maxlen: usize) c_int;
pub extern fn SDL_wcstol(str: [*c]const wchar_t, endp: [*c][*c]wchar_t, base: c_int) c_long;
pub extern fn SDL_strlen(str: [*c]const u8) usize;
pub extern fn SDL_strnlen(str: [*c]const u8, maxlen: usize) usize;
pub extern fn SDL_strlcpy(dst: [*c]u8, src: [*c]const u8, maxlen: usize) usize;
pub extern fn SDL_utf8strlcpy(dst: [*c]u8, src: [*c]const u8, dst_bytes: usize) usize;
pub extern fn SDL_strlcat(dst: [*c]u8, src: [*c]const u8, maxlen: usize) usize;
pub extern fn SDL_strdup(str: [*c]const u8) [*c]u8;
pub extern fn SDL_strndup(str: [*c]const u8, maxlen: usize) [*c]u8;
pub extern fn SDL_strrev(str: [*c]u8) [*c]u8;
pub extern fn SDL_strupr(str: [*c]u8) [*c]u8;
pub extern fn SDL_strlwr(str: [*c]u8) [*c]u8;
pub extern fn SDL_strchr(str: [*c]const u8, c: c_int) [*c]u8;
pub extern fn SDL_strrchr(str: [*c]const u8, c: c_int) [*c]u8;
pub extern fn SDL_strstr(haystack: [*c]const u8, needle: [*c]const u8) [*c]u8;
pub extern fn SDL_strnstr(haystack: [*c]const u8, needle: [*c]const u8, maxlen: usize) [*c]u8;
pub extern fn SDL_strcasestr(haystack: [*c]const u8, needle: [*c]const u8) [*c]u8;
pub extern fn SDL_strtok_r(str: [*c]u8, delim: [*c]const u8, saveptr: [*c][*c]u8) [*c]u8;
pub extern fn SDL_utf8strlen(str: [*c]const u8) usize;
pub extern fn SDL_utf8strnlen(str: [*c]const u8, bytes: usize) usize;
pub extern fn SDL_itoa(value: c_int, str: [*c]u8, radix: c_int) [*c]u8;
pub extern fn SDL_uitoa(value: c_uint, str: [*c]u8, radix: c_int) [*c]u8;
pub extern fn SDL_ltoa(value: c_long, str: [*c]u8, radix: c_int) [*c]u8;
pub extern fn SDL_ultoa(value: c_ulong, str: [*c]u8, radix: c_int) [*c]u8;
pub extern fn SDL_lltoa(value: c_longlong, str: [*c]u8, radix: c_int) [*c]u8;
pub extern fn SDL_ulltoa(value: c_ulonglong, str: [*c]u8, radix: c_int) [*c]u8;
pub extern fn SDL_atoi(str: [*c]const u8) c_int;
pub extern fn SDL_atof(str: [*c]const u8) f64;
pub extern fn SDL_strtol(str: [*c]const u8, endp: [*c][*c]u8, base: c_int) c_long;
pub extern fn SDL_strtoul(str: [*c]const u8, endp: [*c][*c]u8, base: c_int) c_ulong;
pub extern fn SDL_strtoll(str: [*c]const u8, endp: [*c][*c]u8, base: c_int) c_longlong;
pub extern fn SDL_strtoull(str: [*c]const u8, endp: [*c][*c]u8, base: c_int) c_ulonglong;
pub extern fn SDL_strtod(str: [*c]const u8, endp: [*c][*c]u8) f64;
pub extern fn SDL_strcmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn SDL_strncmp(str1: [*c]const u8, str2: [*c]const u8, maxlen: usize) c_int;
pub extern fn SDL_strcasecmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn SDL_strncasecmp(str1: [*c]const u8, str2: [*c]const u8, maxlen: usize) c_int;
pub extern fn SDL_strpbrk(str: [*c]const u8, breakset: [*c]const u8) [*c]u8;
pub extern fn SDL_StepUTF8(pstr: [*c][*c]const u8, pslen: [*c]usize) Uint32;
pub extern fn SDL_StepBackUTF8(start: [*c]const u8, pstr: [*c][*c]const u8) Uint32;
pub extern fn SDL_UCS4ToUTF8(codepoint: Uint32, dst: [*c]u8) [*c]u8;
pub extern fn SDL_sscanf(text: [*c]const u8, fmt: [*c]const u8, ...) c_int;
pub extern fn SDL_vsscanf(text: [*c]const u8, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn SDL_snprintf(text: [*c]u8, maxlen: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn SDL_swprintf(text: [*c]wchar_t, maxlen: usize, fmt: [*c]const wchar_t, ...) c_int;
pub extern fn SDL_vsnprintf(text: [*c]u8, maxlen: usize, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn SDL_vswprintf(text: [*c]wchar_t, maxlen: usize, fmt: [*c]const wchar_t, ap: va_list) c_int;
pub extern fn SDL_asprintf(strp: [*c][*c]u8, fmt: [*c]const u8, ...) c_int;
pub extern fn SDL_vasprintf(strp: [*c][*c]u8, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn SDL_srand(seed: Uint64) void;
pub extern fn SDL_rand(n: Sint32) Sint32;
pub extern fn SDL_randf() f32;
pub extern fn SDL_rand_bits() Uint32;
pub extern fn SDL_rand_r(state: [*c]Uint64, n: Sint32) Sint32;
pub extern fn SDL_randf_r(state: [*c]Uint64) f32;
pub extern fn SDL_rand_bits_r(state: [*c]Uint64) Uint32;
pub extern fn SDL_acos(x: f64) f64;
pub extern fn SDL_acosf(x: f32) f32;
pub extern fn SDL_asin(x: f64) f64;
pub extern fn SDL_asinf(x: f32) f32;
pub extern fn SDL_atan(x: f64) f64;
pub extern fn SDL_atanf(x: f32) f32;
pub extern fn SDL_atan2(y: f64, x: f64) f64;
pub extern fn SDL_atan2f(y: f32, x: f32) f32;
pub extern fn SDL_ceil(x: f64) f64;
pub extern fn SDL_ceilf(x: f32) f32;
pub extern fn SDL_copysign(x: f64, y: f64) f64;
pub extern fn SDL_copysignf(x: f32, y: f32) f32;
pub extern fn SDL_cos(x: f64) f64;
pub extern fn SDL_cosf(x: f32) f32;
pub extern fn SDL_exp(x: f64) f64;
pub extern fn SDL_expf(x: f32) f32;
pub extern fn SDL_fabs(x: f64) f64;
pub extern fn SDL_fabsf(x: f32) f32;
pub extern fn SDL_floor(x: f64) f64;
pub extern fn SDL_floorf(x: f32) f32;
pub extern fn SDL_trunc(x: f64) f64;
pub extern fn SDL_truncf(x: f32) f32;
pub extern fn SDL_fmod(x: f64, y: f64) f64;
pub extern fn SDL_fmodf(x: f32, y: f32) f32;
pub extern fn SDL_isinf(x: f64) c_int;
pub extern fn SDL_isinff(x: f32) c_int;
pub extern fn SDL_isnan(x: f64) c_int;
pub extern fn SDL_isnanf(x: f32) c_int;
pub extern fn SDL_log(x: f64) f64;
pub extern fn SDL_logf(x: f32) f32;
pub extern fn SDL_log10(x: f64) f64;
pub extern fn SDL_log10f(x: f32) f32;
pub extern fn SDL_modf(x: f64, y: [*c]f64) f64;
pub extern fn SDL_modff(x: f32, y: [*c]f32) f32;
pub extern fn SDL_pow(x: f64, y: f64) f64;
pub extern fn SDL_powf(x: f32, y: f32) f32;
pub extern fn SDL_round(x: f64) f64;
pub extern fn SDL_roundf(x: f32) f32;
pub extern fn SDL_lround(x: f64) c_long;
pub extern fn SDL_lroundf(x: f32) c_long;
pub extern fn SDL_scalbn(x: f64, n: c_int) f64;
pub extern fn SDL_scalbnf(x: f32, n: c_int) f32;
pub extern fn SDL_sin(x: f64) f64;
pub extern fn SDL_sinf(x: f32) f32;
pub extern fn SDL_sqrt(x: f64) f64;
pub extern fn SDL_sqrtf(x: f32) f32;
pub extern fn SDL_tan(x: f64) f64;
pub extern fn SDL_tanf(x: f32) f32;
pub const struct_SDL_iconv_data_t = opaque {};
pub const SDL_iconv_t = ?*struct_SDL_iconv_data_t;
pub extern fn SDL_iconv_open(tocode: [*c]const u8, fromcode: [*c]const u8) SDL_iconv_t;
pub extern fn SDL_iconv_close(cd: SDL_iconv_t) c_int;
pub extern fn SDL_iconv(cd: SDL_iconv_t, inbuf: [*c][*c]const u8, inbytesleft: [*c]usize, outbuf: [*c][*c]u8, outbytesleft: [*c]usize) usize;
pub extern fn SDL_iconv_string(tocode: [*c]const u8, fromcode: [*c]const u8, inbuf: [*c]const u8, inbytesleft: usize) [*c]u8;
pub inline fn SDL_size_mul_check_overflow(arg_a: usize, arg_b: usize, arg_ret: [*c]usize) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var ret = arg_ret;
    _ = &ret;
    if ((a != @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0))))) and (b > (@as(c_ulonglong, 18446744073709551615) / a))) {
        return @as(c_int, 0) != 0;
    }
    ret.* = a *% b;
    return @as(c_int, 1) != 0;
}
pub inline fn SDL_size_mul_check_overflow_builtin(arg_a: usize, arg_b: usize, arg_ret: [*c]usize) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var ret = arg_ret;
    _ = &ret;
    return @as(c_int, @intFromBool(__builtin_mul_overflow(a, b, ret))) == @as(c_int, 0);
}
pub inline fn SDL_size_add_check_overflow(arg_a: usize, arg_b: usize, arg_ret: [*c]usize) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var ret = arg_ret;
    _ = &ret;
    if (b > (@as(c_ulonglong, 18446744073709551615) -% a)) {
        return @as(c_int, 0) != 0;
    }
    ret.* = a +% b;
    return @as(c_int, 1) != 0;
}
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:6131:13: warning: TODO implement function '__builtin_add_overflow' in std.zig.c_builtins

// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:6129:23: warning: unable to translate function, demoted to extern
pub extern fn SDL_size_add_check_overflow_builtin(arg_a: usize, arg_b: usize, arg_ret: [*c]usize) bool;
pub const SDL_FunctionPointer = ?*const fn () callconv(.c) void;
pub extern fn SDL_SetError(fmt: [*c]const u8, ...) bool;
pub extern fn SDL_SetErrorV(fmt: [*c]const u8, ap: va_list) bool;
pub extern fn SDL_OutOfMemory() bool;
pub extern fn SDL_GetError() [*c]const u8;
pub extern fn SDL_ClearError() bool;
pub inline fn SDL_SwapFloat(arg_x: f32) f32 {
    var x = arg_x;
    _ = &x;
    const union_unnamed_4 = extern union {
        f: f32,
        ui32: Uint32,
    };
    _ = &union_unnamed_4;
    var swapper: union_unnamed_4 = undefined;
    _ = &swapper;
    swapper.f = x;
    swapper.ui32 = __builtin_bswap32(swapper.ui32);
    return swapper.f;
}
pub const SDL_PIXELTYPE_UNKNOWN: c_int = 0;
pub const SDL_PIXELTYPE_INDEX1: c_int = 1;
pub const SDL_PIXELTYPE_INDEX4: c_int = 2;
pub const SDL_PIXELTYPE_INDEX8: c_int = 3;
pub const SDL_PIXELTYPE_PACKED8: c_int = 4;
pub const SDL_PIXELTYPE_PACKED16: c_int = 5;
pub const SDL_PIXELTYPE_PACKED32: c_int = 6;
pub const SDL_PIXELTYPE_ARRAYU8: c_int = 7;
pub const SDL_PIXELTYPE_ARRAYU16: c_int = 8;
pub const SDL_PIXELTYPE_ARRAYU32: c_int = 9;
pub const SDL_PIXELTYPE_ARRAYF16: c_int = 10;
pub const SDL_PIXELTYPE_ARRAYF32: c_int = 11;
pub const SDL_PIXELTYPE_INDEX2: c_int = 12;
pub const enum_SDL_PixelType = c_uint;
pub const SDL_PixelType = enum_SDL_PixelType;
pub const SDL_BITMAPORDER_NONE: c_int = 0;
pub const SDL_BITMAPORDER_4321: c_int = 1;
pub const SDL_BITMAPORDER_1234: c_int = 2;
pub const enum_SDL_BitmapOrder = c_uint;
pub const SDL_BitmapOrder = enum_SDL_BitmapOrder;
pub const SDL_PACKEDORDER_NONE: c_int = 0;
pub const SDL_PACKEDORDER_XRGB: c_int = 1;
pub const SDL_PACKEDORDER_RGBX: c_int = 2;
pub const SDL_PACKEDORDER_ARGB: c_int = 3;
pub const SDL_PACKEDORDER_RGBA: c_int = 4;
pub const SDL_PACKEDORDER_XBGR: c_int = 5;
pub const SDL_PACKEDORDER_BGRX: c_int = 6;
pub const SDL_PACKEDORDER_ABGR: c_int = 7;
pub const SDL_PACKEDORDER_BGRA: c_int = 8;
pub const enum_SDL_PackedOrder = c_uint;
pub const SDL_PackedOrder = enum_SDL_PackedOrder;
pub const SDL_ARRAYORDER_NONE: c_int = 0;
pub const SDL_ARRAYORDER_RGB: c_int = 1;
pub const SDL_ARRAYORDER_RGBA: c_int = 2;
pub const SDL_ARRAYORDER_ARGB: c_int = 3;
pub const SDL_ARRAYORDER_BGR: c_int = 4;
pub const SDL_ARRAYORDER_BGRA: c_int = 5;
pub const SDL_ARRAYORDER_ABGR: c_int = 6;
pub const enum_SDL_ArrayOrder = c_uint;
pub const SDL_ArrayOrder = enum_SDL_ArrayOrder;
pub const SDL_PACKEDLAYOUT_NONE: c_int = 0;
pub const SDL_PACKEDLAYOUT_332: c_int = 1;
pub const SDL_PACKEDLAYOUT_4444: c_int = 2;
pub const SDL_PACKEDLAYOUT_1555: c_int = 3;
pub const SDL_PACKEDLAYOUT_5551: c_int = 4;
pub const SDL_PACKEDLAYOUT_565: c_int = 5;
pub const SDL_PACKEDLAYOUT_8888: c_int = 6;
pub const SDL_PACKEDLAYOUT_2101010: c_int = 7;
pub const SDL_PACKEDLAYOUT_1010102: c_int = 8;
pub const enum_SDL_PackedLayout = c_uint;
pub const SDL_PackedLayout = enum_SDL_PackedLayout;
pub const SDL_PIXELFORMAT_UNKNOWN: c_int = 0;
pub const SDL_PIXELFORMAT_INDEX1LSB: c_int = 286261504;
pub const SDL_PIXELFORMAT_INDEX1MSB: c_int = 287310080;
pub const SDL_PIXELFORMAT_INDEX2LSB: c_int = 470811136;
pub const SDL_PIXELFORMAT_INDEX2MSB: c_int = 471859712;
pub const SDL_PIXELFORMAT_INDEX4LSB: c_int = 303039488;
pub const SDL_PIXELFORMAT_INDEX4MSB: c_int = 304088064;
pub const SDL_PIXELFORMAT_INDEX8: c_int = 318769153;
pub const SDL_PIXELFORMAT_RGB332: c_int = 336660481;
pub const SDL_PIXELFORMAT_XRGB4444: c_int = 353504258;
pub const SDL_PIXELFORMAT_XBGR4444: c_int = 357698562;
pub const SDL_PIXELFORMAT_XRGB1555: c_int = 353570562;
pub const SDL_PIXELFORMAT_XBGR1555: c_int = 357764866;
pub const SDL_PIXELFORMAT_ARGB4444: c_int = 355602434;
pub const SDL_PIXELFORMAT_RGBA4444: c_int = 356651010;
pub const SDL_PIXELFORMAT_ABGR4444: c_int = 359796738;
pub const SDL_PIXELFORMAT_BGRA4444: c_int = 360845314;
pub const SDL_PIXELFORMAT_ARGB1555: c_int = 355667970;
pub const SDL_PIXELFORMAT_RGBA5551: c_int = 356782082;
pub const SDL_PIXELFORMAT_ABGR1555: c_int = 359862274;
pub const SDL_PIXELFORMAT_BGRA5551: c_int = 360976386;
pub const SDL_PIXELFORMAT_RGB565: c_int = 353701890;
pub const SDL_PIXELFORMAT_BGR565: c_int = 357896194;
pub const SDL_PIXELFORMAT_RGB24: c_int = 386930691;
pub const SDL_PIXELFORMAT_BGR24: c_int = 390076419;
pub const SDL_PIXELFORMAT_XRGB8888: c_int = 370546692;
pub const SDL_PIXELFORMAT_RGBX8888: c_int = 371595268;
pub const SDL_PIXELFORMAT_XBGR8888: c_int = 374740996;
pub const SDL_PIXELFORMAT_BGRX8888: c_int = 375789572;
pub const SDL_PIXELFORMAT_ARGB8888: c_int = 372645892;
pub const SDL_PIXELFORMAT_RGBA8888: c_int = 373694468;
pub const SDL_PIXELFORMAT_ABGR8888: c_int = 376840196;
pub const SDL_PIXELFORMAT_BGRA8888: c_int = 377888772;
pub const SDL_PIXELFORMAT_XRGB2101010: c_int = 370614276;
pub const SDL_PIXELFORMAT_XBGR2101010: c_int = 374808580;
pub const SDL_PIXELFORMAT_ARGB2101010: c_int = 372711428;
pub const SDL_PIXELFORMAT_ABGR2101010: c_int = 376905732;
pub const SDL_PIXELFORMAT_RGB48: c_int = 403714054;
pub const SDL_PIXELFORMAT_BGR48: c_int = 406859782;
pub const SDL_PIXELFORMAT_RGBA64: c_int = 404766728;
pub const SDL_PIXELFORMAT_ARGB64: c_int = 405815304;
pub const SDL_PIXELFORMAT_BGRA64: c_int = 407912456;
pub const SDL_PIXELFORMAT_ABGR64: c_int = 408961032;
pub const SDL_PIXELFORMAT_RGB48_FLOAT: c_int = 437268486;
pub const SDL_PIXELFORMAT_BGR48_FLOAT: c_int = 440414214;
pub const SDL_PIXELFORMAT_RGBA64_FLOAT: c_int = 438321160;
pub const SDL_PIXELFORMAT_ARGB64_FLOAT: c_int = 439369736;
pub const SDL_PIXELFORMAT_BGRA64_FLOAT: c_int = 441466888;
pub const SDL_PIXELFORMAT_ABGR64_FLOAT: c_int = 442515464;
pub const SDL_PIXELFORMAT_RGB96_FLOAT: c_int = 454057996;
pub const SDL_PIXELFORMAT_BGR96_FLOAT: c_int = 457203724;
pub const SDL_PIXELFORMAT_RGBA128_FLOAT: c_int = 455114768;
pub const SDL_PIXELFORMAT_ARGB128_FLOAT: c_int = 456163344;
pub const SDL_PIXELFORMAT_BGRA128_FLOAT: c_int = 458260496;
pub const SDL_PIXELFORMAT_ABGR128_FLOAT: c_int = 459309072;
pub const SDL_PIXELFORMAT_YV12: c_int = 842094169;
pub const SDL_PIXELFORMAT_IYUV: c_int = 1448433993;
pub const SDL_PIXELFORMAT_YUY2: c_int = 844715353;
pub const SDL_PIXELFORMAT_UYVY: c_int = 1498831189;
pub const SDL_PIXELFORMAT_YVYU: c_int = 1431918169;
pub const SDL_PIXELFORMAT_NV12: c_int = 842094158;
pub const SDL_PIXELFORMAT_NV21: c_int = 825382478;
pub const SDL_PIXELFORMAT_P010: c_int = 808530000;
pub const SDL_PIXELFORMAT_EXTERNAL_OES: c_int = 542328143;
pub const SDL_PIXELFORMAT_MJPG: c_int = 1196444237;
pub const SDL_PIXELFORMAT_RGBA32: c_int = 376840196;
pub const SDL_PIXELFORMAT_ARGB32: c_int = 377888772;
pub const SDL_PIXELFORMAT_BGRA32: c_int = 372645892;
pub const SDL_PIXELFORMAT_ABGR32: c_int = 373694468;
pub const SDL_PIXELFORMAT_RGBX32: c_int = 374740996;
pub const SDL_PIXELFORMAT_XRGB32: c_int = 375789572;
pub const SDL_PIXELFORMAT_BGRX32: c_int = 370546692;
pub const SDL_PIXELFORMAT_XBGR32: c_int = 371595268;
pub const enum_SDL_PixelFormat = c_uint;
pub const SDL_PixelFormat = enum_SDL_PixelFormat;
pub const SDL_COLOR_TYPE_UNKNOWN: c_int = 0;
pub const SDL_COLOR_TYPE_RGB: c_int = 1;
pub const SDL_COLOR_TYPE_YCBCR: c_int = 2;
pub const enum_SDL_ColorType = c_uint;
pub const SDL_ColorType = enum_SDL_ColorType;
pub const SDL_COLOR_RANGE_UNKNOWN: c_int = 0;
pub const SDL_COLOR_RANGE_LIMITED: c_int = 1;
pub const SDL_COLOR_RANGE_FULL: c_int = 2;
pub const enum_SDL_ColorRange = c_uint;
pub const SDL_ColorRange = enum_SDL_ColorRange;
pub const SDL_COLOR_PRIMARIES_UNKNOWN: c_int = 0;
pub const SDL_COLOR_PRIMARIES_BT709: c_int = 1;
pub const SDL_COLOR_PRIMARIES_UNSPECIFIED: c_int = 2;
pub const SDL_COLOR_PRIMARIES_BT470M: c_int = 4;
pub const SDL_COLOR_PRIMARIES_BT470BG: c_int = 5;
pub const SDL_COLOR_PRIMARIES_BT601: c_int = 6;
pub const SDL_COLOR_PRIMARIES_SMPTE240: c_int = 7;
pub const SDL_COLOR_PRIMARIES_GENERIC_FILM: c_int = 8;
pub const SDL_COLOR_PRIMARIES_BT2020: c_int = 9;
pub const SDL_COLOR_PRIMARIES_XYZ: c_int = 10;
pub const SDL_COLOR_PRIMARIES_SMPTE431: c_int = 11;
pub const SDL_COLOR_PRIMARIES_SMPTE432: c_int = 12;
pub const SDL_COLOR_PRIMARIES_EBU3213: c_int = 22;
pub const SDL_COLOR_PRIMARIES_CUSTOM: c_int = 31;
pub const enum_SDL_ColorPrimaries = c_uint;
pub const SDL_ColorPrimaries = enum_SDL_ColorPrimaries;
pub const SDL_TRANSFER_CHARACTERISTICS_UNKNOWN: c_int = 0;
pub const SDL_TRANSFER_CHARACTERISTICS_BT709: c_int = 1;
pub const SDL_TRANSFER_CHARACTERISTICS_UNSPECIFIED: c_int = 2;
pub const SDL_TRANSFER_CHARACTERISTICS_GAMMA22: c_int = 4;
pub const SDL_TRANSFER_CHARACTERISTICS_GAMMA28: c_int = 5;
pub const SDL_TRANSFER_CHARACTERISTICS_BT601: c_int = 6;
pub const SDL_TRANSFER_CHARACTERISTICS_SMPTE240: c_int = 7;
pub const SDL_TRANSFER_CHARACTERISTICS_LINEAR: c_int = 8;
pub const SDL_TRANSFER_CHARACTERISTICS_LOG100: c_int = 9;
pub const SDL_TRANSFER_CHARACTERISTICS_LOG100_SQRT10: c_int = 10;
pub const SDL_TRANSFER_CHARACTERISTICS_IEC61966: c_int = 11;
pub const SDL_TRANSFER_CHARACTERISTICS_BT1361: c_int = 12;
pub const SDL_TRANSFER_CHARACTERISTICS_SRGB: c_int = 13;
pub const SDL_TRANSFER_CHARACTERISTICS_BT2020_10BIT: c_int = 14;
pub const SDL_TRANSFER_CHARACTERISTICS_BT2020_12BIT: c_int = 15;
pub const SDL_TRANSFER_CHARACTERISTICS_PQ: c_int = 16;
pub const SDL_TRANSFER_CHARACTERISTICS_SMPTE428: c_int = 17;
pub const SDL_TRANSFER_CHARACTERISTICS_HLG: c_int = 18;
pub const SDL_TRANSFER_CHARACTERISTICS_CUSTOM: c_int = 31;
pub const enum_SDL_TransferCharacteristics = c_uint;
pub const SDL_TransferCharacteristics = enum_SDL_TransferCharacteristics;
pub const SDL_MATRIX_COEFFICIENTS_IDENTITY: c_int = 0;
pub const SDL_MATRIX_COEFFICIENTS_BT709: c_int = 1;
pub const SDL_MATRIX_COEFFICIENTS_UNSPECIFIED: c_int = 2;
pub const SDL_MATRIX_COEFFICIENTS_FCC: c_int = 4;
pub const SDL_MATRIX_COEFFICIENTS_BT470BG: c_int = 5;
pub const SDL_MATRIX_COEFFICIENTS_BT601: c_int = 6;
pub const SDL_MATRIX_COEFFICIENTS_SMPTE240: c_int = 7;
pub const SDL_MATRIX_COEFFICIENTS_YCGCO: c_int = 8;
pub const SDL_MATRIX_COEFFICIENTS_BT2020_NCL: c_int = 9;
pub const SDL_MATRIX_COEFFICIENTS_BT2020_CL: c_int = 10;
pub const SDL_MATRIX_COEFFICIENTS_SMPTE2085: c_int = 11;
pub const SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL: c_int = 12;
pub const SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL: c_int = 13;
pub const SDL_MATRIX_COEFFICIENTS_ICTCP: c_int = 14;
pub const SDL_MATRIX_COEFFICIENTS_CUSTOM: c_int = 31;
pub const enum_SDL_MatrixCoefficients = c_uint;
pub const SDL_MatrixCoefficients = enum_SDL_MatrixCoefficients;
pub const SDL_CHROMA_LOCATION_NONE: c_int = 0;
pub const SDL_CHROMA_LOCATION_LEFT: c_int = 1;
pub const SDL_CHROMA_LOCATION_CENTER: c_int = 2;
pub const SDL_CHROMA_LOCATION_TOPLEFT: c_int = 3;
pub const enum_SDL_ChromaLocation = c_uint;
pub const SDL_ChromaLocation = enum_SDL_ChromaLocation;
pub const SDL_COLORSPACE_UNKNOWN: c_int = 0;
pub const SDL_COLORSPACE_SRGB: c_int = 301991328;
pub const SDL_COLORSPACE_SRGB_LINEAR: c_int = 301991168;
pub const SDL_COLORSPACE_HDR10: c_int = 301999616;
pub const SDL_COLORSPACE_JPEG: c_int = 570426566;
pub const SDL_COLORSPACE_BT601_LIMITED: c_int = 554703046;
pub const SDL_COLORSPACE_BT601_FULL: c_int = 571480262;
pub const SDL_COLORSPACE_BT709_LIMITED: c_int = 554697761;
pub const SDL_COLORSPACE_BT709_FULL: c_int = 571474977;
pub const SDL_COLORSPACE_BT2020_LIMITED: c_int = 554706441;
pub const SDL_COLORSPACE_BT2020_FULL: c_int = 571483657;
pub const SDL_COLORSPACE_RGB_DEFAULT: c_int = 301991328;
pub const SDL_COLORSPACE_YUV_DEFAULT: c_int = 554703046;
pub const enum_SDL_Colorspace = c_uint;
pub const SDL_Colorspace = enum_SDL_Colorspace;
pub const struct_SDL_Color = extern struct {
    r: Uint8 = @import("std").mem.zeroes(Uint8),
    g: Uint8 = @import("std").mem.zeroes(Uint8),
    b: Uint8 = @import("std").mem.zeroes(Uint8),
    a: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_Color = struct_SDL_Color;
pub const struct_SDL_FColor = extern struct {
    r: f32 = @import("std").mem.zeroes(f32),
    g: f32 = @import("std").mem.zeroes(f32),
    b: f32 = @import("std").mem.zeroes(f32),
    a: f32 = @import("std").mem.zeroes(f32),
};
pub const SDL_FColor = struct_SDL_FColor;
pub const struct_SDL_Palette = extern struct {
    ncolors: c_int = @import("std").mem.zeroes(c_int),
    colors: [*c]SDL_Color = @import("std").mem.zeroes([*c]SDL_Color),
    version: Uint32 = @import("std").mem.zeroes(Uint32),
    refcount: c_int = @import("std").mem.zeroes(c_int),
};
pub const SDL_Palette = struct_SDL_Palette;
pub const struct_SDL_PixelFormatDetails = extern struct {
    format: SDL_PixelFormat = @import("std").mem.zeroes(SDL_PixelFormat),
    bits_per_pixel: Uint8 = @import("std").mem.zeroes(Uint8),
    bytes_per_pixel: Uint8 = @import("std").mem.zeroes(Uint8),
    padding: [2]Uint8 = @import("std").mem.zeroes([2]Uint8),
    Rmask: Uint32 = @import("std").mem.zeroes(Uint32),
    Gmask: Uint32 = @import("std").mem.zeroes(Uint32),
    Bmask: Uint32 = @import("std").mem.zeroes(Uint32),
    Amask: Uint32 = @import("std").mem.zeroes(Uint32),
    Rbits: Uint8 = @import("std").mem.zeroes(Uint8),
    Gbits: Uint8 = @import("std").mem.zeroes(Uint8),
    Bbits: Uint8 = @import("std").mem.zeroes(Uint8),
    Abits: Uint8 = @import("std").mem.zeroes(Uint8),
    Rshift: Uint8 = @import("std").mem.zeroes(Uint8),
    Gshift: Uint8 = @import("std").mem.zeroes(Uint8),
    Bshift: Uint8 = @import("std").mem.zeroes(Uint8),
    Ashift: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_PixelFormatDetails = struct_SDL_PixelFormatDetails;
pub extern fn SDL_GetPixelFormatName(format: SDL_PixelFormat) [*c]const u8;
pub extern fn SDL_GetMasksForPixelFormat(format: SDL_PixelFormat, bpp: [*c]c_int, Rmask: [*c]Uint32, Gmask: [*c]Uint32, Bmask: [*c]Uint32, Amask: [*c]Uint32) bool;
pub extern fn SDL_GetPixelFormatForMasks(bpp: c_int, Rmask: Uint32, Gmask: Uint32, Bmask: Uint32, Amask: Uint32) SDL_PixelFormat;
pub extern fn SDL_GetPixelFormatDetails(format: SDL_PixelFormat) [*c]const SDL_PixelFormatDetails;
pub extern fn SDL_CreatePalette(ncolors: c_int) [*c]SDL_Palette;
pub extern fn SDL_SetPaletteColors(palette: [*c]SDL_Palette, colors: [*c]const SDL_Color, firstcolor: c_int, ncolors: c_int) bool;
pub extern fn SDL_DestroyPalette(palette: [*c]SDL_Palette) void;
pub extern fn SDL_MapRGB(format: [*c]const SDL_PixelFormatDetails, palette: [*c]const SDL_Palette, r: Uint8, g: Uint8, b: Uint8) Uint32;
pub extern fn SDL_MapRGBA(format: [*c]const SDL_PixelFormatDetails, palette: [*c]const SDL_Palette, r: Uint8, g: Uint8, b: Uint8, a: Uint8) Uint32;
pub extern fn SDL_GetRGB(pixelvalue: Uint32, format: [*c]const SDL_PixelFormatDetails, palette: [*c]const SDL_Palette, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8) void;
pub extern fn SDL_GetRGBA(pixelvalue: Uint32, format: [*c]const SDL_PixelFormatDetails, palette: [*c]const SDL_Palette, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8, a: [*c]Uint8) void;
pub const SDL_PropertiesID = Uint32;
pub const SDL_PROPERTY_TYPE_INVALID: c_int = 0;
pub const SDL_PROPERTY_TYPE_POINTER: c_int = 1;
pub const SDL_PROPERTY_TYPE_STRING: c_int = 2;
pub const SDL_PROPERTY_TYPE_NUMBER: c_int = 3;
pub const SDL_PROPERTY_TYPE_FLOAT: c_int = 4;
pub const SDL_PROPERTY_TYPE_BOOLEAN: c_int = 5;
pub const enum_SDL_PropertyType = c_uint;
pub const SDL_PropertyType = enum_SDL_PropertyType;
pub extern fn SDL_GetGlobalProperties() SDL_PropertiesID;
pub extern fn SDL_CreateProperties() SDL_PropertiesID;
pub extern fn SDL_CopyProperties(src: SDL_PropertiesID, dst: SDL_PropertiesID) bool;
pub extern fn SDL_LockProperties(props: SDL_PropertiesID) bool;
pub extern fn SDL_UnlockProperties(props: SDL_PropertiesID) void;
pub const SDL_CleanupPropertyCallback = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub extern fn SDL_SetPointerPropertyWithCleanup(props: SDL_PropertiesID, name: [*c]const u8, value: ?*anyopaque, cleanup: SDL_CleanupPropertyCallback, userdata: ?*anyopaque) bool;
pub extern fn SDL_SetPointerProperty(props: SDL_PropertiesID, name: [*c]const u8, value: ?*anyopaque) bool;
pub extern fn SDL_SetStringProperty(props: SDL_PropertiesID, name: [*c]const u8, value: [*c]const u8) bool;
pub extern fn SDL_SetNumberProperty(props: SDL_PropertiesID, name: [*c]const u8, value: Sint64) bool;
pub extern fn SDL_SetFloatProperty(props: SDL_PropertiesID, name: [*c]const u8, value: f32) bool;
pub extern fn SDL_SetBooleanProperty(props: SDL_PropertiesID, name: [*c]const u8, value: bool) bool;
pub extern fn SDL_HasProperty(props: SDL_PropertiesID, name: [*c]const u8) bool;
pub extern fn SDL_GetPropertyType(props: SDL_PropertiesID, name: [*c]const u8) SDL_PropertyType;
pub extern fn SDL_GetPointerProperty(props: SDL_PropertiesID, name: [*c]const u8, default_value: ?*anyopaque) ?*anyopaque;
pub extern fn SDL_GetStringProperty(props: SDL_PropertiesID, name: [*c]const u8, default_value: [*c]const u8) [*c]const u8;
pub extern fn SDL_GetNumberProperty(props: SDL_PropertiesID, name: [*c]const u8, default_value: Sint64) Sint64;
pub extern fn SDL_GetFloatProperty(props: SDL_PropertiesID, name: [*c]const u8, default_value: f32) f32;
pub extern fn SDL_GetBooleanProperty(props: SDL_PropertiesID, name: [*c]const u8, default_value: bool) bool;
pub extern fn SDL_ClearProperty(props: SDL_PropertiesID, name: [*c]const u8) bool;
pub const SDL_EnumeratePropertiesCallback = ?*const fn (?*anyopaque, SDL_PropertiesID, [*c]const u8) callconv(.c) void;
pub extern fn SDL_EnumerateProperties(props: SDL_PropertiesID, callback: SDL_EnumeratePropertiesCallback, userdata: ?*anyopaque) bool;
pub extern fn SDL_DestroyProperties(props: SDL_PropertiesID) void;
pub const struct_SDL_Point = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
};
pub const SDL_Point = struct_SDL_Point;
pub const struct_SDL_FPoint = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
};
pub const SDL_FPoint = struct_SDL_FPoint;
pub const struct_SDL_Rect = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    w: c_int = @import("std").mem.zeroes(c_int),
    h: c_int = @import("std").mem.zeroes(c_int),
};
pub const SDL_Rect = struct_SDL_Rect;
pub const struct_SDL_FRect = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
    h: f32 = @import("std").mem.zeroes(f32),
};
pub const SDL_FRect = struct_SDL_FRect;
pub inline fn SDL_RectToFRect(arg_rect: [*c]const SDL_Rect, arg_frect: [*c]SDL_FRect) void {
    var rect = arg_rect;
    _ = &rect;
    var frect = arg_frect;
    _ = &frect;
    frect.*.x = @as(f32, @floatFromInt(rect.*.x));
    frect.*.y = @as(f32, @floatFromInt(rect.*.y));
    frect.*.w = @as(f32, @floatFromInt(rect.*.w));
    frect.*.h = @as(f32, @floatFromInt(rect.*.h));
}
pub inline fn SDL_PointInRect(arg_p: [*c]const SDL_Point, arg_r: [*c]const SDL_Rect) bool {
    var p = arg_p;
    _ = &p;
    var r = arg_r;
    _ = &r;
    return (if ((((((p != null) and (r != null)) and (p.*.x >= r.*.x)) and (p.*.x < (r.*.x + r.*.w))) and (p.*.y >= r.*.y)) and (p.*.y < (r.*.y + r.*.h))) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub inline fn SDL_RectEmpty(arg_r: [*c]const SDL_Rect) bool {
    var r = arg_r;
    _ = &r;
    return (if ((!(r != null) or (r.*.w <= @as(c_int, 0))) or (r.*.h <= @as(c_int, 0))) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub inline fn SDL_RectsEqual(arg_a: [*c]const SDL_Rect, arg_b: [*c]const SDL_Rect) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return (if ((((((a != null) and (b != null)) and (a.*.x == b.*.x)) and (a.*.y == b.*.y)) and (a.*.w == b.*.w)) and (a.*.h == b.*.h)) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub extern fn SDL_HasRectIntersection(A: [*c]const SDL_Rect, B: [*c]const SDL_Rect) bool;
pub extern fn SDL_GetRectIntersection(A: [*c]const SDL_Rect, B: [*c]const SDL_Rect, result: [*c]SDL_Rect) bool;
pub extern fn SDL_GetRectUnion(A: [*c]const SDL_Rect, B: [*c]const SDL_Rect, result: [*c]SDL_Rect) bool;
pub extern fn SDL_GetRectEnclosingPoints(points: [*c]const SDL_Point, count: c_int, clip: [*c]const SDL_Rect, result: [*c]SDL_Rect) bool;
pub extern fn SDL_GetRectAndLineIntersection(rect: [*c]const SDL_Rect, X1: [*c]c_int, Y1: [*c]c_int, X2: [*c]c_int, Y2: [*c]c_int) bool;
pub inline fn SDL_PointInRectFloat(arg_p: [*c]const SDL_FPoint, arg_r: [*c]const SDL_FRect) bool {
    var p = arg_p;
    _ = &p;
    var r = arg_r;
    _ = &r;
    return (if ((((((p != null) and (r != null)) and (p.*.x >= r.*.x)) and (p.*.x <= (r.*.x + r.*.w))) and (p.*.y >= r.*.y)) and (p.*.y <= (r.*.y + r.*.h))) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub inline fn SDL_RectEmptyFloat(arg_r: [*c]const SDL_FRect) bool {
    var r = arg_r;
    _ = &r;
    return (if ((!(r != null) or (r.*.w < 0.0)) or (r.*.h < 0.0)) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub inline fn SDL_RectsEqualEpsilon(arg_a: [*c]const SDL_FRect, arg_b: [*c]const SDL_FRect, arg_epsilon: f32) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var epsilon = arg_epsilon;
    _ = &epsilon;
    return (if (((a != null) and (b != null)) and ((a == b) or ((((SDL_fabsf(a.*.x - b.*.x) <= epsilon) and (SDL_fabsf(a.*.y - b.*.y) <= epsilon)) and (SDL_fabsf(a.*.w - b.*.w) <= epsilon)) and (SDL_fabsf(a.*.h - b.*.h) <= epsilon)))) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub inline fn SDL_RectsEqualFloat(arg_a: [*c]const SDL_FRect, arg_b: [*c]const SDL_FRect) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return SDL_RectsEqualEpsilon(a, b, 0.00000011920928955078125);
}
pub extern fn SDL_HasRectIntersectionFloat(A: [*c]const SDL_FRect, B: [*c]const SDL_FRect) bool;
pub extern fn SDL_GetRectIntersectionFloat(A: [*c]const SDL_FRect, B: [*c]const SDL_FRect, result: [*c]SDL_FRect) bool;
pub extern fn SDL_GetRectUnionFloat(A: [*c]const SDL_FRect, B: [*c]const SDL_FRect, result: [*c]SDL_FRect) bool;
pub extern fn SDL_GetRectEnclosingPointsFloat(points: [*c]const SDL_FPoint, count: c_int, clip: [*c]const SDL_FRect, result: [*c]SDL_FRect) bool;
pub extern fn SDL_GetRectAndLineIntersectionFloat(rect: [*c]const SDL_FRect, X1: [*c]f32, Y1: [*c]f32, X2: [*c]f32, Y2: [*c]f32) bool;
pub const SDL_BlendMode = Uint32;
pub const SDL_BLENDOPERATION_ADD: c_int = 1;
pub const SDL_BLENDOPERATION_SUBTRACT: c_int = 2;
pub const SDL_BLENDOPERATION_REV_SUBTRACT: c_int = 3;
pub const SDL_BLENDOPERATION_MINIMUM: c_int = 4;
pub const SDL_BLENDOPERATION_MAXIMUM: c_int = 5;
pub const enum_SDL_BlendOperation = c_uint;
pub const SDL_BlendOperation = enum_SDL_BlendOperation;
pub const SDL_BLENDFACTOR_ZERO: c_int = 1;
pub const SDL_BLENDFACTOR_ONE: c_int = 2;
pub const SDL_BLENDFACTOR_SRC_COLOR: c_int = 3;
pub const SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR: c_int = 4;
pub const SDL_BLENDFACTOR_SRC_ALPHA: c_int = 5;
pub const SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA: c_int = 6;
pub const SDL_BLENDFACTOR_DST_COLOR: c_int = 7;
pub const SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR: c_int = 8;
pub const SDL_BLENDFACTOR_DST_ALPHA: c_int = 9;
pub const SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA: c_int = 10;
pub const enum_SDL_BlendFactor = c_uint;
pub const SDL_BlendFactor = enum_SDL_BlendFactor;
pub extern fn SDL_ComposeCustomBlendMode(srcColorFactor: SDL_BlendFactor, dstColorFactor: SDL_BlendFactor, colorOperation: SDL_BlendOperation, srcAlphaFactor: SDL_BlendFactor, dstAlphaFactor: SDL_BlendFactor, alphaOperation: SDL_BlendOperation) SDL_BlendMode;
pub const SDL_IO_STATUS_READY: c_int = 0;
pub const SDL_IO_STATUS_ERROR: c_int = 1;
pub const SDL_IO_STATUS_EOF: c_int = 2;
pub const SDL_IO_STATUS_NOT_READY: c_int = 3;
pub const SDL_IO_STATUS_READONLY: c_int = 4;
pub const SDL_IO_STATUS_WRITEONLY: c_int = 5;
pub const enum_SDL_IOStatus = c_uint;
pub const SDL_IOStatus = enum_SDL_IOStatus;
pub const SDL_IO_SEEK_SET: c_int = 0;
pub const SDL_IO_SEEK_CUR: c_int = 1;
pub const SDL_IO_SEEK_END: c_int = 2;
pub const enum_SDL_IOWhence = c_uint;
pub const SDL_IOWhence = enum_SDL_IOWhence;
pub const struct_SDL_IOStreamInterface = extern struct {
    version: Uint32 = @import("std").mem.zeroes(Uint32),
    size: ?*const fn (?*anyopaque) callconv(.c) Sint64 = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) Sint64),
    seek: ?*const fn (?*anyopaque, Sint64, SDL_IOWhence) callconv(.c) Sint64 = @import("std").mem.zeroes(?*const fn (?*anyopaque, Sint64, SDL_IOWhence) callconv(.c) Sint64),
    read: ?*const fn (?*anyopaque, ?*anyopaque, usize, [*c]SDL_IOStatus) callconv(.c) usize = @import("std").mem.zeroes(?*const fn (?*anyopaque, ?*anyopaque, usize, [*c]SDL_IOStatus) callconv(.c) usize),
    write: ?*const fn (?*anyopaque, ?*const anyopaque, usize, [*c]SDL_IOStatus) callconv(.c) usize = @import("std").mem.zeroes(?*const fn (?*anyopaque, ?*const anyopaque, usize, [*c]SDL_IOStatus) callconv(.c) usize),
    flush: ?*const fn (?*anyopaque, [*c]SDL_IOStatus) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]SDL_IOStatus) callconv(.c) bool),
    close: ?*const fn (?*anyopaque) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) bool),
};
pub const SDL_IOStreamInterface = struct_SDL_IOStreamInterface;
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:42: warning: ignoring StaticAssert declaration
pub const struct_SDL_IOStream = opaque {};
pub const SDL_IOStream = struct_SDL_IOStream;
pub extern fn SDL_IOFromFile(file: [*c]const u8, mode: [*c]const u8) ?*SDL_IOStream;
pub extern fn SDL_IOFromMem(mem: ?*anyopaque, size: usize) ?*SDL_IOStream;
pub extern fn SDL_IOFromConstMem(mem: ?*const anyopaque, size: usize) ?*SDL_IOStream;
pub extern fn SDL_IOFromDynamicMem() ?*SDL_IOStream;
pub extern fn SDL_OpenIO(iface: [*c]const SDL_IOStreamInterface, userdata: ?*anyopaque) ?*SDL_IOStream;
pub extern fn SDL_CloseIO(context: ?*SDL_IOStream) bool;
pub extern fn SDL_GetIOProperties(context: ?*SDL_IOStream) SDL_PropertiesID;
pub extern fn SDL_GetIOStatus(context: ?*SDL_IOStream) SDL_IOStatus;
pub extern fn SDL_GetIOSize(context: ?*SDL_IOStream) Sint64;
pub extern fn SDL_SeekIO(context: ?*SDL_IOStream, offset: Sint64, whence: SDL_IOWhence) Sint64;
pub extern fn SDL_TellIO(context: ?*SDL_IOStream) Sint64;
pub extern fn SDL_ReadIO(context: ?*SDL_IOStream, ptr: ?*anyopaque, size: usize) usize;
pub extern fn SDL_WriteIO(context: ?*SDL_IOStream, ptr: ?*const anyopaque, size: usize) usize;
pub extern fn SDL_IOprintf(context: ?*SDL_IOStream, fmt: [*c]const u8, ...) usize;
pub extern fn SDL_IOvprintf(context: ?*SDL_IOStream, fmt: [*c]const u8, ap: va_list) usize;
pub extern fn SDL_FlushIO(context: ?*SDL_IOStream) bool;
pub extern fn SDL_LoadFile_IO(src: ?*SDL_IOStream, datasize: [*c]usize, closeio: bool) ?*anyopaque;
pub extern fn SDL_LoadFile(file: [*c]const u8, datasize: [*c]usize) ?*anyopaque;
pub extern fn SDL_SaveFile_IO(src: ?*SDL_IOStream, data: ?*const anyopaque, datasize: usize, closeio: bool) bool;
pub extern fn SDL_SaveFile(file: [*c]const u8, data: ?*const anyopaque, datasize: usize) bool;
pub extern fn SDL_ReadU8(src: ?*SDL_IOStream, value: [*c]Uint8) bool;
pub extern fn SDL_ReadS8(src: ?*SDL_IOStream, value: [*c]Sint8) bool;
pub extern fn SDL_ReadU16LE(src: ?*SDL_IOStream, value: [*c]Uint16) bool;
pub extern fn SDL_ReadS16LE(src: ?*SDL_IOStream, value: [*c]Sint16) bool;
pub extern fn SDL_ReadU16BE(src: ?*SDL_IOStream, value: [*c]Uint16) bool;
pub extern fn SDL_ReadS16BE(src: ?*SDL_IOStream, value: [*c]Sint16) bool;
pub extern fn SDL_ReadU32LE(src: ?*SDL_IOStream, value: [*c]Uint32) bool;
pub extern fn SDL_ReadS32LE(src: ?*SDL_IOStream, value: [*c]Sint32) bool;
pub extern fn SDL_ReadU32BE(src: ?*SDL_IOStream, value: [*c]Uint32) bool;
pub extern fn SDL_ReadS32BE(src: ?*SDL_IOStream, value: [*c]Sint32) bool;
pub extern fn SDL_ReadU64LE(src: ?*SDL_IOStream, value: [*c]Uint64) bool;
pub extern fn SDL_ReadS64LE(src: ?*SDL_IOStream, value: [*c]Sint64) bool;
pub extern fn SDL_ReadU64BE(src: ?*SDL_IOStream, value: [*c]Uint64) bool;
pub extern fn SDL_ReadS64BE(src: ?*SDL_IOStream, value: [*c]Sint64) bool;
pub extern fn SDL_WriteU8(dst: ?*SDL_IOStream, value: Uint8) bool;
pub extern fn SDL_WriteS8(dst: ?*SDL_IOStream, value: Sint8) bool;
pub extern fn SDL_WriteU16LE(dst: ?*SDL_IOStream, value: Uint16) bool;
pub extern fn SDL_WriteS16LE(dst: ?*SDL_IOStream, value: Sint16) bool;
pub extern fn SDL_WriteU16BE(dst: ?*SDL_IOStream, value: Uint16) bool;
pub extern fn SDL_WriteS16BE(dst: ?*SDL_IOStream, value: Sint16) bool;
pub extern fn SDL_WriteU32LE(dst: ?*SDL_IOStream, value: Uint32) bool;
pub extern fn SDL_WriteS32LE(dst: ?*SDL_IOStream, value: Sint32) bool;
pub extern fn SDL_WriteU32BE(dst: ?*SDL_IOStream, value: Uint32) bool;
pub extern fn SDL_WriteS32BE(dst: ?*SDL_IOStream, value: Sint32) bool;
pub extern fn SDL_WriteU64LE(dst: ?*SDL_IOStream, value: Uint64) bool;
pub extern fn SDL_WriteS64LE(dst: ?*SDL_IOStream, value: Sint64) bool;
pub extern fn SDL_WriteU64BE(dst: ?*SDL_IOStream, value: Uint64) bool;
pub extern fn SDL_WriteS64BE(dst: ?*SDL_IOStream, value: Sint64) bool;
pub const SDL_SurfaceFlags = Uint32;
pub const SDL_SCALEMODE_INVALID: c_int = -1;
pub const SDL_SCALEMODE_NEAREST: c_int = 0;
pub const SDL_SCALEMODE_LINEAR: c_int = 1;
pub const SDL_SCALEMODE_PIXELART: c_int = 2;
pub const enum_SDL_ScaleMode = c_int;
pub const SDL_ScaleMode = enum_SDL_ScaleMode;
pub const SDL_FLIP_NONE: c_int = 0;
pub const SDL_FLIP_HORIZONTAL: c_int = 1;
pub const SDL_FLIP_VERTICAL: c_int = 2;
pub const SDL_FLIP_HORIZONTAL_AND_VERTICAL: c_int = 3;
pub const enum_SDL_FlipMode = c_uint;
pub const SDL_FlipMode = enum_SDL_FlipMode;
pub const struct_SDL_Surface = extern struct {
    flags: SDL_SurfaceFlags = @import("std").mem.zeroes(SDL_SurfaceFlags),
    format: SDL_PixelFormat = @import("std").mem.zeroes(SDL_PixelFormat),
    w: c_int = @import("std").mem.zeroes(c_int),
    h: c_int = @import("std").mem.zeroes(c_int),
    pitch: c_int = @import("std").mem.zeroes(c_int),
    pixels: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    refcount: c_int = @import("std").mem.zeroes(c_int),
    reserved: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const SDL_Surface = struct_SDL_Surface;
pub extern fn SDL_CreateSurface(width: c_int, height: c_int, format: SDL_PixelFormat) [*c]SDL_Surface;
pub extern fn SDL_CreateSurfaceFrom(width: c_int, height: c_int, format: SDL_PixelFormat, pixels: ?*anyopaque, pitch: c_int) [*c]SDL_Surface;
pub extern fn SDL_DestroySurface(surface: [*c]SDL_Surface) void;
pub extern fn SDL_GetSurfaceProperties(surface: [*c]SDL_Surface) SDL_PropertiesID;
pub extern fn SDL_SetSurfaceColorspace(surface: [*c]SDL_Surface, colorspace: SDL_Colorspace) bool;
pub extern fn SDL_GetSurfaceColorspace(surface: [*c]SDL_Surface) SDL_Colorspace;
pub extern fn SDL_CreateSurfacePalette(surface: [*c]SDL_Surface) [*c]SDL_Palette;
pub extern fn SDL_SetSurfacePalette(surface: [*c]SDL_Surface, palette: [*c]SDL_Palette) bool;
pub extern fn SDL_GetSurfacePalette(surface: [*c]SDL_Surface) [*c]SDL_Palette;
pub extern fn SDL_AddSurfaceAlternateImage(surface: [*c]SDL_Surface, image: [*c]SDL_Surface) bool;
pub extern fn SDL_SurfaceHasAlternateImages(surface: [*c]SDL_Surface) bool;
pub extern fn SDL_GetSurfaceImages(surface: [*c]SDL_Surface, count: [*c]c_int) [*c][*c]SDL_Surface;
pub extern fn SDL_RemoveSurfaceAlternateImages(surface: [*c]SDL_Surface) void;
pub extern fn SDL_LockSurface(surface: [*c]SDL_Surface) bool;
pub extern fn SDL_UnlockSurface(surface: [*c]SDL_Surface) void;
pub extern fn SDL_LoadSurface_IO(src: ?*SDL_IOStream, closeio: bool) [*c]SDL_Surface;
pub extern fn SDL_LoadSurface(file: [*c]const u8) [*c]SDL_Surface;
pub extern fn SDL_LoadBMP_IO(src: ?*SDL_IOStream, closeio: bool) [*c]SDL_Surface;
pub extern fn SDL_LoadBMP(file: [*c]const u8) [*c]SDL_Surface;
pub extern fn SDL_SaveBMP_IO(surface: [*c]SDL_Surface, dst: ?*SDL_IOStream, closeio: bool) bool;
pub extern fn SDL_SaveBMP(surface: [*c]SDL_Surface, file: [*c]const u8) bool;
pub extern fn SDL_LoadPNG_IO(src: ?*SDL_IOStream, closeio: bool) [*c]SDL_Surface;
pub extern fn SDL_LoadPNG(file: [*c]const u8) [*c]SDL_Surface;
pub extern fn SDL_SavePNG_IO(surface: [*c]SDL_Surface, dst: ?*SDL_IOStream, closeio: bool) bool;
pub extern fn SDL_SavePNG(surface: [*c]SDL_Surface, file: [*c]const u8) bool;
pub extern fn SDL_SetSurfaceRLE(surface: [*c]SDL_Surface, enabled: bool) bool;
pub extern fn SDL_SurfaceHasRLE(surface: [*c]SDL_Surface) bool;
pub extern fn SDL_SetSurfaceColorKey(surface: [*c]SDL_Surface, enabled: bool, key: Uint32) bool;
pub extern fn SDL_SurfaceHasColorKey(surface: [*c]SDL_Surface) bool;
pub extern fn SDL_GetSurfaceColorKey(surface: [*c]SDL_Surface, key: [*c]Uint32) bool;
pub extern fn SDL_SetSurfaceColorMod(surface: [*c]SDL_Surface, r: Uint8, g: Uint8, b: Uint8) bool;
pub extern fn SDL_GetSurfaceColorMod(surface: [*c]SDL_Surface, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8) bool;
pub extern fn SDL_SetSurfaceAlphaMod(surface: [*c]SDL_Surface, alpha: Uint8) bool;
pub extern fn SDL_GetSurfaceAlphaMod(surface: [*c]SDL_Surface, alpha: [*c]Uint8) bool;
pub extern fn SDL_SetSurfaceBlendMode(surface: [*c]SDL_Surface, blendMode: SDL_BlendMode) bool;
pub extern fn SDL_GetSurfaceBlendMode(surface: [*c]SDL_Surface, blendMode: [*c]SDL_BlendMode) bool;
pub extern fn SDL_SetSurfaceClipRect(surface: [*c]SDL_Surface, rect: [*c]const SDL_Rect) bool;
pub extern fn SDL_GetSurfaceClipRect(surface: [*c]SDL_Surface, rect: [*c]SDL_Rect) bool;
pub extern fn SDL_FlipSurface(surface: [*c]SDL_Surface, flip: SDL_FlipMode) bool;
pub extern fn SDL_RotateSurface(surface: [*c]SDL_Surface, angle: f32) [*c]SDL_Surface;
pub extern fn SDL_DuplicateSurface(surface: [*c]SDL_Surface) [*c]SDL_Surface;
pub extern fn SDL_ScaleSurface(surface: [*c]SDL_Surface, width: c_int, height: c_int, scaleMode: SDL_ScaleMode) [*c]SDL_Surface;
pub extern fn SDL_ConvertSurface(surface: [*c]SDL_Surface, format: SDL_PixelFormat) [*c]SDL_Surface;
pub extern fn SDL_ConvertSurfaceAndColorspace(surface: [*c]SDL_Surface, format: SDL_PixelFormat, palette: [*c]SDL_Palette, colorspace: SDL_Colorspace, props: SDL_PropertiesID) [*c]SDL_Surface;
pub extern fn SDL_ConvertPixels(width: c_int, height: c_int, src_format: SDL_PixelFormat, src: ?*const anyopaque, src_pitch: c_int, dst_format: SDL_PixelFormat, dst: ?*anyopaque, dst_pitch: c_int) bool;
pub extern fn SDL_ConvertPixelsAndColorspace(width: c_int, height: c_int, src_format: SDL_PixelFormat, src_colorspace: SDL_Colorspace, src_properties: SDL_PropertiesID, src: ?*const anyopaque, src_pitch: c_int, dst_format: SDL_PixelFormat, dst_colorspace: SDL_Colorspace, dst_properties: SDL_PropertiesID, dst: ?*anyopaque, dst_pitch: c_int) bool;
pub extern fn SDL_PremultiplyAlpha(width: c_int, height: c_int, src_format: SDL_PixelFormat, src: ?*const anyopaque, src_pitch: c_int, dst_format: SDL_PixelFormat, dst: ?*anyopaque, dst_pitch: c_int, linear: bool) bool;
pub extern fn SDL_PremultiplySurfaceAlpha(surface: [*c]SDL_Surface, linear: bool) bool;
pub extern fn SDL_ClearSurface(surface: [*c]SDL_Surface, r: f32, g: f32, b: f32, a: f32) bool;
pub extern fn SDL_FillSurfaceRect(dst: [*c]SDL_Surface, rect: [*c]const SDL_Rect, color: Uint32) bool;
pub extern fn SDL_FillSurfaceRects(dst: [*c]SDL_Surface, rects: [*c]const SDL_Rect, count: c_int, color: Uint32) bool;
pub extern fn SDL_BlitSurface(src: [*c]SDL_Surface, srcrect: [*c]const SDL_Rect, dst: [*c]SDL_Surface, dstrect: [*c]const SDL_Rect) bool;
pub extern fn SDL_BlitSurfaceUnchecked(src: [*c]SDL_Surface, srcrect: [*c]const SDL_Rect, dst: [*c]SDL_Surface, dstrect: [*c]const SDL_Rect) bool;
pub extern fn SDL_BlitSurfaceScaled(src: [*c]SDL_Surface, srcrect: [*c]const SDL_Rect, dst: [*c]SDL_Surface, dstrect: [*c]const SDL_Rect, scaleMode: SDL_ScaleMode) bool;
pub extern fn SDL_BlitSurfaceUncheckedScaled(src: [*c]SDL_Surface, srcrect: [*c]const SDL_Rect, dst: [*c]SDL_Surface, dstrect: [*c]const SDL_Rect, scaleMode: SDL_ScaleMode) bool;
pub extern fn SDL_StretchSurface(src: [*c]SDL_Surface, srcrect: [*c]const SDL_Rect, dst: [*c]SDL_Surface, dstrect: [*c]const SDL_Rect, scaleMode: SDL_ScaleMode) bool;
pub extern fn SDL_BlitSurfaceTiled(src: [*c]SDL_Surface, srcrect: [*c]const SDL_Rect, dst: [*c]SDL_Surface, dstrect: [*c]const SDL_Rect) bool;
pub extern fn SDL_BlitSurfaceTiledWithScale(src: [*c]SDL_Surface, srcrect: [*c]const SDL_Rect, scale: f32, scaleMode: SDL_ScaleMode, dst: [*c]SDL_Surface, dstrect: [*c]const SDL_Rect) bool;
pub extern fn SDL_BlitSurface9Grid(src: [*c]SDL_Surface, srcrect: [*c]const SDL_Rect, left_width: c_int, right_width: c_int, top_height: c_int, bottom_height: c_int, scale: f32, scaleMode: SDL_ScaleMode, dst: [*c]SDL_Surface, dstrect: [*c]const SDL_Rect) bool;
pub extern fn SDL_MapSurfaceRGB(surface: [*c]SDL_Surface, r: Uint8, g: Uint8, b: Uint8) Uint32;
pub extern fn SDL_MapSurfaceRGBA(surface: [*c]SDL_Surface, r: Uint8, g: Uint8, b: Uint8, a: Uint8) Uint32;
pub extern fn SDL_ReadSurfacePixel(surface: [*c]SDL_Surface, x: c_int, y: c_int, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8, a: [*c]Uint8) bool;
pub extern fn SDL_ReadSurfacePixelFloat(surface: [*c]SDL_Surface, x: c_int, y: c_int, r: [*c]f32, g: [*c]f32, b: [*c]f32, a: [*c]f32) bool;
pub extern fn SDL_WriteSurfacePixel(surface: [*c]SDL_Surface, x: c_int, y: c_int, r: Uint8, g: Uint8, b: Uint8, a: Uint8) bool;
pub extern fn SDL_WriteSurfacePixelFloat(surface: [*c]SDL_Surface, x: c_int, y: c_int, r: f32, g: f32, b: f32, a: f32) bool;
pub const SDL_DisplayID = Uint32;
pub const SDL_WindowID = Uint32;
pub const SDL_SYSTEM_THEME_UNKNOWN: c_int = 0;
pub const SDL_SYSTEM_THEME_LIGHT: c_int = 1;
pub const SDL_SYSTEM_THEME_DARK: c_int = 2;
pub const enum_SDL_SystemTheme = c_uint;
pub const SDL_SystemTheme = enum_SDL_SystemTheme;
pub const struct_SDL_DisplayModeData = opaque {};
pub const SDL_DisplayModeData = struct_SDL_DisplayModeData;
pub const struct_SDL_DisplayMode = extern struct {
    displayID: SDL_DisplayID = @import("std").mem.zeroes(SDL_DisplayID),
    format: SDL_PixelFormat = @import("std").mem.zeroes(SDL_PixelFormat),
    w: c_int = @import("std").mem.zeroes(c_int),
    h: c_int = @import("std").mem.zeroes(c_int),
    pixel_density: f32 = @import("std").mem.zeroes(f32),
    refresh_rate: f32 = @import("std").mem.zeroes(f32),
    refresh_rate_numerator: c_int = @import("std").mem.zeroes(c_int),
    refresh_rate_denominator: c_int = @import("std").mem.zeroes(c_int),
    internal: ?*SDL_DisplayModeData = @import("std").mem.zeroes(?*SDL_DisplayModeData),
};
pub const SDL_DisplayMode = struct_SDL_DisplayMode;
pub const SDL_ORIENTATION_UNKNOWN: c_int = 0;
pub const SDL_ORIENTATION_LANDSCAPE: c_int = 1;
pub const SDL_ORIENTATION_LANDSCAPE_FLIPPED: c_int = 2;
pub const SDL_ORIENTATION_PORTRAIT: c_int = 3;
pub const SDL_ORIENTATION_PORTRAIT_FLIPPED: c_int = 4;
pub const enum_SDL_DisplayOrientation = c_uint;
pub const SDL_DisplayOrientation = enum_SDL_DisplayOrientation;
pub const struct_SDL_Window = opaque {};
pub const SDL_Window = struct_SDL_Window;
pub const SDL_WindowFlags = Uint64;
pub const SDL_FLASH_CANCEL: c_int = 0;
pub const SDL_FLASH_BRIEFLY: c_int = 1;
pub const SDL_FLASH_UNTIL_FOCUSED: c_int = 2;
pub const enum_SDL_FlashOperation = c_uint;
pub const SDL_FlashOperation = enum_SDL_FlashOperation;
pub const SDL_PROGRESS_STATE_INVALID: c_int = -1;
pub const SDL_PROGRESS_STATE_NONE: c_int = 0;
pub const SDL_PROGRESS_STATE_INDETERMINATE: c_int = 1;
pub const SDL_PROGRESS_STATE_NORMAL: c_int = 2;
pub const SDL_PROGRESS_STATE_PAUSED: c_int = 3;
pub const SDL_PROGRESS_STATE_ERROR: c_int = 4;
pub const enum_SDL_ProgressState = c_int;
pub const SDL_ProgressState = enum_SDL_ProgressState;
pub const struct_SDL_GLContextState = opaque {};
pub const SDL_GLContext = ?*struct_SDL_GLContextState;
pub const SDL_EGLDisplay = ?*anyopaque;
pub const SDL_EGLConfig = ?*anyopaque;
pub const SDL_EGLSurface = ?*anyopaque;
pub const SDL_EGLAttrib = isize;
pub const SDL_EGLint = c_int;
pub const SDL_EGLAttribArrayCallback = ?*const fn (?*anyopaque) callconv(.c) [*c]SDL_EGLAttrib;
pub const SDL_EGLIntArrayCallback = ?*const fn (?*anyopaque, SDL_EGLDisplay, SDL_EGLConfig) callconv(.c) [*c]SDL_EGLint;
pub const SDL_GL_RED_SIZE: c_int = 0;
pub const SDL_GL_GREEN_SIZE: c_int = 1;
pub const SDL_GL_BLUE_SIZE: c_int = 2;
pub const SDL_GL_ALPHA_SIZE: c_int = 3;
pub const SDL_GL_BUFFER_SIZE: c_int = 4;
pub const SDL_GL_DOUBLEBUFFER: c_int = 5;
pub const SDL_GL_DEPTH_SIZE: c_int = 6;
pub const SDL_GL_STENCIL_SIZE: c_int = 7;
pub const SDL_GL_ACCUM_RED_SIZE: c_int = 8;
pub const SDL_GL_ACCUM_GREEN_SIZE: c_int = 9;
pub const SDL_GL_ACCUM_BLUE_SIZE: c_int = 10;
pub const SDL_GL_ACCUM_ALPHA_SIZE: c_int = 11;
pub const SDL_GL_STEREO: c_int = 12;
pub const SDL_GL_MULTISAMPLEBUFFERS: c_int = 13;
pub const SDL_GL_MULTISAMPLESAMPLES: c_int = 14;
pub const SDL_GL_ACCELERATED_VISUAL: c_int = 15;
pub const SDL_GL_RETAINED_BACKING: c_int = 16;
pub const SDL_GL_CONTEXT_MAJOR_VERSION: c_int = 17;
pub const SDL_GL_CONTEXT_MINOR_VERSION: c_int = 18;
pub const SDL_GL_CONTEXT_FLAGS: c_int = 19;
pub const SDL_GL_CONTEXT_PROFILE_MASK: c_int = 20;
pub const SDL_GL_SHARE_WITH_CURRENT_CONTEXT: c_int = 21;
pub const SDL_GL_FRAMEBUFFER_SRGB_CAPABLE: c_int = 22;
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR: c_int = 23;
pub const SDL_GL_CONTEXT_RESET_NOTIFICATION: c_int = 24;
pub const SDL_GL_CONTEXT_NO_ERROR: c_int = 25;
pub const SDL_GL_FLOATBUFFERS: c_int = 26;
pub const SDL_GL_EGL_PLATFORM: c_int = 27;
pub const enum_SDL_GLAttr = c_uint;
pub const SDL_GLAttr = enum_SDL_GLAttr;
pub const SDL_GLProfile = Uint32;
pub const SDL_GLContextFlag = Uint32;
pub const SDL_GLContextReleaseFlag = Uint32;
pub const SDL_GLContextResetNotification = Uint32;
pub extern fn SDL_GetNumVideoDrivers() c_int;
pub extern fn SDL_GetVideoDriver(index: c_int) [*c]const u8;
pub extern fn SDL_GetCurrentVideoDriver() [*c]const u8;
pub extern fn SDL_GetSystemTheme() SDL_SystemTheme;
pub extern fn SDL_GetDisplays(count: [*c]c_int) [*c]SDL_DisplayID;
pub extern fn SDL_GetPrimaryDisplay() SDL_DisplayID;
pub extern fn SDL_GetDisplayProperties(displayID: SDL_DisplayID) SDL_PropertiesID;
pub extern fn SDL_GetDisplayName(displayID: SDL_DisplayID) [*c]const u8;
pub extern fn SDL_GetDisplayBounds(displayID: SDL_DisplayID, rect: [*c]SDL_Rect) bool;
pub extern fn SDL_GetDisplayUsableBounds(displayID: SDL_DisplayID, rect: [*c]SDL_Rect) bool;
pub extern fn SDL_GetNaturalDisplayOrientation(displayID: SDL_DisplayID) SDL_DisplayOrientation;
pub extern fn SDL_GetCurrentDisplayOrientation(displayID: SDL_DisplayID) SDL_DisplayOrientation;
pub extern fn SDL_GetDisplayContentScale(displayID: SDL_DisplayID) f32;
pub extern fn SDL_GetFullscreenDisplayModes(displayID: SDL_DisplayID, count: [*c]c_int) [*c][*c]SDL_DisplayMode;
pub extern fn SDL_GetClosestFullscreenDisplayMode(displayID: SDL_DisplayID, w: c_int, h: c_int, refresh_rate: f32, include_high_density_modes: bool, closest: [*c]SDL_DisplayMode) bool;
pub extern fn SDL_GetDesktopDisplayMode(displayID: SDL_DisplayID) [*c]const SDL_DisplayMode;
pub extern fn SDL_GetCurrentDisplayMode(displayID: SDL_DisplayID) [*c]const SDL_DisplayMode;
pub extern fn SDL_GetDisplayForPoint(point: [*c]const SDL_Point) SDL_DisplayID;
pub extern fn SDL_GetDisplayForRect(rect: [*c]const SDL_Rect) SDL_DisplayID;
pub extern fn SDL_GetDisplayForWindow(window: ?*SDL_Window) SDL_DisplayID;
pub extern fn SDL_GetWindowPixelDensity(window: ?*SDL_Window) f32;
pub extern fn SDL_GetWindowDisplayScale(window: ?*SDL_Window) f32;
pub extern fn SDL_SetWindowFullscreenMode(window: ?*SDL_Window, mode: [*c]const SDL_DisplayMode) bool;
pub extern fn SDL_GetWindowFullscreenMode(window: ?*SDL_Window) [*c]const SDL_DisplayMode;
pub extern fn SDL_GetWindowICCProfile(window: ?*SDL_Window, size: [*c]usize) ?*anyopaque;
pub extern fn SDL_GetWindowPixelFormat(window: ?*SDL_Window) SDL_PixelFormat;
pub extern fn SDL_GetWindows(count: [*c]c_int) [*c]?*SDL_Window;
pub extern fn SDL_CreateWindow(title: [*c]const u8, w: c_int, h: c_int, flags: SDL_WindowFlags) ?*SDL_Window;
pub extern fn SDL_CreatePopupWindow(parent: ?*SDL_Window, offset_x: c_int, offset_y: c_int, w: c_int, h: c_int, flags: SDL_WindowFlags) ?*SDL_Window;
pub extern fn SDL_CreateWindowWithProperties(props: SDL_PropertiesID) ?*SDL_Window;
pub extern fn SDL_GetWindowID(window: ?*SDL_Window) SDL_WindowID;
pub extern fn SDL_GetWindowFromID(id: SDL_WindowID) ?*SDL_Window;
pub extern fn SDL_GetWindowParent(window: ?*SDL_Window) ?*SDL_Window;
pub extern fn SDL_GetWindowProperties(window: ?*SDL_Window) SDL_PropertiesID;
pub extern fn SDL_GetWindowFlags(window: ?*SDL_Window) SDL_WindowFlags;
pub extern fn SDL_SetWindowTitle(window: ?*SDL_Window, title: [*c]const u8) bool;
pub extern fn SDL_GetWindowTitle(window: ?*SDL_Window) [*c]const u8;
pub extern fn SDL_SetWindowIcon(window: ?*SDL_Window, icon: [*c]SDL_Surface) bool;
pub extern fn SDL_SetWindowPosition(window: ?*SDL_Window, x: c_int, y: c_int) bool;
pub extern fn SDL_GetWindowPosition(window: ?*SDL_Window, x: [*c]c_int, y: [*c]c_int) bool;
pub extern fn SDL_SetWindowSize(window: ?*SDL_Window, w: c_int, h: c_int) bool;
pub extern fn SDL_GetWindowSize(window: ?*SDL_Window, w: [*c]c_int, h: [*c]c_int) bool;
pub extern fn SDL_GetWindowSafeArea(window: ?*SDL_Window, rect: [*c]SDL_Rect) bool;
pub extern fn SDL_SetWindowAspectRatio(window: ?*SDL_Window, min_aspect: f32, max_aspect: f32) bool;
pub extern fn SDL_GetWindowAspectRatio(window: ?*SDL_Window, min_aspect: [*c]f32, max_aspect: [*c]f32) bool;
pub extern fn SDL_GetWindowBordersSize(window: ?*SDL_Window, top: [*c]c_int, left: [*c]c_int, bottom: [*c]c_int, right: [*c]c_int) bool;
pub extern fn SDL_GetWindowSizeInPixels(window: ?*SDL_Window, w: [*c]c_int, h: [*c]c_int) bool;
pub extern fn SDL_SetWindowMinimumSize(window: ?*SDL_Window, min_w: c_int, min_h: c_int) bool;
pub extern fn SDL_GetWindowMinimumSize(window: ?*SDL_Window, w: [*c]c_int, h: [*c]c_int) bool;
pub extern fn SDL_SetWindowMaximumSize(window: ?*SDL_Window, max_w: c_int, max_h: c_int) bool;
pub extern fn SDL_GetWindowMaximumSize(window: ?*SDL_Window, w: [*c]c_int, h: [*c]c_int) bool;
pub extern fn SDL_SetWindowBordered(window: ?*SDL_Window, bordered: bool) bool;
pub extern fn SDL_SetWindowResizable(window: ?*SDL_Window, resizable: bool) bool;
pub extern fn SDL_SetWindowAlwaysOnTop(window: ?*SDL_Window, on_top: bool) bool;
pub extern fn SDL_SetWindowFillDocument(window: ?*SDL_Window, fill: bool) bool;
pub extern fn SDL_ShowWindow(window: ?*SDL_Window) bool;
pub extern fn SDL_HideWindow(window: ?*SDL_Window) bool;
pub extern fn SDL_RaiseWindow(window: ?*SDL_Window) bool;
pub extern fn SDL_MaximizeWindow(window: ?*SDL_Window) bool;
pub extern fn SDL_MinimizeWindow(window: ?*SDL_Window) bool;
pub extern fn SDL_RestoreWindow(window: ?*SDL_Window) bool;
pub extern fn SDL_SetWindowFullscreen(window: ?*SDL_Window, fullscreen: bool) bool;
pub extern fn SDL_SyncWindow(window: ?*SDL_Window) bool;
pub extern fn SDL_WindowHasSurface(window: ?*SDL_Window) bool;
pub extern fn SDL_GetWindowSurface(window: ?*SDL_Window) [*c]SDL_Surface;
pub extern fn SDL_SetWindowSurfaceVSync(window: ?*SDL_Window, vsync: c_int) bool;
pub extern fn SDL_GetWindowSurfaceVSync(window: ?*SDL_Window, vsync: [*c]c_int) bool;
pub extern fn SDL_UpdateWindowSurface(window: ?*SDL_Window) bool;
pub extern fn SDL_UpdateWindowSurfaceRects(window: ?*SDL_Window, rects: [*c]const SDL_Rect, numrects: c_int) bool;
pub extern fn SDL_DestroyWindowSurface(window: ?*SDL_Window) bool;
pub extern fn SDL_SetWindowKeyboardGrab(window: ?*SDL_Window, grabbed: bool) bool;
pub extern fn SDL_SetWindowMouseGrab(window: ?*SDL_Window, grabbed: bool) bool;
pub extern fn SDL_GetWindowKeyboardGrab(window: ?*SDL_Window) bool;
pub extern fn SDL_GetWindowMouseGrab(window: ?*SDL_Window) bool;
pub extern fn SDL_GetGrabbedWindow() ?*SDL_Window;
pub extern fn SDL_SetWindowMouseRect(window: ?*SDL_Window, rect: [*c]const SDL_Rect) bool;
pub extern fn SDL_GetWindowMouseRect(window: ?*SDL_Window) [*c]const SDL_Rect;
pub extern fn SDL_SetWindowOpacity(window: ?*SDL_Window, opacity: f32) bool;
pub extern fn SDL_GetWindowOpacity(window: ?*SDL_Window) f32;
pub extern fn SDL_SetWindowParent(window: ?*SDL_Window, parent: ?*SDL_Window) bool;
pub extern fn SDL_SetWindowModal(window: ?*SDL_Window, modal: bool) bool;
pub extern fn SDL_SetWindowFocusable(window: ?*SDL_Window, focusable: bool) bool;
pub extern fn SDL_ShowWindowSystemMenu(window: ?*SDL_Window, x: c_int, y: c_int) bool;
pub const SDL_HITTEST_NORMAL: c_int = 0;
pub const SDL_HITTEST_DRAGGABLE: c_int = 1;
pub const SDL_HITTEST_RESIZE_TOPLEFT: c_int = 2;
pub const SDL_HITTEST_RESIZE_TOP: c_int = 3;
pub const SDL_HITTEST_RESIZE_TOPRIGHT: c_int = 4;
pub const SDL_HITTEST_RESIZE_RIGHT: c_int = 5;
pub const SDL_HITTEST_RESIZE_BOTTOMRIGHT: c_int = 6;
pub const SDL_HITTEST_RESIZE_BOTTOM: c_int = 7;
pub const SDL_HITTEST_RESIZE_BOTTOMLEFT: c_int = 8;
pub const SDL_HITTEST_RESIZE_LEFT: c_int = 9;
pub const enum_SDL_HitTestResult = c_uint;
pub const SDL_HitTestResult = enum_SDL_HitTestResult;
pub const SDL_HitTest = ?*const fn (?*SDL_Window, [*c]const SDL_Point, ?*anyopaque) callconv(.c) SDL_HitTestResult;
pub extern fn SDL_SetWindowHitTest(window: ?*SDL_Window, callback: SDL_HitTest, callback_data: ?*anyopaque) bool;
pub extern fn SDL_SetWindowShape(window: ?*SDL_Window, shape: [*c]SDL_Surface) bool;
pub extern fn SDL_FlashWindow(window: ?*SDL_Window, operation: SDL_FlashOperation) bool;
pub extern fn SDL_SetWindowProgressState(window: ?*SDL_Window, state: SDL_ProgressState) bool;
pub extern fn SDL_GetWindowProgressState(window: ?*SDL_Window) SDL_ProgressState;
pub extern fn SDL_SetWindowProgressValue(window: ?*SDL_Window, value: f32) bool;
pub extern fn SDL_GetWindowProgressValue(window: ?*SDL_Window) f32;
pub extern fn SDL_DestroyWindow(window: ?*SDL_Window) void;
pub extern fn SDL_ScreenSaverEnabled() bool;
pub extern fn SDL_EnableScreenSaver() bool;
pub extern fn SDL_DisableScreenSaver() bool;
pub extern fn SDL_GL_LoadLibrary(path: [*c]const u8) bool;
pub extern fn SDL_GL_GetProcAddress(proc: [*c]const u8) SDL_FunctionPointer;
pub extern fn SDL_EGL_GetProcAddress(proc: [*c]const u8) SDL_FunctionPointer;
pub extern fn SDL_GL_UnloadLibrary() void;
pub extern fn SDL_GL_ExtensionSupported(extension: [*c]const u8) bool;
pub extern fn SDL_GL_ResetAttributes() void;
pub extern fn SDL_GL_SetAttribute(attr: SDL_GLAttr, value: c_int) bool;
pub extern fn SDL_GL_GetAttribute(attr: SDL_GLAttr, value: [*c]c_int) bool;
pub extern fn SDL_GL_CreateContext(window: ?*SDL_Window) SDL_GLContext;
pub extern fn SDL_GL_MakeCurrent(window: ?*SDL_Window, context: SDL_GLContext) bool;
pub extern fn SDL_GL_GetCurrentWindow() ?*SDL_Window;
pub extern fn SDL_GL_GetCurrentContext() SDL_GLContext;
pub extern fn SDL_EGL_GetCurrentDisplay() SDL_EGLDisplay;
pub extern fn SDL_EGL_GetCurrentConfig() SDL_EGLConfig;
pub extern fn SDL_EGL_GetWindowSurface(window: ?*SDL_Window) SDL_EGLSurface;
pub extern fn SDL_EGL_SetAttributeCallbacks(platformAttribCallback: SDL_EGLAttribArrayCallback, surfaceAttribCallback: SDL_EGLIntArrayCallback, contextAttribCallback: SDL_EGLIntArrayCallback, userdata: ?*anyopaque) void;
pub extern fn SDL_GL_SetSwapInterval(interval: c_int) bool;
pub extern fn SDL_GL_GetSwapInterval(interval: [*c]c_int) bool;
pub extern fn SDL_GL_SwapWindow(window: ?*SDL_Window) bool;
pub extern fn SDL_GL_DestroyContext(context: SDL_GLContext) bool;
pub const struct_SDL_GPUDevice = opaque {};
pub const SDL_GPUDevice = struct_SDL_GPUDevice;
pub const struct_SDL_GPUBuffer = opaque {};
pub const SDL_GPUBuffer = struct_SDL_GPUBuffer;
pub const struct_SDL_GPUTransferBuffer = opaque {};
pub const SDL_GPUTransferBuffer = struct_SDL_GPUTransferBuffer;
pub const struct_SDL_GPUTexture = opaque {};
pub const SDL_GPUTexture = struct_SDL_GPUTexture;
pub const struct_SDL_GPUSampler = opaque {};
pub const SDL_GPUSampler = struct_SDL_GPUSampler;
pub const struct_SDL_GPUShader = opaque {};
pub const SDL_GPUShader = struct_SDL_GPUShader;
pub const struct_SDL_GPUComputePipeline = opaque {};
pub const SDL_GPUComputePipeline = struct_SDL_GPUComputePipeline;
pub const struct_SDL_GPUGraphicsPipeline = opaque {};
pub const SDL_GPUGraphicsPipeline = struct_SDL_GPUGraphicsPipeline;
pub const struct_SDL_GPUCommandBuffer = opaque {};
pub const SDL_GPUCommandBuffer = struct_SDL_GPUCommandBuffer;
pub const struct_SDL_GPURenderPass = opaque {};
pub const SDL_GPURenderPass = struct_SDL_GPURenderPass;
pub const struct_SDL_GPUComputePass = opaque {};
pub const SDL_GPUComputePass = struct_SDL_GPUComputePass;
pub const struct_SDL_GPUCopyPass = opaque {};
pub const SDL_GPUCopyPass = struct_SDL_GPUCopyPass;
pub const struct_SDL_GPUFence = opaque {};
pub const SDL_GPUFence = struct_SDL_GPUFence;
pub const SDL_GPU_PRIMITIVETYPE_TRIANGLELIST: c_int = 0;
pub const SDL_GPU_PRIMITIVETYPE_TRIANGLESTRIP: c_int = 1;
pub const SDL_GPU_PRIMITIVETYPE_LINELIST: c_int = 2;
pub const SDL_GPU_PRIMITIVETYPE_LINESTRIP: c_int = 3;
pub const SDL_GPU_PRIMITIVETYPE_POINTLIST: c_int = 4;
pub const enum_SDL_GPUPrimitiveType = c_uint;
pub const SDL_GPUPrimitiveType = enum_SDL_GPUPrimitiveType;
pub const SDL_GPU_LOADOP_LOAD: c_int = 0;
pub const SDL_GPU_LOADOP_CLEAR: c_int = 1;
pub const SDL_GPU_LOADOP_DONT_CARE: c_int = 2;
pub const enum_SDL_GPULoadOp = c_uint;
pub const SDL_GPULoadOp = enum_SDL_GPULoadOp;
pub const SDL_GPU_STOREOP_STORE: c_int = 0;
pub const SDL_GPU_STOREOP_DONT_CARE: c_int = 1;
pub const SDL_GPU_STOREOP_RESOLVE: c_int = 2;
pub const SDL_GPU_STOREOP_RESOLVE_AND_STORE: c_int = 3;
pub const enum_SDL_GPUStoreOp = c_uint;
pub const SDL_GPUStoreOp = enum_SDL_GPUStoreOp;
pub const SDL_GPU_INDEXELEMENTSIZE_16BIT: c_int = 0;
pub const SDL_GPU_INDEXELEMENTSIZE_32BIT: c_int = 1;
pub const enum_SDL_GPUIndexElementSize = c_uint;
pub const SDL_GPUIndexElementSize = enum_SDL_GPUIndexElementSize;
pub const SDL_GPU_TEXTUREFORMAT_INVALID: c_int = 0;
pub const SDL_GPU_TEXTUREFORMAT_A8_UNORM: c_int = 1;
pub const SDL_GPU_TEXTUREFORMAT_R8_UNORM: c_int = 2;
pub const SDL_GPU_TEXTUREFORMAT_R8G8_UNORM: c_int = 3;
pub const SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM: c_int = 4;
pub const SDL_GPU_TEXTUREFORMAT_R16_UNORM: c_int = 5;
pub const SDL_GPU_TEXTUREFORMAT_R16G16_UNORM: c_int = 6;
pub const SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UNORM: c_int = 7;
pub const SDL_GPU_TEXTUREFORMAT_R10G10B10A2_UNORM: c_int = 8;
pub const SDL_GPU_TEXTUREFORMAT_B5G6R5_UNORM: c_int = 9;
pub const SDL_GPU_TEXTUREFORMAT_B5G5R5A1_UNORM: c_int = 10;
pub const SDL_GPU_TEXTUREFORMAT_B4G4R4A4_UNORM: c_int = 11;
pub const SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM: c_int = 12;
pub const SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM: c_int = 13;
pub const SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM: c_int = 14;
pub const SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM: c_int = 15;
pub const SDL_GPU_TEXTUREFORMAT_BC4_R_UNORM: c_int = 16;
pub const SDL_GPU_TEXTUREFORMAT_BC5_RG_UNORM: c_int = 17;
pub const SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM: c_int = 18;
pub const SDL_GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT: c_int = 19;
pub const SDL_GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT: c_int = 20;
pub const SDL_GPU_TEXTUREFORMAT_R8_SNORM: c_int = 21;
pub const SDL_GPU_TEXTUREFORMAT_R8G8_SNORM: c_int = 22;
pub const SDL_GPU_TEXTUREFORMAT_R8G8B8A8_SNORM: c_int = 23;
pub const SDL_GPU_TEXTUREFORMAT_R16_SNORM: c_int = 24;
pub const SDL_GPU_TEXTUREFORMAT_R16G16_SNORM: c_int = 25;
pub const SDL_GPU_TEXTUREFORMAT_R16G16B16A16_SNORM: c_int = 26;
pub const SDL_GPU_TEXTUREFORMAT_R16_FLOAT: c_int = 27;
pub const SDL_GPU_TEXTUREFORMAT_R16G16_FLOAT: c_int = 28;
pub const SDL_GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT: c_int = 29;
pub const SDL_GPU_TEXTUREFORMAT_R32_FLOAT: c_int = 30;
pub const SDL_GPU_TEXTUREFORMAT_R32G32_FLOAT: c_int = 31;
pub const SDL_GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT: c_int = 32;
pub const SDL_GPU_TEXTUREFORMAT_R11G11B10_UFLOAT: c_int = 33;
pub const SDL_GPU_TEXTUREFORMAT_R8_UINT: c_int = 34;
pub const SDL_GPU_TEXTUREFORMAT_R8G8_UINT: c_int = 35;
pub const SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UINT: c_int = 36;
pub const SDL_GPU_TEXTUREFORMAT_R16_UINT: c_int = 37;
pub const SDL_GPU_TEXTUREFORMAT_R16G16_UINT: c_int = 38;
pub const SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UINT: c_int = 39;
pub const SDL_GPU_TEXTUREFORMAT_R32_UINT: c_int = 40;
pub const SDL_GPU_TEXTUREFORMAT_R32G32_UINT: c_int = 41;
pub const SDL_GPU_TEXTUREFORMAT_R32G32B32A32_UINT: c_int = 42;
pub const SDL_GPU_TEXTUREFORMAT_R8_INT: c_int = 43;
pub const SDL_GPU_TEXTUREFORMAT_R8G8_INT: c_int = 44;
pub const SDL_GPU_TEXTUREFORMAT_R8G8B8A8_INT: c_int = 45;
pub const SDL_GPU_TEXTUREFORMAT_R16_INT: c_int = 46;
pub const SDL_GPU_TEXTUREFORMAT_R16G16_INT: c_int = 47;
pub const SDL_GPU_TEXTUREFORMAT_R16G16B16A16_INT: c_int = 48;
pub const SDL_GPU_TEXTUREFORMAT_R32_INT: c_int = 49;
pub const SDL_GPU_TEXTUREFORMAT_R32G32_INT: c_int = 50;
pub const SDL_GPU_TEXTUREFORMAT_R32G32B32A32_INT: c_int = 51;
pub const SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB: c_int = 52;
pub const SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB: c_int = 53;
pub const SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB: c_int = 54;
pub const SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB: c_int = 55;
pub const SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB: c_int = 56;
pub const SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB: c_int = 57;
pub const SDL_GPU_TEXTUREFORMAT_D16_UNORM: c_int = 58;
pub const SDL_GPU_TEXTUREFORMAT_D24_UNORM: c_int = 59;
pub const SDL_GPU_TEXTUREFORMAT_D32_FLOAT: c_int = 60;
pub const SDL_GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT: c_int = 61;
pub const SDL_GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT: c_int = 62;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM: c_int = 63;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM: c_int = 64;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM: c_int = 65;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM: c_int = 66;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM: c_int = 67;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM: c_int = 68;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM: c_int = 69;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM: c_int = 70;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM: c_int = 71;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM: c_int = 72;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM: c_int = 73;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM: c_int = 74;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM: c_int = 75;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM: c_int = 76;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM_SRGB: c_int = 77;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM_SRGB: c_int = 78;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM_SRGB: c_int = 79;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM_SRGB: c_int = 80;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM_SRGB: c_int = 81;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM_SRGB: c_int = 82;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM_SRGB: c_int = 83;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM_SRGB: c_int = 84;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM_SRGB: c_int = 85;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM_SRGB: c_int = 86;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM_SRGB: c_int = 87;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM_SRGB: c_int = 88;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM_SRGB: c_int = 89;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM_SRGB: c_int = 90;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_4x4_FLOAT: c_int = 91;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_5x4_FLOAT: c_int = 92;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_5x5_FLOAT: c_int = 93;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_6x5_FLOAT: c_int = 94;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_6x6_FLOAT: c_int = 95;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x5_FLOAT: c_int = 96;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x6_FLOAT: c_int = 97;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_8x8_FLOAT: c_int = 98;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x5_FLOAT: c_int = 99;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x6_FLOAT: c_int = 100;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x8_FLOAT: c_int = 101;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_10x10_FLOAT: c_int = 102;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_12x10_FLOAT: c_int = 103;
pub const SDL_GPU_TEXTUREFORMAT_ASTC_12x12_FLOAT: c_int = 104;
pub const enum_SDL_GPUTextureFormat = c_uint;
pub const SDL_GPUTextureFormat = enum_SDL_GPUTextureFormat;
pub const SDL_GPUTextureUsageFlags = Uint32;
pub const SDL_GPU_TEXTURETYPE_2D: c_int = 0;
pub const SDL_GPU_TEXTURETYPE_2D_ARRAY: c_int = 1;
pub const SDL_GPU_TEXTURETYPE_3D: c_int = 2;
pub const SDL_GPU_TEXTURETYPE_CUBE: c_int = 3;
pub const SDL_GPU_TEXTURETYPE_CUBE_ARRAY: c_int = 4;
pub const enum_SDL_GPUTextureType = c_uint;
pub const SDL_GPUTextureType = enum_SDL_GPUTextureType;
pub const SDL_GPU_SAMPLECOUNT_1: c_int = 0;
pub const SDL_GPU_SAMPLECOUNT_2: c_int = 1;
pub const SDL_GPU_SAMPLECOUNT_4: c_int = 2;
pub const SDL_GPU_SAMPLECOUNT_8: c_int = 3;
pub const enum_SDL_GPUSampleCount = c_uint;
pub const SDL_GPUSampleCount = enum_SDL_GPUSampleCount;
pub const SDL_GPU_CUBEMAPFACE_POSITIVEX: c_int = 0;
pub const SDL_GPU_CUBEMAPFACE_NEGATIVEX: c_int = 1;
pub const SDL_GPU_CUBEMAPFACE_POSITIVEY: c_int = 2;
pub const SDL_GPU_CUBEMAPFACE_NEGATIVEY: c_int = 3;
pub const SDL_GPU_CUBEMAPFACE_POSITIVEZ: c_int = 4;
pub const SDL_GPU_CUBEMAPFACE_NEGATIVEZ: c_int = 5;
pub const enum_SDL_GPUCubeMapFace = c_uint;
pub const SDL_GPUCubeMapFace = enum_SDL_GPUCubeMapFace;
pub const SDL_GPUBufferUsageFlags = Uint32;
pub const SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD: c_int = 0;
pub const SDL_GPU_TRANSFERBUFFERUSAGE_DOWNLOAD: c_int = 1;
pub const enum_SDL_GPUTransferBufferUsage = c_uint;
pub const SDL_GPUTransferBufferUsage = enum_SDL_GPUTransferBufferUsage;
pub const SDL_GPU_SHADERSTAGE_VERTEX: c_int = 0;
pub const SDL_GPU_SHADERSTAGE_FRAGMENT: c_int = 1;
pub const enum_SDL_GPUShaderStage = c_uint;
pub const SDL_GPUShaderStage = enum_SDL_GPUShaderStage;
pub const SDL_GPUShaderFormat = Uint32;
pub const SDL_GPU_VERTEXELEMENTFORMAT_INVALID: c_int = 0;
pub const SDL_GPU_VERTEXELEMENTFORMAT_INT: c_int = 1;
pub const SDL_GPU_VERTEXELEMENTFORMAT_INT2: c_int = 2;
pub const SDL_GPU_VERTEXELEMENTFORMAT_INT3: c_int = 3;
pub const SDL_GPU_VERTEXELEMENTFORMAT_INT4: c_int = 4;
pub const SDL_GPU_VERTEXELEMENTFORMAT_UINT: c_int = 5;
pub const SDL_GPU_VERTEXELEMENTFORMAT_UINT2: c_int = 6;
pub const SDL_GPU_VERTEXELEMENTFORMAT_UINT3: c_int = 7;
pub const SDL_GPU_VERTEXELEMENTFORMAT_UINT4: c_int = 8;
pub const SDL_GPU_VERTEXELEMENTFORMAT_FLOAT: c_int = 9;
pub const SDL_GPU_VERTEXELEMENTFORMAT_FLOAT2: c_int = 10;
pub const SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3: c_int = 11;
pub const SDL_GPU_VERTEXELEMENTFORMAT_FLOAT4: c_int = 12;
pub const SDL_GPU_VERTEXELEMENTFORMAT_BYTE2: c_int = 13;
pub const SDL_GPU_VERTEXELEMENTFORMAT_BYTE4: c_int = 14;
pub const SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2: c_int = 15;
pub const SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4: c_int = 16;
pub const SDL_GPU_VERTEXELEMENTFORMAT_BYTE2_NORM: c_int = 17;
pub const SDL_GPU_VERTEXELEMENTFORMAT_BYTE4_NORM: c_int = 18;
pub const SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM: c_int = 19;
pub const SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM: c_int = 20;
pub const SDL_GPU_VERTEXELEMENTFORMAT_SHORT2: c_int = 21;
pub const SDL_GPU_VERTEXELEMENTFORMAT_SHORT4: c_int = 22;
pub const SDL_GPU_VERTEXELEMENTFORMAT_USHORT2: c_int = 23;
pub const SDL_GPU_VERTEXELEMENTFORMAT_USHORT4: c_int = 24;
pub const SDL_GPU_VERTEXELEMENTFORMAT_SHORT2_NORM: c_int = 25;
pub const SDL_GPU_VERTEXELEMENTFORMAT_SHORT4_NORM: c_int = 26;
pub const SDL_GPU_VERTEXELEMENTFORMAT_USHORT2_NORM: c_int = 27;
pub const SDL_GPU_VERTEXELEMENTFORMAT_USHORT4_NORM: c_int = 28;
pub const SDL_GPU_VERTEXELEMENTFORMAT_HALF2: c_int = 29;
pub const SDL_GPU_VERTEXELEMENTFORMAT_HALF4: c_int = 30;
pub const enum_SDL_GPUVertexElementFormat = c_uint;
pub const SDL_GPUVertexElementFormat = enum_SDL_GPUVertexElementFormat;
pub const SDL_GPU_VERTEXINPUTRATE_VERTEX: c_int = 0;
pub const SDL_GPU_VERTEXINPUTRATE_INSTANCE: c_int = 1;
pub const enum_SDL_GPUVertexInputRate = c_uint;
pub const SDL_GPUVertexInputRate = enum_SDL_GPUVertexInputRate;
pub const SDL_GPU_FILLMODE_FILL: c_int = 0;
pub const SDL_GPU_FILLMODE_LINE: c_int = 1;
pub const enum_SDL_GPUFillMode = c_uint;
pub const SDL_GPUFillMode = enum_SDL_GPUFillMode;
pub const SDL_GPU_CULLMODE_NONE: c_int = 0;
pub const SDL_GPU_CULLMODE_FRONT: c_int = 1;
pub const SDL_GPU_CULLMODE_BACK: c_int = 2;
pub const enum_SDL_GPUCullMode = c_uint;
pub const SDL_GPUCullMode = enum_SDL_GPUCullMode;
pub const SDL_GPU_FRONTFACE_COUNTER_CLOCKWISE: c_int = 0;
pub const SDL_GPU_FRONTFACE_CLOCKWISE: c_int = 1;
pub const enum_SDL_GPUFrontFace = c_uint;
pub const SDL_GPUFrontFace = enum_SDL_GPUFrontFace;
pub const SDL_GPU_COMPAREOP_INVALID: c_int = 0;
pub const SDL_GPU_COMPAREOP_NEVER: c_int = 1;
pub const SDL_GPU_COMPAREOP_LESS: c_int = 2;
pub const SDL_GPU_COMPAREOP_EQUAL: c_int = 3;
pub const SDL_GPU_COMPAREOP_LESS_OR_EQUAL: c_int = 4;
pub const SDL_GPU_COMPAREOP_GREATER: c_int = 5;
pub const SDL_GPU_COMPAREOP_NOT_EQUAL: c_int = 6;
pub const SDL_GPU_COMPAREOP_GREATER_OR_EQUAL: c_int = 7;
pub const SDL_GPU_COMPAREOP_ALWAYS: c_int = 8;
pub const enum_SDL_GPUCompareOp = c_uint;
pub const SDL_GPUCompareOp = enum_SDL_GPUCompareOp;
pub const SDL_GPU_STENCILOP_INVALID: c_int = 0;
pub const SDL_GPU_STENCILOP_KEEP: c_int = 1;
pub const SDL_GPU_STENCILOP_ZERO: c_int = 2;
pub const SDL_GPU_STENCILOP_REPLACE: c_int = 3;
pub const SDL_GPU_STENCILOP_INCREMENT_AND_CLAMP: c_int = 4;
pub const SDL_GPU_STENCILOP_DECREMENT_AND_CLAMP: c_int = 5;
pub const SDL_GPU_STENCILOP_INVERT: c_int = 6;
pub const SDL_GPU_STENCILOP_INCREMENT_AND_WRAP: c_int = 7;
pub const SDL_GPU_STENCILOP_DECREMENT_AND_WRAP: c_int = 8;
pub const enum_SDL_GPUStencilOp = c_uint;
pub const SDL_GPUStencilOp = enum_SDL_GPUStencilOp;
pub const SDL_GPU_BLENDOP_INVALID: c_int = 0;
pub const SDL_GPU_BLENDOP_ADD: c_int = 1;
pub const SDL_GPU_BLENDOP_SUBTRACT: c_int = 2;
pub const SDL_GPU_BLENDOP_REVERSE_SUBTRACT: c_int = 3;
pub const SDL_GPU_BLENDOP_MIN: c_int = 4;
pub const SDL_GPU_BLENDOP_MAX: c_int = 5;
pub const enum_SDL_GPUBlendOp = c_uint;
pub const SDL_GPUBlendOp = enum_SDL_GPUBlendOp;
pub const SDL_GPU_BLENDFACTOR_INVALID: c_int = 0;
pub const SDL_GPU_BLENDFACTOR_ZERO: c_int = 1;
pub const SDL_GPU_BLENDFACTOR_ONE: c_int = 2;
pub const SDL_GPU_BLENDFACTOR_SRC_COLOR: c_int = 3;
pub const SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR: c_int = 4;
pub const SDL_GPU_BLENDFACTOR_DST_COLOR: c_int = 5;
pub const SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR: c_int = 6;
pub const SDL_GPU_BLENDFACTOR_SRC_ALPHA: c_int = 7;
pub const SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA: c_int = 8;
pub const SDL_GPU_BLENDFACTOR_DST_ALPHA: c_int = 9;
pub const SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA: c_int = 10;
pub const SDL_GPU_BLENDFACTOR_CONSTANT_COLOR: c_int = 11;
pub const SDL_GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR: c_int = 12;
pub const SDL_GPU_BLENDFACTOR_SRC_ALPHA_SATURATE: c_int = 13;
pub const enum_SDL_GPUBlendFactor = c_uint;
pub const SDL_GPUBlendFactor = enum_SDL_GPUBlendFactor;
pub const SDL_GPUColorComponentFlags = Uint8;
pub const SDL_GPU_FILTER_NEAREST: c_int = 0;
pub const SDL_GPU_FILTER_LINEAR: c_int = 1;
pub const enum_SDL_GPUFilter = c_uint;
pub const SDL_GPUFilter = enum_SDL_GPUFilter;
pub const SDL_GPU_SAMPLERMIPMAPMODE_NEAREST: c_int = 0;
pub const SDL_GPU_SAMPLERMIPMAPMODE_LINEAR: c_int = 1;
pub const enum_SDL_GPUSamplerMipmapMode = c_uint;
pub const SDL_GPUSamplerMipmapMode = enum_SDL_GPUSamplerMipmapMode;
pub const SDL_GPU_SAMPLERADDRESSMODE_REPEAT: c_int = 0;
pub const SDL_GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT: c_int = 1;
pub const SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE: c_int = 2;
pub const enum_SDL_GPUSamplerAddressMode = c_uint;
pub const SDL_GPUSamplerAddressMode = enum_SDL_GPUSamplerAddressMode;
pub const SDL_GPU_PRESENTMODE_VSYNC: c_int = 0;
pub const SDL_GPU_PRESENTMODE_IMMEDIATE: c_int = 1;
pub const SDL_GPU_PRESENTMODE_MAILBOX: c_int = 2;
pub const enum_SDL_GPUPresentMode = c_uint;
pub const SDL_GPUPresentMode = enum_SDL_GPUPresentMode;
pub const SDL_GPU_SWAPCHAINCOMPOSITION_SDR: c_int = 0;
pub const SDL_GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR: c_int = 1;
pub const SDL_GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR: c_int = 2;
pub const SDL_GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084: c_int = 3;
pub const enum_SDL_GPUSwapchainComposition = c_uint;
pub const SDL_GPUSwapchainComposition = enum_SDL_GPUSwapchainComposition;
pub const struct_SDL_GPUViewport = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
    h: f32 = @import("std").mem.zeroes(f32),
    min_depth: f32 = @import("std").mem.zeroes(f32),
    max_depth: f32 = @import("std").mem.zeroes(f32),
};
pub const SDL_GPUViewport = struct_SDL_GPUViewport;
pub const struct_SDL_GPUTextureTransferInfo = extern struct {
    transfer_buffer: ?*SDL_GPUTransferBuffer = @import("std").mem.zeroes(?*SDL_GPUTransferBuffer),
    offset: Uint32 = @import("std").mem.zeroes(Uint32),
    pixels_per_row: Uint32 = @import("std").mem.zeroes(Uint32),
    rows_per_layer: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUTextureTransferInfo = struct_SDL_GPUTextureTransferInfo;
pub const struct_SDL_GPUTransferBufferLocation = extern struct {
    transfer_buffer: ?*SDL_GPUTransferBuffer = @import("std").mem.zeroes(?*SDL_GPUTransferBuffer),
    offset: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUTransferBufferLocation = struct_SDL_GPUTransferBufferLocation;
pub const struct_SDL_GPUTextureLocation = extern struct {
    texture: ?*SDL_GPUTexture = @import("std").mem.zeroes(?*SDL_GPUTexture),
    mip_level: Uint32 = @import("std").mem.zeroes(Uint32),
    layer: Uint32 = @import("std").mem.zeroes(Uint32),
    x: Uint32 = @import("std").mem.zeroes(Uint32),
    y: Uint32 = @import("std").mem.zeroes(Uint32),
    z: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUTextureLocation = struct_SDL_GPUTextureLocation;
pub const struct_SDL_GPUTextureRegion = extern struct {
    texture: ?*SDL_GPUTexture = @import("std").mem.zeroes(?*SDL_GPUTexture),
    mip_level: Uint32 = @import("std").mem.zeroes(Uint32),
    layer: Uint32 = @import("std").mem.zeroes(Uint32),
    x: Uint32 = @import("std").mem.zeroes(Uint32),
    y: Uint32 = @import("std").mem.zeroes(Uint32),
    z: Uint32 = @import("std").mem.zeroes(Uint32),
    w: Uint32 = @import("std").mem.zeroes(Uint32),
    h: Uint32 = @import("std").mem.zeroes(Uint32),
    d: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUTextureRegion = struct_SDL_GPUTextureRegion;
pub const struct_SDL_GPUBlitRegion = extern struct {
    texture: ?*SDL_GPUTexture = @import("std").mem.zeroes(?*SDL_GPUTexture),
    mip_level: Uint32 = @import("std").mem.zeroes(Uint32),
    layer_or_depth_plane: Uint32 = @import("std").mem.zeroes(Uint32),
    x: Uint32 = @import("std").mem.zeroes(Uint32),
    y: Uint32 = @import("std").mem.zeroes(Uint32),
    w: Uint32 = @import("std").mem.zeroes(Uint32),
    h: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUBlitRegion = struct_SDL_GPUBlitRegion;
pub const struct_SDL_GPUBufferLocation = extern struct {
    buffer: ?*SDL_GPUBuffer = @import("std").mem.zeroes(?*SDL_GPUBuffer),
    offset: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUBufferLocation = struct_SDL_GPUBufferLocation;
pub const struct_SDL_GPUBufferRegion = extern struct {
    buffer: ?*SDL_GPUBuffer = @import("std").mem.zeroes(?*SDL_GPUBuffer),
    offset: Uint32 = @import("std").mem.zeroes(Uint32),
    size: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUBufferRegion = struct_SDL_GPUBufferRegion;
pub const struct_SDL_GPUIndirectDrawCommand = extern struct {
    num_vertices: Uint32 = @import("std").mem.zeroes(Uint32),
    num_instances: Uint32 = @import("std").mem.zeroes(Uint32),
    first_vertex: Uint32 = @import("std").mem.zeroes(Uint32),
    first_instance: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUIndirectDrawCommand = struct_SDL_GPUIndirectDrawCommand;
pub const struct_SDL_GPUIndexedIndirectDrawCommand = extern struct {
    num_indices: Uint32 = @import("std").mem.zeroes(Uint32),
    num_instances: Uint32 = @import("std").mem.zeroes(Uint32),
    first_index: Uint32 = @import("std").mem.zeroes(Uint32),
    vertex_offset: Sint32 = @import("std").mem.zeroes(Sint32),
    first_instance: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUIndexedIndirectDrawCommand = struct_SDL_GPUIndexedIndirectDrawCommand;
pub const struct_SDL_GPUIndirectDispatchCommand = extern struct {
    groupcount_x: Uint32 = @import("std").mem.zeroes(Uint32),
    groupcount_y: Uint32 = @import("std").mem.zeroes(Uint32),
    groupcount_z: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUIndirectDispatchCommand = struct_SDL_GPUIndirectDispatchCommand;
pub const struct_SDL_GPUSamplerCreateInfo = extern struct {
    min_filter: SDL_GPUFilter = @import("std").mem.zeroes(SDL_GPUFilter),
    mag_filter: SDL_GPUFilter = @import("std").mem.zeroes(SDL_GPUFilter),
    mipmap_mode: SDL_GPUSamplerMipmapMode = @import("std").mem.zeroes(SDL_GPUSamplerMipmapMode),
    address_mode_u: SDL_GPUSamplerAddressMode = @import("std").mem.zeroes(SDL_GPUSamplerAddressMode),
    address_mode_v: SDL_GPUSamplerAddressMode = @import("std").mem.zeroes(SDL_GPUSamplerAddressMode),
    address_mode_w: SDL_GPUSamplerAddressMode = @import("std").mem.zeroes(SDL_GPUSamplerAddressMode),
    mip_lod_bias: f32 = @import("std").mem.zeroes(f32),
    max_anisotropy: f32 = @import("std").mem.zeroes(f32),
    compare_op: SDL_GPUCompareOp = @import("std").mem.zeroes(SDL_GPUCompareOp),
    min_lod: f32 = @import("std").mem.zeroes(f32),
    max_lod: f32 = @import("std").mem.zeroes(f32),
    enable_anisotropy: bool = @import("std").mem.zeroes(bool),
    enable_compare: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
    props: SDL_PropertiesID = @import("std").mem.zeroes(SDL_PropertiesID),
};
pub const SDL_GPUSamplerCreateInfo = struct_SDL_GPUSamplerCreateInfo;
pub const struct_SDL_GPUVertexBufferDescription = extern struct {
    slot: Uint32 = @import("std").mem.zeroes(Uint32),
    pitch: Uint32 = @import("std").mem.zeroes(Uint32),
    input_rate: SDL_GPUVertexInputRate = @import("std").mem.zeroes(SDL_GPUVertexInputRate),
    instance_step_rate: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUVertexBufferDescription = struct_SDL_GPUVertexBufferDescription;
pub const struct_SDL_GPUVertexAttribute = extern struct {
    location: Uint32 = @import("std").mem.zeroes(Uint32),
    buffer_slot: Uint32 = @import("std").mem.zeroes(Uint32),
    format: SDL_GPUVertexElementFormat = @import("std").mem.zeroes(SDL_GPUVertexElementFormat),
    offset: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUVertexAttribute = struct_SDL_GPUVertexAttribute;
pub const struct_SDL_GPUVertexInputState = extern struct {
    vertex_buffer_descriptions: [*c]const SDL_GPUVertexBufferDescription = @import("std").mem.zeroes([*c]const SDL_GPUVertexBufferDescription),
    num_vertex_buffers: Uint32 = @import("std").mem.zeroes(Uint32),
    vertex_attributes: [*c]const SDL_GPUVertexAttribute = @import("std").mem.zeroes([*c]const SDL_GPUVertexAttribute),
    num_vertex_attributes: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUVertexInputState = struct_SDL_GPUVertexInputState;
pub const struct_SDL_GPUStencilOpState = extern struct {
    fail_op: SDL_GPUStencilOp = @import("std").mem.zeroes(SDL_GPUStencilOp),
    pass_op: SDL_GPUStencilOp = @import("std").mem.zeroes(SDL_GPUStencilOp),
    depth_fail_op: SDL_GPUStencilOp = @import("std").mem.zeroes(SDL_GPUStencilOp),
    compare_op: SDL_GPUCompareOp = @import("std").mem.zeroes(SDL_GPUCompareOp),
};
pub const SDL_GPUStencilOpState = struct_SDL_GPUStencilOpState;
pub const struct_SDL_GPUColorTargetBlendState = extern struct {
    src_color_blendfactor: SDL_GPUBlendFactor = @import("std").mem.zeroes(SDL_GPUBlendFactor),
    dst_color_blendfactor: SDL_GPUBlendFactor = @import("std").mem.zeroes(SDL_GPUBlendFactor),
    color_blend_op: SDL_GPUBlendOp = @import("std").mem.zeroes(SDL_GPUBlendOp),
    src_alpha_blendfactor: SDL_GPUBlendFactor = @import("std").mem.zeroes(SDL_GPUBlendFactor),
    dst_alpha_blendfactor: SDL_GPUBlendFactor = @import("std").mem.zeroes(SDL_GPUBlendFactor),
    alpha_blend_op: SDL_GPUBlendOp = @import("std").mem.zeroes(SDL_GPUBlendOp),
    color_write_mask: SDL_GPUColorComponentFlags = @import("std").mem.zeroes(SDL_GPUColorComponentFlags),
    enable_blend: bool = @import("std").mem.zeroes(bool),
    enable_color_write_mask: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUColorTargetBlendState = struct_SDL_GPUColorTargetBlendState;
pub const struct_SDL_GPUShaderCreateInfo = extern struct {
    code_size: usize = @import("std").mem.zeroes(usize),
    code: [*c]const Uint8 = @import("std").mem.zeroes([*c]const Uint8),
    entrypoint: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    format: SDL_GPUShaderFormat = @import("std").mem.zeroes(SDL_GPUShaderFormat),
    stage: SDL_GPUShaderStage = @import("std").mem.zeroes(SDL_GPUShaderStage),
    num_samplers: Uint32 = @import("std").mem.zeroes(Uint32),
    num_storage_textures: Uint32 = @import("std").mem.zeroes(Uint32),
    num_storage_buffers: Uint32 = @import("std").mem.zeroes(Uint32),
    num_uniform_buffers: Uint32 = @import("std").mem.zeroes(Uint32),
    props: SDL_PropertiesID = @import("std").mem.zeroes(SDL_PropertiesID),
};
pub const SDL_GPUShaderCreateInfo = struct_SDL_GPUShaderCreateInfo;
pub const struct_SDL_GPUTextureCreateInfo = extern struct {
    type: SDL_GPUTextureType = @import("std").mem.zeroes(SDL_GPUTextureType),
    format: SDL_GPUTextureFormat = @import("std").mem.zeroes(SDL_GPUTextureFormat),
    usage: SDL_GPUTextureUsageFlags = @import("std").mem.zeroes(SDL_GPUTextureUsageFlags),
    width: Uint32 = @import("std").mem.zeroes(Uint32),
    height: Uint32 = @import("std").mem.zeroes(Uint32),
    layer_count_or_depth: Uint32 = @import("std").mem.zeroes(Uint32),
    num_levels: Uint32 = @import("std").mem.zeroes(Uint32),
    sample_count: SDL_GPUSampleCount = @import("std").mem.zeroes(SDL_GPUSampleCount),
    props: SDL_PropertiesID = @import("std").mem.zeroes(SDL_PropertiesID),
};
pub const SDL_GPUTextureCreateInfo = struct_SDL_GPUTextureCreateInfo;
pub const struct_SDL_GPUBufferCreateInfo = extern struct {
    usage: SDL_GPUBufferUsageFlags = @import("std").mem.zeroes(SDL_GPUBufferUsageFlags),
    size: Uint32 = @import("std").mem.zeroes(Uint32),
    props: SDL_PropertiesID = @import("std").mem.zeroes(SDL_PropertiesID),
};
pub const SDL_GPUBufferCreateInfo = struct_SDL_GPUBufferCreateInfo;
pub const struct_SDL_GPUTransferBufferCreateInfo = extern struct {
    usage: SDL_GPUTransferBufferUsage = @import("std").mem.zeroes(SDL_GPUTransferBufferUsage),
    size: Uint32 = @import("std").mem.zeroes(Uint32),
    props: SDL_PropertiesID = @import("std").mem.zeroes(SDL_PropertiesID),
};
pub const SDL_GPUTransferBufferCreateInfo = struct_SDL_GPUTransferBufferCreateInfo;
pub const struct_SDL_GPURasterizerState = extern struct {
    fill_mode: SDL_GPUFillMode = @import("std").mem.zeroes(SDL_GPUFillMode),
    cull_mode: SDL_GPUCullMode = @import("std").mem.zeroes(SDL_GPUCullMode),
    front_face: SDL_GPUFrontFace = @import("std").mem.zeroes(SDL_GPUFrontFace),
    depth_bias_constant_factor: f32 = @import("std").mem.zeroes(f32),
    depth_bias_clamp: f32 = @import("std").mem.zeroes(f32),
    depth_bias_slope_factor: f32 = @import("std").mem.zeroes(f32),
    enable_depth_bias: bool = @import("std").mem.zeroes(bool),
    enable_depth_clip: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPURasterizerState = struct_SDL_GPURasterizerState;
pub const struct_SDL_GPUMultisampleState = extern struct {
    sample_count: SDL_GPUSampleCount = @import("std").mem.zeroes(SDL_GPUSampleCount),
    sample_mask: Uint32 = @import("std").mem.zeroes(Uint32),
    enable_mask: bool = @import("std").mem.zeroes(bool),
    enable_alpha_to_coverage: bool = @import("std").mem.zeroes(bool),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
    padding3: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUMultisampleState = struct_SDL_GPUMultisampleState;
pub const struct_SDL_GPUDepthStencilState = extern struct {
    compare_op: SDL_GPUCompareOp = @import("std").mem.zeroes(SDL_GPUCompareOp),
    back_stencil_state: SDL_GPUStencilOpState = @import("std").mem.zeroes(SDL_GPUStencilOpState),
    front_stencil_state: SDL_GPUStencilOpState = @import("std").mem.zeroes(SDL_GPUStencilOpState),
    compare_mask: Uint8 = @import("std").mem.zeroes(Uint8),
    write_mask: Uint8 = @import("std").mem.zeroes(Uint8),
    enable_depth_test: bool = @import("std").mem.zeroes(bool),
    enable_depth_write: bool = @import("std").mem.zeroes(bool),
    enable_stencil_test: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
    padding3: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUDepthStencilState = struct_SDL_GPUDepthStencilState;
pub const struct_SDL_GPUColorTargetDescription = extern struct {
    format: SDL_GPUTextureFormat = @import("std").mem.zeroes(SDL_GPUTextureFormat),
    blend_state: SDL_GPUColorTargetBlendState = @import("std").mem.zeroes(SDL_GPUColorTargetBlendState),
};
pub const SDL_GPUColorTargetDescription = struct_SDL_GPUColorTargetDescription;
pub const struct_SDL_GPUGraphicsPipelineTargetInfo = extern struct {
    color_target_descriptions: [*c]const SDL_GPUColorTargetDescription = @import("std").mem.zeroes([*c]const SDL_GPUColorTargetDescription),
    num_color_targets: Uint32 = @import("std").mem.zeroes(Uint32),
    depth_stencil_format: SDL_GPUTextureFormat = @import("std").mem.zeroes(SDL_GPUTextureFormat),
    has_depth_stencil_target: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
    padding3: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUGraphicsPipelineTargetInfo = struct_SDL_GPUGraphicsPipelineTargetInfo;
pub const struct_SDL_GPUGraphicsPipelineCreateInfo = extern struct {
    vertex_shader: ?*SDL_GPUShader = @import("std").mem.zeroes(?*SDL_GPUShader),
    fragment_shader: ?*SDL_GPUShader = @import("std").mem.zeroes(?*SDL_GPUShader),
    vertex_input_state: SDL_GPUVertexInputState = @import("std").mem.zeroes(SDL_GPUVertexInputState),
    primitive_type: SDL_GPUPrimitiveType = @import("std").mem.zeroes(SDL_GPUPrimitiveType),
    rasterizer_state: SDL_GPURasterizerState = @import("std").mem.zeroes(SDL_GPURasterizerState),
    multisample_state: SDL_GPUMultisampleState = @import("std").mem.zeroes(SDL_GPUMultisampleState),
    depth_stencil_state: SDL_GPUDepthStencilState = @import("std").mem.zeroes(SDL_GPUDepthStencilState),
    target_info: SDL_GPUGraphicsPipelineTargetInfo = @import("std").mem.zeroes(SDL_GPUGraphicsPipelineTargetInfo),
    props: SDL_PropertiesID = @import("std").mem.zeroes(SDL_PropertiesID),
};
pub const SDL_GPUGraphicsPipelineCreateInfo = struct_SDL_GPUGraphicsPipelineCreateInfo;
pub const struct_SDL_GPUComputePipelineCreateInfo = extern struct {
    code_size: usize = @import("std").mem.zeroes(usize),
    code: [*c]const Uint8 = @import("std").mem.zeroes([*c]const Uint8),
    entrypoint: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    format: SDL_GPUShaderFormat = @import("std").mem.zeroes(SDL_GPUShaderFormat),
    num_samplers: Uint32 = @import("std").mem.zeroes(Uint32),
    num_readonly_storage_textures: Uint32 = @import("std").mem.zeroes(Uint32),
    num_readonly_storage_buffers: Uint32 = @import("std").mem.zeroes(Uint32),
    num_readwrite_storage_textures: Uint32 = @import("std").mem.zeroes(Uint32),
    num_readwrite_storage_buffers: Uint32 = @import("std").mem.zeroes(Uint32),
    num_uniform_buffers: Uint32 = @import("std").mem.zeroes(Uint32),
    threadcount_x: Uint32 = @import("std").mem.zeroes(Uint32),
    threadcount_y: Uint32 = @import("std").mem.zeroes(Uint32),
    threadcount_z: Uint32 = @import("std").mem.zeroes(Uint32),
    props: SDL_PropertiesID = @import("std").mem.zeroes(SDL_PropertiesID),
};
pub const SDL_GPUComputePipelineCreateInfo = struct_SDL_GPUComputePipelineCreateInfo;
pub const struct_SDL_GPUColorTargetInfo = extern struct {
    texture: ?*SDL_GPUTexture = @import("std").mem.zeroes(?*SDL_GPUTexture),
    mip_level: Uint32 = @import("std").mem.zeroes(Uint32),
    layer_or_depth_plane: Uint32 = @import("std").mem.zeroes(Uint32),
    clear_color: SDL_FColor = @import("std").mem.zeroes(SDL_FColor),
    load_op: SDL_GPULoadOp = @import("std").mem.zeroes(SDL_GPULoadOp),
    store_op: SDL_GPUStoreOp = @import("std").mem.zeroes(SDL_GPUStoreOp),
    resolve_texture: ?*SDL_GPUTexture = @import("std").mem.zeroes(?*SDL_GPUTexture),
    resolve_mip_level: Uint32 = @import("std").mem.zeroes(Uint32),
    resolve_layer: Uint32 = @import("std").mem.zeroes(Uint32),
    cycle: bool = @import("std").mem.zeroes(bool),
    cycle_resolve_texture: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUColorTargetInfo = struct_SDL_GPUColorTargetInfo;
pub const struct_SDL_GPUDepthStencilTargetInfo = extern struct {
    texture: ?*SDL_GPUTexture = @import("std").mem.zeroes(?*SDL_GPUTexture),
    clear_depth: f32 = @import("std").mem.zeroes(f32),
    load_op: SDL_GPULoadOp = @import("std").mem.zeroes(SDL_GPULoadOp),
    store_op: SDL_GPUStoreOp = @import("std").mem.zeroes(SDL_GPUStoreOp),
    stencil_load_op: SDL_GPULoadOp = @import("std").mem.zeroes(SDL_GPULoadOp),
    stencil_store_op: SDL_GPUStoreOp = @import("std").mem.zeroes(SDL_GPUStoreOp),
    cycle: bool = @import("std").mem.zeroes(bool),
    clear_stencil: Uint8 = @import("std").mem.zeroes(Uint8),
    mip_level: Uint8 = @import("std").mem.zeroes(Uint8),
    layer: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUDepthStencilTargetInfo = struct_SDL_GPUDepthStencilTargetInfo;
pub const struct_SDL_GPUBlitInfo = extern struct {
    source: SDL_GPUBlitRegion = @import("std").mem.zeroes(SDL_GPUBlitRegion),
    destination: SDL_GPUBlitRegion = @import("std").mem.zeroes(SDL_GPUBlitRegion),
    load_op: SDL_GPULoadOp = @import("std").mem.zeroes(SDL_GPULoadOp),
    clear_color: SDL_FColor = @import("std").mem.zeroes(SDL_FColor),
    flip_mode: SDL_FlipMode = @import("std").mem.zeroes(SDL_FlipMode),
    filter: SDL_GPUFilter = @import("std").mem.zeroes(SDL_GPUFilter),
    cycle: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
    padding3: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUBlitInfo = struct_SDL_GPUBlitInfo;
pub const struct_SDL_GPUBufferBinding = extern struct {
    buffer: ?*SDL_GPUBuffer = @import("std").mem.zeroes(?*SDL_GPUBuffer),
    offset: Uint32 = @import("std").mem.zeroes(Uint32),
};
pub const SDL_GPUBufferBinding = struct_SDL_GPUBufferBinding;
pub const struct_SDL_GPUTextureSamplerBinding = extern struct {
    texture: ?*SDL_GPUTexture = @import("std").mem.zeroes(?*SDL_GPUTexture),
    sampler: ?*SDL_GPUSampler = @import("std").mem.zeroes(?*SDL_GPUSampler),
};
pub const SDL_GPUTextureSamplerBinding = struct_SDL_GPUTextureSamplerBinding;
pub const struct_SDL_GPUStorageBufferReadWriteBinding = extern struct {
    buffer: ?*SDL_GPUBuffer = @import("std").mem.zeroes(?*SDL_GPUBuffer),
    cycle: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
    padding3: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUStorageBufferReadWriteBinding = struct_SDL_GPUStorageBufferReadWriteBinding;
pub const struct_SDL_GPUStorageTextureReadWriteBinding = extern struct {
    texture: ?*SDL_GPUTexture = @import("std").mem.zeroes(?*SDL_GPUTexture),
    mip_level: Uint32 = @import("std").mem.zeroes(Uint32),
    layer: Uint32 = @import("std").mem.zeroes(Uint32),
    cycle: bool = @import("std").mem.zeroes(bool),
    padding1: Uint8 = @import("std").mem.zeroes(Uint8),
    padding2: Uint8 = @import("std").mem.zeroes(Uint8),
    padding3: Uint8 = @import("std").mem.zeroes(Uint8),
};
pub const SDL_GPUStorageTextureReadWriteBinding = struct_SDL_GPUStorageTextureReadWriteBinding;
pub extern fn SDL_GPUSupportsShaderFormats(format_flags: SDL_GPUShaderFormat, name: [*c]const u8) bool;
pub extern fn SDL_GPUSupportsProperties(props: SDL_PropertiesID) bool;
pub extern fn SDL_CreateGPUDevice(format_flags: SDL_GPUShaderFormat, debug_mode: bool, name: [*c]const u8) ?*SDL_GPUDevice;
pub extern fn SDL_CreateGPUDeviceWithProperties(props: SDL_PropertiesID) ?*SDL_GPUDevice;
pub const struct_SDL_GPUVulkanOptions = extern struct {
    vulkan_api_version: Uint32 = @import("std").mem.zeroes(Uint32),
    feature_list: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    vulkan_10_physical_device_features: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    device_extension_count: Uint32 = @import("std").mem.zeroes(Uint32),
    device_extension_names: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    instance_extension_count: Uint32 = @import("std").mem.zeroes(Uint32),
    instance_extension_names: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
};
pub const SDL_GPUVulkanOptions = struct_SDL_GPUVulkanOptions;
pub extern fn SDL_DestroyGPUDevice(device: ?*SDL_GPUDevice) void;
pub extern fn SDL_GetNumGPUDrivers() c_int;
pub extern fn SDL_GetGPUDriver(index: c_int) [*c]const u8;
pub extern fn SDL_GetGPUDeviceDriver(device: ?*SDL_GPUDevice) [*c]const u8;
pub extern fn SDL_GetGPUShaderFormats(device: ?*SDL_GPUDevice) SDL_GPUShaderFormat;
pub extern fn SDL_GetGPUDeviceProperties(device: ?*SDL_GPUDevice) SDL_PropertiesID;
pub extern fn SDL_CreateGPUComputePipeline(device: ?*SDL_GPUDevice, createinfo: [*c]const SDL_GPUComputePipelineCreateInfo) ?*SDL_GPUComputePipeline;
pub extern fn SDL_CreateGPUGraphicsPipeline(device: ?*SDL_GPUDevice, createinfo: [*c]const SDL_GPUGraphicsPipelineCreateInfo) ?*SDL_GPUGraphicsPipeline;
pub extern fn SDL_CreateGPUSampler(device: ?*SDL_GPUDevice, createinfo: [*c]const SDL_GPUSamplerCreateInfo) ?*SDL_GPUSampler;
pub extern fn SDL_CreateGPUShader(device: ?*SDL_GPUDevice, createinfo: [*c]const SDL_GPUShaderCreateInfo) ?*SDL_GPUShader;
pub extern fn SDL_CreateGPUTexture(device: ?*SDL_GPUDevice, createinfo: [*c]const SDL_GPUTextureCreateInfo) ?*SDL_GPUTexture;
pub extern fn SDL_CreateGPUBuffer(device: ?*SDL_GPUDevice, createinfo: [*c]const SDL_GPUBufferCreateInfo) ?*SDL_GPUBuffer;
pub extern fn SDL_CreateGPUTransferBuffer(device: ?*SDL_GPUDevice, createinfo: [*c]const SDL_GPUTransferBufferCreateInfo) ?*SDL_GPUTransferBuffer;
pub extern fn SDL_SetGPUBufferName(device: ?*SDL_GPUDevice, buffer: ?*SDL_GPUBuffer, text: [*c]const u8) void;
pub extern fn SDL_SetGPUTextureName(device: ?*SDL_GPUDevice, texture: ?*SDL_GPUTexture, text: [*c]const u8) void;
pub extern fn SDL_InsertGPUDebugLabel(command_buffer: ?*SDL_GPUCommandBuffer, text: [*c]const u8) void;
pub extern fn SDL_PushGPUDebugGroup(command_buffer: ?*SDL_GPUCommandBuffer, name: [*c]const u8) void;
pub extern fn SDL_PopGPUDebugGroup(command_buffer: ?*SDL_GPUCommandBuffer) void;
pub extern fn SDL_ReleaseGPUTexture(device: ?*SDL_GPUDevice, texture: ?*SDL_GPUTexture) void;
pub extern fn SDL_ReleaseGPUSampler(device: ?*SDL_GPUDevice, sampler: ?*SDL_GPUSampler) void;
pub extern fn SDL_ReleaseGPUBuffer(device: ?*SDL_GPUDevice, buffer: ?*SDL_GPUBuffer) void;
pub extern fn SDL_ReleaseGPUTransferBuffer(device: ?*SDL_GPUDevice, transfer_buffer: ?*SDL_GPUTransferBuffer) void;
pub extern fn SDL_ReleaseGPUComputePipeline(device: ?*SDL_GPUDevice, compute_pipeline: ?*SDL_GPUComputePipeline) void;
pub extern fn SDL_ReleaseGPUShader(device: ?*SDL_GPUDevice, shader: ?*SDL_GPUShader) void;
pub extern fn SDL_ReleaseGPUGraphicsPipeline(device: ?*SDL_GPUDevice, graphics_pipeline: ?*SDL_GPUGraphicsPipeline) void;
pub extern fn SDL_AcquireGPUCommandBuffer(device: ?*SDL_GPUDevice) ?*SDL_GPUCommandBuffer;
pub extern fn SDL_PushGPUVertexUniformData(command_buffer: ?*SDL_GPUCommandBuffer, slot_index: Uint32, data: ?*const anyopaque, length: Uint32) void;
pub extern fn SDL_PushGPUFragmentUniformData(command_buffer: ?*SDL_GPUCommandBuffer, slot_index: Uint32, data: ?*const anyopaque, length: Uint32) void;
pub extern fn SDL_PushGPUComputeUniformData(command_buffer: ?*SDL_GPUCommandBuffer, slot_index: Uint32, data: ?*const anyopaque, length: Uint32) void;
pub extern fn SDL_BeginGPURenderPass(command_buffer: ?*SDL_GPUCommandBuffer, color_target_infos: [*c]const SDL_GPUColorTargetInfo, num_color_targets: Uint32, depth_stencil_target_info: [*c]const SDL_GPUDepthStencilTargetInfo) ?*SDL_GPURenderPass;
pub extern fn SDL_BindGPUGraphicsPipeline(render_pass: ?*SDL_GPURenderPass, graphics_pipeline: ?*SDL_GPUGraphicsPipeline) void;
pub extern fn SDL_SetGPUViewport(render_pass: ?*SDL_GPURenderPass, viewport: [*c]const SDL_GPUViewport) void;
pub extern fn SDL_SetGPUScissor(render_pass: ?*SDL_GPURenderPass, scissor: [*c]const SDL_Rect) void;
pub extern fn SDL_SetGPUBlendConstants(render_pass: ?*SDL_GPURenderPass, blend_constants: SDL_FColor) void;
pub extern fn SDL_SetGPUStencilReference(render_pass: ?*SDL_GPURenderPass, reference: Uint8) void;
pub extern fn SDL_BindGPUVertexBuffers(render_pass: ?*SDL_GPURenderPass, first_slot: Uint32, bindings: [*c]const SDL_GPUBufferBinding, num_bindings: Uint32) void;
pub extern fn SDL_BindGPUIndexBuffer(render_pass: ?*SDL_GPURenderPass, binding: [*c]const SDL_GPUBufferBinding, index_element_size: SDL_GPUIndexElementSize) void;
pub extern fn SDL_BindGPUVertexSamplers(render_pass: ?*SDL_GPURenderPass, first_slot: Uint32, texture_sampler_bindings: [*c]const SDL_GPUTextureSamplerBinding, num_bindings: Uint32) void;
pub extern fn SDL_BindGPUVertexStorageTextures(render_pass: ?*SDL_GPURenderPass, first_slot: Uint32, storage_textures: [*c]const ?*SDL_GPUTexture, num_bindings: Uint32) void;
pub extern fn SDL_BindGPUVertexStorageBuffers(render_pass: ?*SDL_GPURenderPass, first_slot: Uint32, storage_buffers: [*c]const ?*SDL_GPUBuffer, num_bindings: Uint32) void;
pub extern fn SDL_BindGPUFragmentSamplers(render_pass: ?*SDL_GPURenderPass, first_slot: Uint32, texture_sampler_bindings: [*c]const SDL_GPUTextureSamplerBinding, num_bindings: Uint32) void;
pub extern fn SDL_BindGPUFragmentStorageTextures(render_pass: ?*SDL_GPURenderPass, first_slot: Uint32, storage_textures: [*c]const ?*SDL_GPUTexture, num_bindings: Uint32) void;
pub extern fn SDL_BindGPUFragmentStorageBuffers(render_pass: ?*SDL_GPURenderPass, first_slot: Uint32, storage_buffers: [*c]const ?*SDL_GPUBuffer, num_bindings: Uint32) void;
pub extern fn SDL_DrawGPUIndexedPrimitives(render_pass: ?*SDL_GPURenderPass, num_indices: Uint32, num_instances: Uint32, first_index: Uint32, vertex_offset: Sint32, first_instance: Uint32) void;
pub extern fn SDL_DrawGPUPrimitives(render_pass: ?*SDL_GPURenderPass, num_vertices: Uint32, num_instances: Uint32, first_vertex: Uint32, first_instance: Uint32) void;
pub extern fn SDL_DrawGPUPrimitivesIndirect(render_pass: ?*SDL_GPURenderPass, buffer: ?*SDL_GPUBuffer, offset: Uint32, draw_count: Uint32) void;
pub extern fn SDL_DrawGPUIndexedPrimitivesIndirect(render_pass: ?*SDL_GPURenderPass, buffer: ?*SDL_GPUBuffer, offset: Uint32, draw_count: Uint32) void;
pub extern fn SDL_EndGPURenderPass(render_pass: ?*SDL_GPURenderPass) void;
pub extern fn SDL_BeginGPUComputePass(command_buffer: ?*SDL_GPUCommandBuffer, storage_texture_bindings: [*c]const SDL_GPUStorageTextureReadWriteBinding, num_storage_texture_bindings: Uint32, storage_buffer_bindings: [*c]const SDL_GPUStorageBufferReadWriteBinding, num_storage_buffer_bindings: Uint32) ?*SDL_GPUComputePass;
pub extern fn SDL_BindGPUComputePipeline(compute_pass: ?*SDL_GPUComputePass, compute_pipeline: ?*SDL_GPUComputePipeline) void;
pub extern fn SDL_BindGPUComputeSamplers(compute_pass: ?*SDL_GPUComputePass, first_slot: Uint32, texture_sampler_bindings: [*c]const SDL_GPUTextureSamplerBinding, num_bindings: Uint32) void;
pub extern fn SDL_BindGPUComputeStorageTextures(compute_pass: ?*SDL_GPUComputePass, first_slot: Uint32, storage_textures: [*c]const ?*SDL_GPUTexture, num_bindings: Uint32) void;
pub extern fn SDL_BindGPUComputeStorageBuffers(compute_pass: ?*SDL_GPUComputePass, first_slot: Uint32, storage_buffers: [*c]const ?*SDL_GPUBuffer, num_bindings: Uint32) void;
pub extern fn SDL_DispatchGPUCompute(compute_pass: ?*SDL_GPUComputePass, groupcount_x: Uint32, groupcount_y: Uint32, groupcount_z: Uint32) void;
pub extern fn SDL_DispatchGPUComputeIndirect(compute_pass: ?*SDL_GPUComputePass, buffer: ?*SDL_GPUBuffer, offset: Uint32) void;
pub extern fn SDL_EndGPUComputePass(compute_pass: ?*SDL_GPUComputePass) void;
pub extern fn SDL_MapGPUTransferBuffer(device: ?*SDL_GPUDevice, transfer_buffer: ?*SDL_GPUTransferBuffer, cycle: bool) ?*anyopaque;
pub extern fn SDL_UnmapGPUTransferBuffer(device: ?*SDL_GPUDevice, transfer_buffer: ?*SDL_GPUTransferBuffer) void;
pub extern fn SDL_BeginGPUCopyPass(command_buffer: ?*SDL_GPUCommandBuffer) ?*SDL_GPUCopyPass;
pub extern fn SDL_UploadToGPUTexture(copy_pass: ?*SDL_GPUCopyPass, source: [*c]const SDL_GPUTextureTransferInfo, destination: [*c]const SDL_GPUTextureRegion, cycle: bool) void;
pub extern fn SDL_UploadToGPUBuffer(copy_pass: ?*SDL_GPUCopyPass, source: [*c]const SDL_GPUTransferBufferLocation, destination: [*c]const SDL_GPUBufferRegion, cycle: bool) void;
pub extern fn SDL_CopyGPUTextureToTexture(copy_pass: ?*SDL_GPUCopyPass, source: [*c]const SDL_GPUTextureLocation, destination: [*c]const SDL_GPUTextureLocation, w: Uint32, h: Uint32, d: Uint32, cycle: bool) void;
pub extern fn SDL_CopyGPUBufferToBuffer(copy_pass: ?*SDL_GPUCopyPass, source: [*c]const SDL_GPUBufferLocation, destination: [*c]const SDL_GPUBufferLocation, size: Uint32, cycle: bool) void;
pub extern fn SDL_DownloadFromGPUTexture(copy_pass: ?*SDL_GPUCopyPass, source: [*c]const SDL_GPUTextureRegion, destination: [*c]const SDL_GPUTextureTransferInfo) void;
pub extern fn SDL_DownloadFromGPUBuffer(copy_pass: ?*SDL_GPUCopyPass, source: [*c]const SDL_GPUBufferRegion, destination: [*c]const SDL_GPUTransferBufferLocation) void;
pub extern fn SDL_EndGPUCopyPass(copy_pass: ?*SDL_GPUCopyPass) void;
pub extern fn SDL_GenerateMipmapsForGPUTexture(command_buffer: ?*SDL_GPUCommandBuffer, texture: ?*SDL_GPUTexture) void;
pub extern fn SDL_BlitGPUTexture(command_buffer: ?*SDL_GPUCommandBuffer, info: [*c]const SDL_GPUBlitInfo) void;
pub extern fn SDL_WindowSupportsGPUSwapchainComposition(device: ?*SDL_GPUDevice, window: ?*SDL_Window, swapchain_composition: SDL_GPUSwapchainComposition) bool;
pub extern fn SDL_WindowSupportsGPUPresentMode(device: ?*SDL_GPUDevice, window: ?*SDL_Window, present_mode: SDL_GPUPresentMode) bool;
pub extern fn SDL_ClaimWindowForGPUDevice(device: ?*SDL_GPUDevice, window: ?*SDL_Window) bool;
pub extern fn SDL_ReleaseWindowFromGPUDevice(device: ?*SDL_GPUDevice, window: ?*SDL_Window) void;
pub extern fn SDL_SetGPUSwapchainParameters(device: ?*SDL_GPUDevice, window: ?*SDL_Window, swapchain_composition: SDL_GPUSwapchainComposition, present_mode: SDL_GPUPresentMode) bool;
pub extern fn SDL_SetGPUAllowedFramesInFlight(device: ?*SDL_GPUDevice, allowed_frames_in_flight: Uint32) bool;
pub extern fn SDL_GetGPUSwapchainTextureFormat(device: ?*SDL_GPUDevice, window: ?*SDL_Window) SDL_GPUTextureFormat;
pub extern fn SDL_AcquireGPUSwapchainTexture(command_buffer: ?*SDL_GPUCommandBuffer, window: ?*SDL_Window, swapchain_texture: [*c]?*SDL_GPUTexture, swapchain_texture_width: [*c]Uint32, swapchain_texture_height: [*c]Uint32) bool;
pub extern fn SDL_WaitForGPUSwapchain(device: ?*SDL_GPUDevice, window: ?*SDL_Window) bool;
pub extern fn SDL_WaitAndAcquireGPUSwapchainTexture(command_buffer: ?*SDL_GPUCommandBuffer, window: ?*SDL_Window, swapchain_texture: [*c]?*SDL_GPUTexture, swapchain_texture_width: [*c]Uint32, swapchain_texture_height: [*c]Uint32) bool;
pub extern fn SDL_SubmitGPUCommandBuffer(command_buffer: ?*SDL_GPUCommandBuffer) bool;
pub extern fn SDL_SubmitGPUCommandBufferAndAcquireFence(command_buffer: ?*SDL_GPUCommandBuffer) ?*SDL_GPUFence;
pub extern fn SDL_CancelGPUCommandBuffer(command_buffer: ?*SDL_GPUCommandBuffer) bool;
pub extern fn SDL_WaitForGPUIdle(device: ?*SDL_GPUDevice) bool;
pub extern fn SDL_WaitForGPUFences(device: ?*SDL_GPUDevice, wait_all: bool, fences: [*c]const ?*SDL_GPUFence, num_fences: Uint32) bool;
pub extern fn SDL_QueryGPUFence(device: ?*SDL_GPUDevice, fence: ?*SDL_GPUFence) bool;
pub extern fn SDL_ReleaseGPUFence(device: ?*SDL_GPUDevice, fence: ?*SDL_GPUFence) void;
pub extern fn SDL_GPUTextureFormatTexelBlockSize(format: SDL_GPUTextureFormat) Uint32;
pub extern fn SDL_GPUTextureSupportsFormat(device: ?*SDL_GPUDevice, format: SDL_GPUTextureFormat, @"type": SDL_GPUTextureType, usage: SDL_GPUTextureUsageFlags) bool;
pub extern fn SDL_GPUTextureSupportsSampleCount(device: ?*SDL_GPUDevice, format: SDL_GPUTextureFormat, sample_count: SDL_GPUSampleCount) bool;
pub extern fn SDL_CalculateGPUTextureFormatSize(format: SDL_GPUTextureFormat, width: Uint32, height: Uint32, depth_or_layer_count: Uint32) Uint32;
pub extern fn SDL_GetPixelFormatFromGPUTextureFormat(format: SDL_GPUTextureFormat) SDL_PixelFormat;
pub extern fn SDL_GetGPUTextureFormatFromPixelFormat(format: SDL_PixelFormat) SDL_GPUTextureFormat;
pub const ImGui_ImplSDLGPU3_InitInfo = extern struct {
    Device: ?*SDL_GPUDevice = @import("std").mem.zeroes(?*SDL_GPUDevice),
    ColorTargetFormat: SDL_GPUTextureFormat = @import("std").mem.zeroes(SDL_GPUTextureFormat),
    MSAASamples: SDL_GPUSampleCount = @import("std").mem.zeroes(SDL_GPUSampleCount),
};
pub extern fn ImGui_ImplSDLGPU3_Init(info: [*c]ImGui_ImplSDLGPU3_InitInfo) bool;
pub extern fn ImGui_ImplSDLGPU3_Shutdown(...) void;
pub extern fn ImGui_ImplSDLGPU3_NewFrame(...) void;
pub extern fn ImGui_ImplSDLGPU3_PrepareDrawData(draw_data: [*c]ImDrawData, command_buffer: ?*SDL_GPUCommandBuffer) void;
pub extern fn ImGui_ImplSDLGPU3_RenderDrawData(draw_data: [*c]ImDrawData, command_buffer: ?*SDL_GPUCommandBuffer, render_pass: ?*SDL_GPURenderPass, pipeline: ?*SDL_GPUGraphicsPipeline) void;
pub extern fn ImGui_ImplSDLGPU3_CreateDeviceObjects(...) void;
pub extern fn ImGui_ImplSDLGPU3_DestroyDeviceObjects(...) void;
pub extern fn ImGui_ImplSDLGPU3_CreateFontsTexture(...) void;
pub extern fn ImGui_ImplSDLGPU3_DestroyFontsTexture(...) void;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 2);
pub const __clang_version__ = "20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __GXX_TYPEINFO_EQUALITY_INLINE = @as(c_int, 0);
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __SEH__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-16";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 16);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_WINT_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):96:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):103:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __PTRDIFF_FMTd__ = "lld";
pub const __PTRDIFF_FMTi__ = "lli";
pub const __INTPTR_TYPE__ = c_longlong;
pub const __INTPTR_FMTd__ = "lld";
pub const __INTPTR_FMTi__ = "lli";
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __SIZE_FMTo__ = "llo";
pub const __SIZE_FMTu__ = "llu";
pub const __SIZE_FMTx__ = "llx";
pub const __SIZE_FMTX__ = "llX";
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WINT_TYPE__ = c_ushort;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __UINTPTR_FMTo__ = "llo";
pub const __UINTPTR_FMTu__ = "llu";
pub const __UINTPTR_FMTx__ = "llx";
pub const __UINTPTR_FMTX__ = "llX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):209:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):234:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):243:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):375:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):376:9
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __HRESET__ = @as(c_int, 1);
pub const __AVXVNNI__ = @as(c_int, 1);
pub const __SERIALIZE__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _WIN32 = @as(c_int, 1);
pub const _WIN64 = @as(c_int, 1);
pub const WIN32 = @as(c_int, 1);
pub const __WIN32 = @as(c_int, 1);
pub const __WIN32__ = @as(c_int, 1);
pub const WINNT = @as(c_int, 1);
pub const __WINNT = @as(c_int, 1);
pub const __WINNT__ = @as(c_int, 1);
pub const WIN64 = @as(c_int, 1);
pub const __WIN64 = @as(c_int, 1);
pub const __WIN64__ = @as(c_int, 1);
pub const __MINGW64__ = @as(c_int, 1);
pub const __MSVCRT__ = @as(c_int, 1);
pub const __MINGW32__ = @as(c_int, 1);
pub const __declspec = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// (no file):450:9
pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`");
// (no file):451:9
pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`");
// (no file):452:9
pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`");
// (no file):453:9
pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`");
// (no file):454:9
pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`");
// (no file):455:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`");
// (no file):456:9
pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`");
// (no file):457:9
pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`");
// (no file):458:9
pub const _pascal = @compileError("unable to translate macro: undefined identifier `__pascal__`");
// (no file):459:9
pub const __pascal = @compileError("unable to translate macro: undefined identifier `__pascal__`");
// (no file):460:9
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const NDEBUG = @as(c_int, 1);
pub const __MSVCRT_VERSION__ = @as(c_int, 0xE00);
pub const _WIN32_WINNT = @as(c_int, 0x0a00);
pub const CIMGUI_USE_SDLGPU3 = "";
pub const CIMGUI_DEFINE_ENUMS_AND_STRUCTS = "";
pub const CIMGUI_INCLUDED = "";
pub const _INC_STDIO = "";
pub const _STDIO_CONFIG_DEFINED = "";
pub const _INC_CORECRT = "";
pub const _INC__MINGW_H = "";
pub const _INC_CRTDEFS_MACRO = "";
pub const __MINGW64_PASTE2 = @compileError("unable to translate C expr: unexpected token '##'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:10:9
pub inline fn __MINGW64_PASTE(x: anytype, y: anytype) @TypeOf(__MINGW64_PASTE2(x, y)) {
    _ = &x;
    _ = &y;
    return __MINGW64_PASTE2(x, y);
}
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token '#'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:13:9
pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    _ = &x;
    return __STRINGIFY(x);
}
pub const __MINGW64_VERSION_MAJOR = @as(c_int, 13);
pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);
pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);
pub const __MINGW64_VERSION_RC = @as(c_int, 0);
pub const __MINGW64_VERSION_STR = __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_BUGFIX);
pub const __MINGW64_VERSION_STATE = "alpha";
pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);
pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);
pub const _M_AMD64 = @as(c_int, 100);
pub const _M_X64 = @as(c_int, 100);
pub const @"_" = @as(c_int, 1);
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:129:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:130:11
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    _ = &sym;
    return sym;
}
pub inline fn __MINGW_LSYMBOL(sym: anytype) @TypeOf(__MINGW64_PASTE(@"_", sym)) {
    _ = &sym;
    return __MINGW64_PASTE(@"_", sym);
}
pub const __MINGW_ASM_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:140:9
pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:141:9
pub const __MINGW_EXTENSION = @compileError("unable to translate C expr: unexpected token '__extension__'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:173:13
pub const __C89_NAMELESS = __MINGW_EXTENSION;
pub const __C89_NAMELESSSTRUCTNAME = "";
pub const __C89_NAMELESSSTRUCTNAME1 = "";
pub const __C89_NAMELESSSTRUCTNAME2 = "";
pub const __C89_NAMELESSSTRUCTNAME3 = "";
pub const __C89_NAMELESSSTRUCTNAME4 = "";
pub const __C89_NAMELESSSTRUCTNAME5 = "";
pub const __C89_NAMELESSUNIONNAME = "";
pub const __C89_NAMELESSUNIONNAME1 = "";
pub const __C89_NAMELESSUNIONNAME2 = "";
pub const __C89_NAMELESSUNIONNAME3 = "";
pub const __C89_NAMELESSUNIONNAME4 = "";
pub const __C89_NAMELESSUNIONNAME5 = "";
pub const __C89_NAMELESSUNIONNAME6 = "";
pub const __C89_NAMELESSUNIONNAME7 = "";
pub const __C89_NAMELESSUNIONNAME8 = "";
pub const __GNU_EXTENSION = __MINGW_EXTENSION;
pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);
pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:213:11
pub const __MSABI_LONG = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    _ = &major;
    _ = &minor;
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}
pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &major;
    _ = &minor;
    return @as(c_int, 0);
}
pub const __MINGW_ATTRIB_DEPRECATED_STR = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:257:11
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:281:9
pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:284:9
pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:287:9
pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:290:9
pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__unused__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:311:11
pub const __mingw_attribute_artificial = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:318:11
pub const __MINGW_SELECTANY = @compileError("unable to translate macro: undefined identifier `__selectany__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:324:9
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _INC_MINGW_SECAPI = "";
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token ';'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_secapi.h:69:9
pub const __LONG32 = c_long;
pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__dllimport__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:44:12
pub const __USE_CRTIMP = @as(c_int, 1);
pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__dllimport__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:52:15
pub const __DECLSPEC_SUPPORTED = "";
pub const USE___UUIDOF = @as(c_int, 0);
pub const _inline = @compileError("unable to translate C expr: unexpected token '__inline'");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:74:9
pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:83:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:90:9
pub const __MINGW_CXX11_CONSTEXPR = "";
pub const __MINGW_CXX14_CONSTEXPR = "";
pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__unused__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:118:11
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:133:10
pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:149:9
pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:150:9
pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:160:9
pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:161:9
pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:174:9
pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:180:9
pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__used__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:186:9
pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:187:9
pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:189:9
pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:204:9
pub const __MINGW_ATTRIB_NO_OPTIMIZE = "";
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:222:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:225:9
pub const _UCRT = "";
pub inline fn __MINGW_UCRT_ASM_CALL(func: anytype) @TypeOf(__MINGW_ASM_CALL(func)) {
    _ = &func;
    return __MINGW_ASM_CALL(func);
}
pub const _INT128_DEFINED = "";
pub const __int8 = u8;
pub const __int16 = c_short;
pub const __int32 = c_int;
pub const __int64 = c_longlong;
pub const __ptr32 = "";
pub const __ptr64 = "";
pub const __unaligned = "";
pub const __w64 = "";
pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:290:9
pub const __nothrow = "";
pub const _INC_VADEFS = "";
pub const MINGW_SDK_INIT = "";
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_DDK_H = "";
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const _CRT_PACKING = @as(c_int, 8);
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST_DEFINED = "";
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    _ = &v;
    return &v;
}
pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// C:\zig\lib\libc\include\any-windows-any/vadefs.h:48:9
pub const _crt_va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// C:\zig\lib\libc\include\any-windows-any/vadefs.h:49:9
pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// C:\zig\lib\libc\include\any-windows-any/vadefs.h:50:9
pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// C:\zig\lib\libc\include\any-windows-any/vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token '#'");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:309:9
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    _ = &_Value;
    return __CRT_STRINGIZE(_Value);
}
pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:314:9
pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    _ = &_String;
    return __CRT_WIDE(_String);
}
pub const _W64 = "";
pub const _CRTIMP_NOIA64 = _CRTIMP;
pub const _CRTIMP2 = _CRTIMP;
pub const _CRTIMP_ALTERNATIVE = _CRTIMP;
pub const _CRT_ALTERNATIVE_IMPORTED = "";
pub const _MRTIMP2 = _CRTIMP;
pub const _DLL = "";
pub const _MT = "";
pub const _MCRTIMP = _CRTIMP;
pub const _CRTIMP_PURE = _CRTIMP;
pub const _PGLOBAL = "";
pub const _AGLOBAL = "";
pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);
pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:373:9
pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:376:9
pub const _CRT_INSECURE_DEPRECATE_GLOBALS = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:380:9
pub const _CRT_MANAGED_HEAP_DEPRECATE = "";
pub const _CRT_OBSOLETE = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:388:9
pub const _CONST_RETURN = "";
pub const UNALIGNED = "";
pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__aligned__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:415:9
pub const __CRTDECL = __cdecl;
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    _ = &x;
    return @import("std").zig.c_translation.cast(anyopaque, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 0);
pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:479:9
pub const __ANONYMOUS_DEFINED = "";
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub const _UNION_NAME = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:499:9
pub const _STRUCT_NAME = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:500:9
pub const DUMMYUNIONNAME = "";
pub const DUMMYUNIONNAME1 = "";
pub const DUMMYUNIONNAME2 = "";
pub const DUMMYUNIONNAME3 = "";
pub const DUMMYUNIONNAME4 = "";
pub const DUMMYUNIONNAME5 = "";
pub const DUMMYUNIONNAME6 = "";
pub const DUMMYUNIONNAME7 = "";
pub const DUMMYUNIONNAME8 = "";
pub const DUMMYUNIONNAME9 = "";
pub const DUMMYSTRUCTNAME = "";
pub const DUMMYSTRUCTNAME1 = "";
pub const DUMMYSTRUCTNAME2 = "";
pub const DUMMYSTRUCTNAME3 = "";
pub const DUMMYSTRUCTNAME4 = "";
pub const DUMMYSTRUCTNAME5 = "";
pub const __CRT_UUID_DECL = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:587:9
pub const __MINGW_DEBUGBREAK_IMPL = !(__has_builtin(__debugbreak) != 0);
pub const __MINGW_FASTFAIL_IMPL = !(__has_builtin(__fastfail) != 0);
pub const __MINGW_PREFETCH_IMPL = @compileError("unable to translate macro: undefined identifier `__prefetch`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:644:9
pub const _CRTNOALIAS = "";
pub const _CRTRESTRICT = "";
pub const _SIZE_T_DEFINED = "";
pub const _SSIZE_T_DEFINED = "";
pub const _RSIZE_T_DEFINED = "";
pub const _INTPTR_T_DEFINED = "";
pub const __intptr_t_defined = "";
pub const _UINTPTR_T_DEFINED = "";
pub const __uintptr_t_defined = "";
pub const _PTRDIFF_T_DEFINED = "";
pub const _PTRDIFF_T_ = "";
pub const _WCHAR_T_DEFINED = "";
pub const _WCTYPE_T_DEFINED = "";
pub const _WINT_T = "";
pub const _ERRCODE_DEFINED = "";
pub const _TIME32_T_DEFINED = "";
pub const _TIME64_T_DEFINED = "";
pub const _TIME_T_DEFINED = "";
pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:143:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:262:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:263:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:264:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:265:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:266:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:267:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:268:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:269:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:270:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:271:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:272:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:273:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:279:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:281:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:283:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:285:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:422:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:423:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:424:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:425:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:426:9
pub const _TAGLC_ID_DEFINED = "";
pub const _THREADLOCALEINFO = "";
pub const __crt_typefix = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:486:9
pub const _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = "";
pub const _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION = @as(c_ulonglong, 0x0001);
pub const _CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR = @as(c_ulonglong, 0x0002);
pub const _CRT_INTERNAL_PRINTF_LEGACY_WIDE_SPECIFIERS = @as(c_ulonglong, 0x0004);
pub const _CRT_INTERNAL_PRINTF_LEGACY_MSVCRT_COMPATIBILITY = @as(c_ulonglong, 0x0008);
pub const _CRT_INTERNAL_PRINTF_LEGACY_THREE_DIGIT_EXPONENTS = @as(c_ulonglong, 0x0010);
pub const _CRT_INTERNAL_PRINTF_STANDARD_ROUNDING = @as(c_ulonglong, 0x0020);
pub const _CRT_INTERNAL_SCANF_SECURECRT = @as(c_ulonglong, 0x0001);
pub const _CRT_INTERNAL_SCANF_LEGACY_WIDE_SPECIFIERS = @as(c_ulonglong, 0x0002);
pub const _CRT_INTERNAL_SCANF_LEGACY_MSVCRT_COMPATIBILITY = @as(c_ulonglong, 0x0004);
pub const _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS = __local_stdio_printf_options().*;
pub const _CRT_INTERNAL_LOCAL_SCANF_OPTIONS = __local_stdio_scanf_options().*;
pub const BUFSIZ = @as(c_int, 512);
pub const _NFILE = _NSTREAM_;
pub const _NSTREAM_ = @as(c_int, 512);
pub const _IOB_ENTRIES = @as(c_int, 20);
pub const EOF = -@as(c_int, 1);
pub const _FILE_DEFINED = "";
pub const _P_tmpdir = "\\";
pub const _wP_tmpdir = "\\";
pub const L_tmpnam = @as(c_int, 260);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_SET = @as(c_int, 0);
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const FILENAME_MAX = @as(c_int, 260);
pub const FOPEN_MAX = @as(c_int, 20);
pub const _SYS_OPEN = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _OFF_T_DEFINED = "";
pub const _OFF_T_ = "";
pub const _OFF64_T_DEFINED = "";
pub const _FILE_OFFSET_BITS_SET_OFFT = "";
pub const _iob = __iob_func();
pub const _FPOS_T_DEFINED = "";
pub inline fn _FPOSOFF(fp: anytype) c_long {
    _ = &fp;
    return @import("std").zig.c_translation.cast(c_long, fp);
}
pub const _STDSTREAM_DEFINED = "";
pub const stdin = __acrt_iob_func(@as(c_int, 0));
pub const stdout = __acrt_iob_func(@as(c_int, 1));
pub const stderr = __acrt_iob_func(@as(c_int, 2));
pub const _IOFBF = @as(c_int, 0x0000);
pub const _IOLBF = @as(c_int, 0x0040);
pub const _IONBF = @as(c_int, 0x0004);
pub const __MINGW_PRINTF_FORMAT = @compileError("unable to translate macro: undefined identifier `__printf__`");
// C:\zig\lib\libc\include\any-windows-any/stdio.h:277:9
pub const __MINGW_SCANF_FORMAT = @compileError("unable to translate macro: undefined identifier `__scanf__`");
// C:\zig\lib\libc\include\any-windows-any/stdio.h:278:9
pub const _FILE_OFFSET_BITS_SET_FSEEKO = "";
pub const _FILE_OFFSET_BITS_SET_FTELLO = "";
pub const _CRT_PERROR_DEFINED = "";
pub const popen = _popen;
pub const pclose = _pclose;
pub const _CRT_DIRECTORY_DEFINED = "";
pub const _WSTDIO_DEFINED = "";
pub const WEOF = @import("std").zig.c_translation.cast(wint_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex));
pub const _INC_SWPRINTF_INL = "";
pub const _CRT_WPERROR_DEFINED = "";
pub const wpopen = _wpopen;
pub inline fn _putwc_nolock(_c: anytype, _stm: anytype) @TypeOf(_fputwc_nolock(_c, _stm)) {
    _ = &_c;
    _ = &_stm;
    return _fputwc_nolock(_c, _stm);
}
pub inline fn _getwc_nolock(_c: anytype) @TypeOf(_fgetwc_nolock(_c)) {
    _ = &_c;
    return _fgetwc_nolock(_c);
}
pub const _STDIO_DEFINED = "";
pub inline fn _getchar_nolock() @TypeOf(_getc_nolock(stdin)) {
    return _getc_nolock(stdin);
}
pub inline fn _putchar_nolock(_c: anytype) @TypeOf(_putc_nolock(_c, stdout)) {
    _ = &_c;
    return _putc_nolock(_c, stdout);
}
pub inline fn _getwchar_nolock() @TypeOf(_getwc_nolock(stdin)) {
    return _getwc_nolock(stdin);
}
pub inline fn _putwchar_nolock(_c: anytype) @TypeOf(_putwc_nolock(_c, stdout)) {
    _ = &_c;
    return _putwc_nolock(_c, stdout);
}
pub const P_tmpdir = _P_tmpdir;
pub const SYS_OPEN = _SYS_OPEN;
pub const __MINGW_MBWC_CONVERT_DEFINED = "";
pub const _WSPAWN_DEFINED = "";
pub const _P_WAIT = @as(c_int, 0);
pub const _P_NOWAIT = @as(c_int, 1);
pub const _OLD_P_OVERLAY = @as(c_int, 2);
pub const _P_NOWAITO = @as(c_int, 3);
pub const _P_DETACH = @as(c_int, 4);
pub const _P_OVERLAY = @as(c_int, 2);
pub const _WAIT_CHILD = @as(c_int, 0);
pub const _WAIT_GRANDCHILD = @as(c_int, 1);
pub const _SPAWNV_DEFINED = "";
pub const _INC_STDIO_S = "";
pub const _SECIMP = @compileError("unable to translate macro: undefined identifier `dllimport`");
// C:\zig\lib\libc\include\any-windows-any/sec_api/stdio_s.h:16:9
pub const _STDIO_S_DEFINED = "";
pub const L_tmpnam_s = L_tmpnam;
pub const TMP_MAX_S = TMP_MAX;
pub const _WSTDIO_S_DEFINED = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = "";
pub const _INC_CRTDEFS = "";
pub const __need_wint_t = "";
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hex);
pub const UINT64_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub const WCHAR_MIN = @as(c_uint, 0);
pub const WCHAR_MAX = @as(c_uint, 0xffff);
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @as(c_uint, 0xffff);
pub inline fn INT8_C(val: anytype) @TypeOf((INT_LEAST8_MAX - INT_LEAST8_MAX) + val) {
    _ = &val;
    return (INT_LEAST8_MAX - INT_LEAST8_MAX) + val;
}
pub inline fn INT16_C(val: anytype) @TypeOf((INT_LEAST16_MAX - INT_LEAST16_MAX) + val) {
    _ = &val;
    return (INT_LEAST16_MAX - INT_LEAST16_MAX) + val;
}
pub inline fn INT32_C(val: anytype) @TypeOf((INT_LEAST32_MAX - INT_LEAST32_MAX) + val) {
    _ = &val;
    return (INT_LEAST32_MAX - INT_LEAST32_MAX) + val;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub inline fn UINT16_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const API = @compileError("unable to translate macro: undefined identifier `dllexport`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:14:17
pub const __need___va_list = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// C:\zig\lib\include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// C:\zig\lib\include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// C:\zig\lib\include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// C:\zig\lib\include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// C:\zig\lib\include/__stdarg_va_copy.h:11:9
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:29:13
pub const CIMGUI_API = EXTERN ++ API;
pub const CONST = @compileError("unable to translate C expr: unexpected token 'const'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\cimgui/cimgui.h:33:9
pub const IM_UNICODE_CODEPOINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex);
pub const IMGUI_HAS_DOCK = @as(c_int, 1);
pub const ImDrawCallback_ResetRenderState = @import("std").zig.c_translation.cast(ImDrawCallback, -@as(c_int, 8));
pub const ImTextureID_Invalid = @import("std").zig.c_translation.cast(ImTextureID, @as(c_int, 0));
pub const CIMGUI_IMPL_DEFINED = "";
pub const SDL_gpu_h_ = "";
pub const SDL_stdinc_h_ = "";
pub const SDL_platform_defines_h_ = "";
pub const SDL_PLATFORM_WINDOWS = @as(c_int, 1);
pub const HAVE_WINAPIFAMILY_H = @as(c_int, 0);
pub const WINAPI_FAMILY_WINRT = @as(c_int, 0);
pub const SDL_WINAPI_FAMILY_PHONE = @as(c_int, 0);
pub const SDL_PLATFORM_WIN32 = @as(c_int, 1);
pub const _INC_STRING = "";
pub const _NLSCMP_DEFINED = "";
pub const _NLSCMPERROR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const _WConst_return = "";
pub const _CRT_MEMORY_DEFINED = "";
pub const _WSTRING_DEFINED = "";
pub const wcswcs = wcsstr;
pub const _INC_STRING_S = "";
pub const _WSTRING_S_DEFINED = "";
pub const _INC_WCHAR = "";
pub const _INC_CORECRT_WSTDLIB = "";
pub const _INC_CORECRT_WCTYPE = "";
pub const _CRT_CTYPEDATA_DEFINED = "";
pub const __PCTYPE_FUNC = __pctype_func();
pub const _pctype = __pctype_func();
pub const _CRT_WCTYPEDATA_DEFINED = "";
pub const _wctype = __MINGW_IMP_SYMBOL(_wctype).*;
pub const _pwctype = __pwctype_func();
pub const _UPPER = @as(c_int, 0x1);
pub const _LOWER = @as(c_int, 0x2);
pub const _DIGIT = @as(c_int, 0x4);
pub const _SPACE = @as(c_int, 0x8);
pub const _PUNCT = @as(c_int, 0x10);
pub const _CONTROL = @as(c_int, 0x20);
pub const _BLANK = @as(c_int, 0x40);
pub const _HEX = @as(c_int, 0x80);
pub const _LEADBYTE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const _ALPHA = (@as(c_int, 0x0100) | _UPPER) | _LOWER;
pub const _WCTYPE_DEFINED = "";
pub const _WCTYPE_INLINE_DEFINED = "";
pub const _FSIZE_T_DEFINED = "";
pub const _wfinddata_t = _wfinddata64i32_t;
pub const _wfinddatai64_t = _wfinddata64_t;
pub const _wfindfirst = _wfindfirst64i32;
pub const _wfindnext = _wfindnext64i32;
pub const _wfindfirsti64 = _wfindfirst64;
pub const _wfindnexti64 = _wfindnext64;
pub const _WFINDDATA_T_DEFINED = "";
pub const _WDIRECT_DEFINED = "";
pub const _WIO_DEFINED = "";
pub const _WLOCALE_DEFINED = "";
pub const _WEXEC_DEFINED = "";
pub const _CRT_WSYSTEM_DEFINED = "";
pub const _INO_T_DEFINED = "";
pub const _DEV_T_DEFINED = "";
pub const __stat64 = _stat64;
pub const _fstat = @compileError("unable to translate macro: undefined identifier `_fstat64i32`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_stat64.h:14:9
pub const _fstati64 = @compileError("unable to translate macro: undefined identifier `_fstat64`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_stat64.h:15:9
pub const _stat = _stat64i32;
pub const _stati64 = _stat64;
pub const _wstat = _wstat64i32;
pub const _wstati64 = _wstat64;
pub const _STAT_DEFINED = "";
pub const _WSTAT_DEFINED = "";
pub const _WCONIO_DEFINED = "";
pub const _WSTDLIB_DEFINED = "";
pub const _WSTDLIBP_DEFINED = "";
pub const _TM_DEFINED = "";
pub const _WTIME_DEFINED = "";
pub const _INC_WTIME_INL = "";
pub const _INC_WTIME_S_INL = "";
pub const _INC_WCHAR_S = "";
pub const _WIO_S_DEFINED = "";
pub const _WCONIO_S_DEFINED = "";
pub const _WTIME_S_DEFINED = "";
pub const __CLANG_INTTYPES_H = "";
pub const _INTTYPES_H_ = "";
pub const PRId64 = "lld";
pub const PRIi64 = "lli";
pub const PRIo64 = "llo";
pub const PRIu64 = "llu";
pub const PRIx64 = "llx";
pub const PRIX64 = "llX";
pub const PRId8 = "d";
pub const PRId16 = "d";
pub const PRId32 = "d";
pub const PRIdLEAST8 = "d";
pub const PRIdLEAST16 = "d";
pub const PRIdLEAST32 = "d";
pub const PRIdLEAST64 = PRId64;
pub const PRIdFAST8 = "d";
pub const PRIdFAST16 = "d";
pub const PRIdFAST32 = "d";
pub const PRIdFAST64 = PRId64;
pub const PRIdMAX = PRId64;
pub const PRIi8 = "i";
pub const PRIi16 = "i";
pub const PRIi32 = "i";
pub const PRIiLEAST8 = "i";
pub const PRIiLEAST16 = "i";
pub const PRIiLEAST32 = "i";
pub const PRIiLEAST64 = PRIi64;
pub const PRIiFAST8 = "i";
pub const PRIiFAST16 = "i";
pub const PRIiFAST32 = "i";
pub const PRIiFAST64 = PRIi64;
pub const PRIiMAX = PRIi64;
pub const PRIo8 = "o";
pub const PRIo16 = "o";
pub const PRIo32 = "o";
pub const PRIoLEAST8 = "o";
pub const PRIoLEAST16 = "o";
pub const PRIoLEAST32 = "o";
pub const PRIoLEAST64 = PRIo64;
pub const PRIoFAST8 = "o";
pub const PRIoFAST16 = "o";
pub const PRIoFAST32 = "o";
pub const PRIoFAST64 = PRIo64;
pub const PRIoMAX = PRIo64;
pub const PRIu8 = "u";
pub const PRIu16 = "u";
pub const PRIu32 = "u";
pub const PRIuLEAST8 = "u";
pub const PRIuLEAST16 = "u";
pub const PRIuLEAST32 = "u";
pub const PRIuLEAST64 = PRIu64;
pub const PRIuFAST8 = "u";
pub const PRIuFAST16 = "u";
pub const PRIuFAST32 = "u";
pub const PRIuFAST64 = PRIu64;
pub const PRIuMAX = PRIu64;
pub const PRIx8 = "x";
pub const PRIx16 = "x";
pub const PRIx32 = "x";
pub const PRIxLEAST8 = "x";
pub const PRIxLEAST16 = "x";
pub const PRIxLEAST32 = "x";
pub const PRIxLEAST64 = PRIx64;
pub const PRIxFAST8 = "x";
pub const PRIxFAST16 = "x";
pub const PRIxFAST32 = "x";
pub const PRIxFAST64 = PRIx64;
pub const PRIxMAX = PRIx64;
pub const PRIX8 = "X";
pub const PRIX16 = "X";
pub const PRIX32 = "X";
pub const PRIXLEAST8 = "X";
pub const PRIXLEAST16 = "X";
pub const PRIXLEAST32 = "X";
pub const PRIXLEAST64 = PRIX64;
pub const PRIXFAST8 = "X";
pub const PRIXFAST16 = "X";
pub const PRIXFAST32 = "X";
pub const PRIXFAST64 = PRIX64;
pub const PRIXMAX = PRIX64;
pub const SCNd16 = "hd";
pub const SCNd32 = "d";
pub const SCNd64 = PRId64;
pub const SCNdLEAST16 = "hd";
pub const SCNdLEAST32 = "d";
pub const SCNdLEAST64 = PRId64;
pub const SCNdFAST16 = "hd";
pub const SCNdFAST32 = "d";
pub const SCNdFAST64 = PRId64;
pub const SCNdMAX = PRId64;
pub const SCNi16 = "hi";
pub const SCNi32 = "i";
pub const SCNi64 = PRIi64;
pub const SCNiLEAST16 = "hi";
pub const SCNiLEAST32 = "i";
pub const SCNiLEAST64 = PRIi64;
pub const SCNiFAST16 = "hi";
pub const SCNiFAST32 = "i";
pub const SCNiFAST64 = PRIi64;
pub const SCNiMAX = PRIi64;
pub const SCNo16 = "ho";
pub const SCNo32 = "o";
pub const SCNo64 = PRIo64;
pub const SCNoLEAST16 = "ho";
pub const SCNoLEAST32 = "o";
pub const SCNoLEAST64 = PRIo64;
pub const SCNoFAST16 = "ho";
pub const SCNoFAST32 = "o";
pub const SCNoFAST64 = PRIo64;
pub const SCNoMAX = PRIo64;
pub const SCNx16 = "hx";
pub const SCNx32 = "x";
pub const SCNx64 = PRIx64;
pub const SCNxLEAST16 = "hx";
pub const SCNxLEAST32 = "x";
pub const SCNxLEAST64 = PRIx64;
pub const SCNxFAST16 = "hx";
pub const SCNxFAST32 = "x";
pub const SCNxFAST64 = PRIx64;
pub const SCNxMAX = PRIx64;
pub const SCNu16 = "hu";
pub const SCNu32 = "u";
pub const SCNu64 = PRIu64;
pub const SCNuLEAST16 = "hu";
pub const SCNuLEAST32 = "u";
pub const SCNuLEAST64 = PRIu64;
pub const SCNuFAST16 = "hu";
pub const SCNuFAST32 = "u";
pub const SCNuFAST64 = PRIu64;
pub const SCNuMAX = PRIu64;
pub const PRIdPTR = PRId64;
pub const PRIiPTR = PRIi64;
pub const PRIoPTR = PRIo64;
pub const PRIuPTR = PRIu64;
pub const PRIxPTR = PRIx64;
pub const PRIXPTR = PRIX64;
pub const SCNdPTR = PRId64;
pub const SCNiPTR = PRIi64;
pub const SCNoPTR = PRIo64;
pub const SCNxPTR = PRIx64;
pub const SCNuPTR = PRIu64;
pub const SCNd8 = "hhd";
pub const SCNdLEAST8 = "hhd";
pub const SCNdFAST8 = "hhd";
pub const SCNi8 = "hhi";
pub const SCNiLEAST8 = "hhi";
pub const SCNiFAST8 = "hhi";
pub const SCNo8 = "hho";
pub const SCNoLEAST8 = "hho";
pub const SCNoFAST8 = "hho";
pub const SCNx8 = "hhx";
pub const SCNxLEAST8 = "hhx";
pub const SCNxFAST8 = "hhx";
pub const SCNu8 = "hhu";
pub const SCNuLEAST8 = "hhu";
pub const SCNuFAST8 = "hhu";
pub const SDL_INCLUDE_STDBOOL_H = "";
pub const alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:117:12
pub const SDL_SIZE_MAX = SIZE_MAX;
pub const SDL_COMPILE_TIME_ASSERT = @compileError("unable to translate C expr: unexpected token '_Static_assert'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:230:9
pub const SDL_arraysize = @compileError("unable to translate C expr: expected ')' instead got '['");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:252:9
pub const SDL_STRINGIFY_ARG = @compileError("unable to translate C expr: unexpected token '#'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:267:9
pub const SDL_reinterpret_cast = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub const SDL_static_cast = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub const SDL_const_cast = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn SDL_FOURCC(A: anytype, B: anytype, C: anytype, D: anytype) @TypeOf((((SDL_static_cast(Uint32, SDL_static_cast(Uint8, A)) << @as(c_int, 0)) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, B)) << @as(c_int, 8))) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, C)) << @as(c_int, 16))) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, D)) << @as(c_int, 24))) {
    _ = &A;
    _ = &B;
    _ = &C;
    _ = &D;
    return (((SDL_static_cast(Uint32, SDL_static_cast(Uint8, A)) << @as(c_int, 0)) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, B)) << @as(c_int, 8))) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, C)) << @as(c_int, 16))) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, D)) << @as(c_int, 24));
}
pub inline fn SDL_SINT64_C(c: anytype) @TypeOf(INT64_C(c)) {
    _ = &c;
    return INT64_C(c);
}
pub inline fn SDL_UINT64_C(c: anytype) @TypeOf(UINT64_C(c)) {
    _ = &c;
    return UINT64_C(c);
}
pub const SDL_MAX_SINT8 = @import("std").zig.c_translation.cast(Sint8, @as(c_int, 0x7F));
pub const SDL_MIN_SINT8 = @import("std").zig.c_translation.cast(Sint8, ~@as(c_int, 0x7F));
pub const SDL_MAX_UINT8 = @import("std").zig.c_translation.cast(Uint8, @as(c_int, 0xFF));
pub const SDL_MIN_UINT8 = @import("std").zig.c_translation.cast(Uint8, @as(c_int, 0x00));
pub const SDL_MAX_SINT16 = @import("std").zig.c_translation.cast(Sint16, @as(c_int, 0x7FFF));
pub const SDL_MIN_SINT16 = @import("std").zig.c_translation.cast(Sint16, ~@as(c_int, 0x7FFF));
pub const SDL_MAX_UINT16 = @import("std").zig.c_translation.cast(Uint16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex));
pub const SDL_MIN_UINT16 = @import("std").zig.c_translation.cast(Uint16, @as(c_int, 0x0000));
pub const SDL_MAX_SINT32 = @import("std").zig.c_translation.cast(Sint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFF, .hex));
pub const SDL_MIN_SINT32 = @import("std").zig.c_translation.cast(Sint32, ~@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFF, .hex));
pub const SDL_MAX_UINT32 = @import("std").zig.c_translation.cast(Uint32, @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xFFFFFFFF, .hex));
pub const SDL_MIN_UINT32 = @import("std").zig.c_translation.cast(Uint32, @as(c_int, 0x00000000));
pub const SDL_MAX_SINT64 = SDL_SINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFFFFFFFFFF, .hex));
pub const SDL_MIN_SINT64 = ~SDL_SINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFFFFFFFFFF, .hex));
pub const SDL_MAX_UINT64 = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFFFFFFFFFF, .hex));
pub const SDL_MIN_UINT64 = SDL_UINT64_C(@as(c_int, 0x0000000000000000));
pub const SDL_MAX_TIME = SDL_MAX_SINT64;
pub const SDL_MIN_TIME = SDL_MIN_SINT64;
pub const SDL_FLT_EPSILON = @as(f32, 1.1920928955078125e-07);
pub const SDL_PRIs64 = "I64d";
pub const SDL_PRIu64 = "I64u";
pub const SDL_PRIx64 = "I64x";
pub const SDL_PRIX64 = "I64X";
pub const SDL_PRIs32 = PRId32;
pub const SDL_PRIu32 = PRIu32;
pub const SDL_PRIx32 = PRIx32;
pub const SDL_PRIX32 = PRIX32;
pub const SDL_PRILL_PREFIX = "I64";
pub const SDL_PRILLd = SDL_PRILL_PREFIX ++ "d";
pub const SDL_PRILLu = SDL_PRILL_PREFIX ++ "u";
pub const SDL_PRILLx = SDL_PRILL_PREFIX ++ "x";
pub const SDL_PRILLX = SDL_PRILL_PREFIX ++ "X";
pub const SDL_IN_BYTECAP = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1147:9
pub const SDL_INOUT_Z_CAP = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1148:9
pub const SDL_OUT_Z_CAP = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1149:9
pub const SDL_OUT_CAP = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1150:9
pub const SDL_OUT_BYTECAP = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1151:9
pub const SDL_OUT_Z_BYTECAP = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1152:9
pub const SDL_PRINTF_FORMAT_STRING = "";
pub const SDL_SCANF_FORMAT_STRING = "";
pub const SDL_PRINTF_VARARG_FUNC = @compileError("unable to translate macro: undefined identifier `format`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1157:9
pub const SDL_PRINTF_VARARG_FUNCV = @compileError("unable to translate macro: undefined identifier `format`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1158:9
pub const SDL_SCANF_VARARG_FUNC = @compileError("unable to translate macro: undefined identifier `format`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1159:9
pub const SDL_SCANF_VARARG_FUNCV = @compileError("unable to translate macro: undefined identifier `format`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1160:9
pub const SDL_WPRINTF_VARARG_FUNC = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1161:9
pub const SDL_WPRINTF_VARARG_FUNCV = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1162:9
pub const SDL_begin_code_h = "";
pub const SDL_RESTRICT = @compileError("unable to translate C expr: unexpected token 'restrict'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:331:13
pub inline fn SDL_HAS_BUILTIN(x: anytype) @TypeOf(__has_builtin(x)) {
    _ = &x;
    return __has_builtin(x);
}
pub const SDL_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:349:13
pub const SDL_UNUSED = @compileError("unable to translate macro: undefined identifier `unused`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:359:13
pub const SDL_DECLSPEC = "";
pub const SDLCALL = "";
pub const SDL_INLINE = @compileError("unable to translate C expr: unexpected token '__inline__'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:416:9
pub const SDL_FORCE_INLINE = @compileError("unable to translate macro: undefined identifier `always_inline`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:437:9
pub const SDL_NORETURN = @compileError("unable to translate macro: undefined identifier `noreturn`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:445:9
pub const SDL_ANALYZER_NORETURN = @compileError("unable to translate macro: undefined identifier `analyzer_noreturn`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:455:9
pub const SDL_HAS_FALLTHROUGH = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:480:9
pub const SDL_FALLTHROUGH = @compileError("unable to translate macro: undefined identifier `__fallthrough__`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:487:9
pub const SDL_NODISCARD = @compileError("unable to translate macro: undefined identifier `warn_unused_result`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:500:9
pub const SDL_MALLOC = @compileError("unable to translate macro: undefined identifier `malloc`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:510:9
pub const SDL_ALLOC_SIZE = @compileError("unable to translate macro: undefined identifier `alloc_size`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:522:9
pub const SDL_ALLOC_SIZE2 = @compileError("unable to translate macro: undefined identifier `alloc_size`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:532:9
pub const SDL_ALIGNED = @compileError("unable to translate macro: undefined identifier `aligned`");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_begin_code.h:542:9
pub const SDL_INIT_INTERFACE = @compileError("unable to translate C expr: unexpected token 'do'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1262:9
pub const SDL_stack_alloc = @compileError("unable to translate C expr: unexpected token ')'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1314:9
pub const SDL_stack_free = @compileError("unable to translate C expr: unexpected token ''");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:1315:9
pub inline fn SDL_min(x: anytype, y: anytype) @TypeOf(if (x < y) x else y) {
    _ = &x;
    _ = &y;
    return if (x < y) x else y;
}
pub inline fn SDL_max(x: anytype, y: anytype) @TypeOf(if (x > y) x else y) {
    _ = &x;
    _ = &y;
    return if (x > y) x else y;
}
pub inline fn SDL_clamp(x: anytype, a: anytype, b: anytype) @TypeOf(if (x < a) a else if (x > b) b else x) {
    _ = &x;
    _ = &a;
    _ = &b;
    return if (x < a) a else if (x > b) b else x;
}
pub const SDL_copyp = @compileError("unable to translate C expr: unexpected token '{'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:2538:9
pub const SDL_zero = @compileError("unable to translate C expr: unexpected token '('");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:2634:9
pub const SDL_zerop = @compileError("unable to translate C expr: unexpected token '*'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:2653:9
pub const SDL_zeroa = @compileError("unable to translate C expr: unexpected token '('");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:2672:9
pub const SDL_INVALID_UNICODE_CODEPOINT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFD, .hex);
pub const SDL_PI_D = @as(f64, 3.141592653589793238462643383279502884);
pub const SDL_PI_F = @as(f32, 3.141592653589793238462643383279502884);
pub const SDL_ICONV_ERROR = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub const SDL_ICONV_E2BIG = @import("std").zig.c_translation.cast(usize, -@as(c_int, 2));
pub const SDL_ICONV_EILSEQ = @import("std").zig.c_translation.cast(usize, -@as(c_int, 3));
pub const SDL_ICONV_EINVAL = @import("std").zig.c_translation.cast(usize, -@as(c_int, 4));
pub inline fn SDL_iconv_utf8_locale(S: anytype) @TypeOf(SDL_iconv_string("", "UTF-8", S, SDL_strlen(S) + @as(c_int, 1))) {
    _ = &S;
    return SDL_iconv_string("", "UTF-8", S, SDL_strlen(S) + @as(c_int, 1));
}
pub const SDL_iconv_utf8_ucs2 = @compileError("unable to translate C expr: unexpected token ','");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:5951:9
pub const SDL_iconv_utf8_ucs4 = @compileError("unable to translate C expr: unexpected token ','");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:5965:9
pub const SDL_iconv_wchar_utf8 = @compileError("unable to translate C expr: unexpected token 'const'");
// C:\imguinz\examples\sdl3_sdlgpu3\../../src/libzig/impl_sdlgpu3\..\..\libc\sdl\SDL3\x86_64-w64-mingw32\include/SDL3/SDL_stdinc.h:5979:9
pub const SDL_pixels_h_ = "";
pub const SDL_error_h_ = "";
pub inline fn SDL_Unsupported() @TypeOf(SDL_SetError("That operation is not supported")) {
    return SDL_SetError("That operation is not supported");
}
pub inline fn SDL_InvalidParamError(param: anytype) @TypeOf(SDL_SetError("Parameter '%s' is invalid", param)) {
    _ = &param;
    return SDL_SetError("Parameter '%s' is invalid", param);
}
pub const SDL_endian_h_ = "";
pub const SDL_LIL_ENDIAN = @as(c_int, 1234);
pub const SDL_BIG_ENDIAN = @as(c_int, 4321);
pub const SDL_BYTEORDER = SDL_LIL_ENDIAN;
pub const SDL_FLOATWORDORDER = SDL_BYTEORDER;
pub const HAS_BUILTIN_BSWAP16 = (SDL_HAS_BUILTIN(__builtin_bswap16) != 0) or ((__GNUC__ > @as(c_int, 4)) or ((__GNUC__ == @as(c_int, 4)) and (__GNUC_MINOR__ >= @as(c_int, 8))));
pub const HAS_BUILTIN_BSWAP32 = (SDL_HAS_BUILTIN(__builtin_bswap32) != 0) or ((__GNUC__ > @as(c_int, 4)) or ((__GNUC__ == @as(c_int, 4)) and (__GNUC_MINOR__ >= @as(c_int, 3))));
pub const HAS_BUILTIN_BSWAP64 = (SDL_HAS_BUILTIN(__builtin_bswap64) != 0) or ((__GNUC__ > @as(c_int, 4)) or ((__GNUC__ == @as(c_int, 4)) and (__GNUC_MINOR__ >= @as(c_int, 3))));
pub const HAS_BROKEN_BSWAP = (__GNUC__ == @as(c_int, 2)) and (__GNUC_MINOR__ <= @as(c_int, 95));
pub inline fn SDL_Swap16(x: anytype) @TypeOf(__builtin_bswap16(x)) {
    _ = &x;
    return __builtin_bswap16(x);
}
pub inline fn SDL_Swap32(x: anytype) @TypeOf(__builtin_bswap32(x)) {
    _ = &x;
    return __builtin_bswap32(x);
}
pub inline fn SDL_Swap64(x: anytype) @TypeOf(__builtin_bswap64(x)) {
    _ = &x;
    return __builtin_bswap64(x);
}
pub inline fn SDL_Swap16LE(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn SDL_Swap32LE(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn SDL_Swap64LE(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn SDL_SwapFloatLE(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn SDL_Swap16BE(x: anytype) @TypeOf(SDL_Swap16(x)) {
    _ = &x;
    return SDL_Swap16(x);
}
pub inline fn SDL_Swap32BE(x: anytype) @TypeOf(SDL_Swap32(x)) {
    _ = &x;
    return SDL_Swap32(x);
}
pub inline fn SDL_Swap64BE(x: anytype) @TypeOf(SDL_Swap64(x)) {
    _ = &x;
    return SDL_Swap64(x);
}
pub inline fn SDL_SwapFloatBE(x: anytype) @TypeOf(SDL_SwapFloat(x)) {
    _ = &x;
    return SDL_SwapFloat(x);
}
pub const SDL_ALPHA_OPAQUE = @as(c_int, 255);
pub const SDL_ALPHA_OPAQUE_FLOAT = @as(f32, 1.0);
pub const SDL_ALPHA_TRANSPARENT = @as(c_int, 0);
pub const SDL_ALPHA_TRANSPARENT_FLOAT = @as(f32, 0.0);
pub inline fn SDL_DEFINE_PIXELFOURCC(A: anytype, B: anytype, C: anytype, D: anytype) @TypeOf(SDL_FOURCC(A, B, C, D)) {
    _ = &A;
    _ = &B;
    _ = &C;
    _ = &D;
    return SDL_FOURCC(A, B, C, D);
}
pub inline fn SDL_DEFINE_PIXELFORMAT(@"type": anytype, order: anytype, layout: anytype, bits: anytype, bytes: anytype) @TypeOf((((((@as(c_int, 1) << @as(c_int, 28)) | (@"type" << @as(c_int, 24))) | (order << @as(c_int, 20))) | (layout << @as(c_int, 16))) | (bits << @as(c_int, 8))) | (bytes << @as(c_int, 0))) {
    _ = &@"type";
    _ = &order;
    _ = &layout;
    _ = &bits;
    _ = &bytes;
    return (((((@as(c_int, 1) << @as(c_int, 28)) | (@"type" << @as(c_int, 24))) | (order << @as(c_int, 20))) | (layout << @as(c_int, 16))) | (bits << @as(c_int, 8))) | (bytes << @as(c_int, 0));
}
pub inline fn SDL_PIXELFLAG(format: anytype) @TypeOf((format >> @as(c_int, 28)) & @as(c_int, 0x0F)) {
    _ = &format;
    return (format >> @as(c_int, 28)) & @as(c_int, 0x0F);
}
pub inline fn SDL_PIXELTYPE(format: anytype) @TypeOf((format >> @as(c_int, 24)) & @as(c_int, 0x0F)) {
    _ = &format;
    return (format >> @as(c_int, 24)) & @as(c_int, 0x0F);
}
pub inline fn SDL_PIXELORDER(format: anytype) @TypeOf((format >> @as(c_int, 20)) & @as(c_int, 0x0F)) {
    _ = &format;
    return (format >> @as(c_int, 20)) & @as(c_int, 0x0F);
}
pub inline fn SDL_PIXELLAYOUT(format: anytype) @TypeOf((format >> @as(c_int, 16)) & @as(c_int, 0x0F)) {
    _ = &format;
    return (format >> @as(c_int, 16)) & @as(c_int, 0x0F);
}
pub inline fn SDL_BITSPERPIXEL(format: anytype) @TypeOf(if (SDL_ISPIXELFORMAT_FOURCC(format) != 0) @as(c_int, 0) else (format >> @as(c_int, 8)) & @as(c_int, 0xFF)) {
    _ = &format;
    return if (SDL_ISPIXELFORMAT_FOURCC(format) != 0) @as(c_int, 0) else (format >> @as(c_int, 8)) & @as(c_int, 0xFF);
}
pub inline fn SDL_BYTESPERPIXEL(format: anytype) @TypeOf(if (SDL_ISPIXELFORMAT_FOURCC(format) != 0) if ((((format == SDL_PIXELFORMAT_YUY2) or (format == SDL_PIXELFORMAT_UYVY)) or (format == SDL_PIXELFORMAT_YVYU)) or (format == SDL_PIXELFORMAT_P010)) @as(c_int, 2) else @as(c_int, 1) else (format >> @as(c_int, 0)) & @as(c_int, 0xFF)) {
    _ = &format;
    return if (SDL_ISPIXELFORMAT_FOURCC(format) != 0) if ((((format == SDL_PIXELFORMAT_YUY2) or (format == SDL_PIXELFORMAT_UYVY)) or (format == SDL_PIXELFORMAT_YVYU)) or (format == SDL_PIXELFORMAT_P010)) @as(c_int, 2) else @as(c_int, 1) else (format >> @as(c_int, 0)) & @as(c_int, 0xFF);
}
pub inline fn SDL_ISPIXELFORMAT_INDEXED(format: anytype) @TypeOf(!(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and ((((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX1) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX2)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX4)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX8))) {
    _ = &format;
    return !(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and ((((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX1) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX2)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX4)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX8));
}
pub inline fn SDL_ISPIXELFORMAT_PACKED(format: anytype) @TypeOf(!(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and (((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED8) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED16)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED32))) {
    _ = &format;
    return !(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and (((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED8) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED16)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED32));
}
pub inline fn SDL_ISPIXELFORMAT_ARRAY(format: anytype) @TypeOf(!(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and (((((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYU8) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYU16)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYU32)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF16)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF32))) {
    _ = &format;
    return !(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and (((((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYU8) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYU16)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYU32)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF16)) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF32));
}
pub inline fn SDL_ISPIXELFORMAT_10BIT(format: anytype) @TypeOf(!(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED32) and (SDL_PIXELLAYOUT(format) == SDL_PACKEDLAYOUT_2101010))) {
    _ = &format;
    return !(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED32) and (SDL_PIXELLAYOUT(format) == SDL_PACKEDLAYOUT_2101010));
}
pub inline fn SDL_ISPIXELFORMAT_FLOAT(format: anytype) @TypeOf(!(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF16) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF32))) {
    _ = &format;
    return !(SDL_ISPIXELFORMAT_FOURCC(format) != 0) and ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF16) or (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF32));
}
pub inline fn SDL_ISPIXELFORMAT_ALPHA(format: anytype) @TypeOf(((SDL_ISPIXELFORMAT_PACKED(format) != 0) and ((((SDL_PIXELORDER(format) == SDL_PACKEDORDER_ARGB) or (SDL_PIXELORDER(format) == SDL_PACKEDORDER_RGBA)) or (SDL_PIXELORDER(format) == SDL_PACKEDORDER_ABGR)) or (SDL_PIXELORDER(format) == SDL_PACKEDORDER_BGRA))) or ((SDL_ISPIXELFORMAT_ARRAY(format) != 0) and ((((SDL_PIXELORDER(format) == SDL_ARRAYORDER_ARGB) or (SDL_PIXELORDER(format) == SDL_ARRAYORDER_RGBA)) or (SDL_PIXELORDER(format) == SDL_ARRAYORDER_ABGR)) or (SDL_PIXELORDER(format) == SDL_ARRAYORDER_BGRA)))) {
    _ = &format;
    return ((SDL_ISPIXELFORMAT_PACKED(format) != 0) and ((((SDL_PIXELORDER(format) == SDL_PACKEDORDER_ARGB) or (SDL_PIXELORDER(format) == SDL_PACKEDORDER_RGBA)) or (SDL_PIXELORDER(format) == SDL_PACKEDORDER_ABGR)) or (SDL_PIXELORDER(format) == SDL_PACKEDORDER_BGRA))) or ((SDL_ISPIXELFORMAT_ARRAY(format) != 0) and ((((SDL_PIXELORDER(format) == SDL_ARRAYORDER_ARGB) or (SDL_PIXELORDER(format) == SDL_ARRAYORDER_RGBA)) or (SDL_PIXELORDER(format) == SDL_ARRAYORDER_ABGR)) or (SDL_PIXELORDER(format) == SDL_ARRAYORDER_BGRA)));
}
pub inline fn SDL_ISPIXELFORMAT_FOURCC(format: anytype) @TypeOf((format != 0) and (SDL_PIXELFLAG(format) != @as(c_int, 1))) {
    _ = &format;
    return (format != 0) and (SDL_PIXELFLAG(format) != @as(c_int, 1));
}
pub inline fn SDL_DEFINE_COLORSPACE(@"type": anytype, range: anytype, primaries: anytype, transfer: anytype, matrix: anytype, chroma: anytype) @TypeOf((((((@import("std").zig.c_translation.cast(Uint32, @"type") << @as(c_int, 28)) | (@import("std").zig.c_translation.cast(Uint32, range) << @as(c_int, 24))) | (@import("std").zig.c_translation.cast(Uint32, chroma) << @as(c_int, 20))) | (@import("std").zig.c_translation.cast(Uint32, primaries) << @as(c_int, 10))) | (@import("std").zig.c_translation.cast(Uint32, transfer) << @as(c_int, 5))) | (@import("std").zig.c_translation.cast(Uint32, matrix) << @as(c_int, 0))) {
    _ = &@"type";
    _ = &range;
    _ = &primaries;
    _ = &transfer;
    _ = &matrix;
    _ = &chroma;
    return (((((@import("std").zig.c_translation.cast(Uint32, @"type") << @as(c_int, 28)) | (@import("std").zig.c_translation.cast(Uint32, range) << @as(c_int, 24))) | (@import("std").zig.c_translation.cast(Uint32, chroma) << @as(c_int, 20))) | (@import("std").zig.c_translation.cast(Uint32, primaries) << @as(c_int, 10))) | (@import("std").zig.c_translation.cast(Uint32, transfer) << @as(c_int, 5))) | (@import("std").zig.c_translation.cast(Uint32, matrix) << @as(c_int, 0));
}
pub inline fn SDL_COLORSPACETYPE(cspace: anytype) SDL_ColorType {
    _ = &cspace;
    return @import("std").zig.c_translation.cast(SDL_ColorType, (cspace >> @as(c_int, 28)) & @as(c_int, 0x0F));
}
pub inline fn SDL_COLORSPACERANGE(cspace: anytype) SDL_ColorRange {
    _ = &cspace;
    return @import("std").zig.c_translation.cast(SDL_ColorRange, (cspace >> @as(c_int, 24)) & @as(c_int, 0x0F));
}
pub inline fn SDL_COLORSPACECHROMA(cspace: anytype) SDL_ChromaLocation {
    _ = &cspace;
    return @import("std").zig.c_translation.cast(SDL_ChromaLocation, (cspace >> @as(c_int, 20)) & @as(c_int, 0x0F));
}
pub inline fn SDL_COLORSPACEPRIMARIES(cspace: anytype) SDL_ColorPrimaries {
    _ = &cspace;
    return @import("std").zig.c_translation.cast(SDL_ColorPrimaries, (cspace >> @as(c_int, 10)) & @as(c_int, 0x1F));
}
pub inline fn SDL_COLORSPACETRANSFER(cspace: anytype) SDL_TransferCharacteristics {
    _ = &cspace;
    return @import("std").zig.c_translation.cast(SDL_TransferCharacteristics, (cspace >> @as(c_int, 5)) & @as(c_int, 0x1F));
}
pub inline fn SDL_COLORSPACEMATRIX(cspace: anytype) SDL_MatrixCoefficients {
    _ = &cspace;
    return @import("std").zig.c_translation.cast(SDL_MatrixCoefficients, cspace & @as(c_int, 0x1F));
}
pub inline fn SDL_ISCOLORSPACE_MATRIX_BT601(cspace: anytype) @TypeOf((SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT601) or (SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT470BG)) {
    _ = &cspace;
    return (SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT601) or (SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT470BG);
}
pub inline fn SDL_ISCOLORSPACE_MATRIX_BT709(cspace: anytype) @TypeOf(SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT709) {
    _ = &cspace;
    return SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT709;
}
pub inline fn SDL_ISCOLORSPACE_MATRIX_BT2020_NCL(cspace: anytype) @TypeOf(SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT2020_NCL) {
    _ = &cspace;
    return SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT2020_NCL;
}
pub inline fn SDL_ISCOLORSPACE_LIMITED_RANGE(cspace: anytype) @TypeOf(SDL_COLORSPACERANGE(cspace) != SDL_COLOR_RANGE_FULL) {
    _ = &cspace;
    return SDL_COLORSPACERANGE(cspace) != SDL_COLOR_RANGE_FULL;
}
pub inline fn SDL_ISCOLORSPACE_FULL_RANGE(cspace: anytype) @TypeOf(SDL_COLORSPACERANGE(cspace) == SDL_COLOR_RANGE_FULL) {
    _ = &cspace;
    return SDL_COLORSPACERANGE(cspace) == SDL_COLOR_RANGE_FULL;
}
pub const SDL_properties_h_ = "";
pub const SDL_PROP_NAME_STRING = "SDL.name";
pub const SDL_rect_h_ = "";
pub const SDL_surface_h_ = "";
pub const SDL_blendmode_h_ = "";
pub const SDL_BLENDMODE_NONE = @as(c_uint, 0x00000000);
pub const SDL_BLENDMODE_BLEND = @as(c_uint, 0x00000001);
pub const SDL_BLENDMODE_BLEND_PREMULTIPLIED = @as(c_uint, 0x00000010);
pub const SDL_BLENDMODE_ADD = @as(c_uint, 0x00000002);
pub const SDL_BLENDMODE_ADD_PREMULTIPLIED = @as(c_uint, 0x00000020);
pub const SDL_BLENDMODE_MOD = @as(c_uint, 0x00000004);
pub const SDL_BLENDMODE_MUL = @as(c_uint, 0x00000008);
pub const SDL_BLENDMODE_INVALID = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x7FFFFFFF, .hex);
pub const SDL_iostream_h_ = "";
pub const SDL_PROP_IOSTREAM_WINDOWS_HANDLE_POINTER = "SDL.iostream.windows.handle";
pub const SDL_PROP_IOSTREAM_STDIO_FILE_POINTER = "SDL.iostream.stdio.file";
pub const SDL_PROP_IOSTREAM_FILE_DESCRIPTOR_NUMBER = "SDL.iostream.file_descriptor";
pub const SDL_PROP_IOSTREAM_ANDROID_AASSET_POINTER = "SDL.iostream.android.aasset";
pub const SDL_PROP_IOSTREAM_MEMORY_POINTER = "SDL.iostream.memory.base";
pub const SDL_PROP_IOSTREAM_MEMORY_SIZE_NUMBER = "SDL.iostream.memory.size";
pub const SDL_PROP_IOSTREAM_MEMORY_FREE_FUNC_POINTER = "SDL.iostream.memory.free";
pub const SDL_PROP_IOSTREAM_DYNAMIC_MEMORY_POINTER = "SDL.iostream.dynamic.memory";
pub const SDL_PROP_IOSTREAM_DYNAMIC_CHUNKSIZE_NUMBER = "SDL.iostream.dynamic.chunksize";
pub const SDL_SURFACE_PREALLOCATED = @as(c_uint, 0x00000001);
pub const SDL_SURFACE_LOCK_NEEDED = @as(c_uint, 0x00000002);
pub const SDL_SURFACE_LOCKED = @as(c_uint, 0x00000004);
pub const SDL_SURFACE_SIMD_ALIGNED = @as(c_uint, 0x00000008);
pub inline fn SDL_MUSTLOCK(S: anytype) @TypeOf((S.*.flags & SDL_SURFACE_LOCK_NEEDED) == SDL_SURFACE_LOCK_NEEDED) {
    _ = &S;
    return (S.*.flags & SDL_SURFACE_LOCK_NEEDED) == SDL_SURFACE_LOCK_NEEDED;
}
pub const SDL_PROP_SURFACE_SDR_WHITE_POINT_FLOAT = "SDL.surface.SDR_white_point";
pub const SDL_PROP_SURFACE_HDR_HEADROOM_FLOAT = "SDL.surface.HDR_headroom";
pub const SDL_PROP_SURFACE_TONEMAP_OPERATOR_STRING = "SDL.surface.tonemap";
pub const SDL_PROP_SURFACE_HOTSPOT_X_NUMBER = "SDL.surface.hotspot.x";
pub const SDL_PROP_SURFACE_HOTSPOT_Y_NUMBER = "SDL.surface.hotspot.y";
pub const SDL_PROP_SURFACE_ROTATION_FLOAT = "SDL.surface.rotation";
pub const SDL_video_h_ = "";
pub const SDL_PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER = "SDL.video.wayland.wl_display";
pub const SDL_WINDOW_FULLSCREEN = SDL_UINT64_C(@as(c_int, 0x0000000000000001));
pub const SDL_WINDOW_OPENGL = SDL_UINT64_C(@as(c_int, 0x0000000000000002));
pub const SDL_WINDOW_OCCLUDED = SDL_UINT64_C(@as(c_int, 0x0000000000000004));
pub const SDL_WINDOW_HIDDEN = SDL_UINT64_C(@as(c_int, 0x0000000000000008));
pub const SDL_WINDOW_BORDERLESS = SDL_UINT64_C(@as(c_int, 0x0000000000000010));
pub const SDL_WINDOW_RESIZABLE = SDL_UINT64_C(@as(c_int, 0x0000000000000020));
pub const SDL_WINDOW_MINIMIZED = SDL_UINT64_C(@as(c_int, 0x0000000000000040));
pub const SDL_WINDOW_MAXIMIZED = SDL_UINT64_C(@as(c_int, 0x0000000000000080));
pub const SDL_WINDOW_MOUSE_GRABBED = SDL_UINT64_C(@as(c_int, 0x0000000000000100));
pub const SDL_WINDOW_INPUT_FOCUS = SDL_UINT64_C(@as(c_int, 0x0000000000000200));
pub const SDL_WINDOW_MOUSE_FOCUS = SDL_UINT64_C(@as(c_int, 0x0000000000000400));
pub const SDL_WINDOW_EXTERNAL = SDL_UINT64_C(@as(c_int, 0x0000000000000800));
pub const SDL_WINDOW_MODAL = SDL_UINT64_C(@as(c_int, 0x0000000000001000));
pub const SDL_WINDOW_HIGH_PIXEL_DENSITY = SDL_UINT64_C(@as(c_int, 0x0000000000002000));
pub const SDL_WINDOW_MOUSE_CAPTURE = SDL_UINT64_C(@as(c_int, 0x0000000000004000));
pub const SDL_WINDOW_MOUSE_RELATIVE_MODE = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000008000, .hex));
pub const SDL_WINDOW_ALWAYS_ON_TOP = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000010000, .hex));
pub const SDL_WINDOW_UTILITY = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000020000, .hex));
pub const SDL_WINDOW_TOOLTIP = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000040000, .hex));
pub const SDL_WINDOW_POPUP_MENU = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000080000, .hex));
pub const SDL_WINDOW_KEYBOARD_GRABBED = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000100000, .hex));
pub const SDL_WINDOW_FILL_DOCUMENT = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000200000, .hex));
pub const SDL_WINDOW_VULKAN = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000010000000, .hex));
pub const SDL_WINDOW_METAL = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000020000000, .hex));
pub const SDL_WINDOW_TRANSPARENT = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000040000000, .hex));
pub const SDL_WINDOW_NOT_FOCUSABLE = SDL_UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000080000000, .hex));
pub const SDL_WINDOWPOS_UNDEFINED_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x1FFF0000, .hex);
pub inline fn SDL_WINDOWPOS_UNDEFINED_DISPLAY(X: anytype) @TypeOf(SDL_WINDOWPOS_UNDEFINED_MASK | X) {
    _ = &X;
    return SDL_WINDOWPOS_UNDEFINED_MASK | X;
}
pub const SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(@as(c_int, 0));
pub inline fn SDL_WINDOWPOS_ISUNDEFINED(X: anytype) @TypeOf((X & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF0000, .hex)) == SDL_WINDOWPOS_UNDEFINED_MASK) {
    _ = &X;
    return (X & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF0000, .hex)) == SDL_WINDOWPOS_UNDEFINED_MASK;
}
pub const SDL_WINDOWPOS_CENTERED_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x2FFF0000, .hex);
pub inline fn SDL_WINDOWPOS_CENTERED_DISPLAY(X: anytype) @TypeOf(SDL_WINDOWPOS_CENTERED_MASK | X) {
    _ = &X;
    return SDL_WINDOWPOS_CENTERED_MASK | X;
}
pub const SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(@as(c_int, 0));
pub inline fn SDL_WINDOWPOS_ISCENTERED(X: anytype) @TypeOf((X & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF0000, .hex)) == SDL_WINDOWPOS_CENTERED_MASK) {
    _ = &X;
    return (X & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF0000, .hex)) == SDL_WINDOWPOS_CENTERED_MASK;
}
pub const SDL_GL_CONTEXT_PROFILE_CORE = @as(c_int, 0x0001);
pub const SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = @as(c_int, 0x0002);
pub const SDL_GL_CONTEXT_PROFILE_ES = @as(c_int, 0x0004);
pub const SDL_GL_CONTEXT_DEBUG_FLAG = @as(c_int, 0x0001);
pub const SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = @as(c_int, 0x0002);
pub const SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = @as(c_int, 0x0004);
pub const SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = @as(c_int, 0x0008);
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = @as(c_int, 0x0000);
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = @as(c_int, 0x0001);
pub const SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = @as(c_int, 0x0000);
pub const SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = @as(c_int, 0x0001);
pub const SDL_PROP_DISPLAY_HDR_ENABLED_BOOLEAN = "SDL.display.HDR_enabled";
pub const SDL_PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER = "SDL.display.KMSDRM.panel_orientation";
pub const SDL_PROP_DISPLAY_WAYLAND_WL_OUTPUT_POINTER = "SDL.display.wayland.wl_output";
pub const SDL_PROP_DISPLAY_WINDOWS_HMONITOR_POINTER = "SDL.display.windows.hmonitor";
pub const SDL_PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN = "SDL.window.create.always_on_top";
pub const SDL_PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN = "SDL.window.create.borderless";
pub const SDL_PROP_WINDOW_CREATE_CONSTRAIN_POPUP_BOOLEAN = "SDL.window.create.constrain_popup";
pub const SDL_PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN = "SDL.window.create.focusable";
pub const SDL_PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN = "SDL.window.create.external_graphics_context";
pub const SDL_PROP_WINDOW_CREATE_FLAGS_NUMBER = "SDL.window.create.flags";
pub const SDL_PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN = "SDL.window.create.fullscreen";
pub const SDL_PROP_WINDOW_CREATE_HEIGHT_NUMBER = "SDL.window.create.height";
pub const SDL_PROP_WINDOW_CREATE_HIDDEN_BOOLEAN = "SDL.window.create.hidden";
pub const SDL_PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN = "SDL.window.create.high_pixel_density";
pub const SDL_PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN = "SDL.window.create.maximized";
pub const SDL_PROP_WINDOW_CREATE_MENU_BOOLEAN = "SDL.window.create.menu";
pub const SDL_PROP_WINDOW_CREATE_METAL_BOOLEAN = "SDL.window.create.metal";
pub const SDL_PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN = "SDL.window.create.minimized";
pub const SDL_PROP_WINDOW_CREATE_MODAL_BOOLEAN = "SDL.window.create.modal";
pub const SDL_PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN = "SDL.window.create.mouse_grabbed";
pub const SDL_PROP_WINDOW_CREATE_OPENGL_BOOLEAN = "SDL.window.create.opengl";
pub const SDL_PROP_WINDOW_CREATE_PARENT_POINTER = "SDL.window.create.parent";
pub const SDL_PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN = "SDL.window.create.resizable";
pub const SDL_PROP_WINDOW_CREATE_TITLE_STRING = "SDL.window.create.title";
pub const SDL_PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN = "SDL.window.create.transparent";
pub const SDL_PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN = "SDL.window.create.tooltip";
pub const SDL_PROP_WINDOW_CREATE_UTILITY_BOOLEAN = "SDL.window.create.utility";
pub const SDL_PROP_WINDOW_CREATE_VULKAN_BOOLEAN = "SDL.window.create.vulkan";
pub const SDL_PROP_WINDOW_CREATE_WIDTH_NUMBER = "SDL.window.create.width";
pub const SDL_PROP_WINDOW_CREATE_X_NUMBER = "SDL.window.create.x";
pub const SDL_PROP_WINDOW_CREATE_Y_NUMBER = "SDL.window.create.y";
pub const SDL_PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER = "SDL.window.create.cocoa.window";
pub const SDL_PROP_WINDOW_CREATE_COCOA_VIEW_POINTER = "SDL.window.create.cocoa.view";
pub const SDL_PROP_WINDOW_CREATE_WINDOWSCENE_POINTER = "SDL.window.create.uikit.windowscene";
pub const SDL_PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN = "SDL.window.create.wayland.surface_role_custom";
pub const SDL_PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN = "SDL.window.create.wayland.create_egl_window";
pub const SDL_PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER = "SDL.window.create.wayland.wl_surface";
pub const SDL_PROP_WINDOW_CREATE_WIN32_HWND_POINTER = "SDL.window.create.win32.hwnd";
pub const SDL_PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER = "SDL.window.create.win32.pixel_format_hwnd";
pub const SDL_PROP_WINDOW_CREATE_X11_WINDOW_NUMBER = "SDL.window.create.x11.window";
pub const SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_CANVAS_ID_STRING = "SDL.window.create.emscripten.canvas_id";
pub const SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING = "SDL.window.create.emscripten.keyboard_element";
pub const SDL_PROP_WINDOW_SHAPE_POINTER = "SDL.window.shape";
pub const SDL_PROP_WINDOW_HDR_ENABLED_BOOLEAN = "SDL.window.HDR_enabled";
pub const SDL_PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT = "SDL.window.SDR_white_level";
pub const SDL_PROP_WINDOW_HDR_HEADROOM_FLOAT = "SDL.window.HDR_headroom";
pub const SDL_PROP_WINDOW_ANDROID_WINDOW_POINTER = "SDL.window.android.window";
pub const SDL_PROP_WINDOW_ANDROID_SURFACE_POINTER = "SDL.window.android.surface";
pub const SDL_PROP_WINDOW_UIKIT_WINDOW_POINTER = "SDL.window.uikit.window";
pub const SDL_PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER = "SDL.window.uikit.metal_view_tag";
pub const SDL_PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER = "SDL.window.uikit.opengl.framebuffer";
pub const SDL_PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER = "SDL.window.uikit.opengl.renderbuffer";
pub const SDL_PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER = "SDL.window.uikit.opengl.resolve_framebuffer";
pub const SDL_PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER = "SDL.window.kmsdrm.dev_index";
pub const SDL_PROP_WINDOW_KMSDRM_DRM_FD_NUMBER = "SDL.window.kmsdrm.drm_fd";
pub const SDL_PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER = "SDL.window.kmsdrm.gbm_dev";
pub const SDL_PROP_WINDOW_COCOA_WINDOW_POINTER = "SDL.window.cocoa.window";
pub const SDL_PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER = "SDL.window.cocoa.metal_view_tag";
pub const SDL_PROP_WINDOW_OPENVR_OVERLAY_ID_NUMBER = "SDL.window.openvr.overlay_id";
pub const SDL_PROP_WINDOW_VIVANTE_DISPLAY_POINTER = "SDL.window.vivante.display";
pub const SDL_PROP_WINDOW_VIVANTE_WINDOW_POINTER = "SDL.window.vivante.window";
pub const SDL_PROP_WINDOW_VIVANTE_SURFACE_POINTER = "SDL.window.vivante.surface";
pub const SDL_PROP_WINDOW_WIN32_HWND_POINTER = "SDL.window.win32.hwnd";
pub const SDL_PROP_WINDOW_WIN32_HDC_POINTER = "SDL.window.win32.hdc";
pub const SDL_PROP_WINDOW_WIN32_INSTANCE_POINTER = "SDL.window.win32.instance";
pub const SDL_PROP_WINDOW_WAYLAND_DISPLAY_POINTER = "SDL.window.wayland.display";
pub const SDL_PROP_WINDOW_WAYLAND_SURFACE_POINTER = "SDL.window.wayland.surface";
pub const SDL_PROP_WINDOW_WAYLAND_VIEWPORT_POINTER = "SDL.window.wayland.viewport";
pub const SDL_PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER = "SDL.window.wayland.egl_window";
pub const SDL_PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER = "SDL.window.wayland.xdg_surface";
pub const SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER = "SDL.window.wayland.xdg_toplevel";
pub const SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING = "SDL.window.wayland.xdg_toplevel_export_handle";
pub const SDL_PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER = "SDL.window.wayland.xdg_popup";
pub const SDL_PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER = "SDL.window.wayland.xdg_positioner";
pub const SDL_PROP_WINDOW_X11_DISPLAY_POINTER = "SDL.window.x11.display";
pub const SDL_PROP_WINDOW_X11_SCREEN_NUMBER = "SDL.window.x11.screen";
pub const SDL_PROP_WINDOW_X11_WINDOW_NUMBER = "SDL.window.x11.window";
pub const SDL_PROP_WINDOW_EMSCRIPTEN_CANVAS_ID_STRING = "SDL.window.emscripten.canvas_id";
pub const SDL_PROP_WINDOW_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING = "SDL.window.emscripten.keyboard_element";
pub const SDL_WINDOW_SURFACE_VSYNC_DISABLED = @as(c_int, 0);
pub const SDL_WINDOW_SURFACE_VSYNC_ADAPTIVE = -@as(c_int, 1);
pub const SDL_GPU_TEXTUREUSAGE_SAMPLER = @as(c_uint, 1) << @as(c_int, 0);
pub const SDL_GPU_TEXTUREUSAGE_COLOR_TARGET = @as(c_uint, 1) << @as(c_int, 1);
pub const SDL_GPU_TEXTUREUSAGE_DEPTH_STENCIL_TARGET = @as(c_uint, 1) << @as(c_int, 2);
pub const SDL_GPU_TEXTUREUSAGE_GRAPHICS_STORAGE_READ = @as(c_uint, 1) << @as(c_int, 3);
pub const SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_READ = @as(c_uint, 1) << @as(c_int, 4);
pub const SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE = @as(c_uint, 1) << @as(c_int, 5);
pub const SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_SIMULTANEOUS_READ_WRITE = @as(c_uint, 1) << @as(c_int, 6);
pub const SDL_GPU_BUFFERUSAGE_VERTEX = @as(c_uint, 1) << @as(c_int, 0);
pub const SDL_GPU_BUFFERUSAGE_INDEX = @as(c_uint, 1) << @as(c_int, 1);
pub const SDL_GPU_BUFFERUSAGE_INDIRECT = @as(c_uint, 1) << @as(c_int, 2);
pub const SDL_GPU_BUFFERUSAGE_GRAPHICS_STORAGE_READ = @as(c_uint, 1) << @as(c_int, 3);
pub const SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_READ = @as(c_uint, 1) << @as(c_int, 4);
pub const SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_WRITE = @as(c_uint, 1) << @as(c_int, 5);
pub const SDL_GPU_SHADERFORMAT_INVALID = @as(c_int, 0);
pub const SDL_GPU_SHADERFORMAT_PRIVATE = @as(c_uint, 1) << @as(c_int, 0);
pub const SDL_GPU_SHADERFORMAT_SPIRV = @as(c_uint, 1) << @as(c_int, 1);
pub const SDL_GPU_SHADERFORMAT_DXBC = @as(c_uint, 1) << @as(c_int, 2);
pub const SDL_GPU_SHADERFORMAT_DXIL = @as(c_uint, 1) << @as(c_int, 3);
pub const SDL_GPU_SHADERFORMAT_MSL = @as(c_uint, 1) << @as(c_int, 4);
pub const SDL_GPU_SHADERFORMAT_METALLIB = @as(c_uint, 1) << @as(c_int, 5);
pub const SDL_GPU_COLORCOMPONENT_R = @as(c_uint, 1) << @as(c_int, 0);
pub const SDL_GPU_COLORCOMPONENT_G = @as(c_uint, 1) << @as(c_int, 1);
pub const SDL_GPU_COLORCOMPONENT_B = @as(c_uint, 1) << @as(c_int, 2);
pub const SDL_GPU_COLORCOMPONENT_A = @as(c_uint, 1) << @as(c_int, 3);
pub const SDL_PROP_GPU_DEVICE_CREATE_DEBUGMODE_BOOLEAN = "SDL.gpu.device.create.debugmode";
pub const SDL_PROP_GPU_DEVICE_CREATE_PREFERLOWPOWER_BOOLEAN = "SDL.gpu.device.create.preferlowpower";
pub const SDL_PROP_GPU_DEVICE_CREATE_VERBOSE_BOOLEAN = "SDL.gpu.device.create.verbose";
pub const SDL_PROP_GPU_DEVICE_CREATE_NAME_STRING = "SDL.gpu.device.create.name";
pub const SDL_PROP_GPU_DEVICE_CREATE_FEATURE_CLIP_DISTANCE_BOOLEAN = "SDL.gpu.device.create.feature.clip_distance";
pub const SDL_PROP_GPU_DEVICE_CREATE_FEATURE_DEPTH_CLAMPING_BOOLEAN = "SDL.gpu.device.create.feature.depth_clamping";
pub const SDL_PROP_GPU_DEVICE_CREATE_FEATURE_INDIRECT_DRAW_FIRST_INSTANCE_BOOLEAN = "SDL.gpu.device.create.feature.indirect_draw_first_instance";
pub const SDL_PROP_GPU_DEVICE_CREATE_FEATURE_ANISOTROPY_BOOLEAN = "SDL.gpu.device.create.feature.anisotropy";
pub const SDL_PROP_GPU_DEVICE_CREATE_SHADERS_PRIVATE_BOOLEAN = "SDL.gpu.device.create.shaders.private";
pub const SDL_PROP_GPU_DEVICE_CREATE_SHADERS_SPIRV_BOOLEAN = "SDL.gpu.device.create.shaders.spirv";
pub const SDL_PROP_GPU_DEVICE_CREATE_SHADERS_DXBC_BOOLEAN = "SDL.gpu.device.create.shaders.dxbc";
pub const SDL_PROP_GPU_DEVICE_CREATE_SHADERS_DXIL_BOOLEAN = "SDL.gpu.device.create.shaders.dxil";
pub const SDL_PROP_GPU_DEVICE_CREATE_SHADERS_MSL_BOOLEAN = "SDL.gpu.device.create.shaders.msl";
pub const SDL_PROP_GPU_DEVICE_CREATE_SHADERS_METALLIB_BOOLEAN = "SDL.gpu.device.create.shaders.metallib";
pub const SDL_PROP_GPU_DEVICE_CREATE_D3D12_ALLOW_FEWER_RESOURCE_SLOTS_BOOLEAN = "SDL.gpu.device.create.d3d12.allowtier1resourcebinding";
pub const SDL_PROP_GPU_DEVICE_CREATE_D3D12_SEMANTIC_NAME_STRING = "SDL.gpu.device.create.d3d12.semantic";
pub const SDL_PROP_GPU_DEVICE_CREATE_VULKAN_REQUIRE_HARDWARE_ACCELERATION_BOOLEAN = "SDL.gpu.device.create.vulkan.requirehardwareacceleration";
pub const SDL_PROP_GPU_DEVICE_CREATE_VULKAN_OPTIONS_POINTER = "SDL.gpu.device.create.vulkan.options";
pub const SDL_PROP_GPU_DEVICE_NAME_STRING = "SDL.gpu.device.name";
pub const SDL_PROP_GPU_DEVICE_DRIVER_NAME_STRING = "SDL.gpu.device.driver_name";
pub const SDL_PROP_GPU_DEVICE_DRIVER_VERSION_STRING = "SDL.gpu.device.driver_version";
pub const SDL_PROP_GPU_DEVICE_DRIVER_INFO_STRING = "SDL.gpu.device.driver_info";
pub const SDL_PROP_GPU_COMPUTEPIPELINE_CREATE_NAME_STRING = "SDL.gpu.computepipeline.create.name";
pub const SDL_PROP_GPU_GRAPHICSPIPELINE_CREATE_NAME_STRING = "SDL.gpu.graphicspipeline.create.name";
pub const SDL_PROP_GPU_SAMPLER_CREATE_NAME_STRING = "SDL.gpu.sampler.create.name";
pub const SDL_PROP_GPU_SHADER_CREATE_NAME_STRING = "SDL.gpu.shader.create.name";
pub const SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_R_FLOAT = "SDL.gpu.texture.create.d3d12.clear.r";
pub const SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_G_FLOAT = "SDL.gpu.texture.create.d3d12.clear.g";
pub const SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_B_FLOAT = "SDL.gpu.texture.create.d3d12.clear.b";
pub const SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_A_FLOAT = "SDL.gpu.texture.create.d3d12.clear.a";
pub const SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_DEPTH_FLOAT = "SDL.gpu.texture.create.d3d12.clear.depth";
pub const SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_STENCIL_NUMBER = "SDL.gpu.texture.create.d3d12.clear.stencil";
pub const SDL_PROP_GPU_TEXTURE_CREATE_NAME_STRING = "SDL.gpu.texture.create.name";
pub const SDL_PROP_GPU_BUFFER_CREATE_NAME_STRING = "SDL.gpu.buffer.create.name";
pub const SDL_PROP_GPU_TRANSFERBUFFER_CREATE_NAME_STRING = "SDL.gpu.transferbuffer.create.name";
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const __lc_time_data = struct___lc_time_data;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const tagLC_ID = struct_tagLC_ID;
pub const _iobuf = struct__iobuf;
pub const _wfinddata32_t = struct__wfinddata32_t;
pub const _wfinddata32i64_t = struct__wfinddata32i64_t;
pub const _wfinddata64i32_t = struct__wfinddata64i32_t;
pub const _wfinddata64_t = struct__wfinddata64_t;
pub const _stat32 = struct__stat32;
pub const _stat32i64 = struct__stat32i64;
pub const _stat64i32 = struct__stat64i32;
pub const _stat64 = struct__stat64;
pub const tm = struct_tm;
pub const SDL_iconv_data_t = struct_SDL_iconv_data_t;
pub const SDL_GLContextState = struct_SDL_GLContextState;
