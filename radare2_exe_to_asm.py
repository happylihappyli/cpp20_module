#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Radare2 EXE to ASM Converter

使用Radare2反汇编exe文件到汇编代码

功能:
1. 使用Radare2反汇编引擎分析exe文件
2. 提取完整的汇编指令
3. 生成可读的汇编代码文件
4. 支持任何格式的exe文件

使用方法:
    python radare2_exe_to_asm.py <input_exe> [output_asm]

依赖:
    - radare2 (需要安装radare2工具)
    - r2pipe (pip install r2pipe)
"""

import os
import sys
import subprocess
import json
from pathlib import Path
from typing import List, Dict, Optional

try:
    import r2pipe
except ImportError:
    print("Error: r2pipe library not installed")
    print("Install with: pip install r2pipe")
    sys.exit(1)

class Radare2ExeToAsm:
    def __init__(self, exe_path: str, asm_path: str = None):
        self.exe_path = Path(exe_path)
        self.asm_path = Path(asm_path) if asm_path else self.exe_path.with_suffix('.asm')
        
        # Radare2 实例
        self.r2 = None
        
        # 分析结果
        self.functions = []
        self.strings = []
        self.imports = []
        self.sections = []
        self.disasm_code = []
        self.entry_point = 0
        self.architecture = ""
        
    def check_radare2_installation(self) -> bool:
        """检查Radare2是否已安装"""
        try:
            result = subprocess.run(['r2', '-v'], capture_output=True, text=True, timeout=10)
            if result.returncode == 0:
                print(f"Found Radare2: {result.stdout.strip().split()[0]}")
                return True
            else:
                print("Radare2 not found in PATH")
                return False
        except (subprocess.TimeoutExpired, FileNotFoundError):
            print("Radare2 not installed or not accessible")
            print("Please install Radare2 from: https://rada.re/n/")
            return False
            
    def open_binary(self) -> bool:
        """使用Radare2打开二进制文件"""
        try:
            print(f"Opening {self.exe_path} with Radare2...")
            self.r2 = r2pipe.open(str(self.exe_path))
            
            # 获取基本信息
            info = self.r2.cmdj('ij')
            if info:
                self.entry_point = info.get('core', {}).get('entry', 0)
                self.architecture = info.get('bin', {}).get('arch', 'unknown')
                print(f"Architecture: {self.architecture}")
                print(f"Entry Point: 0x{self.entry_point:x}")
                
            return True
            
        except Exception as e:
            print(f"Failed to open binary with Radare2: {e}")
            return False
            
    def analyze_binary(self) -> bool:
        """分析二进制文件"""
        try:
            print("Analyzing binary...")
            
            # 自动分析
            self.r2.cmd('aaa')
            
            # 获取函数列表
            functions = self.r2.cmdj('aflj')
            if functions:
                self.functions = functions
                print(f"Found {len(self.functions)} functions")
                
            # 获取字符串
            strings = self.r2.cmdj('izj')
            if strings:
                self.strings = strings
                print(f"Found {len(self.strings)} strings")
                
            # 获取导入表
            imports = self.r2.cmdj('iij')
            if imports:
                self.imports = imports
                print(f"Found {len(self.imports)} imports")
                
            # 获取段信息
            sections = self.r2.cmdj('iSj')
            if sections:
                self.sections = sections
                print(f"Found {len(self.sections)} sections")
                
            return True
            
        except Exception as e:
            print(f"Binary analysis failed: {e}")
            return False
            
    def disassemble_all(self) -> bool:
        """反汇编所有代码"""
        try:
            print("Disassembling code...")
            
            # 反汇编所有函数
            for func in self.functions:
                func_addr = func.get('offset', 0)
                func_name = func.get('name', f'func_{func_addr:x}')
                func_size = func.get('size', 0)
                
                if func_size > 0:
                    # 反汇编函数
                    disasm = self.r2.cmd(f'pdf @ {func_addr}')
                    if disasm:
                        self.disasm_code.append({
                            'name': func_name,
                            'address': func_addr,
                            'size': func_size,
                            'disasm': disasm
                        })
                        
            # 如果没有找到函数，尝试反汇编整个代码段
            if not self.disasm_code:
                print("No functions found, disassembling code sections...")
                for section in self.sections:
                    if section.get('perm', '') and 'x' in section.get('perm', ''):
                        # 可执行段
                        sect_addr = section.get('vaddr', 0)
                        sect_size = section.get('vsize', 0)
                        sect_name = section.get('name', f'section_{sect_addr:x}')
                        
                        if sect_size > 0:
                            disasm = self.r2.cmd(f'pd {sect_size // 4} @ {sect_addr}')
                            if disasm:
                                self.disasm_code.append({
                                    'name': sect_name,
                                    'address': sect_addr,
                                    'size': sect_size,
                                    'disasm': disasm
                                })
                                
            print(f"Disassembled {len(self.disasm_code)} code blocks")
            return len(self.disasm_code) > 0
            
        except Exception as e:
            print(f"Disassembly failed: {e}")
            return False
            
    def format_disasm_to_masm(self, disasm_text: str) -> str:
        """将Radare2反汇编格式转换为MASM格式"""
        lines = disasm_text.split('\n')
        masm_lines = []
        
        for line in lines:
            line = line.strip()
            if not line or line.startswith(';') or line.startswith('/'):
                continue
                
            # 解析地址和指令
            if '│' in line:
                # 移除Radare2的格式字符
                line = line.replace('│', '').replace('└', '').replace('┌', '').replace('┐', '')
                line = line.replace('├', '').replace('┤', '').replace('┘', '').replace('┴', '')
                line = line.strip()
                
            # 查找指令部分
            parts = line.split()
            if len(parts) >= 2:
                # 第一部分通常是地址
                if parts[0].startswith('0x'):
                    addr = parts[0]
                    # 查找指令
                    instr_start = line.find(parts[1])
                    if instr_start > 0:
                        instruction = line[instr_start:].strip()
                        # 转换为MASM格式
                        masm_instr = self.convert_to_masm_syntax(instruction)
                        if masm_instr:
                            masm_lines.append(f"    {masm_instr}  ; {addr}")
                            
        return '\n'.join(masm_lines)
        
    def convert_to_masm_syntax(self, instruction: str) -> str:
        """将指令转换为MASM语法"""
        # 基本的语法转换
        instruction = instruction.replace('dword ptr [', 'dword ptr [')
        instruction = instruction.replace('qword ptr [', 'qword ptr [')
        instruction = instruction.replace('byte ptr [', 'byte ptr [')
        instruction = instruction.replace('word ptr [', 'word ptr [')
        
        # 处理寄存器名称（如果需要）
        # 这里可以添加更多的语法转换规则
        
        return instruction
        
    def generate_asm_file(self) -> str:
        """生成完整的汇编文件"""
        asm_lines = []
        
        # 文件头
        asm_lines.extend([
            "; Disassembled with Radare2",
            f"; Source: {self.exe_path.name}",
            f"; Architecture: {self.architecture}",
            f"; Entry Point: 0x{self.entry_point:x}",
            "",
            ".model flat, stdcall",
            ".stack 4096",
            ""
        ])
        
        # 外部函数声明
        if self.imports:
            asm_lines.append("; External functions")
            for imp in self.imports[:20]:  # 限制数量避免过多
                name = imp.get('name', '')
                if name and not name.startswith('_'):
                    asm_lines.append(f"extern {name}: proc")
            asm_lines.append("")
            
        # 数据段
        asm_lines.append(".data")
        
        # 添加字符串常量
        if self.strings:
            asm_lines.append("    ; String constants")
            for i, string_info in enumerate(self.strings[:50]):  # 限制数量
                string_val = string_info.get('string', '')
                addr = string_info.get('vaddr', 0)
                if string_val and len(string_val) > 1:
                    # 清理字符串
                    clean_string = string_val.replace('"', '\"').replace('\\', '\\\\')
                    clean_string = ''.join(c for c in clean_string if ord(c) >= 32 and ord(c) <= 126)
                    if clean_string:
                        asm_lines.append(f'    str_{addr:08x} db "{clean_string}", 0')
                        
        asm_lines.extend([
            "    newline db 13, 10, 0",
            ""
        ])
        
        # 代码段
        asm_lines.append(".code")
        asm_lines.append("")
        
        # 添加反汇编的代码
        for code_block in self.disasm_code:
            name = code_block['name']
            addr = code_block['address']
            disasm = code_block['disasm']
            
            asm_lines.append(f"; Function: {name} @ 0x{addr:x}")
            asm_lines.append(f"{name.replace('.', '_')}:")
            
            # 转换反汇编代码
            masm_code = self.format_disasm_to_masm(disasm)
            if masm_code:
                asm_lines.append(masm_code)
            else:
                asm_lines.append("    ; No disassembly available")
                
            asm_lines.append("")
            
        # 程序入口
        if self.entry_point:
            asm_lines.extend([
                "start:",
                f"    ; Entry point at 0x{self.entry_point:x}",
                "    ; Add your main program logic here",
                "    ret",
                "",
                "end start"
            ])
        else:
            asm_lines.append("end")
            
        return '\n'.join(asm_lines)
        
    def generate_compile_script(self) -> str:
        """生成编译脚本"""
        asm_name = self.asm_path.stem
        return f'''@echo off
echo Compiling {asm_name}.asm using MASM...

rem Try to find MASM
set "MASM_PATH="
if exist "C:\\masm32\\bin\\ml.exe" (
    set "MASM_PATH=C:\\masm32\\bin"
) else if exist "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Tools\\MSVC\\*\\bin\\Hostx64\\x86\\ml.exe" (
    for /d %%i in ("C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Tools\\MSVC\\*") do (
        if exist "%%i\\bin\\Hostx64\\x86\\ml.exe" (
            set "MASM_PATH=%%i\\bin\\Hostx64\\x86"
            goto :found_masm
        )
    )
) else (
    echo MASM not found! Please install MASM32 or Visual Studio.
    pause
    exit /b 1
)

:found_masm
echo Found MASM at: %MASM_PATH%

echo Assembling...
"%MASM_PATH%\\ml.exe" /c /Zi /Fl {asm_name}.asm
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

echo Linking...
"%MASM_PATH%\\link.exe" /SUBSYSTEM:CONSOLE {asm_name}.obj kernel32.lib
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
        print(f"Converting {self.exe_path} to {self.asm_path} using Radare2")
        
        # 1. 检查Radare2安装
        if not self.check_radare2_installation():
            return False
            
        # 2. 打开二进制文件
        if not self.open_binary():
            return False
            
        try:
            # 3. 分析二进制文件
            if not self.analyze_binary():
                return False
                
            # 4. 反汇编代码
            if not self.disassemble_all():
                return False
                
            # 5. 生成汇编文件
            print("Generating assembly file...")
            asm_content = self.generate_asm_file()
            
            # 6. 写入文件
            with open(self.asm_path, 'w', encoding='utf-8') as f:
                f.write(asm_content)
            print(f"Assembly file written to {self.asm_path}")
            
            # 7. 生成编译脚本
            compile_script = self.generate_compile_script()
            compile_path = self.asm_path.with_suffix('.bat')
            with open(compile_path, 'w', encoding='utf-8') as f:
                f.write(compile_script)
            print(f"Compile script written to {compile_path}")
            
            return True
            
        finally:
            # 关闭Radare2
            if self.r2:
                self.r2.quit()
                
    def close(self):
        """关闭Radare2连接"""
        if self.r2:
            self.r2.quit()
            
def main():
    if len(sys.argv) < 2:
        print("Usage: python radare2_exe_to_asm.py <input_exe> [output_asm]")
        print("")
        print("Examples:")
        print("  python radare2_exe_to_asm.py program.exe")
        print("  python radare2_exe_to_asm.py program.exe output.asm")
        return 1
        
    exe_path = sys.argv[1]
    asm_path = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(exe_path):
        print(f"Error: {exe_path} not found")
        return 1
        
    converter = Radare2ExeToAsm(exe_path, asm_path)
    
    try:
        if converter.convert():
            print("\nRadare2 conversion completed successfully!")
            print(f"Assembly file: {converter.asm_path}")
            print(f"Compile script: {converter.asm_path.with_suffix('.bat')}")
            return 0
        else:
            print("\nConversion failed!")
            return 1
    finally:
        converter.close()
        
if __name__ == "__main__":
    sys.exit(main())