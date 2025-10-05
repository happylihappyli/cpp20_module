# C++20 模块项目

这是一个使用 C++20 模块特性的示例项目，展示了现代 C++ 的模块化编程方法，包含一个功能完整的 NumPy 风格数值计算库以及与 PyTorch 集成的 TorchScript 模型加载、运行功能。

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
│   ├── numpy_test.cpp     # NumPy库测试程序
│   └── torchscript/       # TorchScript模型集成相关代码
│       ├── generate_simple_model.py  # 生成简单PyTorch模型
│       ├── load_torchscript.cpp      # 加载TorchScript模型的C++程序
│       ├── SConstruct                # TorchScript项目的构建文件
│       └── README.md                 # TorchScript使用说明
├── bin/                   # 编译输出目录
│   └── models/            # TorchScript模型存储目录
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

### TorchScript 集成
- **模型生成**: 提供简单的Python脚本用于创建和导出PyTorch模型
- **模型加载**: C++接口用于加载TorchScript模型
- **模型运行**: 在C++中执行模型推理
- **版本兼容性**: 支持PyTorch 2.8.0版本
- **命令行参数**: 支持通过命令行参数指定模型路径和类型

### 兼容性说明
- 项目同时提供传统头文件（`.h`）以确保 IDE 兼容性
- 支持 IntelliSense 和代码导航功能
- 在资源管理器中可以看到完整的项目结构

## 系统要求

- Visual Studio 2022 或更新版本
- Windows 10/11
- C++20 标准支持
- MSVC 编译器 v143 或更新版本
- Python 3.8 或更新版本 (用于TorchScript模型生成)
- PyTorch 2.8.0 (用于模型生成)
- LibTorch 2.8.0 (PyTorch的C++库)

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

## TorchScript 模型生成与使用指南

### 1. 生成TorchScript模型

项目提供了Python脚本用于创建与LibTorch 2.8.0兼容的PyTorch模型：

```bash
cd src\torchscript
python generate_simple_model.py
```

此脚本将生成以下三个模型文件到`bin/models`目录：
- `ultra_simple_add_model_v2.8.0.pt` - 最简单的加法模型，接收一个包含两个元素的输入
- `two_input_add_model_v2.8.0.pt` - 接收两个单独输入的加法模型
- `complex_model_v2.8.0.pt` - 包含两层线性层和ReLU激活函数的稍微复杂模型

生成过程会输出模型结构、示例输入输出及使用提示。

### 2. 编译C++程序

使用SCons构建系统编译加载TorchScript模型的C++程序：

```bash
cd src\torchscript
scons
```

编译成功后，可执行文件`load_torchscript.exe`将生成在`../../bin`目录下。

### 3. 运行和测试模型

编译成功后，可以使用以下命令运行和测试不同的模型：

#### 使用预设模型

```bash
# 使用超简单加法模型
..\..\bin\load_torchscript.exe --ultra-simple

# 使用双输入加法模型
..\..\bin\load_torchscript.exe --two-input

# 使用复杂模型
..\..\bin\load_torchscript.exe --complex
```

#### 指定自定义模型路径

```bash
..\..\bin\load_torchscript.exe --model path\to\your\model.pt
```

#### 查看帮助信息

```bash
..\..\bin\load_torchscript.exe -h
```

#### 列出可用模型

```bash
..\..\bin\load_torchscript.exe --list-models
```

### 4. 模型功能说明

#### ultra_simple_add_model_v2.8.0.pt
- **描述**: 最简单的加法模型
- **输入**: 一维FloatTensor，包含两个元素，形状为(2,)
- **输出**: 单个浮点数，为输入两个元素的和
- **示例**: 输入[2.0, 3.0]，输出5.0

#### two_input_add_model_v2.8.0.pt
- **描述**: 接收两个单独输入的加法模型
- **输入**: 两个一维FloatTensor，每个包含一个元素
- **输出**: 单个浮点数，为两个输入的和
- **示例**: 输入[2.0]和[3.0]，输出5.0

#### complex_model_v2.8.0.pt
- **描述**: 包含两层线性层和ReLU激活函数的模型
- **输入**: 一维FloatTensor，包含两个元素，形状为(2,)
- **输出**: 单个浮点数
- **示例**: 输入[2.0, 3.0]，输出经过网络计算的结果

### 5. 常见问题排查

- **版本不兼容**: 确保使用的PyTorch和LibTorch版本均为2.8.0
- **DLL缺失**: 确保所有必要的DLL文件（torch.dll、torch_cpu.dll、c10.dll等）已正确复制到运行目录
- **模型文件不存在**: 检查指定的模型路径是否正确
- **输入格式错误**: 确保提供的输入张量与模型要求的格式匹配

### 6. C++代码使用示例

```cpp
// 加载模型
auto module = torch::jit::load(model_path);

// 设置为评估模式
module.eval();

// 创建输入
std::vector<torch::jit::IValue> inputs;
inputs.push_back(torch::tensor({2.0, 3.0}));

// 执行模型
at::Tensor output = module.forward(inputs).toTensor();

// 输出结果
std::cout << "输出: " << output.item<float>() << std::endl;
```

## 类型别名

- `ArrayF`: NDArray<float>
- `ArrayD`: NDArray<double>
- `ArrayI`: NDArray<int>
- `ArrayL`: NDArray<long long>

## 总结

本项目展示了现代C++20的模块化编程方法，并提供了完整的数值计算库功能，以及与PyTorch的无缝集成。通过本项目，您可以：

1. 学习如何使用C++20的模块系统进行现代C++编程
2. 使用NumPy风格的数值计算库进行科学计算
3. 在C++中集成和运行PyTorch模型
4. 了解从模型生成、编译到运行的完整工作流程

无论是用于学习现代C++特性，还是作为实际项目的基础框架，本项目都提供了有价值的参考和示例代码。