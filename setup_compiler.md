# C++编译器安装指南

## 当前状态
项目代码已完成，但系统缺少C++编译器。需要安装编译器才能编译和运行程序。

## 推荐安装方案

### 方案1: Visual Studio Community 2022 (推荐)
1. 访问 https://visualstudio.microsoft.com/zh-hans/vs/community/
2. 下载并安装 Visual Studio Community 2022
3. 在安装时选择"使用C++的桌面开发"工作负载
4. 确保包含以下组件：
   - MSVC v143 编译器工具集
   - Windows 10/11 SDK
   - CMake 工具

### 方案2: Visual Studio Build Tools 2022 (轻量级)
1. 访问 https://visualstudio.microsoft.com/zh-hans/downloads/#build-tools-for-visual-studio-2022
2. 下载并安装 Build Tools for Visual Studio 2022
3. 选择"C++ 生成工具"工作负载

### 方案3: MinGW-w64 (开源)
1. 访问 https://www.mingw-w64.org/downloads/
2. 推荐使用 MSYS2: https://www.msys2.org/
3. 安装后运行: `pacman -S mingw-w64-x86_64-gcc`
4. 将 `C:\msys64\mingw64\bin` 添加到系统PATH

## 安装完成后的编译步骤

### 使用Visual Studio
1. 双击 `cpp20_module.sln` 打开项目
2. 选择启动项目（main.cpp, numpy_demo.cpp, 或 numpy_test.cpp）
3. 按 F5 运行

### 使用命令行 (MSVC)
```cmd
# 设置环境变量
"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

# 编译主程序
cl /std:c++20 /EHsc src/main.cpp src/math.cpp src/funny.cpp /Fe:main.exe

# 编译NumPy演示
cl /std:c++20 /EHsc src/numpy_demo.cpp src/numpy.cpp src/funny.cpp /Fe:numpy_demo.exe

# 编译NumPy测试
cl /std:c++20 /EHsc src/numpy_test.cpp src/numpy.cpp src/funny.cpp /Fe:numpy_test.exe
```

### 使用命令行 (MinGW)
```bash
# 编译主程序
g++ -std=c++20 src/main.cpp src/math.cpp src/funny.cpp -o main.exe

# 编译NumPy演示
g++ -std=c++20 src/numpy_demo.cpp src/numpy.cpp src/funny.cpp -o numpy_demo.exe

# 编译NumPy测试
g++ -std=c++20 src/numpy_test.cpp src/numpy.cpp src/funny.cpp -o numpy_test.exe
```

## 使用SCons构建 (推荐)
安装编译器后，可以使用项目提供的SCons构建脚本：

```bash
# 安装SCons (如果未安装)
pip install scons

# 构建项目
scons

# 清理构建
scons -c
```

## 验证安装
安装编译器后，运行以下命令验证：

```cmd
# 验证MSVC
cl

# 或验证MinGW
g++ --version
```

如果命令成功执行，说明编译器安装正确。