// 最简单的TorchScript测试程序
#include <iostream>
#include <torch/torch.h>

int main() {
    std::cout << "TorchScript 测试程序" << std::endl;
    
    try {
        // 创建一个简单的张量
        torch::Tensor tensor = torch::rand({2, 3});
        std::cout << "创建张量成功!" << std::endl;
        
        // 检查CUDA是否可用
        std::cout << "CUDA 可用: " << (torch::cuda::is_available() ? "是" : "否") << std::endl;
    } catch (const c10::Error& e) {
        std::cerr << "错误: " << e.what() << std::endl;
        return 1;
    }
    
    std::cout << "测试完成!" << std::endl;
    return 0;
}