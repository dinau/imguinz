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

    rl.SetConfigFlags(rl.FLAG_VSYNC_HINT | rl.FLAG_WINDOW_RESIZABLE); // Enable VSYNC and allow window resizing
    rl.InitWindow(screenWidth, screenHeight, "Raylib Zig CJK Font");
    defer rl.CloseWindow();

    rl.SetTargetFPS(60);
    const charset =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ++
        "abcdefghijklmnopqrstuvwxyz" ++
        "0123456789" ++
        "Wheel:ズーム 1-5:倍率 SPACE:投影" ++
        "/." ++
        "なし";
    var count: c_int = 0;
    const codepoints = rl.LoadCodepoints(charset, &count);
    defer rl.UnloadCodepoints(codepoints);

    const font_path = "resources/fonts/NOTONOTO-Regular.ttf";
    const font = rl.LoadFontEx(font_path, 48, codepoints, count); // Load 48px font
    if (font.texture.id == 0) {
        rl.TraceLog(rl.LOG_ERROR, "Fail !: Read font");
    }

    // Initialize camera
    camera = rl.Camera3D{
        .position = rl.Vector3{ .x = 18.0, .y = 18.0, .z = 18.0 },
        .target = rl.Vector3{ .x = 0.0, .y = 0.0, .z = 0.0 },
        .up = rl.Vector3{ .x = 0.0, .y = 1.0, .z = 0.0 },
        .fovy = 45.0,
        .projection = rl.CAMERA_PERSPECTIVE,
    };

    // Load texture (optional)
    var texture: ?rl.Texture2D = null;
    const img_file = "./resources/z.png";
    if (rl.FileExists(img_file)) {
        texture = rl.LoadTexture(img_file);
    }
    defer {
        if (texture) |tex| rl.UnloadTexture(tex);
    }

    while (!rl.WindowShouldClose()) {
        // Zoom operation (mouse wheel)
        const wheel = rl.GetMouseWheelMove();
        if (wheel != 0) {
            zoom_level *= std.math.pow(f32, 1.1, wheel * 0.2);
            setZoom(zoom_level);
        }

        // Number keys (zoom presets)
        if (rl.IsKeyPressed(rl.KEY_ONE)) setZoom(1.0);
        if (rl.IsKeyPressed(rl.KEY_TWO)) setZoom(2.0);
        if (rl.IsKeyPressed(rl.KEY_THREE)) setZoom(3.0);
        if (rl.IsKeyPressed(rl.KEY_FOUR)) setZoom(5.0);
        if (rl.IsKeyPressed(rl.KEY_FIVE)) setZoom(10.0);

        // Toggle projection mode
        if (rl.IsKeyPressed(rl.KEY_SPACE)) {
            camera.projection = if (camera.projection == rl.CAMERA_PERSPECTIVE)
                rl.CAMERA_ORTHOGRAPHIC
            else
                rl.CAMERA_PERSPECTIVE;
        }

        rl.UpdateCamera(&camera, rl.CAMERA_ORBITAL);

        rl.BeginDrawing();
        defer rl.EndDrawing();

        rl.ClearBackground(background_color);
        { // Mode3D
            rl.BeginMode3D(camera);
            defer rl.EndMode3D();

            rl.DrawGrid(20, 1.0);

            // Axes (XYZ)
            rl.DrawLine3D(rl.Vector3{ .x = -10, .y = 0, .z = 0 }, rl.Vector3{ .x = 10, .y = 0, .z = 0 }, rl.RED);
            rl.DrawLine3D(rl.Vector3{ .x = 0, .y = -10, .z = 0 }, rl.Vector3{ .x = 0, .y = 10, .z = 0 }, rl.GREEN);
            rl.DrawLine3D(rl.Vector3{ .x = 0, .y = 0, .z = -10 }, rl.Vector3{ .x = 0, .y = 0, .z = 10 }, rl.BLUE);

            // Human figure (1.7m tall)
            rl.DrawCube(rl.Vector3{ .x = 3, .y = 0.85, .z = 0 }, 0.4, 1.7, 0.4, rl.BLUE);
            rl.DrawCubeWires(rl.Vector3{ .x = 3, .y = 0.85, .z = 0 }, 0.4, 1.7, 0.4, rl.WHITE);

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
                rl.DrawBillboardRec(camera, tex, source, pos, rl.Vector2{ .x = w, .y = h }, rl.WHITE);
            }
        }

        // UI text / explanation
        rl.DrawTextEx(font, rl.TextFormat("Zoom: %.2f", zoom_level), rl.Vector2{ .x = 10, .y = 40 }, 20, 2, rl.BLUE);
        rl.DrawTextEx(font, "Wheel:ズーム 1-5:倍率 SPACE:投影", rl.Vector2{ .x = 10, .y = 70 }, 20, 2, rl.WHITE);

        if (texture) |tex| {
            rl.DrawText(rl.TextFormat("Texture OK: %dx%d", tex.width, tex.height), 10, 100, 20, rl.DARKGREEN);
        } else {
            rl.DrawTextEx(font, "images/mario.png なし", rl.Vector2{ .x = 10, .y = 100 }, 20, 2, rl.ORANGE);
        }

        rl.DrawFPS(10, screenHeight - 30);
    }
}
