// Refer to:
//      https://github.com/raysan5/raylib/blob/master/examples/models/models_heightmap_rendering.c
//
//      This program is under ./LICENSE.raylib.txt.
//
const std = @import("std");
const app  = @import("appimgui");
const ig  = app.ig;
const ifa = app.ifa;
const stf = app.stf;
const rl  = @import("raylib");
const rlig    = @import("rlimgui");
const builtin = @import("builtin");

const MainWinWidth: i32 = 900;
const MainWinHeight: i32 = 700;

fn testDrawRectangle() void {
    const rec = rl.Rectangle{.x = 50, .y = 50, .width = 400, .height = 150};
    rl.drawRectangleRec(rec, rl.Color{.r = 64, .g = 166, .b = 217, .a = 55});
}

fn testDrawText() !void {
    const raylib_version = "Raylib v" ++ rl.RAYLIB_VERSION;
    const zig_version = "Zig-" ++ builtin.zig_version_string;
    rl.drawText(zig_version,   70, 70,  20, .dark_blue);
    rl.drawText(raylib_version, 70, 100, 20, .dark_blue);
    rl.drawText("2025/11",                               70, 130, 20, .dark_blue);

    const font = try rl.getFontDefault();
    const position = rl.Vector2{.x = 70, .y = 160};
    rl.drawTextEx(font, "Hello with custom font", position, 24, 2, .gray);
}
//-----------
// gui_main()
//-----------
pub fn gui_main() !void {
    rl.setConfigFlags(.{.vsync_hint = true, .window_resizable = true, .window_hidden = true});              //  Enable VSYNC
    rl.initWindow(MainWinWidth, MainWinHeight, "Zig: Dear ImGui + Raylib + rlImGui");
    defer rl.closeWindow();

    const title_bar_icon = try rl.loadImage("./resources/z.png");
    rl.setWindowIcon(title_bar_icon);
    rl.unloadImage(title_bar_icon);

    // Define our custom camera to look into our 3d world
    var camera = rl.Camera3D{
        .position = rl.Vector3{ .x = 18, .y = 18, .z = 18 },                         // Camera position
        .target = rl.Vector3{ .x = 0, .y = 0, .z = 0 },                              // Camera looking at point
        .up = rl.Vector3{ .x = 0, .y = 1, .z = 0 },                                  // Camera up vector (rotation towards target)
        .fovy = 60,                                                                  // Camera field-of-view Y
        .projection = .perspective,                                         // Camera projection type
    };
    const image = try rl.loadImage("./resources/istockphoto_com-1209065219-128.png");    // https://www.istockphoto.com  search "grayscale height map"
    defer rl.unloadImage(image);                                                     // Unload heightmap image from RAM, already uploaded to VRAM

    const texture = try rl.loadTextureFromImage(image);                                  // Convert image to texture (VRAM)
    defer rl.unloadTexture(texture);                                                 // Unload texture

    const mesh = rl.genMeshHeightmap(image, rl.Vector3{ .x = 16, .y = 8, .z = 16 }); // Generate heightmap mesh (RAM and VRAM)
    const model = try rl.loadModelFromMesh(mesh);                                        // Load model from generated mesh
    defer rl.unloadModel(model);                                                     // Unload model

    model.materials[0].maps[@intFromEnum(rl.MATERIAL_MAP_DIFFUSE)].texture = texture;
    const mapPosition = rl.Vector3{ .x = -8, .y = 0, .z = -8 };                      // Define model position

    rl.setTargetFPS(60);                                                             // Set our game to run at 60 frames-per-second
    rlig.rlImGuiSetup(true);
    const font = stf.setupFonts();                                                                // Setup CJK fonts and Icon fonts

    var mapColor = [_]f32{ (255.0 - 73.0) / 255.0, (255.0 - 113.0) / 255.0, (255.0 - 166.0) / 255.0 };
    const pio = ig.igGetIO_Nil();

    var delayShowWindow: i32 = 1;

    //---------------
    // main loop GUI
    //---------------
    while (!rl.windowShouldClose()) {
        // Update
        rl.updateCamera(&camera, .orbital);                                 // Set an orbital camera mode
                                                                                     //
        rl.beginDrawing();
        defer rl.endDrawing();
        rlig.rlImGuiBegin();
        defer rlig.rlImGuiEnd();

        //-------------
        // ImGui block
        //-------------
        pio.*.FontDefault = @ptrCast(font);
        {
            ig.igPushFont(null, 19.0);
            defer ig.igPopFont();

            ig.igShowDemoWindow(null);
            _ = ig.igBegin("Test Window " , null, 0);
            ig.igText("%s", ifa.ICON_FA_SUN ++ " Sun");
            ig.igText("%s", ifa.ICON_FA_CLOUD_RAIN ++ " Rain" );
            ig.igText("Change Color");
            _ = ig.igColorEdit3("##Change color", &mapColor, 0);
            ig.igEnd();
        }

        //--------------------
        //-- Raylib draw texts
        //--------------------
        testDrawRectangle();
        try testDrawText();

        //--------------------------
        //-- Raylib draw height map
        //--------------------------
        {
            rl.clearBackground(.black);
            {
                rl.beginMode3D(camera);
                const color = rl.Color{ .r = @intFromFloat(mapColor[0] * 255), .g = @intFromFloat(mapColor[1] * 255), .b = @intFromFloat(mapColor[2] * 255), .a = 255 };
                rl.drawModel(model, mapPosition, 1, color);
                rl.drawGrid(20, 1);
                rl.endMode3D();
            }
            try testDrawText();
            rl.drawTexture(texture, MainWinWidth - texture.width - 20, 20, .white);
            rl.drawRectangleLines(MainWinWidth - texture.width - 20, 20, texture.width, texture.height, .white);

            const str = rl.textFormat("%i FPS\n", .{rl.getFPS()});
            rl.drawText(str, 10, 10, 20, .gray);

            rl.drawText("ImGui + Raylib + rlImGui", 50, 250, 20, .ray_white);
        }

        if (delayShowWindow == 0) {
            rl.clearWindowState(rl.ConfigFlags { .window_hidden = true });
        }
        if (delayShowWindow >= 0) {
            delayShowWindow -= 1;
        }
    } // end while loop
}

//--------
// main()
//--------

pub fn main() !void {
    try gui_main();
}
