#pragma once
#include <stdbool.h>
#include <webgpu/webgpu.h>
#include <GLFW/glfw3.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct WgpuInitResult {
    WGPUInstance      instance;
    WGPUDevice        device;
    WGPUSurface       surface;
    WGPUQueue         queue;
    WGPUTextureFormat format;
} WgpuInitResult;

bool AppInitWGPU(GLFWwindow* window, int width, int height, WgpuInitResult* out);
void AppResizeSurface(WGPUSurface surface, WGPUDevice device, WGPUTextureFormat format, int width, int height);

#ifdef __cplusplus
}
#endif
