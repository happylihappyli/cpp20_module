// 最小化的TorchScript测试程序
// 不依赖外部模型文件，直接在代码中创建和使用模型
// 超级简化版：移除所有可能导致问题的复杂操作

#include <torch/torch.h>
#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::cout << "=== 最小化TorchScript测试程序 ===" << std::endl;
    
    try {
        // 创建一个简单的张量
        std::cout << "创建张量..." << std::endl;
        auto tensor = torch::tensor({1.0, 2.0, 3.0});
        
        // 只检查张量的维度，不打印具体内容
        std::cout << "张量维度: " << tensor.dim() << std::endl;
        
        // 执行简单的加法
        std::cout << "执行加法操作..." << std::endl;
        auto sum = tensor.sum();
        
        // 获取标量值（使用long long类型避免浮点精度问题）
        long long sum_value = sum.item<long long>();
        std::cout << "张量总和: " << sum_value << std::endl;
        
        // 验证结果是否正确
        if (sum_value == 6) {
            std::cout << "\n测试成功! PyTorch基础功能正常工作。" << std::endl;
            std::cout << "这表明PyTorch库已正确安装。" << std::endl;
            std::cout << "问题可能出在：" << std::endl;
            std::cout << "1. TorchScript模型加载功能" << std::endl;
            std::cout << "2. 模型版本与LibTorch版本不兼容" << std::endl;
            std::cout << "3. 张量打印功能（之前的崩溃可能与此有关）" << std::endl;
        } else {
            std::cout << "\n测试结果不正确!" << std::endl;
            return 1;
        }
        
        return 0;
    } catch (...) {
        std::cerr << "程序执行失败!" << std::endl;
        return 1;
    }
}