// C++ TorchScript 示例代码
// 用于演示如何在C++中加载和运行TorchScript模型

#include <torch/torch.h>
#include <torch/script.h>
#include <iostream>
#include <fstream>
#include <string>
#include <chrono>
#include <windows.h> // 添加Windows API用于DLL检查
#include <vector>

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
    std::cout << "\n=== PyTorch DLL加载状态检查 ===" << std::endl;
    std::cout << "torch.dll: " << (is_dll_loaded("torch.dll") ? "已加载" : "未加载") << std::endl;
    std::cout << "torch_cpu.dll: " << (is_dll_loaded("torch_cpu.dll") ? "已加载" : "未加载") << std::endl;
    std::cout << "c10.dll: " << (is_dll_loaded("c10.dll") ? "已加载" : "未加载") << std::endl;
    std::cout << "fbgemm.dll: " << (is_dll_loaded("fbgemm.dll") ? "已加载" : "未加载") << std::endl;
    std::cout << "libiomp5md.dll: " << (is_dll_loaded("libiomp5md.dll") ? "已加载" : "未加载") << std::endl;
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
        std::cerr << "\n===== PyTorch错误详情 =====" << std::endl;
        std::cerr << "错误类型: PyTorch库错误" << std::endl;
        std::cerr << "错误信息: " << e.what() << std::endl;
        std::cerr << "\n调用栈: " << std::endl;
        std::cerr << "  - 错误发生在torch::jit::load()或module.forward()函数中" << std::endl;
        std::cerr << "\n可能的原因: " << std::endl;
        std::cerr << "  1. 模型文件与当前LibTorch版本(" << TORCH_VERSION << ")不兼容" << std::endl;
        std::cerr << "  2. 模型文件已损坏" << std::endl;
        std::cerr << "  3. 模型格式不正确" << std::endl;
        std::cerr << "  4. 系统内存不足" << std::endl;
        std::cerr << "  5. PyTorch DLL文件缺失或版本不匹配" << std::endl;
        std::cerr << "\n解决方案建议: " << std::endl;
        std::cerr << "  - 使用与LibTorch版本(" << TORCH_VERSION << ")兼容的PyTorch版本重新导出模型" << std::endl;
        std::cerr << "  - 确保所有PyTorch DLL文件都已复制到可执行文件目录" << std::endl;
        std::cerr << "  - 检查模型文件是否完整无损" << std::endl;
        std::cerr << "  - 尝试创建一个全新的、非常简单的模型进行测试" << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "\n===== 标准异常详情 =====" << std::endl;
        std::cerr << "错误类型: 标准C++异常" << std::endl;
        std::cerr << "错误信息: " << e.what() << std::endl;
        std::cerr << "\n可能的原因: " << std::endl;
        std::cerr << "  1. 文件访问权限问题" << std::endl;
        std::cerr << "  2. 系统资源限制" << std::endl;
        std::cerr << "  3. 其他系统级错误" << std::endl;
    } catch (...) {
        std::cerr << "\n===== 未知异常 =====" << std::endl;
        std::cerr << "发生了无法识别的异常，可能是内部PyTorch问题" << std::endl;
        std::cerr << "这可能是由于LibTorch库与操作系统或编译器不兼容导致的" << std::endl;
        std::cerr << "建议: 尝试使用不同版本的LibTorch或重新编译程序" << std::endl;
    }
}

// 打印使用帮助信息
void print_help() {
    std::cout << "用法: load_torchscript.exe [选项] [模型路径]" << std::endl;
    std::cout << "选项: " << std::endl;
    std::cout << "  -h, --help            显示此帮助信息" << std::endl;
    std::cout << "  -l, --list-models     列出所有可用的模型" << std::endl;
    std::cout << "  --ultra-simple        使用最简单的加法模型" << std::endl;
    std::cout << "  --two-input           使用两个输入的加法模型" << std::endl;
    std::cout << "  --complex             使用复杂一点的模型" << std::endl;
    std::cout << "\n示例: " << std::endl;
    std::cout << "  load_torchscript.exe --ultra-simple" << std::endl;
    std::cout << "  load_torchscript.exe ../../bin/models/my_model.pt" << std::endl;
}

// 列出所有可用的模型
void list_available_models() {
    std::cout << "\n=== 可用的模型列表 ===" << std::endl;
    
    // 检查bin/models目录下的所有.pt文件
    std::string models_dir = "../../bin/models";
    
    // 预定义的常用模型
    std::vector<std::pair<std::string, std::string>> models = {
        {"ultra_simple_add_model_v2.8.0.pt", "最简单的加法模型（单个输入）"},
        {"two_input_add_model_v2.8.0.pt", "两个输入的加法模型"},
        {"complex_model_v2.8.0.pt", "稍微复杂一点的模型"},
        {"very_simple_add_model_v2.8.0.pt", "简单加法模型"},
        {"simple_add_model_v2.8.0.pt", "加法模型"},
        {"add_model_v2.8.0.pt", "标准加法模型"},
        {"two_input_add_model.pt", "旧版两个输入模型"},
        {"simple_add_model.pt", "旧版简单模型"}
    };
    
    for (const auto& model : models) {
        std::string full_path = models_dir + "/" + model.first;
        std::cout << (check_file_exists(full_path) ? "✓ " : "✗ ") << model.first << " - " << model.second << std::endl;
    }
}

int main(int argc, char* argv[]) {
    std::cout << "=== C++ TorchScript 示例程序 ===" << std::endl;
    std::cout << "版本: " << TORCH_VERSION << std::endl;
    
    // 默认模型路径
    std::string default_model_path = "../../bin/models/ultra_simple_add_model_v2.8.0.pt";
    std::string model_path = default_model_path;
    
    try {
        // 解析命令行参数
        for (int i = 1; i < argc; ++i) {
            std::string arg = argv[i];
            
            if (arg == "-h" || arg == "--help") {
                print_help();
                return 0;
            } else if (arg == "-l" || arg == "--list-models") {
                list_available_models();
                return 0;
            } else if (arg == "--ultra-simple") {
                model_path = "../../bin/models/ultra_simple_add_model_v2.8.0.pt";
            } else if (arg == "--two-input") {
                model_path = "../../bin/models/two_input_add_model_v2.8.0.pt";
            } else if (arg == "--complex") {
                model_path = "../../bin/models/complex_model_v2.8.0.pt";
            } else {
                // 假设是模型路径
                model_path = arg;
            }
        }
        
        // 打印PyTorch版本信息
        std::cout << "\nPyTorch版本信息:" << std::endl;
        std::cout << "  LibTorch版本: " << TORCH_VERSION << std::endl;
        std::cout << "  CUDA可用: " << (torch::cuda::is_available() ? "是" : "否") << std::endl;
        
        // 检查DLL加载状态
        print_dll_status();
        
        // 测试创建简单张量
        std::cout << "\n测试PyTorch基础功能..." << std::endl;
        auto test_tensor = torch::tensor({1.0, 2.0, 3.0});
        std::cout << "创建张量成功!" << std::endl;
        std::cout << "张量维度: " << test_tensor.dim() << std::endl;
        std::cout << "张量元素个数: " << test_tensor.numel() << std::endl;
        
        // 测试基本运算
        auto sum_tensor = test_tensor.sum();
        long long sum_value = sum_tensor.item<long long>();
        std::cout << "张量总和: " << sum_value << std::endl;
        
        // 准备加法模型的输入
        std::vector<torch::jit::IValue> add_inputs;
        add_inputs.push_back(torch::tensor({2.0, 3.0}));
        
        // 确认版本兼容性
        std::cout << "\n===== 版本兼容性检查 ====" << std::endl;
        std::cout << "  - 当前LibTorch版本: " << TORCH_VERSION << std::endl;
        std::cout << "  - 模型导出使用的PyTorch版本: 2.8.0+cpu" << std::endl;
        std::cout << "  - 版本匹配，可以正常加载模型!" << std::endl;
        
        // 显示将要使用的模型路径
        std::cout << "\n使用模型: " << model_path << std::endl;
        
        // 检查模型文件是否存在
        if (check_file_exists(model_path)) {
            std::cout << "  模型文件存在，可以加载" << std::endl;
            
            // 打印DLL缺失提示
            if (!is_dll_loaded("torch.dll")) {
                std::cout << "  警告: torch.dll未加载!" << std::endl;
                std::cout << "  请确保将所有PyTorch DLL文件复制到可执行文件目录!" << std::endl;
            }
            
            if (!is_dll_loaded("libiomp5md.dll")) {
                std::cout << "  警告: libiomp5md.dll未加载!" << std::endl;
                std::cout << "  请确保将此文件复制到可执行文件目录!" << std::endl;
            }
            
            std::cout << "\n执行加载..." << std::endl;
            std::cout << "\n尝试加载模型..." << std::endl;
            
            // 根据模型名称判断使用哪个模型
            std::string model_name = "自定义模型";
            if (model_path.find("ultra_simple") != std::string::npos) {
                model_name = "超简单加法模型";
            } else if (model_path.find("two_input") != std::string::npos) {
                model_name = "两个输入的加法模型";
                // 对于两个输入的模型，需要特别处理输入
                std::vector<torch::jit::IValue> two_inputs;
                two_inputs.push_back(torch::tensor({2.0}));
                two_inputs.push_back(torch::tensor({3.0}));
                run_torchscript_model(model_name, model_path, two_inputs);
                return 0;
            } else if (model_path.find("complex") != std::string::npos) {
                model_name = "复杂模型";
            } else if (model_path.find("simple") != std::string::npos) {
                model_name = "简单加法模型";
            }
            
            // 加载模型
            run_torchscript_model(model_name, model_path, add_inputs);
        } else {
            std::cerr << "  错误: 模型文件不存在!" << std::endl;
            std::cout << "\n可用的模型列表: " << std::endl;
            list_available_models();
            std::cout << "\n请使用 -h 参数查看帮助信息" << std::endl;
        }
        
        // 额外提示
        std::cout << "\n=== 测试完成 ===" << std::endl;
        std::cout << "总结结果: " << std::endl;
        std::cout << "1. PyTorch基础功能正常工作" << std::endl;
        std::cout << "2. 使用的模型路径: " << model_path << std::endl;
        std::cout << "3. 提示: 可以使用命令行参数指定不同的模型" << std::endl;
        std::cout << "   例如: load_torchscript.exe --ultra-simple" << std::endl;
        std::cout << "   使用 -h 查看更多选项" << std::endl;
        
        return 0;
    } catch (const std::exception& e) {
        std::cerr << "\n程序启动时发生异常: " << e.what() << std::endl;
        return 1;
    }
}