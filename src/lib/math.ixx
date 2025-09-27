// math.ixx - C++20 Math module interface file
module;

// 在全局模块片段中显式定义_CPPUNWIND和_UTF8宏
// 这是为了解决模块导入时的环境不兼容警告
#define _CPPUNWIND
#define _UTF8

// 全局模块片段，包含实现所需的头文件
#include <stdexcept>
#include <cmath>
#include <cstddef>

// 导出模块接口
export module math;

export namespace math {
    // 基本数学运算
    int add(int a, int b);
    int subtract(int a, int b);
    int multiply(int a, int b);
    double divide(double a, double b);
    
    // 高级数学函数
    double power(double base, int exponent);
    int factorial(int n);
    bool is_prime(int n);
}