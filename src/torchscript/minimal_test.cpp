// 最小化的TorchScript测试程序
// 直接包含必要的头文件

#include "torch/torch.h"
#include "torch/script.h"
#include <iostream>

int main() {
    std::cout << "TorchScript 最小测试程序" << std::endl;
    
    try {
        // 创建一个简单的张量
        torch::Tensor tensor = torch::rand({2, 3});
        std::cout << "创建张量成功!" << std::endl;
        
        // 打印张量的值
        std::cout << "张量值: " << std::endl << tensor << std::endl;
        
        // 检查CUDA是否可用
        std::cout << "CUDA 可用: " << (torch::cuda::is_available() ? "是" : "否") << std::endl;
    } catch (const c10::Error& e) {
        std::cerr << "错误: " << e.what() << std::endl;
        return 1;
    }
    
    std::cout << "测试完成!" << std::endl;
    return 0;
}