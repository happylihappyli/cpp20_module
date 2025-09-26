#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Disassembly-based EXE to ASM Converter

基于反汇编的exe到汇编转换工具

功能:
1. 使用反汇编引擎分析exe文件的机器码
2. 重建汇编指令序列
3. 生成可编译的MASM汇编代码
4. 保持原程序的执行逻辑和结构

使用方法:
    python disasm_exe_to_asm.py <input_exe> [output_asm]
"""

import os
import sys
import subprocess
import struct
from pathlib import Path
from typing import List, Dict, Tuple, Optional

try:
    import pefile
except ImportError:
    print("Error: pefile library not installed")
    print("Install with: pip install pefile")
    sys.exit(1)

try:
    import capstone
except ImportError:
    print("Error: capstone library not installed")
    print("Install with: pip install capstone")
    sys.exit(1)

class DisasmExeToAsm:
    def __init__(self, exe_path: str, asm_path: str = None):
        self.exe_path = Path(exe_path)
        self.asm_path = Path(asm_path) if asm_path else self.exe_path.with_suffix('.asm')
        
        # PE分析结果
        self.pe = None
        self.image_base = 0
        self.entry_point = 0
        self.architecture = "x64"
        
        # 反汇编结果
        self.instructions = []
        self.imports = {}
        self.strings = {}
        self.sections = {}
        
    def analyze_pe_file(self) -> bool:
        """分析PE文件结构"""
        try:
            self.pe = pefile.PE(str(self.exe_path))
            
            # 基本信息
            self.image_base = self.pe.OPTIONAL_HEADER.ImageBase
            self.entry_point = self.pe.OPTIONAL_HEADER.AddressOfEntryPoint + self.image_base
            
            # 架构检测
            if self.pe.FILE_HEADER.Machine == 0x8664:
                self.architecture = "x64"
            elif self.pe.FILE_HEADER.Machine == 0x14c:
                self.architecture = "x86"
            else:
                print(f"Unsupported architecture: {self.pe.FILE_HEADER.Machine:04x}")
                return False
                
            print(f"Architecture: {self.architecture}")
            print(f"Image Base: 0x{self.image_base:08x}")
            print(f"Entry Point: 0x{self.entry_point:08x}")
            
            # 提取导入表
            if hasattr(self.pe, 'DIRECTORY_ENTRY_IMPORT'):
                for entry in self.pe.DIRECTORY_ENTRY_IMPORT:
                    dll_name = entry.dll.decode('utf-8')
                    for imp in entry.imports:
                        if imp.name:
                            func_name = imp.name.decode('utf-8')
                            self.imports[imp.address] = f"{dll_name}!{func_name}"
                            
            # 提取段信息
            for section in self.pe.sections:
                section_name = section.Name.decode('utf-8').rstrip('\x00')
                self.sections[section_name] = {
                    'virtual_address': section.VirtualAddress + self.image_base,
                    'size': section.Misc_VirtualSize,
                    'raw_data': section.get_data()
                }
                
            # 提取字符串
            self.extract_strings()
            
            return True
            
        except Exception as e:
            print(f"PE analysis failed: {e}")
            return False
            
    def extract_strings(self):
        """提取程序中的字符串"""
        for section_name, section_info in self.sections.items():
            if '.rdata' in section_name or '.data' in section_name:
                data = section_info['raw_data']
                strings = self.find_strings_in_data(data)
                base_addr = section_info['virtual_address']
                
                for offset, string in strings:
                    self.strings[base_addr + offset] = string
                    
    def find_strings_in_data(self, data: bytes) -> List[Tuple[int, str]]:
        """在数据中查找字符串"""
        strings = []
        i = 0
        while i < len(data) - 4:
            # 查找ASCII字符串
            if 32 <= data[i] <= 126:  # 可打印ASCII字符
                start = i
                while i < len(data) and 32 <= data[i] <= 126:
                    i += 1
                if i - start >= 4:  # 最少4个字符
                    try:
                        string = data[start:i].decode('ascii')
                        strings.append((start, string))
                    except:
                        pass
            else:
                i += 1
        return strings
        
    def disassemble_code(self) -> bool:
        """反汇编代码段"""
        try:
            # 设置capstone反汇编器
            if self.architecture == "x64":
                md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
            else:
                md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
                
            md.detail = True
            
            # 找到代码段
            text_section = self.sections.get('.text')
            if not text_section:
                print("No .text section found")
                return False
                
            code_data = text_section['raw_data']
            code_base = text_section['virtual_address']
            
            print(f"Disassembling .text section at 0x{code_base:08x}, size: {len(code_data)} bytes")
            
            # 反汇编
            for insn in md.disasm(code_data, code_base):
                self.instructions.append({
                    'address': insn.address,
                    'mnemonic': insn.mnemonic,
                    'op_str': insn.op_str,
                    'bytes': insn.bytes
                })
                
            print(f"Disassembled {len(self.instructions)} instructions")
            return True
            
        except Exception as e:
            print(f"Disassembly failed: {e}")
            return False
            
    def convert_instruction_to_masm(self, insn: dict) -> str:
        """将反汇编指令转换为MASM格式"""
        mnemonic = insn['mnemonic']
        op_str = insn['op_str']
        
        # 处理特殊指令
        if mnemonic == 'call':
            # 检查是否是导入函数调用
            if op_str.startswith('0x'):
                try:
                    addr = int(op_str, 16)
                    if addr in self.imports:
                        import_name = self.imports[addr]
                        dll, func = import_name.split('!', 1)
                        return f"    call {func}"
                except:
                    pass
            return f"    call {op_str}"
            
        elif mnemonic == 'lea' and any(hex(addr) in op_str for addr in self.strings.keys()):
            # 字符串引用
            for addr, string in self.strings.items():
                if hex(addr) in op_str:
                    return f"    lea {op_str.split(',')[0]}, offset str_{addr:08x}"
            return f"    lea {op_str}"
            
        elif mnemonic in ['mov', 'add', 'sub', 'mul', 'imul', 'div', 'idiv', 'cmp', 'jmp', 'je', 'jne', 'jl', 'jg', 'jle', 'jge']:
            return f"    {mnemonic} {op_str}"
            
        elif mnemonic == 'ret':
            return "    ret"
            
        elif mnemonic == 'push':
            return f"    push {op_str}"
            
        elif mnemonic == 'pop':
            return f"    pop {op_str}"
            
        else:
            return f"    {mnemonic} {op_str}"
            
    def generate_asm_code(self) -> str:
        """生成完整的汇编代码"""
        asm_lines = []
        
        # 汇编头部
        asm_lines.extend([
            "; Disassembly-based converted assembly from EXE",
            "; Generated by reverse engineering the machine code",
            "",
            ".model flat, stdcall",
            ".stack 4096",
            "",
            "extern GetStdHandle@4: proc",
            "extern WriteConsoleA@20: proc",
            "extern ExitProcess@4: proc",
            "extern lstrlenA@4: proc",
            "",
            "STD_OUTPUT_HANDLE equ -11",
            ""
        ])
        
        # 数据段
        asm_lines.append(".data")
        
        # 添加字符串常量
        for addr, string in self.strings.items():
            clean_string = string.replace('"', '\"').replace('\\', '\\\\')
            asm_lines.append(f'    str_{addr:08x} db "{clean_string}", 0')
            
        asm_lines.extend([
            "    newline db 13, 10, 0",
            "    bytes_written dd ?",
            ""
        ])
        
        # 代码段
        asm_lines.append(".code")
        
        # 添加辅助函数
        asm_lines.extend([
            "print_string proc",
            "    push ebp",
            "    mov ebp, esp",
            "    push ebx",
            "    push ecx",
            "    push edx",
            "    ",
            "    ; Get stdout handle",
            "    push STD_OUTPUT_HANDLE",
            "    call GetStdHandle@4",
            "    mov ebx, eax",
            "    ",
            "    ; Get string length",
            "    push dword ptr [ebp+8]",
            "    call lstrlenA@4",
            "    mov ecx, eax",
            "    ",
            "    ; Write string",
            "    push 0",
            "    push offset bytes_written",
            "    push ecx",
            "    push dword ptr [ebp+8]",
            "    push ebx",
            "    call WriteConsoleA@20",
            "    ",
            "    ; Write newline",
            "    push 0",
            "    push offset bytes_written",
            "    push 2",
            "    push offset newline",
            "    push ebx",
            "    call WriteConsoleA@20",
            "    ",
            "    pop edx",
            "    pop ecx",
            "    pop ebx",
            "    pop ebp",
            "    ret 4",
            "print_string endp",
            ""
        ])
        
        # 主程序 - 从入口点开始的反汇编代码
        asm_lines.extend([
            "start:",
            "    ; Disassembled machine code from original EXE"
        ])
        
        # 添加反汇编的指令
        in_main_function = False
        for insn in self.instructions:
            if insn['address'] >= self.entry_point:
                in_main_function = True
                
            if in_main_function:
                asm_line = self.convert_instruction_to_masm(insn)
                asm_lines.append(asm_line)
                
                # 如果遇到程序退出指令，停止
                if insn['mnemonic'] == 'call' and 'ExitProcess' in str(insn['op_str']):
                    break
                    
        # 确保程序正确退出
        if not any('ExitProcess' in line for line in asm_lines[-10:]):
            asm_lines.extend([
                "    ; Ensure program exit",
                "    push 0",
                "    call ExitProcess@4"
            ])
            
        asm_lines.append("")
        asm_lines.append("end start")
        
        return "\n".join(asm_lines)
        
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
        print(f"Converting {self.exe_path} to {self.asm_path} using disassembly")
        
        # 1. 分析PE文件
        if not self.analyze_pe_file():
            return False
            
        # 2. 反汇编代码
        if not self.disassemble_code():
            return False
            
        # 3. 生成汇编代码
        print("Generating assembly code from disassembly...")
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
        print("Usage: python disasm_exe_to_asm.py <input_exe> [output_asm]")
        return 1
        
    exe_path = sys.argv[1]
    asm_path = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(exe_path):
        print(f"Error: {exe_path} not found")
        return 1
        
    converter = DisasmExeToAsm(exe_path, asm_path)
    
    if converter.convert():
        print("Disassembly-based conversion completed successfully!")
        return 0
    else:
        print("Conversion failed!")
        return 1
        
if __name__ == "__main__":
    sys.exit(main())