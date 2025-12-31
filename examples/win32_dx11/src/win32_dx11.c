#define CIMGUI_USE_WIN32
#define CIMGUI_USE_DX11
#define CIMGUI_DEFINE_ENUMS_AND_STRUCTS
#include "cimgui.h"
#include "cimgui_impl.h"
#define D3D11_NO_HELPERS
#define CINTERFACE
#define COBJMACROS
#define WIN32_LEAN_AND_MEAN
#include <d3d11.h>
#include <stdio.h>
#ifdef _MSC_VER
#include <windows.h>
#endif

#ifdef IMGUI_HAS_IMSTR
#define igBegin igBegin_Str
#define igSliderFloat igSliderFloat_Str
#define igCheckbox igCheckbox_Str
#define igColorEdit3 igColorEdit3_Str
#define igButton igButton_Str
#endif

#define igGetIO igGetIO_Nil
// Dear ImGui: standalone example application for Windows API + DirectX 11
// MinGW/MSYS2 compatible version

#include <dxgi.h>
#include <stdbool.h>

#include "setupFonts.h"
#include "IconsFontAwesome6.h"
#include "loadicon.h"

// Data
static ID3D11Device*            g_pd3dDevice = NULL;
static ID3D11DeviceContext*     g_pd3dDeviceContext = NULL;
static IDXGISwapChain*          g_pSwapChain = NULL;
static bool                     g_SwapChainOccluded = false;
static UINT                     g_ResizeWidth = 0;
static UINT                     g_ResizeHeight = 0;
static ID3D11RenderTargetView*  g_mainRenderTargetView = NULL;

// Forward declarations of helper functions
bool CreateDeviceD3D(HWND hWnd);
void CleanupDeviceD3D(void);
void CreateRenderTarget(void);
void CleanupRenderTarget(void);
LRESULT WINAPI WndProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam);

// Main code
int main(int argc, char** argv)
{
    (void)argc;
    (void)argv;

    // Make process DPI aware and obtain main monitor scale
    ImGui_ImplWin32_EnableDpiAwareness();
    POINT pt = {0, 0};
    HMONITOR hMonitor = MonitorFromPoint(pt, MONITOR_DEFAULTTOPRIMARY);
    float main_scale = ImGui_ImplWin32_GetDpiScaleForMonitor(hMonitor);

    // Create application window
    WNDCLASSEXW wc = {
        .cbSize = sizeof(WNDCLASSEXW),
        .style = CS_CLASSDC,
        .lpfnWndProc = WndProc,
        .cbClsExtra = 0,
        .cbWndExtra = 0,
        .hInstance = GetModuleHandle(NULL),
        .hIcon = NULL,
        .hCursor = NULL,
        .hbrBackground = NULL,
        .lpszMenuName = NULL,
        .lpszClassName = L"ImGui Example",
        .hIconSm = NULL
    };
    wc.hIcon = (HICON)LoadImage(NULL, "./resources/z.ico", IMAGE_ICON, 0, 0, LR_LOADFROMFILE | LR_DEFAULTSIZE);
    wc.hIconSm = wc.hIcon;

    RegisterClassExW(&wc);

    HWND hwnd = CreateWindowW(
        wc.lpszClassName,
        L"Dear ImGui DirectX11 Example",
        WS_OVERLAPPEDWINDOW,
        100,
        100,
        (int)(1280 * main_scale),
        (int)(800 * main_scale),
        NULL,
        NULL,
        wc.hInstance,
        NULL
    );

    if (hwnd == NULL) {
        fprintf(stderr, "Failed to create window\n");
        UnregisterClassW(wc.lpszClassName, wc.hInstance);
        return 1;
    }

    // Initialize Direct3D
    if (!CreateDeviceD3D(hwnd)) {
        CleanupDeviceD3D();
        DestroyWindow(hwnd);
        UnregisterClassW(wc.lpszClassName, wc.hInstance);
        return 1;
    }

    // Show the window
    //ShowWindow(hwnd, SW_SHOWDEFAULT);
    //UpdateWindow(hwnd);

    // Setup Dear ImGui context
    //IMGUI_CHECKVERSION();
    ImGuiContext* ctx = igCreateContext(NULL);
    ImGuiIO* io = igGetIO();

    io->ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
    io->ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;
    io->ConfigFlags |= ImGuiConfigFlags_DockingEnable;
    io->ConfigFlags |= ImGuiConfigFlags_ViewportsEnable;

    // Setup Dear ImGui style
    igStyleColorsDark(NULL);

    // Setup scaling
    ImGuiStyle* style = igGetStyle();
    ImGuiStyle_ScaleAllSizes(style, main_scale);
    style->FontScaleDpi = main_scale;
    io->ConfigDpiScaleFonts = true;
    io->ConfigDpiScaleViewports = true;

    // When viewports are enabled we tweak WindowRounding/WindowBg
    if (io->ConfigFlags & ImGuiConfigFlags_ViewportsEnable) {
        style->WindowRounding = 0.0f;
        style->Colors[ImGuiCol_WindowBg].w = 1.0f;
    }

    // Setup Platform/Renderer backends
    ImGui_ImplWin32_Init(hwnd);
    ImGui_ImplDX11_Init(g_pd3dDevice, g_pd3dDeviceContext);

    // Load Fonts
    // (You can add font loading here)
    // ImFont* font = ImFontAtlas_AddFontFromFileTTF(io->Fonts, "path/to/font.ttf", 16.0f, NULL, NULL);

    // Our state
    bool show_demo_window = true;
    bool show_another_window = false;
    ImVec4 clear_color = {0.45f, 0.55f, 0.60f, 1.00f};

    setupFonts();

    int showWindowDelay = 2; // TODO: Avoid flickering of window at startup

    // Main loop
    bool done = false;
    while (!done) {
        // Poll and handle messages (inputs, window resize, etc.)
        MSG msg;
        while (PeekMessage(&msg, NULL, 0U, 0U, PM_REMOVE)) {
            TranslateMessage(&msg);
            DispatchMessage(&msg);
            if (msg.message == WM_QUIT) {
                done = true;
            }
        }
        if (done) {
            break;
        }

        // Handle window being minimized or screen locked
        if (g_SwapChainOccluded &&
            IDXGISwapChain_Present(g_pSwapChain, 0, DXGI_PRESENT_TEST) == DXGI_STATUS_OCCLUDED) {
            Sleep(10);
            continue;
        }
        g_SwapChainOccluded = false;

        // Handle window resize
        if (g_ResizeWidth != 0 && g_ResizeHeight != 0) {
            CleanupRenderTarget();
            IDXGISwapChain_ResizeBuffers(g_pSwapChain, 0, g_ResizeWidth, g_ResizeHeight,
                                          DXGI_FORMAT_UNKNOWN, 0);
            g_ResizeWidth = 0;
            g_ResizeHeight = 0;
            CreateRenderTarget();
        }

        // Start the Dear ImGui frame
        ImGui_ImplDX11_NewFrame();
        ImGui_ImplWin32_NewFrame();
        igNewFrame();

        // 1. Show the big demo window
        if (show_demo_window) {
            igShowDemoWindow(&show_demo_window);
        }

        // 2. Show a simple window that we create ourselves
        {
            static float f = 0.0f;
            static int counter = 0;

            igBegin("Hello, world! " ICON_FA_CAT, NULL, 0);

            igText("This is some useful text.");
            igCheckbox("Demo Window", &show_demo_window);
            igCheckbox("Another Window", &show_another_window);

            igSliderFloat("float", &f, 0.0f, 1.0f, "%.3f", 0);
            igColorEdit3("clear color", (float*)&clear_color, 0);

            if (igButton("Button", (ImVec2){0, 0})) {
                counter++;
            }
            igSameLine(0, -1);
            igText("counter = %d", counter);

            igText("Application average %.3f ms/frame (%.1f FPS)",
                   1000.0f / io->Framerate, io->Framerate);
            igEnd();
        }

        // 3. Show another simple window
        if (show_another_window) {
            igBegin("Another Window", &show_another_window, 0);
            igText("Hello from another window!");
            if (igButton("Close Me", (ImVec2){0, 0})) {
                show_another_window = false;
            }
            igEnd();
        }

        // Rendering
        igRender();
        const float clear_color_with_alpha[4] = {
            clear_color.x * clear_color.w,
            clear_color.y * clear_color.w,
            clear_color.z * clear_color.w,
            clear_color.w
        };

        ID3D11DeviceContext_OMSetRenderTargets(g_pd3dDeviceContext, 1,
                                                 &g_mainRenderTargetView, NULL);
        ID3D11DeviceContext_ClearRenderTargetView(g_pd3dDeviceContext,
                                                    g_mainRenderTargetView,
                                                    clear_color_with_alpha);
        ImGui_ImplDX11_RenderDrawData(igGetDrawData());

        // Update and Render additional Platform Windows
        if (io->ConfigFlags & ImGuiConfigFlags_ViewportsEnable) {
            igUpdatePlatformWindows();
            igRenderPlatformWindowsDefault(NULL, NULL);
        }

        // Present
        HRESULT hr = IDXGISwapChain_Present(g_pSwapChain, 1, 0);  // Present with vsync
        g_SwapChainOccluded = (hr == DXGI_STATUS_OCCLUDED);

        if (showWindowDelay >=0 ) showWindowDelay--;
        if (showWindowDelay ==0 ){
          ShowWindow(hwnd, SW_SHOWDEFAULT);
          UpdateWindow(hwnd);
        }
    }

    // Cleanup
    ImGui_ImplDX11_Shutdown();
    ImGui_ImplWin32_Shutdown();
    igDestroyContext(ctx);

    CleanupDeviceD3D();
    DestroyWindow(hwnd);
    UnregisterClassW(wc.lpszClassName, wc.hInstance);

    return 0;
}

// Helper functions
bool CreateDeviceD3D(HWND hWnd)
{
    // Setup swap chain
    DXGI_SWAP_CHAIN_DESC sd;
    ZeroMemory(&sd, sizeof(sd));
    sd.BufferCount = 2;
    sd.BufferDesc.Width = 0;
    sd.BufferDesc.Height = 0;
    sd.BufferDesc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
    sd.BufferDesc.RefreshRate.Numerator = 60;
    sd.BufferDesc.RefreshRate.Denominator = 1;
    sd.Flags = DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH;
    sd.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
    sd.OutputWindow = hWnd;
    sd.SampleDesc.Count = 1;
    sd.SampleDesc.Quality = 0;
    sd.Windowed = TRUE;
    sd.SwapEffect = DXGI_SWAP_EFFECT_DISCARD;

    UINT createDeviceFlags = 0;
    // createDeviceFlags |= D3D11_CREATE_DEVICE_DEBUG;

    D3D_FEATURE_LEVEL featureLevel;
    const D3D_FEATURE_LEVEL featureLevelArray[2] = {
        D3D_FEATURE_LEVEL_11_0,
        D3D_FEATURE_LEVEL_10_0,
    };

    HRESULT res = D3D11CreateDeviceAndSwapChain(
        NULL,
        D3D_DRIVER_TYPE_HARDWARE,
        NULL,
        createDeviceFlags,
        featureLevelArray,
        2,
        D3D11_SDK_VERSION,
        &sd,
        &g_pSwapChain,
        &g_pd3dDevice,
        &featureLevel,
        &g_pd3dDeviceContext
    );

    // Try high-performance WARP software driver if hardware is not available
    if (res == DXGI_ERROR_UNSUPPORTED) {
        res = D3D11CreateDeviceAndSwapChain(
            NULL,
            D3D_DRIVER_TYPE_WARP,
            NULL,
            createDeviceFlags,
            featureLevelArray,
            2,
            D3D11_SDK_VERSION,
            &sd,
            &g_pSwapChain,
            &g_pd3dDevice,
            &featureLevel,
            &g_pd3dDeviceContext
        );
    }

    if (res != S_OK) {
        return false;
    }

    // Disable DXGI's default Alt+Enter fullscreen behavior
    IDXGIFactory* pFactory = NULL;
    if (SUCCEEDED(IDXGISwapChain_GetParent(g_pSwapChain, &IID_IDXGIFactory, (void**)&pFactory))) {
        IDXGIFactory_MakeWindowAssociation(pFactory, hWnd, DXGI_MWA_NO_ALT_ENTER);
        IDXGIFactory_Release(pFactory);
    }

    CreateRenderTarget();
    return true;
}

void CleanupDeviceD3D(void)
{
    CleanupRenderTarget();
    if (g_pSwapChain) {
        IDXGISwapChain_Release(g_pSwapChain);
        g_pSwapChain = NULL;
    }
    if (g_pd3dDeviceContext) {
        ID3D11DeviceContext_Release(g_pd3dDeviceContext);
        g_pd3dDeviceContext = NULL;
    }
    if (g_pd3dDevice) {
        ID3D11Device_Release(g_pd3dDevice);
        g_pd3dDevice = NULL;
    }
}

void CreateRenderTarget(void)
{
    ID3D11Texture2D* pBackBuffer = NULL;
    IDXGISwapChain_GetBuffer(g_pSwapChain, 0, &IID_ID3D11Texture2D, (void**)&pBackBuffer);
    if (pBackBuffer) {
        ID3D11Device_CreateRenderTargetView(g_pd3dDevice, (ID3D11Resource*)pBackBuffer,
                                             NULL, &g_mainRenderTargetView);
        ID3D11Texture2D_Release(pBackBuffer);
    }
}

void CleanupRenderTarget(void)
{
    if (g_mainRenderTargetView) {
        ID3D11RenderTargetView_Release(g_mainRenderTargetView);
        g_mainRenderTargetView = NULL;
    }
}

// Forward declare message handler from imgui_impl_win32.cpp
extern LRESULT ImGui_ImplWin32_WndProcHandler(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam);

// Win32 message handler
LRESULT WINAPI WndProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    if (ImGui_ImplWin32_WndProcHandler(hWnd, msg, wParam, lParam)) {
        return true;
    }

    switch (msg) {
        case WM_SIZE:
            if (wParam == SIZE_MINIMIZED) {
                return 0;
            }
            g_ResizeWidth = (UINT)LOWORD(lParam);
            g_ResizeHeight = (UINT)HIWORD(lParam);
            return 0;

        case WM_SYSCOMMAND:
            if ((wParam & 0xfff0) == SC_KEYMENU) {  // Disable ALT application menu
                return 0;
            }
            break;

        case WM_DESTROY:
            PostQuitMessage(0);
            return 0;
    }

    return DefWindowProcW(hWnd, msg, wParam, lParam);
}
