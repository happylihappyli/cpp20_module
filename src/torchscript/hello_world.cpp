// 极简Hello World程序
// 用于测试基本的C++编译和运行环境

#include <iostream>
#include <string>

int main() {
    try {
        std::cout << "=== Hello World测试程序 ===" << std::endl;
        std::cout << "  这是一个不依赖任何第三方库的极简C++程序" << std::endl;
        
        // 测试基本的字符串操作
        std::string message = "Hello, C++ World!";
        std::cout << "\n" << message << std::endl;
        
        // 测试基本的数学运算
        int a = 5;
        int b = 3;
        std::cout << "\n基本数学运算测试：" << std::endl;
        std::cout << "  " << a << " + " << b << " = " << (a + b) << std::endl;
        std::cout << "  " << a << " - " << b << " = " << (a - b) << std::endl;
        std::cout << "  " << a << " * " << b << " = " << (a * b) << std::endl;
        std::cout << "  " << a << " / " << b << " = " << (a / b) << std::endl;
        
        std::cout << "\n程序运行成功！基本的C++功能正常工作。" << std::endl;
        return 0;
    } catch (const std::exception& e) {
        std::cerr << "\n程序执行异常: " << e.what() << std::endl;
        return 1;
    } catch (...) {
        std::cerr << "\n发生未知异常!" << std::endl;
        return 1;
    }
}