// 最小化的模型测试程序 - 使用绝对路径加载模型

#include <torch/torch.h>
#include <torch/script.h>
#include <iostream>
#include <string>

int main() {
    std::cout << "=== 最小化模型测试程序 ===" << std::endl;
    
    // 打印LibTorch版本
    std::cout << "LibTorch版本: " << TORCH_VERSION << std::endl;
    
    try {
        // 创建简单张量测试基础功能
        auto tensor = torch::tensor({1.0, 2.0, 3.0});
        std::cout << "基础功能正常: " << tensor.sum().item<float>() << std::endl;
        
        // 使用绝对路径加载模型
        std::string modelPath = "e:\\GitHub3\\cpp20_module\\bin\\models\\simple_add_model.pt";
        std::cout << "\n尝试加载模型: " << modelPath << std::endl;
        
        // 尝试加载模型
        torch::jit::script::Module module = torch::jit::load(modelPath);
        std::cout << "模型加载成功!" << std::endl;
        
        // 准备输入
        auto input = torch::tensor({2.0, 3.0});
        std::vector<torch::jit::IValue> inputs{input};
        
        // 执行推理
        auto output = module.forward(inputs).toTensor();
        std::cout << "输入: [2.0, 3.0]" << std::endl;
        std::cout << "输出: " << output.item<float>() << std::endl;
        
        std::cout << "\n测试成功!" << std::endl;
        return 0;
        
    } catch (const torch::Error& e) {
        std::cerr << "\nPyTorch错误: " << e.what() << std::endl;
        std::cerr << "可能是版本不兼容问题" << std::endl;
        return 1;
    } catch (const std::exception& e) {
        std::cerr << "\n标准异常: " << e.what() << std::endl;
        return 1;
    }
}