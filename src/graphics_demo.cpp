// graphics_demo.cpp - 图形模块演示程序
// 展示如何使用graphics模块创建窗口并绘制彩色方块

#include "lib/graphics.h"
#include <iostream>
#include <string>
#include <chrono>
#include <thread>

using namespace graphics;
using namespace std;

int main() {
    // 创建一个640x480的窗口
    Window window(640, 480, "C++20 图形模块演示 - 方块绘制");
    
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