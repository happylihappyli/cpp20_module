// funny.cpp - Standard library wrapper implementation file
#include "funny.h"
#include <iostream>
#include <vector>
#include <cstdio>
#include <string>
#include <locale>
#ifdef _WIN32
#include <windows.h>
#include <io.h>
#include <fcntl.h>
#endif

namespace funny {
    // Standard library wrapper implementation
    void print(std::string str) {
#ifdef _WIN32
        // 设置控制台输出为UTF-8编码
        static bool console_initialized = false;
        if (!console_initialized) {
            SetConsoleOutputCP(CP_UTF8);
            console_initialized = true;
        }
        // 使用printf输出UTF-8字符串
        printf("%s\n", str.c_str());
#else
        std::cout << str << std::endl;
#endif
    }
    
    // String conversion functions implementation
    std::string str(int value) {
        return std::to_string(value);
    }
    
    std::string str(double value) {
        return std::to_string(value);
    }
    
    std::string str(float value) {
        return std::to_string(value);
    }
    
    std::string str(long value) {
        return std::to_string(value);
    }
    
    std::string str(long long value) {
        return std::to_string(value);
    }
    
    std::string str(size_t value) {
        return std::to_string(value);
    }
    
    std::string str(const char* value) {
        return std::string(value);
    }
    
    std::string str(const std::string& value) {
        return value;
    }
}