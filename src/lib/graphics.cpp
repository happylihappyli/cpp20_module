// 使用Windows GDI实现基本的图形绘制功能

#include "graphics.h"
#include <windows.h>
#include <string>
#include <fcntl.h>
#include <io.h>
#include <iostream>

namespace graphics {
    // 定义窗口类名常量
    const char* Window::WINDOW_CLASS_NAME = "GraphicsWindowClass";
    
    // 在命名空间级别提前设置控制台编码
    // 确保所有输出都是正确的编码
    class ConsoleSetup {
    public:
        ConsoleSetup() {
            // 提前设置宽字符模式，确保所有输出都是正确的
            _setmode(_fileno(stdout), _O_U16TEXT);
            _setmode(_fileno(stderr), _O_U16TEXT);
            
            // 尝试设置控制台字体为支持中文的字体
            CONSOLE_FONT_INFOEX cfi;
            cfi.cbSize = sizeof(cfi);
            if (GetCurrentConsoleFontEx(GetStdHandle(STD_OUTPUT_HANDLE), FALSE, &cfi)) {
                const wchar_t* fontOptions[] = { L"Microsoft YaHei", L"SimHei", L"Consolas", L"NSimSun" };
                for (const auto& font : fontOptions) {
                    wcscpy_s(cfi.FaceName, font);
                    if (SetCurrentConsoleFontEx(GetStdHandle(STD_OUTPUT_HANDLE), FALSE, &cfi)) {
                        std::wcout << L"[全局]成功设置控制台字体为: " << font << std::endl;
                        break;
                    }
                }
            }
        }
    };
    
    // 静态初始化控制台设置，确保在任何其他输出前生效
    static ConsoleSetup consoleSetup;
    
    // UTF-8字符串转换为宽字符 - 使用用户提供的参考实现
    // 确保中文能够正确显示
    std::wstring utf8ToWide(const std::string& utf8) {
        int wideLen = MultiByteToWideChar(CP_UTF8, 0, utf8.c_str(), -1, NULL, 0);
        if (wideLen == 0) return L"";
        
        std::wstring wideStr(wideLen, 0);
        MultiByteToWideChar(CP_UTF8, 0, utf8.c_str(), -1, &wideStr[0], wideLen);
        return wideStr;
    }
    
    // 静态成员初始化
    bool Window::registerClass() {
        static bool registered = false;
        if (registered) return true;
        
        // 将窗口类名转换为宽字符
        std::wstring wideClassName = utf8ToWide(WINDOW_CLASS_NAME);
        
        WNDCLASSEXW wc = {
            sizeof(WNDCLASSEXW),
            CS_HREDRAW | CS_VREDRAW | CS_OWNDC,
            windowProc,
            0,
            0,
            GetModuleHandle(nullptr),
            nullptr,
            LoadCursor(nullptr, IDC_ARROW),
            (HBRUSH)(COLOR_WINDOW + 1),
            nullptr,
            wideClassName.c_str(),
            nullptr
        };
        
        // 窗口创建后设置字体的逻辑将在构造函数中实现
        
        // 设置窗口字体以支持中文显示
        wc.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
        wc.lpszMenuName = nullptr;
        wc.lpszClassName = wideClassName.c_str();
        
        if (!RegisterClassExW(&wc)) {
            std::wstring wideErrorMsg = utf8ToWide("窗口类注册失败");
            std::wstring wideErrorTitle = utf8ToWide("错误");
            MessageBoxW(nullptr, wideErrorMsg.c_str(), wideErrorTitle.c_str(), MB_ICONERROR | MB_OK);
            return false;
        }
        
        registered = true;
        return true;
    }
    
    // 窗口过程函数
    LRESULT CALLBACK Window::windowProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam) {
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
    
    // 窗口构造函数
    // 使用Windows宽字符API直接设置中文标题，确保正确显示
    Window::Window(int w, int h, const std::string& winTitle) 
        : width(w), height(h), title(winTitle), initialized(false) {        
        // 使用传入的标题参数并转换为宽字符
        std::wstring wideTitle = utf8ToWide(winTitle);
        
        // 调试信息输出 - 全局控制台设置已在程序启动时完成
        std::wcout << L"[构造函数]准备设置窗口标题: " << wideTitle << std::endl;
        
        // 注册窗口类
        if (!registerClass()) {
            return;
        }
        
        // 保存原标题
        title = winTitle;
        std::wcout << L"标题长度: " << utf8ToWide(winTitle).length() << L" 字符" << std::endl;
        
        // 将UTF-8窗口类名转换为宽字符
        std::wstring wideClassName = utf8ToWide(WINDOW_CLASS_NAME);
        
        // 创建窗口（使用宽字符版本）
        hWnd = CreateWindowExW(
            0,                           // 扩展窗口样式
            wideClassName.c_str(),       // 窗口类名（宽字符版本）
            wideTitle.c_str(),           // 窗口标题（使用c_str()获取宽字符指针）
            WS_OVERLAPPEDWINDOW & ~WS_THICKFRAME & ~WS_MAXIMIZEBOX, // 窗口样式（禁止调整大小和最大化）
            CW_USEDEFAULT, CW_USEDEFAULT, // 窗口位置
            width, height,               // 窗口大小
            nullptr,                     // 父窗口
            nullptr,                     // 菜单
            GetModuleHandle(nullptr),    // 应用程序实例
            this                         // 窗口创建数据（传递this指针）
        );
        
        if (!hWnd) {
            std::wstring wideErrorMsg = utf8ToWide("窗口创建失败");
            std::wstring wideErrorTitle = utf8ToWide("错误");
            MessageBoxW(nullptr, wideErrorMsg.c_str(), wideErrorTitle.c_str(), MB_ICONERROR | MB_OK);
            return;
        }
        
        // 获取设备上下文
        hdc = GetDC(hWnd);
        
        // 创建内存设备上下文用于双缓冲
        memDC = CreateCompatibleDC(hdc);
        
        // 创建位图
        hBitmap = CreateCompatibleBitmap(hdc, width, height);
        
        // 选择位图到内存DC
        SelectObject(memDC, hBitmap);
        
        // 显示窗口
        ShowWindow(hWnd, SW_SHOW);
        UpdateWindow(hWnd);
        // 先创建支持中文的字体
        HFONT hFont = CreateFontW(
            16, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE, 
            DEFAULT_CHARSET, // 对于中文字体，使用DEFAULT_CHARSET通常就足够了
            OUT_OUTLINE_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY, 
            VARIABLE_PITCH | FF_DONTCARE, L"Microsoft YaHei"
        );
        
        if (!hFont) {
            std::wcerr << L"[字体]初始字体创建失败，错误代码: " << GetLastError() << std::endl;
            // 尝试使用更通用的中文字体
            hFont = CreateFontW(
                16, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE, 
                DEFAULT_CHARSET,
                OUT_OUTLINE_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY, 
                VARIABLE_PITCH | FF_DONTCARE, L"SimHei"
            );
            
            if (!hFont) {
                std::wcerr << L"[字体]备用字体创建失败，错误代码: " << GetLastError() << std::endl;
                // 尝试使用系统默认字体
                hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
            }
        }
        
        initialized = true;
        
        // 先设置窗口字体，然后再设置标题
        if (hWnd && hFont) {
            // 对标题栏和客户区域都设置字体
            SendMessageW(hWnd, WM_SETFONT, (WPARAM)hFont, TRUE);
            SendMessageW(GetParent(hWnd), WM_SETFONT, (WPARAM)hFont, TRUE);
            std::wcout << L"[字体]成功设置窗口字体" << std::endl;
        }
        
        // 强制窗口使用宽字符标题并多次刷新
        std::wcout << L"[标题]设置窗口标题: " << wideTitle << L" (长度: " << wideTitle.length() << L")" << std::endl;
        
        // 设置窗口标题
        BOOL titleResult = SetWindowTextW(hWnd, wideTitle.c_str());
        if (!titleResult) {
            std::wcerr << L"[标题]SetWindowTextW失败，错误代码: " << GetLastError() << std::endl;
        }
        
        // 强制重绘整个窗口，包括标题栏
        RedrawWindow(hWnd, NULL, NULL, RDW_FRAME | RDW_INVALIDATE | RDW_UPDATENOW);
        
        // 延迟一小段时间后再次重绘，确保系统有足够时间处理字体更改
        Sleep(100);
        RedrawWindow(hWnd, NULL, NULL, RDW_FRAME | RDW_INVALIDATE | RDW_UPDATENOW);
    }
    
    // 窗口析构函数
    Window::~Window() {
        if (!initialized) return;
        
        // 释放资源
        if (hBitmap) DeleteObject(hBitmap);
        if (memDC) DeleteDC(memDC);
        if (hdc) ReleaseDC(hWnd, hdc);
        
        // 销毁窗口
        if (hWnd) DestroyWindow(hWnd);
        
        initialized = false;
    }
    
    // 关闭窗口
    void Window::close() {
        if (initialized && hWnd) {
            DestroyWindow(hWnd);
            initialized = false;
        }
    }
    
    // 检查窗口是否打开
    bool Window::isOpen() const {
        return initialized;
    }
    
    // 处理窗口事件
    bool Window::pollEvents() {
        if (!initialized) return false;
        
        MSG msg;
        while (PeekMessage(&msg, hWnd, 0, 0, PM_REMOVE)) {
            if (msg.message == WM_QUIT) {
                initialized = false;
                return false;
            }
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }
        return true;
    }
    
    // 清除窗口
    void Window::clear(const Color& color) {
        if (!initialized) return;
        
        // 创建颜色刷
        HBRUSH brush = CreateSolidBrush(RGB(color.r, color.g, color.b));
        
        // 创建矩形
        RECT rect = {0, 0, width, height};
        
        // 填充矩形
        FillRect(memDC, &rect, brush);
        
        // 释放刷
        DeleteObject(brush);
    }
    
    // 显示绘制内容
    void Window::display() {
        if (!initialized) return;
        
        // 将内存DC的内容复制到窗口DC
        BitBlt(hdc, 0, 0, width, height, memDC, 0, 0, SRCCOPY);
    }
    
    // 绘制矩形
    void Window::drawRect(const Rect& rect, const Color& color) {
        if (!initialized) return;
        
        // 创建笔
        HPEN pen = CreatePen(PS_SOLID, 1, RGB(color.r, color.g, color.b));
        HPEN oldPen = (HPEN)SelectObject(memDC, pen);
        
        // 创建矩形
        RECT r = {rect.x, rect.y, rect.x + rect.width, rect.y + rect.height};
        
        // 绘制矩形边框
        Rectangle(memDC, r.left, r.top, r.right, r.bottom);
        
        // 恢复旧笔
        SelectObject(memDC, oldPen);
        
        // 释放笔
        DeleteObject(pen);
    }
    
    // 填充矩形
    void Window::fillRect(const Rect& rect, const Color& color) {
        if (!initialized) return;
        
        // 创建颜色刷
        HBRUSH brush = CreateSolidBrush(RGB(color.r, color.g, color.b));
        HBRUSH oldBrush = (HBRUSH)SelectObject(memDC, brush);
        
        // 创建矩形
        RECT r = {rect.x, rect.y, rect.x + rect.width, rect.y + rect.height};
        
        // 填充矩形
        Rectangle(memDC, r.left, r.top, r.right, r.bottom);
        
        // 恢复旧刷
        SelectObject(memDC, oldBrush);
        
        // 释放刷
        DeleteObject(brush);
    }
}