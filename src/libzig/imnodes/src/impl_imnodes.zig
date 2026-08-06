const __root = @This();
pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;
pub const __builtin_va_list = [*c]u8;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __gnuc_va_list;
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
    _locale_pctype: [*c]const c_ushort = null,
    _locale_mb_cur_max: c_int = 0,
    _locale_lc_codepage: c_uint = 0,
};
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct___lc_time_data = opaque {};
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo = null,
    mbcinfo: pthreadmbcinfo = null,
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort = 0,
    wCountry: c_ushort = 0,
    wCodePage: c_ushort = 0,
};
pub const LC_ID = struct_tagLC_ID;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub extern fn __local_stdio_printf_options() [*c]c_ulonglong;
pub extern fn __local_stdio_scanf_options() [*c]c_ulonglong;
pub const struct__iobuf = extern struct {
    _Placeholder: ?*anyopaque = null,
    pub const __mingw_fscanf = __root.__mingw_fscanf;
    pub const __mingw_vfscanf = __root.__mingw_vfscanf;
    pub const __mingw_fprintf = __root.__mingw_fprintf;
    pub const __mingw_vfprintf = __root.__mingw_vfprintf;
    pub const __ms_fscanf = __root.__ms_fscanf;
    pub const __ms_vfscanf = __root.__ms_vfscanf;
    pub const __ms_fprintf = __root.__ms_fprintf;
    pub const __ms_vfprintf = __root.__ms_vfprintf;
    pub const fprintf = __root.fprintf;
    pub const vfprintf = __root.vfprintf;
    pub const fscanf = __root.fscanf;
    pub const vfscanf = __root.vfscanf;
    pub const _filbuf = __root._filbuf;
    pub const clearerr = __root.clearerr;
    pub const fclose = __root.fclose;
    pub const feof = __root.feof;
    pub const ferror = __root.ferror;
    pub const fflush = __root.fflush;
    pub const fgetc = __root.fgetc;
    pub const fgetpos = __root.fgetpos;
    pub const fgetpos64 = __root.fgetpos64;
    pub const _fileno = __root._fileno;
    pub const fsetpos = __root.fsetpos;
    pub const fsetpos64 = __root.fsetpos64;
    pub const fseek = __root.fseek;
    pub const ftell = __root.ftell;
    pub const _fseeki64 = __root._fseeki64;
    pub const _ftelli64 = __root._ftelli64;
    pub const fseeko = __root.fseeko;
    pub const fseeko64 = __root.fseeko64;
    pub const ftello = __root.ftello;
    pub const ftello64 = __root.ftello64;
    pub const getc = __root.getc;
    pub const _getw = __root._getw;
    pub const _pclose = __root._pclose;
    pub const rewind = __root.rewind;
    pub const setbuf = __root.setbuf;
    pub const setvbuf = __root.setvbuf;
    pub const __mingw_fwscanf = __root.__mingw_fwscanf;
    pub const __mingw_vfwscanf = __root.__mingw_vfwscanf;
    pub const __mingw_fwprintf = __root.__mingw_fwprintf;
    pub const __mingw_vfwprintf = __root.__mingw_vfwprintf;
    pub const __ms_fwscanf = __root.__ms_fwscanf;
    pub const __ms_vfwscanf = __root.__ms_vfwscanf;
    pub const __ms_fwprintf = __root.__ms_fwprintf;
    pub const __ms_vfwprintf = __root.__ms_vfwprintf;
    pub const fwscanf = __root.fwscanf;
    pub const vfwscanf = __root.vfwscanf;
    pub const fwprintf = __root.fwprintf;
    pub const vfwprintf = __root.vfwprintf;
    pub const fgetwc = __root.fgetwc;
    pub const getwc = __root.getwc;
    pub const _fgetwc_nolock = __root._fgetwc_nolock;
    pub const _fgetc_nolock = __root._fgetc_nolock;
    pub const _getc_nolock = __root._getc_nolock;
    pub const _lock_file = __root._lock_file;
    pub const _unlock_file = __root._unlock_file;
    pub const _fclose_nolock = __root._fclose_nolock;
    pub const _fflush_nolock = __root._fflush_nolock;
    pub const _fseek_nolock = __root._fseek_nolock;
    pub const _ftell_nolock = __root._ftell_nolock;
    pub const _fseeki64_nolock = __root._fseeki64_nolock;
    pub const _ftelli64_nolock = __root._ftelli64_nolock;
    pub const fileno = __root.fileno;
    pub const getw = __root.getw;
    pub const clearerr_s = __root.clearerr_s;
    pub const _vfscanf_s_l = __root._vfscanf_s_l;
    pub const vfscanf_s = __root.vfscanf_s;
    pub const _fscanf_s_l = __root._fscanf_s_l;
    pub const fscanf_s = __root.fscanf_s;
    pub const _vfscanf_l = __root._vfscanf_l;
    pub const _fscanf_l = __root._fscanf_l;
    pub const _vfprintf_s_l = __root._vfprintf_s_l;
    pub const vfprintf_s = __root.vfprintf_s;
    pub const _fprintf_s_l = __root._fprintf_s_l;
    pub const fprintf_s = __root.fprintf_s;
    pub const _vfprintf_p_l = __root._vfprintf_p_l;
    pub const _vfprintf_p = __root._vfprintf_p;
    pub const _fprintf_p_l = __root._fprintf_p_l;
    pub const _fprintf_p = __root._fprintf_p;
    pub const _vfprintf_l = __root._vfprintf_l;
    pub const _fprintf_l = __root._fprintf_l;
    pub const _vfwscanf_s_l = __root._vfwscanf_s_l;
    pub const vfwscanf_s = __root.vfwscanf_s;
    pub const _fwscanf_s_l = __root._fwscanf_s_l;
    pub const fwscanf_s = __root.fwscanf_s;
    pub const _vfwprintf_s_l = __root._vfwprintf_s_l;
    pub const vfwprintf_s = __root.vfwprintf_s;
    pub const _fwprintf_s_l = __root._fwprintf_s_l;
    pub const fwprintf_s = __root.fwprintf_s;
    pub const igImFileClose = __root.igImFileClose;
    pub const igImFileGetSize = __root.igImFileGetSize;
    pub const filbuf = __root._filbuf;
    pub const fseeki64 = __root._fseeki64;
    pub const ftelli64 = __root._ftelli64;
    pub const nolock = __root._fgetwc_nolock;
    pub const file = __root._lock_file;
    pub const s = __root.clearerr_s;
    pub const l = __root._vfscanf_s_l;
    pub const p = __root._vfprintf_p;
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
pub extern fn printf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias _Dest: [*c]u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn vprintf(noalias _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn vsprintf(noalias _Dest: [*c]u8, noalias _Format: [*c]const u8, _Args: va_list) c_int;
pub extern fn fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(__stream: [*c]FILE, __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn vsscanf(noalias __source: [*c]const u8, noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn vscanf(__format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
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
pub extern fn fopen(noalias _Filename: [*c]const u8, noalias _Mode: [*c]const u8) [*c]FILE;
pub extern fn fopen64(noalias filename: [*c]const u8, noalias mode: [*c]const u8) [*c]FILE;
pub extern fn fputc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _fputchar(_Ch: c_int) c_int;
pub extern fn fputs(noalias _Str: [*c]const u8, noalias _File: [*c]FILE) c_int;
pub extern fn fread(noalias _DstBuf: ?*anyopaque, _ElementSize: usize, _Count: usize, noalias _File: [*c]FILE) usize;
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
pub extern fn fwrite(noalias _Str: ?*const anyopaque, _Size: usize, _Count: usize, noalias _File: [*c]FILE) usize;
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
pub extern fn vsnprintf(noalias __stream: [*c]u8, __n: usize, noalias __format: [*c]const u8, __local_argv: va_list) c_int;
pub extern fn snprintf(noalias __stream: [*c]u8, __n: usize, noalias __format: [*c]const u8, ...) c_int;
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
pub extern fn _putws(_Str: [*c]const wchar_t) c_int; // C:\zig\lib\libc\include\any-windows-any\stdio.h:1169:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scwprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _snwprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vsnwprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, _Args: va_list) c_int;
pub extern fn swprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn vswprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, _Args: va_list) c_int;
pub extern fn snwprintf(noalias s: [*c]wchar_t, n: usize, noalias format: [*c]const wchar_t, ...) c_int;
pub extern fn vsnwprintf(noalias s: [*c]wchar_t, n: usize, noalias format: [*c]const wchar_t, arg: va_list) c_int; // C:\zig\lib\libc\include\any-windows-any\stdio.h:1190:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swprintf(noalias _Dest: [*c]wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub fn _vswprintf(noalias arg__Dest: [*c]wchar_t, noalias arg__Format: [*c]const wchar_t, arg__Args: va_list) callconv(.c) c_int {
    var _Dest = arg__Dest;
    _ = &_Dest;
    var _Format = arg__Format;
    _ = &_Format;
    var _Args = arg__Args;
    _ = &_Args;
    return __stdio_common_vswprintf(__local_stdio_printf_options().*, _Dest, @bitCast(@as(c_longlong, -@as(c_int, 1))), _Format, null, _Args);
}
pub fn _vscwprintf(noalias arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    var _Result: c_int = __stdio_common_vswprintf(__local_stdio_printf_options().* | _CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR, null, 0, _Format, null, _ArgList);
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
    return __stdio_common_vfscanf(_CRT_INTERNAL_SCANF_SECURECRT, _File, _Format, _Locale, _ArgList);
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
    return _vfscanf_s_l(__acrt_iob_func(0), _Format, _Locale, _ArgList);
}
pub fn vscanf_s(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_s_l(__acrt_iob_func(0), _Format, null, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:60:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fscanf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:70:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fscanf_s(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:80:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scanf_s_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:90:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return __stdio_common_vfscanf(0, _File, _Format, _Locale, _ArgList);
}
pub fn _vscanf_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_l(__acrt_iob_func(0), _Format, _Locale, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:110:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fscanf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:119:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return __stdio_common_vsscanf(_CRT_INTERNAL_SCANF_SECURECRT, _Src, @bitCast(@as(c_longlong, -@as(c_int, 1))), _Format, _Locale, _ArgList);
}
pub fn vsscanf_s(arg__Src: [*c]const u8, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsscanf_s_l(_Src, _Format, null, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:137:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sscanf_s_l(_Src: [*c]const u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:146:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return __stdio_common_vsscanf(0, _Src, @bitCast(@as(c_longlong, -@as(c_int, 1))), _Format, _Locale, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:160:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sscanf_l(_Src: [*c]const u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:171:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf_s_l(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:180:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf_s(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:191:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return _vfprintf_s_l(__acrt_iob_func(1), _Format, _Locale, _ArgList);
}
pub fn vprintf_s(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_s_l(__acrt_iob_func(1), _Format, null, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:218:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:227:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_s_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:236:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fprintf_s(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:245:27: warning: TODO unable to translate variadic function, demoted to extern
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
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:263:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_c_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:272:27: warning: TODO unable to translate variadic function, demoted to extern
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
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:294:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:303:27: warning: TODO unable to translate variadic function, demoted to extern
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
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:321:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:330:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return _vfprintf_p_l(__acrt_iob_func(1), _Format, _Locale, _ArgList);
}
pub fn _vprintf_p(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_p_l(__acrt_iob_func(1), _Format, null, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:356:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_p_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:365:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_p(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:374:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_p_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:383:27: warning: TODO unable to translate variadic function, demoted to extern
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
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:401:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_p_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:410:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_p(_Dst: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vscprintf_p_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf_p(_CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR, null, 0, _Format, _Locale, _ArgList);
}
pub fn _vscprintf_p(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vscprintf_p_l(_Format, null, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:428:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scprintf_p_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:437:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return _vfprintf_l(__acrt_iob_func(1), _Format, _Locale, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:455:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:464:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return __stdio_common_vsprintf(_CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:478:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return _vsnprintf_l(_DstBuf, @bitCast(@as(c_longlong, -@as(c_int, 1))), _Format, _Locale, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:491:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_l(_DstBuf: [*c]u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vscprintf_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf(_CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR, null, 0, _Format, _Locale, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:505:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return __stdio_common_vfwscanf(__local_stdio_scanf_options().* | _CRT_INTERNAL_SCANF_SECURECRT, _File, _Format, _Locale, _ArgList);
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
    return _vfwscanf_s_l(__acrt_iob_func(0), _Format, _Locale, _ArgList);
}
pub fn vwscanf_s(arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwscanf_s_l(__acrt_iob_func(0), _Format, null, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:631:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fwscanf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:641:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwscanf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:651:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _wscanf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:661:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return __stdio_common_vswscanf(__local_stdio_scanf_options().* | _CRT_INTERNAL_SCANF_SECURECRT, _Src, @bitCast(@as(c_longlong, -@as(c_int, 1))), _Format, _Locale, _ArgList);
}
pub fn vswscanf_s(arg__Src: [*c]const wchar_t, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.c) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vswscanf_s_l(_Src, _Format, null, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:681:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swscanf_s_l(_Src: [*c]const wchar_t, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:690:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return __stdio_common_vswscanf(__local_stdio_scanf_options().* | _CRT_INTERNAL_SCANF_SECURECRT, _Src, _MaxCount, _Format, _Locale, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:704:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwscanf_s_l(_Src: [*c]const wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:713:27: warning: TODO unable to translate variadic function, demoted to extern
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
    return _vfwprintf_s_l(__acrt_iob_func(1), _Format, _Locale, _ArgList);
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
    return _vfwprintf_s_l(__acrt_iob_func(1), _Format, null, _ArgList);
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:739:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fwprintf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:748:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _wprintf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:757:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwprintf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:766:27: warning: TODO unable to translate variadic function, demoted to extern
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
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:784:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:793:27: warning: TODO unable to translate variadic function, demoted to extern
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
} // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:811:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int; // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:820:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwprintf_s(_DstBuf: [*c]wchar_t, _DstSize: usize, _MaxCount: usize, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wfopen_s(_File: [*c][*c]FILE, _Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t) errno_t;
pub extern fn _wfreopen_s(_File: [*c][*c]FILE, _Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t, _OldFile: [*c]FILE) errno_t;
pub extern fn _wtmpnam_s(_DstBuf: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _fread_nolock_s(_DstBuf: ?*anyopaque, _DstSize: usize, _ElementSize: usize, _Count: usize, _File: [*c]FILE) usize;
pub const max_align_t = extern struct {
    __aro_max_align_ll: c_longlong = 0,
    __aro_max_align_ld: c_longdouble = 0,
};
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
    x: f32 = 0,
    y: f32 = 0,
    z: f32 = 0,
    w: f32 = 0,
    pub const ImVec4_destroy = __root.ImVec4_destroy;
    pub const igGetColorU32_Vec4 = __root.igGetColorU32_Vec4;
    pub const igTextColored = __root.igTextColored;
    pub const igTextColoredV = __root.igTextColoredV;
    pub const igColorConvertFloat4ToU32 = __root.igColorConvertFloat4ToU32;
    pub const ImColor_ImColor_Vec4 = __root.ImColor_ImColor_Vec4;
    pub const igImLerp_Vec4 = __root.igImLerp_Vec4;
    pub const igImLengthSqr_Vec4 = __root.igImLengthSqr_Vec4;
    pub const ImRect_ImRect_Vec4 = __root.ImRect_ImRect_Vec4;
    pub const destroy = __root.ImVec4_destroy;
    pub const Vec4 = __root.igGetColorU32_Vec4;
};
pub const ImVec4_c = struct_ImVec4_c;
pub const ImU64 = c_ulonglong;
pub const ImTextureID = ImU64;
pub const struct_ImTextureRect = extern struct {
    x: c_ushort = 0,
    y: c_ushort = 0,
    w: c_ushort = 0,
    h: c_ushort = 0,
};
pub const ImTextureRect = struct_ImTextureRect;
pub const struct_ImVector_ImTextureRect = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImTextureRect = null,
};
pub const ImVector_ImTextureRect = struct_ImVector_ImTextureRect;
pub const struct_ImTextureData = extern struct {
    UniqueID: c_int = 0,
    Status: ImTextureStatus = @import("std").mem.zeroes(ImTextureStatus),
    BackendUserData: ?*anyopaque = null,
    QueueUserData: ?*anyopaque = null,
    TexID: ImTextureID = 0,
    Format: ImTextureFormat = @import("std").mem.zeroes(ImTextureFormat),
    Width: c_int = 0,
    Height: c_int = 0,
    BytesPerPixel: c_int = 0,
    Pixels: [*c]u8 = null,
    UsedRect: ImTextureRect = @import("std").mem.zeroes(ImTextureRect),
    UpdateRect: ImTextureRect = @import("std").mem.zeroes(ImTextureRect),
    Updates: ImVector_ImTextureRect = @import("std").mem.zeroes(ImVector_ImTextureRect),
    UnusedFrames: c_int = 0,
    RefCount: c_ushort = 0,
    UseColors: bool = false,
    WantDestroyNextFrame: bool = false,
    pub const ImTextureData_destroy = __root.ImTextureData_destroy;
    pub const ImTextureData_Create = __root.ImTextureData_Create;
    pub const ImTextureData_DestroyPixels = __root.ImTextureData_DestroyPixels;
    pub const ImTextureData_GetPixels = __root.ImTextureData_GetPixels;
    pub const ImTextureData_GetPixelsAt = __root.ImTextureData_GetPixelsAt;
    pub const ImTextureData_GetSizeInBytes = __root.ImTextureData_GetSizeInBytes;
    pub const ImTextureData_GetPitch = __root.ImTextureData_GetPitch;
    pub const ImTextureData_GetTexRef = __root.ImTextureData_GetTexRef;
    pub const ImTextureData_GetTexID = __root.ImTextureData_GetTexID;
    pub const ImTextureData_SetTexID = __root.ImTextureData_SetTexID;
    pub const ImTextureData_SetStatus = __root.ImTextureData_SetStatus;
    pub const igRegisterUserTexture = __root.igRegisterUserTexture;
    pub const igUnregisterUserTexture = __root.igUnregisterUserTexture;
    pub const igDebugNodeTexture = __root.igDebugNodeTexture;
    pub const igImFontAtlasTextureBlockFill = __root.igImFontAtlasTextureBlockFill;
    pub const igImFontAtlasTextureBlockCopy = __root.igImFontAtlasTextureBlockCopy;
    pub const igImTextureDataUpdateNewFrame = __root.igImTextureDataUpdateNewFrame;
    pub const igImTextureDataQueueUpload = __root.igImTextureDataQueueUpload;
    pub const destroy = __root.ImTextureData_destroy;
    pub const Create = __root.ImTextureData_Create;
    pub const DestroyPixels = __root.ImTextureData_DestroyPixels;
    pub const GetPixels = __root.ImTextureData_GetPixels;
    pub const GetPixelsAt = __root.ImTextureData_GetPixelsAt;
    pub const GetSizeInBytes = __root.ImTextureData_GetSizeInBytes;
    pub const GetPitch = __root.ImTextureData_GetPitch;
    pub const GetTexRef = __root.ImTextureData_GetTexRef;
    pub const GetTexID = __root.ImTextureData_GetTexID;
    pub const SetTexID = __root.ImTextureData_SetTexID;
    pub const SetStatus = __root.ImTextureData_SetStatus;
};
pub const ImTextureData = struct_ImTextureData;
pub const struct_ImTextureRef_c = extern struct {
    _TexData: [*c]ImTextureData = null,
    _TexID: ImTextureID = 0,
    pub const ImTextureRef_destroy = __root.ImTextureRef_destroy;
    pub const ImTextureRef_GetTexID = __root.ImTextureRef_GetTexID;
    pub const igImage = __root.igImage;
    pub const igImageWithBg = __root.igImageWithBg;
    pub const destroy = __root.ImTextureRef_destroy;
    pub const GetTexID = __root.ImTextureRef_GetTexID;
};
pub const ImTextureRef_c = struct_ImTextureRef_c;
pub const ImDrawIdx = c_ushort;
pub const struct_ImVector_ImDrawIdx = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImDrawIdx = null,
};
pub const ImVector_ImDrawIdx = struct_ImVector_ImDrawIdx;
pub const struct_ImVec2_c = extern struct {
    x: f32 = 0,
    y: f32 = 0,
    pub const ImVec2_destroy = __root.ImVec2_destroy;
    pub const igSetNextWindowPos = __root.igSetNextWindowPos;
    pub const igSetNextWindowSize = __root.igSetNextWindowSize;
    pub const igSetNextWindowSizeConstraints = __root.igSetNextWindowSizeConstraints;
    pub const igSetNextWindowContentSize = __root.igSetNextWindowContentSize;
    pub const igSetNextWindowScroll = __root.igSetNextWindowScroll;
    pub const igSetWindowPos_Vec2 = __root.igSetWindowPos_Vec2;
    pub const igSetWindowSize_Vec2 = __root.igSetWindowSize_Vec2;
    pub const igSetCursorScreenPos = __root.igSetCursorScreenPos;
    pub const igSetCursorPos = __root.igSetCursorPos;
    pub const igDummy = __root.igDummy;
    pub const igPushClipRect = __root.igPushClipRect;
    pub const igIsRectVisible_Nil = __root.igIsRectVisible_Nil;
    pub const igIsRectVisible_Vec2 = __root.igIsRectVisible_Vec2;
    pub const igIsMouseHoveringRect = __root.igIsMouseHoveringRect;
    pub const igIsMousePosValid = __root.igIsMousePosValid;
    pub const igImMin = __root.igImMin;
    pub const igImMax = __root.igImMax;
    pub const igImClamp = __root.igImClamp;
    pub const igImLerp_Vec2Float = __root.igImLerp_Vec2Float;
    pub const igImLerp_Vec2Vec2 = __root.igImLerp_Vec2Vec2;
    pub const igImLengthSqr_Vec2 = __root.igImLengthSqr_Vec2;
    pub const igImInvLength = __root.igImInvLength;
    pub const igImTrunc_Vec2 = __root.igImTrunc_Vec2;
    pub const igImFloor_Vec2 = __root.igImFloor_Vec2;
    pub const igImDot = __root.igImDot;
    pub const igImRotate = __root.igImRotate;
    pub const igImMul = __root.igImMul;
    pub const igImBezierCubicCalc = __root.igImBezierCubicCalc;
    pub const igImBezierCubicClosestPoint = __root.igImBezierCubicClosestPoint;
    pub const igImBezierCubicClosestPointCasteljau = __root.igImBezierCubicClosestPointCasteljau;
    pub const igImBezierQuadraticCalc = __root.igImBezierQuadraticCalc;
    pub const igImLineClosestPoint = __root.igImLineClosestPoint;
    pub const igImTriangleContainsPoint = __root.igImTriangleContainsPoint;
    pub const igImTriangleClosestPoint = __root.igImTriangleClosestPoint;
    pub const igImTriangleBarycentricCoords = __root.igImTriangleBarycentricCoords;
    pub const igImTriangleArea = __root.igImTriangleArea;
    pub const igImTriangleIsClockwise = __root.igImTriangleIsClockwise;
    pub const ImVec2ih_ImVec2ih_Vec2 = __root.ImVec2ih_ImVec2ih_Vec2;
    pub const ImRect_ImRect_Vec2 = __root.ImRect_ImRect_Vec2;
    pub const igUpdateHoveredWindowAndCaptureFlags = __root.igUpdateHoveredWindowAndCaptureFlags;
    pub const igFindHoveredWindowEx = __root.igFindHoveredWindowEx;
    pub const igFindHoveredViewportFromPlatformWindowStack = __root.igFindHoveredViewportFromPlatformWindowStack;
    pub const igItemSize_Vec2 = __root.igItemSize_Vec2;
    pub const igCalcItemSize = __root.igCalcItemSize;
    pub const igCalcWrapWidthForPos = __root.igCalcWrapWidthForPos;
    pub const igLogRenderedText = __root.igLogRenderedText;
    pub const igFindBestWindowPosForPopupEx = __root.igFindBestWindowPosForPopupEx;
    pub const igTeleportMousePos = __root.igTeleportMousePos;
    pub const igRenderText = __root.igRenderText;
    pub const igRenderTextWrapped = __root.igRenderTextWrapped;
    pub const igRenderTextClipped = __root.igRenderTextClipped;
    pub const igRenderFrame = __root.igRenderFrame;
    pub const igRenderFrameBorder = __root.igRenderFrameBorder;
    pub const igRenderMouseCursor = __root.igRenderMouseCursor;
    pub const igTreeNodeDrawLineToChildNode = __root.igTreeNodeDrawLineToChildNode;
    pub const imnodes_EditorContextResetPanning = __root.imnodes_EditorContextResetPanning;
    pub const destroy = __root.ImVec2_destroy;
    pub const Vec2 = __root.igSetWindowPos_Vec2;
    pub const Nil = __root.igIsRectVisible_Nil;
    pub const Vec2Float = __root.igImLerp_Vec2Float;
    pub const Vec2Vec2 = __root.igImLerp_Vec2Vec2;
    pub const EditorContextResetPanning = __root.imnodes_EditorContextResetPanning;
};
pub const ImVec2_c = struct_ImVec2_c;
pub const ImU32 = c_uint;
pub const struct_ImDrawVert = extern struct {
    pos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    uv: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    col: ImU32 = 0,
};
pub const ImDrawVert = struct_ImDrawVert;
pub const struct_ImVector_ImDrawVert = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImDrawVert = null,
};
pub const ImVector_ImDrawVert = struct_ImVector_ImDrawVert;
pub const ImDrawListFlags = c_int;
pub const ImFontAtlasFlags = c_int;
pub const struct_ImVector_ImTextureDataPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]ImTextureData = null,
};
pub const ImVector_ImTextureDataPtr = struct_ImVector_ImTextureDataPtr;
pub const struct_ImVector_float = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]f32 = null,
};
pub const ImVector_float = struct_ImVector_float;
pub const ImU16 = c_ushort;
pub const struct_ImVector_ImU16 = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImU16 = null,
};
pub const ImVector_ImU16 = struct_ImVector_ImU16; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:1596:18: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontGlyph = opaque {
    pub const ImFontGlyph_destroy = __root.ImFontGlyph_destroy;
    pub const destroy = __root.ImFontGlyph_destroy;
};
pub const ImFontGlyph = struct_ImFontGlyph;
pub const struct_ImVector_ImFontGlyph = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: ?*ImFontGlyph = null,
};
pub const ImVector_ImFontGlyph = struct_ImVector_ImFontGlyph; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:1679:18: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontBaked = opaque {
    pub const ImFontBaked_destroy = __root.ImFontBaked_destroy;
    pub const ImFontBaked_ClearOutputData = __root.ImFontBaked_ClearOutputData;
    pub const ImFontBaked_FindGlyph = __root.ImFontBaked_FindGlyph;
    pub const ImFontBaked_FindGlyphNoFallback = __root.ImFontBaked_FindGlyphNoFallback;
    pub const ImFontBaked_GetCharAdvance = __root.ImFontBaked_GetCharAdvance;
    pub const ImFontBaked_IsGlyphLoaded = __root.ImFontBaked_IsGlyphLoaded;
    pub const destroy = __root.ImFontBaked_destroy;
    pub const ClearOutputData = __root.ImFontBaked_ClearOutputData;
    pub const FindGlyph = __root.ImFontBaked_FindGlyph;
    pub const FindGlyphNoFallback = __root.ImFontBaked_FindGlyphNoFallback;
    pub const GetCharAdvance = __root.ImFontBaked_GetCharAdvance;
    pub const IsGlyphLoaded = __root.ImFontBaked_IsGlyphLoaded;
};
pub const ImFontBaked = struct_ImFontBaked;
pub const ImFontFlags = c_int;
pub const ImGuiID = c_uint;
pub const ImS8 = i8;
pub const ImWchar16 = c_ushort;
pub const ImWchar = ImWchar16;
pub const struct_ImFontLoader = extern struct {
    Name: [*c]const u8 = null,
    LoaderInit: ?*const fn (atlas: [*c]ImFontAtlas) callconv(.c) bool = null,
    LoaderShutdown: ?*const fn (atlas: [*c]ImFontAtlas) callconv(.c) void = null,
    FontSrcInit: ?*const fn (atlas: [*c]ImFontAtlas, src: [*c]ImFontConfig) callconv(.c) bool = null,
    FontSrcDestroy: ?*const fn (atlas: [*c]ImFontAtlas, src: [*c]ImFontConfig) callconv(.c) void = null,
    FontSrcContainsGlyph: ?*const fn (atlas: [*c]ImFontAtlas, src: [*c]ImFontConfig, codepoint: ImWchar) callconv(.c) bool = null,
    FontBakedInit: ?*const fn (atlas: [*c]ImFontAtlas, src: [*c]ImFontConfig, baked: ?*ImFontBaked, loader_data_for_baked_src: ?*anyopaque) callconv(.c) bool = null,
    FontBakedDestroy: ?*const fn (atlas: [*c]ImFontAtlas, src: [*c]ImFontConfig, baked: ?*ImFontBaked, loader_data_for_baked_src: ?*anyopaque) callconv(.c) void = null,
    FontBakedLoadGlyph: ?*const fn (atlas: [*c]ImFontAtlas, src: [*c]ImFontConfig, baked: ?*ImFontBaked, loader_data_for_baked_src: ?*anyopaque, codepoint: ImWchar, out_glyph: ?*ImFontGlyph, out_advance_x: [*c]f32) callconv(.c) bool = null,
    FontBakedSrcLoaderDataSize: usize = 0,
    pub const ImFontLoader_destroy = __root.ImFontLoader_destroy;
    pub const destroy = __root.ImFontLoader_destroy;
};
pub const ImFontLoader = struct_ImFontLoader;
pub const struct_ImFontConfig = extern struct {
    Name: [40]u8 = @import("std").mem.zeroes([40]u8),
    FontData: ?*anyopaque = null,
    FontDataSize: c_int = 0,
    FontDataOwnedByAtlas: bool = false,
    MergeMode: bool = false,
    PixelSnapH: bool = false,
    OversampleH: ImS8 = 0,
    OversampleV: ImS8 = 0,
    EllipsisChar: ImWchar = 0,
    SizePixels: f32 = 0,
    GlyphRanges: [*c]const ImWchar = null,
    GlyphExcludeRanges: [*c]const ImWchar = null,
    GlyphOffset: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    GlyphMinAdvanceX: f32 = 0,
    GlyphMaxAdvanceX: f32 = 0,
    GlyphExtraAdvanceX: f32 = 0,
    FontNo: ImU32 = 0,
    FontLoaderFlags: c_uint = 0,
    RasterizerMultiply: f32 = 0,
    RasterizerDensity: f32 = 0,
    ExtraSizeScale: f32 = 0,
    Flags: ImFontFlags = 0,
    DstFont: [*c]ImFont = null,
    FontLoader: [*c]const ImFontLoader = null,
    FontLoaderData: ?*anyopaque = null,
    pub const ImFontConfig_destroy = __root.ImFontConfig_destroy;
    pub const igImFontAtlasBuildGetOversampleFactors = __root.igImFontAtlasBuildGetOversampleFactors;
    pub const destroy = __root.ImFontConfig_destroy;
};
pub const ImFontConfig = struct_ImFontConfig;
pub const struct_ImVector_ImFontConfigPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]ImFontConfig = null,
};
pub const ImVector_ImFontConfigPtr = struct_ImVector_ImFontConfigPtr;
pub const ImU8 = u8;
const union_unnamed_1 = extern union {
    val_i: c_int,
    val_f: f32,
    val_p: ?*anyopaque,
};
pub const struct_ImGuiStoragePair = extern struct {
    key: ImGuiID = 0,
    unnamed_0: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
    pub const ImGuiStoragePair_destroy = __root.ImGuiStoragePair_destroy;
    pub const igImLowerBound = __root.igImLowerBound;
    pub const destroy = __root.ImGuiStoragePair_destroy;
};
pub const ImGuiStoragePair = struct_ImGuiStoragePair;
pub const struct_ImVector_ImGuiStoragePair = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiStoragePair = null,
};
pub const ImVector_ImGuiStoragePair = struct_ImVector_ImGuiStoragePair;
pub const struct_ImGuiStorage = extern struct {
    Data: ImVector_ImGuiStoragePair = @import("std").mem.zeroes(ImVector_ImGuiStoragePair),
    pub const igSetStateStorage = __root.igSetStateStorage;
    pub const ImGuiStorage_Clear = __root.ImGuiStorage_Clear;
    pub const ImGuiStorage_GetInt = __root.ImGuiStorage_GetInt;
    pub const ImGuiStorage_SetInt = __root.ImGuiStorage_SetInt;
    pub const ImGuiStorage_GetBool = __root.ImGuiStorage_GetBool;
    pub const ImGuiStorage_SetBool = __root.ImGuiStorage_SetBool;
    pub const ImGuiStorage_GetFloat = __root.ImGuiStorage_GetFloat;
    pub const ImGuiStorage_SetFloat = __root.ImGuiStorage_SetFloat;
    pub const ImGuiStorage_GetVoidPtr = __root.ImGuiStorage_GetVoidPtr;
    pub const ImGuiStorage_SetVoidPtr = __root.ImGuiStorage_SetVoidPtr;
    pub const ImGuiStorage_GetIntRef = __root.ImGuiStorage_GetIntRef;
    pub const ImGuiStorage_GetBoolRef = __root.ImGuiStorage_GetBoolRef;
    pub const ImGuiStorage_GetFloatRef = __root.ImGuiStorage_GetFloatRef;
    pub const ImGuiStorage_GetVoidPtrRef = __root.ImGuiStorage_GetVoidPtrRef;
    pub const ImGuiStorage_BuildSortByKey = __root.ImGuiStorage_BuildSortByKey;
    pub const ImGuiStorage_SetAllInt = __root.ImGuiStorage_SetAllInt;
    pub const igDebugNodeStorage = __root.igDebugNodeStorage;
    pub const Clear = __root.ImGuiStorage_Clear;
    pub const GetInt = __root.ImGuiStorage_GetInt;
    pub const SetInt = __root.ImGuiStorage_SetInt;
    pub const GetBool = __root.ImGuiStorage_GetBool;
    pub const SetBool = __root.ImGuiStorage_SetBool;
    pub const GetFloat = __root.ImGuiStorage_GetFloat;
    pub const SetFloat = __root.ImGuiStorage_SetFloat;
    pub const GetVoidPtr = __root.ImGuiStorage_GetVoidPtr;
    pub const SetVoidPtr = __root.ImGuiStorage_SetVoidPtr;
    pub const GetIntRef = __root.ImGuiStorage_GetIntRef;
    pub const GetBoolRef = __root.ImGuiStorage_GetBoolRef;
    pub const GetFloatRef = __root.ImGuiStorage_GetFloatRef;
    pub const GetVoidPtrRef = __root.ImGuiStorage_GetVoidPtrRef;
    pub const BuildSortByKey = __root.ImGuiStorage_BuildSortByKey;
    pub const SetAllInt = __root.ImGuiStorage_SetAllInt;
};
pub const ImGuiStorage = struct_ImGuiStorage;
pub const struct_ImFont = extern struct {
    LastBaked: ?*ImFontBaked = null,
    OwnerAtlas: [*c]ImFontAtlas = null,
    Flags: ImFontFlags = 0,
    CurrentRasterizerDensity: f32 = 0,
    FontId: ImGuiID = 0,
    LegacySize: f32 = 0,
    Sources: ImVector_ImFontConfigPtr = @import("std").mem.zeroes(ImVector_ImFontConfigPtr),
    EllipsisChar: ImWchar = 0,
    FallbackChar: ImWchar = 0,
    Used8kPagesMap: [1]ImU8 = @import("std").mem.zeroes([1]ImU8),
    EllipsisAutoBake: bool = false,
    RemapPairs: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    pub const igPushFont = __root.igPushFont;
    pub const ImFont_destroy = __root.ImFont_destroy;
    pub const ImFont_IsGlyphInFont = __root.ImFont_IsGlyphInFont;
    pub const ImFont_IsLoaded = __root.ImFont_IsLoaded;
    pub const ImFont_GetDebugName = __root.ImFont_GetDebugName;
    pub const ImFont_GetFontBaked = __root.ImFont_GetFontBaked;
    pub const ImFont_CalcTextSizeA = __root.ImFont_CalcTextSizeA;
    pub const ImFont_CalcWordWrapPosition = __root.ImFont_CalcWordWrapPosition;
    pub const ImFont_RenderChar = __root.ImFont_RenderChar;
    pub const ImFont_RenderText = __root.ImFont_RenderText;
    pub const ImFont_ClearOutputData = __root.ImFont_ClearOutputData;
    pub const ImFont_AddRemapChar = __root.ImFont_AddRemapChar;
    pub const ImFont_IsGlyphRangeUnused = __root.ImFont_IsGlyphRangeUnused;
    pub const igImFontCalcTextSizeEx = __root.igImFontCalcTextSizeEx;
    pub const igImFontCalcWordWrapPositionEx = __root.igImFontCalcWordWrapPositionEx;
    pub const igSetCurrentFont = __root.igSetCurrentFont;
    pub const igDebugNodeFont = __root.igDebugNodeFont;
    pub const igDebugNodeFontGlyphsForSrcMask = __root.igDebugNodeFontGlyphsForSrcMask;
    pub const igDebugNodeFontGlyph = __root.igDebugNodeFontGlyph;
    pub const destroy = __root.ImFont_destroy;
    pub const IsGlyphInFont = __root.ImFont_IsGlyphInFont;
    pub const IsLoaded = __root.ImFont_IsLoaded;
    pub const GetDebugName = __root.ImFont_GetDebugName;
    pub const GetFontBaked = __root.ImFont_GetFontBaked;
    pub const CalcTextSizeA = __root.ImFont_CalcTextSizeA;
    pub const CalcWordWrapPosition = __root.ImFont_CalcWordWrapPosition;
    pub const RenderChar = __root.ImFont_RenderChar;
    pub const RenderText = __root.ImFont_RenderText;
    pub const ClearOutputData = __root.ImFont_ClearOutputData;
    pub const AddRemapChar = __root.ImFont_AddRemapChar;
    pub const IsGlyphRangeUnused = __root.ImFont_IsGlyphRangeUnused;
};
pub const ImFont = struct_ImFont;
pub const struct_ImVector_ImFontPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]ImFont = null,
};
pub const ImVector_ImFontPtr = struct_ImVector_ImFontPtr;
pub const struct_ImVector_ImFontConfig = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImFontConfig = null,
};
pub const ImVector_ImFontConfig = struct_ImVector_ImFontConfig;
pub const struct_ImVector_ImDrawListSharedDataPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]ImDrawListSharedData = null,
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
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: ?*stbrp_node_im = null,
};
pub const ImVector_stbrp_node_im = struct_ImVector_stbrp_node_im; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:3875:9: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontAtlasRectEntry = opaque {};
pub const ImFontAtlasRectEntry = struct_ImFontAtlasRectEntry;
pub const struct_ImVector_ImFontAtlasRectEntry = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: ?*ImFontAtlasRectEntry = null,
};
pub const ImVector_ImFontAtlasRectEntry = struct_ImVector_ImFontAtlasRectEntry;
pub const struct_ImVector_unsigned_char = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]u8 = null,
};
pub const ImVector_unsigned_char = struct_ImVector_unsigned_char;
pub const struct_ImVec2i_c = extern struct {
    x: c_int = 0,
    y: c_int = 0,
    pub const ImVec2i_destroy = __root.ImVec2i_destroy;
    pub const destroy = __root.ImVec2i_destroy;
};
pub const ImVec2i_c = struct_ImVec2i_c;
pub const struct_ImVector_ImFontBakedPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]?*ImFontBaked = null,
};
pub const ImVector_ImFontBakedPtr = struct_ImVector_ImFontBakedPtr;
pub const struct_ImStableVector_ImFontBaked__32 = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
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
    RectsIndexFreeListStart: c_int = 0,
    RectsPackedCount: c_int = 0,
    RectsPackedSurface: c_int = 0,
    RectsDiscardedCount: c_int = 0,
    RectsDiscardedSurface: c_int = 0,
    FrameCount: c_int = 0,
    MaxRectSize: ImVec2i_c = @import("std").mem.zeroes(ImVec2i_c),
    MaxRectBounds: ImVec2i_c = @import("std").mem.zeroes(ImVec2i_c),
    LockDisableResize: bool = false,
    PreloadedAllGlyphsRanges: bool = false,
    BakedPool: ImStableVector_ImFontBaked__32 = @import("std").mem.zeroes(ImStableVector_ImFontBaked__32),
    BakedMap: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    BakedDiscardedCount: c_int = 0,
    PackIdMouseCursors: ImFontAtlasRectId = 0,
    PackIdLinesTexData: ImFontAtlasRectId = 0,
    pub const ImFontAtlasBuilder_destroy = __root.ImFontAtlasBuilder_destroy;
    pub const destroy = __root.ImFontAtlasBuilder_destroy;
};
pub const ImFontAtlasBuilder = struct_ImFontAtlasBuilder;
pub const ImGuiConfigFlags = c_int;
pub const ImGuiBackendFlags = c_int;
pub const ImGuiColorEditFlags = c_int;
pub const ImGuiKeyChord = c_int;
pub const struct_ImGuiKeyData = extern struct {
    Down: bool = false,
    DownDuration: f32 = 0,
    DownDurationPrev: f32 = 0,
    AnalogValue: f32 = 0,
};
pub const ImGuiKeyData = struct_ImGuiKeyData;
pub const struct_ImVector_ImWchar = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImWchar = null,
    pub const ImVector_ImWchar_destroy = __root.ImVector_ImWchar_destroy;
    pub const ImVector_ImWchar_Init = __root.ImVector_ImWchar_Init;
    pub const ImVector_ImWchar_UnInit = __root.ImVector_ImWchar_UnInit;
    pub const destroy = __root.ImVector_ImWchar_destroy;
    pub const Init = __root.ImVector_ImWchar_Init;
    pub const UnInit = __root.ImVector_ImWchar_UnInit;
};
pub const ImVector_ImWchar = struct_ImVector_ImWchar;
pub const struct_ImGuiIO = extern struct {
    ConfigFlags: ImGuiConfigFlags = 0,
    BackendFlags: ImGuiBackendFlags = 0,
    DisplaySize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DisplayFramebufferScale: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DeltaTime: f32 = 0,
    IniSavingRate: f32 = 0,
    IniFilename: [*c]const u8 = null,
    LogFilename: [*c]const u8 = null,
    UserData: ?*anyopaque = null,
    Fonts: [*c]ImFontAtlas = null,
    FontDefault: [*c]ImFont = null,
    FontAllowUserScaling: bool = false,
    ConfigNavSwapGamepadButtons: bool = false,
    ConfigNavMoveSetMousePos: bool = false,
    ConfigNavCaptureKeyboard: bool = false,
    ConfigNavEscapeClearFocusItem: bool = false,
    ConfigNavEscapeClearFocusWindow: bool = false,
    ConfigNavCursorVisibleAuto: bool = false,
    ConfigNavCursorVisibleAlways: bool = false,
    ConfigDockingNoSplit: bool = false,
    ConfigDockingNoDockingOver: bool = false,
    ConfigDockingWithShift: bool = false,
    ConfigDockingAlwaysTabBar: bool = false,
    ConfigDockingTransparentPayload: bool = false,
    ConfigViewportsNoAutoMerge: bool = false,
    ConfigViewportsNoTaskBarIcon: bool = false,
    ConfigViewportsNoDecoration: bool = false,
    ConfigViewportsNoDefaultParent: bool = false,
    ConfigViewportsPlatformFocusSetsImGuiFocus: bool = false,
    ConfigDpiScaleFonts: bool = false,
    ConfigDpiScaleViewports: bool = false,
    ConfigMacOSXBehaviors: bool = false,
    ConfigInputTrickleEventQueue: bool = false,
    ConfigInputTextCursorBlink: bool = false,
    ConfigInputTextEnterKeepActive: bool = false,
    ConfigColorEditFlags: ImGuiColorEditFlags = 0,
    ConfigDragClickToInputText: bool = false,
    ConfigWindowsResizeFromEdges: bool = false,
    ConfigWindowsMoveFromTitleBarOnly: bool = false,
    ConfigWindowsCopyContentsWithCtrlC: bool = false,
    ConfigScrollbarScrollByPage: bool = false,
    ConfigIniSettingsSaveLastUsedDate: bool = false,
    ConfigIniSettingsAutoDiscardMonths: c_int = 0,
    ConfigDebugIniSettings: bool = false,
    MouseDrawCursor: bool = false,
    ConfigMemoryCompactTimer: f32 = 0,
    MouseDoubleClickTime: f32 = 0,
    MouseDoubleClickMaxDist: f32 = 0,
    MouseSingleClickDelay: f32 = 0,
    MouseDragThreshold: f32 = 0,
    KeyRepeatDelay: f32 = 0,
    KeyRepeatRate: f32 = 0,
    ConfigErrorRecovery: bool = false,
    ConfigErrorRecoveryEnableAssert: bool = false,
    ConfigErrorRecoveryEnableDebugLog: bool = false,
    ConfigErrorRecoveryEnableTooltip: bool = false,
    ConfigDebugIsDebuggerPresent: bool = false,
    ConfigDebugHighlightIdConflicts: bool = false,
    ConfigDebugHighlightIdConflictsShowItemPicker: bool = false,
    ConfigDebugBeginReturnValueOnce: bool = false,
    ConfigDebugBeginReturnValueLoop: bool = false,
    ConfigDebugIgnoreFocusLoss: bool = false,
    BackendPlatformName: [*c]const u8 = null,
    BackendRendererName: [*c]const u8 = null,
    BackendPlatformUserData: ?*anyopaque = null,
    BackendRendererUserData: ?*anyopaque = null,
    BackendLanguageUserData: ?*anyopaque = null,
    WantCaptureMouse: bool = false,
    WantCaptureKeyboard: bool = false,
    WantTextInput: bool = false,
    WantSetMousePos: bool = false,
    WantSaveIniSettings: bool = false,
    NavActive: bool = false,
    NavVisible: bool = false,
    Framerate: f32 = 0,
    MetricsRenderVertices: c_int = 0,
    MetricsRenderIndices: c_int = 0,
    MetricsRenderWindows: c_int = 0,
    MetricsActiveWindows: c_int = 0,
    MouseDelta: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Ctx: [*c]ImGuiContext = null,
    MousePos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    MouseDown: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheel: f32 = 0,
    MouseWheelH: f32 = 0,
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
    MouseHoveredViewport: ImGuiID = 0,
    KeyCtrl: bool = false,
    KeyShift: bool = false,
    KeyAlt: bool = false,
    KeySuper: bool = false,
    KeyMods: ImGuiKeyChord = 0,
    KeysData: [155]ImGuiKeyData = @import("std").mem.zeroes([155]ImGuiKeyData),
    WantCaptureMouseUnlessPopupClose: bool = false,
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
    MouseWheelRequestAxisSwap: bool = false,
    MouseCtrlLeftAsRightClick: bool = false,
    MouseDownDuration: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDownDurationPrev: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDragMaxDistanceAbs: [5]ImVec2_c = @import("std").mem.zeroes([5]ImVec2_c),
    MouseDragMaxDistanceSqr: [5]f32 = @import("std").mem.zeroes([5]f32),
    PenPressure: f32 = 0,
    AppFocusLost: bool = false,
    AppAcceptingEvents: bool = false,
    InputQueueSurrogate: ImWchar16 = 0,
    InputQueueCharacters: ImVector_ImWchar = @import("std").mem.zeroes(ImVector_ImWchar),
    pub const ImGuiIO_AddKeyEvent = __root.ImGuiIO_AddKeyEvent;
    pub const ImGuiIO_AddKeyAnalogEvent = __root.ImGuiIO_AddKeyAnalogEvent;
    pub const ImGuiIO_AddMousePosEvent = __root.ImGuiIO_AddMousePosEvent;
    pub const ImGuiIO_AddMouseButtonEvent = __root.ImGuiIO_AddMouseButtonEvent;
    pub const ImGuiIO_AddMouseWheelEvent = __root.ImGuiIO_AddMouseWheelEvent;
    pub const ImGuiIO_AddMouseSourceEvent = __root.ImGuiIO_AddMouseSourceEvent;
    pub const ImGuiIO_AddMouseViewportEvent = __root.ImGuiIO_AddMouseViewportEvent;
    pub const ImGuiIO_AddFocusEvent = __root.ImGuiIO_AddFocusEvent;
    pub const ImGuiIO_AddInputCharacter = __root.ImGuiIO_AddInputCharacter;
    pub const ImGuiIO_AddInputCharacterUTF16 = __root.ImGuiIO_AddInputCharacterUTF16;
    pub const ImGuiIO_AddInputCharactersUTF8 = __root.ImGuiIO_AddInputCharactersUTF8;
    pub const ImGuiIO_SetKeyEventNativeData = __root.ImGuiIO_SetKeyEventNativeData;
    pub const ImGuiIO_SetAppAcceptingEvents = __root.ImGuiIO_SetAppAcceptingEvents;
    pub const ImGuiIO_ClearEventsQueue = __root.ImGuiIO_ClearEventsQueue;
    pub const ImGuiIO_ClearInputKeys = __root.ImGuiIO_ClearInputKeys;
    pub const ImGuiIO_ClearInputMouse = __root.ImGuiIO_ClearInputMouse;
    pub const ImGuiIO_destroy = __root.ImGuiIO_destroy;
    pub const AddKeyEvent = __root.ImGuiIO_AddKeyEvent;
    pub const AddKeyAnalogEvent = __root.ImGuiIO_AddKeyAnalogEvent;
    pub const AddMousePosEvent = __root.ImGuiIO_AddMousePosEvent;
    pub const AddMouseButtonEvent = __root.ImGuiIO_AddMouseButtonEvent;
    pub const AddMouseWheelEvent = __root.ImGuiIO_AddMouseWheelEvent;
    pub const AddMouseSourceEvent = __root.ImGuiIO_AddMouseSourceEvent;
    pub const AddMouseViewportEvent = __root.ImGuiIO_AddMouseViewportEvent;
    pub const AddFocusEvent = __root.ImGuiIO_AddFocusEvent;
    pub const AddInputCharacter = __root.ImGuiIO_AddInputCharacter;
    pub const AddInputCharacterUTF16 = __root.ImGuiIO_AddInputCharacterUTF16;
    pub const AddInputCharactersUTF8 = __root.ImGuiIO_AddInputCharactersUTF8;
    pub const SetKeyEventNativeData = __root.ImGuiIO_SetKeyEventNativeData;
    pub const SetAppAcceptingEvents = __root.ImGuiIO_SetAppAcceptingEvents;
    pub const ClearEventsQueue = __root.ImGuiIO_ClearEventsQueue;
    pub const ClearInputKeys = __root.ImGuiIO_ClearInputKeys;
    pub const ClearInputMouse = __root.ImGuiIO_ClearInputMouse;
    pub const destroy = __root.ImGuiIO_destroy;
};
pub const ImGuiIO = struct_ImGuiIO;
pub const ImGuiViewportFlags = c_int;
pub const struct_ImVector_ImDrawListPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]ImDrawList = null,
};
pub const ImVector_ImDrawListPtr = struct_ImVector_ImDrawListPtr;
pub const struct_ImDrawData = extern struct {
    Valid: bool = false,
    FrameCount: c_int = 0,
    TotalIdxCount: c_int = 0,
    TotalVtxCount: c_int = 0,
    CmdLists: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
    DisplayPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DisplaySize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    FramebufferScale: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    OwnerViewport: [*c]ImGuiViewport = null,
    Textures: [*c]ImVector_ImTextureDataPtr = null,
    pub const ImDrawData_destroy = __root.ImDrawData_destroy;
    pub const ImDrawData_Clear = __root.ImDrawData_Clear;
    pub const ImDrawData_AddDrawList = __root.ImDrawData_AddDrawList;
    pub const ImDrawData_DeIndexAllBuffers = __root.ImDrawData_DeIndexAllBuffers;
    pub const ImDrawData_ScaleClipRects = __root.ImDrawData_ScaleClipRects;
    pub const igAddDrawListToDrawDataEx = __root.igAddDrawListToDrawDataEx;
    pub const destroy = __root.ImDrawData_destroy;
    pub const Clear = __root.ImDrawData_Clear;
    pub const AddDrawList = __root.ImDrawData_AddDrawList;
    pub const DeIndexAllBuffers = __root.ImDrawData_DeIndexAllBuffers;
    pub const ScaleClipRects = __root.ImDrawData_ScaleClipRects;
};
pub const ImDrawData = struct_ImDrawData;
pub const struct_ImGuiViewport = extern struct {
    ID: ImGuiID = 0,
    Flags: ImGuiViewportFlags = 0,
    Pos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Size: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    FramebufferScale: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DpiScale: f32 = 0,
    ParentViewportId: ImGuiID = 0,
    ParentViewport: [*c]ImGuiViewport = null,
    DrawData: [*c]ImDrawData = null,
    RendererUserData: ?*anyopaque = null,
    PlatformUserData: ?*anyopaque = null,
    PlatformIconData: ?*anyopaque = null,
    PlatformHandle: ?*anyopaque = null,
    PlatformHandleRaw: ?*anyopaque = null,
    PlatformWindowCreated: bool = false,
    PlatformRequestMove: bool = false,
    PlatformRequestResize: bool = false,
    PlatformRequestClose: bool = false,
    pub const igGetBackgroundDrawList = __root.igGetBackgroundDrawList;
    pub const igGetForegroundDrawList_ViewportPtr = __root.igGetForegroundDrawList_ViewportPtr;
    pub const ImGuiViewport_destroy = __root.ImGuiViewport_destroy;
    pub const ImGuiViewport_GetCenter = __root.ImGuiViewport_GetCenter;
    pub const ImGuiViewport_GetWorkCenter = __root.ImGuiViewport_GetWorkCenter;
    pub const ImGuiViewport_GetDebugName = __root.ImGuiViewport_GetDebugName;
    pub const igGetViewportPlatformMonitor = __root.igGetViewportPlatformMonitor;
    pub const igBeginDragDropTargetViewport = __root.igBeginDragDropTargetViewport;
    pub const ViewportPtr = __root.igGetForegroundDrawList_ViewportPtr;
    pub const destroy = __root.ImGuiViewport_destroy;
    pub const GetCenter = __root.ImGuiViewport_GetCenter;
    pub const GetWorkCenter = __root.ImGuiViewport_GetWorkCenter;
    pub const GetDebugName = __root.ImGuiViewport_GetDebugName;
};
pub const ImGuiViewport = struct_ImGuiViewport;
pub const struct_ImGuiPlatformImeData = extern struct {
    WantVisible: bool = false,
    WantTextInput: bool = false,
    InputPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    InputLineHeight: f32 = 0,
    ViewportId: ImGuiID = 0,
    pub const ImGuiPlatformImeData_destroy = __root.ImGuiPlatformImeData_destroy;
    pub const destroy = __root.ImGuiPlatformImeData_destroy;
};
pub const ImGuiPlatformImeData = struct_ImGuiPlatformImeData;
pub const struct_ImGuiPlatformMonitor = extern struct {
    MainPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    MainSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WorkSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DpiScale: f32 = 0,
    PlatformHandle: ?*anyopaque = null,
    pub const ImGuiPlatformMonitor_destroy = __root.ImGuiPlatformMonitor_destroy;
    pub const igDebugNodePlatformMonitor = __root.igDebugNodePlatformMonitor;
    pub const destroy = __root.ImGuiPlatformMonitor_destroy;
};
pub const ImGuiPlatformMonitor = struct_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiPlatformMonitor = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiPlatformMonitor = null,
};
pub const ImVector_ImGuiPlatformMonitor = struct_ImVector_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiViewportPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]ImGuiViewport = null,
};
pub const ImVector_ImGuiViewportPtr = struct_ImVector_ImGuiViewportPtr;
pub const struct_ImGuiPlatformIO = extern struct {
    Platform_GetClipboardTextFn: ?*const fn (ctx: [*c]ImGuiContext) callconv(.c) [*c]const u8 = null,
    Platform_SetClipboardTextFn: ?*const fn (ctx: [*c]ImGuiContext, text: [*c]const u8) callconv(.c) void = null,
    Platform_ClipboardUserData: ?*anyopaque = null,
    Platform_OpenInShellFn: ?*const fn (ctx: [*c]ImGuiContext, path: [*c]const u8) callconv(.c) bool = null,
    Platform_OpenInShellUserData: ?*anyopaque = null,
    Platform_SetImeDataFn: ?*const fn (ctx: [*c]ImGuiContext, viewport: [*c]ImGuiViewport, data: [*c]ImGuiPlatformImeData) callconv(.c) void = null,
    Platform_ImeUserData: ?*anyopaque = null,
    Platform_LocaleDecimalPoint: ImWchar = 0,
    Platform_SessionDate: c_int = 0,
    Renderer_TextureMaxWidth: c_int = 0,
    Renderer_TextureMaxHeight: c_int = 0,
    Renderer_RenderState: ?*anyopaque = null,
    DrawCallback_ResetRenderState: ImDrawCallback = null,
    DrawCallback_SetSamplerLinear: ImDrawCallback = null,
    DrawCallback_SetSamplerNearest: ImDrawCallback = null,
    Platform_CreateWindow: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) void = null,
    Platform_DestroyWindow: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) void = null,
    Platform_ShowWindow: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) void = null,
    Platform_SetWindowPos: ?*const fn (vp: [*c]ImGuiViewport, pos: ImVec2_c) callconv(.c) void = null,
    Platform_GetWindowPos: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) ImVec2_c = null,
    Platform_SetWindowSize: ?*const fn (vp: [*c]ImGuiViewport, size: ImVec2_c) callconv(.c) void = null,
    Platform_GetWindowSize: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) ImVec2_c = null,
    Platform_GetWindowFramebufferScale: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) ImVec2_c = null,
    Platform_SetWindowFocus: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) void = null,
    Platform_GetWindowFocus: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) bool = null,
    Platform_GetWindowMinimized: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) bool = null,
    Platform_SetWindowTitle: ?*const fn (vp: [*c]ImGuiViewport, str: [*c]const u8) callconv(.c) void = null,
    Platform_SetWindowAlpha: ?*const fn (vp: [*c]ImGuiViewport, alpha: f32) callconv(.c) void = null,
    Platform_UpdateWindow: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) void = null,
    Platform_RenderWindow: ?*const fn (vp: [*c]ImGuiViewport, render_arg: ?*anyopaque) callconv(.c) void = null,
    Platform_SwapBuffers: ?*const fn (vp: [*c]ImGuiViewport, render_arg: ?*anyopaque) callconv(.c) void = null,
    Platform_GetWindowDpiScale: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) f32 = null,
    Platform_OnChangedViewport: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) void = null,
    Platform_GetWindowWorkAreaInsets: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) ImVec4_c = null,
    Platform_CreateVkSurface: ?*const fn (vp: [*c]ImGuiViewport, vk_inst: ImU64, vk_allocators: ?*const anyopaque, out_vk_surface: [*c]ImU64) callconv(.c) c_int = null,
    Renderer_CreateWindow: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) void = null,
    Renderer_DestroyWindow: ?*const fn (vp: [*c]ImGuiViewport) callconv(.c) void = null,
    Renderer_SetWindowSize: ?*const fn (vp: [*c]ImGuiViewport, size: ImVec2_c) callconv(.c) void = null,
    Renderer_RenderWindow: ?*const fn (vp: [*c]ImGuiViewport, render_arg: ?*anyopaque) callconv(.c) void = null,
    Renderer_SwapBuffers: ?*const fn (vp: [*c]ImGuiViewport, render_arg: ?*anyopaque) callconv(.c) void = null,
    Monitors: ImVector_ImGuiPlatformMonitor = @import("std").mem.zeroes(ImVector_ImGuiPlatformMonitor),
    Textures: ImVector_ImTextureDataPtr = @import("std").mem.zeroes(ImVector_ImTextureDataPtr),
    Viewports: ImVector_ImGuiViewportPtr = @import("std").mem.zeroes(ImVector_ImGuiViewportPtr),
    pub const ImGuiPlatformIO_destroy = __root.ImGuiPlatformIO_destroy;
    pub const ImGuiPlatformIO_ClearPlatformHandlers = __root.ImGuiPlatformIO_ClearPlatformHandlers;
    pub const ImGuiPlatformIO_ClearRendererHandlers = __root.ImGuiPlatformIO_ClearRendererHandlers;
    pub const ImGuiPlatformIO_Set_Platform_GetWindowPos = __root.ImGuiPlatformIO_Set_Platform_GetWindowPos;
    pub const ImGuiPlatformIO_Set_Platform_GetWindowSize = __root.ImGuiPlatformIO_Set_Platform_GetWindowSize;
    pub const destroy = __root.ImGuiPlatformIO_destroy;
    pub const ClearPlatformHandlers = __root.ImGuiPlatformIO_ClearPlatformHandlers;
    pub const ClearRendererHandlers = __root.ImGuiPlatformIO_ClearRendererHandlers;
    pub const Set_Platform_GetWindowPos = __root.ImGuiPlatformIO_Set_Platform_GetWindowPos;
    pub const Set_Platform_GetWindowSize = __root.ImGuiPlatformIO_Set_Platform_GetWindowSize;
};
pub const ImGuiPlatformIO = struct_ImGuiPlatformIO;
pub const ImGuiTreeNodeFlags = c_int;
pub const ImGuiHoveredFlags = c_int;
pub const struct_ImGuiStyle = extern struct {
    FontSizeBase: f32 = 0,
    FontScaleMain: f32 = 0,
    FontScaleDpi: f32 = 0,
    Alpha: f32 = 0,
    DisabledAlpha: f32 = 0,
    WindowPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WindowRounding: f32 = 0,
    WindowBorderSize: f32 = 0,
    WindowBorderHoverPadding: f32 = 0,
    WindowMinSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WindowTitleAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WindowMenuButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ChildRounding: f32 = 0,
    ChildBorderSize: f32 = 0,
    PopupRounding: f32 = 0,
    PopupBorderSize: f32 = 0,
    FramePadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    FrameRounding: f32 = 0,
    FrameBorderSize: f32 = 0,
    ItemSpacing: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    ItemInnerSpacing: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CellPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TouchExtraPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    IndentSpacing: f32 = 0,
    ColumnsMinSpacing: f32 = 0,
    ScrollbarSize: f32 = 0,
    ScrollbarRounding: f32 = 0,
    ScrollbarPadding: f32 = 0,
    GrabMinSize: f32 = 0,
    GrabRounding: f32 = 0,
    LogSliderDeadzone: f32 = 0,
    ImageRounding: f32 = 0,
    ImageBorderSize: f32 = 0,
    TabRounding: f32 = 0,
    TabBorderSize: f32 = 0,
    TabMinWidthBase: f32 = 0,
    TabMinWidthShrink: f32 = 0,
    TabCloseButtonMinWidthSelected: f32 = 0,
    TabCloseButtonMinWidthUnselected: f32 = 0,
    TabBarBorderSize: f32 = 0,
    TabBarOverlineSize: f32 = 0,
    TableAngledHeadersAngle: f32 = 0,
    TableAngledHeadersTextAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TreeLinesFlags: ImGuiTreeNodeFlags = 0,
    TreeLinesSize: f32 = 0,
    TreeLinesRounding: f32 = 0,
    MenuItemRounding: f32 = 0,
    SelectableRounding: f32 = 0,
    DragDropTargetRounding: f32 = 0,
    DragDropTargetBorderSize: f32 = 0,
    DragDropTargetPadding: f32 = 0,
    ColorMarkerSize: f32 = 0,
    ColorButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ButtonTextAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    SelectableTextAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    InputTextCursorSize: f32 = 0,
    SeparatorSize: f32 = 0,
    SeparatorTextBorderSize: f32 = 0,
    SeparatorTextAlign: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    SeparatorTextPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DisplayWindowPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DisplaySafeAreaPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DockingNodeHasCloseButton: bool = false,
    DockingSeparatorSize: f32 = 0,
    MouseCursorScale: f32 = 0,
    AntiAliasedLines: bool = false,
    AntiAliasedLinesUseTex: bool = false,
    AntiAliasedFill: bool = false,
    CurveTessellationTol: f32 = 0,
    CircleTessellationMaxError: f32 = 0,
    Colors: [63]ImVec4_c = @import("std").mem.zeroes([63]ImVec4_c),
    HoverStationaryDelay: f32 = 0,
    HoverDelayShort: f32 = 0,
    HoverDelayNormal: f32 = 0,
    HoverFlagsForTooltipMouse: ImGuiHoveredFlags = 0,
    HoverFlagsForTooltipNav: ImGuiHoveredFlags = 0,
    _MainScale: f32 = 0,
    _NextFrameFontSizeBase: f32 = 0,
    pub const igShowStyleEditor = __root.igShowStyleEditor;
    pub const igStyleColorsDark = __root.igStyleColorsDark;
    pub const igStyleColorsLight = __root.igStyleColorsLight;
    pub const igStyleColorsClassic = __root.igStyleColorsClassic;
    pub const ImGuiStyle_destroy = __root.ImGuiStyle_destroy;
    pub const ImGuiStyle_ScaleAllSizes = __root.ImGuiStyle_ScaleAllSizes;
    pub const destroy = __root.ImGuiStyle_destroy;
    pub const ScaleAllSizes = __root.ImGuiStyle_ScaleAllSizes;
};
pub const ImGuiStyle = struct_ImGuiStyle;
pub const struct_ImVector_ImFontAtlasPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]ImFontAtlas = null,
};
pub const ImVector_ImFontAtlasPtr = struct_ImVector_ImFontAtlasPtr;
pub const struct_ImGuiInputEventMousePos = extern struct {
    PosX: f32 = 0,
    PosY: f32 = 0,
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMousePos = struct_ImGuiInputEventMousePos;
pub const struct_ImGuiInputEventMouseWheel = extern struct {
    WheelX: f32 = 0,
    WheelY: f32 = 0,
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMouseWheel = struct_ImGuiInputEventMouseWheel;
pub const struct_ImGuiInputEventMouseButton = extern struct {
    Button: c_int = 0,
    Down: bool = false,
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMouseButton = struct_ImGuiInputEventMouseButton;
pub const struct_ImGuiInputEventMouseViewport = extern struct {
    HoveredViewportID: ImGuiID = 0,
};
pub const ImGuiInputEventMouseViewport = struct_ImGuiInputEventMouseViewport;
pub const struct_ImGuiInputEventKey = extern struct {
    Key: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    Down: bool = false,
    AnalogValue: f32 = 0,
};
pub const ImGuiInputEventKey = struct_ImGuiInputEventKey;
pub const struct_ImGuiInputEventText = extern struct {
    Char: c_uint = 0,
};
pub const ImGuiInputEventText = struct_ImGuiInputEventText;
pub const struct_ImGuiInputEventAppFocused = extern struct {
    Focused: bool = false,
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
    EventId: ImU32 = 0,
    unnamed_0: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
    AddedByTestEngine: bool = false,
    pub const ImGuiInputEvent_destroy = __root.ImGuiInputEvent_destroy;
    pub const destroy = __root.ImGuiInputEvent_destroy;
};
pub const ImGuiInputEvent = struct_ImGuiInputEvent;
pub const struct_ImVector_ImGuiInputEvent = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiInputEvent = null,
};
pub const ImVector_ImGuiInputEvent = struct_ImVector_ImGuiInputEvent;
pub const ImGuiWindowFlags = c_int;
pub const ImGuiChildFlags = c_int;
pub const ImGuiTabItemFlags = c_int;
pub const ImGuiDockNodeFlags = c_int;
pub const struct_ImGuiWindowClass = extern struct {
    ClassId: ImGuiID = 0,
    ParentViewportId: ImGuiID = 0,
    FocusRouteParentWindowId: ImGuiID = 0,
    ViewportFlagsOverrideSet: ImGuiViewportFlags = 0,
    ViewportFlagsOverrideClear: ImGuiViewportFlags = 0,
    TabItemFlagsOverrideSet: ImGuiTabItemFlags = 0,
    DockNodeFlagsOverrideSet: ImGuiDockNodeFlags = 0,
    DockingAlwaysTabBar: bool = false,
    DockingAllowUnclassed: bool = false,
    PlatformIconData: ?*anyopaque = null,
    pub const igSetNextWindowClass = __root.igSetNextWindowClass;
    pub const ImGuiWindowClass_destroy = __root.ImGuiWindowClass_destroy;
    pub const destroy = __root.ImGuiWindowClass_destroy;
};
pub const ImGuiWindowClass = struct_ImGuiWindowClass;
pub const struct_ImDrawDataBuilder = extern struct {
    Layers: [2][*c]ImVector_ImDrawListPtr = @import("std").mem.zeroes([2][*c]ImVector_ImDrawListPtr),
    LayerData1: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
    pub const ImDrawDataBuilder_destroy = __root.ImDrawDataBuilder_destroy;
    pub const destroy = __root.ImDrawDataBuilder_destroy;
};
pub const ImDrawDataBuilder = struct_ImDrawDataBuilder;
pub const struct_ImGuiViewportP = extern struct {
    _ImGuiViewport: ImGuiViewport = @import("std").mem.zeroes(ImGuiViewport),
    Window: ?*ImGuiWindow = null,
    Idx: c_int = 0,
    LastFrameActive: c_int = 0,
    LastFocusedStampCount: c_int = 0,
    LastNameHash: ImGuiID = 0,
    LastPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    LastSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Alpha: f32 = 0,
    LastAlpha: f32 = 0,
    LastFocusedHadNavWindow: bool = false,
    PlatformMonitor: c_short = 0,
    BgFgDrawListsLastTimeActive: [2]f32 = @import("std").mem.zeroes([2]f32),
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
    pub const ImGuiViewportP_destroy = __root.ImGuiViewportP_destroy;
    pub const ImGuiViewportP_ClearRequestFlags = __root.ImGuiViewportP_ClearRequestFlags;
    pub const ImGuiViewportP_CalcWorkRectPos = __root.ImGuiViewportP_CalcWorkRectPos;
    pub const ImGuiViewportP_CalcWorkRectSize = __root.ImGuiViewportP_CalcWorkRectSize;
    pub const ImGuiViewportP_UpdateWorkRect = __root.ImGuiViewportP_UpdateWorkRect;
    pub const ImGuiViewportP_GetMainRect = __root.ImGuiViewportP_GetMainRect;
    pub const ImGuiViewportP_GetWorkRect = __root.ImGuiViewportP_GetWorkRect;
    pub const ImGuiViewportP_GetBuildWorkRect = __root.ImGuiViewportP_GetBuildWorkRect;
    pub const igTranslateWindowsInViewport = __root.igTranslateWindowsInViewport;
    pub const igScaleWindowsInViewport = __root.igScaleWindowsInViewport;
    pub const igDestroyPlatformWindow = __root.igDestroyPlatformWindow;
    pub const igDebugNodeViewport = __root.igDebugNodeViewport;
    pub const destroy = __root.ImGuiViewportP_destroy;
    pub const ClearRequestFlags = __root.ImGuiViewportP_ClearRequestFlags;
    pub const CalcWorkRectPos = __root.ImGuiViewportP_CalcWorkRectPos;
    pub const CalcWorkRectSize = __root.ImGuiViewportP_CalcWorkRectSize;
    pub const UpdateWorkRect = __root.ImGuiViewportP_UpdateWorkRect;
    pub const GetMainRect = __root.ImGuiViewportP_GetMainRect;
    pub const GetWorkRect = __root.ImGuiViewportP_GetWorkRect;
    pub const GetBuildWorkRect = __root.ImGuiViewportP_GetBuildWorkRect;
};
pub const ImGuiViewportP = struct_ImGuiViewportP; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:3473:29: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiWindow = opaque {
    pub const ImGuiWindow_destroy = __root.ImGuiWindow_destroy;
    pub const ImGuiWindow_GetID_Str = __root.ImGuiWindow_GetID_Str;
    pub const ImGuiWindow_GetID_Ptr = __root.ImGuiWindow_GetID_Ptr;
    pub const ImGuiWindow_GetID_Int = __root.ImGuiWindow_GetID_Int;
    pub const ImGuiWindow_GetIDFromPos = __root.ImGuiWindow_GetIDFromPos;
    pub const ImGuiWindow_GetIDFromRectangle = __root.ImGuiWindow_GetIDFromRectangle;
    pub const ImGuiWindow_Rect = __root.ImGuiWindow_Rect;
    pub const ImGuiWindow_TitleBarRect = __root.ImGuiWindow_TitleBarRect;
    pub const ImGuiWindow_MenuBarRect = __root.ImGuiWindow_MenuBarRect;
    pub const igSetWindowClipRectBeforeSetChannel = __root.igSetWindowClipRectBeforeSetChannel;
    pub const igFindOrCreateColumns = __root.igFindOrCreateColumns;
    pub const igUpdateWindowParentAndRootLinks = __root.igUpdateWindowParentAndRootLinks;
    pub const igUpdateWindowSkipRefresh = __root.igUpdateWindowSkipRefresh;
    pub const igCalcWindowNextAutoFitSize = __root.igCalcWindowNextAutoFitSize;
    pub const igIsWindowChildOf = __root.igIsWindowChildOf;
    pub const igIsWindowInBeginStack = __root.igIsWindowInBeginStack;
    pub const igIsWindowWithinBeginStackOf = __root.igIsWindowWithinBeginStackOf;
    pub const igIsWindowAbove = __root.igIsWindowAbove;
    pub const igIsWindowNavFocusable = __root.igIsWindowNavFocusable;
    pub const igSetWindowPos_WindowPtr = __root.igSetWindowPos_WindowPtr;
    pub const igSetWindowSize_WindowPtr = __root.igSetWindowSize_WindowPtr;
    pub const igSetWindowCollapsed_WindowPtr = __root.igSetWindowCollapsed_WindowPtr;
    pub const igSetWindowHitTestHole = __root.igSetWindowHitTestHole;
    pub const igSetWindowHiddenAndSkipItemsForCurrentFrame = __root.igSetWindowHiddenAndSkipItemsForCurrentFrame;
    pub const igSetWindowParentWindowForFocusRoute = __root.igSetWindowParentWindowForFocusRoute;
    pub const igWindowRectAbsToRel = __root.igWindowRectAbsToRel;
    pub const igWindowRectRelToAbs = __root.igWindowRectRelToAbs;
    pub const igWindowPosAbsToRel = __root.igWindowPosAbsToRel;
    pub const igWindowPosRelToAbs = __root.igWindowPosRelToAbs;
    pub const igFocusWindow = __root.igFocusWindow;
    pub const igFocusTopMostWindowUnderOne = __root.igFocusTopMostWindowUnderOne;
    pub const igBringWindowToFocusFront = __root.igBringWindowToFocusFront;
    pub const igBringWindowToDisplayFront = __root.igBringWindowToDisplayFront;
    pub const igBringWindowToDisplayBack = __root.igBringWindowToDisplayBack;
    pub const igBringWindowToDisplayBehind = __root.igBringWindowToDisplayBehind;
    pub const igFindWindowDisplayIndex = __root.igFindWindowDisplayIndex;
    pub const igFindBottomMostVisibleWindowWithinBeginStack = __root.igFindBottomMostVisibleWindowWithinBeginStack;
    pub const igGetForegroundDrawList_WindowPtr = __root.igGetForegroundDrawList_WindowPtr;
    pub const igStartMouseMovingWindow = __root.igStartMouseMovingWindow;
    pub const igStartMouseMovingWindowOrNode = __root.igStartMouseMovingWindowOrNode;
    pub const igSetWindowViewport = __root.igSetWindowViewport;
    pub const igSetCurrentViewport = __root.igSetCurrentViewport;
    pub const igMarkIniSettingsDirty_WindowPtr = __root.igMarkIniSettingsDirty_WindowPtr;
    pub const igFindWindowSettingsByWindow = __root.igFindWindowSettingsByWindow;
    pub const igSetScrollX_WindowPtr = __root.igSetScrollX_WindowPtr;
    pub const igSetScrollY_WindowPtr = __root.igSetScrollY_WindowPtr;
    pub const igSetScrollFromPosX_WindowPtr = __root.igSetScrollFromPosX_WindowPtr;
    pub const igSetScrollFromPosY_WindowPtr = __root.igSetScrollFromPosY_WindowPtr;
    pub const igScrollToRect = __root.igScrollToRect;
    pub const igScrollToRectEx = __root.igScrollToRectEx;
    pub const igScrollToBringRectIntoView = __root.igScrollToBringRectIntoView;
    pub const igIsWindowContentHoverable = __root.igIsWindowContentHoverable;
    pub const igFindFrontMostVisibleChildWindow = __root.igFindFrontMostVisibleChildWindow;
    pub const igClosePopupsOverWindow = __root.igClosePopupsOverWindow;
    pub const igGetPopupAllowedExtentRect = __root.igGetPopupAllowedExtentRect;
    pub const igFindBlockingModal = __root.igFindBlockingModal;
    pub const igFindBestWindowPosForPopup = __root.igFindBestWindowPosForPopup;
    pub const igNavInitWindow = __root.igNavInitWindow;
    pub const igNavMoveRequestTryWrapping = __root.igNavMoveRequestTryWrapping;
    pub const igSetNavWindow = __root.igSetNavWindow;
    pub const igDockContextCalcDropPosForDocking = __root.igDockContextCalcDropPosForDocking;
    pub const igGetWindowAlwaysWantOwnTabBar = __root.igGetWindowAlwaysWantOwnTabBar;
    pub const igBeginDocked = __root.igBeginDocked;
    pub const igBeginDockableDragDropSource = __root.igBeginDockableDragDropSource;
    pub const igBeginDockableDragDropTarget = __root.igBeginDockableDragDropTarget;
    pub const igSetWindowDock = __root.igSetWindowDock;
    pub const igTabItemCalcSize_WindowPtr = __root.igTabItemCalcSize_WindowPtr;
    pub const igGetWindowScrollbarRect = __root.igGetWindowScrollbarRect;
    pub const igGetWindowScrollbarID = __root.igGetWindowScrollbarID;
    pub const igGetWindowResizeCornerID = __root.igGetWindowResizeCornerID;
    pub const igGetWindowResizeBorderID = __root.igGetWindowResizeBorderID;
    pub const igExtendHitBoxWhenNearViewportEdge = __root.igExtendHitBoxWhenNearViewportEdge;
    pub const igGcCompactTransientWindowBuffers = __root.igGcCompactTransientWindowBuffers;
    pub const igGcAwakeTransientWindowBuffers = __root.igGcAwakeTransientWindowBuffers;
    pub const igDebugNodeDrawList = __root.igDebugNodeDrawList;
    pub const igDebugNodeWindow = __root.igDebugNodeWindow;
    pub const destroy = __root.ImGuiWindow_destroy;
    pub const GetID_Str = __root.ImGuiWindow_GetID_Str;
    pub const GetID_Ptr = __root.ImGuiWindow_GetID_Ptr;
    pub const GetID_Int = __root.ImGuiWindow_GetID_Int;
    pub const GetIDFromPos = __root.ImGuiWindow_GetIDFromPos;
    pub const GetIDFromRectangle = __root.ImGuiWindow_GetIDFromRectangle;
    pub const Rect = __root.ImGuiWindow_Rect;
    pub const TitleBarRect = __root.ImGuiWindow_TitleBarRect;
    pub const MenuBarRect = __root.ImGuiWindow_MenuBarRect;
    pub const WindowPtr = __root.igSetWindowPos_WindowPtr;
};
pub const ImGuiWindow = struct_ImGuiWindow;
pub const struct_ImVector_ImGuiWindowPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]?*ImGuiWindow = null,
    pub const igDebugNodeWindowsList = __root.igDebugNodeWindowsList;
};
pub const ImVector_ImGuiWindowPtr = struct_ImVector_ImGuiWindowPtr;
pub const ImGuiItemFlags = c_int;
pub const ImGuiItemStatusFlags = c_int;
pub const struct_ImRect_c = extern struct {
    Min: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Max: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    pub const ImRect_destroy = __root.ImRect_destroy;
    pub const ImRect_GetCenter = __root.ImRect_GetCenter;
    pub const ImRect_GetSize = __root.ImRect_GetSize;
    pub const ImRect_GetWidth = __root.ImRect_GetWidth;
    pub const ImRect_GetHeight = __root.ImRect_GetHeight;
    pub const ImRect_GetArea = __root.ImRect_GetArea;
    pub const ImRect_GetTL = __root.ImRect_GetTL;
    pub const ImRect_GetTR = __root.ImRect_GetTR;
    pub const ImRect_GetBL = __root.ImRect_GetBL;
    pub const ImRect_GetBR = __root.ImRect_GetBR;
    pub const ImRect_Contains_Vec2 = __root.ImRect_Contains_Vec2;
    pub const ImRect_Contains_Rect = __root.ImRect_Contains_Rect;
    pub const ImRect_ContainsWithPad = __root.ImRect_ContainsWithPad;
    pub const ImRect_Overlaps = __root.ImRect_Overlaps;
    pub const ImRect_Add_Vec2 = __root.ImRect_Add_Vec2;
    pub const ImRect_Add_Rect = __root.ImRect_Add_Rect;
    pub const ImRect_AddX = __root.ImRect_AddX;
    pub const ImRect_AddY = __root.ImRect_AddY;
    pub const ImRect_Expand_Float = __root.ImRect_Expand_Float;
    pub const ImRect_Expand_Vec2 = __root.ImRect_Expand_Vec2;
    pub const ImRect_Translate = __root.ImRect_Translate;
    pub const ImRect_TranslateX = __root.ImRect_TranslateX;
    pub const ImRect_TranslateY = __root.ImRect_TranslateY;
    pub const ImRect_ClipWith = __root.ImRect_ClipWith;
    pub const ImRect_ClipWithFull = __root.ImRect_ClipWithFull;
    pub const ImRect_IsInverted = __root.ImRect_IsInverted;
    pub const ImRect_ToVec4 = __root.ImRect_ToVec4;
    pub const ImRect_AsVec4 = __root.ImRect_AsVec4;
    pub const igItemSize_Rect = __root.igItemSize_Rect;
    pub const igItemAdd = __root.igItemAdd;
    pub const igItemHoverable = __root.igItemHoverable;
    pub const igIsClippedEx = __root.igIsClippedEx;
    pub const igCalcClipRectVisibleItemsY = __root.igCalcClipRectVisibleItemsY;
    pub const igBeginDragDropTargetCustom = __root.igBeginDragDropTargetCustom;
    pub const igRenderDragDropTargetRectForItem = __root.igRenderDragDropTargetRectForItem;
    pub const igBeginBoxSelect = __root.igBeginBoxSelect;
    pub const igEndBoxSelect = __root.igEndBoxSelect;
    pub const igRenderColorComponentMarker = __root.igRenderColorComponentMarker;
    pub const igRenderNavCursor = __root.igRenderNavCursor;
    pub const igCalcRoundingFlagsForRectInRect = __root.igCalcRoundingFlagsForRectInRect;
    pub const igScrollbarEx = __root.igScrollbarEx;
    pub const igButtonBehavior = __root.igButtonBehavior;
    pub const igSliderBehavior = __root.igSliderBehavior;
    pub const igSplitterBehavior = __root.igSplitterBehavior;
    pub const igTempInputText = __root.igTempInputText;
    pub const igTempInputScalar = __root.igTempInputScalar;
    pub const destroy = __root.ImRect_destroy;
    pub const GetCenter = __root.ImRect_GetCenter;
    pub const GetSize = __root.ImRect_GetSize;
    pub const GetWidth = __root.ImRect_GetWidth;
    pub const GetHeight = __root.ImRect_GetHeight;
    pub const GetArea = __root.ImRect_GetArea;
    pub const GetTL = __root.ImRect_GetTL;
    pub const GetTR = __root.ImRect_GetTR;
    pub const GetBL = __root.ImRect_GetBL;
    pub const GetBR = __root.ImRect_GetBR;
    pub const Vec2 = __root.ImRect_Contains_Vec2;
    pub const Rect = __root.ImRect_Contains_Rect;
    pub const ContainsWithPad = __root.ImRect_ContainsWithPad;
    pub const Overlaps = __root.ImRect_Overlaps;
    pub const AddX = __root.ImRect_AddX;
    pub const AddY = __root.ImRect_AddY;
    pub const Float = __root.ImRect_Expand_Float;
    pub const Translate = __root.ImRect_Translate;
    pub const TranslateX = __root.ImRect_TranslateX;
    pub const TranslateY = __root.ImRect_TranslateY;
    pub const ClipWith = __root.ImRect_ClipWith;
    pub const ClipWithFull = __root.ImRect_ClipWithFull;
    pub const IsInverted = __root.ImRect_IsInverted;
    pub const ToVec4 = __root.ImRect_ToVec4;
    pub const AsVec4 = __root.ImRect_AsVec4;
};
pub const ImRect_c = struct_ImRect_c;
pub const struct_ImGuiLastItemData = extern struct {
    ID: ImGuiID = 0,
    ItemFlags: ImGuiItemFlags = 0,
    StatusFlags: ImGuiItemStatusFlags = 0,
    Rect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    NavRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    DisplayRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    ClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    Shortcut: ImGuiKeyChord = 0,
    pub const ImGuiLastItemData_destroy = __root.ImGuiLastItemData_destroy;
    pub const destroy = __root.ImGuiLastItemData_destroy;
};
pub const ImGuiLastItemData = struct_ImGuiLastItemData;
pub const struct_ImGuiErrorRecoveryState = extern struct {
    SizeOfWindowStack: c_short = 0,
    SizeOfIDStack: c_short = 0,
    SizeOfTreeStack: c_short = 0,
    SizeOfColorStack: c_short = 0,
    SizeOfStyleVarStack: c_short = 0,
    SizeOfFontStack: c_short = 0,
    SizeOfFocusScopeStack: c_short = 0,
    SizeOfGroupStack: c_short = 0,
    SizeOfItemFlagsStack: c_short = 0,
    SizeOfBeginPopupStack: c_short = 0,
    SizeOfDisabledStack: c_short = 0,
    pub const ImGuiErrorRecoveryState_destroy = __root.ImGuiErrorRecoveryState_destroy;
    pub const igErrorRecoveryStoreState = __root.igErrorRecoveryStoreState;
    pub const igErrorRecoveryTryToRecoverState = __root.igErrorRecoveryTryToRecoverState;
    pub const igErrorRecoveryTryToRecoverWindowState = __root.igErrorRecoveryTryToRecoverWindowState;
    pub const destroy = __root.ImGuiErrorRecoveryState_destroy;
};
pub const ImGuiErrorRecoveryState = struct_ImGuiErrorRecoveryState;
pub const struct_ImGuiWindowStackData = extern struct {
    Window: ?*ImGuiWindow = null,
    ParentLastItemDataBackup: ImGuiLastItemData = @import("std").mem.zeroes(ImGuiLastItemData),
    StackSizesInBegin: ImGuiErrorRecoveryState = @import("std").mem.zeroes(ImGuiErrorRecoveryState),
    DisabledOverrideReenable: bool = false,
    DisabledOverrideReenableAlphaBackup: f32 = 0,
};
pub const ImGuiWindowStackData = struct_ImGuiWindowStackData;
pub const struct_ImVector_ImGuiWindowStackData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiWindowStackData = null,
};
pub const ImVector_ImGuiWindowStackData = struct_ImVector_ImGuiWindowStackData;
pub const struct_ImGuiDeactivatedItemData = extern struct {
    ID: ImGuiID = 0,
    ElapseFrame: c_int = 0,
    HasBeenEditedBefore: bool = false,
    IsAlive: bool = false,
};
pub const ImGuiDeactivatedItemData = struct_ImGuiDeactivatedItemData;
pub const struct_ImGuiDataTypeStorage = extern struct {
    Data: [8]ImU8 = @import("std").mem.zeroes([8]ImU8),
};
pub const ImGuiDataTypeStorage = struct_ImGuiDataTypeStorage;
pub const struct_ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN = extern struct {
    Data: [5]ImU32 = @import("std").mem.zeroes([5]ImU32),
};
pub const ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN = struct_ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
pub const ImBitArrayForNamedKeys = ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
pub const struct_ImGuiKeyOwnerData = extern struct {
    OwnerCurr: ImGuiID = 0,
    OwnerNext: ImGuiID = 0,
    LockThisFrame: bool = false,
    LockUntilRelease: bool = false,
    pub const ImGuiKeyOwnerData_destroy = __root.ImGuiKeyOwnerData_destroy;
    pub const destroy = __root.ImGuiKeyOwnerData_destroy;
};
pub const ImGuiKeyOwnerData = struct_ImGuiKeyOwnerData;
pub const ImS16 = c_short;
pub const ImGuiKeyRoutingIndex = ImS16;
pub const struct_ImGuiKeyRoutingData = extern struct {
    NextEntryIndex: ImGuiKeyRoutingIndex = 0,
    Mods: ImU16 = 0,
    RoutingCurrScore: ImU16 = 0,
    RoutingNextScore: ImU16 = 0,
    RoutingCurr: ImGuiID = 0,
    RoutingNext: ImGuiID = 0,
    pub const ImGuiKeyRoutingData_destroy = __root.ImGuiKeyRoutingData_destroy;
    pub const destroy = __root.ImGuiKeyRoutingData_destroy;
};
pub const ImGuiKeyRoutingData = struct_ImGuiKeyRoutingData;
pub const struct_ImVector_ImGuiKeyRoutingData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiKeyRoutingData = null,
};
pub const ImVector_ImGuiKeyRoutingData = struct_ImVector_ImGuiKeyRoutingData;
pub const struct_ImGuiKeyRoutingTable = extern struct {
    Index: [155]ImGuiKeyRoutingIndex = @import("std").mem.zeroes([155]ImGuiKeyRoutingIndex),
    Entries: ImVector_ImGuiKeyRoutingData = @import("std").mem.zeroes(ImVector_ImGuiKeyRoutingData),
    EntriesNext: ImVector_ImGuiKeyRoutingData = @import("std").mem.zeroes(ImVector_ImGuiKeyRoutingData),
    pub const ImGuiKeyRoutingTable_destroy = __root.ImGuiKeyRoutingTable_destroy;
    pub const ImGuiKeyRoutingTable_Clear = __root.ImGuiKeyRoutingTable_Clear;
    pub const destroy = __root.ImGuiKeyRoutingTable_destroy;
    pub const Clear = __root.ImGuiKeyRoutingTable_Clear;
};
pub const ImGuiKeyRoutingTable = struct_ImGuiKeyRoutingTable;
pub const ImGuiNextItemDataFlags = c_int;
pub const ImS64 = c_longlong;
pub const ImGuiSelectionUserData = ImS64;
pub const ImGuiInputFlags = c_int;
pub const struct_ImGuiNextItemData = extern struct {
    HasFlags: ImGuiNextItemDataFlags = 0,
    ItemFlagsSet: ImGuiItemFlags = 0,
    FocusScopeId: ImGuiID = 0,
    SelectionUserData: ImGuiSelectionUserData = 0,
    Width: f32 = 0,
    Shortcut: ImGuiKeyChord = 0,
    ShortcutFlags: ImGuiInputFlags = 0,
    OpenVal: bool = false,
    OpenCond: ImU8 = 0,
    RefVal: ImGuiDataTypeStorage = @import("std").mem.zeroes(ImGuiDataTypeStorage),
    StorageId: ImGuiID = 0,
    ColorMarker: ImU32 = 0,
    pub const ImGuiNextItemData_destroy = __root.ImGuiNextItemData_destroy;
    pub const ImGuiNextItemData_ClearFlags = __root.ImGuiNextItemData_ClearFlags;
    pub const destroy = __root.ImGuiNextItemData_destroy;
    pub const ClearFlags = __root.ImGuiNextItemData_ClearFlags;
};
pub const ImGuiNextItemData = struct_ImGuiNextItemData;
pub const ImGuiNextWindowDataFlags = c_int;
pub const ImGuiCond = c_int;
pub const struct_ImGuiSizeCallbackData = extern struct {
    UserData: ?*anyopaque = null,
    Pos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CurrentSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DesiredSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
};
pub const ImGuiSizeCallbackData = struct_ImGuiSizeCallbackData;
pub const ImGuiSizeCallback = ?*const fn (data: [*c]ImGuiSizeCallbackData) callconv(.c) void;
pub const ImGuiWindowRefreshFlags = c_int;
pub const struct_ImGuiNextWindowData = extern struct {
    HasFlags: ImGuiNextWindowDataFlags = 0,
    PosCond: ImGuiCond = 0,
    SizeCond: ImGuiCond = 0,
    CollapsedCond: ImGuiCond = 0,
    DockCond: ImGuiCond = 0,
    PosVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    PosPivotVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    SizeVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    ContentSizeVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    ScrollVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    WindowFlags: ImGuiWindowFlags = 0,
    ChildFlags: ImGuiChildFlags = 0,
    PosUndock: bool = false,
    CollapsedVal: bool = false,
    SizeConstraintRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    SizeCallback: ImGuiSizeCallback = null,
    SizeCallbackUserData: ?*anyopaque = null,
    BgAlphaVal: f32 = 0,
    ViewportId: ImGuiID = 0,
    DockId: ImGuiID = 0,
    WindowClass: ImGuiWindowClass = @import("std").mem.zeroes(ImGuiWindowClass),
    MenuBarOffsetMinVal: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    RefreshFlagsVal: ImGuiWindowRefreshFlags = 0,
    pub const ImGuiNextWindowData_destroy = __root.ImGuiNextWindowData_destroy;
    pub const ImGuiNextWindowData_ClearFlags = __root.ImGuiNextWindowData_ClearFlags;
    pub const destroy = __root.ImGuiNextWindowData_destroy;
    pub const ClearFlags = __root.ImGuiNextWindowData_ClearFlags;
};
pub const ImGuiNextWindowData = struct_ImGuiNextWindowData;
pub const ImGuiCol = c_int;
pub const struct_ImGuiColorMod = extern struct {
    Col: ImGuiCol = 0,
    BackupValue: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
};
pub const ImGuiColorMod = struct_ImGuiColorMod;
pub const struct_ImVector_ImGuiColorMod = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiColorMod = null,
};
pub const ImVector_ImGuiColorMod = struct_ImVector_ImGuiColorMod;
pub const ImGuiStyleVar = c_int;
const union_unnamed_3 = extern union {
    BackupInt: [2]c_int,
    BackupFloat: [2]f32,
};
pub const struct_ImGuiStyleMod = extern struct {
    VarIdx: ImGuiStyleVar = 0,
    unnamed_0: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
    pub const ImGuiStyleMod_destroy = __root.ImGuiStyleMod_destroy;
    pub const destroy = __root.ImGuiStyleMod_destroy;
};
pub const ImGuiStyleMod = struct_ImGuiStyleMod;
pub const struct_ImVector_ImGuiStyleMod = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiStyleMod = null,
};
pub const ImVector_ImGuiStyleMod = struct_ImVector_ImGuiStyleMod;
pub const struct_ImFontStackData = extern struct {
    Font: [*c]ImFont = null,
    FontSizeBeforeScaling: f32 = 0,
    FontSizeAfterScaling: f32 = 0,
};
pub const ImFontStackData = struct_ImFontStackData;
pub const struct_ImVector_ImFontStackData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImFontStackData = null,
};
pub const ImVector_ImFontStackData = struct_ImVector_ImFontStackData;
pub const struct_ImGuiFocusScopeData = extern struct {
    ID: ImGuiID = 0,
    WindowID: ImGuiID = 0,
};
pub const ImGuiFocusScopeData = struct_ImGuiFocusScopeData;
pub const struct_ImVector_ImGuiFocusScopeData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiFocusScopeData = null,
};
pub const ImVector_ImGuiFocusScopeData = struct_ImVector_ImGuiFocusScopeData;
pub const struct_ImVector_ImGuiItemFlags = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiItemFlags = null,
};
pub const ImVector_ImGuiItemFlags = struct_ImVector_ImGuiItemFlags;
pub const struct_ImVec1 = extern struct {
    x: f32 = 0,
    pub const ImVec1_destroy = __root.ImVec1_destroy;
    pub const destroy = __root.ImVec1_destroy;
};
pub const ImVec1 = struct_ImVec1;
pub const struct_ImGuiGroupData = extern struct {
    WindowID: ImGuiID = 0,
    BackupCursorPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorPosPrevLine: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupIndent: ImVec1 = @import("std").mem.zeroes(ImVec1),
    BackupGroupOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    BackupCurrLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCurrLineTextBaseOffset: f32 = 0,
    BackupActiveIdIsAlive: ImGuiID = 0,
    BackupAnyIdHasBeenEditedThisFrame: bool = false,
    BackupDeactivatedIdIsAlive: bool = false,
    BackupHoveredIdIsAlive: bool = false,
    BackupIsSameLine: bool = false,
    EmitItem: bool = false,
};
pub const ImGuiGroupData = struct_ImGuiGroupData;
pub const struct_ImVector_ImGuiGroupData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiGroupData = null,
};
pub const ImVector_ImGuiGroupData = struct_ImVector_ImGuiGroupData;
pub const struct_ImGuiPopupData = extern struct {
    PopupId: ImGuiID = 0,
    Window: ?*ImGuiWindow = null,
    RestoreNavWindow: ?*ImGuiWindow = null,
    ParentNavLayer: c_int = 0,
    OpenFrameCount: c_int = 0,
    OpenParentId: ImGuiID = 0,
    OpenPopupPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    OpenMousePos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    pub const ImGuiPopupData_destroy = __root.ImGuiPopupData_destroy;
    pub const destroy = __root.ImGuiPopupData_destroy;
};
pub const ImGuiPopupData = struct_ImGuiPopupData;
pub const struct_ImVector_ImGuiPopupData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiPopupData = null,
};
pub const ImVector_ImGuiPopupData = struct_ImVector_ImGuiPopupData;
pub const ImGuiTableColumnIdx = ImS16;
pub const struct_ImGuiTreeNodeStackData = extern struct {
    ID: ImGuiID = 0,
    TreeFlags: ImGuiTreeNodeFlags = 0,
    ItemFlags: ImGuiItemFlags = 0,
    NavRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    DrawLinesX1: f32 = 0,
    DrawLinesToNodesY2: f32 = 0,
    DrawLinesTableColumn: ImGuiTableColumnIdx = 0,
    pub const igTreeNodeDrawLineToTreePop = __root.igTreeNodeDrawLineToTreePop;
};
pub const ImGuiTreeNodeStackData = struct_ImGuiTreeNodeStackData;
pub const struct_ImVector_ImGuiTreeNodeStackData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiTreeNodeStackData = null,
};
pub const ImVector_ImGuiTreeNodeStackData = struct_ImVector_ImGuiTreeNodeStackData;
pub const struct_ImVector_ImGuiViewportPPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]ImGuiViewportP = null,
};
pub const ImVector_ImGuiViewportPPtr = struct_ImVector_ImGuiViewportPPtr;
pub const ImGuiActivateFlags = c_int;
pub const struct_ImGuiNavItemData = extern struct {
    Window: ?*ImGuiWindow = null,
    ID: ImGuiID = 0,
    FocusScopeId: ImGuiID = 0,
    RectRel: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    ItemFlags: ImGuiItemFlags = 0,
    DistBox: f32 = 0,
    DistCenter: f32 = 0,
    DistAxial: f32 = 0,
    SelectionUserData: ImGuiSelectionUserData = 0,
    pub const ImGuiNavItemData_destroy = __root.ImGuiNavItemData_destroy;
    pub const ImGuiNavItemData_Clear = __root.ImGuiNavItemData_Clear;
    pub const igNavMoveRequestResolveWithLastItem = __root.igNavMoveRequestResolveWithLastItem;
    pub const igNavMoveRequestResolveWithPastTreeNode = __root.igNavMoveRequestResolveWithPastTreeNode;
    pub const destroy = __root.ImGuiNavItemData_destroy;
    pub const Clear = __root.ImGuiNavItemData_Clear;
};
pub const ImGuiNavItemData = struct_ImGuiNavItemData;
pub const ImGuiNavMoveFlags = c_int;
pub const ImGuiScrollFlags = c_int;
pub const ImGuiDragDropFlags = c_int;
pub const struct_ImGuiPayload = extern struct {
    Data: ?*anyopaque = null,
    DataSize: c_int = 0,
    SourceId: ImGuiID = 0,
    SourceParentId: ImGuiID = 0,
    DataFrameCount: c_int = 0,
    DataType: [33]u8 = @import("std").mem.zeroes([33]u8),
    Preview: bool = false,
    Delivery: bool = false,
    pub const ImGuiPayload_destroy = __root.ImGuiPayload_destroy;
    pub const ImGuiPayload_Clear = __root.ImGuiPayload_Clear;
    pub const ImGuiPayload_IsDataType = __root.ImGuiPayload_IsDataType;
    pub const ImGuiPayload_IsPreview = __root.ImGuiPayload_IsPreview;
    pub const ImGuiPayload_IsDelivery = __root.ImGuiPayload_IsDelivery;
    pub const destroy = __root.ImGuiPayload_destroy;
    pub const Clear = __root.ImGuiPayload_Clear;
    pub const IsDataType = __root.ImGuiPayload_IsDataType;
    pub const IsPreview = __root.ImGuiPayload_IsPreview;
    pub const IsDelivery = __root.ImGuiPayload_IsDelivery;
};
pub const ImGuiPayload = struct_ImGuiPayload;
pub const ImGuiListClipperFlags = c_int;
pub const struct_ImGuiListClipper = extern struct {
    DisplayStart: c_int = 0,
    DisplayEnd: c_int = 0,
    UserIndex: c_int = 0,
    ItemsCount: c_int = 0,
    ItemsHeight: f32 = 0,
    Flags: ImGuiListClipperFlags = 0,
    StartPosY: f64 = 0,
    StartSeekOffsetY: f64 = 0,
    Ctx: [*c]ImGuiContext = null,
    TempData: ?*anyopaque = null,
    pub const ImGuiListClipper_destroy = __root.ImGuiListClipper_destroy;
    pub const ImGuiListClipper_Begin = __root.ImGuiListClipper_Begin;
    pub const ImGuiListClipper_End = __root.ImGuiListClipper_End;
    pub const ImGuiListClipper_Step = __root.ImGuiListClipper_Step;
    pub const ImGuiListClipper_IncludeItemByIndex = __root.ImGuiListClipper_IncludeItemByIndex;
    pub const ImGuiListClipper_IncludeItemsByIndex = __root.ImGuiListClipper_IncludeItemsByIndex;
    pub const ImGuiListClipper_SeekCursorForItem = __root.ImGuiListClipper_SeekCursorForItem;
    pub const destroy = __root.ImGuiListClipper_destroy;
    pub const Begin = __root.ImGuiListClipper_Begin;
    pub const End = __root.ImGuiListClipper_End;
    pub const Step = __root.ImGuiListClipper_Step;
    pub const IncludeItemByIndex = __root.ImGuiListClipper_IncludeItemByIndex;
    pub const IncludeItemsByIndex = __root.ImGuiListClipper_IncludeItemsByIndex;
    pub const SeekCursorForItem = __root.ImGuiListClipper_SeekCursorForItem;
};
pub const ImGuiListClipper = struct_ImGuiListClipper;
pub const struct_ImGuiListClipperRange = extern struct {
    Min: c_int = 0,
    Max: c_int = 0,
    PosToIndexConvert: bool = false,
    PosToIndexOffsetMin: ImS8 = 0,
    PosToIndexOffsetMax: ImS8 = 0,
};
pub const ImGuiListClipperRange = struct_ImGuiListClipperRange;
pub const struct_ImVector_ImGuiListClipperRange = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiListClipperRange = null,
};
pub const ImVector_ImGuiListClipperRange = struct_ImVector_ImGuiListClipperRange;
pub const struct_ImGuiListClipperData = extern struct {
    ListClipper: [*c]ImGuiListClipper = null,
    LossynessOffset: f32 = 0,
    StepNo: c_int = 0,
    ItemsFrozen: c_int = 0,
    Ranges: ImVector_ImGuiListClipperRange = @import("std").mem.zeroes(ImVector_ImGuiListClipperRange),
    pub const ImGuiListClipperData_destroy = __root.ImGuiListClipperData_destroy;
    pub const ImGuiListClipperData_Reset = __root.ImGuiListClipperData_Reset;
    pub const destroy = __root.ImGuiListClipperData_destroy;
    pub const Reset = __root.ImGuiListClipperData_Reset;
};
pub const ImGuiListClipperData = struct_ImGuiListClipperData;
pub const struct_ImVector_ImGuiListClipperData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiListClipperData = null,
};
pub const ImVector_ImGuiListClipperData = struct_ImVector_ImGuiListClipperData;
pub const ImGuiTableFlags = c_int;
pub const struct_ImGuiTableHeaderData = extern struct {
    Index: ImGuiTableColumnIdx = 0,
    TextColor: ImU32 = 0,
    BgColor0: ImU32 = 0,
    BgColor1: ImU32 = 0,
};
pub const ImGuiTableHeaderData = struct_ImGuiTableHeaderData;
pub const struct_ImVector_ImGuiTableHeaderData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiTableHeaderData = null,
};
pub const ImVector_ImGuiTableHeaderData = struct_ImVector_ImGuiTableHeaderData;
pub const ImGuiTableColumnFlags = c_int;
pub const ImGuiTableDrawChannelIdx = ImU16; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:3635:10: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTableColumn = opaque {
    pub const ImGuiTableColumn_destroy = __root.ImGuiTableColumn_destroy;
    pub const igTableGetColumnNextSortDirection = __root.igTableGetColumnNextSortDirection;
    pub const igTableLoadSettingsForColumn = __root.igTableLoadSettingsForColumn;
    pub const destroy = __root.ImGuiTableColumn_destroy;
};
pub const ImGuiTableColumn = struct_ImGuiTableColumn; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:3658:22: warning: struct demoted to opaque type - has opaque field
pub const struct_ImGuiTableReconcileColumnData = opaque {};
pub const ImGuiTableReconcileColumnData = struct_ImGuiTableReconcileColumnData;
pub const struct_ImVector_ImGuiTableReconcileColumnData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: ?*ImGuiTableReconcileColumnData = null,
};
pub const ImVector_ImGuiTableReconcileColumnData = struct_ImVector_ImGuiTableReconcileColumnData;
pub const struct_ImSpan_ImGuiTableColumn = extern struct {
    Data: ?*ImGuiTableColumn = null,
    DataEnd: ?*ImGuiTableColumn = null,
};
pub const ImSpan_ImGuiTableColumn = struct_ImSpan_ImGuiTableColumn;
pub const ImDrawChannel = struct_ImDrawChannel;
pub const struct_ImVector_ImDrawChannel = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImDrawChannel = null,
};
pub const ImVector_ImDrawChannel = struct_ImVector_ImDrawChannel;
pub const struct_ImDrawListSplitter = extern struct {
    _Current: c_int = 0,
    _Count: c_int = 0,
    _Channels: ImVector_ImDrawChannel = @import("std").mem.zeroes(ImVector_ImDrawChannel),
    pub const ImDrawListSplitter_destroy = __root.ImDrawListSplitter_destroy;
    pub const ImDrawListSplitter_Clear = __root.ImDrawListSplitter_Clear;
    pub const ImDrawListSplitter_ClearFreeMemory = __root.ImDrawListSplitter_ClearFreeMemory;
    pub const ImDrawListSplitter_Split = __root.ImDrawListSplitter_Split;
    pub const ImDrawListSplitter_Merge = __root.ImDrawListSplitter_Merge;
    pub const ImDrawListSplitter_SetCurrentChannel = __root.ImDrawListSplitter_SetCurrentChannel;
    pub const destroy = __root.ImDrawListSplitter_destroy;
    pub const Clear = __root.ImDrawListSplitter_Clear;
    pub const ClearFreeMemory = __root.ImDrawListSplitter_ClearFreeMemory;
    pub const Split = __root.ImDrawListSplitter_Split;
    pub const Merge = __root.ImDrawListSplitter_Merge;
    pub const SetCurrentChannel = __root.ImDrawListSplitter_SetCurrentChannel;
};
pub const ImDrawListSplitter = struct_ImDrawListSplitter;
pub const struct_ImGuiTableTempData = extern struct {
    WindowID: ImGuiID = 0,
    TableIndex: c_int = 0,
    LastTimeActive: f32 = 0,
    AngledHeadersExtraWidth: f32 = 0,
    AngledHeadersRequests: ImVector_ImGuiTableHeaderData = @import("std").mem.zeroes(ImVector_ImGuiTableHeaderData),
    ReconcileColumnsRequests: ImVector_ImGuiTableReconcileColumnData = @import("std").mem.zeroes(ImVector_ImGuiTableReconcileColumnData),
    OldColumnsRawData: ?*anyopaque = null,
    OldColumnsData: ImSpan_ImGuiTableColumn = @import("std").mem.zeroes(ImSpan_ImGuiTableColumn),
    UserOuterSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    DrawSplitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    HostBackupWorkRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    HostBackupParentWorkRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    HostBackupPrevLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    HostBackupCurrLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    HostBackupCursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    HostBackupColumnsOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    HostBackupItemWidth: f32 = 0,
    HostBackupItemWidthStackSize: c_int = 0,
    pub const ImGuiTableTempData_destroy = __root.ImGuiTableTempData_destroy;
    pub const igTableGcCompactTransientBuffers_TableTempDataPtr = __root.igTableGcCompactTransientBuffers_TableTempDataPtr;
    pub const destroy = __root.ImGuiTableTempData_destroy;
    pub const TableTempDataPtr = __root.igTableGcCompactTransientBuffers_TableTempDataPtr;
};
pub const ImGuiTableTempData = struct_ImGuiTableTempData;
pub const struct_ImSpan_ImGuiTableColumnIdx = extern struct {
    Data: [*c]ImGuiTableColumnIdx = null,
    DataEnd: [*c]ImGuiTableColumnIdx = null,
};
pub const ImSpan_ImGuiTableColumnIdx = struct_ImSpan_ImGuiTableColumnIdx;
pub const struct_ImGuiTableCellData = extern struct {
    BgColor: ImU32 = 0,
    Column: ImGuiTableColumnIdx = 0,
};
pub const ImGuiTableCellData = struct_ImGuiTableCellData;
pub const struct_ImSpan_ImGuiTableCellData = extern struct {
    Data: [*c]ImGuiTableCellData = null,
    DataEnd: [*c]ImGuiTableCellData = null,
};
pub const ImSpan_ImGuiTableCellData = struct_ImSpan_ImGuiTableCellData;
pub const ImBitArrayPtr = [*c]ImU32; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:3718:24: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTable = opaque {
    pub const ImGuiTable_destroy = __root.ImGuiTable_destroy;
    pub const igTableBeginInitMemory = __root.igTableBeginInitMemory;
    pub const igTableApplyQueuedRequests = __root.igTableApplyQueuedRequests;
    pub const igTableSetupDrawChannels = __root.igTableSetupDrawChannels;
    pub const igTableReconcileColumns = __root.igTableReconcileColumns;
    pub const igTableUpdateLayout = __root.igTableUpdateLayout;
    pub const igTableUpdateBorders = __root.igTableUpdateBorders;
    pub const igTableUpdateColumnsWeightFromWidth = __root.igTableUpdateColumnsWeightFromWidth;
    pub const igTableApplyExternalUnclipRect = __root.igTableApplyExternalUnclipRect;
    pub const igTableDrawBorders = __root.igTableDrawBorders;
    pub const igTableDrawDefaultContextMenu = __root.igTableDrawDefaultContextMenu;
    pub const igTableBeginContextMenuPopup = __root.igTableBeginContextMenuPopup;
    pub const igTableMergeDrawChannels = __root.igTableMergeDrawChannels;
    pub const igTableGetInstanceData = __root.igTableGetInstanceData;
    pub const igTableGetInstanceID = __root.igTableGetInstanceID;
    pub const igTableFixDisplayOrder = __root.igTableFixDisplayOrder;
    pub const igTableSortSpecsSanitize = __root.igTableSortSpecsSanitize;
    pub const igTableSortSpecsBuild = __root.igTableSortSpecsBuild;
    pub const igTableInitColumnDefaults = __root.igTableInitColumnDefaults;
    pub const igTableFixColumnSortDirection = __root.igTableFixColumnSortDirection;
    pub const igTableGetColumnWidthAuto = __root.igTableGetColumnWidthAuto;
    pub const igTableBeginRow = __root.igTableBeginRow;
    pub const igTableEndRow = __root.igTableEndRow;
    pub const igTableBeginCell = __root.igTableBeginCell;
    pub const igTableEndCell = __root.igTableEndCell;
    pub const igTableGetCellBgRect = __root.igTableGetCellBgRect;
    pub const igTableGetColumnName_TablePtr = __root.igTableGetColumnName_TablePtr;
    pub const igTableGetColumnResizeID = __root.igTableGetColumnResizeID;
    pub const igTableCalcMaxColumnWidth = __root.igTableCalcMaxColumnWidth;
    pub const igTableSetColumnWidthAutoSingle = __root.igTableSetColumnWidthAutoSingle;
    pub const igTableSetColumnWidthAutoAll = __root.igTableSetColumnWidthAutoAll;
    pub const igTableSetColumnDisplayOrder = __root.igTableSetColumnDisplayOrder;
    pub const igTableQueueSetColumnDisplayOrder = __root.igTableQueueSetColumnDisplayOrder;
    pub const igTableRemove = __root.igTableRemove;
    pub const igTableGcCompactTransientBuffers_TablePtr = __root.igTableGcCompactTransientBuffers_TablePtr;
    pub const igTableLoadSettings = __root.igTableLoadSettings;
    pub const igTableLoadSettingsForColumns = __root.igTableLoadSettingsForColumns;
    pub const igTableSaveSettings = __root.igTableSaveSettings;
    pub const igTableResetSettings = __root.igTableResetSettings;
    pub const igTableGetBoundSettings = __root.igTableGetBoundSettings;
    pub const igDebugNodeTable = __root.igDebugNodeTable;
    pub const destroy = __root.ImGuiTable_destroy;
    pub const TablePtr = __root.igTableGetColumnName_TablePtr;
};
pub const ImGuiTable = struct_ImGuiTable;
pub const struct_ImVector_ImGuiTableTempData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiTableTempData = null,
};
pub const ImVector_ImGuiTableTempData = struct_ImVector_ImGuiTableTempData;
pub const struct_ImVector_ImGuiTable = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: ?*ImGuiTable = null,
};
pub const ImVector_ImGuiTable = struct_ImVector_ImGuiTable;
pub const ImPoolIdx = c_int;
pub const struct_ImPool_ImGuiTable = extern struct {
    Buf: ImVector_ImGuiTable = @import("std").mem.zeroes(ImVector_ImGuiTable),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = 0,
    AliveCount: ImPoolIdx = 0,
};
pub const ImPool_ImGuiTable = struct_ImPool_ImGuiTable;
pub const ImS32 = c_int;
pub const struct_ImGuiTabItem = extern struct {
    ID: ImGuiID = 0,
    Flags: ImGuiTabItemFlags = 0,
    Window: ?*ImGuiWindow = null,
    LastFrameVisible: c_int = 0,
    LastFrameSelected: c_int = 0,
    Offset: f32 = 0,
    Width: f32 = 0,
    ContentWidth: f32 = 0,
    RequestedWidth: f32 = 0,
    NameOffset: ImS32 = 0,
    BeginOrder: ImS16 = 0,
    IndexDuringLayout: ImS16 = 0,
    WantClose: bool = false,
    pub const ImGuiTabItem_destroy = __root.ImGuiTabItem_destroy;
    pub const destroy = __root.ImGuiTabItem_destroy;
};
pub const ImGuiTabItem = struct_ImGuiTabItem;
pub const struct_ImVector_ImGuiTabItem = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiTabItem = null,
};
pub const ImVector_ImGuiTabItem = struct_ImVector_ImGuiTabItem;
pub const ImGuiTabBarFlags = c_int;
pub const struct_ImVector_char = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]u8 = null,
};
pub const ImVector_char = struct_ImVector_char;
pub const struct_ImGuiTextBuffer = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    pub const ImGuiTextBuffer_destroy = __root.ImGuiTextBuffer_destroy;
    pub const ImGuiTextBuffer_begin = __root.ImGuiTextBuffer_begin;
    pub const ImGuiTextBuffer_end = __root.ImGuiTextBuffer_end;
    pub const ImGuiTextBuffer_size = __root.ImGuiTextBuffer_size;
    pub const ImGuiTextBuffer_empty = __root.ImGuiTextBuffer_empty;
    pub const ImGuiTextBuffer_clear = __root.ImGuiTextBuffer_clear;
    pub const ImGuiTextBuffer_resize = __root.ImGuiTextBuffer_resize;
    pub const ImGuiTextBuffer_reserve = __root.ImGuiTextBuffer_reserve;
    pub const ImGuiTextBuffer_c_str = __root.ImGuiTextBuffer_c_str;
    pub const ImGuiTextBuffer_append = __root.ImGuiTextBuffer_append;
    pub const ImGuiTextBuffer_appendfv = __root.ImGuiTextBuffer_appendfv;
    pub const ImGuiTextBuffer_appendf = __root.ImGuiTextBuffer_appendf;
    pub const destroy = __root.ImGuiTextBuffer_destroy;
    pub const begin = __root.ImGuiTextBuffer_begin;
    pub const end = __root.ImGuiTextBuffer_end;
    pub const size = __root.ImGuiTextBuffer_size;
    pub const empty = __root.ImGuiTextBuffer_empty;
    pub const clear = __root.ImGuiTextBuffer_clear;
    pub const resize = __root.ImGuiTextBuffer_resize;
    pub const reserve = __root.ImGuiTextBuffer_reserve;
    pub const c_str = __root.ImGuiTextBuffer_c_str;
    pub const append = __root.ImGuiTextBuffer_append;
    pub const appendfv = __root.ImGuiTextBuffer_appendfv;
    pub const appendf = __root.ImGuiTextBuffer_appendf;
};
pub const ImGuiTextBuffer = struct_ImGuiTextBuffer;
pub const struct_ImGuiTabBar = extern struct {
    Window: ?*ImGuiWindow = null,
    Tabs: ImVector_ImGuiTabItem = @import("std").mem.zeroes(ImVector_ImGuiTabItem),
    Flags: ImGuiTabBarFlags = 0,
    ID: ImGuiID = 0,
    SelectedTabId: ImGuiID = 0,
    NextSelectedTabId: ImGuiID = 0,
    NextScrollToTabId: ImGuiID = 0,
    VisibleTabId: ImGuiID = 0,
    CurrFrameVisible: c_int = 0,
    PrevFrameVisible: c_int = 0,
    BarRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    BarRectPrevWidth: f32 = 0,
    CurrTabsContentsHeight: f32 = 0,
    PrevTabsContentsHeight: f32 = 0,
    WidthAllTabs: f32 = 0,
    WidthAllTabsIdeal: f32 = 0,
    ScrollingAnim: f32 = 0,
    ScrollingTarget: f32 = 0,
    ScrollingTargetDistToVisibility: f32 = 0,
    ScrollingSpeed: f32 = 0,
    ScrollingRectMinX: f32 = 0,
    ScrollingRectMaxX: f32 = 0,
    SeparatorMinX: f32 = 0,
    SeparatorMaxX: f32 = 0,
    ReorderRequestTabId: ImGuiID = 0,
    ReorderRequestOffset: ImS16 = 0,
    BeginCount: ImS8 = 0,
    WantLayout: bool = false,
    VisibleTabWasSubmitted: bool = false,
    TabsAddedNew: bool = false,
    ScrollButtonEnabled: bool = false,
    TabsActiveCount: ImS16 = 0,
    LastTabItemIdx: ImS16 = 0,
    ItemSpacingY: f32 = 0,
    FramePadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TabsNames: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    pub const ImGuiTabBar_destroy = __root.ImGuiTabBar_destroy;
    pub const igTabBarRemove = __root.igTabBarRemove;
    pub const igBeginTabBarEx = __root.igBeginTabBarEx;
    pub const igTabBarFindTabByID = __root.igTabBarFindTabByID;
    pub const igTabBarFindTabByOrder = __root.igTabBarFindTabByOrder;
    pub const igTabBarFindMostRecentlySelectedTabForActiveWindow = __root.igTabBarFindMostRecentlySelectedTabForActiveWindow;
    pub const igTabBarGetCurrentTab = __root.igTabBarGetCurrentTab;
    pub const igTabBarGetTabOrder = __root.igTabBarGetTabOrder;
    pub const igTabBarGetTabName = __root.igTabBarGetTabName;
    pub const igTabBarAddTab = __root.igTabBarAddTab;
    pub const igTabBarRemoveTab = __root.igTabBarRemoveTab;
    pub const igTabBarCloseTab = __root.igTabBarCloseTab;
    pub const igTabBarQueueFocus_TabItemPtr = __root.igTabBarQueueFocus_TabItemPtr;
    pub const igTabBarQueueFocus_Str = __root.igTabBarQueueFocus_Str;
    pub const igTabBarQueueReorder = __root.igTabBarQueueReorder;
    pub const igTabBarQueueReorderFromMousePos = __root.igTabBarQueueReorderFromMousePos;
    pub const igTabBarProcessReorder = __root.igTabBarProcessReorder;
    pub const igTabItemEx = __root.igTabItemEx;
    pub const igDebugNodeTabBar = __root.igDebugNodeTabBar;
    pub const destroy = __root.ImGuiTabBar_destroy;
    pub const TabItemPtr = __root.igTabBarQueueFocus_TabItemPtr;
    pub const Str = __root.igTabBarQueueFocus_Str;
};
pub const ImGuiTabBar = struct_ImGuiTabBar;
pub const struct_ImVector_ImGuiTabBar = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiTabBar = null,
};
pub const ImVector_ImGuiTabBar = struct_ImVector_ImGuiTabBar;
pub const struct_ImPool_ImGuiTabBar = extern struct {
    Buf: ImVector_ImGuiTabBar = @import("std").mem.zeroes(ImVector_ImGuiTabBar),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = 0,
    AliveCount: ImPoolIdx = 0,
};
pub const ImPool_ImGuiTabBar = struct_ImPool_ImGuiTabBar;
pub const struct_ImGuiPtrOrIndex = extern struct {
    Ptr: ?*anyopaque = null,
    Index: c_int = 0,
    pub const ImGuiPtrOrIndex_destroy = __root.ImGuiPtrOrIndex_destroy;
    pub const destroy = __root.ImGuiPtrOrIndex_destroy;
};
pub const ImGuiPtrOrIndex = struct_ImGuiPtrOrIndex;
pub const struct_ImVector_ImGuiPtrOrIndex = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiPtrOrIndex = null,
};
pub const ImVector_ImGuiPtrOrIndex = struct_ImVector_ImGuiPtrOrIndex;
pub const struct_ImGuiShrinkWidthItem = extern struct {
    Index: c_int = 0,
    Width: f32 = 0,
    InitialWidth: f32 = 0,
    pub const igShrinkWidths = __root.igShrinkWidths;
};
pub const ImGuiShrinkWidthItem = struct_ImGuiShrinkWidthItem;
pub const struct_ImVector_ImGuiShrinkWidthItem = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiShrinkWidthItem = null,
};
pub const ImVector_ImGuiShrinkWidthItem = struct_ImVector_ImGuiShrinkWidthItem; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:2631:19: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiBoxSelectState = opaque {
    pub const ImGuiBoxSelectState_destroy = __root.ImGuiBoxSelectState_destroy;
    pub const destroy = __root.ImGuiBoxSelectState_destroy;
};
pub const ImGuiBoxSelectState = struct_ImGuiBoxSelectState; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:3245:25: warning: struct demoted to opaque type - has opaque field
pub const struct_ImGuiContext = opaque {
    pub const igDestroyContext = __root.igDestroyContext;
    pub const igSetCurrentContext = __root.igSetCurrentContext;
    pub const ImGuiContext_destroy = __root.ImGuiContext_destroy;
    pub const ImGuiWindow_ImGuiWindow = __root.ImGuiWindow_ImGuiWindow;
    pub const igGetIO_ContextPtr = __root.igGetIO_ContextPtr;
    pub const igGetPlatformIO_ContextPtr = __root.igGetPlatformIO_ContextPtr;
    pub const igSetContextName = __root.igSetContextName;
    pub const igAddContextHook = __root.igAddContextHook;
    pub const igRemoveContextHook = __root.igRemoveContextHook;
    pub const igCallContextHooks = __root.igCallContextHooks;
    pub const igGetKeyData_ContextPtr = __root.igGetKeyData_ContextPtr;
    pub const igGetKeyOwnerData = __root.igGetKeyOwnerData;
    pub const igDockContextInitialize = __root.igDockContextInitialize;
    pub const igDockContextShutdown = __root.igDockContextShutdown;
    pub const igDockContextClearNodes = __root.igDockContextClearNodes;
    pub const igDockContextRebuildNodes = __root.igDockContextRebuildNodes;
    pub const igDockContextNewFrameUpdateUndocking = __root.igDockContextNewFrameUpdateUndocking;
    pub const igDockContextNewFrameUpdateDocking = __root.igDockContextNewFrameUpdateDocking;
    pub const igDockContextEndFrame = __root.igDockContextEndFrame;
    pub const igDockContextGenNodeID = __root.igDockContextGenNodeID;
    pub const igDockContextQueueDock = __root.igDockContextQueueDock;
    pub const igDockContextQueueUndockWindow = __root.igDockContextQueueUndockWindow;
    pub const igDockContextQueueUndockNode = __root.igDockContextQueueUndockNode;
    pub const igDockContextProcessUndockWindow = __root.igDockContextProcessUndockWindow;
    pub const igDockContextProcessUndockNode = __root.igDockContextProcessUndockNode;
    pub const igDockContextFindNodeByID = __root.igDockContextFindNodeByID;
    pub const igDockNodeWindowMenuHandler_Default = __root.igDockNodeWindowMenuHandler_Default;
    pub const imnodes_SetImGuiContext = __root.imnodes_SetImGuiContext;
    pub const destroy = __root.ImGuiContext_destroy;
    pub const ContextPtr = __root.igGetIO_ContextPtr;
    pub const Default = __root.igDockNodeWindowMenuHandler_Default;
    pub const SetImGuiContext = __root.imnodes_SetImGuiContext;
};
pub const ImGuiContext = struct_ImGuiContext;
pub const struct_ImFontAtlas = extern struct {
    Flags: ImFontAtlasFlags = 0,
    TexDesiredFormat: ImTextureFormat = @import("std").mem.zeroes(ImTextureFormat),
    TexGlyphPadding: c_int = 0,
    TexMinWidth: c_int = 0,
    TexMinHeight: c_int = 0,
    TexMaxWidth: c_int = 0,
    TexMaxHeight: c_int = 0,
    UserData: ?*anyopaque = null,
    TexRef: ImTextureRef_c = @import("std").mem.zeroes(ImTextureRef_c),
    TexData: [*c]ImTextureData = null,
    TexList: ImVector_ImTextureDataPtr = @import("std").mem.zeroes(ImVector_ImTextureDataPtr),
    Locked: bool = false,
    RendererHasTextures: bool = false,
    TexIsBuilt: bool = false,
    TexPixelsUseColors: bool = false,
    TexUvScale: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TexUvWhitePixel: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Fonts: ImVector_ImFontPtr = @import("std").mem.zeroes(ImVector_ImFontPtr),
    Sources: ImVector_ImFontConfig = @import("std").mem.zeroes(ImVector_ImFontConfig),
    TexUvLines: [33]ImVec4_c = @import("std").mem.zeroes([33]ImVec4_c),
    TexNextUniqueID: c_int = 0,
    FontNextUniqueID: c_int = 0,
    DrawListSharedDatas: ImVector_ImDrawListSharedDataPtr = @import("std").mem.zeroes(ImVector_ImDrawListSharedDataPtr),
    Builder: [*c]ImFontAtlasBuilder = null,
    FontLoader: [*c]const ImFontLoader = null,
    FontLoaderName: [*c]const u8 = null,
    FontLoaderData: ?*anyopaque = null,
    FontLoaderFlags: c_uint = 0,
    RefCount: c_int = 0,
    OwnerContext: ?*ImGuiContext = null,
    pub const igCreateContext = __root.igCreateContext;
    pub const ImFontAtlas_destroy = __root.ImFontAtlas_destroy;
    pub const ImFontAtlas_AddFont = __root.ImFontAtlas_AddFont;
    pub const ImFontAtlas_AddFontDefault = __root.ImFontAtlas_AddFontDefault;
    pub const ImFontAtlas_AddFontDefaultVector = __root.ImFontAtlas_AddFontDefaultVector;
    pub const ImFontAtlas_AddFontDefaultBitmap = __root.ImFontAtlas_AddFontDefaultBitmap;
    pub const ImFontAtlas_AddFontFromFileTTF = __root.ImFontAtlas_AddFontFromFileTTF;
    pub const ImFontAtlas_AddFontFromMemoryTTF = __root.ImFontAtlas_AddFontFromMemoryTTF;
    pub const ImFontAtlas_AddFontFromMemoryCompressedTTF = __root.ImFontAtlas_AddFontFromMemoryCompressedTTF;
    pub const ImFontAtlas_AddFontFromMemoryCompressedBase85TTF = __root.ImFontAtlas_AddFontFromMemoryCompressedBase85TTF;
    pub const ImFontAtlas_RemoveFont = __root.ImFontAtlas_RemoveFont;
    pub const ImFontAtlas_CompactCache = __root.ImFontAtlas_CompactCache;
    pub const ImFontAtlas_SetFontLoader = __root.ImFontAtlas_SetFontLoader;
    pub const ImFontAtlas_Clear = __root.ImFontAtlas_Clear;
    pub const ImFontAtlas_ClearFonts = __root.ImFontAtlas_ClearFonts;
    pub const ImFontAtlas_ClearInputData = __root.ImFontAtlas_ClearInputData;
    pub const ImFontAtlas_ClearTexData = __root.ImFontAtlas_ClearTexData;
    pub const ImFontAtlas_GetGlyphRangesDefault = __root.ImFontAtlas_GetGlyphRangesDefault;
    pub const ImFontAtlas_AddCustomRect = __root.ImFontAtlas_AddCustomRect;
    pub const ImFontAtlas_RemoveCustomRect = __root.ImFontAtlas_RemoveCustomRect;
    pub const ImFontAtlas_GetCustomRect = __root.ImFontAtlas_GetCustomRect;
    pub const ImGuiContext_ImGuiContext = __root.ImGuiContext_ImGuiContext;
    pub const igRegisterFontAtlas = __root.igRegisterFontAtlas;
    pub const igUnregisterFontAtlas = __root.igUnregisterFontAtlas;
    pub const igShowFontAtlas = __root.igShowFontAtlas;
    pub const igImFontAtlasBuildInit = __root.igImFontAtlasBuildInit;
    pub const igImFontAtlasBuildDestroy = __root.igImFontAtlasBuildDestroy;
    pub const igImFontAtlasBuildMain = __root.igImFontAtlasBuildMain;
    pub const igImFontAtlasBuildSetupFontLoader = __root.igImFontAtlasBuildSetupFontLoader;
    pub const igImFontAtlasBuildNotifySetFont = __root.igImFontAtlasBuildNotifySetFont;
    pub const igImFontAtlasBuildUpdatePointers = __root.igImFontAtlasBuildUpdatePointers;
    pub const igImFontAtlasBuildRenderBitmapFromString = __root.igImFontAtlasBuildRenderBitmapFromString;
    pub const igImFontAtlasBuildClear = __root.igImFontAtlasBuildClear;
    pub const igImFontAtlasTextureAdd = __root.igImFontAtlasTextureAdd;
    pub const igImFontAtlasTextureMakeSpace = __root.igImFontAtlasTextureMakeSpace;
    pub const igImFontAtlasTextureRepack = __root.igImFontAtlasTextureRepack;
    pub const igImFontAtlasTextureGrow = __root.igImFontAtlasTextureGrow;
    pub const igImFontAtlasTextureCompact = __root.igImFontAtlasTextureCompact;
    pub const igImFontAtlasTextureGetSizeEstimate = __root.igImFontAtlasTextureGetSizeEstimate;
    pub const igImFontAtlasBuildSetupFontSpecialGlyphs = __root.igImFontAtlasBuildSetupFontSpecialGlyphs;
    pub const igImFontAtlasBuildLegacyPreloadAllGlyphRanges = __root.igImFontAtlasBuildLegacyPreloadAllGlyphRanges;
    pub const igImFontAtlasBuildDiscardBakes = __root.igImFontAtlasBuildDiscardBakes;
    pub const igImFontAtlasFontSourceInit = __root.igImFontAtlasFontSourceInit;
    pub const igImFontAtlasFontSourceAddToFont = __root.igImFontAtlasFontSourceAddToFont;
    pub const igImFontAtlasFontDestroySourceData = __root.igImFontAtlasFontDestroySourceData;
    pub const igImFontAtlasFontInitOutput = __root.igImFontAtlasFontInitOutput;
    pub const igImFontAtlasFontDestroyOutput = __root.igImFontAtlasFontDestroyOutput;
    pub const igImFontAtlasFontRebuildOutput = __root.igImFontAtlasFontRebuildOutput;
    pub const igImFontAtlasFontDiscardBakes = __root.igImFontAtlasFontDiscardBakes;
    pub const igImFontAtlasBakedGetOrAdd = __root.igImFontAtlasBakedGetOrAdd;
    pub const igImFontAtlasBakedGetClosestMatch = __root.igImFontAtlasBakedGetClosestMatch;
    pub const igImFontAtlasBakedAdd = __root.igImFontAtlasBakedAdd;
    pub const igImFontAtlasBakedDiscard = __root.igImFontAtlasBakedDiscard;
    pub const igImFontAtlasBakedAddFontGlyph = __root.igImFontAtlasBakedAddFontGlyph;
    pub const igImFontAtlasBakedAddFontGlyphAdvancedX = __root.igImFontAtlasBakedAddFontGlyphAdvancedX;
    pub const igImFontAtlasBakedDiscardFontGlyph = __root.igImFontAtlasBakedDiscardFontGlyph;
    pub const igImFontAtlasBakedSetFontGlyphBitmap = __root.igImFontAtlasBakedSetFontGlyphBitmap;
    pub const igImFontAtlasPackInit = __root.igImFontAtlasPackInit;
    pub const igImFontAtlasPackAddRect = __root.igImFontAtlasPackAddRect;
    pub const igImFontAtlasPackGetRect = __root.igImFontAtlasPackGetRect;
    pub const igImFontAtlasPackGetRectSafe = __root.igImFontAtlasPackGetRectSafe;
    pub const igImFontAtlasPackDiscardRect = __root.igImFontAtlasPackDiscardRect;
    pub const igImFontAtlasUpdateNewFrame = __root.igImFontAtlasUpdateNewFrame;
    pub const igImFontAtlasAddDrawListSharedData = __root.igImFontAtlasAddDrawListSharedData;
    pub const igImFontAtlasRemoveDrawListSharedData = __root.igImFontAtlasRemoveDrawListSharedData;
    pub const igImFontAtlasUpdateDrawListsTextures = __root.igImFontAtlasUpdateDrawListsTextures;
    pub const igImFontAtlasUpdateDrawListsSharedData = __root.igImFontAtlasUpdateDrawListsSharedData;
    pub const igImFontAtlasTextureBlockQueueUpload = __root.igImFontAtlasTextureBlockQueueUpload;
    pub const igImFontAtlasDebugLogTextureRequests = __root.igImFontAtlasDebugLogTextureRequests;
    pub const igImFontAtlasGetMouseCursorTexData = __root.igImFontAtlasGetMouseCursorTexData;
    pub const destroy = __root.ImFontAtlas_destroy;
    pub const AddFont = __root.ImFontAtlas_AddFont;
    pub const AddFontDefault = __root.ImFontAtlas_AddFontDefault;
    pub const AddFontDefaultVector = __root.ImFontAtlas_AddFontDefaultVector;
    pub const AddFontDefaultBitmap = __root.ImFontAtlas_AddFontDefaultBitmap;
    pub const AddFontFromFileTTF = __root.ImFontAtlas_AddFontFromFileTTF;
    pub const AddFontFromMemoryTTF = __root.ImFontAtlas_AddFontFromMemoryTTF;
    pub const AddFontFromMemoryCompressedTTF = __root.ImFontAtlas_AddFontFromMemoryCompressedTTF;
    pub const AddFontFromMemoryCompressedBase85TTF = __root.ImFontAtlas_AddFontFromMemoryCompressedBase85TTF;
    pub const RemoveFont = __root.ImFontAtlas_RemoveFont;
    pub const CompactCache = __root.ImFontAtlas_CompactCache;
    pub const SetFontLoader = __root.ImFontAtlas_SetFontLoader;
    pub const Clear = __root.ImFontAtlas_Clear;
    pub const ClearFonts = __root.ImFontAtlas_ClearFonts;
    pub const ClearInputData = __root.ImFontAtlas_ClearInputData;
    pub const ClearTexData = __root.ImFontAtlas_ClearTexData;
    pub const GetGlyphRangesDefault = __root.ImFontAtlas_GetGlyphRangesDefault;
    pub const AddCustomRect = __root.ImFontAtlas_AddCustomRect;
    pub const RemoveCustomRect = __root.ImFontAtlas_RemoveCustomRect;
    pub const GetCustomRect = __root.ImFontAtlas_GetCustomRect;
};
pub const ImFontAtlas = struct_ImFontAtlas;
pub const struct_ImVector_ImVec2 = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImVec2_c = null,
};
pub const ImVector_ImVec2 = struct_ImVector_ImVec2;
pub const struct_ImDrawListSharedData = extern struct {
    TexUvWhitePixel: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    TexUvLines: [*c]const ImVec4_c = null,
    FontAtlas: [*c]ImFontAtlas = null,
    Font: [*c]ImFont = null,
    FontSize: f32 = 0,
    FontScale: f32 = 0,
    CurveTessellationTol: f32 = 0,
    CircleTessellationMaxError: f32 = 0,
    InitialFringeScale: f32 = 0,
    InitialFlags: ImDrawListFlags = 0,
    ClipRectFullscreen: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    TempBuffer: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    DrawLists: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
    Context: ?*ImGuiContext = null,
    ArcFastVtx: [48]ImVec2_c = @import("std").mem.zeroes([48]ImVec2_c),
    ArcFastRadiusCutoff: f32 = 0,
    CircleSegmentCounts: [64]ImU8 = @import("std").mem.zeroes([64]ImU8),
    pub const ImDrawList_ImDrawList = __root.ImDrawList_ImDrawList;
    pub const ImDrawListSharedData_destroy = __root.ImDrawListSharedData_destroy;
    pub const ImDrawListSharedData_SetCircleTessellationMaxError = __root.ImDrawListSharedData_SetCircleTessellationMaxError;
    pub const destroy = __root.ImDrawListSharedData_destroy;
    pub const SetCircleTessellationMaxError = __root.ImDrawListSharedData_SetCircleTessellationMaxError;
};
pub const ImDrawListSharedData = struct_ImDrawListSharedData;
pub const struct_ImDrawCmdHeader = extern struct {
    ClipRect: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    TexRef: ImTextureRef_c = @import("std").mem.zeroes(ImTextureRef_c),
    VtxOffset: c_uint = 0,
};
pub const ImDrawCmdHeader = struct_ImDrawCmdHeader;
pub const struct_ImVector_ImVec4 = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImVec4_c = null,
};
pub const ImVector_ImVec4 = struct_ImVector_ImVec4;
pub const struct_ImVector_ImTextureRef = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImTextureRef_c = null,
};
pub const ImVector_ImTextureRef = struct_ImVector_ImTextureRef;
pub const struct_ImVector_ImU8 = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImU8 = null,
};
pub const ImVector_ImU8 = struct_ImVector_ImU8;
pub const struct_ImDrawList = extern struct {
    CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
    VtxBuffer: ImVector_ImDrawVert = @import("std").mem.zeroes(ImVector_ImDrawVert),
    Flags: ImDrawListFlags = 0,
    _VtxCurrentIdx: c_uint = 0,
    _Data: [*c]ImDrawListSharedData = null,
    _VtxWritePtr: [*c]ImDrawVert = null,
    _IdxWritePtr: [*c]ImDrawIdx = null,
    _Path: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    _CmdHeader: ImDrawCmdHeader = @import("std").mem.zeroes(ImDrawCmdHeader),
    _Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    _ClipRectStack: ImVector_ImVec4 = @import("std").mem.zeroes(ImVector_ImVec4),
    _TextureStack: ImVector_ImTextureRef = @import("std").mem.zeroes(ImVector_ImTextureRef),
    _CallbacksDataBuf: ImVector_ImU8 = @import("std").mem.zeroes(ImVector_ImU8),
    _FringeScale: f32 = 0,
    _OwnerName: [*c]const u8 = null,
    pub const ImDrawList_destroy = __root.ImDrawList_destroy;
    pub const ImDrawList_PushClipRect = __root.ImDrawList_PushClipRect;
    pub const ImDrawList_PushClipRectFullScreen = __root.ImDrawList_PushClipRectFullScreen;
    pub const ImDrawList_PopClipRect = __root.ImDrawList_PopClipRect;
    pub const ImDrawList_PushTexture = __root.ImDrawList_PushTexture;
    pub const ImDrawList_PopTexture = __root.ImDrawList_PopTexture;
    pub const ImDrawList_GetClipRectMin = __root.ImDrawList_GetClipRectMin;
    pub const ImDrawList_GetClipRectMax = __root.ImDrawList_GetClipRectMax;
    pub const ImDrawList_AddLine = __root.ImDrawList_AddLine;
    pub const ImDrawList_AddLineH = __root.ImDrawList_AddLineH;
    pub const ImDrawList_AddLineV = __root.ImDrawList_AddLineV;
    pub const ImDrawList_AddRect = __root.ImDrawList_AddRect;
    pub const ImDrawList_AddRectFilled = __root.ImDrawList_AddRectFilled;
    pub const ImDrawList_AddRectFilledMultiColor = __root.ImDrawList_AddRectFilledMultiColor;
    pub const ImDrawList_AddQuad = __root.ImDrawList_AddQuad;
    pub const ImDrawList_AddQuadFilled = __root.ImDrawList_AddQuadFilled;
    pub const ImDrawList_AddTriangle = __root.ImDrawList_AddTriangle;
    pub const ImDrawList_AddTriangleFilled = __root.ImDrawList_AddTriangleFilled;
    pub const ImDrawList_AddCircle = __root.ImDrawList_AddCircle;
    pub const ImDrawList_AddCircleFilled = __root.ImDrawList_AddCircleFilled;
    pub const ImDrawList_AddNgon = __root.ImDrawList_AddNgon;
    pub const ImDrawList_AddNgonFilled = __root.ImDrawList_AddNgonFilled;
    pub const ImDrawList_AddEllipse = __root.ImDrawList_AddEllipse;
    pub const ImDrawList_AddEllipseFilled = __root.ImDrawList_AddEllipseFilled;
    pub const ImDrawList_AddText_Vec2 = __root.ImDrawList_AddText_Vec2;
    pub const ImDrawList_AddText_FontPtr = __root.ImDrawList_AddText_FontPtr;
    pub const ImDrawList_AddBezierCubic = __root.ImDrawList_AddBezierCubic;
    pub const ImDrawList_AddBezierQuadratic = __root.ImDrawList_AddBezierQuadratic;
    pub const ImDrawList_AddPolyline = __root.ImDrawList_AddPolyline;
    pub const ImDrawList_AddConvexPolyFilled = __root.ImDrawList_AddConvexPolyFilled;
    pub const ImDrawList_AddConcavePolyFilled = __root.ImDrawList_AddConcavePolyFilled;
    pub const ImDrawList_AddImage = __root.ImDrawList_AddImage;
    pub const ImDrawList_AddImageQuad = __root.ImDrawList_AddImageQuad;
    pub const ImDrawList_AddImageRounded = __root.ImDrawList_AddImageRounded;
    pub const ImDrawList_PathClear = __root.ImDrawList_PathClear;
    pub const ImDrawList_PathLineTo = __root.ImDrawList_PathLineTo;
    pub const ImDrawList_PathLineToMergeDuplicate = __root.ImDrawList_PathLineToMergeDuplicate;
    pub const ImDrawList_PathFillConvex = __root.ImDrawList_PathFillConvex;
    pub const ImDrawList_PathFillConcave = __root.ImDrawList_PathFillConcave;
    pub const ImDrawList_PathStroke = __root.ImDrawList_PathStroke;
    pub const ImDrawList_PathArcTo = __root.ImDrawList_PathArcTo;
    pub const ImDrawList_PathArcToFast = __root.ImDrawList_PathArcToFast;
    pub const ImDrawList_PathEllipticalArcTo = __root.ImDrawList_PathEllipticalArcTo;
    pub const ImDrawList_PathBezierCubicCurveTo = __root.ImDrawList_PathBezierCubicCurveTo;
    pub const ImDrawList_PathBezierQuadraticCurveTo = __root.ImDrawList_PathBezierQuadraticCurveTo;
    pub const ImDrawList_PathRect = __root.ImDrawList_PathRect;
    pub const ImDrawList_AddCallback = __root.ImDrawList_AddCallback;
    pub const ImDrawList_AddDrawCmd = __root.ImDrawList_AddDrawCmd;
    pub const ImDrawList_CloneOutput = __root.ImDrawList_CloneOutput;
    pub const ImDrawList_ChannelsSplit = __root.ImDrawList_ChannelsSplit;
    pub const ImDrawList_ChannelsMerge = __root.ImDrawList_ChannelsMerge;
    pub const ImDrawList_ChannelsSetCurrent = __root.ImDrawList_ChannelsSetCurrent;
    pub const ImDrawList_PrimReserve = __root.ImDrawList_PrimReserve;
    pub const ImDrawList_PrimUnreserve = __root.ImDrawList_PrimUnreserve;
    pub const ImDrawList_PrimRect = __root.ImDrawList_PrimRect;
    pub const ImDrawList_PrimRectUV = __root.ImDrawList_PrimRectUV;
    pub const ImDrawList_PrimQuadUV = __root.ImDrawList_PrimQuadUV;
    pub const ImDrawList_PrimWriteVtx = __root.ImDrawList_PrimWriteVtx;
    pub const ImDrawList_PrimWriteIdx = __root.ImDrawList_PrimWriteIdx;
    pub const ImDrawList_PrimVtx = __root.ImDrawList_PrimVtx;
    pub const ImDrawList__SetDrawListSharedData = __root.ImDrawList__SetDrawListSharedData;
    pub const ImDrawList__ResetForNewFrame = __root.ImDrawList__ResetForNewFrame;
    pub const ImDrawList__ClearFreeMemory = __root.ImDrawList__ClearFreeMemory;
    pub const ImDrawList__PopUnusedDrawCmd = __root.ImDrawList__PopUnusedDrawCmd;
    pub const ImDrawList__TryMergeDrawCmds = __root.ImDrawList__TryMergeDrawCmds;
    pub const ImDrawList__OnChangedClipRect = __root.ImDrawList__OnChangedClipRect;
    pub const ImDrawList__OnChangedTexture = __root.ImDrawList__OnChangedTexture;
    pub const ImDrawList__OnChangedVtxOffset = __root.ImDrawList__OnChangedVtxOffset;
    pub const ImDrawList__SetTexture = __root.ImDrawList__SetTexture;
    pub const ImDrawList__CalcCircleAutoSegmentCount = __root.ImDrawList__CalcCircleAutoSegmentCount;
    pub const ImDrawList__PathArcToFastEx = __root.ImDrawList__PathArcToFastEx;
    pub const ImDrawList__PathArcToN = __root.ImDrawList__PathArcToN;
    pub const igRenderDragDropTargetRectEx = __root.igRenderDragDropTargetRectEx;
    pub const igTabItemBackground = __root.igTabItemBackground;
    pub const igTabItemLabelAndCloseButton = __root.igTabItemLabelAndCloseButton;
    pub const igRenderTextClippedEx = __root.igRenderTextClippedEx;
    pub const igRenderTextEllipsis = __root.igRenderTextEllipsis;
    pub const igRenderColorRectWithAlphaCheckerboard = __root.igRenderColorRectWithAlphaCheckerboard;
    pub const igRenderArrow = __root.igRenderArrow;
    pub const igRenderBullet = __root.igRenderBullet;
    pub const igRenderCheckMark = __root.igRenderCheckMark;
    pub const igRenderArrowPointingAt = __root.igRenderArrowPointingAt;
    pub const igRenderArrowDockMenu = __root.igRenderArrowDockMenu;
    pub const igRenderRectFilledInRangeH = __root.igRenderRectFilledInRangeH;
    pub const igRenderRectFilledWithHole = __root.igRenderRectFilledWithHole;
    pub const igShadeVertsLinearColorGradientKeepAlpha = __root.igShadeVertsLinearColorGradientKeepAlpha;
    pub const igShadeVertsLinearUV = __root.igShadeVertsLinearUV;
    pub const igShadeVertsTransformPos = __root.igShadeVertsTransformPos;
    pub const igDebugNodeDrawCmdShowMeshAndBoundingBox = __root.igDebugNodeDrawCmdShowMeshAndBoundingBox;
    pub const igDebugRenderKeyboardPreview = __root.igDebugRenderKeyboardPreview;
    pub const igDebugRenderViewportThumbnail = __root.igDebugRenderViewportThumbnail;
    pub const destroy = __root.ImDrawList_destroy;
    pub const PushClipRect = __root.ImDrawList_PushClipRect;
    pub const PushClipRectFullScreen = __root.ImDrawList_PushClipRectFullScreen;
    pub const PopClipRect = __root.ImDrawList_PopClipRect;
    pub const PushTexture = __root.ImDrawList_PushTexture;
    pub const PopTexture = __root.ImDrawList_PopTexture;
    pub const GetClipRectMin = __root.ImDrawList_GetClipRectMin;
    pub const GetClipRectMax = __root.ImDrawList_GetClipRectMax;
    pub const AddLine = __root.ImDrawList_AddLine;
    pub const AddLineH = __root.ImDrawList_AddLineH;
    pub const AddLineV = __root.ImDrawList_AddLineV;
    pub const AddRect = __root.ImDrawList_AddRect;
    pub const AddRectFilled = __root.ImDrawList_AddRectFilled;
    pub const AddRectFilledMultiColor = __root.ImDrawList_AddRectFilledMultiColor;
    pub const AddQuad = __root.ImDrawList_AddQuad;
    pub const AddQuadFilled = __root.ImDrawList_AddQuadFilled;
    pub const AddTriangle = __root.ImDrawList_AddTriangle;
    pub const AddTriangleFilled = __root.ImDrawList_AddTriangleFilled;
    pub const AddCircle = __root.ImDrawList_AddCircle;
    pub const AddCircleFilled = __root.ImDrawList_AddCircleFilled;
    pub const AddNgon = __root.ImDrawList_AddNgon;
    pub const AddNgonFilled = __root.ImDrawList_AddNgonFilled;
    pub const AddEllipse = __root.ImDrawList_AddEllipse;
    pub const AddEllipseFilled = __root.ImDrawList_AddEllipseFilled;
    pub const AddText_Vec2 = __root.ImDrawList_AddText_Vec2;
    pub const AddText_FontPtr = __root.ImDrawList_AddText_FontPtr;
    pub const AddBezierCubic = __root.ImDrawList_AddBezierCubic;
    pub const AddBezierQuadratic = __root.ImDrawList_AddBezierQuadratic;
    pub const AddPolyline = __root.ImDrawList_AddPolyline;
    pub const AddConvexPolyFilled = __root.ImDrawList_AddConvexPolyFilled;
    pub const AddConcavePolyFilled = __root.ImDrawList_AddConcavePolyFilled;
    pub const AddImage = __root.ImDrawList_AddImage;
    pub const AddImageQuad = __root.ImDrawList_AddImageQuad;
    pub const AddImageRounded = __root.ImDrawList_AddImageRounded;
    pub const PathClear = __root.ImDrawList_PathClear;
    pub const PathLineTo = __root.ImDrawList_PathLineTo;
    pub const PathLineToMergeDuplicate = __root.ImDrawList_PathLineToMergeDuplicate;
    pub const PathFillConvex = __root.ImDrawList_PathFillConvex;
    pub const PathFillConcave = __root.ImDrawList_PathFillConcave;
    pub const PathStroke = __root.ImDrawList_PathStroke;
    pub const PathArcTo = __root.ImDrawList_PathArcTo;
    pub const PathArcToFast = __root.ImDrawList_PathArcToFast;
    pub const PathEllipticalArcTo = __root.ImDrawList_PathEllipticalArcTo;
    pub const PathBezierCubicCurveTo = __root.ImDrawList_PathBezierCubicCurveTo;
    pub const PathBezierQuadraticCurveTo = __root.ImDrawList_PathBezierQuadraticCurveTo;
    pub const PathRect = __root.ImDrawList_PathRect;
    pub const AddCallback = __root.ImDrawList_AddCallback;
    pub const AddDrawCmd = __root.ImDrawList_AddDrawCmd;
    pub const CloneOutput = __root.ImDrawList_CloneOutput;
    pub const ChannelsSplit = __root.ImDrawList_ChannelsSplit;
    pub const ChannelsMerge = __root.ImDrawList_ChannelsMerge;
    pub const ChannelsSetCurrent = __root.ImDrawList_ChannelsSetCurrent;
    pub const PrimReserve = __root.ImDrawList_PrimReserve;
    pub const PrimUnreserve = __root.ImDrawList_PrimUnreserve;
    pub const PrimRect = __root.ImDrawList_PrimRect;
    pub const PrimRectUV = __root.ImDrawList_PrimRectUV;
    pub const PrimQuadUV = __root.ImDrawList_PrimQuadUV;
    pub const PrimWriteVtx = __root.ImDrawList_PrimWriteVtx;
    pub const PrimWriteIdx = __root.ImDrawList_PrimWriteIdx;
    pub const PrimVtx = __root.ImDrawList_PrimVtx;
    pub const SetDrawListSharedData = __root.ImDrawList__SetDrawListSharedData;
    pub const ResetForNewFrame = __root.ImDrawList__ResetForNewFrame;
    pub const ClearFreeMemory = __root.ImDrawList__ClearFreeMemory;
    pub const PopUnusedDrawCmd = __root.ImDrawList__PopUnusedDrawCmd;
    pub const TryMergeDrawCmds = __root.ImDrawList__TryMergeDrawCmds;
    pub const OnChangedClipRect = __root.ImDrawList__OnChangedClipRect;
    pub const OnChangedTexture = __root.ImDrawList__OnChangedTexture;
    pub const OnChangedVtxOffset = __root.ImDrawList__OnChangedVtxOffset;
    pub const SetTexture = __root.ImDrawList__SetTexture;
    pub const CalcCircleAutoSegmentCount = __root.ImDrawList__CalcCircleAutoSegmentCount;
    pub const PathArcToFastEx = __root.ImDrawList__PathArcToFastEx;
    pub const PathArcToN = __root.ImDrawList__PathArcToN;
};
pub const ImDrawList = struct_ImDrawList;
pub const ImDrawCallback = ?*const fn (parent_list: [*c]const ImDrawList, cmd: [*c]const ImDrawCmd) callconv(.c) void;
pub const struct_ImDrawCmd = extern struct {
    ClipRect: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    TexRef: ImTextureRef_c = @import("std").mem.zeroes(ImTextureRef_c),
    VtxOffset: c_uint = 0,
    IdxOffset: c_uint = 0,
    ElemCount: c_uint = 0,
    UserCallback: ImDrawCallback = null,
    UserCallbackData: ?*anyopaque = null,
    UserCallbackDataSize: c_int = 0,
    UserCallbackDataOffset: c_int = 0,
    pub const ImDrawCmd_destroy = __root.ImDrawCmd_destroy;
    pub const ImDrawCmd_GetTexID = __root.ImDrawCmd_GetTexID;
    pub const destroy = __root.ImDrawCmd_destroy;
    pub const GetTexID = __root.ImDrawCmd_GetTexID;
};
pub const ImDrawCmd = struct_ImDrawCmd;
pub const struct_ImVector_ImDrawCmd = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImDrawCmd = null,
};
pub const ImVector_ImDrawCmd = struct_ImVector_ImDrawCmd;
pub const struct_ImDrawChannel = extern struct {
    _CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    _IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
};
pub const struct_ImFontAtlasRect = extern struct {
    x: c_ushort = 0,
    y: c_ushort = 0,
    w: c_ushort = 0,
    h: c_ushort = 0,
    uv0: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    uv1: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    pub const ImFontAtlasRect_destroy = __root.ImFontAtlasRect_destroy;
    pub const destroy = __root.ImFontAtlasRect_destroy;
};
pub const ImFontAtlasRect = struct_ImFontAtlasRect;
pub const struct_ImVector_ImU32 = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImU32 = null,
};
pub const ImVector_ImU32 = struct_ImVector_ImU32;
pub const struct_ImFontGlyphRangesBuilder = extern struct {
    UsedChars: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
    pub const ImFontGlyphRangesBuilder_destroy = __root.ImFontGlyphRangesBuilder_destroy;
    pub const ImFontGlyphRangesBuilder_Clear = __root.ImFontGlyphRangesBuilder_Clear;
    pub const ImFontGlyphRangesBuilder_GetBit = __root.ImFontGlyphRangesBuilder_GetBit;
    pub const ImFontGlyphRangesBuilder_SetBit = __root.ImFontGlyphRangesBuilder_SetBit;
    pub const ImFontGlyphRangesBuilder_AddChar = __root.ImFontGlyphRangesBuilder_AddChar;
    pub const ImFontGlyphRangesBuilder_AddText = __root.ImFontGlyphRangesBuilder_AddText;
    pub const ImFontGlyphRangesBuilder_AddRanges = __root.ImFontGlyphRangesBuilder_AddRanges;
    pub const ImFontGlyphRangesBuilder_BuildRanges = __root.ImFontGlyphRangesBuilder_BuildRanges;
    pub const destroy = __root.ImFontGlyphRangesBuilder_destroy;
    pub const Clear = __root.ImFontGlyphRangesBuilder_Clear;
    pub const GetBit = __root.ImFontGlyphRangesBuilder_GetBit;
    pub const SetBit = __root.ImFontGlyphRangesBuilder_SetBit;
    pub const AddChar = __root.ImFontGlyphRangesBuilder_AddChar;
    pub const AddText = __root.ImFontGlyphRangesBuilder_AddText;
    pub const AddRanges = __root.ImFontGlyphRangesBuilder_AddRanges;
    pub const BuildRanges = __root.ImFontGlyphRangesBuilder_BuildRanges;
};
pub const ImFontGlyphRangesBuilder = struct_ImFontGlyphRangesBuilder;
pub const struct_ImColor_c = extern struct {
    Value: ImVec4_c = @import("std").mem.zeroes(ImVec4_c),
    pub const ImColor_destroy = __root.ImColor_destroy;
    pub const ImColor_SetHSV = __root.ImColor_SetHSV;
    pub const destroy = __root.ImColor_destroy;
    pub const SetHSV = __root.ImColor_SetHSV;
};
pub const ImColor_c = struct_ImColor_c;
pub const ImGuiInputTextFlags = c_int;
pub const struct_ImGuiInputTextCallbackData = extern struct {
    Ctx: ?*ImGuiContext = null,
    EventFlag: ImGuiInputTextFlags = 0,
    Flags: ImGuiInputTextFlags = 0,
    UserData: ?*anyopaque = null,
    ID: ImGuiID = 0,
    EventKey: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    EventChar: ImWchar = 0,
    EventActivated: bool = false,
    BufDirty: bool = false,
    Buf: [*c]u8 = null,
    BufTextLen: c_int = 0,
    BufSize: c_int = 0,
    CursorPos: c_int = 0,
    SelectionStart: c_int = 0,
    SelectionEnd: c_int = 0,
    pub const ImGuiInputTextCallbackData_destroy = __root.ImGuiInputTextCallbackData_destroy;
    pub const ImGuiInputTextCallbackData_DeleteChars = __root.ImGuiInputTextCallbackData_DeleteChars;
    pub const ImGuiInputTextCallbackData_InsertChars = __root.ImGuiInputTextCallbackData_InsertChars;
    pub const ImGuiInputTextCallbackData_SelectAll = __root.ImGuiInputTextCallbackData_SelectAll;
    pub const ImGuiInputTextCallbackData_SetSelection = __root.ImGuiInputTextCallbackData_SetSelection;
    pub const ImGuiInputTextCallbackData_ClearSelection = __root.ImGuiInputTextCallbackData_ClearSelection;
    pub const ImGuiInputTextCallbackData_HasSelection = __root.ImGuiInputTextCallbackData_HasSelection;
    pub const destroy = __root.ImGuiInputTextCallbackData_destroy;
    pub const DeleteChars = __root.ImGuiInputTextCallbackData_DeleteChars;
    pub const InsertChars = __root.ImGuiInputTextCallbackData_InsertChars;
    pub const SelectAll = __root.ImGuiInputTextCallbackData_SelectAll;
    pub const SetSelection = __root.ImGuiInputTextCallbackData_SetSelection;
    pub const ClearSelection = __root.ImGuiInputTextCallbackData_ClearSelection;
    pub const HasSelection = __root.ImGuiInputTextCallbackData_HasSelection;
};
pub const ImGuiInputTextCallbackData = struct_ImGuiInputTextCallbackData;
pub const struct_ImGuiSelectionRequest = extern struct {
    Type: ImGuiSelectionRequestType = @import("std").mem.zeroes(ImGuiSelectionRequestType),
    Selected: bool = false,
    RangeDirection: ImS8 = 0,
    RangeFirstItem: ImGuiSelectionUserData = 0,
    RangeLastItem: ImGuiSelectionUserData = 0,
};
pub const ImGuiSelectionRequest = struct_ImGuiSelectionRequest;
pub const struct_ImVector_ImGuiSelectionRequest = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiSelectionRequest = null,
};
pub const ImVector_ImGuiSelectionRequest = struct_ImVector_ImGuiSelectionRequest;
pub const struct_ImGuiMultiSelectIO = extern struct {
    Requests: ImVector_ImGuiSelectionRequest = @import("std").mem.zeroes(ImVector_ImGuiSelectionRequest),
    RangeSrcItem: ImGuiSelectionUserData = 0,
    NavIdItem: ImGuiSelectionUserData = 0,
    NavIdSelected: bool = false,
    RangeSrcReset: bool = false,
    ItemsCount: c_int = 0,
};
pub const ImGuiMultiSelectIO = struct_ImGuiMultiSelectIO;
pub const struct_ImGuiOnceUponAFrame = extern struct {
    RefFrame: c_int = 0,
    pub const ImGuiOnceUponAFrame_destroy = __root.ImGuiOnceUponAFrame_destroy;
    pub const destroy = __root.ImGuiOnceUponAFrame_destroy;
};
pub const ImGuiOnceUponAFrame = struct_ImGuiOnceUponAFrame;
pub const ImGuiSelectionBasicStorage = struct_ImGuiSelectionBasicStorage;
pub const struct_ImGuiSelectionBasicStorage = extern struct {
    Size: c_int = 0,
    PreserveOrder: bool = false,
    UserData: ?*anyopaque = null,
    AdapterIndexToStorageId: ?*const fn (self: [*c]ImGuiSelectionBasicStorage, idx: c_int) callconv(.c) ImGuiID = null,
    _SelectionOrder: c_int = 0,
    _Storage: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    pub const ImGuiSelectionBasicStorage_destroy = __root.ImGuiSelectionBasicStorage_destroy;
    pub const ImGuiSelectionBasicStorage_ApplyRequests = __root.ImGuiSelectionBasicStorage_ApplyRequests;
    pub const ImGuiSelectionBasicStorage_Contains = __root.ImGuiSelectionBasicStorage_Contains;
    pub const ImGuiSelectionBasicStorage_Clear = __root.ImGuiSelectionBasicStorage_Clear;
    pub const ImGuiSelectionBasicStorage_Swap = __root.ImGuiSelectionBasicStorage_Swap;
    pub const ImGuiSelectionBasicStorage_SetItemSelected = __root.ImGuiSelectionBasicStorage_SetItemSelected;
    pub const ImGuiSelectionBasicStorage_GetNextSelectedItem = __root.ImGuiSelectionBasicStorage_GetNextSelectedItem;
    pub const ImGuiSelectionBasicStorage_GetStorageIdFromIndex = __root.ImGuiSelectionBasicStorage_GetStorageIdFromIndex;
    pub const destroy = __root.ImGuiSelectionBasicStorage_destroy;
    pub const ApplyRequests = __root.ImGuiSelectionBasicStorage_ApplyRequests;
    pub const Contains = __root.ImGuiSelectionBasicStorage_Contains;
    pub const Clear = __root.ImGuiSelectionBasicStorage_Clear;
    pub const Swap = __root.ImGuiSelectionBasicStorage_Swap;
    pub const SetItemSelected = __root.ImGuiSelectionBasicStorage_SetItemSelected;
    pub const GetNextSelectedItem = __root.ImGuiSelectionBasicStorage_GetNextSelectedItem;
    pub const GetStorageIdFromIndex = __root.ImGuiSelectionBasicStorage_GetStorageIdFromIndex;
};
pub const ImGuiSelectionExternalStorage = struct_ImGuiSelectionExternalStorage;
pub const struct_ImGuiSelectionExternalStorage = extern struct {
    UserData: ?*anyopaque = null,
    AdapterSetItemSelected: ?*const fn (self: [*c]ImGuiSelectionExternalStorage, idx: c_int, selected: bool) callconv(.c) void = null,
    pub const ImGuiSelectionExternalStorage_destroy = __root.ImGuiSelectionExternalStorage_destroy;
    pub const ImGuiSelectionExternalStorage_ApplyRequests = __root.ImGuiSelectionExternalStorage_ApplyRequests;
    pub const destroy = __root.ImGuiSelectionExternalStorage_destroy;
    pub const ApplyRequests = __root.ImGuiSelectionExternalStorage_ApplyRequests;
};
pub const struct_ImGuiTableColumnSortSpecs = extern struct {
    ColumnUserID: ImGuiID = 0,
    ColumnIndex: ImS16 = 0,
    SortOrder: ImS16 = 0,
    SortDirection: ImGuiSortDirection = @import("std").mem.zeroes(ImGuiSortDirection),
    pub const ImGuiTableColumnSortSpecs_destroy = __root.ImGuiTableColumnSortSpecs_destroy;
    pub const destroy = __root.ImGuiTableColumnSortSpecs_destroy;
};
pub const ImGuiTableColumnSortSpecs = struct_ImGuiTableColumnSortSpecs;
pub const struct_ImGuiTableSortSpecs = extern struct {
    Specs: [*c]const ImGuiTableColumnSortSpecs = null,
    SpecsCount: c_int = 0,
    SpecsDirty: bool = false,
    pub const ImGuiTableSortSpecs_destroy = __root.ImGuiTableSortSpecs_destroy;
    pub const destroy = __root.ImGuiTableSortSpecs_destroy;
};
pub const ImGuiTableSortSpecs = struct_ImGuiTableSortSpecs;
pub const struct_ImGuiTextRange = extern struct {
    b: [*c]const u8 = null,
    e: [*c]const u8 = null,
    pub const ImGuiTextRange_destroy = __root.ImGuiTextRange_destroy;
    pub const ImGuiTextRange_empty = __root.ImGuiTextRange_empty;
    pub const ImGuiTextRange_split = __root.ImGuiTextRange_split;
    pub const destroy = __root.ImGuiTextRange_destroy;
    pub const empty = __root.ImGuiTextRange_empty;
    pub const split = __root.ImGuiTextRange_split;
};
pub const ImGuiTextRange = struct_ImGuiTextRange;
pub const struct_ImVector_ImGuiTextRange = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiTextRange = null,
};
pub const ImVector_ImGuiTextRange = struct_ImVector_ImGuiTextRange;
pub const struct_ImGuiTextFilter = extern struct {
    InputBuf: [256]u8 = @import("std").mem.zeroes([256]u8),
    Filters: ImVector_ImGuiTextRange = @import("std").mem.zeroes(ImVector_ImGuiTextRange),
    CountGrep: c_int = 0,
    pub const ImGuiTextFilter_destroy = __root.ImGuiTextFilter_destroy;
    pub const ImGuiTextFilter_Draw = __root.ImGuiTextFilter_Draw;
    pub const ImGuiTextFilter_PassFilter = __root.ImGuiTextFilter_PassFilter;
    pub const ImGuiTextFilter_Build = __root.ImGuiTextFilter_Build;
    pub const ImGuiTextFilter_Clear = __root.ImGuiTextFilter_Clear;
    pub const ImGuiTextFilter_IsActive = __root.ImGuiTextFilter_IsActive;
    pub const destroy = __root.ImGuiTextFilter_destroy;
    pub const Draw = __root.ImGuiTextFilter_Draw;
    pub const PassFilter = __root.ImGuiTextFilter_PassFilter;
    pub const Build = __root.ImGuiTextFilter_Build;
    pub const Clear = __root.ImGuiTextFilter_Clear;
    pub const IsActive = __root.ImGuiTextFilter_IsActive;
};
pub const ImGuiTextFilter = struct_ImGuiTextFilter;
pub const struct_ImBitVector = extern struct {
    Storage: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
    pub const ImBitVector_Create = __root.ImBitVector_Create;
    pub const ImBitVector_Clear = __root.ImBitVector_Clear;
    pub const ImBitVector_TestBit = __root.ImBitVector_TestBit;
    pub const ImBitVector_SetBit = __root.ImBitVector_SetBit;
    pub const ImBitVector_ClearBit = __root.ImBitVector_ClearBit;
    pub const Create = __root.ImBitVector_Create;
    pub const Clear = __root.ImBitVector_Clear;
    pub const TestBit = __root.ImBitVector_TestBit;
    pub const SetBit = __root.ImBitVector_SetBit;
    pub const ClearBit = __root.ImBitVector_ClearBit;
};
pub const ImBitVector = struct_ImBitVector;
pub const struct_ImVector_int = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]c_int = null,
};
pub const ImVector_int = struct_ImVector_int;
pub const struct_ImGuiTextIndex = extern struct {
    Offsets: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    EndOffset: c_int = 0,
    pub const ImGuiTextIndex_clear = __root.ImGuiTextIndex_clear;
    pub const ImGuiTextIndex_size = __root.ImGuiTextIndex_size;
    pub const ImGuiTextIndex_get_line_begin = __root.ImGuiTextIndex_get_line_begin;
    pub const ImGuiTextIndex_get_line_end = __root.ImGuiTextIndex_get_line_end;
    pub const ImGuiTextIndex_append = __root.ImGuiTextIndex_append;
    pub const clear = __root.ImGuiTextIndex_clear;
    pub const size = __root.ImGuiTextIndex_size;
    pub const get_line_begin = __root.ImGuiTextIndex_get_line_begin;
    pub const get_line_end = __root.ImGuiTextIndex_get_line_end;
    pub const append = __root.ImGuiTextIndex_append;
};
pub const ImGuiTextIndex = struct_ImGuiTextIndex; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:1938:11: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiPackedDate = opaque {
    pub const ImGuiPackedDate_destroy = __root.ImGuiPackedDate_destroy;
    pub const ImGuiPackedDate_IsValid = __root.ImGuiPackedDate_IsValid;
    pub const ImGuiPackedDate_Unpack = __root.ImGuiPackedDate_Unpack;
    pub const ImGuiPackedDate_SubtractMonths = __root.ImGuiPackedDate_SubtractMonths;
    pub const destroy = __root.ImGuiPackedDate_destroy;
    pub const IsValid = __root.ImGuiPackedDate_IsValid;
    pub const Unpack = __root.ImGuiPackedDate_Unpack;
    pub const SubtractMonths = __root.ImGuiPackedDate_SubtractMonths;
};
pub const ImGuiPackedDate = struct_ImGuiPackedDate;
pub const struct_ImFontAtlasPostProcessData = extern struct {
    FontAtlas: [*c]ImFontAtlas = null,
    Font: [*c]ImFont = null,
    FontSrc: [*c]ImFontConfig = null,
    FontBaked: ?*ImFontBaked = null,
    Glyph: ?*ImFontGlyph = null,
    Pixels: ?*anyopaque = null,
    Format: ImTextureFormat = @import("std").mem.zeroes(ImTextureFormat),
    Pitch: c_int = 0,
    Width: c_int = 0,
    Height: c_int = 0,
    pub const igImFontAtlasTextureBlockPostProcess = __root.igImFontAtlasTextureBlockPostProcess;
    pub const igImFontAtlasTextureBlockPostProcessMultiply = __root.igImFontAtlasTextureBlockPostProcessMultiply;
};
pub const ImFontAtlasPostProcessData = struct_ImFontAtlasPostProcessData;
pub const ImGuiContextHook = struct_ImGuiContextHook;
pub const ImGuiContextHookCallback = ?*const fn (ctx: ?*ImGuiContext, hook: [*c]ImGuiContextHook) callconv(.c) void;
pub const struct_ImGuiContextHook = extern struct {
    HookId: ImGuiID = 0,
    Type: ImGuiContextHookType = @import("std").mem.zeroes(ImGuiContextHookType),
    Owner: ImGuiID = 0,
    Callback: ImGuiContextHookCallback = null,
    UserData: ?*anyopaque = null,
    pub const ImGuiContextHook_destroy = __root.ImGuiContextHook_destroy;
    pub const destroy = __root.ImGuiContextHook_destroy;
};
pub const struct_ImGuiDataTypeInfo = extern struct {
    Size: usize = 0,
    Name: [*c]const u8 = null,
    PrintFmt: [*c]const u8 = null,
    ScanFmt: [*c]const u8 = null,
};
pub const ImGuiDataTypeInfo = struct_ImGuiDataTypeInfo;
pub const struct_ImGuiDockRequest = opaque {};
pub const ImGuiDockRequest = struct_ImGuiDockRequest;
pub const struct_ImVector_ImGuiDockRequest = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: ?*ImGuiDockRequest = null,
};
pub const ImVector_ImGuiDockRequest = struct_ImVector_ImGuiDockRequest;
pub const struct_ImGuiDockNodeSettings = opaque {};
pub const ImGuiDockNodeSettings = struct_ImGuiDockNodeSettings;
pub const struct_ImVector_ImGuiDockNodeSettings = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: ?*ImGuiDockNodeSettings = null,
};
pub const ImVector_ImGuiDockNodeSettings = struct_ImVector_ImGuiDockNodeSettings;
pub const struct_ImGuiDockContext = extern struct {
    Nodes: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    Requests: ImVector_ImGuiDockRequest = @import("std").mem.zeroes(ImVector_ImGuiDockRequest),
    NodesSettings: ImVector_ImGuiDockNodeSettings = @import("std").mem.zeroes(ImVector_ImGuiDockNodeSettings),
    WantFullRebuild: bool = false,
    pub const ImGuiDockContext_destroy = __root.ImGuiDockContext_destroy;
    pub const destroy = __root.ImGuiDockContext_destroy;
};
pub const ImGuiDockContext = struct_ImGuiDockContext;
pub const ImGuiDockNode = struct_ImGuiDockNode; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:2735:10: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiDockNode = opaque {
    pub const ImGuiDockNode_destroy = __root.ImGuiDockNode_destroy;
    pub const ImGuiDockNode_IsRootNode = __root.ImGuiDockNode_IsRootNode;
    pub const ImGuiDockNode_IsDockSpace = __root.ImGuiDockNode_IsDockSpace;
    pub const ImGuiDockNode_IsFloatingNode = __root.ImGuiDockNode_IsFloatingNode;
    pub const ImGuiDockNode_IsCentralNode = __root.ImGuiDockNode_IsCentralNode;
    pub const ImGuiDockNode_IsHiddenTabBar = __root.ImGuiDockNode_IsHiddenTabBar;
    pub const ImGuiDockNode_IsNoTabBar = __root.ImGuiDockNode_IsNoTabBar;
    pub const ImGuiDockNode_IsSplitNode = __root.ImGuiDockNode_IsSplitNode;
    pub const ImGuiDockNode_IsLeafNode = __root.ImGuiDockNode_IsLeafNode;
    pub const ImGuiDockNode_IsEmpty = __root.ImGuiDockNode_IsEmpty;
    pub const ImGuiDockNode_Rect = __root.ImGuiDockNode_Rect;
    pub const ImGuiDockNode_SetLocalFlags = __root.ImGuiDockNode_SetLocalFlags;
    pub const ImGuiDockNode_UpdateMergedFlags = __root.ImGuiDockNode_UpdateMergedFlags;
    pub const igDockNodeBeginAmendTabBar = __root.igDockNodeBeginAmendTabBar;
    pub const igDockNodeGetRootNode = __root.igDockNodeGetRootNode;
    pub const igDockNodeIsInHierarchyOf = __root.igDockNodeIsInHierarchyOf;
    pub const igDockNodeGetDepth = __root.igDockNodeGetDepth;
    pub const igDockNodeGetWindowMenuButtonId = __root.igDockNodeGetWindowMenuButtonId;
    pub const igDebugNodeDockNode = __root.igDebugNodeDockNode;
    pub const destroy = __root.ImGuiDockNode_destroy;
    pub const IsRootNode = __root.ImGuiDockNode_IsRootNode;
    pub const IsDockSpace = __root.ImGuiDockNode_IsDockSpace;
    pub const IsFloatingNode = __root.ImGuiDockNode_IsFloatingNode;
    pub const IsCentralNode = __root.ImGuiDockNode_IsCentralNode;
    pub const IsHiddenTabBar = __root.ImGuiDockNode_IsHiddenTabBar;
    pub const IsNoTabBar = __root.ImGuiDockNode_IsNoTabBar;
    pub const IsSplitNode = __root.ImGuiDockNode_IsSplitNode;
    pub const IsLeafNode = __root.ImGuiDockNode_IsLeafNode;
    pub const IsEmpty = __root.ImGuiDockNode_IsEmpty;
    pub const Rect = __root.ImGuiDockNode_Rect;
    pub const SetLocalFlags = __root.ImGuiDockNode_SetLocalFlags;
    pub const UpdateMergedFlags = __root.ImGuiDockNode_UpdateMergedFlags;
};
pub const struct_StbUndoRecord = extern struct {
    where: c_int = 0,
    insert_length: c_int = 0,
    delete_length: c_int = 0,
    char_storage: c_int = 0,
};
pub const StbUndoRecord = struct_StbUndoRecord;
pub const struct_StbUndoState = extern struct {
    undo_rec: [99]StbUndoRecord = @import("std").mem.zeroes([99]StbUndoRecord),
    undo_char: [999]u8 = @import("std").mem.zeroes([999]u8),
    undo_point: c_short = 0,
    redo_point: c_short = 0,
    undo_char_point: c_int = 0,
    redo_char_point: c_int = 0,
};
pub const StbUndoState = struct_StbUndoState;
pub const struct_STB_TexteditState = extern struct {
    cursor: c_int = 0,
    select_start: c_int = 0,
    select_end: c_int = 0,
    insert_mode: u8 = 0,
    row_count_per_page: c_int = 0,
    cursor_at_end_of_line: u8 = 0,
    initialized: u8 = 0,
    has_preferred_x: u8 = 0,
    single_line: u8 = 0,
    padding1: u8 = 0,
    padding2: u8 = 0,
    padding3: u8 = 0,
    preferred_x: f32 = 0,
    undostate: StbUndoState = @import("std").mem.zeroes(StbUndoState),
};
pub const STB_TexteditState = struct_STB_TexteditState;
pub const ImStbTexteditState = STB_TexteditState;
pub const struct_ImGuiInputTextState = extern struct {
    Ctx: ?*ImGuiContext = null,
    Stb: [*c]ImStbTexteditState = null,
    Flags: ImGuiInputTextFlags = 0,
    ID: ImGuiID = 0,
    TextLen: c_int = 0,
    TextSrc: [*c]const u8 = null,
    TextA: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    TextToRevertTo: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    CallbackTextBackup: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    BufCapacity: c_int = 0,
    Scroll: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    LineCount: c_int = 0,
    WrapWidth: f32 = 0,
    CursorAnim: f32 = 0,
    CursorFollow: bool = false,
    CursorCenterY: bool = false,
    SelectedAllMouseLock: bool = false,
    EditedBefore: bool = false,
    EditedThisFrame: bool = false,
    WantReloadUserBuf: bool = false,
    LastMoveDirectionLR: ImS8 = 0,
    ReloadSelectionStart: c_int = 0,
    ReloadSelectionEnd: c_int = 0,
    pub const ImGuiInputTextState_destroy = __root.ImGuiInputTextState_destroy;
    pub const ImGuiInputTextState_ClearText = __root.ImGuiInputTextState_ClearText;
    pub const ImGuiInputTextState_ClearFreeMemory = __root.ImGuiInputTextState_ClearFreeMemory;
    pub const ImGuiInputTextState_OnKeyPressed = __root.ImGuiInputTextState_OnKeyPressed;
    pub const ImGuiInputTextState_OnCharPressed = __root.ImGuiInputTextState_OnCharPressed;
    pub const ImGuiInputTextState_GetPreferredOffsetX = __root.ImGuiInputTextState_GetPreferredOffsetX;
    pub const ImGuiInputTextState_GetText = __root.ImGuiInputTextState_GetText;
    pub const ImGuiInputTextState_CursorAnimReset = __root.ImGuiInputTextState_CursorAnimReset;
    pub const ImGuiInputTextState_CursorClamp = __root.ImGuiInputTextState_CursorClamp;
    pub const ImGuiInputTextState_HasSelection = __root.ImGuiInputTextState_HasSelection;
    pub const ImGuiInputTextState_ClearSelection = __root.ImGuiInputTextState_ClearSelection;
    pub const ImGuiInputTextState_GetCursorPos = __root.ImGuiInputTextState_GetCursorPos;
    pub const ImGuiInputTextState_GetSelectionStart = __root.ImGuiInputTextState_GetSelectionStart;
    pub const ImGuiInputTextState_GetSelectionEnd = __root.ImGuiInputTextState_GetSelectionEnd;
    pub const ImGuiInputTextState_SetSelection = __root.ImGuiInputTextState_SetSelection;
    pub const ImGuiInputTextState_SelectAll = __root.ImGuiInputTextState_SelectAll;
    pub const ImGuiInputTextState_ReloadUserBufAndSelectAll = __root.ImGuiInputTextState_ReloadUserBufAndSelectAll;
    pub const ImGuiInputTextState_ReloadUserBufAndKeepSelection = __root.ImGuiInputTextState_ReloadUserBufAndKeepSelection;
    pub const ImGuiInputTextState_ReloadUserBufAndMoveToEnd = __root.ImGuiInputTextState_ReloadUserBufAndMoveToEnd;
    pub const igDebugNodeInputTextState = __root.igDebugNodeInputTextState;
    pub const destroy = __root.ImGuiInputTextState_destroy;
    pub const ClearText = __root.ImGuiInputTextState_ClearText;
    pub const ClearFreeMemory = __root.ImGuiInputTextState_ClearFreeMemory;
    pub const OnKeyPressed = __root.ImGuiInputTextState_OnKeyPressed;
    pub const OnCharPressed = __root.ImGuiInputTextState_OnCharPressed;
    pub const GetPreferredOffsetX = __root.ImGuiInputTextState_GetPreferredOffsetX;
    pub const GetText = __root.ImGuiInputTextState_GetText;
    pub const CursorAnimReset = __root.ImGuiInputTextState_CursorAnimReset;
    pub const CursorClamp = __root.ImGuiInputTextState_CursorClamp;
    pub const HasSelection = __root.ImGuiInputTextState_HasSelection;
    pub const ClearSelection = __root.ImGuiInputTextState_ClearSelection;
    pub const GetCursorPos = __root.ImGuiInputTextState_GetCursorPos;
    pub const GetSelectionStart = __root.ImGuiInputTextState_GetSelectionStart;
    pub const GetSelectionEnd = __root.ImGuiInputTextState_GetSelectionEnd;
    pub const SetSelection = __root.ImGuiInputTextState_SetSelection;
    pub const SelectAll = __root.ImGuiInputTextState_SelectAll;
    pub const ReloadUserBufAndSelectAll = __root.ImGuiInputTextState_ReloadUserBufAndSelectAll;
    pub const ReloadUserBufAndKeepSelection = __root.ImGuiInputTextState_ReloadUserBufAndKeepSelection;
    pub const ReloadUserBufAndMoveToEnd = __root.ImGuiInputTextState_ReloadUserBufAndMoveToEnd;
};
pub const ImGuiInputTextState = struct_ImGuiInputTextState;
pub const struct_ImGuiInputTextDeactivateData = opaque {};
pub const ImGuiInputTextDeactivateData = struct_ImGuiInputTextDeactivateData;
pub const struct_ImGuiLocEntry = extern struct {
    Key: ImGuiLocKey = @import("std").mem.zeroes(ImGuiLocKey),
    Text: [*c]const u8 = null,
    pub const igLocalizeRegisterEntries = __root.igLocalizeRegisterEntries;
};
pub const ImGuiLocEntry = struct_ImGuiLocEntry;
pub const struct_ImGuiMenuColumns = extern struct {
    TotalWidth: ImU32 = 0,
    NextTotalWidth: ImU32 = 0,
    Spacing: ImU16 = 0,
    OffsetIcon: ImU16 = 0,
    OffsetLabel: ImU16 = 0,
    OffsetShortcut: ImU16 = 0,
    OffsetMark: ImU16 = 0,
    Widths: [4]ImU16 = @import("std").mem.zeroes([4]ImU16),
    pub const ImGuiMenuColumns_destroy = __root.ImGuiMenuColumns_destroy;
    pub const ImGuiMenuColumns_Update = __root.ImGuiMenuColumns_Update;
    pub const ImGuiMenuColumns_DeclColumns = __root.ImGuiMenuColumns_DeclColumns;
    pub const ImGuiMenuColumns_CalcNextTotalWidth = __root.ImGuiMenuColumns_CalcNextTotalWidth;
    pub const destroy = __root.ImGuiMenuColumns_destroy;
    pub const Update = __root.ImGuiMenuColumns_Update;
    pub const DeclColumns = __root.ImGuiMenuColumns_DeclColumns;
    pub const CalcNextTotalWidth = __root.ImGuiMenuColumns_CalcNextTotalWidth;
};
pub const ImGuiMenuColumns = struct_ImGuiMenuColumns;
pub const struct_ImGuiMultiSelectState = extern struct {
    Window: ?*ImGuiWindow = null,
    ID: ImGuiID = 0,
    LastFrameActive: c_int = 0,
    LastSelectionSize: c_int = 0,
    RangeSelected: ImS8 = 0,
    NavIdSelected: ImS8 = 0,
    RangeSrcItem: ImGuiSelectionUserData = 0,
    NavIdItem: ImGuiSelectionUserData = 0,
    pub const ImGuiMultiSelectState_destroy = __root.ImGuiMultiSelectState_destroy;
    pub const igDebugNodeMultiSelectState = __root.igDebugNodeMultiSelectState;
    pub const destroy = __root.ImGuiMultiSelectState_destroy;
};
pub const ImGuiMultiSelectState = struct_ImGuiMultiSelectState;
pub const ImGuiMultiSelectFlags = c_int;
pub const struct_ImGuiMultiSelectTempData = extern struct {
    IO: ImGuiMultiSelectIO = @import("std").mem.zeroes(ImGuiMultiSelectIO),
    Storage: [*c]ImGuiMultiSelectState = null,
    FocusScopeId: ImGuiID = 0,
    Flags: ImGuiMultiSelectFlags = 0,
    ScopeRectMin: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BoxSelectId: ImGuiID = 0,
    KeyMods: ImGuiKeyChord = 0,
    LoopRequestSetAll: ImS8 = 0,
    IsEndIO: bool = false,
    IsFocused: bool = false,
    IsKeyboardSetRange: bool = false,
    NavIdPassedBy: bool = false,
    RangeSrcPassedBy: bool = false,
    RangeDstPassedBy: bool = false,
    IsSoleOrUnknownSelectionSize: bool = false,
    pub const ImGuiMultiSelectTempData_destroy = __root.ImGuiMultiSelectTempData_destroy;
    pub const ImGuiMultiSelectTempData_Clear = __root.ImGuiMultiSelectTempData_Clear;
    pub const ImGuiMultiSelectTempData_ClearIO = __root.ImGuiMultiSelectTempData_ClearIO;
    pub const igMultiSelectAddSetAll = __root.igMultiSelectAddSetAll;
    pub const igMultiSelectAddSetRange = __root.igMultiSelectAddSetRange;
    pub const destroy = __root.ImGuiMultiSelectTempData_destroy;
    pub const Clear = __root.ImGuiMultiSelectTempData_Clear;
    pub const ClearIO = __root.ImGuiMultiSelectTempData_ClearIO;
};
pub const ImGuiMultiSelectTempData = struct_ImGuiMultiSelectTempData;
pub const struct_ImGuiMetricsConfig = extern struct {
    ShowDebugLog: bool = false,
    ShowIDStackTool: bool = false,
    ShowWindowsRects: bool = false,
    ShowWindowsBeginOrder: bool = false,
    ShowTablesRects: bool = false,
    ShowDrawCmdMesh: bool = false,
    ShowDrawCmdBoundingBoxes: bool = false,
    ShowTextEncodingViewer: bool = false,
    ShowTextureUsedRect: bool = false,
    ShowDockingNodes: bool = false,
    ShowWindowsRectsType: c_int = 0,
    ShowTablesRectsType: c_int = 0,
    HighlightMonitorIdx: c_int = 0,
    HighlightViewportID: ImGuiID = 0,
    SettingsDiscardMonths: c_int = 0,
    SettingsHighlightOldEntries: bool = false,
    ShowFontPreview: bool = false,
};
pub const ImGuiMetricsConfig = struct_ImGuiMetricsConfig;
pub const ImGuiOldColumnFlags = c_int;
pub const struct_ImGuiOldColumnData = extern struct {
    OffsetNorm: f32 = 0,
    OffsetNormBeforeResize: f32 = 0,
    Flags: ImGuiOldColumnFlags = 0,
    ClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    pub const ImGuiOldColumnData_destroy = __root.ImGuiOldColumnData_destroy;
    pub const destroy = __root.ImGuiOldColumnData_destroy;
};
pub const ImGuiOldColumnData = struct_ImGuiOldColumnData;
pub const struct_ImVector_ImGuiOldColumnData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiOldColumnData = null,
};
pub const ImVector_ImGuiOldColumnData = struct_ImVector_ImGuiOldColumnData;
pub const struct_ImGuiOldColumns = extern struct {
    ID: ImGuiID = 0,
    Flags: ImGuiOldColumnFlags = 0,
    IsFirstFrame: bool = false,
    IsBeingResized: bool = false,
    Current: c_int = 0,
    Count: c_int = 0,
    OffMinX: f32 = 0,
    OffMaxX: f32 = 0,
    LineMinY: f32 = 0,
    LineMaxY: f32 = 0,
    HostCursorPosY: f32 = 0,
    HostCursorMaxPosX: f32 = 0,
    HostInitialClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    HostBackupClipRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    HostBackupParentWorkRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    Columns: ImVector_ImGuiOldColumnData = @import("std").mem.zeroes(ImVector_ImGuiOldColumnData),
    Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    pub const ImGuiOldColumns_destroy = __root.ImGuiOldColumns_destroy;
    pub const igGetColumnOffsetFromNorm = __root.igGetColumnOffsetFromNorm;
    pub const igGetColumnNormFromOffset = __root.igGetColumnNormFromOffset;
    pub const igDebugNodeColumns = __root.igDebugNodeColumns;
    pub const destroy = __root.ImGuiOldColumns_destroy;
};
pub const ImGuiOldColumns = struct_ImGuiOldColumns;
pub const ImGuiSettingsHandler = struct_ImGuiSettingsHandler;
pub const struct_ImGuiSettingsHandler = extern struct {
    TypeName: [*c]const u8 = null,
    TypeHash: ImGuiID = 0,
    ClearAllFn: ?*const fn (ctx: ?*ImGuiContext, handler: [*c]ImGuiSettingsHandler) callconv(.c) void = null,
    ReadInitFn: ?*const fn (ctx: ?*ImGuiContext, handler: [*c]ImGuiSettingsHandler) callconv(.c) void = null,
    ReadOpenFn: ?*const fn (ctx: ?*ImGuiContext, handler: [*c]ImGuiSettingsHandler, name: [*c]const u8) callconv(.c) ?*anyopaque = null,
    ReadLineFn: ?*const fn (ctx: ?*ImGuiContext, handler: [*c]ImGuiSettingsHandler, entry: ?*anyopaque, line: [*c]const u8) callconv(.c) void = null,
    ApplyAllFn: ?*const fn (ctx: ?*ImGuiContext, handler: [*c]ImGuiSettingsHandler) callconv(.c) void = null,
    WriteAllFn: ?*const fn (ctx: ?*ImGuiContext, handler: [*c]ImGuiSettingsHandler, out_buf: [*c]ImGuiTextBuffer) callconv(.c) void = null,
    UserData: ?*anyopaque = null,
    pub const ImGuiSettingsHandler_destroy = __root.ImGuiSettingsHandler_destroy;
    pub const igAddSettingsHandler = __root.igAddSettingsHandler;
    pub const destroy = __root.ImGuiSettingsHandler_destroy;
}; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:1976:11: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiStyleVarInfo = opaque {
    pub const ImGuiStyleVarInfo_GetVarPtr = __root.ImGuiStyleVarInfo_GetVarPtr;
    pub const GetVarPtr = __root.ImGuiStyleVarInfo_GetVarPtr;
};
pub const ImGuiStyleVarInfo = struct_ImGuiStyleVarInfo;
pub const struct_ImGuiTableInstanceData = extern struct {
    TableInstanceID: ImGuiID = 0,
    LastOuterHeight: f32 = 0,
    LastTopHeadersRowHeight: f32 = 0,
    LastFrozenHeight: f32 = 0,
    HoveredRowLast: c_int = 0,
    HoveredRowNext: c_int = 0,
    pub const ImGuiTableInstanceData_destroy = __root.ImGuiTableInstanceData_destroy;
    pub const destroy = __root.ImGuiTableInstanceData_destroy;
};
pub const ImGuiTableInstanceData = struct_ImGuiTableInstanceData; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:3857:21: warning: struct demoted to opaque type - has opaque field
pub const struct_ImGuiTableSettings = opaque {
    pub const ImGuiTableSettings_destroy = __root.ImGuiTableSettings_destroy;
    pub const ImGuiTableSettings_GetColumnSettings = __root.ImGuiTableSettings_GetColumnSettings;
    pub const igDebugNodeTableSettings = __root.igDebugNodeTableSettings;
    pub const destroy = __root.ImGuiTableSettings_destroy;
    pub const GetColumnSettings = __root.ImGuiTableSettings_GetColumnSettings;
};
pub const ImGuiTableSettings = struct_ImGuiTableSettings;
pub const struct_ImGuiTableColumnsSettings = opaque {};
pub const ImGuiTableColumnsSettings = struct_ImGuiTableColumnsSettings;
pub const ImGuiTypingSelectFlags = c_int;
pub const struct_ImGuiTypingSelectRequest = extern struct {
    Flags: ImGuiTypingSelectFlags = 0,
    SearchBufferLen: c_int = 0,
    SearchBuffer: [*c]const u8 = null,
    SelectRequest: bool = false,
    SingleCharMode: bool = false,
    SingleCharSize: ImS8 = 0,
    pub const igTypingSelectFindMatch = __root.igTypingSelectFindMatch;
    pub const igTypingSelectFindNextSingleCharMatch = __root.igTypingSelectFindNextSingleCharMatch;
    pub const igTypingSelectFindBestLeadingMatch = __root.igTypingSelectFindBestLeadingMatch;
};
pub const ImGuiTypingSelectRequest = struct_ImGuiTypingSelectRequest;
pub const struct_ImGuiTypingSelectState = extern struct {
    Request: ImGuiTypingSelectRequest = @import("std").mem.zeroes(ImGuiTypingSelectRequest),
    SearchBuffer: [64]u8 = @import("std").mem.zeroes([64]u8),
    FocusScope: ImGuiID = 0,
    LastRequestFrame: c_int = 0,
    LastRequestTime: f32 = 0,
    SingleCharModeLock: bool = false,
    pub const ImGuiTypingSelectState_destroy = __root.ImGuiTypingSelectState_destroy;
    pub const ImGuiTypingSelectState_Clear = __root.ImGuiTypingSelectState_Clear;
    pub const igDebugNodeTypingSelectState = __root.igDebugNodeTypingSelectState;
    pub const destroy = __root.ImGuiTypingSelectState_destroy;
    pub const Clear = __root.ImGuiTypingSelectState_Clear;
};
pub const ImGuiTypingSelectState = struct_ImGuiTypingSelectState;
pub const struct_ImGuiWindowDockStyle = extern struct {
    Colors: [9]ImU32 = @import("std").mem.zeroes([9]ImU32),
};
pub const ImGuiWindowDockStyle = struct_ImGuiWindowDockStyle;
pub const ImGuiLayoutType = c_int;
pub const struct_ImGuiWindowTempData = extern struct {
    CursorPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CursorPosPrevLine: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CursorStartPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    IdealMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CurrLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    PrevLineSize: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    CurrLineTextBaseOffset: f32 = 0,
    PrevLineTextBaseOffset: f32 = 0,
    IsSameLine: bool = false,
    IsSetPos: bool = false,
    Indent: ImVec1 = @import("std").mem.zeroes(ImVec1),
    ColumnsOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    GroupOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    CursorStartPosLossyness: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    NavLayerCurrent: ImGuiNavLayer = @import("std").mem.zeroes(ImGuiNavLayer),
    NavLayersActiveMask: c_short = 0,
    NavLayersActiveMaskNext: c_short = 0,
    NavIsScrollPushableX: bool = false,
    NavHideHighlightOneFrame: bool = false,
    NavWindowHasScrollY: bool = false,
    MenuBarAppending: bool = false,
    MenuBarOffset: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    MenuColumns: ImGuiMenuColumns = @import("std").mem.zeroes(ImGuiMenuColumns),
    TreeDepth: c_int = 0,
    TreeHasStackDataDepthMask: ImU32 = 0,
    TreeRecordsClippedNodesY2Mask: ImU32 = 0,
    ChildWindows: ImVector_ImGuiWindowPtr = @import("std").mem.zeroes(ImVector_ImGuiWindowPtr),
    StateStorage: [*c]ImGuiStorage = null,
    CurrentColumns: [*c]ImGuiOldColumns = null,
    CurrentTableIdx: c_int = 0,
    LayoutType: ImGuiLayoutType = 0,
    ParentLayoutType: ImGuiLayoutType = 0,
    ModalDimBgColor: ImU32 = 0,
    WindowItemStatusFlags: ImGuiItemStatusFlags = 0,
    ChildItemStatusFlags: ImGuiItemStatusFlags = 0,
    DockTabItemStatusFlags: ImGuiItemStatusFlags = 0,
    DockTabItemRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    ItemWidth: f32 = 0,
    ItemWidthDefault: f32 = 0,
    TextWrapPos: f32 = 0,
    ItemWidthStack: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    TextWrapPosStack: ImVector_float = @import("std").mem.zeroes(ImVector_float),
};
pub const ImGuiWindowTempData = struct_ImGuiWindowTempData;
pub const struct_ImVec2ih = extern struct {
    x: c_short = 0,
    y: c_short = 0,
    pub const ImVec2ih_destroy = __root.ImVec2ih_destroy;
    pub const destroy = __root.ImVec2ih_destroy;
};
pub const ImVec2ih = struct_ImVec2ih; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:2814:21: warning: struct demoted to opaque type - has opaque field
pub const struct_ImGuiWindowSettings = opaque {
    pub const ImGuiWindowSettings_destroy = __root.ImGuiWindowSettings_destroy;
    pub const ImGuiWindowSettings_GetName = __root.ImGuiWindowSettings_GetName;
    pub const igDebugNodeWindowSettings = __root.igDebugNodeWindowSettings;
    pub const destroy = __root.ImGuiWindowSettings_destroy;
    pub const GetName = __root.ImGuiWindowSettings_GetName;
};
pub const ImGuiWindowSettings = struct_ImGuiWindowSettings;
pub const struct_ImVector_const_charPtr = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c][*c]const u8 = null,
};
pub const ImVector_const_charPtr = struct_ImVector_const_charPtr;
pub const ImGuiDataType = c_int;
pub const ImGuiMouseButton = c_int;
pub const ImGuiMouseCursor = c_int;
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
pub const ImGuiInputTextCallback = ?*const fn (data: [*c]ImGuiInputTextCallbackData) callconv(.c) c_int;
pub const ImGuiMemAllocFunc = ?*const fn (sz: usize, user_data: ?*anyopaque) callconv(.c) ?*anyopaque;
pub const ImGuiMemFreeFunc = ?*const fn (ptr: ?*anyopaque, user_data: ?*anyopaque) callconv(.c) void;
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
pub const ImGuiItemFlags_Disabled: c_int = 64;
pub const ImGuiItemFlags_LiveEditOnInputText: c_int = 128;
pub const ImGuiItemFlags_LiveEditOnInputScalar: c_int = 256;
pub const ImGuiItemFlags_LiveEditOnInput: c_int = 384;
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
pub const ImGuiPopupFlags_MouseButtonLeft: c_int = 4;
pub const ImGuiPopupFlags_MouseButtonRight: c_int = 8;
pub const ImGuiPopupFlags_MouseButtonMiddle: c_int = 12;
pub const ImGuiPopupFlags_NoReopen: c_int = 32;
pub const ImGuiPopupFlags_NoOpenOverExistingPopup: c_int = 128;
pub const ImGuiPopupFlags_NoOpenOverItems: c_int = 256;
pub const ImGuiPopupFlags_AnyPopupId: c_int = 1024;
pub const ImGuiPopupFlags_AnyPopupLevel: c_int = 2048;
pub const ImGuiPopupFlags_AnyPopup: c_int = 3072;
pub const ImGuiPopupFlags_MouseButtonShift_: c_int = 2;
pub const ImGuiPopupFlags_MouseButtonMask_: c_int = 12;
pub const ImGuiPopupFlags_InvalidMask_: c_int = 3;
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
pub const ImGuiCol_CheckboxSelectedBg: c_int = 19;
pub const ImGuiCol_SliderGrab: c_int = 20;
pub const ImGuiCol_SliderGrabActive: c_int = 21;
pub const ImGuiCol_Button: c_int = 22;
pub const ImGuiCol_ButtonHovered: c_int = 23;
pub const ImGuiCol_ButtonActive: c_int = 24;
pub const ImGuiCol_Header: c_int = 25;
pub const ImGuiCol_HeaderHovered: c_int = 26;
pub const ImGuiCol_HeaderActive: c_int = 27;
pub const ImGuiCol_Separator: c_int = 28;
pub const ImGuiCol_SeparatorHovered: c_int = 29;
pub const ImGuiCol_SeparatorActive: c_int = 30;
pub const ImGuiCol_ResizeGrip: c_int = 31;
pub const ImGuiCol_ResizeGripHovered: c_int = 32;
pub const ImGuiCol_ResizeGripActive: c_int = 33;
pub const ImGuiCol_InputTextCursor: c_int = 34;
pub const ImGuiCol_TabHovered: c_int = 35;
pub const ImGuiCol_Tab: c_int = 36;
pub const ImGuiCol_TabSelected: c_int = 37;
pub const ImGuiCol_TabSelectedOverline: c_int = 38;
pub const ImGuiCol_TabDimmed: c_int = 39;
pub const ImGuiCol_TabDimmedSelected: c_int = 40;
pub const ImGuiCol_TabDimmedSelectedOverline: c_int = 41;
pub const ImGuiCol_DockingPreview: c_int = 42;
pub const ImGuiCol_DockingEmptyBg: c_int = 43;
pub const ImGuiCol_PlotLines: c_int = 44;
pub const ImGuiCol_PlotLinesHovered: c_int = 45;
pub const ImGuiCol_PlotHistogram: c_int = 46;
pub const ImGuiCol_PlotHistogramHovered: c_int = 47;
pub const ImGuiCol_TableHeaderBg: c_int = 48;
pub const ImGuiCol_TableBorderStrong: c_int = 49;
pub const ImGuiCol_TableBorderLight: c_int = 50;
pub const ImGuiCol_TableRowBg: c_int = 51;
pub const ImGuiCol_TableRowBgAlt: c_int = 52;
pub const ImGuiCol_TextLink: c_int = 53;
pub const ImGuiCol_TextSelectedBg: c_int = 54;
pub const ImGuiCol_TreeLines: c_int = 55;
pub const ImGuiCol_DragDropTarget: c_int = 56;
pub const ImGuiCol_DragDropTargetBg: c_int = 57;
pub const ImGuiCol_UnsavedMarker: c_int = 58;
pub const ImGuiCol_NavCursor: c_int = 59;
pub const ImGuiCol_NavWindowingHighlight: c_int = 60;
pub const ImGuiCol_NavWindowingDimBg: c_int = 61;
pub const ImGuiCol_ModalWindowDimBg: c_int = 62;
pub const ImGuiCol_COUNT: c_int = 63;
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
pub const ImGuiStyleVar_ImageRounding: c_int = 23;
pub const ImGuiStyleVar_ImageBorderSize: c_int = 24;
pub const ImGuiStyleVar_TabRounding: c_int = 25;
pub const ImGuiStyleVar_TabBorderSize: c_int = 26;
pub const ImGuiStyleVar_TabMinWidthBase: c_int = 27;
pub const ImGuiStyleVar_TabMinWidthShrink: c_int = 28;
pub const ImGuiStyleVar_TabBarBorderSize: c_int = 29;
pub const ImGuiStyleVar_TabBarOverlineSize: c_int = 30;
pub const ImGuiStyleVar_TableAngledHeadersAngle: c_int = 31;
pub const ImGuiStyleVar_TableAngledHeadersTextAlign: c_int = 32;
pub const ImGuiStyleVar_TreeLinesSize: c_int = 33;
pub const ImGuiStyleVar_TreeLinesRounding: c_int = 34;
pub const ImGuiStyleVar_MenuItemRounding: c_int = 35;
pub const ImGuiStyleVar_SelectableRounding: c_int = 36;
pub const ImGuiStyleVar_DragDropTargetRounding: c_int = 37;
pub const ImGuiStyleVar_ButtonTextAlign: c_int = 38;
pub const ImGuiStyleVar_SelectableTextAlign: c_int = 39;
pub const ImGuiStyleVar_SeparatorSize: c_int = 40;
pub const ImGuiStyleVar_SeparatorTextBorderSize: c_int = 41;
pub const ImGuiStyleVar_SeparatorTextAlign: c_int = 42;
pub const ImGuiStyleVar_SeparatorTextPadding: c_int = 43;
pub const ImGuiStyleVar_DockingSeparatorSize: c_int = 44;
pub const ImGuiStyleVar_COUNT: c_int = 45;
pub const ImGuiStyleVar_ = c_uint;
pub const ImGuiButtonFlags_None: c_int = 0;
pub const ImGuiButtonFlags_MouseButtonLeft: c_int = 1;
pub const ImGuiButtonFlags_MouseButtonRight: c_int = 2;
pub const ImGuiButtonFlags_MouseButtonMiddle: c_int = 4;
pub const ImGuiButtonFlags_MouseButtonMask_: c_int = 7;
pub const ImGuiButtonFlags_EnableNav: c_int = 8;
pub const ImGuiButtonFlags_AllowOverlap: c_int = 4096;
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
pub const ImGuiColorEditFlags_NoColorMarkers: c_int = 2048;
pub const ImGuiColorEditFlags_AlphaOpaque: c_int = 4096;
pub const ImGuiColorEditFlags_AlphaNoBg: c_int = 8192;
pub const ImGuiColorEditFlags_AlphaPreviewHalf: c_int = 16384;
pub const ImGuiColorEditFlags_AlphaBar: c_int = 262144;
pub const ImGuiColorEditFlags_HDR: c_int = 524288;
pub const ImGuiColorEditFlags_DisplayRGB: c_int = 1048576;
pub const ImGuiColorEditFlags_DisplayHSV: c_int = 2097152;
pub const ImGuiColorEditFlags_DisplayHex: c_int = 4194304;
pub const ImGuiColorEditFlags_Uint8: c_int = 8388608;
pub const ImGuiColorEditFlags_Float: c_int = 16777216;
pub const ImGuiColorEditFlags_PickerHueBar: c_int = 33554432;
pub const ImGuiColorEditFlags_PickerHueWheel: c_int = 67108864;
pub const ImGuiColorEditFlags_PickerNoRotate: c_int = 134217728;
pub const ImGuiColorEditFlags_InputRGB: c_int = 268435456;
pub const ImGuiColorEditFlags_InputHSV: c_int = 536870912;
pub const ImGuiColorEditFlags_DefaultOptions_: c_int = 311427072;
pub const ImGuiColorEditFlags_AlphaMask_: c_int = 28674;
pub const ImGuiColorEditFlags_DisplayMask_: c_int = 7340032;
pub const ImGuiColorEditFlags_DataTypeMask_: c_int = 25165824;
pub const ImGuiColorEditFlags_PickerMask_: c_int = 100663296;
pub const ImGuiColorEditFlags_InputMask_: c_int = 805306368;
pub const ImGuiColorEditFlags_ = c_uint;
pub const ImGuiSliderFlags_None: c_int = 0;
pub const ImGuiSliderFlags_Logarithmic: c_int = 32;
pub const ImGuiSliderFlags_NoRoundToFormat: c_int = 64;
pub const ImGuiSliderFlags_NoInput: c_int = 128;
pub const ImGuiSliderFlags_WrapAround: c_int = 256;
pub const ImGuiSliderFlags_ClampOnInput: c_int = 512;
pub const ImGuiSliderFlags_ClampZeroRange: c_int = 1024;
pub const ImGuiSliderFlags_NoSpeedTweaks: c_int = 2048;
pub const ImGuiSliderFlags_ColorMarkers: c_int = 4096;
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
pub const ImGuiMultiSelectFlags_SelectOnAuto: c_int = 8192;
pub const ImGuiMultiSelectFlags_SelectOnClickAlways: c_int = 16384;
pub const ImGuiMultiSelectFlags_SelectOnClickRelease: c_int = 32768;
pub const ImGuiMultiSelectFlags_NavWrapX: c_int = 65536;
pub const ImGuiMultiSelectFlags_NoSelectOnRightClick: c_int = 131072;
pub const ImGuiMultiSelectFlags_SelectOnMask_: c_int = 57344;
pub const ImGuiMultiSelectFlags_CheckboxMode_: c_int = 1048576;
pub const ImGuiMultiSelectFlags_ = c_uint;
pub const ImGuiSelectionRequestType_None: c_int = 0;
pub const ImGuiSelectionRequestType_SetAll: c_int = 1;
pub const ImGuiSelectionRequestType_SetRange: c_int = 2;
pub const ImGuiSelectionRequestType = c_uint;
pub const ImDrawFlags_None: c_int = 0;
pub const ImDrawFlags_RoundCornersTopLeft: c_int = 16;
pub const ImDrawFlags_RoundCornersTopRight: c_int = 32;
pub const ImDrawFlags_RoundCornersBottomLeft: c_int = 64;
pub const ImDrawFlags_RoundCornersBottomRight: c_int = 128;
pub const ImDrawFlags_RoundCornersNone: c_int = 256;
pub const ImDrawFlags_RoundCornersAll: c_int = 240;
pub const ImDrawFlags_RoundCornersDefault_: c_int = 240;
pub const ImDrawFlags_RoundCornersTop: c_int = 48;
pub const ImDrawFlags_RoundCornersBottom: c_int = 192;
pub const ImDrawFlags_RoundCornersLeft: c_int = 80;
pub const ImDrawFlags_RoundCornersRight: c_int = 160;
pub const ImDrawFlags_RoundCornersMask_: c_int = 496;
pub const ImDrawFlags_Closed: c_int = 512;
pub const ImDrawFlags_InvalidMask_: c_int = -2147483633;
pub const ImDrawFlags_ = c_int;
pub const ImDrawListFlags_None: c_int = 0;
pub const ImDrawListFlags_AntiAliasedLines: c_int = 1;
pub const ImDrawListFlags_AntiAliasedLinesUseTex: c_int = 2;
pub const ImDrawListFlags_AntiAliasedFill: c_int = 4;
pub const ImDrawListFlags_AllowVtxOffset: c_int = 8;
pub const ImDrawListFlags_TextNoPixelSnap: c_int = 16;
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
pub const ImFontFlags_ImplicitRefSize: c_int = 16;
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
pub const ImGuiDataAuthority = c_uint;
pub const ImGuiDebugLogFlags = c_int;
pub const ImGuiFocusRequestFlags = c_int;
pub const ImGuiLogFlags = c_int;
pub const ImGuiNavRenderCursorFlags = c_int;
pub const ImGuiSeparatorFlags = c_int;
pub const ImGuiTextFlags = c_int;
pub const ImGuiTooltipFlags = c_int;
pub const ImGuiWindowBgClickFlags = c_int;
pub const ImDrawTextFlags_None: c_int = 0;
pub const ImDrawTextFlags_CpuFineClip: c_int = 1;
pub const ImDrawTextFlags_WrapKeepBlanks: c_int = 2;
pub const ImDrawTextFlags_StopOnNewLine: c_int = 4;
pub const ImDrawTextFlags_ = c_uint;
pub const ImWcharClass_Blank: c_int = 0;
pub const ImWcharClass_Punct: c_int = 1;
pub const ImWcharClass_Other: c_int = 2;
pub const ImWcharClass = c_uint;
pub const ImFileHandle = [*c]FILE;
pub const ImGuiDataType_Pointer: c_int = 12;
pub const ImGuiDataType_ID: c_int = 13;
pub const ImGuiDataTypePrivate_ = c_uint;
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
pub const ImGuiItemFlags_Default_: c_int = 144;
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
pub const ImGuiItemStatusFlags_EditedInternal: c_int = 2048;
pub const ImGuiItemStatusFlags_ = c_uint;
pub const ImGuiHoveredFlags_DelayMask_: c_int = 245760;
pub const ImGuiHoveredFlags_AllowedMaskForIsWindowHovered: c_int = 12479;
pub const ImGuiHoveredFlags_AllowedMaskForIsItemHovered: c_int = 262048;
pub const ImGuiHoveredFlagsPrivate_ = c_uint;
pub const ImGuiInputTextFlags_Multiline: c_int = 67108864;
pub const ImGuiInputTextFlags_TempInput: c_int = 134217728;
pub const ImGuiInputTextFlags_LocalizeDecimalPoint: c_int = 268435456;
pub const ImGuiInputTextFlagsPrivate_ = c_uint;
pub const ImGuiButtonFlags_PressedOnClick: c_int = 16;
pub const ImGuiButtonFlags_PressedOnClickRelease: c_int = 32;
pub const ImGuiButtonFlags_PressedOnClickReleaseAnywhere: c_int = 64;
pub const ImGuiButtonFlags_PressedOnRelease: c_int = 128;
pub const ImGuiButtonFlags_PressedOnDoubleClick: c_int = 256;
pub const ImGuiButtonFlags_PressedOnDragDropHold: c_int = 512;
pub const ImGuiButtonFlags_FlattenChildren: c_int = 2048;
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
pub const struct_ImGuiComboPreviewData = extern struct {
    PreviewRect: ImRect_c = @import("std").mem.zeroes(ImRect_c),
    BackupCursorPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorMaxPos: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupCursorPosPrevLine: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    BackupPrevLineTextBaseOffset: f32 = 0,
    BackupLayout: ImGuiLayoutType = 0,
    pub const ImGuiComboPreviewData_destroy = __root.ImGuiComboPreviewData_destroy;
    pub const destroy = __root.ImGuiComboPreviewData_destroy;
};
pub const ImGuiComboPreviewData = struct_ImGuiComboPreviewData;
pub const struct_ImGuiInputTextDeactivatedState = extern struct {
    ID: ImGuiID = 0,
    ElapseFrame: c_int = 0,
    TextA: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    pub const ImGuiInputTextDeactivatedState_destroy = __root.ImGuiInputTextDeactivatedState_destroy;
    pub const ImGuiInputTextDeactivatedState_ClearFreeMemory = __root.ImGuiInputTextDeactivatedState_ClearFreeMemory;
    pub const destroy = __root.ImGuiInputTextDeactivatedState_destroy;
    pub const ClearFreeMemory = __root.ImGuiInputTextDeactivatedState_ClearFreeMemory;
};
pub const ImGuiInputTextDeactivatedState = struct_ImGuiInputTextDeactivatedState;
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
pub const ImGuiNextItemDataFlags_HasColorMarker: c_int = 32;
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
pub const struct_ImGuiSettingsCleanupArgs = extern struct {
    TypeHashFilter: ImGuiID = 0,
    DiscardOlderThanMonths: c_int = 0,
    DiscardWhenMissingDate: bool = false,
    DiscardAll: bool = false,
    SetCurrentSessionDateToAll: bool = false,
    SetCurrentSessionDateWhenMissingDate: bool = false,
    _DiscardOlderThanDate: c_int = 0,
    pub const igCleanupIniSettings = __root.igCleanupIniSettings;
};
pub const ImGuiSettingsCleanupArgs = struct_ImGuiSettingsCleanupArgs;
pub const ImGuiLocKey_VersionStr: c_int = 0;
pub const ImGuiLocKey_TableSizeOne: c_int = 1;
pub const ImGuiLocKey_TableSizeAllFit: c_int = 2;
pub const ImGuiLocKey_TableSizeAllDefault: c_int = 3;
pub const ImGuiLocKey_TableReset: c_int = 4;
pub const ImGuiLocKey_TableResetOrder: c_int = 5;
pub const ImGuiLocKey_TableResetVisibility: c_int = 6;
pub const ImGuiLocKey_WindowingMainMenuBar: c_int = 7;
pub const ImGuiLocKey_WindowingPopup: c_int = 8;
pub const ImGuiLocKey_WindowingUntitled: c_int = 9;
pub const ImGuiLocKey_OpenLink_s: c_int = 10;
pub const ImGuiLocKey_CopyLink: c_int = 11;
pub const ImGuiLocKey_DockingHideTabBar: c_int = 12;
pub const ImGuiLocKey_DockingHoldShiftToDock: c_int = 13;
pub const ImGuiLocKey_DockingDragToUndockOrMoveNode: c_int = 14;
pub const ImGuiLocKey_COUNT: c_int = 15;
pub const ImGuiLocKey = c_uint;
pub const ImGuiErrorCallback = ?*const fn (ctx: ?*ImGuiContext, user_data: ?*anyopaque, msg: [*c]const u8) callconv(.c) void;
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
pub const ImGuiDebugLogFlags_EventTable: c_int = 4096;
pub const ImGuiDebugLogFlags_EventMask_: c_int = 8191;
pub const ImGuiDebugLogFlags_OutputToTTY: c_int = 1048576;
pub const ImGuiDebugLogFlags_OutputToDebugger: c_int = 2097152;
pub const ImGuiDebugLogFlags_OutputToTestEngine: c_int = 4194304;
pub const ImGuiDebugLogFlags_ = c_uint;
pub const struct_ImGuiDebugAllocEntry = extern struct {
    FrameCount: c_int = 0,
    AllocCount: ImS16 = 0,
    FreeCount: ImS16 = 0,
};
pub const ImGuiDebugAllocEntry = struct_ImGuiDebugAllocEntry;
pub const struct_ImGuiDebugAllocInfo = extern struct {
    TotalAllocCount: c_int = 0,
    TotalFreeCount: c_int = 0,
    LastEntriesIdx: ImS16 = 0,
    LastEntriesBuf: [6]ImGuiDebugAllocEntry = @import("std").mem.zeroes([6]ImGuiDebugAllocEntry),
    pub const ImGuiDebugAllocInfo_destroy = __root.ImGuiDebugAllocInfo_destroy;
    pub const igDebugAllocHook = __root.igDebugAllocHook;
    pub const destroy = __root.ImGuiDebugAllocInfo_destroy;
};
pub const ImGuiDebugAllocInfo = struct_ImGuiDebugAllocInfo;
pub const struct_ImGuiStackLevelInfo = extern struct {
    ID: ImGuiID = 0,
    QueryFrameCount: ImS8 = 0,
    QuerySuccess: bool = false,
    DataType: ImS8 = 0,
    DescOffset: c_int = 0,
    pub const ImGuiStackLevelInfo_destroy = __root.ImGuiStackLevelInfo_destroy;
    pub const destroy = __root.ImGuiStackLevelInfo_destroy;
};
pub const ImGuiStackLevelInfo = struct_ImGuiStackLevelInfo;
pub const struct_ImVector_ImGuiStackLevelInfo = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiStackLevelInfo = null,
};
pub const ImVector_ImGuiStackLevelInfo = struct_ImVector_ImGuiStackLevelInfo;
pub const struct_ImGuiDebugItemPathQuery = extern struct {
    MainID: ImGuiID = 0,
    Active: bool = false,
    Complete: bool = false,
    Step: ImS8 = 0,
    Results: ImVector_ImGuiStackLevelInfo = @import("std").mem.zeroes(ImVector_ImGuiStackLevelInfo),
    ResultsDescBuf: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    ResultPathBuf: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    pub const ImGuiDebugItemPathQuery_destroy = __root.ImGuiDebugItemPathQuery_destroy;
    pub const destroy = __root.ImGuiDebugItemPathQuery_destroy;
};
pub const ImGuiDebugItemPathQuery = struct_ImGuiDebugItemPathQuery;
pub const struct_ImGuiIDStackTool = extern struct {
    OptHexEncodeNonAsciiChars: bool = false,
    OptCopyToClipboardOnCtrlC: bool = false,
    LastActiveFrame: c_int = 0,
    CopyToClipboardLastTime: f32 = 0,
    pub const ImGuiIDStackTool_destroy = __root.ImGuiIDStackTool_destroy;
    pub const destroy = __root.ImGuiIDStackTool_destroy;
};
pub const ImGuiIDStackTool = struct_ImGuiIDStackTool;
pub const ImGuiContextHookType_NewFramePre: c_int = 0;
pub const ImGuiContextHookType_NewFramePost: c_int = 1;
pub const ImGuiContextHookType_EndFramePre: c_int = 2;
pub const ImGuiContextHookType_EndFramePost: c_int = 3;
pub const ImGuiContextHookType_RenderPre: c_int = 4;
pub const ImGuiContextHookType_RenderPost: c_int = 5;
pub const ImGuiContextHookType_Shutdown: c_int = 6;
pub const ImGuiContextHookType_PendingRemoval_: c_int = 7;
pub const ImGuiContextHookType = c_uint;
pub const ImGuiDemoMarkerCallback = ?*const fn (file: [*c]const u8, line: c_int, section: [*c]const u8) callconv(.c) void;
pub const struct_ImVector_ImGuiMultiSelectTempData = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiMultiSelectTempData = null,
};
pub const ImVector_ImGuiMultiSelectTempData = struct_ImVector_ImGuiMultiSelectTempData;
pub const struct_ImVector_ImGuiMultiSelectState = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiMultiSelectState = null,
};
pub const ImVector_ImGuiMultiSelectState = struct_ImVector_ImGuiMultiSelectState;
pub const struct_ImPool_ImGuiMultiSelectState = extern struct {
    Buf: ImVector_ImGuiMultiSelectState = @import("std").mem.zeroes(ImVector_ImGuiMultiSelectState),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = 0,
    AliveCount: ImPoolIdx = 0,
};
pub const ImPool_ImGuiMultiSelectState = struct_ImPool_ImGuiMultiSelectState;
pub const struct_ImVector_ImGuiID = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiID = null,
};
pub const ImVector_ImGuiID = struct_ImVector_ImGuiID;
pub const struct_ImVector_ImGuiSettingsHandler = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiSettingsHandler = null,
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
pub const struct_ImVector_ImGuiContextHook = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiContextHook = null,
};
pub const ImVector_ImGuiContextHook = struct_ImVector_ImGuiContextHook;
pub const struct_ImVector_ImGuiOldColumns = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiOldColumns = null,
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
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiTableInstanceData = null,
};
pub const ImVector_ImGuiTableInstanceData = struct_ImVector_ImGuiTableInstanceData;
pub const struct_ImVector_ImGuiTableColumnSortSpecs = extern struct {
    Size: c_int = 0,
    Capacity: c_int = 0,
    Data: [*c]ImGuiTableColumnSortSpecs = null,
};
pub const ImVector_ImGuiTableColumnSortSpecs = struct_ImVector_ImGuiTableColumnSortSpecs; // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:3845:10: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTableColumnSettings = opaque {
    pub const ImGuiTableColumnSettings_destroy = __root.ImGuiTableColumnSettings_destroy;
    pub const destroy = __root.ImGuiTableColumnSettings_destroy;
};
pub const ImGuiTableColumnSettings = struct_ImGuiTableColumnSettings;
pub const struct_StbTexteditRow = extern struct {
    x0: f32 = 0,
    x1: f32 = 0,
    baseline_y_delta: f32 = 0,
    ymin: f32 = 0,
    ymax: f32 = 0,
    num_chars: c_int = 0,
};
pub const StbTexteditRow = struct_StbTexteditRow;
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
pub extern fn igCombo_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (user_data: ?*anyopaque, idx: c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
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
pub extern fn igTreeNodeGetOpen(storage_id: ImGuiID) bool;
pub extern fn igSelectable_Bool(label: [*c]const u8, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2_c) bool;
pub extern fn igSelectable_BoolPtr(label: [*c]const u8, p_selected: [*c]bool, flags: ImGuiSelectableFlags, size: ImVec2_c) bool;
pub extern fn igBeginMultiSelect(flags: ImGuiMultiSelectFlags, selection_size: c_int, items_count: c_int) [*c]ImGuiMultiSelectIO;
pub extern fn igEndMultiSelect() [*c]ImGuiMultiSelectIO;
pub extern fn igSetNextItemSelectionUserData(selection_user_data: ImGuiSelectionUserData) void;
pub extern fn igIsItemToggledSelection() bool;
pub extern fn igBeginListBox(label: [*c]const u8, size: ImVec2_c) bool;
pub extern fn igEndListBox() void;
pub extern fn igListBox_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBox_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (user_data: ?*anyopaque, idx: c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igPlotLines_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2_c, stride: c_int) void;
pub extern fn igPlotLines_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (data: ?*anyopaque, idx: c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2_c) void;
pub extern fn igPlotHistogram_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2_c, stride: c_int) void;
pub extern fn igPlotHistogram_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (data: ?*anyopaque, idx: c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2_c) void;
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
pub extern fn igOpenPopup_Str(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igOpenPopup_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igOpenPopupOnItemClick(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
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
pub extern fn igTableSetupColumn(label: [*c]const u8, flags: ImGuiTableColumnFlags, init_width_or_weight: f32, user_data: ImGuiID) void;
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
pub extern fn igGetItemFlags() ImGuiItemFlags;
pub extern fn igGetItemClickedCountWithSingleClickDelay(mouse_button: ImGuiMouseButton, delay: f32) c_int;
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
pub extern fn igSetItemKeyOwner_Nil(key: ImGuiKey) bool;
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
pub extern fn ImGuiInputTextCallbackData_SetSelection(self: [*c]ImGuiInputTextCallbackData, s: c_int, e: c_int) void;
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
pub extern fn ImDrawList_AddLineH(self: [*c]ImDrawList, min_x: f32, max_x: f32, y: f32, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddLineV(self: [*c]ImDrawList, x: f32, min_y: f32, max_y: f32, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddRect(self: [*c]ImDrawList, p_min: ImVec2_c, p_max: ImVec2_c, col: ImU32, rounding: f32, thickness: f32, flags: ImDrawFlags) void;
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
pub extern fn ImDrawList_AddPolyline(self: [*c]ImDrawList, points: [*c]const ImVec2_c, num_points: c_int, col: ImU32, thickness: f32, flags: ImDrawFlags) void;
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
pub extern fn ImDrawList_PathStroke(self: [*c]ImDrawList, col: ImU32, thickness: f32, flags: ImDrawFlags) void;
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
pub extern fn ImFontAtlas_AddFontDefaultVector(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontDefaultBitmap(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromFileTTF(self: [*c]ImFontAtlas, filename: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryTTF(self: [*c]ImFontAtlas, font_data: ?*anyopaque, font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedTTF(self: [*c]ImFontAtlas, compressed_font_data: ?*const anyopaque, compressed_font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self: [*c]ImFontAtlas, compressed_font_data_base85: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_RemoveFont(self: [*c]ImFontAtlas, font: [*c]ImFont) void;
pub extern fn ImFontAtlas_CompactCache(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_SetFontLoader(self: [*c]ImFontAtlas, font_loader: [*c]const ImFontLoader) void;
pub extern fn ImFontAtlas_Clear(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearFonts(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearInputData(self: [*c]ImFontAtlas) void;
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
pub extern fn ImGuiViewport_GetDebugName(self: [*c]ImGuiViewport) [*c]const u8;
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
pub extern fn igImTextInitClassifiers() void;
pub extern fn igImTextClassifierClear(bits: [*c]ImU32, codepoint_min: c_uint, codepoint_end: c_uint, char_class: ImWcharClass) void;
pub extern fn igImTextClassifierSetCharClass(bits: [*c]ImU32, codepoint_min: c_uint, codepoint_end: c_uint, char_class: ImWcharClass, c: c_uint) void;
pub extern fn igImTextClassifierSetCharClassFromStr(bits: [*c]ImU32, codepoint_min: c_uint, codepoint_end: c_uint, char_class: ImWcharClass, s: [*c]const u8) void;
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
pub extern fn igImCeilFast(f: f32) f32;
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
pub extern fn ImRect_AddX(self: [*c]ImRect, x: f32) void;
pub extern fn ImRect_AddY(self: [*c]ImRect, y: f32) void;
pub extern fn ImRect_Expand_Float(self: [*c]ImRect, amount: f32) void;
pub extern fn ImRect_Expand_Vec2(self: [*c]ImRect, amount: ImVec2_c) void;
pub extern fn ImRect_Translate(self: [*c]ImRect, d: ImVec2_c) void;
pub extern fn ImRect_TranslateX(self: [*c]ImRect, dx: f32) void;
pub extern fn ImRect_TranslateY(self: [*c]ImRect, dy: f32) void;
pub extern fn ImRect_ClipWith(self: [*c]ImRect, r: ImRect_c) void;
pub extern fn ImRect_ClipWithFull(self: [*c]ImRect, r: ImRect_c) void;
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
pub extern fn ImGuiPackedDate_ImGuiPackedDate_Nil() ?*ImGuiPackedDate;
pub extern fn ImGuiPackedDate_destroy(self: ?*ImGuiPackedDate) void;
pub extern fn ImGuiPackedDate_ImGuiPackedDate_Int(yyyymmdd: c_int) ?*ImGuiPackedDate;
pub extern fn ImGuiPackedDate_IsValid(self: ?*ImGuiPackedDate) bool;
pub extern fn ImGuiPackedDate_Unpack(self: ?*ImGuiPackedDate) c_int;
pub extern fn ImGuiPackedDate_SubtractMonths(self: ?*ImGuiPackedDate, m: c_int) void;
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
pub extern fn ImGuiInputTextState_GetText(self: [*c]ImGuiInputTextState) [*c]const u8;
pub extern fn ImGuiInputTextState_CursorAnimReset(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_CursorClamp(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_HasSelection(self: [*c]ImGuiInputTextState) bool;
pub extern fn ImGuiInputTextState_ClearSelection(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_GetCursorPos(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetSelectionStart(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetSelectionEnd(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_SetSelection(self: [*c]ImGuiInputTextState, start: c_int, end: c_int) void;
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
pub extern fn ImGuiWindowSettings_ImGuiWindowSettings() ?*ImGuiWindowSettings;
pub extern fn ImGuiWindowSettings_destroy(self: ?*ImGuiWindowSettings) void;
pub extern fn ImGuiWindowSettings_GetName(self: ?*ImGuiWindowSettings) [*c]u8;
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
pub extern fn ImGuiTableSettings_ImGuiTableSettings() ?*ImGuiTableSettings;
pub extern fn ImGuiTableSettings_destroy(self: ?*ImGuiTableSettings) void;
pub extern fn ImGuiTableSettings_GetColumnSettings(self: ?*ImGuiTableSettings) ?*ImGuiTableColumnSettings;
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
pub extern fn igTableApplyQueuedRequests(table: ?*ImGuiTable) void;
pub extern fn igTableSetupDrawChannels(table: ?*ImGuiTable) void;
pub extern fn igTableReconcileColumns(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateLayout(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateBorders(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateColumnsWeightFromWidth(table: ?*ImGuiTable) void;
pub extern fn igTableApplyExternalUnclipRect(table: ?*ImGuiTable, rect: [*c]ImRect) void;
pub extern fn igTableDrawBorders(table: ?*ImGuiTable) void;
pub extern fn igTableDrawDefaultContextMenu(table: ?*ImGuiTable, flags_for_section_to_display: ImGuiTableFlags) void;
pub extern fn igTableBeginContextMenuPopup(table: ?*ImGuiTable) bool;
pub extern fn igTableMergeDrawChannels(table: ?*ImGuiTable) void;
pub extern fn igTableGetInstanceData(table: ?*ImGuiTable, instance_no: c_int) [*c]ImGuiTableInstanceData;
pub extern fn igTableGetInstanceID(table: ?*ImGuiTable, instance_no: c_int) ImGuiID;
pub extern fn igTableFixDisplayOrder(table: ?*ImGuiTable) void;
pub extern fn igTableSortSpecsSanitize(table: ?*ImGuiTable) void;
pub extern fn igTableSortSpecsBuild(table: ?*ImGuiTable) void;
pub extern fn igTableInitColumnDefaults(table: ?*ImGuiTable, column: ?*ImGuiTableColumn, init_mask: ImGuiTableColumnFlags) void;
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
pub extern fn igTableSetColumnDisplayOrder(table: ?*ImGuiTable, column_n: c_int, dst_order: c_int) void;
pub extern fn igTableQueueSetColumnDisplayOrder(table: ?*ImGuiTable, column_n: c_int, dst_order: c_int) void;
pub extern fn igTableRemove(table: ?*ImGuiTable) void;
pub extern fn igTableGcCompactTransientBuffers_TablePtr(table: ?*ImGuiTable) void;
pub extern fn igTableGcCompactTransientBuffers_TableTempDataPtr(table: [*c]ImGuiTableTempData) void;
pub extern fn igTableGcCompactSettings() void;
pub extern fn igTableLoadSettings(table: ?*ImGuiTable) void;
pub extern fn igTableLoadSettingsForColumns(table: ?*ImGuiTable) void;
pub extern fn igTableLoadSettingsForColumn(column: ?*ImGuiTableColumn, column_settings: ?*ImGuiTableColumnSettings, load_flags: ImGuiTableFlags) void;
pub extern fn igTableSaveSettings(table: ?*ImGuiTable) void;
pub extern fn igTableResetSettings(table: ?*ImGuiTable) void;
pub extern fn igTableGetBoundSettings(table: ?*ImGuiTable) ?*ImGuiTableSettings;
pub extern fn igTableSettingsAddSettingsHandler() void;
pub extern fn igTableSettingsCreate(id: ImGuiID, columns_count: c_int) ?*ImGuiTableSettings;
pub extern fn igTableSettingsFindByID(id: ImGuiID) ?*ImGuiTableSettings;
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
pub extern fn igGetIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiIO;
pub extern fn igGetPlatformIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiPlatformIO;
pub extern fn igGetScale() f32;
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
pub extern fn igSetContextName(ctx: ?*ImGuiContext, name: [*c]const u8) void;
pub extern fn igAddContextHook(ctx: ?*ImGuiContext, hook: [*c]const ImGuiContextHook) ImGuiID;
pub extern fn igRemoveContextHook(ctx: ?*ImGuiContext, hook_to_remove: ImGuiID) void;
pub extern fn igCallContextHooks(ctx: ?*ImGuiContext, @"type": ImGuiContextHookType) void;
pub extern fn igUpdateInputEvents(trickle_fast_inputs: bool) void;
pub extern fn igUpdateHoveredWindowAndCaptureFlags(mouse_pos: ImVec2_c) void;
pub extern fn igFindHoveredWindowEx(pos: ImVec2_c, find_first_and_in_any_viewport: bool, out_hovered_window: [*c]?*ImGuiWindow, out_hovered_window_under_moving_window: [*c]?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindow(window: ?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindowOrNode(window: ?*ImGuiWindow, node: ?*ImGuiDockNode, undock: bool) void;
pub extern fn igStopMouseMovingWindow() void;
pub extern fn igUpdateMouseMovingWindowNewFrame() void;
pub extern fn igUpdateMouseMovingWindowEndFrame() void;
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
pub extern fn igCleanupIniSettings(args: [*c]ImGuiSettingsCleanupArgs) void;
pub extern fn igAddSettingsHandler(handler: [*c]const ImGuiSettingsHandler) void;
pub extern fn igRemoveSettingsHandler(type_name: [*c]const u8) void;
pub extern fn igFindSettingsHandler(type_name: [*c]const u8) [*c]ImGuiSettingsHandler;
pub extern fn igCreateNewWindowSettings(name: [*c]const u8) ?*ImGuiWindowSettings;
pub extern fn igFindWindowSettingsByID(id: ImGuiID) ?*ImGuiWindowSettings;
pub extern fn igFindWindowSettingsByWindow(window: ?*ImGuiWindow) ?*ImGuiWindowSettings;
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
pub extern fn igFindFrontMostVisibleChildWindow(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn igBeginPopupEx(id: ImGuiID, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupMenuEx(id: ImGuiID, label: [*c]const u8, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igOpenPopupEx(id: ImGuiID, popup_flags: ImGuiPopupFlags) bool;
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
pub extern fn igGetMouseButtonFromPopupFlags(flags: ImGuiPopupFlags) ImGuiMouseButton;
pub extern fn igIsPopupOpenRequestForItem(flags: ImGuiPopupFlags, id: ImGuiID) bool;
pub extern fn igIsPopupOpenRequestForWindow(flags: ImGuiPopupFlags) bool;
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
pub extern fn igSetItemKeyOwner_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags) bool;
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
pub extern fn igIsInNavFocusRoute(focus_scope_id: ImGuiID) bool;
pub extern fn igGetCurrentFocusScope() ImGuiID;
pub extern fn igIsDragDropActive() bool;
pub extern fn igBeginDragDropTargetCustom(bb: ImRect_c, id: ImGuiID) bool;
pub extern fn igBeginDragDropTargetViewport(viewport: [*c]ImGuiViewport, p_bb: [*c]const ImRect) bool;
pub extern fn igClearDragDrop() void;
pub extern fn igIsDragDropPayloadBeingAccepted() bool;
pub extern fn igRenderDragDropTargetRectForItem(bb: ImRect_c) void;
pub extern fn igRenderDragDropTargetRectEx(draw_list: [*c]ImDrawList, bb: ImRect_c, rounding: f32) void;
pub extern fn igGetTypingSelectRequest(flags: ImGuiTypingSelectFlags) [*c]ImGuiTypingSelectRequest;
pub extern fn igTypingSelectFindMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn igTypingSelectFindNextSingleCharMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn igTypingSelectFindBestLeadingMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque) c_int;
pub extern fn igBeginBoxSelect(scope_rect: ImRect_c, window: ?*ImGuiWindow, box_select_id: ImGuiID, ms_flags: ImGuiMultiSelectFlags) bool;
pub extern fn igEndBoxSelect(scope_rect: ImRect_c, ms_flags: ImGuiMultiSelectFlags) void;
pub extern fn igMultiSelectItemHeader(id: ImGuiID, p_selected: [*c]bool, p_button_flags: [*c]ImGuiButtonFlags) void;
pub extern fn igMultiSelectItemFooter(id: ImGuiID, p_selected: [*c]bool, p_pressed: [*c]bool, extra_flags: ImGuiMultiSelectFlags) void;
pub extern fn igMultiSelectAddSetAll(ms: [*c]ImGuiMultiSelectTempData, selected: bool) void;
pub extern fn igMultiSelectAddSetRange(ms: [*c]ImGuiMultiSelectTempData, selected: bool, range_dir: c_int, first_item: ImGuiSelectionUserData, last_item: ImGuiSelectionUserData) void;
pub extern fn igGetBoxSelectState(id: ImGuiID) ?*ImGuiBoxSelectState;
pub extern fn igGetMultiSelectState(id: ImGuiID) [*c]ImGuiMultiSelectState;
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
pub extern fn igRenderColorComponentMarker(bb: ImRect_c, col: ImU32, rounding: f32) void;
pub extern fn igRenderColorRectWithAlphaCheckerboard(draw_list: [*c]ImDrawList, p_min: ImVec2_c, p_max: ImVec2_c, fill_col: ImU32, grid_step: f32, grid_off: ImVec2_c, rounding: f32, flags: ImDrawFlags) void;
pub extern fn igRenderNavCursor(bb: ImRect_c, id: ImGuiID, flags: ImGuiNavRenderCursorFlags, rounding: f32) void;
pub extern fn igFindRenderedTextEnd(text: [*c]const u8, text_end: [*c]const u8) [*c]const u8;
pub extern fn igRenderMouseCursor(pos: ImVec2_c, scale: f32, mouse_cursor: ImGuiMouseCursor, col_fill: ImU32, col_border: ImU32, col_shadow: ImU32) void;
pub extern fn igRenderArrow(draw_list: [*c]ImDrawList, pos: ImVec2_c, col: ImU32, dir: ImGuiDir, scale: f32) void;
pub extern fn igRenderBullet(draw_list: [*c]ImDrawList, pos: ImVec2_c, col: ImU32) void;
pub extern fn igRenderCheckMark(draw_list: [*c]ImDrawList, pos: ImVec2_c, col: ImU32, sz: f32) void;
pub extern fn igRenderArrowPointingAt(draw_list: [*c]ImDrawList, pos: ImVec2_c, half_sz: ImVec2_c, direction: ImGuiDir, col: ImU32) void;
pub extern fn igRenderArrowDockMenu(draw_list: [*c]ImDrawList, p_min: ImVec2_c, sz: f32, col: ImU32) void;
pub extern fn igRenderRectFilledInRangeH(draw_list: [*c]ImDrawList, rect: ImRect_c, col: ImU32, fill_x0: f32, fill_x1: f32, rounding: f32) void;
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
pub extern fn igExtendHitBoxWhenNearViewportEdge(window: ?*ImGuiWindow, bb: [*c]ImRect, threshold: f32, axis: ImGuiAxis) void;
pub extern fn igButtonBehavior(bb: ImRect_c, id: ImGuiID, out_hovered: [*c]bool, out_held: [*c]bool, flags: ImGuiButtonFlags) bool;
pub extern fn igDragBehavior(id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderBehavior(bb: ImRect_c, id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags, out_grab_bb: [*c]ImRect) bool;
pub extern fn igSplitterBehavior(bb: ImRect_c, id: ImGuiID, axis: ImGuiAxis, size1: [*c]f32, size2: [*c]f32, min_size1: f32, min_size2: f32, hover_extend: f32, hover_visibility_delay: f32, bg_col: ImU32) bool;
pub extern fn igTreeNodeBehavior(id: ImGuiID, flags: ImGuiTreeNodeFlags, label: [*c]const u8, label_end: [*c]const u8) bool;
pub extern fn igTreeNodeDrawLineToChildNode(target_pos: ImVec2_c) void;
pub extern fn igTreeNodeDrawLineToTreePop(data: [*c]const ImGuiTreeNodeStackData) void;
pub extern fn igTreePushOverrideID(id: ImGuiID) void;
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
pub extern fn igTempInputText(bb: ImRect_c, id: ImGuiID, label: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igTempInputScalar(bb: ImRect_c, id: ImGuiID, label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_clamp_min: ?*const anyopaque, p_clamp_max: ?*const anyopaque) bool;
pub extern fn igTempInputIsActive(id: ImGuiID) bool;
pub extern fn igGetInputTextState(id: ImGuiID) [*c]ImGuiInputTextState;
pub extern fn igSetNextItemRefVal(data_type: ImGuiDataType, p_data: ?*anyopaque) void;
pub extern fn igIsItemActiveAsInputText() bool;
pub extern fn igColorTooltip(text: [*c]const u8, col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorEditOptionsPopup(col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorPickerOptionsPopup(ref_col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igSetNextItemColorMarker(col: ImU32) void;
pub extern fn igPlotEx(plot_type: ImGuiPlotType, label: [*c]const u8, values_getter: ?*const fn (data: ?*anyopaque, idx: c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, size_arg: ImVec2_c) c_int;
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
pub extern fn igDemoMarker(file: [*c]const u8, line: c_int, section: [*c]const u8) void;
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
pub extern fn igDebugTextureIDToU64(tex_id: ImTextureID) ImU64;
pub extern fn igDebugHookIdInfo(id: ImGuiID, data_type: ImGuiDataType, data_id: ?*const anyopaque, data_id_end: ?*const anyopaque) void;
pub extern fn igDebugNodeColumns(columns: [*c]ImGuiOldColumns) void;
pub extern fn igDebugNodeDockNode(node: ?*ImGuiDockNode, label: [*c]const u8) void;
pub extern fn igDebugNodeDrawList(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP, draw_list: [*c]const ImDrawList, label: [*c]const u8) void;
pub extern fn igDebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list: [*c]ImDrawList, draw_list: [*c]const ImDrawList, draw_cmd: [*c]const ImDrawCmd, show_mesh: bool, show_aabb: bool) void;
pub extern fn igDebugNodeFont(font: [*c]ImFont) void;
pub extern fn igDebugNodeFontGlyphsForSrcMask(font: [*c]ImFont, baked: ?*ImFontBaked, src_mask: c_int) void;
pub extern fn igDebugNodeFontGlyph(font: [*c]ImFont, glyph: ?*const ImFontGlyph) void;
pub extern fn igDebugNodeTexture(tex: [*c]ImTextureData, int_id: c_int, highlight_rect: [*c]const ImFontAtlasRect) void;
pub extern fn igDebugNodeStorage(storage: [*c]ImGuiStorage, label: [*c]const u8) void;
pub extern fn igDebugNodeTabBar(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8) void;
pub extern fn igDebugNodeTable(table: ?*ImGuiTable) void;
pub extern fn igDebugNodeTableSettings(settings: ?*ImGuiTableSettings, table: ?*ImGuiTable) void;
pub extern fn igDebugNodeInputTextState(state: [*c]ImGuiInputTextState) void;
pub extern fn igDebugNodeTypingSelectState(state: [*c]ImGuiTypingSelectState) void;
pub extern fn igDebugNodeMultiSelectState(state: [*c]ImGuiMultiSelectState) void;
pub extern fn igDebugNodeWindow(window: ?*ImGuiWindow, label: [*c]const u8) void;
pub extern fn igDebugNodeWindowSettings(settings: ?*ImGuiWindowSettings) void;
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
pub extern fn igImFontAtlasFontRebuildOutput(atlas: [*c]ImFontAtlas, font: [*c]ImFont) void;
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
pub extern fn igImTextureDataUpdateNewFrame(tex: [*c]ImTextureData) bool;
pub extern fn igImTextureDataQueueUpload(tex: [*c]ImTextureData, x: c_int, y: c_int, w: c_int, h: c_int) void;
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
pub extern fn ImGuiPlatformIO_Set_Platform_GetWindowPos(platform_io: [*c]ImGuiPlatformIO, user_callback: ?*const fn (vp: [*c]ImGuiViewport, out_pos: [*c]ImVec2) callconv(.c) void) void;
pub extern fn ImGuiPlatformIO_Set_Platform_GetWindowSize(platform_io: [*c]ImGuiPlatformIO, user_callback: ?*const fn (vp: [*c]ImGuiViewport, out_size: [*c]ImVec2) callconv(.c) void) void;
pub const struct_ImNodesContext = opaque {
    pub const imnodes_DestroyContext = __root.imnodes_DestroyContext;
    pub const imnodes_SetCurrentContext = __root.imnodes_SetCurrentContext;
    pub const DestroyContext = __root.imnodes_DestroyContext;
    pub const SetCurrentContext = __root.imnodes_SetCurrentContext;
};
pub const ImNodesContext = struct_ImNodesContext;
pub const struct_ImNodesEditorContext = opaque {
    pub const imnodes_EditorContextFree = __root.imnodes_EditorContextFree;
    pub const imnodes_EditorContextSet = __root.imnodes_EditorContextSet;
    pub const imnodes_SaveEditorStateToIniString = __root.imnodes_SaveEditorStateToIniString;
    pub const imnodes_LoadEditorStateFromIniString = __root.imnodes_LoadEditorStateFromIniString;
    pub const imnodes_SaveEditorStateToIniFile = __root.imnodes_SaveEditorStateToIniFile;
    pub const imnodes_LoadEditorStateFromIniFile = __root.imnodes_LoadEditorStateFromIniFile;
    pub const EditorContextFree = __root.imnodes_EditorContextFree;
    pub const EditorContextSet = __root.imnodes_EditorContextSet;
    pub const SaveEditorStateToIniString = __root.imnodes_SaveEditorStateToIniString;
    pub const LoadEditorStateFromIniString = __root.imnodes_LoadEditorStateFromIniString;
    pub const SaveEditorStateToIniFile = __root.imnodes_SaveEditorStateToIniFile;
    pub const LoadEditorStateFromIniFile = __root.imnodes_LoadEditorStateFromIniFile;
};
pub const ImNodesEditorContext = struct_ImNodesEditorContext;
pub const ImNodesCol = c_int;
pub const ImNodesStyleVar = c_int;
pub const ImNodesStyleFlags = c_int;
pub const ImNodesPinShape = c_int;
pub const ImNodesAttributeFlags = c_int;
pub const ImNodesMiniMapLocation = c_int;
pub const ImNodesCol_NodeBackground: c_int = 0;
pub const ImNodesCol_NodeBackgroundHovered: c_int = 1;
pub const ImNodesCol_NodeBackgroundSelected: c_int = 2;
pub const ImNodesCol_NodeOutline: c_int = 3;
pub const ImNodesCol_TitleBar: c_int = 4;
pub const ImNodesCol_TitleBarHovered: c_int = 5;
pub const ImNodesCol_TitleBarSelected: c_int = 6;
pub const ImNodesCol_Link: c_int = 7;
pub const ImNodesCol_LinkHovered: c_int = 8;
pub const ImNodesCol_LinkSelected: c_int = 9;
pub const ImNodesCol_Pin: c_int = 10;
pub const ImNodesCol_PinHovered: c_int = 11;
pub const ImNodesCol_BoxSelector: c_int = 12;
pub const ImNodesCol_BoxSelectorOutline: c_int = 13;
pub const ImNodesCol_GridBackground: c_int = 14;
pub const ImNodesCol_GridLine: c_int = 15;
pub const ImNodesCol_GridLinePrimary: c_int = 16;
pub const ImNodesCol_MiniMapBackground: c_int = 17;
pub const ImNodesCol_MiniMapBackgroundHovered: c_int = 18;
pub const ImNodesCol_MiniMapOutline: c_int = 19;
pub const ImNodesCol_MiniMapOutlineHovered: c_int = 20;
pub const ImNodesCol_MiniMapNodeBackground: c_int = 21;
pub const ImNodesCol_MiniMapNodeBackgroundHovered: c_int = 22;
pub const ImNodesCol_MiniMapNodeBackgroundSelected: c_int = 23;
pub const ImNodesCol_MiniMapNodeOutline: c_int = 24;
pub const ImNodesCol_MiniMapLink: c_int = 25;
pub const ImNodesCol_MiniMapLinkSelected: c_int = 26;
pub const ImNodesCol_MiniMapCanvas: c_int = 27;
pub const ImNodesCol_MiniMapCanvasOutline: c_int = 28;
pub const ImNodesCol_COUNT: c_int = 29;
pub const ImNodesCol_ = c_uint;
pub const ImNodesStyleVar_GridSpacing: c_int = 0;
pub const ImNodesStyleVar_NodeCornerRounding: c_int = 1;
pub const ImNodesStyleVar_NodePadding: c_int = 2;
pub const ImNodesStyleVar_NodeBorderThickness: c_int = 3;
pub const ImNodesStyleVar_LinkThickness: c_int = 4;
pub const ImNodesStyleVar_LinkLineSegmentsPerLength: c_int = 5;
pub const ImNodesStyleVar_LinkHoverDistance: c_int = 6;
pub const ImNodesStyleVar_PinCircleRadius: c_int = 7;
pub const ImNodesStyleVar_PinQuadSideLength: c_int = 8;
pub const ImNodesStyleVar_PinTriangleSideLength: c_int = 9;
pub const ImNodesStyleVar_PinLineThickness: c_int = 10;
pub const ImNodesStyleVar_PinHoverRadius: c_int = 11;
pub const ImNodesStyleVar_PinOffset: c_int = 12;
pub const ImNodesStyleVar_MiniMapPadding: c_int = 13;
pub const ImNodesStyleVar_MiniMapOffset: c_int = 14;
pub const ImNodesStyleVar_COUNT: c_int = 15;
pub const ImNodesStyleVar_ = c_uint;
pub const ImNodesStyleFlags_None: c_int = 0;
pub const ImNodesStyleFlags_NodeOutline: c_int = 1;
pub const ImNodesStyleFlags_GridLines: c_int = 4;
pub const ImNodesStyleFlags_GridLinesPrimary: c_int = 8;
pub const ImNodesStyleFlags_GridSnapping: c_int = 16;
pub const ImNodesStyleFlags_ = c_uint;
pub const ImNodesPinShape_Circle: c_int = 0;
pub const ImNodesPinShape_CircleFilled: c_int = 1;
pub const ImNodesPinShape_Triangle: c_int = 2;
pub const ImNodesPinShape_TriangleFilled: c_int = 3;
pub const ImNodesPinShape_Quad: c_int = 4;
pub const ImNodesPinShape_QuadFilled: c_int = 5;
pub const ImNodesPinShape_ = c_uint;
pub const ImNodesAttributeFlags_None: c_int = 0;
pub const ImNodesAttributeFlags_EnableLinkDetachWithDragClick: c_int = 1;
pub const ImNodesAttributeFlags_EnableLinkCreationOnSnap: c_int = 2;
pub const ImNodesAttributeFlags_ = c_uint;
pub const struct_EmulateThreeButtonMouse = extern struct {
    Modifier: [*c]const bool = null,
    pub const EmulateThreeButtonMouse_destroy = __root.EmulateThreeButtonMouse_destroy;
    pub const destroy = __root.EmulateThreeButtonMouse_destroy;
};
pub const EmulateThreeButtonMouse = struct_EmulateThreeButtonMouse;
pub const struct_LinkDetachWithModifierClick = extern struct {
    Modifier: [*c]const bool = null,
    pub const LinkDetachWithModifierClick_destroy = __root.LinkDetachWithModifierClick_destroy;
    pub const destroy = __root.LinkDetachWithModifierClick_destroy;
};
pub const LinkDetachWithModifierClick = struct_LinkDetachWithModifierClick;
pub const struct_MultipleSelectModifier = extern struct {
    Modifier: [*c]const bool = null,
    pub const MultipleSelectModifier_destroy = __root.MultipleSelectModifier_destroy;
    pub const destroy = __root.MultipleSelectModifier_destroy;
};
pub const MultipleSelectModifier = struct_MultipleSelectModifier;
pub const struct_ImNodesIO = extern struct {
    EmulateThreeButtonMouse: EmulateThreeButtonMouse = @import("std").mem.zeroes(EmulateThreeButtonMouse),
    LinkDetachWithModifierClick: LinkDetachWithModifierClick = @import("std").mem.zeroes(LinkDetachWithModifierClick),
    MultipleSelectModifier: MultipleSelectModifier = @import("std").mem.zeroes(MultipleSelectModifier),
    AltMouseButton: c_int = 0,
    AutoPanningSpeed: f32 = 0,
    pub const ImNodesIO_destroy = __root.ImNodesIO_destroy;
    pub const destroy = __root.ImNodesIO_destroy;
};
pub const ImNodesIO = struct_ImNodesIO;
pub const struct_ImNodesStyle = extern struct {
    GridSpacing: f32 = 0,
    NodeCornerRounding: f32 = 0,
    NodePadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    NodeBorderThickness: f32 = 0,
    LinkThickness: f32 = 0,
    LinkLineSegmentsPerLength: f32 = 0,
    LinkHoverDistance: f32 = 0,
    PinCircleRadius: f32 = 0,
    PinQuadSideLength: f32 = 0,
    PinTriangleSideLength: f32 = 0,
    PinLineThickness: f32 = 0,
    PinHoverRadius: f32 = 0,
    PinOffset: f32 = 0,
    MiniMapPadding: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    MiniMapOffset: ImVec2_c = @import("std").mem.zeroes(ImVec2_c),
    Flags: ImNodesStyleFlags = 0,
    Colors: [29]c_uint = @import("std").mem.zeroes([29]c_uint),
    pub const ImNodesStyle_destroy = __root.ImNodesStyle_destroy;
    pub const imnodes_StyleColorsDark = __root.imnodes_StyleColorsDark;
    pub const imnodes_StyleColorsClassic = __root.imnodes_StyleColorsClassic;
    pub const imnodes_StyleColorsLight = __root.imnodes_StyleColorsLight;
    pub const destroy = __root.ImNodesStyle_destroy;
    pub const StyleColorsDark = __root.imnodes_StyleColorsDark;
    pub const StyleColorsClassic = __root.imnodes_StyleColorsClassic;
    pub const StyleColorsLight = __root.imnodes_StyleColorsLight;
};
pub const ImNodesStyle = struct_ImNodesStyle;
pub const ImNodesMiniMapLocation_BottomLeft: c_int = 0;
pub const ImNodesMiniMapLocation_BottomRight: c_int = 1;
pub const ImNodesMiniMapLocation_TopLeft: c_int = 2;
pub const ImNodesMiniMapLocation_TopRight: c_int = 3;
pub const ImNodesMiniMapLocation_ = c_uint;
pub const ImNodesMiniMapNodeHoveringCallback = ?*const fn (c_int, ?*anyopaque) callconv(.c) void;
pub const ImNodesMiniMapNodeHoveringCallbackUserData = ?*anyopaque;
pub extern fn EmulateThreeButtonMouse_EmulateThreeButtonMouse() [*c]EmulateThreeButtonMouse;
pub extern fn EmulateThreeButtonMouse_destroy(self: [*c]EmulateThreeButtonMouse) void;
pub extern fn LinkDetachWithModifierClick_LinkDetachWithModifierClick() [*c]LinkDetachWithModifierClick;
pub extern fn LinkDetachWithModifierClick_destroy(self: [*c]LinkDetachWithModifierClick) void;
pub extern fn MultipleSelectModifier_MultipleSelectModifier() [*c]MultipleSelectModifier;
pub extern fn MultipleSelectModifier_destroy(self: [*c]MultipleSelectModifier) void;
pub extern fn ImNodesIO_ImNodesIO() [*c]ImNodesIO;
pub extern fn ImNodesIO_destroy(self: [*c]ImNodesIO) void;
pub extern fn ImNodesStyle_ImNodesStyle() [*c]ImNodesStyle;
pub extern fn ImNodesStyle_destroy(self: [*c]ImNodesStyle) void;
pub extern fn imnodes_SetImGuiContext(ctx: ?*ImGuiContext) void;
pub extern fn imnodes_CreateContext() ?*ImNodesContext;
pub extern fn imnodes_DestroyContext(ctx: ?*ImNodesContext) void;
pub extern fn imnodes_GetCurrentContext() ?*ImNodesContext;
pub extern fn imnodes_SetCurrentContext(ctx: ?*ImNodesContext) void;
pub extern fn imnodes_EditorContextCreate() ?*ImNodesEditorContext;
pub extern fn imnodes_EditorContextFree(noname1: ?*ImNodesEditorContext) void;
pub extern fn imnodes_EditorContextSet(noname1: ?*ImNodesEditorContext) void;
pub extern fn imnodes_EditorContextGetPanning() ImVec2_c;
pub extern fn imnodes_EditorContextResetPanning(pos: ImVec2_c) void;
pub extern fn imnodes_EditorContextMoveToNode(node_id: c_int) void;
pub extern fn imnodes_GetIO() [*c]ImNodesIO;
pub extern fn imnodes_GetStyle() [*c]ImNodesStyle;
pub extern fn imnodes_StyleColorsDark(dest: [*c]ImNodesStyle) void;
pub extern fn imnodes_StyleColorsClassic(dest: [*c]ImNodesStyle) void;
pub extern fn imnodes_StyleColorsLight(dest: [*c]ImNodesStyle) void;
pub extern fn imnodes_BeginNodeEditor() void;
pub extern fn imnodes_EndNodeEditor() void;
pub extern fn imnodes_MiniMap(minimap_size_fraction: f32, location: ImNodesMiniMapLocation, node_hovering_callback: ImNodesMiniMapNodeHoveringCallback, node_hovering_callback_data: ImNodesMiniMapNodeHoveringCallbackUserData) void;
pub extern fn imnodes_PushColorStyle(item: ImNodesCol, color: c_uint) void;
pub extern fn imnodes_PopColorStyle() void;
pub extern fn imnodes_PushStyleVar_Float(style_item: ImNodesStyleVar, value: f32) void;
pub extern fn imnodes_PushStyleVar_Vec2(style_item: ImNodesStyleVar, value: ImVec2_c) void;
pub extern fn imnodes_PopStyleVar(count: c_int) void;
pub extern fn imnodes_BeginNode(id: c_int) void;
pub extern fn imnodes_EndNode() void;
pub extern fn imnodes_GetNodeDimensions(id: c_int) ImVec2_c;
pub extern fn imnodes_BeginNodeTitleBar() void;
pub extern fn imnodes_EndNodeTitleBar() void;
pub extern fn imnodes_BeginInputAttribute(id: c_int, shape: ImNodesPinShape) void;
pub extern fn imnodes_EndInputAttribute() void;
pub extern fn imnodes_BeginOutputAttribute(id: c_int, shape: ImNodesPinShape) void;
pub extern fn imnodes_EndOutputAttribute() void;
pub extern fn imnodes_BeginStaticAttribute(id: c_int) void;
pub extern fn imnodes_EndStaticAttribute() void;
pub extern fn imnodes_PushAttributeFlag(flag: ImNodesAttributeFlags) void;
pub extern fn imnodes_PopAttributeFlag() void;
pub extern fn imnodes_Link(id: c_int, start_attribute_id: c_int, end_attribute_id: c_int) void;
pub extern fn imnodes_SetNodeDraggable(node_id: c_int, draggable: bool) void;
pub extern fn imnodes_SetNodeScreenSpacePos(node_id: c_int, screen_space_pos: ImVec2_c) void;
pub extern fn imnodes_SetNodeEditorSpacePos(node_id: c_int, editor_space_pos: ImVec2_c) void;
pub extern fn imnodes_SetNodeGridSpacePos(node_id: c_int, grid_pos: ImVec2_c) void;
pub extern fn imnodes_GetNodeScreenSpacePos(node_id: c_int) ImVec2_c;
pub extern fn imnodes_GetNodeEditorSpacePos(node_id: c_int) ImVec2_c;
pub extern fn imnodes_GetNodeGridSpacePos(node_id: c_int) ImVec2_c;
pub extern fn imnodes_SnapNodeToGrid(node_id: c_int) void;
pub extern fn imnodes_IsEditorHovered() bool;
pub extern fn imnodes_IsNodeHovered(node_id: [*c]c_int) bool;
pub extern fn imnodes_IsLinkHovered(link_id: [*c]c_int) bool;
pub extern fn imnodes_IsPinHovered(attribute_id: [*c]c_int) bool;
pub extern fn imnodes_NumSelectedNodes() c_int;
pub extern fn imnodes_NumSelectedLinks() c_int;
pub extern fn imnodes_GetSelectedNodes(node_ids: [*c]c_int) void;
pub extern fn imnodes_GetSelectedLinks(link_ids: [*c]c_int) void;
pub extern fn imnodes_ClearNodeSelection_Nil() void;
pub extern fn imnodes_ClearLinkSelection_Nil() void;
pub extern fn imnodes_SelectNode(node_id: c_int) void;
pub extern fn imnodes_ClearNodeSelection_Int(node_id: c_int) void;
pub extern fn imnodes_IsNodeSelected(node_id: c_int) bool;
pub extern fn imnodes_SelectLink(link_id: c_int) void;
pub extern fn imnodes_ClearLinkSelection_Int(link_id: c_int) void;
pub extern fn imnodes_IsLinkSelected(link_id: c_int) bool;
pub extern fn imnodes_IsAttributeActive() bool;
pub extern fn imnodes_IsAnyAttributeActive(attribute_id: [*c]c_int) bool;
pub extern fn imnodes_IsLinkStarted(started_at_attribute_id: [*c]c_int) bool;
pub extern fn imnodes_IsLinkDropped(started_at_attribute_id: [*c]c_int, including_detached_links: bool) bool;
pub extern fn imnodes_IsLinkCreated_BoolPtr(started_at_attribute_id: [*c]c_int, ended_at_attribute_id: [*c]c_int, created_from_snap: [*c]bool) bool;
pub extern fn imnodes_IsLinkCreated_IntPtr(started_at_node_id: [*c]c_int, started_at_attribute_id: [*c]c_int, ended_at_node_id: [*c]c_int, ended_at_attribute_id: [*c]c_int, created_from_snap: [*c]bool) bool;
pub extern fn imnodes_IsLinkDestroyed(link_id: [*c]c_int) bool;
pub extern fn imnodes_SaveCurrentEditorStateToIniString(data_size: [*c]usize) [*c]const u8;
pub extern fn imnodes_SaveEditorStateToIniString(editor: ?*const ImNodesEditorContext, data_size: [*c]usize) [*c]const u8;
pub extern fn imnodes_LoadCurrentEditorStateFromIniString(data: [*c]const u8, data_size: usize) void;
pub extern fn imnodes_LoadEditorStateFromIniString(editor: ?*ImNodesEditorContext, data: [*c]const u8, data_size: usize) void;
pub extern fn imnodes_SaveCurrentEditorStateToIniFile(file_name: [*c]const u8) void;
pub extern fn imnodes_SaveEditorStateToIniFile(editor: ?*const ImNodesEditorContext, file_name: [*c]const u8) void;
pub extern fn imnodes_LoadCurrentEditorStateFromIniFile(file_name: [*c]const u8) void;
pub extern fn imnodes_LoadEditorStateFromIniFile(editor: ?*ImNodesEditorContext, file_name: [*c]const u8) void;
pub extern fn getIOKeyCtrlPtr(...) [*c]bool;

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 7);
pub const __GNUC_MINOR__ = @as(c_int, 1);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 0);
pub const __ARO_EMULATE_NO__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_GCC__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const __OPTIMIZE__ = @as(c_int, 1);
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
pub const __declspec = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // <builtin>:35:9
pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`"); // <builtin>:36:9
pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`"); // <builtin>:37:9
pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`"); // <builtin>:38:9
pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`"); // <builtin>:39:9
pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`"); // <builtin>:40:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`"); // <builtin>:41:9
pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`"); // <builtin>:42:9
pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`"); // <builtin>:43:9
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:54:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:55:9
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
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
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WINT_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __WINT_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
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
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 10);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_WINT_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_longlong;
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // <builtin>:176:9
pub const __INTMAX_C = __helpers.LL_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // <builtin>:179:9
pub const __UINTMAX_C = __helpers.ULL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WINT_TYPE__ = c_ushort;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
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
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // <builtin>:205:9
pub const __INT64_C = __helpers.LL_SUFFIX;
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
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:230:9
pub const __UINT32_C = __helpers.U_SUFFIX;
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // <builtin>:239:9
pub const __UINT64_C = __helpers.ULL_SUFFIX;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "lld";
pub const INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_LEAST64_FMTo__ = "llo";
pub const UINT_LEAST64_FMTu__ = "llu";
pub const UINT_LEAST64_FMTx__ = "llx";
pub const UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "lld";
pub const INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_FAST64_FMTo__ = "llo";
pub const UINT_FAST64_FMTu__ = "llu";
pub const UINT_FAST64_FMTx__ = "llx";
pub const UINT_FAST64_FMTX__ = "llX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __pic__ = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const NDEBUG = @as(c_int, 1);
pub const __MSVCRT_VERSION__ = @as(c_int, 0xE00);
pub const _WIN32_WINNT = @as(c_int, 0x0a00);
pub const CIMGUI_DEFINE_ENUMS_AND_STRUCTS = "";
pub const CIMNODES_INCLUDED = "";
pub const CIMGUI_INCLUDED = "";
pub const _INC_STDIO = "";
pub const _STDIO_CONFIG_DEFINED = "";
pub const _INC_CORECRT = "";
pub const _INC__MINGW_H = "";
pub const _INC_CRTDEFS_MACRO = "";
pub const __MINGW64_PASTE2 = @compileError("unable to translate C expr: unexpected token '##'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:10:9
pub inline fn __MINGW64_PASTE(x: anytype, y: anytype) @TypeOf(__MINGW64_PASTE2(x, y)) {
    _ = &x;
    _ = &y;
    return __MINGW64_PASTE2(x, y);
}
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token ''"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:13:9
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
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:129:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:130:11
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    _ = &sym;
    return sym;
}
pub const __MINGW_LSYMBOL = @compileError("unable to translate macro: undefined identifier `_`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:132:11
pub const __MINGW_ASM_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:140:9
pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:141:9
pub const __MINGW_EXTENSION = @compileError("unable to translate C expr: unexpected token '__extension__'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:173:13
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
pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:213:11
pub const __MSABI_LONG = __helpers.L_SUFFIX;
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
pub inline fn __MINGW_ATTRIB_DEPRECATED_STR(X: anytype) void {
    _ = &X;
    return;
}
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:293:9
pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:296:9
pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:299:9
pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:302:9
pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:311:11
pub const __mingw_attribute_artificial = @compileError("unable to translate macro: undefined identifier `__artificial__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:318:11
pub const __MINGW_SELECTANY = @compileError("unable to translate macro: undefined identifier `__selectany__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:324:9
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _INC_MINGW_SECAPI = "";
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token '__cdecl'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_secapi.h:69:9
pub const __LONG32 = c_long;
pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__dllimport__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:44:12
pub const __USE_CRTIMP = @as(c_int, 1);
pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__dllimport__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:52:15
pub const __DECLSPEC_SUPPORTED = "";
pub const USE___UUIDOF = @as(c_int, 0);
pub const _inline = @compileError("unable to translate C expr: unexpected token '__inline'"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:74:9
pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:83:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:90:9
pub const __MINGW_CXX11_CONSTEXPR = "";
pub const __MINGW_CXX14_CONSTEXPR = "";
pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:118:11
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:133:10
pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:149:9
pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:150:9
pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:160:9
pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:161:9
pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:174:9
pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:180:9
pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__used__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:186:9
pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:187:9
pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:189:9
pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:204:9
pub const __MINGW_ATTRIB_NO_OPTIMIZE = @compileError("unable to translate macro: undefined identifier `__optimize__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:212:9
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:218:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:225:9
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
pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:290:9
pub const __nothrow = "";
pub const _INC_VADEFS = "";
pub const MINGW_SDK_INIT = "";
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_DDK_H = "";
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST_DEFINED = "";
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    _ = &v;
    return &v;
}
pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\zig\lib\libc\include\any-windows-any\vadefs.h:48:9
pub const _crt_va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\zig\lib\libc\include\any-windows-any\vadefs.h:49:9
pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\zig\lib\libc\include\any-windows-any\vadefs.h:50:9
pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\zig\lib\libc\include\any-windows-any\vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token ''"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:309:9
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    _ = &_Value;
    return __CRT_STRINGIZE(_Value);
}
pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:314:9
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
pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:373:9
pub inline fn _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement: anytype) void {
    _ = &_Replacement;
    return;
}
pub inline fn _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement: anytype) void {
    _ = &_Replacement;
    return;
}
pub const _CRT_MANAGED_HEAP_DEPRECATE = "";
pub inline fn _CRT_OBSOLETE(_NewItem: anytype) void {
    _ = &_NewItem;
    return;
}
pub const _CONST_RETURN = "";
pub const UNALIGNED = "";
pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__aligned__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:415:9
pub const __CRTDECL = @compileError("unable to translate C expr: unexpected token '__cdecl'"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:422:9
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = __helpers.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    _ = &x;
    return __helpers.cast(anyopaque, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 0);
pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:479:9
pub const __ANONYMOUS_DEFINED = "";
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub inline fn _UNION_NAME(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn _STRUCT_NAME(x: anytype) void {
    _ = &x;
    return;
}
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
pub inline fn __CRT_UUID_DECL(@"type": anytype, l: anytype, w1: anytype, w2: anytype, b1: anytype, b2: anytype, b3: anytype, b4: anytype, b5: anytype, b6: anytype, b7: anytype, b8: anytype) void {
    _ = &@"type";
    _ = &l;
    _ = &w1;
    _ = &w2;
    _ = &b1;
    _ = &b2;
    _ = &b3;
    _ = &b4;
    _ = &b5;
    _ = &b6;
    _ = &b7;
    _ = &b8;
    return;
}
pub const __MINGW_DEBUGBREAK_IMPL = @compileError("unable to translate macro: undefined identifier `__debugbreak`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:599:9
pub const __MINGW_FASTFAIL_IMPL = @compileError("unable to translate macro: undefined identifier `__fastfail`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:620:9
pub const __MINGW_PREFETCH_IMPL = @compileError("unable to translate macro: undefined identifier `__prefetch`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:644:9
pub const _CRT_PACKING = @as(c_int, 8);
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
pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:143:9
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype, __type3: anytype, __arg3: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    _ = &__type3;
    _ = &__arg3;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype, __type3: anytype, __arg3: anytype, __type4: anytype, __arg4: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    _ = &__type3;
    _ = &__arg3;
    _ = &__type4;
    _ = &__arg4;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(__ret: anytype, __func: anytype, __type0: anytype, __arg0: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__type0;
    _ = &__arg0;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(__ret: anytype, __func: anytype, __type0: anytype, __arg0: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__type0;
    _ = &__arg0;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(__ret: anytype, __func: anytype, __type0: anytype, __arg0: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype, __type3: anytype, __arg3: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__type0;
    _ = &__arg0;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    _ = &__type3;
    _ = &__arg3;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0(__ret: anytype, __func: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype, __dsttype: anytype, __dst: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    _ = &__dsttype;
    _ = &__dst;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(__ret: anytype, __func: anytype, __vfunc: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__vfunc;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(__ret: anytype, __func: anytype, __vfunc: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__vfunc;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH(__ret: anytype, __func: anytype, __dsttype: anytype, __src: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__src;
    return;
}
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:279:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:281:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:283:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:285:9
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype, __arg1_type: anytype, __arg1: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    _ = &__arg1_type;
    _ = &__arg1;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype, __arg1_type: anytype, __arg1: anytype, __arg2_type: anytype, __arg2: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    _ = &__arg1_type;
    _ = &__arg1;
    _ = &__arg2_type;
    _ = &__arg2;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype, __arg1_type: anytype, __arg1: anytype, __arg2_type: anytype, __arg2: anytype, __arg3_type: anytype, __arg3: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    _ = &__arg1_type;
    _ = &__arg1;
    _ = &__arg2_type;
    _ = &__arg2;
    _ = &__arg3_type;
    _ = &__arg3;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype, __arg1_type: anytype, __arg1: anytype, __arg2_type: anytype, __arg2: anytype, __arg3_type: anytype, __arg3: anytype, __arg4_type: anytype, __arg4: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    _ = &__arg1_type;
    _ = &__arg1;
    _ = &__arg2_type;
    _ = &__arg2;
    _ = &__arg3_type;
    _ = &__arg3;
    _ = &__arg4_type;
    _ = &__arg4;
    return;
}
pub const _TAGLC_ID_DEFINED = "";
pub const _THREADLOCALEINFO = "";
pub inline fn __crt_typefix(ctype: anytype) void {
    _ = &ctype;
    return;
}
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
pub const TMP_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const _OFF_T_DEFINED = "";
pub const _OFF_T_ = "";
pub const _OFF64_T_DEFINED = "";
pub const _FILE_OFFSET_BITS_SET_OFFT = "";
pub const _iob = __iob_func();
pub const _FPOS_T_DEFINED = "";
pub inline fn _FPOSOFF(fp: anytype) c_long {
    _ = &fp;
    return __helpers.cast(c_long, fp);
}
pub const _STDSTREAM_DEFINED = "";
pub const stdin = __acrt_iob_func(@as(c_int, 0));
pub const stdout = __acrt_iob_func(@as(c_int, 1));
pub const stderr = __acrt_iob_func(@as(c_int, 2));
pub const _IOFBF = @as(c_int, 0x0000);
pub const _IOLBF = @as(c_int, 0x0040);
pub const _IONBF = @as(c_int, 0x0004);
pub const __MINGW_PRINTF_FORMAT = @compileError("unable to translate macro: undefined identifier `__gnu_printf__`"); // C:\zig\lib\libc\include\any-windows-any\stdio.h:280:9
pub const __MINGW_SCANF_FORMAT = @compileError("unable to translate macro: undefined identifier `__gnu_scanf__`"); // C:\zig\lib\libc\include\any-windows-any\stdio.h:281:9
pub const _FILE_OFFSET_BITS_SET_FSEEKO = "";
pub const _FILE_OFFSET_BITS_SET_FTELLO = "";
pub const _CRT_PERROR_DEFINED = "";
pub const popen = _popen;
pub const pclose = _pclose;
pub const _CRT_DIRECTORY_DEFINED = "";
pub const _WSTDIO_DEFINED = "";
pub const WEOF = __helpers.cast(wint_t, __helpers.promoteIntLiteral(c_int, 0xFFFF, .hex));
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
pub const _SECIMP = @compileError("unable to translate macro: undefined identifier `dllimport`"); // C:\zig\lib\libc\include\any-windows-any\sec_api/stdio_s.h:16:9
pub const _STDIO_S_DEFINED = "";
pub const L_tmpnam_s = L_tmpnam;
pub const TMP_MAX_S = TMP_MAX;
pub const _WSTDIO_S_DEFINED = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = "";
pub const _INC_CRTDEFS = "";
pub const __need_wint_t = "";
pub const __need_wchar_t = "";
pub const __STDC_VERSION_STDDEF_H__ = @as(c_long, 202311);
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // C:\zig\lib\compiler\aro\include\stddef.h:18:9
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -__helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 0xffffffff, .hex);
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
pub const INT64_C = __helpers.LL_SUFFIX;
pub inline fn UINT8_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub inline fn UINT16_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.ULL_SUFFIX;
pub const INTMAX_C = __helpers.LL_SUFFIX;
pub const UINTMAX_C = __helpers.ULL_SUFFIX;
pub const API = @compileError("unable to translate macro: undefined identifier `dllexport`"); // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:14:17
pub const __STDC_VERSION_STDARG_H__ = @as(c_int, 0);
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\zig\lib\compiler\aro\include\stdarg.h:12:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\zig\lib\compiler\aro\include\stdarg.h:14:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\zig\lib\compiler\aro\include\stdarg.h:15:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\zig\lib\compiler\aro\include\stdarg.h:18:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\zig\lib\compiler\aro\include\stdarg.h:22:9
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:29:13
pub const CIMGUI_API = EXTERN ++ API;
pub const CONST = @compileError("unable to translate C expr: unexpected token 'const'"); // C:\imguinz\src\libzig\imnodes\..\..\libc\cimgui\cimgui.h:33:9
pub const IM_UNICODE_CODEPOINT_MAX = __helpers.promoteIntLiteral(c_int, 0xFFFF, .hex);
pub const IMGUI_HAS_DOCK = @as(c_int, 1);
pub const ImTextureID_Invalid = __helpers.cast(ImTextureID, @as(c_int, 0));
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const __lc_time_data = struct___lc_time_data;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const tagLC_ID = struct_tagLC_ID;
pub const _iobuf = struct__iobuf;
