// emscripten_set_main_loop / emscripten_cancel_main_loop の手動extern宣言
// (translate-cがemscripten.h経由でpromise.hのC23属性構文をパースできないため回避)
//
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
