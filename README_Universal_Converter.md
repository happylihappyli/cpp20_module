# Universal EXE/ASM Converter

通用exe转asm和asm转exe转换器套件

## 概述

这是一套完整的Windows可执行文件与汇编代码相互转换的工具，包含两个核心程序：

1. **universal_exe_to_asm_converter.py** - 将exe文件反汇编为可编译的汇编代码
2. **universal_asm_to_exe_compiler.py** - 将汇编代码智能修复并编译为exe文件

## 主要特性

### EXE转ASM转换器特性
- ✅ 支持任何Windows PE格式的exe文件
- ✅ 智能反汇编，生成可编译的汇编代码
- ✅ 自动处理导入函数、字符串常量、数据段
- ✅ 生成标准MASM格式的汇编文件
- ✅ 自动识别32位和64位架构
- ✅ 函数边界识别和标签生成
- ✅ 包含编译脚本自动生成

### ASM转EXE编译器特性
- ✅ 智能修复反汇编生成的汇编代码
- ✅ 自动检测和修复语法错误
- ✅ 生成可编译的标准MASM代码
- ✅ 支持32位和64位架构
- ✅ 自动调用编译器生成exe文件
- ✅ 提供详细的错误诊断和修复建议
- ✅ 智能添加缺失的函数声明和常量定义

## 安装要求

### Python依赖
```bash
pip install pefile capstone
```

### 编译器要求（用于ASM转EXE）
- Microsoft Visual Studio（推荐）
- Windows SDK
- 或者任何包含MASM（ml.exe/ml64.exe）和链接器（link.exe）的开发环境

**重要**: 要完整使用ASM转EXE功能，需要从"Developer Command Prompt"运行程序。

## 快速开始

### 1. 安装依赖
```bash
python test_workflow.py --install-deps
```

### 2. 创建演示文件
```bash
python test_workflow.py --create-demo
```

### 3. 运行完整测试
```bash
python test_workflow.py
```

## 使用方法

### EXE转ASM转换

#### 基本用法
```bash
# 转换exe文件为asm
python universal_exe_to_asm_converter.py program.exe

# 指定输出文件名
python universal_exe_to_asm_converter.py program.exe output.asm
```

#### 示例
```bash
# 转换hello.exe为hello.asm
python universal_exe_to_asm_converter.py hello.exe

# 程序会自动生成:
# - hello.asm (汇编代码)
# - hello.bat (编译脚本)
```

### ASM转EXE编译

#### 基本用法
```bash
# 编译asm文件为exe
python universal_asm_to_exe_compiler.py program.asm

# 指定输出文件名
python universal_asm_to_exe_compiler.py program.asm output.exe
```

#### 示例
```bash
# 编译hello.asm为hello.exe
python universal_asm_to_exe_compiler.py hello.asm

# 程序会自动生成:
# - hello_fixed.asm (修复后的汇编代码)
# - hello.exe (可执行文件)
```

## 完整工作流程示例

### 场景1: 分析现有程序
```bash
# 步骤1: 将exe转换为asm
python universal_exe_to_asm_converter.py target.exe

# 步骤2: 查看生成的汇编代码
# target.asm - 可以用文本编辑器打开分析

# 步骤3: 修改汇编代码（可选）
# 编辑target.asm进行自定义修改

# 步骤4: 重新编译为exe
python universal_asm_to_exe_compiler.py target.asm modified.exe
```

### 场景2: 学习和逆向工程
```bash
# 分析程序结构
python universal_exe_to_asm_converter.py mystery.exe

# 查看生成的汇编代码来理解程序逻辑
# mystery.asm包含了完整的反汇编代码和注释
```

### 场景3: 代码移植和优化
```bash
# 将32位程序转换为64位
python universal_exe_to_asm_converter.py old32bit.exe
# 手动编辑生成的汇编代码，调整为64位
python universal_asm_to_exe_compiler.py old32bit.asm new64bit.exe
```

## 输出文件说明

### EXE转ASM输出
- **program.asm** - 主要的汇编源代码文件
- **program.bat** - 自动生成的编译脚本

### ASM转EXE输出
- **program_fixed.asm** - 智能修复后的汇编代码
- **program.exe** - 编译生成的可执行文件
- **program.obj** - 临时目标文件（自动清理）

## 高级功能

### 自定义配置

#### 修改转换器行为
```python
# 在universal_exe_to_asm_converter.py中可以调整:
# - 字符串提取数量限制
# - 函数识别算法
# - 输出格式选项
```

#### 修改编译器行为
```python
# 在universal_asm_to_exe_compiler.py中可以调整:
# - 错误修复策略
# - 编译器选项
# - 链接器参数
```

### 批量处理

#### 批量转换多个exe文件
```bash
# Windows批处理脚本示例
for %%f in (*.exe) do (
    python universal_exe_to_asm_converter.py "%%f"
)
```

#### 批量编译多个asm文件
```bash
# Windows批处理脚本示例
for %%f in (*.asm) do (
    python universal_asm_to_exe_compiler.py "%%f"
)
```

## 故障排除

### 常见问题

#### 1. "pefile library not installed"
**解决方案**: 
```bash
pip install pefile
```

#### 2. "capstone library not installed"
**解决方案**: 
```bash
pip install capstone
```

#### 3. "No MASM compiler found"
**解决方案**: 
- 安装Visual Studio或Windows SDK
- 从"Developer Command Prompt"运行程序
- 确保ml.exe/ml64.exe在PATH中

#### 4. "Assembly failed"
**可能原因和解决方案**:
- 检查生成的_fixed.asm文件
- 手动修复语法错误
- 确保所有外部函数都已声明

#### 5. "Linking failed"
**可能原因和解决方案**:
- 检查是否缺少库文件
- 确保link.exe可用
- 检查入口点是否正确

### 调试技巧

#### 查看详细输出
程序会自动显示详细的处理过程，包括:
- PE文件分析结果
- 反汇编统计信息
- 代码修复过程
- 编译和链接状态

#### 手动检查中间文件
- 查看生成的.asm文件了解反汇编结果
- 查看_fixed.asm文件了解修复过程
- 检查.bat编译脚本了解编译参数

## 技术细节

### 支持的文件格式
- **输入**: Windows PE格式的.exe文件（32位和64位）
- **输出**: MASM兼容的.asm汇编文件

### 架构支持
- **x86 (32位)**: 完全支持
- **x64 (64位)**: 完全支持
- **其他架构**: 不支持

### 反汇编引擎
- 使用Capstone反汇编框架
- 支持完整的x86/x64指令集
- 智能函数边界识别
- 自动标签和符号生成

### 代码修复算法
- 智能语法错误检测
- 自动添加缺失的声明
- 寄存器大小自动调整
- 调用约定标准化

## 性能特征

### 处理能力
- **小型程序** (<100KB): 几秒内完成
- **中型程序** (100KB-1MB): 10-30秒
- **大型程序** (>1MB): 30秒-几分钟

### 内存使用
- 基本内存占用: ~50MB
- 处理大文件时可能需要额外内存
- 建议系统内存: 4GB以上

## 版本历史

### v1.0 (当前版本)
- 初始发布
- 基本的exe转asm功能
- 基本的asm转exe功能
- 智能代码修复
- 完整的测试套件

## 许可证

本项目采用MIT许可证，详见LICENSE文件。

## 贡献指南

欢迎提交问题报告和功能请求！

### 报告问题
请提供以下信息:
- 操作系统版本
- Python版本
- 完整的错误信息
- 问题重现步骤
- 示例文件（如果可能）

### 功能请求
请描述:
- 期望的功能
- 使用场景
- 预期的输入输出

## 联系信息

如有问题或建议，请通过以下方式联系:
- 创建GitHub Issue
- 发送邮件至项目维护者

---

**注意**: 本工具仅用于合法的逆向工程、学习和研究目的。请遵守相关法律法规和软件许可协议。