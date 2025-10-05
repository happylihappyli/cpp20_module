// 动态加载PyTorch DLL的测试程序
// 用于详细诊断PyTorch DLL加载问题

#include <windows.h>
#include <iostream>
#include <string>
#include <vector>

// 设置控制台输出为UTF-8
bool set_console_utf8() {
    // 设置控制台输出为UTF-8
    if (!SetConsoleOutputCP(CP_UTF8)) {
        std::cerr << "警告: 无法设置控制台输出为UTF-8，可能会导致中文显示乱码" << std::endl;
        return false;
    }
    return true;
}

// 打印详细的DLL加载错误信息
void print_dll_error(const std::string& dll_name) {
    DWORD error_code = GetLastError();
    LPVOID error_msg;
    
    FormatMessageA(
        FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
        NULL,
        error_code,
        MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
        (LPSTR)&error_msg,
        0,
        NULL
    );
    
    std::cerr << "加载" << dll_name << "失败: " << (LPSTR)error_msg << std::endl;
    std::cerr << "错误代码: " << error_code << std::endl;
    
    LocalFree(error_msg);
}

// 尝试动态加载指定的DLL
HMODULE try_load_dll(const std::string& dll_name) {
    std::cout << "尝试加载DLL: " << dll_name << "..." << std::endl;
    HMODULE hModule = LoadLibraryA(dll_name.c_str());
    
    if (hModule == NULL) {
        print_dll_error(dll_name);
    } else {
        std::cout << "  成功加载: " << dll_name << " (模块句柄: " << reinterpret_cast<void*>(hModule) << ")" << std::endl;
    }
    
    return hModule;
}

int main() {
    // 设置控制台输出为UTF-8
    set_console_utf8();
    
    std::cout << "=== 动态PyTorch DLL加载测试程序 ===" << std::endl;
    std::cout << "\n本程序将尝试动态加载PyTorch相关的DLL文件，并输出详细的加载状态信息。" << std::endl;
    
    // 尝试加载基本的Windows系统DLL，用于验证LoadLibrary功能是否正常
    std::cout << "\n=== 测试Windows系统DLL加载功能 ===" << std::endl;
    HMODULE hKernel32 = LoadLibraryA("kernel32.dll");
    if (hKernel32 == NULL) {
        std::cerr << "错误: 无法加载kernel32.dll，这表示基本的DLL加载功能有问题!" << std::endl;
        return 1;
    } else {
        std::cout << "  成功加载kernel32.dll，LoadLibrary功能正常。" << std::endl;
        FreeLibrary(hKernel32);
    }
    
    // 定义需要加载的PyTorch DLL顺序
    // 按照依赖关系的顺序加载 - libiomp5md.dll应该在fbgemm.dll之前加载
    std::vector<std::string> dll_list;
    dll_list.push_back("c10.dll");
    dll_list.push_back("libiomp5md.dll");  // 移到fbgemm.dll之前
    dll_list.push_back("fbgemm.dll");
    dll_list.push_back("torch_cpu.dll");
    dll_list.push_back("torch.dll");
    
    std::vector<HMODULE> loaded_modules;
    
    // 尝试加载每个DLL
    std::cout << "\n=== 开始加载PyTorch DLL文件 ===" << std::endl;
    for (size_t i = 0; i < dll_list.size(); i++) {
        const std::string& dll_name = dll_list[i];
        HMODULE hModule = try_load_dll(dll_name);
        if (hModule != NULL) {
            loaded_modules.push_back(hModule);
        } else {
            std::cout << "\n=== 测试结果总结 ===" << std::endl;
            std::cout << "  成功加载的DLL数量: " << loaded_modules.size() << " / " << dll_list.size() << std::endl;
            std::cout << "  加载失败的DLL: " << dll_name << std::endl;
            std::cout << "\n建议的解决方案：" << std::endl;
            std::cout << "  1. 确保所有PyTorch DLL文件都复制到了可执行文件目录" << std::endl;
            std::cout << "  2. 检查DLL文件的版本是否与编译时使用的LibTorch版本兼容" << std::endl;
            std::cout << "  3. 可能需要安装Visual C++ Redistributable或其他系统依赖" << std::endl;
            
            // 释放已加载的模块
            for (size_t j = 0; j < loaded_modules.size(); j++) {
                FreeLibrary(loaded_modules[j]);
            }
            
            return 1;
        }
    }
    
    // 所有DLL加载成功
    std::cout << "\n=== 测试结果总结 ===" << std::endl;
    std::cout << "  所有PyTorch DLL文件加载成功！" << std::endl;
    std::cout << "  成功加载的DLL数量: " << loaded_modules.size() << " / " << dll_list.size() << std::endl;
    std::cout << "\n这表明PyTorch DLL文件本身可以被加载，问题可能出在以下几个方面：" << std::endl;
    std::cout << "  1. C++代码中使用的LibTorch API与DLL版本不兼容" << std::endl;
    std::cout << "  2. 静态链接和动态链接之间的不匹配" << std::endl;
    std::cout << "  3. 运行时初始化问题" << std::endl;
    
    // 释放所有已加载的模块
    for (size_t j = 0; j < loaded_modules.size(); j++) {
        FreeLibrary(loaded_modules[j]);
    }
    
    return 0;
}