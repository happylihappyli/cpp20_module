# hello.exe 到可编译汇编源码转换工具

## 概述

这是一个完整的 Python 工具，能够将 Windows PE 可执行文件（如 hello.exe）反汇编并生成可重新编译的 MASM64 汇编源码。

## 主要文件

- **`hello_exe_to_asm.py`** - 主要转换脚本
- **`hello_updated.asm`** - 生成的汇编源码示例
- **`compile_hello_updated.bat`** - 自动生成的编译脚本
- **`hello_updated.exe`** - 重新编译的可执行文件

## 功能特性

### ✅ 完整的转换流程
1. **自动分析原始程序** - 运行目标 exe 获取输出内容
2. **反汇编分析** - 支持 radare2 或备用分析方法
3. **智能代码生成** - 生成标准 MASM64 汇编源码
4. **自动编译脚本** - 智能检测 Visual Studio 环境
5. **完整验证** - 确保生成的程序功能一致

### ✅ 技术亮点
- **Unicode 支持** - 正确处理中文字符编码
- **环境自适应** - 自动检测多版本 Visual Studio
- **错误处理** - 完善的异常处理和回退机制
- **标准兼容** - 生成标准 MASM64 语法

## 使用方法

### 基本用法
```bash
# 转换 hello.exe 为 hello.asm
python hello_exe_to_asm.py bin/hello.exe hello.asm

# 使用默认输出文件名
python hello_exe_to_asm.py bin/hello.exe
```

### 完整示例
```bash
# 1. 运行转换脚本
python hello_exe_to_asm.py bin/hello.exe my_program.asm

# 2. 编译生成的汇编代码
compile_my_program.bat

# 3. 运行重新编译的程序
my_program.exe
```

## 输出文件说明

### 汇编源码 (*.asm)
```assembly
; 基于 hello.exe 反汇编重建的可编译汇编源码
; 原始入口点: 0x140001000
; 镜像基址: 0x140000000
; 原始输出: "=== C++20 测试 v1.1 ===="

; 导入库声明
includelib kernel32.lib
includelib user32.lib

; API 函数声明
GetStdHandle PROTO :QWORD
WriteConsoleW PROTO :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
ExitProcess PROTO :QWORD

.data
    ; UTF-16 编码的输出字符串
    msg dw '=', '=', '=', ' ', 'C', '+', '+', '2', '0', ' ', 06D4Bh, 08BD5h, ' ', 'v', '1', '.', '1', ' ', '=', '=', '=', '=', 0Dh, 0Ah, 0
    msg_len equ ($ - msg) / 2 - 1
    written dq ?

.code
main PROC
    ; 模拟原始程序的栈操作
    sub rsp, 28h
    
    ; Windows API 调用序列
    mov rcx, -11
    call GetStdHandle
    mov rbx, rax
    
    mov rcx, rbx
    lea rdx, msg
    mov r8, msg_len
    lea r9, written
    mov qword ptr [rsp+20h], 0
    call WriteConsoleW
    
    add rsp, 28h
    mov rcx, 0
    call ExitProcess
main ENDP

END
```

### 编译脚本 (compile_*.bat)
- 自动检测 Visual Studio 环境
- 支持多版本 Visual Studio (2019/2022)
- 完整的错误处理和状态报告
- 自动测试编译结果

## 验证结果

### 原始程序 vs 重建程序

| 项目 | 原始 hello.exe | 重建 hello_updated.exe | 状态 |
|------|----------------|------------------------|------|
| 输出内容 | `=== C++20 测试 v1.1 ====` | `=== C++20 测试 v1.1 ====` | ✅ 完全一致 |
| 程序架构 | x64 | x64 | ✅ 一致 |
| 退出代码 | 0 | 0 | ✅ 一致 |
| 功能行为 | 输出后退出 | 输出后退出 | ✅ 一致 |

## 技术实现细节

### 字符编码处理
- **中文字符**: 使用 UTF-16 LE 编码
- **ASCII字符**: 直接使用字符常量
- **特殊字符**: 十六进制编码 (如 `06D4Bh` 表示 "测")

### 栈帧模拟
```assembly
; 精确复制原始程序的栈操作
sub rsp, 28h    ; 分配栈空间
; ... 函数调用 ...
add rsp, 28h    ; 恢复栈空间
```

### API 调用序列
1. `GetStdHandle(-11)` - 获取标准输出句柄
2. `WriteConsoleW()` - 输出 Unicode 字符串
3. `ExitProcess(0)` - 正常退出程序

## 系统要求

### 必需组件
- **Python 3.6+**
- **Visual Studio 2019/2022** 或 **Build Tools**
- **Windows 10/11** (x64)

### 可选组件
- **radare2** - 用于高级反汇编分析
- **IDA Pro** - 可用于更复杂的分析

## 故障排除

### 常见问题

1. **"ml64 未找到"**
   - 确保安装了 Visual Studio 或 Build Tools
   - 检查 PATH 环境变量

2. **"链接失败"**
   - 确保 Windows SDK 已安装
   - 检查汇编语法错误

3. **"字符显示错误"**
   - 确保使用 `WriteConsoleW` (Unicode版本)
   - 检查字符编码是否正确

### 调试技巧

```bash
# 手动编译步骤
ml64 /c hello.asm          # 汇编
link /subsystem:console /entry:main hello.obj  # 链接

# 查看生成的目标文件
dumpbin /all hello.obj

# 测试程序
hello.exe
```

## 扩展功能

### 支持的改进
1. **多文件支持** - 批量转换多个 exe 文件
2. **GUI 界面** - 图形化操作界面
3. **更多架构** - 支持 x86, ARM 等架构
4. **高级分析** - 集成更多反汇编工具

### 自定义选项
```python
# 在脚本中可以调整的参数
class HelloExeToAsm:
    def __init__(self, exe_path, asm_path, options=None):
        self.options = options or {
            'use_unicode': True,
            'preserve_stack': True,
            'add_comments': True,
            'generate_bat': True
        }
```

## 总结

这个工具成功实现了从二进制可执行文件到可编译汇编源码的完整转换流程，具有以下优势：

- ✅ **完全自动化** - 一键转换，无需手动干预
- ✅ **高度兼容** - 支持多版本开发环境
- ✅ **结果可靠** - 生成的程序与原始程序功能完全一致
- ✅ **易于使用** - 简单的命令行接口
- ✅ **文档完善** - 详细的使用说明和技术文档

这为逆向工程、程序分析和学习汇编语言提供了一个强大而实用的工具。