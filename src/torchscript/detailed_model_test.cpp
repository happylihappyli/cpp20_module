// 详细的模型测试程序 - 尝试不同的路径格式并提供更多调试信息

#include <torch/torch.h>
#include <torch/script.h>
#include <iostream>
#include <string>
#include <filesystem>

namespace fs = std::filesystem;

void printSystemInfo() {
    std::cout << "=== 系统信息 ===" << std::endl;
    std::cout << "LibTorch版本: " << TORCH_VERSION << std::endl;
    std::cout << "CUDA可用: " << (torch::cuda::is_available() ? "是" : "否") << std::endl;
    std::cout << "CPU核心数: " << torch::get_num_threads() << std::endl;
    std::cout << "================" << std::endl << std::endl;
}

bool checkFilePath(const std::string& path) {
    std::cout << "检查文件路径: " << path << std::endl;
    
    fs::path fsPath(path);
    
    if (!fs::exists(fsPath)) {
        std::cerr << "错误: 文件不存在!" << std::endl;
        return false;
    }
    
    if (!fs::is_regular_file(fsPath)) {
        std::cerr << "错误: 不是普通文件!" << std::endl;
        return false;
    }
    
    std::cout << "✓ 文件存在" << std::endl;
    std::cout << "文件大小: " << fs::file_size(fsPath) << " 字节" << std::endl;
    std::cout << "绝对路径: " << fs::canonical(fsPath).string() << std::endl;
    return true;
}

int main() {
    std::cout << "=== 详细模型测试程序 ===" << std::endl;
    
    // 打印系统信息
    printSystemInfo();
    
    // 测试基础PyTorch功能
    try {
        auto tensor = torch::tensor({1.0, 2.0, 3.0});
        std::cout << "PyTorch基础功能测试: 成功!" << std::endl;
        std::cout << "张量和: " << tensor.sum().item<float>() << std::endl << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "PyTorch基础功能测试: 失败!" << std::endl;
        std::cerr << "错误: " << e.what() << std::endl;
        return 1;
    }
    
    // 尝试不同的路径格式
    std::vector<std::string> modelPaths = {
        "e:/GitHub3/cpp20_module/bin/models/simple_add_model.pt",
        "e:\\GitHub3\\cpp20_module\\bin\\models\\simple_add_model.pt",
        "../../bin/models/simple_add_model.pt"
    };
    
    for (size_t i = 0; i < modelPaths.size(); ++i) {
        const auto& modelPath = modelPaths[i];
        std::cout << "\n=== 尝试加载模型 (方法" << (i+1) << ") ===" << std::endl;
        
        // 检查文件路径
        if (!checkFilePath(modelPath)) {
            std::cout << "跳过此路径..." << std::endl;
            continue;
        }
        
        try {
            std::cout << "\n开始加载模型..." << std::endl;
            auto startTime = std::chrono::high_resolution_clock::now();
            
            // 尝试加载模型
            torch::jit::script::Module module = torch::jit::load(modelPath);
            
            auto endTime = std::chrono::high_resolution_clock::now();
            auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(endTime - startTime).count();
            
            std::cout << "✓ 模型加载成功! (耗时: " << duration << " ms)" << std::endl;
            std::cout << "模型类型: " << module.type().name().value() << std::endl;
            
            // 尝试执行模型
            try {
                std::cout << "\n尝试执行模型推理..." << std::endl;
                auto input = torch::tensor({2.0, 3.0});
                std::vector<torch::jit::IValue> inputs{input};
                
                auto output = module.forward(inputs).toTensor();
                std::cout << "✓ 推理成功!" << std::endl;
                std::cout << "输入: [2.0, 3.0]" << std::endl;
                std::cout << "输出: " << output.item<float>() << std::endl;
                
                std::cout << "\n=== 测试成功完成! ===" << std::endl;
                return 0;
            } catch (const std::exception& e) {
                std::cerr << "推理失败: " << e.what() << std::endl;
                std::cout << "继续尝试其他路径..." << std::endl;
            }
            
        } catch (const torch::Error& e) {
            std::cerr << "PyTorch错误: " << e.what() << std::endl;
            std::cerr << "可能的原因: " << std::endl;
            std::cerr << "1. 模型版本与LibTorch版本不兼容 (LibTorch " << TORCH_VERSION << ")" << std::endl;
            std::cerr << "2. 模型文件格式问题" << std::endl;
            std::cerr << "3. PyTorch内部错误" << std::endl;
        } catch (const std::exception& e) {
            std::cerr << "标准异常: " << e.what() << std::endl;
        }
    }
    
    std::cout << "\n=== 所有路径都尝试失败 ===" << std::endl;
    std::cout << "建议解决方案: " << std::endl;
    std::cout << "1. 使用与当前LibTorch版本(" << TORCH_VERSION << ")匹配的PyTorch重新导出模型" << std::endl;
    std::cout << "2. 检查模型文件是否损坏" << std::endl;
    std::cout << "3. 确认所有必要的DLL文件已正确复制" << std::endl;
    
    return 1;
}