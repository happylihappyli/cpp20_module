// UTF-8到宽字符转换测试程序
#include <iostream>
#include <string>
#include <windows.h>

std::wstring utf8ToWide(const std::string& utf8) {
    if (utf8.empty()) return std::wstring();
    
    int size_needed = MultiByteToWideChar(CP_UTF8, 0, &utf8[0], (int)utf8.size(), nullptr, 0);
    std::wstring wide(size_needed, 0);
    MultiByteToWideChar(CP_UTF8, 0, &utf8[0], (int)utf8.size(), &wide[0], size_needed);
    return wide;
}

int main() {
    // 测试中文标题
    std::string testTitle = "中文标题测试";
    std::wstring wideTitle = utf8ToWide(testTitle);
    
    // 输出调试信息
    std::cout << "原UTF-8标题: " << testTitle << std::endl;
    std::cout << "转换后宽字符长度: " << wideTitle.length() << std::endl;
    
    // 在消息框中显示转换后的标题
    MessageBoxW(nullptr, wideTitle.c_str(), L"转换结果", MB_OK | MB_ICONINFORMATION);
    
    // 创建一个简单的窗口显示标题
    const wchar_t* className = L"UTF8TestClass";
    const wchar_t* windowTitle = wideTitle.c_str();
    
    // 注册窗口类
    WNDCLASSEXW wc = {
        sizeof(WNDCLASSEXW),
        CS_HREDRAW | CS_VREDRAW,
        [](HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam) -> LRESULT {
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
        },
        0,
        0,
        GetModuleHandle(nullptr),
        nullptr,
        LoadCursor(nullptr, IDC_ARROW),
        (HBRUSH)(COLOR_WINDOW + 1),
        nullptr,
        className,
        nullptr
    };
    
    RegisterClassExW(&wc);
    
    // 创建窗口
    HWND hWnd = CreateWindowExW(
        0,
        className,
        windowTitle,
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT, CW_USEDEFAULT,
        400, 300,
        nullptr,
        nullptr,
        GetModuleHandle(nullptr),
        nullptr
    );
    
    if (hWnd) {
        ShowWindow(hWnd, SW_SHOW);
        UpdateWindow(hWnd);
        
        // 消息循环
        MSG msg;
        while (GetMessage(&msg, nullptr, 0, 0) > 0) {
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }
    }
    
    return 0;
}