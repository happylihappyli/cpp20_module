# C++20 模块项目

这是一个使用 C++20 模块特性的示例项目，展示了现代 C++ 的模块化编程方法，包含一个功能完整的 NumPy 风格数值计算库。

## 项目结构

```
cpp20_module/
├── src/
│   ├── main.cpp           # 主程序入口
│   ├── math.ixx           # 数学模块接口
│   ├── math.cpp           # 数学模块实现
│   ├── math.h             # 数学模块传统头文件（IDE兼容性）
│   ├── funny.ixx          # 趣味模块接口
│   ├── funny.cpp          # 趣味模块实现
│   ├── funny.h            # 趣味模块传统头文件（IDE兼容性）
│   ├── numpy.ixx          # NumPy风格库模块接口
│   ├── numpy.cpp          # NumPy风格库模块实现
│   ├── numpy.h            # NumPy风格库传统头文件（IDE兼容性）
│   ├── numpy_demo.cpp     # NumPy库功能演示程序
│   └── numpy_test.cpp     # NumPy库测试程序
├── cpp20_module.sln       # Visual Studio 解决方案文件
├── cpp20_module.vcxproj   # Visual Studio 项目文件
├── cpp20_module.vcxproj.filters # 项目过滤器文件
├── cpp20_module.vcxproj.user    # 用户设置文件
└── README.md              # 项目说明文档
```

## 功能特性

### Math 模块
- 基本算术运算（加法、减法、乘法、除法）
- 高级数学函数（幂运算、阶乘）
- 质数判断功能

### Funny 模块
- 多类型字符串转换功能
- 格式化输出函数
- 自定义异常处理

### NumPy 风格库模块
- **多维数组支持**: 使用 C++20 概念和模板的 NDArray 类
- **数组创建函数**: zeros, ones, arange, linspace, eye, full
- **基本数学运算**: 元素级加减乘除，标量运算
- **矩阵运算**: 点积 (dot), 矩阵乘法 (matmul)
- **形状操作**: reshape, transpose, flatten
- **统计函数**: sum, mean, std, var, min, max
- **数学函数**: sqrt, exp, log, sin, cos
- **类型安全**: 使用 C++20 概念确保类型安全
- **内存管理**: 智能指针自动内存管理
- **异常处理**: 完整的错误检查和异常处理

## 编译和运行

### 使用 Visual Studio 2022
1. 双击 `cpp20_module.sln` 打开项目
2. 确保选择了支持 C++20 的编译器
3. 选择启动项目：
   - `main.cpp`: 原始演示程序
   - `numpy_demo.cpp`: NumPy库功能演示
   - `numpy_test.cpp`: NumPy库测试程序
4. 按 F5 或点击"开始调试"运行项目

### 命令行编译
```bash
# 编译原始程序
cl /std:c++20 /EHsc src/main.cpp src/math.cpp src/funny.cpp

# 编译 NumPy 演示程序
cl /std:c++20 /EHsc src/numpy_demo.cpp src/numpy.cpp src/funny.cpp

# 编译 NumPy 测试程序
cl /std:c++20 /EHsc src/numpy_test.cpp src/numpy.cpp src/funny.cpp
```

## 模块说明

### C++20 模块特性
- 使用 `export module` 声明模块
- 使用 `import` 导入模块
- 模块接口文件使用 `.ixx` 扩展名
- 模块实现文件使用 `.cpp` 扩展名

### NumPy 风格库特性
- **C++20 概念**: 使用 `Numeric` 和 `FloatingPoint` 概念确保类型安全
- **模板元编程**: 支持多种数值类型 (int, float, double, long long)
- **RAII**: 使用智能指针自动管理内存
- **异常安全**: 完整的边界检查和错误处理
- **性能优化**: 连续内存布局，高效的数组操作

### 兼容性说明
- 项目同时提供传统头文件（`.h`）以确保 IDE 兼容性
- 支持 IntelliSense 和代码导航功能
- 在资源管理器中可以看到完整的项目结构

## 系统要求

- Visual Studio 2022 或更新版本
- Windows 10/11
- C++20 标准支持
- MSVC 编译器 v143 或更新版本

## NumPy 库使用示例

```cpp
import numpy;
import funny;

using namespace numpy;
using namespace funny;

int main() {
    // 创建数组
    auto arr1 = zeros<double>({3, 3});
    auto arr2 = ones<float>({5});
    auto arr3 = arange<int>(0, 10, 2);
    
    // 基本运算
    auto sum_result = arr1 + arr2;
    auto mul_result = arr1 * 2.0;
    
    // 矩阵运算
    auto identity = eye<double>(3);
    auto dot_result = dot(arr1, arr2);
    
    // 形状操作
    auto reshaped = arr3.reshape({2, 3});
    auto transposed = reshaped.transpose();
    
    // 统计函数
    print(str("平均值: ") + str(arr1.mean()));
    print(str("标准差: ") + str(arr1.std()));
    
    return 0;
}
```

## 类型别名

- `ArrayF`: NDArray<float>
- `ArrayD`: NDArray<double>
- `ArrayI`: NDArray<int>
- `ArrayL`: NDArray<long long>