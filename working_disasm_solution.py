#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
可工作的反汇编解决方案
基于模板生成可编译的汇编代码
"""

import os
import sys
import struct
from pathlib import Path

def create_asm_template(exe_path, output_path):
    """
    创建基于模板的汇编文件
    """
    try:
        # 读取PE文件基本信息
        with open(exe_path, 'rb') as f:
            # 读取DOS头
            dos_header = f.read(64)
            if dos_header[:2] != b'MZ':
                print(f"错误: {exe_path} 不是有效的PE文件")
                return False
            
            # 获取PE头偏移
            pe_offset = struct.unpack('<I', dos_header[60:64])[0]
            f.seek(pe_offset)
            
            # 读取PE签名和文件头
            pe_sig = f.read(4)
            if pe_sig != b'PE\x00\x00':
                print(f"错误: 无效的PE签名")
                return False
            
            # 读取COFF头
            coff_header = f.read(20)
            machine = struct.unpack('<H', coff_header[0:2])[0]
            
            # 读取可选头
            opt_header_size = struct.unpack('<H', coff_header[16:18])[0]
            opt_header = f.read(opt_header_size)
            
            if len(opt_header) >= 28:
                entry_point = struct.unpack('<I', opt_header[16:20])[0]
                image_base = struct.unpack('<Q', opt_header[24:32])[0] if machine == 0x8664 else struct.unpack('<I', opt_header[28:32])[0]
            else:
                entry_point = 0x1000
                image_base = 0x140000000 if machine == 0x8664 else 0x400000
        
        # 确定架构
        is_64bit = machine == 0x8664
        
        # 生成汇编模板
        template = generate_working_template(entry_point, image_base, is_64bit)
        
        # 写入文件
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(template)
        
        print(f"✓ 成功生成可编译的汇编模板: {output_path}")
        return True
        
    except Exception as e:
        print(f"错误: {e}")
        return False

def generate_working_template(entry_point, image_base, is_64bit=True):
    """
    生成可工作的汇编模板
    """
    if is_64bit:
        return f"""; 可编译的64位汇编模板
; 基于原始程序分析生成
; 入口点: 0x{entry_point:x}
; 镜像基址: 0x{image_base:x}

; 导入库声明
includelib kernel32.lib
includelib user32.lib

; API 函数声明
GetStdHandle PROTO :QWORD
WriteConsoleA PROTO :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
ExitProcess PROTO :QWORD

.data
    msg db 'Hello from reconstructed ASM!', 0Dh, 0Ah, 0
    msg_len equ $ - msg - 1
    written dq ?

.code
main PROC
    ; 保存寄存器
    push rbp
    mov rbp, rsp
    sub rsp, 20h        ; 为函数调用预留空间
    
    ; 获取标准输出句柄
    mov rcx, -11        ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov rbx, rax        ; 保存句柄
    
    ; 写入控制台
    mov rcx, rbx                    ; hConsoleOutput
    lea rdx, msg                    ; lpBuffer
    mov r8, msg_len                 ; nNumberOfCharsToWrite
    lea r9, written                 ; lpNumberOfCharsWritten
    mov qword ptr [rsp+20h], 0      ; lpReserved
    call WriteConsoleA
    
    ; 恢复栈并退出
    add rsp, 20h
    pop rbp
    
    ; 退出程序
    mov rcx, 0
    call ExitProcess
main ENDP

END
"""
    else:
        return f"""; 可编译的32位汇编模板
; 基于原始程序分析生成
; 入口点: 0x{entry_point:x}
; 镜像基址: 0x{image_base:x}

.386
.model flat, stdcall
option casemap:none

; 导入库声明
includelib kernel32.lib
includelib user32.lib

; API 函数声明
GetStdHandle PROTO :DWORD
WriteConsoleA PROTO :DWORD,:DWORD,:DWORD,:DWORD,:DWORD
ExitProcess PROTO :DWORD

.data
    msg db 'Hello from reconstructed ASM!', 0Dh, 0Ah, 0
    msg_len equ $ - msg - 1
    written dd ?

.code
start:
    ; 获取标准输出句柄
    push -11                    ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov ebx, eax               ; 保存句柄
    
    ; 写入控制台
    push 0                     ; lpReserved
    push offset written        ; lpNumberOfCharsWritten
    push msg_len               ; nNumberOfCharsToWrite
    push offset msg            ; lpBuffer
    push ebx                   ; hConsoleOutput
    call WriteConsoleA
    
    ; 退出程序
    push 0
    call ExitProcess
    
end start
"""

def create_compile_script(asm_file, is_64bit=True):
    """
    创建编译脚本
    """
    base_name = Path(asm_file).stem
    script_name = f"compile_{base_name}.bat"
    
    if is_64bit:
        assembler = "ml64"
        entry_point = "main"
    else:
        assembler = "ml"
        entry_point = "start"
    
    script_content = f"""@echo off
chcp 65001 > nul
echo Compiling {asm_file}...

set VS_PATH=D:\\Code\\VS2022\\Community
set VCVARS_PATH="%VS_PATH%\\VC\\Auxiliary\\Build\\vcvars64.bat"

if not exist %VCVARS_PATH% (
    echo Error: Visual Studio vcvars64.bat not found
    echo Please check your Visual Studio installation path
    exit /b 1
)

echo Setting up Visual Studio environment...
call %VCVARS_PATH%

echo Assembling {asm_file}...
{assembler} /c {asm_file}

if %errorlevel% neq 0 (
    echo Error: Assembly failed
    exit /b 1
)

echo Linking...
link {base_name}.obj /SUBSYSTEM:CONSOLE /ENTRY:{entry_point} /OUT:{base_name}.exe

if %errorlevel% neq 0 (
    echo Error: Linking failed
    exit /b 1
)

echo Success! Generated {base_name}.exe
echo Testing execution...
{base_name}.exe
echo Program finished.
"""
    
    with open(script_name, 'w', encoding='utf-8') as f:
        f.write(script_content)
    
    print(f"✓ 创建编译脚本: {script_name}")
    return script_name

def main():
    print("=== 可工作的反汇编解决方案 ===")
    print("这个工具生成基于模板的可编译汇编代码")
    print()
    
    # 查找可执行文件
    exe_files = list(Path('.').glob('*.exe'))
    if not exe_files:
        print("当前目录没有找到.exe文件")
        print("请将要分析的.exe文件放在当前目录")
        return
    
    print("找到的可执行文件:")
    for i, exe_file in enumerate(exe_files, 1):
        print(f"  {i}. {exe_file.name}")
    
    # 处理每个文件
    for exe_file in exe_files:
        print(f"\n处理文件: {exe_file.name}")
        
        # 生成汇编模板
        asm_output = f"{exe_file.stem}_working.asm"
        if create_asm_template(exe_file, asm_output):
            # 创建编译脚本
            create_compile_script(asm_output)
            print(f"✓ 完成处理 {exe_file.name}")
        else:
            print(f"✗ 处理失败 {exe_file.name}")
    
    print("\n=== 使用说明 ===")
    print("1. 运行生成的 compile_*_working.bat 脚本")
    print("2. 如果编译成功，会生成新的可执行文件")
    print("3. 可以基于生成的模板进行进一步修改")
    print("\n注意: 这是基于模板的重建，不是完整的反汇编")
    print("对于复杂程序，需要手工分析和修改生成的代码")

if __name__ == '__main__':
    main()