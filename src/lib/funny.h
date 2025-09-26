#pragma once

#include <string>
#include <functional>
#include <map>
#include <exception>
#include <cstddef>
#include <iostream>
#include <vector>
#ifdef _WIN32
#include <io.h>
#endif

// Export std types
using std::string;
using std::function;
using std::map;
using std::pair;
using std::make_pair;
using std::exception;
using std::size_t;

// Export string operators
using std::operator+;

// Export function declarations
namespace funny {
    void print(std::string str);
    
    // String conversion functions
    std::string str(int value);
    std::string str(double value);
    std::string str(float value);
    std::string str(long value);
    std::string str(long long value);
    std::string str(size_t value);
    std::string str(const char* value);
    std::string str(const std::string& value);
    
    class MyException : public std::exception {
    private:
        std::string message;
        
    public:
        explicit MyException(const std::string& msg) : message(msg) {}
        
        // 重写 what() 方法
        const char* what() const noexcept override {
            return message.c_str();
        }
    };
}