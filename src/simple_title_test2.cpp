// 简单的中文窗口标题测试程序
// 用于测试Windows API中的中文显示问题

#include <windows.h>
#include <string>

// 窗口类名
const wchar_t* WINDOW_CLASS_NAME = L"SimpleTitleTestClass";

// 窗口过程函数
LRESULT CALLBACK WindowProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam) {
    switch (msg) {
        case WM_CLOSE:
            DestroyWindow(hWnd);
            break;
        case WM_DESTROY:
            PostQuitMessage(0);
            break;
        default:
            return DefWindowProc(hWnd, msg, wParam, lParam);
    }
    return 0;
}

// 注册窗口类
bool RegisterWindowClass(HINSTANCE hInstance) {
    WNDCLASSEXW wc = {
        sizeof(WNDCLASSEXW),
        CS_HREDRAW | CS_VREDRAW,
        WindowProc,
        0,
        0,
        hInstance,
        nullptr,
        LoadCursor(nullptr, IDC_ARROW),
        (HBRUSH)(COLOR_WINDOW + 1),
        nullptr,
        WINDOW_CLASS_NAME,
        nullptr
    };
    
    return RegisterClassExW(&wc) != 0;
}

// WinMain入口函数
int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow) {
    // 注册窗口类
    if (!RegisterWindowClass(hInstance)) {
        MessageBoxW(nullptr, L"窗口类注册失败", L"错误", MB_ICONERROR | MB_OK);
        return 1;
    }
    
    // 创建窗口（直接使用宽字符API）
    // 以下是几个不同的中文标题测试选项，逐一测试
    const wchar_t* wideTitle1 = L"中文标题测试";  // 最简单的中文标题
    const wchar_t* wideTitle2 = L"C++20图形演示"; // 混合中英文
    const wchar_t* wideTitle3 = L"测试中文显示";  // 另一个简单测试
    
    // 当前使用的标题
    const wchar_t* currentTitle = wideTitle1;
    
    HWND hWnd = CreateWindowExW(
        0,                      // 扩展窗口样式
        WINDOW_CLASS_NAME,      // 窗口类名
        currentTitle,           // 窗口标题（直接使用宽字符）
        WS_OVERLAPPEDWINDOW,    // 窗口样式
        CW_USEDEFAULT, CW_USEDEFAULT, // 窗口位置
        800, 600,               // 窗口大小
        nullptr,                // 父窗口
        nullptr,                // 菜单
        hInstance,              // 应用程序实例
        nullptr                 // 附加数据
    );
    
    if (!hWnd) {
        MessageBoxW(nullptr, L"窗口创建失败", L"错误", MB_ICONERROR | MB_OK);
        return 1;
    }
    
    // 显示窗口
    ShowWindow(hWnd, nCmdShow);
    UpdateWindow(hWnd);
    
    // 消息循环
    MSG msg;
    while (GetMessage(&msg, nullptr, 0, 0) > 0) {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
    
    return (int)msg.wParam;
}