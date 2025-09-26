#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Universal EXE to ASM Disassembler

通用exe到汇编反汇编器 - 纯Python实现

功能:
1. 使用Capstone反汇编引擎分析任何exe文件
2. 支持x86/x64架构
3. 提取完整的汇编指令序列
4. 生成标准MASM格式汇编代码
5. 无需外部工具依赖

使用方法:
    python universal_disasm_exe_to_asm.py <input_exe> [output_asm]

支持的文件类型:
    - Windows PE文件 (.exe, .dll)
    - 任何架构 (x86, x64)
"""

import os
import sys
import struct
import string
from pathlib import Path
from typing import List, Dict, Tuple, Optional, Set

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

class UniversalDisasmExeToAsm:
    def __init__(self, exe_path: str, asm_path: str = None):
        self.exe_path = Path(exe_path)
        self.asm_path = Path(asm_path) if asm_path else self.exe_path.with_suffix('.asm')
        
        # PE分析结果
        self.pe = None
        self.image_base = 0
        self.entry_point = 0
        self.architecture = "x64"
        self.is_64bit = True
        
        # 反汇编结果
        self.all_instructions = []
        self.functions = {}
        self.imports = {}
        self.exports = {}
        self.strings = {}
        self.sections = {}
        self.code_sections = []
        
        # 分析统计
        self.total_instructions = 0
        self.total_functions = 0
        
    def analyze_pe_file(self) -> bool:
        """分析PE文件结构"""
        try:
            print(f"Analyzing PE file: {self.exe_path}")
            self.pe = pefile.PE(str(self.exe_path))
            
            # 基本信息
            self.image_base = self.pe.OPTIONAL_HEADER.ImageBase
            self.entry_point = self.pe.OPTIONAL_HEADER.AddressOfEntryPoint + self.image_base
            
            # 架构检测
            if self.pe.FILE_HEADER.Machine == 0x8664:  # IMAGE_FILE_MACHINE_AMD64
                self.architecture = "x64"
                self.is_64bit = True
            elif self.pe.FILE_HEADER.Machine == 0x14c:  # IMAGE_FILE_MACHINE_I386
                self.architecture = "x86"
                self.is_64bit = False
            else:
                print(f"Unsupported architecture: 0x{self.pe.FILE_HEADER.Machine:04x}")
                return False
                
            print(f"Architecture: {self.architecture}")
            print(f"Image Base: 0x{self.image_base:08x}")
            print(f"Entry Point: 0x{self.entry_point:08x}")
            
            # 提取导入表
            self.extract_imports()
            
            # 提取导出表
            self.extract_exports()
            
            # 提取段信息
            self.extract_sections()
            
            # 提取字符串
            self.extract_strings()
            
            return True
            
        except Exception as e:
            print(f"PE analysis failed: {e}")
            return False
            
    def extract_imports(self):
        """提取导入表"""
        try:
            if hasattr(self.pe, 'DIRECTORY_ENTRY_IMPORT'):
                for entry in self.pe.DIRECTORY_ENTRY_IMPORT:
                    dll_name = entry.dll.decode('utf-8')
                    for imp in entry.imports:
                        if imp.name:
                            func_name = imp.name.decode('utf-8')
                            self.imports[imp.address] = {
                                'name': func_name,
                                'dll': dll_name,
                                'address': imp.address
                            }
                print(f"Found {len(self.imports)} imports")
        except Exception as e:
            print(f"Import extraction failed: {e}")
            
    def extract_exports(self):
        """提取导出表"""
        try:
            if hasattr(self.pe, 'DIRECTORY_ENTRY_EXPORT'):
                for exp in self.pe.DIRECTORY_ENTRY_EXPORT.symbols:
                    if exp.name:
                        func_name = exp.name.decode('utf-8')
                        self.exports[exp.address] = {
                            'name': func_name,
                            'address': exp.address,
                            'ordinal': exp.ordinal
                        }
                print(f"Found {len(self.exports)} exports")
        except Exception as e:
            print(f"Export extraction failed: {e}")
            
    def extract_sections(self):
        """提取段信息"""
        try:
            for section in self.pe.sections:
                section_name = section.Name.decode('utf-8').rstrip('\x00')
                section_info = {
                    'name': section_name,
                    'virtual_address': section.VirtualAddress + self.image_base,
                    'virtual_size': section.Misc_VirtualSize,
                    'raw_address': section.PointerToRawData,
                    'raw_size': section.SizeOfRawData,
                    'characteristics': section.Characteristics,
                    'data': section.get_data()
                }
                
                self.sections[section_name] = section_info
                
                # 检查是否为代码段
                if (section.Characteristics & 0x20000000):  # IMAGE_SCN_MEM_EXECUTE
                    self.code_sections.append(section_info)
                    
            print(f"Found {len(self.sections)} sections, {len(self.code_sections)} executable")
        except Exception as e:
            print(f"Section extraction failed: {e}")
            
    def extract_strings(self):
        """提取字符串常量"""
        try:
            for section_name, section_info in self.sections.items():
                if '.rdata' in section_name or '.data' in section_name:
                    data = section_info['data']
                    strings = self.find_strings_in_data(data)
                    base_addr = section_info['virtual_address']
                    
                    for offset, string_val in strings:
                        self.strings[base_addr + offset] = string_val
                        
            print(f"Found {len(self.strings)} strings")
        except Exception as e:
            print(f"String extraction failed: {e}")
            
    def find_strings_in_data(self, data: bytes) -> List[Tuple[int, str]]:
        """在数据中查找字符串"""
        strings = []
        i = 0
        min_length = 4
        
        while i < len(data) - min_length:
            # ASCII字符串
            if 32 <= data[i] <= 126:
                start = i
                while i < len(data) and 32 <= data[i] <= 126:
                    i += 1
                if i - start >= min_length:
                    try:
                        string_val = data[start:i].decode('ascii')
                        if any(c.isalpha() for c in string_val):  # 至少包含一个字母
                            strings.append((start, string_val))
                    except:
                        pass
                        
            # Unicode字符串 (UTF-16LE)
            elif i + 1 < len(data) and data[i + 1] == 0 and 32 <= data[i] <= 126:
                start = i
                while i + 1 < len(data) and data[i + 1] == 0 and 32 <= data[i] <= 126:
                    i += 2
                if (i - start) // 2 >= min_length:
                    try:
                        string_val = data[start:i].decode('utf-16le')
                        if any(c.isalpha() for c in string_val):
                            strings.append((start, string_val))
                    except:
                        pass
            else:
                i += 1
                
        return strings
        
    def disassemble_all_code(self) -> bool:
        """反汇编所有代码段"""
        try:
            # 设置capstone反汇编器
            if self.is_64bit:
                md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
            else:
                md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
                
            md.detail = True
            
            print(f"Disassembling {len(self.code_sections)} code sections...")
            
            for section in self.code_sections:
                section_name = section['name']
                code_data = section['data']
                code_base = section['virtual_address']
                
                print(f"Disassembling {section_name} at 0x{code_base:08x}, size: {len(code_data)} bytes")
                
                section_instructions = []
                
                # 反汇编整个段
                for insn in md.disasm(code_data, code_base):
                    instruction_info = {
                        'address': insn.address,
                        'mnemonic': insn.mnemonic,
                        'op_str': insn.op_str,
                        'bytes': insn.bytes,
                        'size': insn.size,
                        'section': section_name
                    }
                    
                    section_instructions.append(instruction_info)
                    self.all_instructions.append(instruction_info)
                    
                print(f"  Disassembled {len(section_instructions)} instructions")
                
            self.total_instructions = len(self.all_instructions)
            print(f"Total instructions disassembled: {self.total_instructions}")
            
            # 识别函数
            self.identify_functions()
            
            return self.total_instructions > 0
            
        except Exception as e:
            print(f"Disassembly failed: {e}")
            return False
            
    def identify_functions(self):
        """识别函数边界"""
        try:
            current_function = None
            function_start = None
            
            for i, insn in enumerate(self.all_instructions):
                # 函数开始标志
                if (insn['mnemonic'] in ['push', 'sub'] and 
                    i + 1 < len(self.all_instructions) and
                    'ebp' in insn['op_str'] or 'rbp' in insn['op_str']):
                    
                    if current_function is None:
                        function_start = insn['address']
                        current_function = []
                        
                # 函数结束标志
                elif insn['mnemonic'] == 'ret' and current_function is not None:
                    current_function.append(insn)
                    
                    # 保存函数
                    func_name = f"func_{function_start:08x}"
                    self.functions[function_start] = {
                        'name': func_name,
                        'start': function_start,
                        'end': insn['address'],
                        'instructions': current_function
                    }
                    
                    current_function = None
                    function_start = None
                    
                elif current_function is not None:
                    current_function.append(insn)
                    
            self.total_functions = len(self.functions)
            print(f"Identified {self.total_functions} functions")
            
        except Exception as e:
            print(f"Function identification failed: {e}")
            
    def convert_to_masm_syntax(self, insn: dict) -> str:
        """将指令转换为MASM语法"""
        mnemonic = insn['mnemonic']
        op_str = insn['op_str']
        address = insn['address']
        
        # 处理特殊指令
        if mnemonic == 'call':
            # 检查是否是导入函数调用
            if op_str.startswith('0x'):
                try:
                    target_addr = int(op_str, 16)
                    if target_addr in self.imports:
                        import_info = self.imports[target_addr]
                        return f"    call {import_info['name']}  ; {import_info['dll']}"
                except:
                    pass
            return f"    call {op_str}"
            
        elif mnemonic == 'jmp':
            return f"    jmp {op_str}"
            
        elif mnemonic.startswith('j'):  # 条件跳转
            return f"    {mnemonic} {op_str}"
            
        elif mnemonic == 'lea':
            # 检查字符串引用
            for str_addr, str_val in self.strings.items():
                if hex(str_addr) in op_str:
                    return f"    lea {op_str.split(',')[0]}, offset str_{str_addr:08x}  ; \"{str_val[:20]}...\""
            return f"    lea {op_str}"
            
        elif mnemonic in ['mov', 'add', 'sub', 'mul', 'imul', 'div', 'idiv', 'cmp', 'test', 'and', 'or', 'xor']:
            return f"    {mnemonic} {op_str}"
            
        elif mnemonic == 'push':
            return f"    push {op_str}"
            
        elif mnemonic == 'pop':
            return f"    pop {op_str}"
            
        elif mnemonic == 'ret':
            return "    ret"
            
        elif mnemonic == 'nop':
            return "    nop"
            
        else:
            return f"    {mnemonic} {op_str}"
            
    def generate_asm_file(self) -> str:
        """生成完整的汇编文件"""
        asm_lines = []
        
        # 文件头
        asm_lines.extend([
            "; Universal Disassembler Output",
            f"; Source: {self.exe_path.name}",
            f"; Architecture: {self.architecture}",
            f"; Image Base: 0x{self.image_base:08x}",
            f"; Entry Point: 0x{self.entry_point:08x}",
            f"; Total Instructions: {self.total_instructions}",
            f"; Total Functions: {self.total_functions}",
            "",
            ".model flat, stdcall" if not self.is_64bit else "; 64-bit mode",
            ".stack 4096",
            ""
        ])
        
        # 外部函数声明
        if self.imports:
            asm_lines.append("; External functions")
            unique_imports = set()
            for imp_info in self.imports.values():
                func_name = imp_info['name']
                if func_name not in unique_imports:
                    asm_lines.append(f"extern {func_name}: proc")
                    unique_imports.add(func_name)
            asm_lines.append("")
            
        # 数据段
        asm_lines.append(".data")
        
        # 添加字符串常量
        if self.strings:
            asm_lines.append("    ; String constants")
            for addr, string_val in sorted(self.strings.items()):
                if len(string_val) > 0:
                    # 清理字符串
                    clean_string = ''.join(c if c.isprintable() and c != '"' else f'\\x{ord(c):02x}' for c in string_val[:100])
                    asm_lines.append(f'    str_{addr:08x} db "{clean_string}", 0')
                    
        asm_lines.extend([
            "    newline db 13, 10, 0",
            "    bytes_written dd ?",
            ""
        ])
        
        # 代码段
        asm_lines.append(".code")
        asm_lines.append("")
        
        # 按地址排序指令
        sorted_instructions = sorted(self.all_instructions, key=lambda x: x['address'])
        
        # 生成汇编代码
        current_section = None
        instruction_count = 0
        
        for insn in sorted_instructions:
            # 段标记
            if insn['section'] != current_section:
                current_section = insn['section']
                asm_lines.append(f"; Section: {current_section}")
                asm_lines.append("")
                
            # 函数标记
            if insn['address'] in self.functions:
                func_info = self.functions[insn['address']]
                asm_lines.append(f"; Function: {func_info['name']}")
                asm_lines.append(f"{func_info['name']}:")
                
            # 转换指令
            masm_line = self.convert_to_masm_syntax(insn)
            asm_lines.append(f"{masm_line}  ; 0x{insn['address']:08x}")
            
            instruction_count += 1
            
            # 限制输出长度，避免文件过大
            if instruction_count >= 10000:
                asm_lines.append("; ... (truncated for size)")
                break
                
        # 程序入口
        asm_lines.extend([
            "",
            "start:",
            f"    ; Entry point at 0x{self.entry_point:08x}",
            "    ; Jump to main program logic",
            f"    jmp 0x{self.entry_point:08x}",
            "",
            "end start"
        ])
        
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
echo Generated executable: {asm_name}.exe
pause
'''
        
    def convert(self) -> bool:
        """执行转换"""
        print(f"Universal disassembly: {self.exe_path} -> {self.asm_path}")
        
        # 1. 分析PE文件
        if not self.analyze_pe_file():
            return False
            
        # 2. 反汇编所有代码
        if not self.disassemble_all_code():
            return False
            
        # 3. 生成汇编文件
        print("Generating assembly file...")
        asm_content = self.generate_asm_file()
        
        # 4. 写入文件
        try:
            with open(self.asm_path, 'w', encoding='utf-8') as f:
                f.write(asm_content)
            print(f"Assembly file written to {self.asm_path}")
            
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
        print("Universal EXE to ASM Disassembler")
        print("Usage: python universal_disasm_exe_to_asm.py <input_exe> [output_asm]")
        print("")
        print("Examples:")
        print("  python universal_disasm_exe_to_asm.py program.exe")
        print("  python universal_disasm_exe_to_asm.py program.exe output.asm")
        print("")
        print("Supported files: Any Windows PE executable (.exe, .dll)")
        print("Supported architectures: x86, x64")
        return 1
        
    exe_path = sys.argv[1]
    asm_path = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(exe_path):
        print(f"Error: {exe_path} not found")
        return 1
        
    converter = UniversalDisasmExeToAsm(exe_path, asm_path)
    
    if converter.convert():
        print("\n=== Conversion Summary ===")
        print(f"Source: {converter.exe_path}")
        print(f"Output: {converter.asm_path}")
        print(f"Architecture: {converter.architecture}")
        print(f"Instructions: {converter.total_instructions}")
        print(f"Functions: {converter.total_functions}")
        print(f"Imports: {len(converter.imports)}")
        print(f"Strings: {len(converter.strings)}")
        print("\nUniversal disassembly completed successfully!")
        return 0
    else:
        print("\nConversion failed!")
        return 1
        
if __name__ == "__main__":
    sys.exit(main())