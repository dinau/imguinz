<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [ImGuinZ](#imguinz)
  - [Prerequisites](#prerequisites)
  - [Build and run](#build-and-run)
  - [Available libraries list at this moment](#available-libraries-list-at-this-moment)
  - [Examples screen shots](#examples-screen-shots)
    - [ImGui-Toggle / CImGui-Toggle](#imgui-toggle--cimgui-toggle)
    - [ImGui-Knobs / CImGui-Knobs](#imgui-knobs--cimgui-knobs)
    - [ImSpinner / CImSpinner](#imspinner--cimspinner)
    - [ImPlot3D / CImPlot3D](#implot3d--cimplot3d)
    - [ImGuiFileDialog / CImGuiFileDialog](#imguifiledialog--cimguifiledialog)
    - [ImGuiColorTextEdit / cimCTE](#imguicolortextedit--cimcte)
    - [ImNodes / CImNodes](#imnodes--cimnodes)
    - [ImGuizmo / CImGuizmo](#imguizmo--cimguizmo)
    - [imgui_markdown / cimgui_markdown](#imgui_markdown--cimgui_markdown)
    - [Image load](#image-load)
    - [Showing CJK multi byte fonts and input UTF-8 text](#showing-cjk-multi-byte-fonts-and-input-utf-8-text)
    - [Icon font viewer](#icon-font-viewer)
    - [Image load / save](#image-load--save)
    - [glfw_opengl3_implot](#glfw_opengl3_implot)
  - [ImPlot Demo written in Zig lang.](#implot-demo-written-in-zig-lang)
    - [Build and run](#build-and-run-1)
    - [ImPlot demo source in Zig lang.](#implot-demo-source-in-zig-lang)
    - [Plots Tab](#plots-tab)
      - [LinePlots (Dynamic)](#lineplots-dynamic)
      - [BarGroups](#bargroups)
      - [BarStacks](#barstacks)
      - [PieCharts](#piecharts)
      - [Heatmaps](#heatmaps)
      - [Histogram2D](#histogram2d)
      - [Images](#images)
    - [Axes Tab](#axes-tab)
      - [LogScale](#logscale)
    - [Subplots Tab](#subplots-tab)
      - [Tables](#tables)
    - [Tools Tab](#tools-tab)
      - [DragRects](#dragrects)
  - [Show / Hide console window](#show--hide-console-window)
  - [SDL libraries](#sdl-libraries)
    - [Similar project ImGui / CImGui](#similar-project-imgui--cimgui)
    - [SDL game tutorial Platfromer](#sdl-game-tutorial-platfromer)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## ImGuinZ 

This project aims to simply and easily build [Dear ImGui](https://github.com/ocornut/imgui) 
[(CImGui)](https://github.com/cimgui/cimgui) / [ImPlot](https://github.com/epezent/implot) [(CImPlot)](https://github.com/cimgui/cimplot) 
examples in Zig language with less external dependencies.

- ImGui / CImGui version **1.92.3 dock** (2025/09)
- OS: Windows and Linux
- Frontends and Backends 

   |                    | GLFW   | SDL3                                                                               |
   | ---                | :----: | :----:                                                                             |
   | OpenGL3<br>backend | v      | v                                                                                  |
   | SDLGPU3<br>backend | -      | [v](https://github.com/dinau/imguinz/blob/main/examples/sdl3_sdlgpu3/src/main.zig) |
   | vulkan<br>backend  | WIP    | WIP                                                                                |

- Features 
   - Included [Font Awesome](https://fontawesome.com/search?m=free&o=r) Icon fonts.  
      ![alt](img/icon_font.png)
   - Included GLFW 3.4.0 static library (for Windows)
   - Included SDL3 libraries (for Windows)
   - Included STB libraries (only stb_image) for Load / Save images
   - Available [ImPlot](https://github.com/epezent/implot) [(CImPlot)](https://github.com/cimgui/cimplot) with `ImDrawIdx="unsigned int"`
   - Enabled Input method \(IME\) flag with `IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS`

### Prerequisites

---

- Zig compiler version confirmed
   - Windows: [zig-x86_64-windows-0.15.1.zip](https://ziglang.org/download/0.15.1/zig-x86_64-windows-0.15.1.zip)
   - Linux:   [zig-x86_64-linux-0.15.1.tar.xz](https://ziglang.org/download/0.15.1/zig-x86_64-linux-0.15.1.tar.xz)

- WindowsOS
   - Windows10 or later
   - MSys2/MinGW basic commands (make, rm, cp, strip ...)
      ```sh
      pacman -S make mingw-w64-x86_64-{gcc,vulkan-headers,vulkan-loader}
      ```

- Linux OS (Ubuntu / Debian families)

  ```sh
   sudo apt install lib{opengl-dev,gl1-mesa-dev,glfw3,glfw3-dev}
  ```

   - SDL3  
   If you are using Debian13, add
   
      ```sh
      sudo apt install libsdl3-dev
      ```

      otherwise [install SDL3 manually](https://github.com/dinau/sdl3_nim#for-linux-os)

### Build and run

---

   ```sh
   git clone https://github.com/dinau/imguinz
   cd imguinz/examples/glfw_opengl3              # cd one of examples
   make run                                      # or  zig build --release=fast run
   ```


### Available libraries list at this moment

---

Library name / C lang. wrapper

- [x] [ImGui](https://github.com/ocornut/imgui) / [CImGui](https://github.com/cimgui/cimgui) (2024/11)
- [x] [ImPlot](https://github.com/epezent/implot) / [CImPlot](https://github.com/cimgui/cimplot) (2025)
- [x] [ImPlot3d](https://github.com/brenocq/implot3d) / [CImPlot3d](https://github.com/cimgui/cimplot3d) (2025/07)
- [x] [ImNodes](https://github.com/Nelarius/imnodes) / [CImNodes](https://github.com/cimgui/cimnodes) (2025/06)
- [x] [ImGuizmo](https://github.com/CedricGuillemet/ImGuizmo) / [CImGuizmo](https://github.com/cimgui/cimguizmo) (2025/07) 
- [x] [ImGui-Knobs](https://github.com/altschuler/imgui-knobs) / [CImGui-Knobs](https://github.com/dinau/imguin/tree/main/src/imguin/private/cimgui-knobs) (2025/05)
- [x] [ImGuiFileDialog](https://github.com/aiekick/ImGuiFileDialog) / [CImGuiFileDialog](https://github.com/dinau/CImGuiFileDialog) (2025/07)
- [x] [ImGui_Toggle](https://github.com/cmdwtf/imgui_toggle) / [CimGui_Toggle](https://github.com/dinau/cimgui_toggle) (2025/05)
- [x] [ImSpinner](https://github.com/dalerank/imspinner) / [CImSpinner](https://github.com/dinau/cimspinner) (2025/05)
- [x] [ImGuiColorTextEdit](https://github.com/santaclose/ImGuiColorTextEdit) / [cimCTE](https://github.com/cimgui/cimCTE) (2025/07)
- [ ] [ImGui_Markdown](https://github.com/enkisoftware/imgui_markdown) (2025/09) WIP 

### Examples screen shots 

#### ImGui-Toggle / CImGui-Toggle

---

[ImGui-Toggle](https://github.com/cmdwtf/imgui_toggle) / [CImGui-Toggle](https://github.com/dinau/cimgui_toggle)

[glfw_opengl3_imgui_toggle.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imgui_toggle/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imtoggle.png)  

#### ImGui-Knobs / CImGui-Knobs

---

[ImGui-Knobs](https://github.com/altschuler/imgui-knobs) / [CImGui-Knobs](https://github.com/dinau/cimgui-knobs)

[glfw_opengl3_imknobs.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imknobs/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imknobs.png)  

#### ImSpinner / CImSpinner

---

[ImSpinner](https://github.com/dalerank/imspinner) / [CImSpinner](https://github.com/dinau/cimspinner)

[glfw_opengl3_imspinner.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imspinner/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imspinner.gif)

#### ImPlot3D / CImPlot3D

---

[ImPlot3d](https://github.com/brenocq/implot3d) / [CImPlot3d](https://github.com/cimgui/cimplot3d) 

[glfw_opengl3_implot3d.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_implot3d/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/implot3d.gif)

#### ImGuiFileDialog / CImGuiFileDialog

---

[ImGuiFileDialog](https://github.com/aiekick/ImGuiFileDialog) / [CImGuiFileDialog](https://github.com/dinau/CImGuiFileDialog)

[glfw_opengl3_imfiledialog.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imfiledialog/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imfiledialog.png)

#### ImGuiColorTextEdit / cimCTE

---

[ImGuiColorTextEdit](https://github.com/santaclose/ImGuiColorTextEdit) / [cimCTE](https://github.com/cimgui/cimCTE) 

[glfw_opengl3_imguicolortextedit.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imguicolortextedit/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imguicolortextedit.png)

#### ImNodes / CImNodes

---

[ImNodes](https://github.com/Nelarius/imnodes) / [CImNodes](https://github.com/cimgui/cimnodes)

[glfw_opengl3_imnodes.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imnodes/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imnodes.png)


#### ImGuizmo / CImGuizmo

---

[ImGuizmo](https://github.com/CedricGuillemet/ImGuizmo) / [CImGuizmo](https://github.com/cimgui/cimguizmo)

[glfw_opengl3_imguizmo.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imguizmo/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imguizmo.png)

#### imgui_markdown / cimgui_markdown

---

WIP

[imgui_markdown](https://github.com/enkisoftware/imgui_markdown) / [cImgui_markdown](https://github.com/dinau/cimgui_markdown)

[glfw_opengl3_imgui_markdown.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imgui_markdown/src/main.zig)  

![alt](https://github.com/dinau/cimgui_markdown/raw/main/demo/img/cimgui_markdown.png)

#### Image load 

---

Image load and magnifying glass


[glfw_opengl3.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3/src/main.zig) / 
[sdl3_opengl3.zig](https://github.com/dinau/imguinz/blob/main/examples/sdl3_opengl3/src/main.zig) / 
[sdl3_sdlgpu3.zig](https://github.com/dinau/imguinz/blob/main/examples/sdl3_sdlgpu3/src/main.zig)

![alt](https://github.com/dinau/imguinz/raw/main/img/sdl2_opengl3.png)

#### Showing CJK multi byte fonts and input UTF-8 text 

---

[glfw_opengl3_jp.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_jp/src/main.zig)

![alt](https://github.com/dinau/imguinz/raw/main/img/glfw_opengl3_jp.png)

#### Icon font viewer

---

[iconFontViewer.zig](https://github.com/dinau/imguinz/blob/main/examples/iconFontViewer/src/main.zig), magnifying glass, incremental search

![alt](https://github.com/dinau/imguinz/raw/main/img/iconFontViewer.png)

#### Image load / save

---

Image load / save and magnifying glass.  
Image file captured would be saved in .the folder `./zig-out/bin`.  
Image can be saved as `JPEG / PNG / BMP / TGA` file.

[glfw_opengl3_image_load.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_image_load/src/main.zig) 

![alt](https://github.com/dinau/imguinz/raw/main/img/glfw_opengl3_image_load.png)  

#### glfw_opengl3_implot

---

[glfw_opengl3_implot.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_implot/src/main.zig)

![alt](https://github.com/dinau/imguinz/raw/main/img/glfw_opengl3_implot.png)

### ImPlot Demo written in Zig lang.

---

Now work in progress.


#### Build and run

```sh
pwd
examples/imPlotDemo
make run   # or zig build --release=fast run
```

#### ImPlot demo source in Zig lang.

---

[demoAll.zig](https://github.com/dinau/imguinz/blob/main/examples/imPlotDemo/src/demoAll.zig)

#### Plots Tab

---

##### LinePlots (Dynamic)

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/LinePlots.png)
##### BarGroups

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/BarGroups.png)

##### BarStacks

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/BarStacks.png)

##### PieCharts

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/PieCharts.png)

##### Heatmaps

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/Heatmaps.png)

##### Histogram2D

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/Histogram2D.png)

##### Images

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/Images.png)

#### Axes Tab

---

##### LogScale

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/LogScale.png)

#### Subplots Tab

---

##### Tables 

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/Tables.gif)

#### Tools Tab

---

##### DragRects 

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/DragRects.png)


### Show / Hide console window

---

Open `build.zig` in each example folder and   
Hide console window: Default,  
Show console window: Comment out this line as follows,

  ```zig
  ... snip ...
  //exe.subsystem = .Windows;  // Hide console window
  ... snip ...
  ```

  and rebuild example.

### SDL libraries

---

https://github.com/libsdl-org/SDL/releases

#### Similar project ImGui / CImGui

---

| Language             |          | Project                                                                                                                                         |
| -------------------: | :---:    | :----------------------------------------------------------------:                                                                              |
| **Lua**              | Script   | [LuaJITImGui](https://github.com/dinau/luajitImGui)                                                                                             |
| **NeLua**            | Compiler | [NeLuaImGui](https://github.com/dinau/neluaImGui) / [NeLuaImGui2](https://github.com/dinau/neluaImGui2)                                         |
| **Nim**              | Compiler | [ImGuin](https://github.com/dinau/imguin), [Nimgl_test](https://github.com/dinau/nimgl_test), [Nim_implot](https://github.com/dinau/nim_implot) |
| **Python**           | Script   | [DearPyGui for 32bit WindowsOS Binary](https://github.com/dinau/DearPyGui32/tree/win32)                                                         |
| **Ruby**             | Script   | [igRuby_Examples](https://github.com/dinau/igruby_examples)                                                                                     |
| **Zig**, C lang.     | Compiler | [Dear_Bindings_Build](https://github.com/dinau/dear_bindings_build)                                                                             |
| **Zig**              | Compiler | [ImGuinZ](https://github.com/dinau/imguinz)                                                                                                     |


#### SDL game tutorial Platfromer

---

![ald](https://github.com/dinau/nelua-platformer/raw/main/img/platformer-nelua-sdl2.gif)


| Language             |          | SDL         | Project                                                                                                                                               |
| -------------------: | :---:    | :---:       | :----------------------------------------------------------------:                                                                                    |
| **LuaJIT**           | Script   | SDL2        | [LuaJIT-Platformer](https://github.com/dinau/luajit-platformer)
| **Nelua**            | Compiler | SDL2        | [NeLua-Platformer](https://github.com/dinau/nelua-platformer)
| **Nim**              | Compiler | SDL3 / SDL2 | [Nim-Platformer-sdl2](https://github.com/def-/nim-platformer)/ [Nim-Platformer-sdl3](https://github.com/dinau/sdl3_nim/tree/main/examples/platformer) |
| **Ruby**             | Script   | SDL3        | [Ruby-Platformer](https://github.com/dinau/ruby-platformer)                                                                                           |
| **Zig**              | Compiler | SDL2        | [Zig-Platformer](https://github.com/dinau/zig-platformer)                                                                                             |
