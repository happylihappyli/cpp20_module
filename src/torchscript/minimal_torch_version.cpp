// 极简LibTorch版本检测程序
// 用于测试LibTorch库的基本功能

#include <torch/torch.h>
#include <iostream>
#include <windows.h>

// 检查DLL是否已加载
bool is_dll_loaded(const std::string& dll_name) {
    HMODULE hModule = GetModuleHandleA(dll_name.c_str());
    return (hModule != NULL);
}

// 打印DLL加载状态
void print_dll_status() {
    std::cout << "=== PyTorch DLL加载状态检查 ===" << std::endl;
    std::cout << "torch.dll: " << (is_dll_loaded("torch.dll") ? "已加载" : "未加载") << std::endl;
    std::cout << "torch_cpu.dll: " << (is_dll_loaded("torch_cpu.dll") ? "已加载" : "未加载") << std::endl;
    std::cout << "c10.dll: " << (is_dll_loaded("c10.dll") ? "已加载" : "未加载") << std::endl;
}

int main() {
    try {
        std::cout << "=== 极简LibTorch测试程序 ===" << std::endl;
        
        // 打印PyTorch版本信息
        std::cout << "\nPyTorch版本信息:" << std::endl;
        std::cout << "  LibTorch版本: " << TORCH_VERSION << std::endl;
        
        // 检查DLL加载状态
        print_dll_status();
        
        // 检查CUDA可用性
        std::cout << "\nCUDA检查:" << std::endl;
        std::cout << "  CUDA可用: " << (torch::cuda::is_available() ? "是" : "否") << std::endl;
        
        // 创建一个简单的张量
        std::cout << "\n创建张量测试:" << std::endl;
        auto tensor = torch::tensor({1.0, 2.0, 3.0});
        std::cout << "  张量创建成功!" << std::endl;
        std::cout << "  张量维度: " << tensor.dim() << std::endl;
        std::cout << "  张量元素个数: " << tensor.numel() << std::endl;
        std::cout << "  张量第一个元素值: " << tensor[0].item<float>() << std::endl;
        
        std::cout << "\n测试完成！所有功能正常。" << std::endl;
        return 0;
    } catch (const std::exception& e) {
        std::cerr << "\n程序执行异常: " << e.what() << std::endl;
        return 1;
    } catch (...) {
        std::cerr << "\n发生未知异常!" << std::endl;
        return 1;
    }
}