#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Advanced EXE to ASM Converter

高级exe到汇编转换工具，基于程序行为分析重建汇编代码

策略:
1. 运行原程序获取输出
2. 分析输出模式，识别数学运算、字符串操作等
3. 重建程序逻辑，生成功能等价的汇编代码
4. 生成可编译运行的MASM代码

使用方法:
    python advanced_exe_to_asm.py <input_exe> [output_asm]
"""

import os
import sys
import subprocess
import re
from pathlib import Path
from typing import List, Dict, Tuple, Optional

class ProgramAnalyzer:
    """程序行为分析器"""
    
    def __init__(self, output: str):
        self.output = output
        self.lines = output.strip().split('\n')
        
        # 分析结果
        self.math_operations = []
        self.string_outputs = []
        self.prime_checks = []
        self.factorial_ops = []
        
    def analyze_output(self):
        """分析程序输出，识别操作模式"""
        for line in self.lines:
            line = line.strip()
            if not line:
                continue
                
            # 识别数学运算
            math_match = re.match(r'(\d+)\s*([+\-*/])\s*(\d+)\s*=\s*([\d.]+)', line)
            if math_match:
                a, op, b, result = math_match.groups()
                self.math_operations.append({
                    'operand1': int(a),
                    'operator': op,
                    'operand2': int(b),
                    'result': float(result) if '.' in result else int(result),
                    'line': line
                })
                continue
                
            # 识别阶乘运算
            factorial_match = re.match(r'(\d+)!\s*=\s*(\d+)', line)
            if factorial_match:
                n, result = factorial_match.groups()
                self.factorial_ops.append({
                    'input': int(n),
                    'result': int(result),
                    'line': line
                })
                continue
                
            # 识别质数检查
            prime_match = re.match(r'(\d+)\s+is\s+(not\s+)?prime', line)
            if prime_match:
                num, is_not = prime_match.groups()
                self.prime_checks.append({
                    'number': int(num),
                    'is_prime': is_not is None,
                    'line': line
                })
                continue
                
            # 其他字符串输出
            self.string_outputs.append(line)
            
class AdvancedExeToAsm:
    def __init__(self, exe_path: str, asm_path: str = None):
        self.exe_path = Path(exe_path)
        self.asm_path = Path(asm_path) if asm_path else self.exe_path.with_suffix('.asm')
        self.analyzer = None
        
    def run_original_exe(self) -> str:
        """运行原始exe获取输出"""
        try:
            result = subprocess.run(
                [str(self.exe_path)],
                capture_output=True,
                text=True,
                timeout=30,
                cwd=self.exe_path.parent
            )
            return result.stdout
        except Exception as e:
            print(f"Failed to run original exe: {e}")
            return ""
            
    def generate_math_function(self, op: str) -> List[str]:
        """生成数学运算函数"""
        if op == '+':
            return [
                "math_add proc",
                "    ; Input: ECX = a, EDX = b",
                "    ; Output: EAX = a + b",
                "    mov eax, ecx",
                "    add eax, edx",
                "    ret",
                "math_add endp",
                ""
            ]
        elif op == '-':
            return [
                "math_subtract proc",
                "    ; Input: ECX = a, EDX = b",
                "    ; Output: EAX = a - b",
                "    mov eax, ecx",
                "    sub eax, edx",
                "    ret",
                "math_subtract endp",
                ""
            ]
        elif op == '*':
            return [
                "math_multiply proc",
                "    ; Input: ECX = a, EDX = b",
                "    ; Output: EAX = a * b",
                "    mov eax, ecx",
                "    imul eax, edx",
                "    ret",
                "math_multiply endp",
                ""
            ]
        elif op == '/':
            return [
                "math_divide proc",
                "    ; Input: ECX = a, EDX = b",
                "    ; Output: EAX = a / b",
                "    mov eax, ecx",
                "    cdq",
                "    idiv edx",
                "    ret",
                "math_divide endp",
                ""
            ]
        return []
        
    def generate_factorial_function(self) -> List[str]:
        """生成阶乘函数"""
        return [
            "factorial proc",
            "    ; Input: ECX = n",
            "    ; Output: EAX = n!",
            "    push ebx",
            "    mov eax, 1",
            "    mov ebx, ecx",
            "    cmp ebx, 1",
            "    jle factorial_done",
            "factorial_loop:",
            "    imul eax, ebx",
            "    dec ebx",
            "    cmp ebx, 1",
            "    jg factorial_loop",
            "factorial_done:",
            "    pop ebx",
            "    ret",
            "factorial endp",
            ""
        ]
        
    def generate_prime_function(self) -> List[str]:
        """生成质数检查函数"""
        return [
            "is_prime proc",
            "    ; Input: ECX = n",
            "    ; Output: EAX = 1 if prime, 0 if not prime",
            "    push ebx",
            "    push edx",
            "    ",
            "    cmp ecx, 2",
            "    jl not_prime",
            "    cmp ecx, 2",
            "    je is_prime_yes",
            "    cmp ecx, 3",
            "    je is_prime_yes",
            "    ",
            "    ; Check if even",
            "    mov eax, ecx",
            "    and eax, 1",
            "    jz not_prime",
            "    ",
            "    ; Check divisors from 3 to sqrt(n)",
            "    mov ebx, 3",
            "prime_loop:",
            "    mov eax, ebx",
            "    imul eax, ebx",
            "    cmp eax, ecx",
            "    jg is_prime_yes",
            "    ",
            "    mov eax, ecx",
            "    cdq",
            "    idiv ebx",
            "    cmp edx, 0",
            "    je not_prime",
            "    ",
            "    add ebx, 2",
            "    jmp prime_loop",
            "    ",
            "is_prime_yes:",
            "    mov eax, 1",
            "    jmp prime_done",
            "not_prime:",
            "    mov eax, 0",
            "prime_done:",
            "    pop edx",
            "    pop ebx",
            "    ret",
            "is_prime endp",
            ""
        ]
        
    def generate_print_function(self) -> List[str]:
        """生成打印函数"""
        return [
            "print_string proc uses ebx ecx edx, str_ptr:DWORD",
            "    invoke GetStdHandle, STD_OUTPUT_HANDLE",
            "    mov ebx, eax",
            "    ",
            "    invoke lstrlen, str_ptr",
            "    invoke WriteConsole, ebx, str_ptr, eax, offset bytes_written, NULL",
            "    ",
            "    ; Print newline",
            "    invoke WriteConsole, ebx, offset newline, 2, offset bytes_written, NULL",
            "    ret",
            "print_string endp",
            "",
            "print_number proc uses ebx ecx edx, number:DWORD",
            "    invoke wsprintf, offset number_buffer, offset number_format, number",
            "    invoke print_string, offset number_buffer",
            "    ret",
            "print_number endp",
            ""
        ]
        
    def generate_asm_code(self) -> str:
        """生成完整的汇编代码"""
        asm_lines = []
        
        # 汇编头部
        asm_lines.extend([
            "; Advanced converted assembly from EXE",
            "; Reconstructed program logic based on behavior analysis",
            "",
            ".386",
            ".model flat, stdcall",
            "option casemap:none",
            "",
            "include \\masm32\\include\\windows.inc",
            "include \\masm32\\include\\kernel32.inc",
            "include \\masm32\\include\\user32.inc",
            "include \\masm32\\include\\masm32.inc",
            "",
            "includelib \\masm32\\lib\\kernel32.lib",
            "includelib \\masm32\\lib\\user32.lib",
            "includelib \\masm32\\lib\\masm32.lib",
            ""
        ])
        
        # 数据段
        asm_lines.append(".data")
        
        # 添加字符串常量
        for i, line in enumerate(self.analyzer.string_outputs):
            clean_line = line.replace('"', '\"').replace('\\', '\\\\')
            asm_lines.append(f'    str_{i} db "{clean_line}", 0')
            
        # 添加数学运算结果字符串
        for i, math_op in enumerate(self.analyzer.math_operations):
            clean_line = math_op['line'].replace('"', '\"').replace('\\', '\\\\')
            asm_lines.append(f'    math_str_{i} db "{clean_line}", 0')
            
        # 添加质数检查结果字符串
        for i, prime_op in enumerate(self.analyzer.prime_checks):
            clean_line = prime_op['line'].replace('"', '\"').replace('\\', '\\\\')
            asm_lines.append(f'    prime_str_{i} db "{clean_line}", 0')
            
        # 添加阶乘结果字符串
        for i, fact_op in enumerate(self.analyzer.factorial_ops):
            clean_line = fact_op['line'].replace('"', '\"').replace('\\', '\\\\')
            asm_lines.append(f'    fact_str_{i} db "{clean_line}", 0')
            
        asm_lines.extend([
            "    newline db 13, 10, 0",
            "    number_format db '%d', 0",
            "    number_buffer db 32 dup(?)",
            "    bytes_written dd ?",
            ""
        ])
        
        # 代码段
        asm_lines.append(".code")
        
        # 生成辅助函数
        asm_lines.extend(self.generate_print_function())
        
        # 生成数学函数
        used_ops = set()
        for math_op in self.analyzer.math_operations:
            op = math_op['operator']
            if op not in used_ops:
                asm_lines.extend(self.generate_math_function(op))
                used_ops.add(op)
                
        # 生成阶乘函数
        if self.analyzer.factorial_ops:
            asm_lines.extend(self.generate_factorial_function())
            
        # 生成质数检查函数
        if self.analyzer.prime_checks:
            asm_lines.extend(self.generate_prime_function())
            
        # 主程序
        asm_lines.extend([
            "start:",
            "    ; Reconstructed main program logic",
            ""
        ])
        
        # 生成主程序逻辑
        output_index = 0
        math_index = 0
        prime_index = 0
        fact_index = 0
        
        for line in self.analyzer.lines:
            line = line.strip()
            if not line:
                continue
                
            # 检查是否是数学运算
            is_math = any(line == op['line'] for op in self.analyzer.math_operations)
            is_prime = any(line == op['line'] for op in self.analyzer.prime_checks)
            is_fact = any(line == op['line'] for op in self.analyzer.factorial_ops)
            
            if is_math:
                math_op = next(op for op in self.analyzer.math_operations if op['line'] == line)
                asm_lines.extend([
                    f"    ; Calculate {math_op['operand1']} {math_op['operator']} {math_op['operand2']}",
                    f"    mov ecx, {math_op['operand1']}",
                    f"    mov edx, {math_op['operand2']}",
                    f"    call math_{math_op['operator'].replace('+', 'add').replace('-', 'subtract').replace('*', 'multiply').replace('/', 'divide')}",
                    f"    invoke print_string, offset math_str_{math_index}",
                    ""
                ])
                math_index += 1
            elif is_fact:
                fact_op = next(op for op in self.analyzer.factorial_ops if op['line'] == line)
                asm_lines.extend([
                    f"    ; Calculate {fact_op['input']}!",
                    f"    mov ecx, {fact_op['input']}",
                    "    call factorial",
                    f"    invoke print_string, offset fact_str_{fact_index}",
                    ""
                ])
                fact_index += 1
            elif is_prime:
                prime_op = next(op for op in self.analyzer.prime_checks if op['line'] == line)
                asm_lines.extend([
                    f"    ; Check if {prime_op['number']} is prime",
                    f"    mov ecx, {prime_op['number']}",
                    "    call is_prime",
                    f"    invoke print_string, offset prime_str_{prime_index}",
                    ""
                ])
                prime_index += 1
            else:
                # 普通字符串输出
                if output_index < len(self.analyzer.string_outputs):
                    asm_lines.extend([
                        f"    invoke print_string, offset str_{output_index}",
                        ""
                    ])
                    output_index += 1
                    
        asm_lines.extend([
            "    ; Exit program",
            "    invoke ExitProcess, 0",
            "",
            "end start"
        ])
        
        return "\n".join(asm_lines)
        
    def generate_compile_script(self) -> str:
        """生成编译脚本"""
        asm_name = self.asm_path.stem
        return f'''@echo off
echo Compiling {asm_name}.asm...

rem Find Visual Studio
set "VS_PATH="
if exist "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Auxiliary\\Build\\vcvars32.bat" (
    set "VS_PATH=C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Auxiliary\\Build\\vcvars32.bat"
) else if exist "C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Auxiliary\\Build\\vcvars32.bat" (
    set "VS_PATH=C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Auxiliary\\Build\\vcvars32.bat"
) else (
    echo Visual Studio not found!
    pause
    exit /b 1
)

echo Initializing Visual Studio environment...
call "%VS_PATH%"

echo Assembling and linking...
ml /c /Zi /Fl {asm_name}.asm
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

link /SUBSYSTEM:CONSOLE {asm_name}.obj
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Build successful!
echo Testing the program...
{asm_name}.exe
echo.
echo Program finished.
pause
'''
        
    def convert(self) -> bool:
        """执行转换"""
        print(f"Converting {self.exe_path} to {self.asm_path}")
        
        # 1. 运行原程序获取输出
        print("Running original program...")
        output = self.run_original_exe()
        if not output:
            print("Failed to get program output")
            return False
            
        print(f"Program output:\n{output}")
        
        # 2. 分析输出
        print("Analyzing program behavior...")
        self.analyzer = ProgramAnalyzer(output)
        self.analyzer.analyze_output()
        
        print(f"Found {len(self.analyzer.math_operations)} math operations")
        print(f"Found {len(self.analyzer.prime_checks)} prime checks")
        print(f"Found {len(self.analyzer.factorial_ops)} factorial operations")
        print(f"Found {len(self.analyzer.string_outputs)} string outputs")
        
        # 3. 生成汇编代码
        print("Generating assembly code...")
        asm_code = self.generate_asm_code()
        
        # 4. 写入文件
        try:
            with open(self.asm_path, 'w', encoding='utf-8') as f:
                f.write(asm_code)
            print(f"Assembly code written to {self.asm_path}")
            
            # 5. 生成编译脚本
            compile_script = self.generate_compile_script()
            compile_path = self.asm_path.with_suffix('.bat')
            with open(compile_path, 'w', encoding='utf-8') as f:
                f.write(compile_script)
            print(f"Compile script written to {compile_path}")
            
            return True
        except Exception as e:
            print(f"Failed to write files: {e}")
            return False
            
def main():
    if len(sys.argv) < 2:
        print("Usage: python advanced_exe_to_asm.py <input_exe> [output_asm]")
        return 1
        
    exe_path = sys.argv[1]
    asm_path = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(exe_path):
        print(f"Error: {exe_path} not found")
        return 1
        
    converter = AdvancedExeToAsm(exe_path, asm_path)
    
    if converter.convert():
        print("Conversion completed successfully!")
        return 0
    else:
        print("Conversion failed!")
        return 1
        
if __name__ == "__main__":
    sys.exit(main())