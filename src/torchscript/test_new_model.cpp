#include <torch/script.h>
#include <iostream>
#include <string>
#include <filesystem>

// 打印文件信息函数
void printFileInfo(const std::string& filePath) {
    std::cout << "\n检查文件: " << filePath << std::endl;
    
    std::filesystem::path path(filePath);
    
    if (std::filesystem::exists(path)) {
        std::cout << "✓ 文件存在" << std::endl;
        std::cout << "类型: " << (std::filesystem::is_regular_file(path) ? "普通文件" : "其他") << std::endl;
        std::cout << "大小: " << std::filesystem::file_size(path) << " 字节" << std::endl;
        
        // 获取绝对路径
        try {
            std::cout << "绝对路径: " << std::filesystem::canonical(path).string() << std::endl;
        } catch (const std::exception& e) {
            std::cout << "无法获取绝对路径: " << e.what() << std::endl;
        }
    } else {
        std::cout << "✗ 文件不存在" << std::endl;
    }
}

int main() {
    std::cout << "=== 测试新导出的TorchScript模型 ===" << std::endl;
    
    // 打印LibTorch版本信息
    std::cout << "\n当前使用的LibTorch版本: " << TORCH_VERSION << std::endl;
    
    // 新导出的模型路径
    std::string newModelPath = "../../bin/models/simple_add_model_v2.8.0.pt";
    
    // 检查文件信息
    printFileInfo(newModelPath);
    
    try {
        // 尝试加载新导出的模型
        std::cout << "\n尝试加载模型..." << std::endl;
        torch::jit::script::Module module = torch::jit::load(newModelPath);
        std::cout << "✓ 模型加载成功!" << std::endl;
        
        // 创建示例输入 - 注意这里的输入格式要与模型期望的格式匹配
        // 我们的模型接受一个包含两个元素的张量
        std::vector<torch::jit::IValue> inputs;
        inputs.push_back(torch::tensor({2.0, 3.0}));
        
        // 执行推理
        std::cout << "\n执行推理测试..." << std::endl;
        torch::Tensor output = module.forward(inputs).toTensor();
        
        // 打印输出结果
        std::cout << "推理结果: " << output.item<float>() << std::endl;
        
        // 验证结果是否正确
        if (std::abs(output.item<float>() - 5.0) < 1e-6) {
            std::cout << "✓ 测试成功: 结果符合预期!" << std::endl;
        } else {
            std::cout << "✗ 测试失败: 结果不符合预期" << std::endl;
        }
        
        return 0;
        
    } catch (const c10::Error& e) {
        std::cerr << "✗ 加载模型时出错 (c10::Error): " << e.msg() << std::endl;
        return 1;
    } catch (const std::exception& e) {
        std::cerr << "✗ 加载模型时出错 (std::exception): " << e.what() << std::endl;
        return 1;
    } catch (...) {
        std::cerr << "✗ 加载模型时出错: 未知错误" << std::endl;
        return 1;
    }
}