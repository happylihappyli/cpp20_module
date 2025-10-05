// C++ TorchScript 修复版本
// 包含完整的错误处理和解决方案建议

#include <torch/torch.h>
#include <torch/script.h>
#include <iostream>
#include <fstream>
#include <string>
#include <chrono>
#include <windows.h>
#include <vector>
#include <filesystem>

// 检查文件是否存在
bool check_file_exists(const std::string& file_path) {
    std::ifstream file(file_path);
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
    std::vector<std::string> required_dlls;
    required_dlls.push_back("torch.dll");
    required_dlls.push_back("torch_cpu.dll");
    required_dlls.push_back("c10.dll");
    required_dlls.push_back("fbgemm.dll");
    required_dlls.push_back("libiomp5md.dll");
    
    std::cout << "\n=== PyTorch DLL加载状态检查 ===" << std::endl;
    bool all_loaded = true;
    
    for (size_t i = 0; i < required_dlls.size(); ++i) {
        const std::string& dll = required_dlls[i];
        bool loaded = is_dll_loaded(dll);
        std::cout << dll << ": " << (loaded ? "已加载" : "未加载") << std::endl;
        if (!loaded) all_loaded = false;
    }
    
    if (!all_loaded) {
        std::cout << "\n警告: 缺少关键DLL文件!" << std::endl;
        std::cout << "请运行 copy_torch_dlls.bat 脚本复制所有必要的DLL文件。" << std::endl;
    }
}

// 打印详细的加载模型过程和错误信息
void run_torchscript_model(const std::string& model_name, const std::string& model_path, 
                           const std::vector<torch::jit::IValue>& inputs, 
                           bool print_output = true) {
    try {
        std::cout << "\n=== 加载" << model_name << " ===" << std::endl;
        std::cout << "模型路径: " << model_path << std::endl;
        
        // 检查文件是否存在
        if (!check_file_exists(model_path)) {
            std::cerr << "错误: 模型文件不存在!" << std::endl;
            return;
        }
        
        std::cout << "文件存在，开始加载..." << std::endl;
        
        // 打印文件大小信息
        std::ifstream file(model_path, std::ios::binary | std::ios::ate);
        std::streamsize size = file.tellg();
        file.close();
        std::cout << "模型文件大小: " << size << " 字节" << std::endl;
        
        // 记录加载时间
        auto start_time = std::chrono::high_resolution_clock::now();
        
        // 尝试加载模型
        std::cout << "正在调用torch::jit::load()函数..." << std::endl;
        torch::jit::script::Module module = torch::jit::load(model_path);
        
        auto end_time = std::chrono::high_resolution_clock::now();
        auto load_time = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();
        
        std::cout << "模型加载成功！(耗时: " << load_time << "ms)" << std::endl;
        
        // 设置模型为评估模式
        module.eval();
        
        // 记录推理时间
        start_time = std::chrono::high_resolution_clock::now();
        
        // 执行模型
        std::cout << "正在调用module.forward()函数..." << std::endl;
        at::Tensor output = module.forward(inputs).toTensor();
        
        end_time = std::chrono::high_resolution_clock::now();
        auto inference_time = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();
        
        std::cout << "模型推理成功！(耗时: " << inference_time << "ms)" << std::endl;
        
        if (print_output) {
            // 打印结果
            std::cout << "输入: [2.0, 3.0]" << std::endl;
            std::cout << "输出: " << output.item<float>() << std::endl;
            std::cout << "\n测试成功！模型正常工作。" << std::endl;
        }
        
    } catch (const torch::Error& e) {
        std::cerr << "\n===== PyTorch错误详情 =====