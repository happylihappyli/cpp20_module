#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Simple EXE to ASM Disassembler

简化版exe到汇编反汇编器

功能:
1. 快速反汇编exe文件的主要代码段
2. 生成简洁的汇编代码
3. 专注于核心功能，输出文件较小
4. 适合快速测试和学习

使用方法:
    python simple_exe_to_asm.py <input_exe> [output_asm]
"""

import os
import sys
from pathlib import Path
from typing import List, Dict

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

class SimpleExeToAsm:
    def __init__(self, exe_path: str, asm_path: str = None):
        self.exe_path = Path(exe_path)
        self.asm_path = Path(asm_path) if asm_path else self.exe_path.with_suffix('.asm')
        
        self.pe = None
        self.image_base = 0
        self.entry_point = 0
        self.is_64bit = True
        self.instructions = []
        self.imports = {}
        self.strings = {}
        
    def analyze_pe(self) -> bool:
        """分析PE文件"""
        try:
            self.pe = pefile.PE(str(self.exe_path))
            
            self.image_base = self.pe.OPTIONAL_HEADER.ImageBase
            self.entry_point = self.pe.OPTIONAL_HEADER.AddressOfEntryPoint + self.image_base
            
            # 架构检测
            if self.pe.FILE_HEADER.Machine == 0x8664:
                self.is_64bit = True
            elif self.pe.FILE_HEADER.Machine == 0x14c:
                self.is_64bit = False
            else:
                print(f"Unsupported architecture: 0x{self.pe.FILE_HEADER.Machine:04x}")
                return False
                
            print(f"Architecture: {'x64' if self.is_64bit else 'x86'}")
            print(f"Entry Point: 0x{self.entry_point:08x}")
            
            # 提取导入函数
            if hasattr(self.pe, 'DIRECTORY_ENTRY_IMPORT'):
                for entry in self.pe.DIRECTORY_ENTRY_IMPORT:
                    for imp in entry.imports:
                        if imp.name:
                            self.imports[imp.address] = imp.name.decode('utf-8')
                            
            # 提取字符串
            self.extract_strings()
            
            return True
            
        except Exception as e:
            print(f"PE analysis failed: {e}")
            return False
            
    def extract_strings(self):
        """提取字符串"""
        for section in self.pe.sections:
            if b'.rdata' in section.Name or b'.data' in section.Name:
                data = section.get_data()
                base_addr = section.VirtualAddress + self.image_base
                
                # 查找ASCII字符串
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
                                    self.strings[base_addr + start] = string_val
                            except:
                                pass
                    else:
                        i += 1
                        
    def disassemble_code(self) -> bool:
        """反汇编代码段"""
        try:
            # 设置反汇编器
            if self.is_64bit:
                md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
            else:
                md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
                
            # 找到.text段
            text_section = None
            for section in self.pe.sections:
                if b'.text' in section.Name:
                    text_section = section
                    break
                    
            if not text_section:
                print("No .text section found")
                return False
                
            code_data = text_section.get_data()
            code_base = text_section.VirtualAddress + self.image_base
            
            print(f"Disassembling .text section, size: {len(code_data)} bytes")
            
            # 反汇编前1000条指令（限制输出大小）
            count = 0
            for insn in md.disasm(code_data, code_base):
                self.instructions.append({
                    'address': insn.address,
                    'mnemonic': insn.mnemonic,
                    'op_str': insn.op_str
                })
                
                count += 1
                if count >= 1000:  # 限制指令数量
                    break
                    
            print(f"Disassembled {len(self.instructions)} instructions")
            return len(self.instructions) > 0
            
        except Exception as e:
            print(f"Disassembly failed: {e}")
            return False
            
    def generate_asm(self) -> str:
        """生成汇编代码"""
        lines = []
        
        # 文件头
        lines.extend([
            "; Simple Disassembler Output",
            f"; Source: {self.exe_path.name}",
            f"; Architecture: {'x64' if self.is_64bit else 'x86'}",
            f"; Entry Point: 0x{self.entry_point:08x}",
            "",
            ".model flat, stdcall" if not self.is_64bit else "; 64-bit mode",
            ".stack 4096",
            ""
        ])
        
        # 导入函数
        if self.imports:
            lines.append("; External functions")
            unique_imports = set(self.imports.values())
            for func_name in sorted(list(unique_imports)[:20]):  # 限制数量
                lines.append(f"extern {func_name}: proc")
            lines.append("")
            
        # 数据段
        lines.append(".data")
        
        # 字符串常量（限制数量）
        string_count = 0
        for addr, string_val in sorted(self.strings.items()):
            if string_count >= 20:  # 限制字符串数量
                break
            if len(string_val) > 2 and len(string_val) < 50:
                clean_string = ''.join(c if c.isprintable() and c != '"' else '?' for c in string_val)
                lines.append(f'    str_{addr:08x} db "{clean_string}", 0')
                string_count += 1
                
        lines.extend([
            "    newline db 13, 10, 0",
            ""
        ])
        
        # 代码段
        lines.append(".code")
        lines.append("")
        lines.append("; Main disassembled code")
        lines.append("main_code:")
        
        # 反汇编指令
        for insn in self.instructions:
            mnemonic = insn['mnemonic']
            op_str = insn['op_str']
            address = insn['address']
            
            # 简单的指令转换
            if mnemonic == 'call':
                # 检查是否是导入函数
                if op_str.startswith('0x'):
                    try:
                        target_addr = int(op_str, 16)
                        if target_addr in self.imports:
                            lines.append(f"    call {self.imports[target_addr]}  ; 0x{address:08x}")
                            continue
                    except:
                        pass
                lines.append(f"    call {op_str}  ; 0x{address:08x}")
            elif mnemonic == 'ret':
                lines.append(f"    ret  ; 0x{address:08x}")
            elif mnemonic in ['mov', 'add', 'sub', 'cmp', 'jmp', 'je', 'jne', 'push', 'pop']:
                lines.append(f"    {mnemonic} {op_str}  ; 0x{address:08x}")
            else:
                lines.append(f"    {mnemonic} {op_str}  ; 0x{address:08x}")
                
        # 程序入口
        lines.extend([
            "",
            "start:",
            "    ; Program entry point",
            "    call main_code",
            "    ret",
            "",
            "end start"
        ])
        
        return '\n'.join(lines)
        
    def convert(self) -> bool:
        """执行转换"""
        print(f"Simple disassembly: {self.exe_path} -> {self.asm_path}")
        
        if not self.analyze_pe():
            return False
            
        if not self.disassemble_code():
            return False
            
        print("Generating assembly file...")
        asm_content = self.generate_asm()
        
        try:
            with open(self.asm_path, 'w', encoding='utf-8') as f:
                f.write(asm_content)
            print(f"Assembly file written to {self.asm_path}")
            return True
        except Exception as e:
            print(f"Failed to write file: {e}")
            return False
            
def main():
    if len(sys.argv) < 2:
        print("Simple EXE to ASM Disassembler")
        print("Usage: python simple_exe_to_asm.py <input_exe> [output_asm]")
        print("")
        print("Features:")
        print("  - Fast disassembly")
        print("  - Compact output")
        print("  - Limited to first 1000 instructions")
        print("  - Perfect for testing and learning")
        return 1
        
    exe_path = sys.argv[1]
    asm_path = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(exe_path):
        print(f"Error: {exe_path} not found")
        return 1
        
    converter = SimpleExeToAsm(exe_path, asm_path)
    
    if converter.convert():
        print("\n=== Simple Disassembly Summary ===")
        print(f"Source: {converter.exe_path}")
        print(f"Output: {converter.asm_path}")
        print(f"Instructions: {len(converter.instructions)}")
        print(f"Imports: {len(converter.imports)}")
        print(f"Strings: {len(converter.strings)}")
        print("\nSimple disassembly completed successfully!")
        return 0
    else:
        print("\nConversion failed!")
        return 1
        
if __name__ == "__main__":
    sys.exit(main())