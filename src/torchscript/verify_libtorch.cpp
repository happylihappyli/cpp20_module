#include <iostream>
#include <string>
#include <torch/torch.h>

int main() {
    std::cout << "=== C++ LibTorch验证程序 ===" << std::endl;
    std::cout << "LibTorch版本: " << TORCH_VERSION << std::endl;
    
    // 检查基本功能
    try {
        auto tensor = torch::tensor({1.0, 2.0, 3.0});
        std::cout << "创建的张量: " << tensor << std::endl;
        std::cout << "✓ 基本张量操作正常" << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "✗ 张量操作失败: " << e.what() << std::endl;
        return 1;
    }
    
    // 检查模型版本兼容性提示
    std::cout << "\n=== 版本兼容性提示 ===" << std::endl;
    std::cout << "注意：PyTorch和LibTorch版本需要匹配才能正常加载模型" << std::endl;
    std::cout << "- 当前LibTorch版本: " << TORCH_VERSION << std::endl;
    std::cout << "- 已更新为与LibTorch 2.8.0+cu126版本兼容" << std::endl;
    
    // 尝试加载模型
    std::string model_path = "../../bin/models/simple_add_model_v2.8.0.pt";
    try {
        std::cout << "\n尝试加载模型: " << model_path << std::endl;
        auto model = torch::jit::load(model_path);
        std::cout << "✓ 模型加载成功！" << std::endl;
        
        // 测试模型推理
        std::vector<torch::jit::IValue> inputs;
        inputs.push_back(torch::tensor({2.0, 3.0}));
        auto output = model.forward(inputs).toTensor();
        std::cout << "推理结果: " << output.item<float>() << std::endl;
        
        if (std::abs(output.item<float>() - 5.0) < 1e-6) {
            std::cout << "✓ 推理结果正确！" << std::endl;
        } else {
            std::cout << "✗ 推理结果不正确" << std::endl;
        }
        
    } catch (const c10::Error& e) {
        std::cerr << "✗ 模型加载失败 (c10::Error): " << e.msg() << std::endl;
        std::cerr << "✗ 可能原因：1. 版本不兼容 2. 模型文件不存在 3. CUDA环境问题" << std::endl;
        std::cerr << "✗ 建议：确认模型文件路径正确，检查CUDA驱动是否安装" << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "✗ 模型加载失败 (std::exception): " << e.what() << std::endl;
    } catch (...) {
        std::cerr << "✗ 模型加载失败 (未知异常)" << std::endl;
    }
    
    std::cout << "\n=== 验证完成 ===" << std::endl;
    std::cout << "提示: 如果需要使用特定版本的LibTorch，请确保:\n"
              << "1. 正确设置LIBTORCH环境变量为: D:/Code\\libtorch-win-shared-with-deps-2.8.0+cu126\\libtorch\\n"
              << "2. 更新项目的构建配置文件\n"
              << "3. 确保程序可以访问LibTorch的DLL文件\n"
              << "4. 检查CUDA 12.6环境配置" << std::endl;
    
    return 0;
}