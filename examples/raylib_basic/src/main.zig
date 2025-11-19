// Refer to:
//      https://github.com/raysan5/raylib/blob/master/examples/models/models_heightmap_rendering.c
//
//      This program is under ./LICENSE.raylib.txt.
//

const std = @import("std");
const builtin = @import("builtin");
const rl = @import("raylib");

const MainWinWidth: i32 = 800;
const MainWinHeight: i32 = 600;

fn testDrawRectangle() void {
    const rec = rl.Rectangle{.x = 50, .y = 50, .width = 400, .height = 150};
    rl.DrawRectangleRec(rec, rl.Color{.r = 64, .g = 166, .b = 217, .a = 55});
}

fn testDrawText() void {
    const raylib_version = "Raylib v" ++ rl.RAYLIB_VERSION;
    const zig_version = "Zig-" ++ builtin.zig_version_string;
    rl.DrawText(zig_version,    70, 70,  20, rl.DARKBLUE);
    rl.DrawText(raylib_version, 70, 100, 20, rl.DARKBLUE);
    rl.DrawText("2025/11",                               70, 130, 20, rl.DARKBLUE);

    const font = rl.GetFontDefault();
    const position = rl.Vector2{.x = 70, .y = 160};
    rl.DrawTextEx(font, "Hello with custom font", position, 24, 2, rl.GRAY);
}

//--------
// main()
//--------
pub fn main() !void {
    rl.SetConfigFlags(rl.FLAG_VSYNC_HINT | rl.FLAG_WINDOW_RESIZABLE);                //  Enable VSYNC
    rl.InitWindow(MainWinWidth, MainWinHeight, "raylib [core] example - basic window");
    defer rl.CloseWindow();                                                          // Close window and OpenGL context

    // Define our custom camera to look into our 3d world
    var camera = rl.Camera3D{
        .position = rl.Vector3{ .x = 18, .y = 18, .z = 18 },                         // Camera position
        .target = rl.Vector3{ .x = 0, .y = 0, .z = 0 },                              // Camera looking at point
        .up = rl.Vector3{ .x = 0, .y = 1, .z = 0 },                                  // Camera up vector (rotation towards target)
        .fovy = 48,                                                                  // Camera field-of-view Y
        .projection = rl.CAMERA_PERSPECTIVE,                                         // Camera projection type
    };
    const image = rl.LoadImage("./resources/istockphoto_com-1209065219-128.png");    // https://www.istockphoto.com  search "grayscale height map"
    defer rl.UnloadImage(image);                                                     // Unload heightmap image from RAM, already uploaded to VRAM

    const texture = rl.LoadTextureFromImage(image);                                  // Convert image to texture (VRAM)
    defer rl.UnloadTexture(texture);                                                 // Unload texture

    const mesh = rl.GenMeshHeightmap(image, rl.Vector3{ .x = 16, .y = 8, .z = 16 }); // Generate heightmap mesh (RAM and VRAM)
    const model = rl.LoadModelFromMesh(mesh);                                        // Load model from generated mesh
    defer rl.UnloadModel(model);                                                     // Unload model

    model.materials.*.maps.*.texture = texture;                                      // Set map diffuse texture
    const mapPosition = rl.Vector3{ .x = -8, .y = 0, .z = -8 };                      // Define model position

    rl.SetTargetFPS(60);                                                             // Set our game to run at 60 frames-per-second

    const mapColor = [_]f32{ (255.0 - 73.0) / 255.0, (255.0 - 113.0) / 255.0, (255.0 - 166.0) / 255.0 };
    var buf: [100]u8 = undefined;

    while (!rl.WindowShouldClose()) {
        // Update
        rl.UpdateCamera(&camera, rl.CAMERA_ORBITAL);                                 // Set an orbital camera mode

        rl.BeginDrawing();
        defer rl.EndDrawing();

        { // Draw
            testDrawRectangle();
            testDrawText();
            //------------------------
            //-- Raylib draw height map
            //------------------------
            rl.ClearBackground(rl.BLACK);
            {
                rl.BeginMode3D(camera);
                const color = rl.Color{ .r = mapColor[0] * 255, .g = mapColor[1] * 255, .b = mapColor[2] * 255, .a = 255 };
                rl.DrawModel(model, mapPosition, 1, color);
                rl.DrawGrid(20, 1);
                rl.EndMode3D();
            }
            rl.DrawTexture(texture, MainWinWidth - texture.width - 20, 20, rl.WHITE);
            rl.DrawRectangleLines(MainWinWidth - texture.width - 20, 20, texture.width, texture.height, rl.WHITE);

            const str = try std.fmt.bufPrint(&buf, "{} FPS\n", .{rl.GetFPS()});
            rl.DrawText(str.ptr, 10, 10, 20, rl.GRAY);

            rl.DrawText("Raylib with Zig", 50, 250, 20, rl.RAYWHITE);
        }
    } // while end
}
