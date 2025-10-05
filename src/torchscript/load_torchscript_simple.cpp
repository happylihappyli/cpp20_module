// 简化版TorchScript模型加载程序
// 用于测试基本的模型加载和使用功能

#include <torch/torch.h>
#include <torch/script.h>
#include <iostream>
#include <fstream>
#include <string>
#include <windows.h>
#include <vector>

// 检查文件是否存在
bool file_exists(const std::string& path) {
    std::ifstream file(path);
    bool exists = file.good();
    file.close();
    return exists;
}

// 检查DLL是否已加载
bool is_dll_loaded(const std::string& dll_name) {
    HMODULE hModule = GetModuleHandleA(dll_name.c_str());
    return (hModule != NULL);
}

// 打印DLL加载状态
void print_dll_status() {
    std::vector<std::string> dlls;
    dlls.push_back("torch.dll");
    dlls.push_back("torch_cpu.dll");
    dlls.push_back("c10.dll");
    dlls.push_back("fbgemm.dll");
    dlls.push_back("libiomp5md.dll");
    
    std::cout << "\n=== PyTorch DLL加载状态 ===" << std::endl;
    
    for (size_t i = 0; i < dlls.size(); ++i) {
        const std::string& dll = dlls[i];
        bool loaded = is_dll_loaded(dll);
        std::cout << dll << ": " << (loaded ? "已加载" : "未加载") << std::endl;
    }
}

// 显示解决方案摘要
void show_solution() {
    std::cout << "\n===== 解决方案摘要 =====