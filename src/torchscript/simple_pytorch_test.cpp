// 简单的PyTorch功能测试程序
// 只测试基本的PyTorch功能，不涉及完整的模型加载

#include <iostream>
#include <string>
#include <windows.h>

// 设置Windows控制台为UTF-8编码
bool setup_console_for_utf8() {
    // 设置控制台输入输出为UTF-8
    if (!SetConsoleOutputCP(CP_UTF8)) {
        fprintf(stderr, "警告: 无法设置控制台输出为UTF-8编码\n");
        return false;
    }
    
    if (!SetConsoleCP(CP_UTF8)) {
        fprintf(stderr, "警告: 无法设置控制台输入为UTF-8编码\n");
    }
    
    return true;
}

// 获取详细的Windows错误信息
std::string get_last_error_string() {
    DWORD error_code = GetLastError();
    if (error_code == 0) {
        return "成功";
    }

    LPSTR error_buffer = NULL;
    size_t size = FormatMessageA(
        FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | 
        FORMAT_MESSAGE_IGNORE_INSERTS | FORMAT_MESSAGE_MAX_WIDTH_MASK,
        NULL, error_code, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
        (LPSTR)&error_buffer, 0, NULL
    );

    std::string error_message;
    if (size > 0) {
        error_message = std::string(error_buffer, size);
        LocalFree(error_buffer);
    } else {
        error_message = "未知错误，错误代码: " + std::to_string(error_code);
    }

    return error_message;
}

int main() {
    // 设置控制台为UTF-8编码
    setup_console_for_utf8();
    
    std::cout << "=== 简单PyTorch功能测试程序 ===" << std::endl;
    
    try {
        // 尝试动态加载最基本的PyTorch DLL
        std::cout << "\n尝试加载基本的PyTorch DLL..." << std::endl;
        
        // 按依赖顺序加载DLL
        HMODULE dlls[3];
        const char* dll_names[] = {"c10.dll", "libiomp5md.dll", "torch_cpu.dll"};
        
        bool all_loaded = true;
        for (int i = 0; i < 3; i++) {
            std::cout << "加载 " << dll_names[i] << "..." << std::endl;
            dlls[i] = LoadLibraryA(dll_names[i]);
            
            if (dlls[i] == NULL) {
                std::cerr << "错误: 无法加载 " << dll_names[i] << "。" 
                          << get_last_error_string() << std::endl;
                all_loaded = false;
                break;
            } else {
                std::cout << "成功加载 " << dll_names[i] << " (句柄: " << dlls[i] << ")" << std::endl;
            }
        }
        
        // 如果成功加载了基本DLL，可以尝试使用GetProcAddress调用一些简单函数
        if (all_loaded) {
            std::cout << "\n所有基本DLL加载成功！" << std::endl;
            std::cout << "\n注意: 此程序使用动态加载DLL方式，无需链接PyTorch库。" << std::endl;
            std::cout << "\n如果要测试完整的PyTorch功能，请确保：" << std::endl;
            std::cout << "1. 安装了正确版本的Visual C++ Redistributable" << std::endl;
            std::cout << "2. 所有PyTorch DLL版本匹配且完整" << std::endl;
            std::cout << "3. 考虑使用Dependency Walker工具分析fbgemm.dll的具体依赖项" << std::endl;
        }
        
        // 释放已加载的DLL
        for (int i = 0; i < 3; i++) {
            if (dlls[i] != NULL) {
                FreeLibrary(dlls[i]);
            }
        }
        
        return all_loaded ? 0 : 1;
        
    } catch (const std::exception& e) {
        std::cerr << "捕获到异常: " << e.what() << std::endl;
        return 1;
    } catch (...) {
        std::cerr << "捕获到未知异常" << std::endl;
        return 1;
    }
}

// 注意：此程序只测试DLL加载功能，不使用实际的PyTorch API