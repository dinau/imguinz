const std = @import("std");
const rl = @import("raylib");

var camera: rl.Camera3D = undefined;
var zoom_level: f32 = 1.0;
const BASE_FOVY: f32 = 45.0;

fn setZoom(level: f32) void {
    zoom_level = level;
    camera.fovy = BASE_FOVY / zoom_level;
    camera.fovy = std.math.clamp(camera.fovy, 1.0, 120.0);
}

const background_color = rl.Color{ .r = 0, .g = 0, .b = 30, .a = 1 };

pub fn main() anyerror!void {
    const screenWidth = 800;
    const screenHeight = 600;

    rl.setConfigFlags(.{.vsync_hint = true, .window_resizable = true, .window_hidden = true});              //  Enable VSYNC
    rl.initWindow(screenWidth, screenHeight, "Raylib Zig CJK Font");
    defer rl.closeWindow();

    const title_bar_icon = try rl.loadImage("./resources/z.png");
    rl.setWindowIcon(title_bar_icon);
    rl.unloadImage(title_bar_icon);

    rl.setTargetFPS(60);
    const charset =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ++
        "abcdefghijklmnopqrstuvwxyz" ++
        "0123456789" ++
        "Wheel:ズーム 1-5:倍率 SPACE:投影" ++
        "/." ++
        "なし";
    const codepoints = try rl.loadCodepoints(charset);
    defer rl.unloadCodepoints(codepoints);

    const font_path = "resources/fonts/NOTONOTO-Regular.ttf";
    const font = try rl.loadFontEx(font_path, 48, codepoints); // Load 48px font
    if (font.texture.id == 0) {
        rl.traceLog(.info, "Fail !: Read font", .{});
    }

    // Initialize camera
    camera = rl.Camera3D{
        .position = rl.Vector3{ .x = 18.0, .y = 18.0, .z = 18.0 },
        .target = rl.Vector3{ .x = 0.0, .y = 0.0, .z = 0.0 },
        .up = rl.Vector3{ .x = 0.0, .y = 1.0, .z = 0.0 },
        .fovy = 45.0,
        .projection = .perspective,
    };

    // Load texture (optional)
    var texture: ?rl.Texture2D = null;
    const img_file = "./resources/z.png";
    if (rl.fileExists(img_file)) {
        texture = try rl.loadTexture(img_file);
    }
    defer {
        if (texture) |tex| rl.unloadTexture(tex);
    }

    var delayShowWindow: i32 = 1;

    while (!rl.windowShouldClose()) {
        // Zoom operation (mouse wheel)
        const wheel = rl.getMouseWheelMove();
        if (wheel != 0) {
            zoom_level *= std.math.pow(f32, 1.1, wheel * 0.2);
            setZoom(zoom_level);
        }

        // Number keys (zoom presets)
        if (rl.isKeyPressed(.one)) setZoom(1.0);
        if (rl.isKeyPressed(.two)) setZoom(2.0);
        if (rl.isKeyPressed(.three)) setZoom(3.0);
        if (rl.isKeyPressed(.four)) setZoom(5.0);
        if (rl.isKeyPressed(.five)) setZoom(10.0);

        // Toggle projection mode
        if (rl.isKeyPressed(.space)) {
            camera.projection = if (camera.projection == .perspective)
                .orthographic
            else
                .perspective;
        }

        rl.updateCamera(&camera, .orbital);

        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(background_color);
        { // Mode3D
            rl.beginMode3D(camera);
            defer rl.endMode3D();

            rl.drawGrid(20, 1.0);

            // Axes (XYZ)
            rl.drawLine3D(rl.Vector3{ .x = -10, .y = 0, .z = 0 }, rl.Vector3{ .x = 10, .y = 0, .z = 0 }, .red);
            rl.drawLine3D(rl.Vector3{ .x = 0, .y = -10, .z = 0 }, rl.Vector3{ .x = 0, .y = 10, .z = 0 }, .green);
            rl.drawLine3D(rl.Vector3{ .x = 0, .y = 0, .z = -10 }, rl.Vector3{ .x = 0, .y = 0, .z = 10 }, .blue);

            // human figure (1.7m tall)
            rl.drawCube(rl.Vector3{ .x = 3, .y = 0.85, .z = 0 }, 0.4, 1.7, 0.4, .blue);
            rl.drawCubeWires(rl.Vector3{ .x = 3, .y = 0.85, .z = 0 }, 0.4, 1.7, 0.4, .white);

            // Textured billboard (DrawBillboardRec ← correct approach)
            if (texture) |tex| {
                const scale: f32 = 0.05;
                const w = @as(f32, @floatFromInt(tex.width)) * scale;
                const h = @as(f32, @floatFromInt(tex.height)) * scale;
                const pos = rl.Vector3{ .x = -3.0, .y = h / 2.0, .z = 0.0 };

                const source = rl.Rectangle{
                    .x = 0,
                    .y = 0,
                    .width = @as(f32, @floatFromInt(tex.width)),
                    .height = @as(f32, @floatFromInt(tex.height)),
                };

                // Billboard always facing the camera
                rl.drawBillboardRec(camera, tex, source, pos, rl.Vector2{ .x = w, .y = h }, .white);
            }
        }

        // UI text / explanation
        rl.drawTextEx(font, rl.textFormat("Zoom: %.2f", .{zoom_level}), rl.Vector2{ .x = 10, .y = 40 }, 20, 2, .blue);
        rl.drawTextEx(font, "Wheel:ズーム 1-5:倍率 SPACE:投影", rl.Vector2{ .x = 10, .y = 70 }, 20, 2, .white);

        if (texture) |tex| {
            rl.drawText(rl.textFormat("Texture OK: %dx%d", .{tex.width, tex.height}), 10, 100, 20, .dark_green);
        } else {
            rl.drawTextEx(font, "images/mario.png なし", rl.Vector2{ .x = 10, .y = 100 }, 20, 2, .orange);
        }

        rl.drawFPS(10, screenHeight - 30);

        if (delayShowWindow == 0) {
            rl.clearWindowState(rl.ConfigFlags { .window_hidden = true });
        }
        if (delayShowWindow >= 0) {
            delayShowWindow -= 1;
        }
    }
}
