// funny.h - Traditional header file for funny module (for IDE compatibility)
#pragma once
#include <string>
#include <exception>

namespace funny {
    // Print function
    void print(std::string str);
    
    // String conversion functions
    std::string str(int value);
    std::string str(double value);
    std::string str(float value);
    std::string str(long value);
    std::string str(long long value);
    std::string str(const char* value);
    std::string str(const std::string& value);
    
    // Custom exception class
    class MyException : public std::exception {
    private:
        std::string message;
        
    public:
        MyException(const std::string& msg) : message(msg) {}
        
        const char* what() const noexcept override {
            return message.c_str();
        }
    };
}