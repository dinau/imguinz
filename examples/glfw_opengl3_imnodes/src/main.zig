const std = @import("std");
const ig = @import("cimgui");
const ifa = @import("fonticon");
const stf = @import("setupfont");
const app = @import("appimgui");

const imnodes = @import("imnodes");

const MainWinWidth: i32 = 1200;
const MainWinHeight: i32 = 800;

//--- Records
const Node = struct { id: c_int, value: f32 };
const Link = struct { id: c_int, start_attr: c_int, end_attr: c_int };
const recObj = struct { nodes: std.ArrayList(Node), links: std.ArrayList(Link), current_id: c_int };

//-----------
// gui_main()
//-----------
pub fn gui_main(window: *app.Window) !void {
    stf.setupFonts(); // Setup CJK fonts and Icon fonts

    //---------------------
    // ImNode init context
    //---------------------
    const imnodes_context = imnodes.imnodes_CreateContext();
    defer imnodes.imnodes_DestroyContext(imnodes_context);

    //const pio = ig.igGetIO_Nil();
    //
    var showImNodesWindow = true;

    // Alloator
    const allocator = std.heap.page_allocator;

    //-- ImNode: Initialize NodeEditor
    var obj: recObj = undefined;
    obj.nodes = std.ArrayList(Node).init(allocator);
    obj.links = std.ArrayList(Link).init(allocator);
    defer obj.nodes.deinit();
    defer obj.links.deinit();

    imnodes.imnodes_GetIO().*.LinkDetachWithModifierClick.Modifier = imnodes.getIOKeyCtrlPtr();
    imnodes.imnodes_PushAttributeFlag(imnodes.ImNodesAttributeFlags_EnableLinkDetachWithDragClick);
    try loadObj(&obj);

    //-- ImNode: Shutdown NodeEditor
    defer {
        imnodes.imnodes_PopAttributeFlag();
        saveObj(&obj) catch unreachable;
    }

    //---------------
    // main loop GUI
    //---------------
    while (!window.shouldClose ()) {
        window.pollEvents ();

        // Iconify sleep
        if( window.isIconified()){
            continue;
        }
        // Start the Dear ImGui frame
        window.frame();

        //------------------
        // Show demo window
        //------------------
        ig.igShowDemoWindow(null);
        window.showInfoWindow();

        //---------------------
        // Show ImNodes window
        //---------------------
        if (showImNodesWindow) {
            _ = ig.igBegin("ImNodes " ++ ifa.ICON_FA_CAT, &showImNodesWindow, 0);
            defer ig.igEnd();
            //
            ig.igTextUnformatted("A -- add node", null);
            ig.igTextUnformatted("\"Close the executable and rerun it -- your nodes should be exactly\"\n\"where you left them !\"", null);
            {
                imnodes.imnodes_BeginNodeEditor();
                defer imnodes.imnodes_EndNodeEditor();
                if (ig.igIsWindowFocused(ig.ImGuiFocusedFlags_RootAndChildWindows) and imnodes.imnodes_IsEditorHovered() and ig.igIsKeyReleased_Nil(ig.ImGuiKey_A)) {
                    obj.current_id += 1;
                    const node_id = obj.current_id;
                    var pos: imnodes.ImVec2 = undefined;
                    ig.igGetMousePos(@ptrCast(&pos));
                    imnodes.imnodes_SetNodeScreenSpacePos(node_id, pos);
                    try obj.nodes.append(.{ .id = node_id, .value = 0 });
                }
                for (obj.nodes.items, 0..) |*node, nodeN| {
                    imnodes.imnodes_BeginNode(node.id);
                    defer imnodes.imnodes_EndNode();
                    {
                        imnodes.imnodes_BeginNodeTitleBar();
                        defer imnodes.imnodes_EndNodeTitleBar();
                        ig.igText("%s %d", "node", @as(c_int, @intCast(nodeN)));
                    }
                    {
                        imnodes.imnodes_BeginInputAttribute(node.id << 8, imnodes.ImNodesPinShape_CircleFilled);
                        defer imnodes.imnodes_EndInputAttribute();
                        ig.igTextUnformatted("input", null);
                    }
                    {
                        imnodes.imnodes_BeginStaticAttribute(node.id << 16);
                        defer imnodes.imnodes_EndStaticAttribute();
                        ig.igPushItemWidth(120);
                        _ = ig.igDragFloat("value", &node.value, 0.01, 0, 0, "%.3f", 0);
                        ig.igPopItemWidth();
                    }
                    {
                        imnodes.imnodes_BeginOutputAttribute(node.id << 24, imnodes.ImNodesPinShape_CircleFilled);
                        defer imnodes.imnodes_EndOutputAttribute();
                        var wOut: ig.ImVec2 = undefined;
                        var wVal: ig.ImVec2 = undefined;
                        ig.igCalcTextSize(&wOut, "output", null, false, -1.0);
                        ig.igCalcTextSize(&wVal, "value", null, false, -1.0);
                        ig.igIndent(120 + wVal.x - wOut.x);
                        ig.igTextUnformatted("output", null);
                    }
                } //-- end for loop

                for (obj.links.items) |link| {
                    imnodes.imnodes_Link(link.id, link.start_attr, link.end_attr);
                }
            } //-- imnodes_EndNodeEditor()

            var lnk: Link = undefined;
            if (imnodes.imnodes_IsLinkCreated_BoolPtr(&lnk.start_attr, &lnk.end_attr, null)) {
                obj.current_id += 1;
                lnk.id = obj.current_id;
                try obj.links.append(lnk);
            }

            var link_id: c_int = undefined;
            if (imnodes.imnodes_IsLinkDestroyed(&link_id)) {
                var idx: i32 = -1;
                for (obj.links.items, 0..) |item, i| {
                    if (item.id == link_id) {
                        idx = @intCast(i);
                        break;
                    }
                }
                if (idx > 0) {
                    _ = obj.links.orderedRemove(@intCast(idx));
                }
            }
        } // end ImNodes window

        //--------
        // render
        //--------
        window.render();
    } // end while loop
}

//---------
// saveObj
//---------
fn saveObj(this: *recObj) !void {
    //-- Save the internal imnodes state
    imnodes.imnodes_SaveCurrentEditorStateToIniFile("save_load.ini");
    //-- Dump our editor state as bytes into a file
    const fout = try std.fs.cwd().createFile("save_load.bytes", .{});
    defer fout.close();
    //-- Copy the vector: nodes to the file
    try fout.writeAll(std.mem.asBytes(&this.nodes.items.len)); //   -- save vector:nodes size
    for (this.nodes.items) |nd| {
        try fout.writeAll(std.mem.asBytes(&nd.id));
        try fout.writeAll(std.mem.asBytes(&nd.value));
    }
    //-- Copy the vector: links to the file
    try fout.writeAll(std.mem.asBytes(&this.links.items.len)); //   -- save vector:links size
    for (this.links.items) |lk| {
        try fout.writeAll(std.mem.asBytes(&lk.id));
        try fout.writeAll(std.mem.asBytes(&lk.start_attr));
        try fout.writeAll(std.mem.asBytes(&lk.end_attr));
    }
    //-- Copy the current_id to the file
    try fout.writeAll(std.mem.asBytes(&this.current_id));
}

//---------
// loadObj
//---------
fn loadObj(this: *recObj) !void {
    //-- Load the internal imnodes state
    imnodes.imnodes_LoadCurrentEditorStateFromIniFile("save_load.ini");
    //-- Load our editor state into memory
    const fin = std.fs.cwd().openFile("save_load.bytes", .{}) catch return;
    defer fin.close();
    //-- Load nodes into memory
    var sz: usize = undefined;
    _ = try fin.readAll(std.mem.asBytes(&sz));
    if (sz == 0) {
        return;
    }
    for (0..sz) |_| {
        var id: c_int = undefined;
        _ = try fin.readAll(std.mem.asBytes(&id));
        var value: f32 = undefined;
        _ = try fin.readAll(std.mem.asBytes(&value));
        try this.nodes.append(.{ .id = id, .value = value });
    }
    //-- Load links into memory
    _ = try fin.readAll(std.mem.asBytes(&sz));
    for (0..sz) |_| {
        var id: c_int = undefined;
        _ = try fin.readAll(std.mem.asBytes(&id));
        var start_attr: c_int = undefined;
        _ = try fin.readAll(std.mem.asBytes(&start_attr));
        var end_attr: c_int = undefined;
        _ = try fin.readAll(std.mem.asBytes(&end_attr));
        try this.links.append(.{ .id = id, .start_attr = start_attr, .end_attr = end_attr });
    }
    //-- copy current_id into memory
    var current_id: c_int = undefined;
    _ = try fin.readAll(std.mem.asBytes(&current_id));
    this.current_id = current_id;
}

//--------
// main()
//--------
pub fn main() !void {
    var window = try app.Window.createImGui(MainWinWidth, MainWinHeight, "ImGui window in Zig lang.");
    defer window.destroyImGui();

    //_ = app.setTheme(app.Theme.light); // Theme: dark, classic, light, microsoft

    //---------------
    // GUI main proc
    //---------------
    try gui_main(&window);
}
