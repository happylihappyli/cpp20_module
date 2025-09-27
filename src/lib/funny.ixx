// funny.ixx - C++20 Standard library wrapper module interface file
module;

// 在全局模块片段中显式定义_CPPUNWIND和_UTF8宏
// 这是为了解决模块导入时的环境不兼容警告
#define _CPPUNWIND
#define _UTF8

// 全局模块片段，包含实现所需的头文件
#include "funny.h"
#include <string>
#include <functional>
#include <map>
#include <exception>
#include <cstddef>
#include <iostream>
#include <vector>
#ifdef _WIN32
#include <io.h>
#include <windows.h>
#include <fcntl.h>
#endif

// 导出模块接口
export module funny;

export namespace funny {
    // 打印函数 - 支持UTF-8输出
    void print(std::string str);
    
    // 字符串转换函数集
    std::string str(int value);
    std::string str(double value);
    std::string str(float value);
    std::string str(long value);
    std::string str(long long value);
    std::string str(size_t value);
    std::string str(const char* value);
    std::string str(const std::string& value);
    
    // 自定义异常类
    class MyException : public std::exception {
    private:
        std::string message;
        
    public:
        explicit MyException(const std::string& msg);
        
        // 重写 what() 方法
        const char* what() const noexcept override;
    };
}

// 重新导出常用的std类型和运算符
export using std::string;
export using std::vector;
export using std::map;
export using std::cout;
export using std::endl;
export using std::ostream;
export using std::exception;
export using std::operator<<;
export using std::operator+;