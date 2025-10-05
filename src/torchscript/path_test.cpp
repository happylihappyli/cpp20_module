// 简单的路径测试程序

#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::cout << "=== 路径测试程序 ===" << std::endl;
    
    // 测试模型文件路径
    std::string modelPath = "e:/GitHub3/cpp20_module/bin/models/simple_add_model.pt";
    std::cout << "测试路径: " << modelPath << std::endl;
    
    // 尝试打开文件检查是否存在
    std::ifstream file(modelPath, std::ios::binary);
    if (file.is_open()) {
        std::cout << "✓ 文件存在并可以打开！" << std::endl;
        
        // 获取文件大小
        file.seekg(0, std::ios::end);
        std::streampos fileSize = file.tellg();
        std::cout << "文件大小: " << fileSize << " 字节" << std::endl;
        file.close();
        return 0;
    } else {
        std::cerr << "✗ 无法打开文件！" << std::endl;
        std::cerr << "错误代码: " << errno << std::endl;
        std::cerr << "错误信息: " << strerror(errno) << std::endl;
        return 1;
    }
}