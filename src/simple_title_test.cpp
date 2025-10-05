// 简化的中文标题测试程序
#include <windows.h>
#include <iostream>

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

// UTF-8字符串转换为宽字符
std::wstring utf8ToWide(const std::string& utf8) {
    if (utf8.empty()) return std::wstring();
    
    int size_needed = MultiByteToWideChar(CP_UTF8, 0, &utf8[0], (int)utf8.size(), nullptr, 0);
    std::wstring wide(size_needed, 0);
    MultiByteToWideChar(CP_UTF8, 0, &utf8[0], (int)utf8.size(), &wide[0], size_needed);
    return wide;
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow) {
    // 测试不同的标题
    const char* titles[] = {
        "简单测试标题",
        "C++中文标题测试",
        "只有C",
        "测试窗口"
    };
    
    // 选择一个标题进行测试
    std::string title = titles[0]; // 可以修改索引来测试不同标题
    std::wstring wideTitle = utf8ToWide(title);
    
    // 注册窗口类
    const wchar_t* className = L"SimpleTitleTestClass";
    
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
        className,
        nullptr
    };
    
    if (!RegisterClassExW(&wc)) {
        MessageBoxW(nullptr, L"窗口类注册失败", L"错误", MB_ICONERROR | MB_OK);
        return 1;
    }
    
    // 创建窗口
    HWND hWnd = CreateWindowExW(
        0,
        className,
        wideTitle.c_str(), // 使用转换后的宽字符标题
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT, CW_USEDEFAULT,
        400, 300,
        nullptr,
        nullptr,
        hInstance,
        nullptr
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