### Generate src/impl_xxxx.zig that can compile with zig-0.16.0-dev

1. Use zig-0.15.2
1. Generating `impl_implot.zig`

   ```sh
   $ make gen
   cp .zig-cache/o/xxxxxxxx/cimplot.zig src/impl_implot.zig
   ```

   You have to manually find `cimplot.zig` in cache folder.  
1. Patch some lines according to `libzig/cimgui/src/impl_cimgui.zig`,  
   change these lines in `src/impl_implot.zig`

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
