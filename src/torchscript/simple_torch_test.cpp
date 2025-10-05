// 简单的LibTorch测试程序
// 用于验证LibTorch库是否能正常工作
#include <torch/torch.h>
#include <iostream>

int main() {
    try {
        std::cout << "=== LibTorch测试程序 ===" << std::endl;
        std::cout << "PyTorch版本: " << TORCH_VERSION_MAJOR << "." << TORCH_VERSION_MINOR << "." << TORCH_VERSION_PATCH << std::endl;
        
        // 创建一个简单的张量
        auto tensor = torch::tensor({1.0, 2.0, 3.0});
        std::cout << "创建的张量: " << tensor << std::endl;
        
        // 进行简单的张量操作
        auto result = tensor * 2;
        std::cout << "张量乘以2: " << result << std::endl;
        
        // 检查CUDA是否可用
        if (torch::cuda::is_available()) {
            std::cout << "CUDA可用!" << std::endl;
            // 将张量移至GPU
            auto tensor_cuda = tensor.to(torch::kCUDA);
            std::cout << "CUDA上的张量: " << tensor_cuda << std::endl;
        } else {
            std::cout << "CUDA不可用，使用CPU" << std::endl;
        }
        
        std::cout << "=== 测试完成! ===" << std::endl;
        return 0;
    } catch (const std::exception& e) {
        std::cerr << "错误: " << e.what() << std::endl;
        return 1;
    }
}