// 简单的TorchScript测试程序
#include <torch/torch.h>
#include <torch/script.h>
#include <iostream>
#include <fstream>

int main() {
    std::cout << "=== 简单TorchScript测试程序 ===" << std::endl;
    
    try {
        // 打印PyTorch版本信息
        std::cout << "\nPyTorch版本信息:" << std::endl;
        std::cout << "  LibTorch版本: " << TORCH_VERSION << std::endl;
        std::cout << "  CUDA可用: " << (torch::cuda::is_available() ? "是" : "否") << std::endl;
        
        // 创建一个简单的张量
        std::cout << "\n创建测试张量..." << std::endl;
        auto tensor = torch::tensor({1.0, 2.0, 3.0});
        std::cout << "张量值: " << tensor << std::endl;
        
        // 检查模型文件是否存在
        std::string model_path = "../../src/models/add_model.pt";
        std::cout << "\n检查模型文件: " << model_path << std::endl;
        std::ifstream file(model_path);
        if (file.good()) {
            std::cout << "  文件存在" << std::endl;
        } else {
            std::cout << "  文件不存在" << std::endl;
        }
        file.close();
        
        std::cout << "\n测试完成!" << std::endl;
        return 0;
    } catch (const std::exception& e) {
        std::cerr << "发生异常: " << e.what() << std::endl;
        return 1;
    }
}