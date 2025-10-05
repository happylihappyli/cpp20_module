// graphics_demo.cpp - 图形模块演示程序
// 展示如何使用graphics模块创建窗口并绘制彩色方块

#include "lib/graphics.h"
#include <iostream>
#include <string>
#include <chrono>
#include <thread>
#include <windows.h>

// UTF-8字符串转换为宽字符
std::wstring utf8ToWide(const std::string& utf8) {
    int wideLen = MultiByteToWideChar(CP_UTF8, 0, utf8.c_str(), -1, NULL, 0);
    if (wideLen == 0) return L"";
    
    std::wstring wideStr(wideLen, 0);
    MultiByteToWideChar(CP_UTF8, 0, utf8.c_str(), -1, &wideStr[0], wideLen);
    return wideStr;
}

using namespace graphics;
using namespace std;

int main() {
    // 创建一个640x480的窗口，使用宽字符API设置中文标题
    std::string utf8Title = "中文标题测试";
    std::wstring wideTitle;
    
    // 输出调试信息到标准输出
    std::cout << "准备设置窗口标题: " << utf8Title << std::endl;
    std::cout << "标题长度: " << utf8Title.length() << " 字符" << std::endl;
    
    // 转换为宽字符
    wideTitle = utf8ToWide(utf8Title);
    
    // 在消息框中显示标题（使用宽字符版本）
    MessageBoxW(nullptr, wideTitle.c_str(), L"标题调试", MB_OK | MB_ICONINFORMATION);
    
    Window window(640, 480, utf8Title);
    
    // 检查窗口是否成功创建
    if (!window.isOpen()) {
        return 1;
    }
    
    // 方块的位置和大小
    int squareSize = 100;
    int squareX = (640 - squareSize) / 2;  // 居中显示
    int squareY = (480 - squareSize) / 2;
    
    // 方块颜色
    Color squareColor(0, 128, 255);  // 蓝色
    
    // 主循环
    while (window.isOpen()) {
        // 处理事件
        if (!window.pollEvents()) {
            break;
        }
        
        // 清除窗口背景为白色
        window.clear(Color(240, 240, 240));  // 浅灰色背景
        
        // 绘制一个边框为黑色的蓝色方块
        window.fillRect(Rect(squareX, squareY, squareSize, squareSize), squareColor);
        window.drawRect(Rect(squareX, squareY, squareSize, squareSize), Color(0, 0, 0));
        
        // 在窗口上显示
        window.display();
        
        // 简单的帧率控制
        this_thread::sleep_for(chrono::milliseconds(16));  // 大约60fps
    }
    
    return 0;
}