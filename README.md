<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [ImGuinZ](#imguinz)
  - [Prerequisites](#prerequisites)
  - [Build and run](#build-and-run)
  - [Examples screen shots](#examples-screen-shots)
    - [zig_glfw_opengl3 / zig_sdl2_opengl3](#zig_glfw_opengl3--zig_sdl2_opengl3)
    - [zig_glfw_opengl3_jp](#zig_glfw_opengl3_jp)
    - [zig_glfw_opengl3_image_load](#zig_glfw_opengl3_image_load)
    - [zig_glfw_opengl3_implot](#zig_glfw_opengl3_implot)
  - [TODO](#todo)
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
      - [Tables (Dynamic)](#tables-dynamic)
    - [Tools Tab](#tools-tab)
      - [DragRects](#dragrects)
  - [Show / Hide console window](#show--hide-console-window)
  - [SDL libraries](#sdl-libraries)
  - [My tools version](#my-tools-version)
  - [Similar project](#similar-project)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# ImGuinZ 

This project aims to simply and easily build [Dear ImGui](https://github.com/ocornut/imgui) 
[(CImGui)](https://github.com/cimgui/cimgui) / [ImPlot](https://github.com/epezent/implot) [(CImPlot)](https://github.com/cimgui/cimplot) 
examples in Zig language with less external dependencies.

ImGui/CimGui version **1.91.0dock** (2024/08)

- Features 
   - Included [Font Awesome](https://fontawesome.com/search?m=free&o=r) Icon fonts.  
      ![alt](img/icon_font.png)
   - Included GLFW 3.3.9 static library
   - Included SDL2/SDL3 libraries
   - Inlcuded STB libraries (only stb_image)
   - Available [ImPlot](https://github.com/epezent/implot) [(CImPlot)](https://github.com/cimgui/cimplot) with `ImDrawIdx="unsigned int"`
   - Enabled Input method \(IME\) flag with `IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS`


## Prerequisites

---

- Windows10 OS or later
- Use **Zig: 0.12.0** 
- **Zig 0.13.0 ?** (Compiling is ok so far)
- MSys/MinGW basic commands (make, rm, cp, strip ...)

## Build and run

---

1. Download this project.

   ```sh
   git clone --recurse-submodules https://github.com/dinau/imguinz
   ```
1. Go to one of the examples folder,

   ```sh
   cd imguinz/examples/zig_glfw_opengl3
   ```

1. Build and Run 

   ```sh
   make run                
   ```

   or 

   ```sh
   zig build --release=fast run
   ```

## Examples screen shots 

### zig_glfw_opengl3 / zig_sdl2_opengl3

---

|                                          GLFW |                                          SDL2 |                                          SDL3 |
|:---------------------------------------------:|:---------------------------------------------:|:---------------------------------------------:|
| [zig_glfw_opengl3](examples/zig_glfw_opengl3) | [zig_sdl2_opengl3](examples/zig_sdl2_opengl3) | [zig_sdl3_opengl3](examples/zig_sdl3_opengl3) |


![alt](img/zig_glfw_opengl3.png)

### zig_glfw_opengl3_jp

---

|                                        GLFW |
|:-------------------------------------------:|
| [zig_glfw_opengl3_jp](examples/zig_glfw_opengl3_jp) |

![alt](img/zig_glfw_opengl3_jp.png)


### zig_glfw_opengl3_image_load

---

|                                                                GLFW |
|:-------------------------------------------------------------------:|
| [zig_glfw_opengl3_image_load](examples/zig_glfw_opengl3_image_load) |

![alt](img/zig_glfw_opengl3_image_load.png)  
Image file captured would be saved in the folder `./zig-out/bin`.  
Image can be saved as `JPEG / PNG / BMP / TGA` file.

### zig_glfw_opengl3_implot

---

|                                        GLFW |
|:-------------------------------------------:|
| [zig_glfw_opengl3_implot](examples/zig_glfw_opengl3_implot) |

![alt](img/zig_glfw_opengl3_implot.png)

## TODO

---

SDL3 example : Work in progress.

## ImPlot Demo written in Zig lang.

---

Now work in progress.


### Build and run

```sh
pwd
examples/imPlotDemo
make run   # or zig build --release=fast run
```

### ImPlot demo source in Zig lang.

---

[demoAll.zig](examples/imPlotDemo/src/demoAll.zig)

### Plots Tab

---

#### LinePlots (Dynamic)

![alt](examples/imPlotDemo/img/LinePlots.png)

#### BarGroups

![alt](examples/imPlotDemo/img/BarGroups.png)

#### BarStacks

![alt](examples/imPlotDemo/img/BarStacks.png)

#### PieCharts

![alt](examples/imPlotDemo/img/PieCharts.png)

#### Heatmaps

![alt](examples/imPlotDemo/img/Heatmaps.png)

#### Histogram2D

![alt](examples/imPlotDemo/img/Histogram2D.png)

#### Images

![alt](examples/imPlotDemo/img/Images.png)

### Axes Tab

---

#### LogScale

![alt](examples/imPlotDemo/img/LogScale.png)

### Subplots Tab

---

#### Tables (Dynamic)

![alt](examples/imPlotDemo/img/Tables.png)

### Tools Tab

---

#### DragRects 

![alt](examples/imPlotDemo/img/DragRects.png)


## Show / Hide console window

---

Open `build.zig` in each example folder and   
Hide console: default,  
Show console: commet out this line as follows,

  ```zig
  ... snip ...
  //exe.subsystem = .Windows;  // Hide console window
  ... snip ...
  ```

  and execute `make`.

## SDL libraries

---

- SDL3  Build-SDL3  
https://github.com/mmozeiko/build-sdl3/releases  
https://github.com/mmozeiko/build-sdl3
- SDL3 Build-SDL3-Win32  
https://github.com/JBetz/build-sdl3-win32/releases  
https://github.com/JBetz/build-sdl3-win32

## My tools version

---

- Git version 2.45.2.windows.1
- Make: GNU Make 4.4.1
- Python 3.12.3
- Zig: 0.12.0 (zig cc: clang version 17.0.6)
- SDL2 ver.2.30.3
- SDL3 2024-06-02

## Similar project

---

| Language             | Project                                                                                                                                         |
| -------------------: | :----------------------------------------------------------------:                                                                              |
| **Nim**              | [ImGuin](https://github.com/dinau/imguin), [Nimgl_test](https://github.com/dinau/nimgl_test), [Nim_implot](https://github.com/dinau/nim_implot) |
| **Lua**              | [LuaJITImGui](https://github.com/dinau/luajitimgui)                                                                                             |
| **Python**           | [DearPyGui for 32bit WindowsOS Binary](https://github.com/dinau/DearPyGui32/tree/win32)                                                         |
| **Zig**, C lang.     | [Dear_Bindings_Build](https://github.com/dinau/dear_bindings_build)                                                                             |
| **Zig**              | [ImGuinZ](https://github.com/dinau/imguinz)                                                                                         |
