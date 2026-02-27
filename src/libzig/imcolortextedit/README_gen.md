### Generate src/impl_xxxx.zig that can compile with zig-0.16.0-dev

1. Use zig-0.15.2
1. Generating `impl_imcolortextedit.zig`

   ```sh
   $ make gen
   cp .zig-cache/o/xxxxxxxx/cimCTE.zig src/impl_imcolortextedit.zig
   ```

   You have to manually find `cimCTE.zig` in cache folder.  
1. Patch some lines according to `libzig/cimgui/src/impl_imcolortextedit.zig`,  
   change these lines in `src/impl_imcolortextedit.zig`

   ```zig 
   pub const struct_ImFontBaked = opaque {};
   ...
   pub const struct_ImGuiBoxSelectState = opaque {};
   ```
   to

   ```zig 
   pub const struct_ImFontBaked = struct {};
   ...
   pub const struct_ImGuiBoxSelectState = struct {};
   ```
