// Manual extern declarations for emscripten_set_main_loop / emscripten_cancel_main_loop
// (Bypassing because translate-c fails to parse the C23 attribute syntax in promise.h via emscripten.h)

pub extern "c" fn emscripten_set_main_loop(
    func: *const fn () callconv(.c) void,
    fps: c_int,
    simulate_infinite_loop: c_int,
) void;

pub extern "c" fn emscripten_cancel_main_loop() void;

pub extern "c" fn emscripten_set_resize_callback(
    target: [*:0]const u8,
    user_data: ?*anyopaque,
    use_capture: c_int,
    callback: *const fn (event_type: c_int, event: ?*const anyopaque, user_data: ?*anyopaque) callconv(.c) c_int,
) c_int;

pub extern "c" fn emscripten_get_element_css_size(
    target: [*:0]const u8,
    width: *f64,
    height: *f64,
) c_int;
