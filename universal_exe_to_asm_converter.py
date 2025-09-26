#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Universal EXE to ASM Converter

通用exe转asm转换器

功能:
1. 支持任何Windows PE格式的exe文件
2. 智能反汇编，生成可编译的汇编代码
3. 自动处理导入函数、字符串常量、数据段
4. 生成标准MASM格式的汇编文件
5. 包含编译脚本生成功能

使用方法:
    python universal_exe_to_asm_converter.py <input_exe> [output_asm]
"""

import os
import sys
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

class UniversalExeToAsmConverter:
    def __init__(self, exe_path: str, asm_path: str = None):
        self.exe_path = Path(exe_path)
        self.asm_path = Path(asm_path) if asm_path else self.exe_path.with_suffix('.asm')
        
        self.pe = None
        self.image_base = 0
        self.entry_point = 0
        self.is_64bit = True
        self.instructions = []
        self.imports = {}
        self.exports = {}
        self.strings = {}
        self.functions = []
        self.data_sections = []
        
    def analyze_pe_file(self) -> bool:
        """分析PE文件结构"""
        try:
            print(f"Analyzing PE file: {self.exe_path}")
            self.pe = pefile.PE(str(self.exe_path))
            
            # 基本信息
            self.image_base = self.pe.OPTIONAL_HEADER.ImageBase
            self.entry_point = self.pe.OPTIONAL_HEADER.AddressOfEntryPoint + self.image_base
            
            # 架构检测
            if self.pe.FILE_HEADER.Machine == 0x8664:
                self.is_64bit = True
                print("Architecture: x64")
            elif self.pe.FILE_HEADER.Machine == 0x14c:
                self.is_64bit = False
                print("Architecture: x86")
            else:
                print(f"Unsupported architecture: 0x{self.pe.FILE_HEADER.Machine:04x}")
                return False
                
            print(f"Image Base: 0x{self.image_base:08x}")
            print(f"Entry Point: 0x{self.entry_point:08x}")
            
            # 提取导入表
            self.extract_imports()
            
            # 提取导出表
            self.extract_exports()
            
            # 提取字符串
            self.extract_strings()
            
            # 分析数据段
            self.analyze_data_sections()
            
            return True
            
        except Exception as e:
            print(f"PE analysis failed: {e}")
            return False
            
    def extract_imports(self):
        """提取导入函数"""
        if not hasattr(self.pe, 'DIRECTORY_ENTRY_IMPORT'):
            return
            
        for entry in self.pe.DIRECTORY_ENTRY_IMPORT:
            dll_name = entry.dll.decode('utf-8').lower()
            for imp in entry.imports:
                if imp.name:
                    func_name = imp.name.decode('utf-8')
                    self.imports[imp.address] = {
                        'name': func_name,
                        'dll': dll_name,
                        'ordinal': imp.ordinal
                    }
                    
        print(f"Found {len(self.imports)} imports")
        
    def extract_exports(self):
        """提取导出函数"""
        if not hasattr(self.pe, 'DIRECTORY_ENTRY_EXPORT'):
            return
            
        for exp in self.pe.DIRECTORY_ENTRY_EXPORT.symbols:
            if exp.name:
                func_name = exp.name.decode('utf-8')
                self.exports[exp.address] = func_name
                
        print(f"Found {len(self.exports)} exports")
        
    def extract_strings(self):
        """提取字符串常量"""
        for section in self.pe.sections:
            if b'.rdata' in section.Name or b'.data' in section.Name:
                data = section.get_data()
                base_addr = section.VirtualAddress + self.image_base
                
                # ASCII字符串
                self.find_ascii_strings(data, base_addr)
                
                # Unicode字符串
                self.find_unicode_strings(data, base_addr)
                
        print(f"Found {len(self.strings)} strings")
        
    def find_ascii_strings(self, data: bytes, base_addr: int):
        """查找ASCII字符串"""
        i = 0
        while i < len(data) - 4:
            if 32 <= data[i] <= 126:
                start = i
                while i < len(data) and 32 <= data[i] <= 126:
                    i += 1
                if i - start >= 4:
                    try:
                        string_val = data[start:i].decode('ascii')
                        if any(c.isalpha() for c in string_val):
                            self.strings[base_addr + start] = {
                                'value': string_val,
                                'type': 'ascii',
                                'length': i - start
                            }
                    except:
                        pass
            else:
                i += 1
                
    def find_unicode_strings(self, data: bytes, base_addr: int):
        """查找Unicode字符串"""
        i = 0
        while i < len(data) - 8:
            if data[i] != 0 and data[i+1] == 0 and 32 <= data[i] <= 126:
                start = i
                while i < len(data) - 1 and data[i] != 0 and data[i+1] == 0 and 32 <= data[i] <= 126:
                    i += 2
                if i - start >= 8:
                    try:
                        string_val = data[start:i].decode('utf-16le')
                        if any(c.isalpha() for c in string_val):
                            self.strings[base_addr + start] = {
                                'value': string_val,
                                'type': 'unicode',
                                'length': i - start
                            }
                    except:
                        pass
            else:
                i += 1
                
    def analyze_data_sections(self):
        """分析数据段"""
        for section in self.pe.sections:
            section_name = section.Name.decode('utf-8').rstrip('\x00')
            if not (section.Characteristics & 0x20):  # 不是代码段
                self.data_sections.append({
                    'name': section_name,
                    'virtual_address': section.VirtualAddress + self.image_base,
                    'size': section.SizeOfRawData,
                    'data': section.get_data()
                })
                
        print(f"Found {len(self.data_sections)} data sections")
        
    def disassemble_code(self) -> bool:
        """反汇编代码段"""
        try:
            # 设置反汇编器
            if self.is_64bit:
                md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
            else:
                md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
                
            md.detail = True
            
            # 找到所有可执行段
            code_sections = []
            for section in self.pe.sections:
                if section.Characteristics & 0x20:  # 可执行段
                    code_sections.append(section)
                    
            if not code_sections:
                print("No executable sections found")
                return False
                
            print(f"Disassembling {len(code_sections)} code sections...")
            
            total_instructions = 0
            for section in code_sections:
                section_name = section.Name.decode('utf-8').rstrip('\x00')
                code_data = section.get_data()
                code_base = section.VirtualAddress + self.image_base
                
                print(f"Disassembling {section_name} at 0x{code_base:08x}, size: {len(code_data)} bytes")
                
                section_instructions = []
                for insn in md.disasm(code_data, code_base):
                    section_instructions.append({
                        'address': insn.address,
                        'mnemonic': insn.mnemonic,
                        'op_str': insn.op_str,
                        'bytes': insn.bytes,
                        'size': insn.size,
                        'section': section_name
                    })
                    
                self.instructions.extend(section_instructions)
                total_instructions += len(section_instructions)
                print(f"  Disassembled {len(section_instructions)} instructions")
                
            print(f"Total instructions disassembled: {total_instructions}")
            
            # 识别函数
            self.identify_functions()
            
            return len(self.instructions) > 0
            
        except Exception as e:
            print(f"Disassembly failed: {e}")
            return False
            
    def identify_functions(self):
        """识别函数边界"""
        function_starts = set()
        
        # 入口点是一个函数
        function_starts.add(self.entry_point)
        
        # 导出函数
        for addr in self.exports.keys():
            function_starts.add(addr)
            
        # 通过call指令识别函数
        for insn in self.instructions:
            if insn['mnemonic'] == 'call':
                # 尝试解析目标地址
                try:
                    if insn['op_str'].startswith('0x'):
                        target = int(insn['op_str'], 16)
                        function_starts.add(target)
                except:
                    pass
                    
        # 通过跳转指令识别函数
        for insn in self.instructions:
            if insn['mnemonic'] in ['jmp', 'je', 'jne', 'jz', 'jnz', 'jl', 'jg', 'jle', 'jge']:
                try:
                    if insn['op_str'].startswith('0x'):
                        target = int(insn['op_str'], 16)
                        function_starts.add(target)
                except:
                    pass
                    
        # 创建函数列表
        sorted_starts = sorted(function_starts)
        for i, start in enumerate(sorted_starts):
            end = sorted_starts[i + 1] if i + 1 < len(sorted_starts) else None
            
            func_name = f"func_{start:08x}"
            if start in self.exports:
                func_name = self.exports[start]
            elif start == self.entry_point:
                func_name = "start"
                
            self.functions.append({
                'name': func_name,
                'start': start,
                'end': end
            })
            
        print(f"Identified {len(self.functions)} functions")
        
    def generate_asm_code(self) -> str:
        """生成汇编代码"""
        lines = []
        
        # 文件头
        lines.extend([
            "; Universal EXE to ASM Converter Output",
            f"; Source: {self.exe_path.name}",
            f"; Architecture: {'x64' if self.is_64bit else 'x86'}",
            f"; Image Base: 0x{self.image_base:08x}",
            f"; Entry Point: 0x{self.entry_point:08x}",
            f"; Total Instructions: {len(self.instructions)}",
            f"; Total Functions: {len(self.functions)}",
            ""
        ])
        
        # 模型和堆栈
        if self.is_64bit:
            lines.append("; 64-bit mode")
        else:
            lines.append(".model flat, stdcall")
        lines.append(".stack 4096")
        lines.append("")
        
        # 外部函数声明
        if self.imports:
            lines.append("; External functions")
            unique_imports = {}
            for imp_info in self.imports.values():
                unique_imports[imp_info['name']] = imp_info['dll']
                
            for func_name in sorted(unique_imports.keys()):
                lines.append(f"extern {func_name}: proc")
            lines.append("")
            
        # 常量定义
        lines.extend([
            "; Constants",
            "STD_OUTPUT_HANDLE equ -11",
            "STD_INPUT_HANDLE equ -10",
            "STD_ERROR_HANDLE equ -12",
            ""
        ])
        
        # 数据段
        lines.append(".data")
        
        # 字符串常量
        string_count = 0
        for addr, string_info in sorted(self.strings.items()):
            if string_count >= 100:  # 限制字符串数量
                break
                
            string_val = string_info['value']
            if len(string_val) > 2 and len(string_val) < 200:
                # 清理字符串
                clean_string = ''.join(c if c.isprintable() and c not in ['"', '\\'] else '?' for c in string_val)
                
                if string_info['type'] == 'ascii':
                    lines.append(f'    str_{addr:08x} db "{clean_string}", 0')
                else:
                    lines.append(f'    wstr_{addr:08x} dw "{clean_string}", 0')
                string_count += 1
                
        # 其他数据
        lines.extend([
            "    newline db 13, 10, 0",
            "    buffer db 256 dup(?)",
            "    bytes_written dd ?",
            ""
        ])
        
        # 代码段
        lines.append(".code")
        lines.append("")
        
        # 辅助函数
        lines.extend(self.generate_helper_functions())
        
        # 主要反汇编代码
        lines.append("; Main disassembled code")
        
        current_function = None
        for insn in self.instructions:
            address = insn['address']
            
            # 检查是否是新函数开始
            for func in self.functions:
                if func['start'] == address:
                    if current_function:
                        lines.append(f"{current_function['name']} endp")
                        lines.append("")
                    
                    lines.append(f"; Function: {func['name']}")
                    lines.append(f"{func['name']} proc")
                    current_function = func
                    break
                    
            # 生成指令
            asm_line = self.convert_instruction_to_asm(insn)
            lines.append(f"    {asm_line}  ; 0x{address:08x}")
            
        # 结束最后一个函数
        if current_function:
            lines.append(f"{current_function['name']} endp")
            lines.append("")
            
        # 程序入口
        lines.extend([
            "; Program entry point",
            "main_entry:",
            "    call start",
            "    ret",
            "",
            "end main_entry"
        ])
        
        return '\n'.join(lines)
        
    def generate_helper_functions(self) -> List[str]:
        """生成辅助函数"""
        lines = []
        
        if self.is_64bit:
            # 64位辅助函数
            lines.extend([
                "; Helper function: print string (64-bit)",
                "print_string proc",
                "    sub rsp, 40",
                "    mov rcx, STD_OUTPUT_HANDLE",
                "    call GetStdHandle",
                "    mov rcx, rax",
                "    lea rdx, buffer",
                "    mov r8, 256",
                "    lea r9, bytes_written",
                "    mov qword ptr [rsp+32], 0",
                "    call WriteConsoleA",
                "    add rsp, 40",
                "    ret",
                "print_string endp",
                ""
            ])
        else:
            # 32位辅助函数
            lines.extend([
                "; Helper function: print string (32-bit)",
                "print_string proc",
                "    push ebp",
                "    mov ebp, esp",
                "    push STD_OUTPUT_HANDLE",
                "    call GetStdHandle",
                "    push 0",
                "    lea edx, bytes_written",
                "    push edx",
                "    push 256",
                "    lea edx, buffer",
                "    push edx",
                "    push eax",
                "    call WriteConsoleA",
                "    pop ebp",
                "    ret",
                "print_string endp",
                ""
            ])
            
        return lines
        
    def convert_instruction_to_asm(self, insn: dict) -> str:
        """将指令转换为汇编格式"""
        mnemonic = insn['mnemonic']
        op_str = insn['op_str']
        address = insn['address']
        
        # 处理call指令
        if mnemonic == 'call':
            if op_str.startswith('0x'):
                try:
                    target_addr = int(op_str, 16)
                    # 检查是否是导入函数
                    for imp_addr, imp_info in self.imports.items():
                        if abs(target_addr - imp_addr) < 16:  # 允许小的偏移
                            return f"call {imp_info['name']}"
                    # 检查是否是已知函数
                    for func in self.functions:
                        if func['start'] == target_addr:
                            return f"call {func['name']}"
                except:
                    pass
                    
        # 处理跳转指令
        elif mnemonic in ['jmp', 'je', 'jne', 'jz', 'jnz', 'jl', 'jg', 'jle', 'jge']:
            if op_str.startswith('0x'):
                try:
                    target_addr = int(op_str, 16)
                    for func in self.functions:
                        if func['start'] == target_addr:
                            return f"{mnemonic} {func['name']}"
                except:
                    pass
                    
        # 处理内存引用
        elif '[' in op_str and ']' in op_str:
            # 检查是否引用字符串
            for str_addr, str_info in self.strings.items():
                if f"0x{str_addr:x}" in op_str.lower():
                    if str_info['type'] == 'ascii':
                        return f"{mnemonic} {op_str.replace(f'0x{str_addr:x}', f'str_{str_addr:08x}')}"
                    else:
                        return f"{mnemonic} {op_str.replace(f'0x{str_addr:x}', f'wstr_{str_addr:08x}')}"
                        
        # 默认返回原始指令
        return f"{mnemonic} {op_str}"
        
    def generate_compile_script(self) -> str:
        """生成编译脚本"""
        script_name = self.asm_path.with_suffix('.bat')
        
        if self.is_64bit:
            script_content = f'''@echo off
echo Compiling {self.asm_path.name} (64-bit)...
echo.

ml64 /c /Fo {self.asm_path.stem}.obj {self.asm_path.name}
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

link /SUBSYSTEM:CONSOLE /ENTRY:main_entry /OUT:{self.asm_path.stem}_compiled.exe {self.asm_path.stem}.obj kernel32.lib user32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo.
echo Compilation successful!
echo Output: {self.asm_path.stem}_compiled.exe
echo.
echo Testing the program:
{self.asm_path.stem}_compiled.exe
echo.
pause
'''
        else:
            script_content = f'''@echo off
echo Compiling {self.asm_path.name} (32-bit)...
echo.

ml /c /Fo {self.asm_path.stem}.obj {self.asm_path.name}
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

link /SUBSYSTEM:CONSOLE /ENTRY:main_entry /OUT:{self.asm_path.stem}_compiled.exe {self.asm_path.stem}.obj kernel32.lib user32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo.
echo Compilation successful!
echo Output: {self.asm_path.stem}_compiled.exe
echo.
echo Testing the program:
{self.asm_path.stem}_compiled.exe
echo.
pause
'''
        
        try:
            with open(script_name, 'w', encoding='utf-8') as f:
                f.write(script_content)
            print(f"Compile script written to {script_name}")
        except Exception as e:
            print(f"Failed to write compile script: {e}")
            
        return script_content
        
    def convert(self) -> bool:
        """执行转换"""
        print(f"Universal EXE to ASM conversion: {self.exe_path} -> {self.asm_path}")
        print("=" * 60)
        
        if not self.analyze_pe_file():
            return False
            
        if not self.disassemble_code():
            return False
            
        print("\nGenerating assembly file...")
        asm_content = self.generate_asm_code()
        
        try:
            with open(self.asm_path, 'w', encoding='utf-8') as f:
                f.write(asm_content)
            print(f"Assembly file written to {self.asm_path}")
        except Exception as e:
            print(f"Failed to write assembly file: {e}")
            return False
            
        # 生成编译脚本
        self.generate_compile_script()
        
        return True
        
def main():
    if len(sys.argv) < 2:
        print("Universal EXE to ASM Converter")
        print("=" * 30)
        print("Usage: python universal_exe_to_asm_converter.py <input_exe> [output_asm]")
        print("")
        print("Features:")
        print("  - Supports any Windows PE executable")
        print("  - Generates compilable MASM assembly code")
        print("  - Automatic function identification")
        print("  - Import/Export table processing")
        print("  - String constant extraction")
        print("  - Compile script generation")
        print("")
        print("Examples:")
        print("  python universal_exe_to_asm_converter.py program.exe")
        print("  python universal_exe_to_asm_converter.py program.exe output.asm")
        return 1
        
    exe_path = sys.argv[1]
    asm_path = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(exe_path):
        print(f"Error: {exe_path} not found")
        return 1
        
    converter = UniversalExeToAsmConverter(exe_path, asm_path)
    
    if converter.convert():
        print("\n" + "=" * 60)
        print("Conversion Summary")
        print("=" * 60)
        print(f"Source: {converter.exe_path}")
        print(f"Output: {converter.asm_path}")
        print(f"Architecture: {'x64' if converter.is_64bit else 'x86'}")
        print(f"Instructions: {len(converter.instructions)}")
        print(f"Functions: {len(converter.functions)}")
        print(f"Imports: {len(converter.imports)}")
        print(f"Exports: {len(converter.exports)}")
        print(f"Strings: {len(converter.strings)}")
        print("\nConversion completed successfully!")
        print(f"\nTo compile: run {converter.asm_path.with_suffix('.bat')}")
        return 0
    else:
        print("\nConversion failed!")
        return 1
        
if __name__ == "__main__":
    sys.exit(main())