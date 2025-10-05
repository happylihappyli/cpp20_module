# C++ TorchScript 示例

这个目录包含了在C++中加载和运行TorchScript模型的示例代码。

## 准备工作

在运行示例之前，您需要安装以下软件：

1. **PyTorch** - 用于生成TorchScript模型
   ```bash
   pip install torch
   ```

2. **LibTorch** - PyTorch的C++库
   - 从[PyTorch官网](https://pytorch.org/)下载LibTorch 2.8.0+cu126版本
   - 解压到本地目录（推荐路径：`D:/Code\libtorch-win-shared-with-deps-2.8.0+cu126\libtorch`）

3. **Visual Studio 2022** - 用于编译C++代码

## 文件说明

- `generate_torchscript.py` - Python脚本，用于创建PyTorch模型并导出为TorchScript格式
- `load_torchscript.cpp` - C++程序，用于加载和运行TorchScript模型
- `compile_torchscript_demo.bat` - 批处理脚本，用于编译C++程序
- `SConstruct` - 独立的SCons构建文件，专门用于编译torchscript目录下的代码
- `build_torchscript.bat` - 批处理脚本，使用SCons编译C++程序
- `setup_and_generate_torchscript.bat` - 辅助脚本，安装PyTorch并生成TorchScript模型
- `README.md` - 本说明文件

## 使用步骤

### 1. 生成TorchScript模型

您可以选择以下两种方式之一来生成TorchScript模型：

#### 方式1：使用辅助脚本（推荐）

运行辅助脚本来自动安装PyTorch并生成模型：

```bash
cd src\torchscript
setup_and_generate_torchscript.bat
```

#### 方式2：手动运行Python脚本

首先安装PyTorch：

```bash
pip install torch
```

然后运行Python脚本来生成TorchScript模型：

```bash
cd src\torchscript
python generate_torchscript.py
```

这将在`../models`目录下生成两个模型文件：
- `simple_model.pt` - 一个简单的神经网络模型
- `add_model.pt` - 一个简单的加法模型

### 2. 编译C++程序

您可以选择以下两种方式之一来编译C++程序：

#### 方式1：使用SCons构建（推荐）

运行专门的构建脚本：

```bash
cd src\torchscript
build_torchscript.bat
```

此脚本会使用独立的`SConstruct`文件进行编译，与外层的构建系统完全无关。

#### 方式2：使用传统编译脚本

编辑`compile_torchscript_demo.bat`文件，确保`PYTORCH_PATH`变量指向您的LibTorch安装目录：

```batch
set PYTORCH_PATH=D:/Code\libtorch-win-shared-with-deps-2.8.0+cu126\libtorch  # 修改为您的LibTorch路径
```

然后运行批处理脚本编译C++程序：

```bash
compile_torchscript_demo.bat
```

两种方式编译成功后，可执行文件都将生成在`../../bin`目录下：`load_torchscript.exe`

### 3. 运行C++程序

编译成功后，直接运行生成的可执行文件：

```bash
..\..\bin\load_torchscript.exe
```

程序将加载并运行之前生成的TorchScript模型，并输出结果。

## 注意事项

1. 当前项目已配置为使用LibTorch 2.8.0+cu126版本，请确保PyTorch和LibTorch版本匹配
2. 推荐使用simple_add_model_v2.8.0.pt模型文件，与当前LibTorch版本兼容
3. 如果遇到CUDA相关问题，请检查CUDA 12.6环境配置
4. 如果修改了模型结构，需要重新运行Python脚本生成新的TorchScript模型
5. 示例中的模型路径是相对路径，请确保运行环境正确
6. 如果需要在其他项目中使用此功能，请根据实际情况调整文件路径和编译选项

## 扩展提示

- 可以根据需要修改`generate_torchscript.py`中的模型结构
- 可以在`load_torchscript.cpp`中添加更多的输入处理和结果分析代码
- 对于生产环境，建议添加更多的错误处理和日志记录