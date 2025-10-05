# LibTorch 使用指南

# LibTorch 2.8.0+cu126 安装指南

本指南将帮助您配置 LibTorch 2.8.0+cu126 版本，确保与PyTorch 2.8.0导出的模型兼容。

## 为什么需要配置LibTorch？

根据当前配置：
- 您提供的LibTorch版本是 **2.8.0+cu126**（路径：D:/Code\libtorch-win-shared-with-deps-2.8.0+cu126\libtorch）
- 您的模型是用 **PyTorch 2.8.0+cpu** 版本导出的
- 使用相同版本的LibTorch和PyTorch可以确保模型能够正常加载，避免版本不兼容问题

## 步骤1：确认您的LibTorch安装

确认您的LibTorch安装目录存在：
- 路径：`D:/Code\libtorch-win-shared-with-deps-2.8.0+cu126\libtorch`

确认该目录下包含以下文件夹：
```
libtorch-win-shared-with-deps-2.8.0+cu126/
├── bin/
├── include/
├── lib/
├── share/
└── ...
```

## 步骤2：配置环境变量

1. 右键点击"此电脑" -> "属性" -> "高级系统设置" -> "环境变量"

2. 在"系统变量"中，点击"新建"添加以下环境变量：
   - 变量名：`LIBTORCH`
   - 变量值：`D:/Code\libtorch-win-shared-with-deps-2.8.0+cu126\libtorch`

3. 在"系统变量"中，找到并编辑`Path`变量，添加：
   - `%LIBTORCH%\lib`

4. 点击"确定"保存所有更改

## 步骤3：更新项目中的构建配置

需要更新项目中的构建配置文件，以使用您的LibTorch 2.8.0+cu126版本：

### 对于SConstruct文件

打开项目中的SConstruct文件（如 `e:\GitHub3\cpp20_module\src\torchscript\SConstruct`），找到LibTorch路径设置部分，将其修改为：

```python
# 设置PyTorch路径
LIBTORCH_PATH = os.environ.get('LIBTORCH', 'D:/Code\libtorch-win-shared-with-deps-2.8.0+cu126\libtorch')
```

### 对于其他构建系统

如果您使用CMake或其他构建系统，请相应地更新LibTorch的路径配置。

## 步骤4：验证安装

创建一个简单的测试程序来验证LibTorch是否正常工作以及是否能正确加载模型：

1. 创建一个名为 `verify_libtorch.cpp` 的文件，内容如下：

```cpp
#include <torch/torch.h>
#include <iostream>

int main() {
    std::cout << "LibTorch版本: " << TORCH_VERSION << std::endl;
    
    // 创建一个简单的张量
    auto tensor = torch::tensor({1.0, 2.0, 3.0});
    std::cout << "创建的张量: " << tensor << std::endl;
    
    // 尝试加载模型（现在版本应该兼容了）
    try {
        auto model = torch::jit::load("../../bin/models/simple_add_model_v2.8.0.pt");
        std::cout << "✓ 模型加载成功！" << std::endl;
        
        // 测试模型推理
        std::vector<torch::jit::IValue> inputs;
        inputs.push_back(torch::tensor({2.0, 3.0}));
        auto output = model.forward(inputs);
        std::cout << "模型推理结果: " << output.toTensor().item<float>() << std::endl;
        
    } catch (const c10::Error& e) {
        std::cerr << "模型加载失败: " << e.msg() << std::endl;
        std::cerr << "建议: 检查模型路径是否正确" << std::endl;
    }
    
    return 0;
}
```

2. 编译并运行此程序
3. 如果输出显示LibTorch版本为2.8.0、能成功创建张量，并且能成功加载模型，则表示配置正确

## 故障排除

如果遇到问题，请检查以下几点：

1. **环境变量是否正确设置**：打开命令提示符，输入 `echo %LIBTORCH%` 确认路径正确
2. **DLL文件是否可访问**：确保 `%LIBTORCH%\lib` 中的DLL文件可以被程序访问
3. **构建配置是否更新**：检查所有构建文件中的LibTorch路径设置
4. **模型路径是否正确**：确保C++程序中指定的模型路径是正确的

## 总结

按照本指南的步骤，您应该能够成功配置LibTorch 2.8.0+cu126版本。由于LibTorch版本与PyTorch导出模型的版本匹配（均为2.8.0），模型加载应该不会有版本兼容性问题。