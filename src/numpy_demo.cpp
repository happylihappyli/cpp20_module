// numpy_demo.cpp - NumPy-like library demonstration
#include <exception>
#include <cmath> // 添加cmath头文件以支持数学函数

import funny;// 导入c++标准库包装模块
import numpy;
using namespace funny;
using namespace numpy;

int main() {
    try {
        print(R"(=== C++20 NumPy风格库演示程序 ===)");
        print(R"()");
        
        // 1. 数组创建演示
        print(R"(1. 数组创建功能:)");
        
        // 创建零数组
        auto zeros_2d = zeros<double>({3, 4});
        print(R"(3x4 零数组:)");
        print(zeros_2d.to_string());
        print(R"()");
        
        // 创建单位数组
        auto ones_1d = ones<float>({5});
        print(R"(长度为5的单位数组:)");
        print(ones_1d.to_string());
        print(R"()");
        
        // 创建单位矩阵
        auto identity = eye<double>(3);
        print(R"(3x3 单位矩阵:)");
        print(identity.to_string());
        print(R"()");
        
        // 使用arange创建数组
        auto range_arr = arange<int>(0, 10, 2);
        print(R"(arange(0, 10, 2):)");
        print(range_arr.to_string());
        print(R"()");
        
        // 使用linspace创建数组
        auto linspace_arr = linspace<double>(0.0, 1.0, 6);
        print(R"(linspace(0.0, 1.0, 6):)");
        print(linspace_arr.to_string());
        print(R"()");
        
        // 2. 基本运算演示
        print(R"(2. 基本数学运算:)");
        
        ArrayD arr1({2, 3}, 2.0);  // 2x3数组，填充2.0
        ArrayD arr2({2, 3}, 3.0);  // 2x3数组，填充3.0
        
        print(R"(数组A (2x3, 填充2.0):)");
        print(arr1.to_string());
        print(R"(数组B (2x3, 填充3.0):)");
        print(arr2.to_string());

        auto sum_result = arr1 + arr2;
        print(R"(A + B:)");
        print(sum_result.to_string());

        auto mul_result = arr1 * arr2;
        print(R"(A * B (元素级乘法):)");
        print(mul_result.to_string());

        auto scalar_mul = arr1 * 5.0;
        print(R"(A * 5.0:)");
        print(scalar_mul.to_string());
        print(R"()");
        
        // 3. 矩阵运算演示
        print(R"(3. 矩阵运算:)");
        
        // 创建两个矩阵进行矩阵乘法
        std::vector<double> data1 = {1, 2, 3, 4, 5, 6};
        std::vector<double> data2 = {7, 8, 9, 10, 11, 12};
        
        ArrayD mat1(data1, {2, 3});
        ArrayD mat2(data2, {3, 2});
        
        print(R"(矩阵A (2x3):)");
        print(mat1.to_string());
        print(R"(矩阵B (3x2):)");
        print(mat2.to_string());

        auto matmul_result = matmul(mat1, mat2);
        print(R"(矩阵乘法 A @ B:)");
        print(matmul_result.to_string());

        // 转置演示
        auto transposed = mat1.transpose();
        print(R"(矩阵A的转置:)");
        print(transposed.to_string());
        print(R"()");
        
        // 4. 形状操作演示
        print(R"(4. 形状操作:)");
        
        auto original = arange<int>(1, 13, 1);  // [1, 2, 3, ..., 12]
        print(R"(原始数组 (12个元素):)");
        print(original.to_string());

        auto reshaped = original.reshape({3, 4});
        print("重塑为3x4:");
        print(reshaped.to_string());

        auto flattened = reshaped.flatten();
        print("展平:");
        print(flattened.to_string());
        print("");
        
        // 5. 统计函数演示
        print("5. 统计函数:");
        
        std::vector<double> stats_data = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0};
        ArrayD stats_arr(stats_data, {6});
        
        print("数据数组:");
        print(stats_arr.to_string());

        print("总和: " + str(stats_arr.sum()));
        print("平均值: " + str(stats_arr.mean()));
        print("最小值: " + str(stats_arr.min()));
        print("最大值: " + str(stats_arr.max()));
        print("标准差: " + str(stats_arr.std()));
        print("方差: " + str(stats_arr.var()));
        print("");
        
        // 6. 数学函数演示
        print("6. 数学函数:");

        auto angles = linspace<double>(0.0, 3.14159, 4);
        print("角度数组 (0 到 π):");
        print(angles.to_string());

        auto sin_values = sin(angles);
        print("sin值:");
        print(sin_values.to_string());

        auto cos_values = cos(angles);
        print("cos值:");
        print(cos_values.to_string());

        auto exp_values = exp(linspace<double>(0.0, 2.0, 5));
        print("exp(0到2的5个点):");
        print(exp_values.to_string());
        print("");
        
        // 7. 点积演示
        print("7. 向量点积:");
        
        ArrayD vec1({1.0, 2.0, 3.0});
        ArrayD vec2({4.0, 5.0, 6.0});
        
        print("向量1:");
        print(vec1.to_string());
        print("向量2:");
        print(vec2.to_string());

        auto dot_result = dot(vec1, vec2);
        print("点积结果:");
        print(dot_result.to_string());
        print("");
        
        // 8. 异常处理演示
        print("8. 异常处理演示:");
        
        try {
            // 尝试不兼容的矩阵乘法
            ArrayD incompatible1({2, 3});
            ArrayD incompatible2({2, 3});
            auto bad_result = matmul(incompatible1, incompatible2);
        } catch (const std::exception& e) {
            print("捕获异常: " + str(e.what()));
        }
        
        try {
            // 尝试除零
            ArrayD zero_arr({3}, 0.0);
            ArrayD normal_arr({3}, 1.0);
            auto div_result = normal_arr / zero_arr;
        } catch (const std::exception& e) {
            print("捕获异常: " + str(e.what()));
        }
        
        print("");
        print("=== NumPy风格库演示完成! ===");
        
    } catch (const std::exception& e) {
        print("程序异常: " + str(e.what()));
        return 1;
    }
    
    return 0;
}
