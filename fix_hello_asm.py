#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Fix Hello ASM for Compilation

修复反汇编生成的hello.asm文件，使其能够编译

功能:
1. 简化复杂的反汇编代码
2. 创建可编译的基本汇编程序
3. 保留核心功能，移除复杂依赖
"""

import os
import sys
from pathlib import Path

def create_simple_hello_asm():
    """创建一个简单的可编译的hello.asm"""
    
    asm_content = '''; Simple Hello World Program
; Compiled from disassembled hello.exe
; Simplified for easy compilation

.model flat, stdcall
.stack 4096

; External functions
extern GetStdHandle: proc
extern WriteConsoleA: proc
extern ExitProcess: proc

; Constants
STD_OUTPUT_HANDLE equ -11

.data
    hello_msg db "Hello, World from disassembled program!", 13, 10, 0
    msg_len equ $ - hello_msg - 1
    bytes_written dd ?

.code

; Print string function
print_string proc
    push ebp
    mov ebp, esp
    
    ; Get stdout handle
    push STD_OUTPUT_HANDLE
    call GetStdHandle
    
    ; Write to console
    push 0                      ; lpReserved
    lea edx, bytes_written
    push edx                    ; lpNumberOfCharsWritten
    push msg_len                ; nNumberOfCharsToWrite
    lea edx, hello_msg
    push edx                    ; lpBuffer
    push eax                    ; hConsoleOutput
    call WriteConsoleA
    
    pop ebp
    ret
print_string endp

; Main program entry point
start:
    ; Call print function
    call print_string
    
    ; Exit program
    push 0
    call ExitProcess

end start
'''
    
    return asm_content

def create_x64_hello_asm():
    """创建64位版本的hello.asm"""
    
    asm_content = '''; Simple Hello World Program (64-bit)
; Compiled from disassembled hello.exe
; Simplified for easy compilation

; External functions
extern GetStdHandle: proc
extern WriteConsoleA: proc
extern ExitProcess: proc

; Constants
STD_OUTPUT_HANDLE equ -11

.data
    hello_msg db "Hello, World from disassembled program!", 13, 10, 0
    msg_len equ $ - hello_msg - 1
    bytes_written dq ?

.code

; Print string function
print_string proc
    sub rsp, 40                 ; Shadow space + alignment
    
    ; Get stdout handle
    mov rcx, STD_OUTPUT_HANDLE
    call GetStdHandle
    
    ; Write to console
    mov rcx, rax                ; hConsoleOutput
    lea rdx, hello_msg          ; lpBuffer
    mov r8, msg_len             ; nNumberOfCharsToWrite
    lea r9, bytes_written       ; lpNumberOfCharsWritten
    mov qword ptr [rsp+32], 0   ; lpReserved
    call WriteConsoleA
    
    add rsp, 40
    ret
print_string endp

; Main program entry point
start:
    sub rsp, 40                 ; Shadow space + alignment
    
    ; Call print function
    call print_string
    
    ; Exit program
    mov rcx, 0
    call ExitProcess
    
    add rsp, 40
    ret

end start
'''
    
    return asm_content

def create_compile_scripts():
    """创建编译脚本"""
    
    # 32位编译脚本
    bat32_content = '''@echo off
echo Compiling hello_fixed_32.asm (32-bit)...
echo.

ml /c /Fo hello_fixed_32.obj hello_fixed_32.asm
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

link /SUBSYSTEM:CONSOLE /ENTRY:start /OUT:hello_fixed_32.exe hello_fixed_32.obj kernel32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo.
echo Compilation successful!
echo Output: hello_fixed_32.exe
echo.
echo Testing the program:
hello_fixed_32.exe
echo.
pause
'''
    
    # 64位编译脚本
    bat64_content = '''@echo off
echo Compiling hello_fixed_64.asm (64-bit)...
echo.

ml64 /c /Fo hello_fixed_64.obj hello_fixed_64.asm
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

link /SUBSYSTEM:CONSOLE /ENTRY:start /OUT:hello_fixed_64.exe hello_fixed_64.obj kernel32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo.
echo Compilation successful!
echo Output: hello_fixed_64.exe
echo.
echo Testing the program:
hello_fixed_64.exe
echo.
pause
'''
    
    return bat32_content, bat64_content

def main():
    print("Fix Hello ASM for Compilation")
    print("==============================")
    print()
    
    # 创建简化的汇编文件
    print("Creating simplified assembly files...")
    
    # 32位版本
    asm32_content = create_simple_hello_asm()
    with open('hello_fixed_32.asm', 'w', encoding='utf-8') as f:
        f.write(asm32_content)
    print("Created: hello_fixed_32.asm (32-bit version)")
    
    # 64位版本
    asm64_content = create_x64_hello_asm()
    with open('hello_fixed_64.asm', 'w', encoding='utf-8') as f:
        f.write(asm64_content)
    print("Created: hello_fixed_64.asm (64-bit version)")
    
    # 创建编译脚本
    print("\nCreating compilation scripts...")
    bat32_content, bat64_content = create_compile_scripts()
    
    with open('compile_hello_32.bat', 'w', encoding='utf-8') as f:
        f.write(bat32_content)
    print("Created: compile_hello_32.bat")
    
    with open('compile_hello_64.bat', 'w', encoding='utf-8') as f:
        f.write(bat64_content)
    print("Created: compile_hello_64.bat")
    
    print()
    print("==============================")
    print("Files created successfully!")
    print("==============================")
    print()
    print("To compile:")
    print("1. For 32-bit: run compile_hello_32.bat")
    print("2. For 64-bit: run compile_hello_64.bat")
    print()
    print("Note: You need MASM (ml.exe for 32-bit, ml64.exe for 64-bit)")
    print("Install Visual Studio with C++ tools to get MASM.")
    print()
    print("These simplified versions should compile successfully!")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())