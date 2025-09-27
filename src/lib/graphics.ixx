// graphics.ixx - C++20 图形模块接口文件
// 使用Windows GDI实现基本的图形绘制功能

import <windows.h>;
import <string>;
import <cstdint>;

export module graphics;

export namespace graphics {
    // 颜色结构体，用于指定绘制颜色
    struct Color {
        int r, g, b, a; // 红、绿、蓝、透明度
        
        // 构造函数
        Color(int red = 0, int green = 0, int blue = 0, int alpha = 255)
            : r(red), g(green), b(blue), a(alpha) {}
    };
    
    // 点结构体
    struct Point {
        int x, y;
        
        Point(int x_coord = 0, int y_coord = 0) : x(x_coord), y(y_coord) {}
    };
    
    // 矩形结构体
    struct Rect {
        int x, y, width, height;
        
        Rect(int x_pos = 0, int y_pos = 0, int w = 0, int h = 0)
            : x(x_pos), y(y_pos), width(w), height(h) {}
    };
    
    // 窗口类，用于创建和管理绘图窗口
    class Window {
    public:
        // 创建窗口
        Window(int width, int height, const std::string& title);
        
        // 关闭窗口
        void close();
        
        // 检查窗口是否打开
        bool isOpen() const;
        
        // 处理窗口事件
        bool pollEvents();
        
        // 清除窗口
        void clear(const Color& color = Color(255, 255, 255));
        
        // 显示绘制内容
        void display();
        
        // 绘制矩形
        void drawRect(const Rect& rect, const Color& color = Color(0, 0, 0));
        
        // 填充矩形
        void fillRect(const Rect& rect, const Color& color = Color(0, 0, 0));
        
        // 析构函数
        ~Window();
        
    private:
        // 内部窗口句柄
        HWND hWnd;
        
        // 设备上下文
        HDC hdc;
        
        // 内存设备上下文，用于双缓冲
        HDC memDC;
        
        // 位图
        HBITMAP hBitmap;
        
        // 窗口宽度和高度
        int width, height;
        
        // 窗口标题
        std::string title;
        
        // 窗口类名
        static const char* WINDOW_CLASS_NAME;
        
        // 注册窗口类
        static bool registerClass();
        
        // 窗口过程
        static LRESULT CALLBACK windowProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam);
        
        // 检查窗口是否初始化
        bool initialized;
    };
}