# C++20 模块构建指南

## 系统要求

- Windows 11
- Visual Studio 2022 (安装在 D:\Code\VS2022)
- SCons 构建系统
- UTF-8 编码支持

## 构建脚本

### 主要构建脚本

- `build.bat` - 构建所有目标
- `build_flask.bat` - 仅构建 Flask 演示
- `clean.bat` - 清理所有构建产物
- `test_all.bat` - 运行所有测试程序

### 使用方法

```batch
# 构建所有内容
.\build.bat

# 仅构建 Flask 演示
.\build_flask.bat

# 清理构建产物
.\clean.bat

# 运行所有测试
.\test_all.bat
```

## 项目结构

```
src/
├── funny.ixx          # Funny 模块接口
├── funny.cpp          # Funny 模块实现
├── math.ixx           # Math 模块接口
├── math.cpp           # Math 模块实现
├── numpy.ixx          # NumPy 风格模块接口
├── numpy.cpp          # NumPy 风格模块实现
├── flask_demo.cpp     # Flask 演示应用程序
├── flask_test.h       # Flask 框架头文件
└── ...

obj/                   # 目标文件和模块接口
bin/                   # 可执行文件
```

## 构建配置

- 使用 `/utf-8` 标志启用 UTF-8 编码
- 使用 `/std:c++20` 启用 C++20 标准
- 使用 `/EHsc` 启用异常处理
- 配置 VS2022 编译器路径
- 链接 Windows Sockets 库 (ws2_32.lib) 以支持网络功能

## 可用程序

1. `main.exe` - 主要的 C++20 模块演示
2. `numpy_demo.exe` - NumPy 风格功能演示
3. `numpy_test.exe` - NumPy 模块单元测试
4. `flask_demo.exe` - Flask 风格 Web 框架演示
5. `simple_test.exe` - 简单独立测试

## 注意事项

- 所有批处理文件自动设置 UTF-8 编码 (chcp 65001)
- 无需手动确认 (无暂停命令)
- PowerShell 命令分隔符是 `;` 而不是 `&&`
- C++ 源文件应保存为带 BOM 的 UTF-8 格式