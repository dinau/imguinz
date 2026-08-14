#include "wgpu_init.h"
#include "imgui_impl_wgpu.h"
#include <webgpu/webgpu_cpp.h>
#include <cstdio>
#include <utility>

extern "C" bool AppInitWGPU(GLFWwindow* /*window*/, int width, int height, WgpuInitResult* out)
{
    wgpu::InstanceDescriptor instance_desc = {};
    static constexpr wgpu::InstanceFeatureName timedWaitAny = wgpu::InstanceFeatureName::TimedWaitAny;
    instance_desc.requiredFeatureCount = 1;
    instance_desc.requiredFeatures = &timedWaitAny;
    wgpu::Instance instance = wgpu::CreateInstance(&instance_desc);

    // --- Adapter ---
    wgpu::Adapter acquired_adapter;
    wgpu::RequestAdapterOptions adapter_options;
    auto onRequestAdapter = [&](wgpu::RequestAdapterStatus status, wgpu::Adapter adapter, wgpu::StringView message) {
        if (status != wgpu::RequestAdapterStatus::Success) {
            printf("Failed to get an adapter: %s\n", message.data);
            return;
        }
        acquired_adapter = std::move(adapter);
    };
    wgpu::Future waitAdapterFunc{ instance.RequestAdapter(&adapter_options, wgpu::CallbackMode::WaitAnyOnly, onRequestAdapter) };
    wgpu::WaitStatus waitStatusAdapter = instance.WaitAny(waitAdapterFunc, UINT64_MAX);
    if (!acquired_adapter || waitStatusAdapter != wgpu::WaitStatus::Success) return false;
    ImGui_ImplWGPU_DebugPrintAdapterInfo(acquired_adapter.Get());

    // --- Device ---
    wgpu::DeviceDescriptor device_desc;
    device_desc.SetDeviceLostCallback(wgpu::CallbackMode::AllowSpontaneous,
        [](const wgpu::Device&, wgpu::DeviceLostReason type, wgpu::StringView msg) {
            fprintf(stderr, "%s error: %s\n", ImGui_ImplWGPU_GetDeviceLostReasonName((WGPUDeviceLostReason)type), msg.data);
        });
    device_desc.SetUncapturedErrorCallback(
        [](const wgpu::Device&, wgpu::ErrorType type, wgpu::StringView msg) {
            fprintf(stderr, "%s error: %s\n", ImGui_ImplWGPU_GetErrorTypeName((WGPUErrorType)type), msg.data);
        });

    wgpu::Device acquired_device;
    auto onRequestDevice = [&](wgpu::RequestDeviceStatus status, wgpu::Device local_device, wgpu::StringView message) {
        if (status != wgpu::RequestDeviceStatus::Success) {
            printf("Failed to get a device: %s\n", message.data);
            return;
        }
        acquired_device = std::move(local_device);
    };
    wgpu::Future waitDeviceFunc{ acquired_adapter.RequestDevice(&device_desc, wgpu::CallbackMode::WaitAnyOnly, onRequestDevice) };
    wgpu::WaitStatus waitStatusDevice = instance.WaitAny(waitDeviceFunc, UINT64_MAX);
    if (!acquired_device || waitStatusDevice != wgpu::WaitStatus::Success) return false;

    // --- Surface (Emscripten canvas) ---
    wgpu::EmscriptenSurfaceSourceCanvasHTMLSelector canvas_desc = {};
    canvas_desc.selector = "#canvas";
    wgpu::SurfaceDescriptor surface_desc = {};
    surface_desc.nextInChain = &canvas_desc;
    WGPUSurface surface = instance.CreateSurface(&surface_desc).MoveToCHandle();
    if (!surface) return false;

    WGPUSurfaceCapabilities surface_capabilities = {};
    wgpuSurfaceGetCapabilities(surface, acquired_adapter.Get(), &surface_capabilities);
    WGPUTextureFormat preferred_fmt = surface_capabilities.formats[0];

    out->instance = instance.MoveToCHandle();
    out->device = acquired_device.MoveToCHandle();
    out->surface = surface;
    out->format = preferred_fmt;

    WGPUSurfaceConfiguration surface_configuration = {};
    surface_configuration.presentMode = WGPUPresentMode_Fifo;
    surface_configuration.alphaMode = WGPUCompositeAlphaMode_Auto;
    surface_configuration.usage = WGPUTextureUsage_RenderAttachment;
    surface_configuration.width = (uint32_t)width;
    surface_configuration.height = (uint32_t)height;
    surface_configuration.device = out->device;
    surface_configuration.format = preferred_fmt;
    wgpuSurfaceConfigure(surface, &surface_configuration);

    out->queue = wgpuDeviceGetQueue(out->device);
    return true;
}

extern "C" void AppResizeSurface(WGPUSurface surface, WGPUDevice device, WGPUTextureFormat format, int width, int height)
{
    WGPUSurfaceConfiguration cfg = {};
    cfg.presentMode = WGPUPresentMode_Fifo;
    cfg.alphaMode = WGPUCompositeAlphaMode_Auto;
    cfg.usage = WGPUTextureUsage_RenderAttachment;
    cfg.width = (uint32_t)width;
    cfg.height = (uint32_t)height;
    cfg.device = device;
    cfg.format = format;
    wgpuSurfaceConfigure(surface, &cfg);
}
