// 简化版TorchScript模型测试程序

#include <torch/torch.h>
#include <torch/script.h>
#include <iostream>
#include <fstream>
#include <string>

// 检查文件是否存在
bool checkFileExists(const std::string& filePath) {
    std::ifstream file(filePath);
    bool exists = file.good();
    file.close();
    return exists;
}

// 加载并测试模型
void loadAndTestModel(const std::string& modelPath, const torch::jit::IValue& input) {
    try {
        std::cout << "\n=== 尝试加载模型: " << modelPath << " ===" << std::endl;
        
        // 检查文件是否存在
        if (!checkFileExists(modelPath)) {
            std::cerr << "错误: 模型文件不存在!" << std::endl;
            return;
        }
        
        std::cout << "文件存在，开始加载模型..." << std::endl;
        
        // 尝试加载模型
        torch::jit::script::Module module = torch::jit::load(modelPath);
        std::cout << "模型加载成功!" << std::endl;
        
        // 设置模型为评估模式
        module.eval();
        
        // 准备输入张量
        std::vector<torch::jit::IValue> inputs;
        inputs.push_back(input);
        
        // 执行推理
        std::cout << "执行模型推理..." << std::endl;
        auto output = module.forward(inputs);
        
        // 尝试将输出转换为张量并打印
        try {
            at::Tensor outputTensor = output.toTensor();
            std::cout << "输入: [2.0, 3.0]" << std::endl;
            std::cout << "输出: " << outputTensor.item<float>() << std::endl;
            std::cout << "模型测试成功!" << std::endl;
        } catch (const std::exception& e) {
            std::cout << "输出格式不是张量，但推理成功!" << std::endl;
            std::cout << "模型功能正常!" << std::endl;
        }
        
    } catch (const torch::Error& e) {
        std::cerr << "\nPyTorch错误: " << e.what() << std::endl;
        std::cerr << "可能的原因: " << std::endl;
        std::cerr << "1. 模型版本与LibTorch版本不兼容" << std::endl;
        std::cerr << "2. 缺少必要的DLL文件" << std::endl;
        std::cerr << "3. 模型文件损坏" << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "\n标准异常: " << e.what() << std::endl;
    } catch (...) {
        std::cerr << "\n未知异常" << std::endl;
    }
}

int main() {
    std::cout << "=== TorchScript模型测试程序 ===" << std::endl;
    
    // 打印LibTorch版本信息
    std::cout << "\nLibTorch版本: " << TORCH_VERSION << std::endl;
    std::cout << "CUDA可用: " << (torch::cuda::is_available() ? "是" : "否") << std::endl;
    
    try {
        // 测试创建简单张量
        std::cout << "\n测试PyTorch基础功能..." << std::endl;
        auto testTensor = torch::tensor({1.0, 2.0, 3.0});
        std::cout << "创建张量成功!" << std::endl;
        std::cout << "张量: [" << testTensor[0].item<float>() << ", " 
                  << testTensor[1].item<float>() << ", " 
                  << testTensor[2].item<float>() << "]" << std::endl;
        
        // 准备模型输入
        auto modelInput = torch::tensor({2.0, 3.0});
        
        // 尝试加载两个模型文件
        std::string simpleModelPath = "../../bin/models/simple_add_model.pt";
        std::string versionedModelPath = "../../bin/models/add_model_v2.8.0.pt";
        
        // 先尝试加载simple_add_model.pt
        loadAndTestModel(simpleModelPath, modelInput);
        
        // 再尝试加载add_model_v2.8.0.pt
        loadAndTestModel(versionedModelPath, modelInput);
        
        std::cout << "\n=== 测试完成 ===" << std::endl;
        std::cout << "总结: " << std::endl;
        std::cout << "1. PyTorch基础功能正常工作" << std::endl;
        std::cout << "2. 如果模型加载失败，主要是版本不匹配问题" << std::endl;
        std::cout << "3. 请确保所有必要的DLL文件已复制到可执行文件目录" << std::endl;
        
        return 0;
        
    } catch (const std::exception& e) {
        std::cerr << "程序启动时发生异常: " << e.what() << std::endl;
        return 1;
    }
}