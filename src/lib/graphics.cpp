// 使用Windows GDI实现基本的图形绘制功能

#include "graphics.h"
#include <windows.h>
#include <string>

namespace graphics {
    // 定义窗口类名常量
    const char* Window::WINDOW_CLASS_NAME = "GraphicsWindowClass";
    
    // 静态成员初始化
    bool Window::registerClass() {
        static bool registered = false;
        if (registered) return true;
        
        WNDCLASSEX wc = {
            sizeof(WNDCLASSEX),
            CS_HREDRAW | CS_VREDRAW | CS_OWNDC,
            windowProc,
            0,
            0,
            GetModuleHandle(nullptr),
            nullptr,
            LoadCursor(nullptr, IDC_ARROW),
            (HBRUSH)(COLOR_WINDOW + 1),
            nullptr,
            WINDOW_CLASS_NAME,
            nullptr
        };
        
        if (!RegisterClassEx(&wc)) {
            MessageBox(nullptr, "窗口类注册失败", "错误", MB_ICONERROR | MB_OK);
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
    Window::Window(int w, int h, const std::string& winTitle) 
        : width(w), height(h), title(winTitle), initialized(false) {
        // 注册窗口类
        if (!registerClass()) {
            return;
        }
        
        // 创建窗口
        hWnd = CreateWindowEx(
            0,                           // 扩展窗口样式
            WINDOW_CLASS_NAME,           // 窗口类名
            title.c_str(),               // 窗口标题
            WS_OVERLAPPEDWINDOW & ~WS_THICKFRAME & ~WS_MAXIMIZEBOX, // 窗口样式（禁止调整大小和最大化）
            CW_USEDEFAULT, CW_USEDEFAULT, // 窗口位置
            width, height,               // 窗口大小
            nullptr,                     // 父窗口
            nullptr,                     // 菜单
            GetModuleHandle(nullptr),    // 应用程序实例
            nullptr                      // 附加数据
        );
        
        if (!hWnd) {
            MessageBox(nullptr, "窗口创建失败", "错误", MB_ICONERROR | MB_OK);
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
        
        initialized = true;
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