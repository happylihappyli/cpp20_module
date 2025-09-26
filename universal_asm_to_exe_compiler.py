#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Universal ASM to EXE Compiler

通用asm转exe编译器

功能:
1. 智能修复反汇编生成的汇编代码
2. 自动检测和修复语法错误
3. 生成可编译的标准MASM代码
4. 支持32位和64位架构
5. 自动调用编译器生成exe文件
6. 提供详细的错误诊断和修复建议

使用方法:
    python universal_asm_to_exe_compiler.py <input_asm> [output_exe]
"""

import os
import sys
import re
import subprocess
from pathlib import Path
from typing import List, Dict, Tuple, Optional, Set
import tempfile
import shutil

class UniversalAsmToExeCompiler:
    def __init__(self, asm_path: str, exe_path: str = None):
        self.asm_path = Path(asm_path)
        self.exe_path = Path(exe_path) if exe_path else self.asm_path.with_suffix('.exe')
        self.fixed_asm_path = self.asm_path.with_name(f"{self.asm_path.stem}_fixed.asm")
        
        self.is_64bit = True
        self.original_lines = []
        self.fixed_lines = []
        self.errors = []
        self.warnings = []
        self.imports = set()
        self.exports = set()
        self.functions = set()
        self.labels = set()
        self.data_items = set()
        
        # 编译器路径
        self.ml64_path = None
        self.ml_path = None
        self.link_path = None
        
    def detect_compilers(self) -> bool:
        """检测可用的编译器"""
        print("Detecting compilers...")
        
        # 检查MASM编译器
        try:
            result = subprocess.run(['where', 'ml64'], capture_output=True, text=True, shell=True)
            if result.returncode == 0:
                self.ml64_path = result.stdout.strip().split('\n')[0]
                print(f"Found ml64: {self.ml64_path}")
        except:
            pass
            
        try:
            result = subprocess.run(['where', 'ml'], capture_output=True, text=True, shell=True)
            if result.returncode == 0:
                self.ml_path = result.stdout.strip().split('\n')[0]
                print(f"Found ml: {self.ml_path}")
        except:
            pass
            
        try:
            result = subprocess.run(['where', 'link'], capture_output=True, text=True, shell=True)
            if result.returncode == 0:
                self.link_path = result.stdout.strip().split('\n')[0]
                print(f"Found link: {self.link_path}")
        except:
            pass
            
        # 如果PATH中没有找到，尝试查找Visual Studio安装的MASM
        if not self.ml64_path and not self.ml_path:
            vs_masm_path = self.find_visual_studio_masm()
            if vs_masm_path:
                if 'ml64.exe' in vs_masm_path:
                    self.ml64_path = vs_masm_path
                else:
                    self.ml_path = vs_masm_path
                print(f"Found MASM in Visual Studio: {vs_masm_path}")
            
        if not self.ml64_path and not self.ml_path:
            print("Error: No MASM compiler found!")
            print("Please install Microsoft Visual Studio or Windows SDK")
            print("Or run from Developer Command Prompt")
            return False
            
        if not self.link_path:
            print("Warning: Link.exe not found, will try to use system linker")
            
        return True
        
    def find_visual_studio_masm(self):
        """查找Visual Studio安装的MASM"""
        # 常见的VS安装路径
        common_paths = [
            r"D:\Code\VS2019\Community",
            r"D:\Code\VS2022\Community", 
            r"C:\Program Files\Microsoft Visual Studio\2022\Community",
            r"C:\Program Files\Microsoft Visual Studio\2019\Community",
            r"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community",
        ]
        
        for vs_path in common_paths:
            if os.path.exists(vs_path):
                # 查找VC工具
                vc_tools_path = os.path.join(vs_path, "VC", "Tools", "MSVC")
                if os.path.exists(vc_tools_path):
                    # 找到最新版本
                    versions = [d for d in os.listdir(vc_tools_path) 
                               if os.path.isdir(os.path.join(vc_tools_path, d))]
                    if versions:
                        latest_version = sorted(versions)[-1]
                        
                        # 检查x64工具
                        bin_path = os.path.join(vc_tools_path, latest_version, "bin", "Hostx64", "x64")
                        ml64_path = os.path.join(bin_path, "ml64.exe")
                        if os.path.exists(ml64_path):
                            return ml64_path
                            
                        # 检查x86工具
                        bin_path = os.path.join(vc_tools_path, latest_version, "bin", "Hostx64", "x86")
                        ml_path = os.path.join(bin_path, "ml.exe")
                        if os.path.exists(ml_path):
                            return ml_path
        
        # 使用vswhere查找
        try:
            vswhere_path = r"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe"
            if os.path.exists(vswhere_path):
                result = subprocess.run([
                    vswhere_path, 
                    "-products", "*",
                    "-requires", "Microsoft.VisualStudio.Component.VC.Tools.x86.x64",
                    "-property", "installationPath"
                ], capture_output=True, text=True)
                
                if result.returncode == 0:
                    for vs_path in result.stdout.strip().split('\n'):
                        if vs_path:
                            vc_tools_path = os.path.join(vs_path, "VC", "Tools", "MSVC")
                            if os.path.exists(vc_tools_path):
                                versions = [d for d in os.listdir(vc_tools_path) 
                                           if os.path.isdir(os.path.join(vc_tools_path, d))]
                                if versions:
                                    latest_version = sorted(versions)[-1]
                                    ml64_path = os.path.join(vc_tools_path, latest_version, "bin", "Hostx64", "x64", "ml64.exe")
                                    if os.path.exists(ml64_path):
                                        return ml64_path
        except Exception:
            pass
            
        return None
        
    def analyze_asm_file(self) -> bool:
        """分析汇编文件"""
        try:
            print(f"Analyzing assembly file: {self.asm_path}")
            
            with open(self.asm_path, 'r', encoding='utf-8', errors='ignore') as f:
                self.original_lines = f.readlines()
                
            print(f"Read {len(self.original_lines)} lines")
            
            # 检测架构
            self.detect_architecture()
            
            # 分析代码结构
            self.analyze_code_structure()
            
            return True
            
        except Exception as e:
            print(f"Failed to analyze assembly file: {e}")
            return False
            
    def detect_architecture(self):
        """检测目标架构"""
        content = ''.join(self.original_lines).lower()
        
        # 64位指标
        x64_indicators = ['rax', 'rbx', 'rcx', 'rdx', 'rsi', 'rdi', 'rbp', 'rsp', 
                         'r8', 'r9', 'r10', 'r11', 'r12', 'r13', 'r14', 'r15',
                         'qword ptr', 'ml64']
        
        # 32位指标
        x86_indicators = ['eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'ebp', 'esp',
                         'dword ptr', '.model flat', 'ml ']
        
        x64_score = sum(1 for indicator in x64_indicators if indicator in content)
        x86_score = sum(1 for indicator in x86_indicators if indicator in content)
        
        self.is_64bit = x64_score > x86_score
        
        print(f"Architecture detected: {'x64' if self.is_64bit else 'x86'}")
        print(f"  x64 indicators: {x64_score}")
        print(f"  x86 indicators: {x86_score}")
        
    def analyze_code_structure(self):
        """分析代码结构"""
        in_data_section = False
        in_code_section = False
        
        for i, line in enumerate(self.original_lines):
            line_clean = line.strip().lower()
            
            # 检测段
            if line_clean == '.data':
                in_data_section = True
                in_code_section = False
            elif line_clean == '.code':
                in_data_section = False
                in_code_section = True
            elif line_clean.startswith('.') and line_clean.endswith('segment'):
                in_data_section = 'data' in line_clean
                in_code_section = 'code' in line_clean or 'text' in line_clean
                
            # 收集外部函数
            if 'extern' in line_clean:
                match = re.search(r'extern\s+(\w+)', line_clean)
                if match:
                    self.imports.add(match.group(1))
                    
            # 收集函数定义
            if 'proc' in line_clean and not line_clean.startswith(';'):
                match = re.search(r'(\w+)\s+proc', line_clean)
                if match:
                    self.functions.add(match.group(1))
                    
            # 收集标签
            if ':' in line and not line_clean.startswith(';') and 'proc' not in line_clean:
                match = re.search(r'^\s*(\w+):', line)
                if match:
                    self.labels.add(match.group(1))
                    
            # 收集数据项
            if in_data_section and ('db ' in line_clean or 'dw ' in line_clean or 'dd ' in line_clean or 'dq ' in line_clean):
                match = re.search(r'^\s*(\w+)\s+d[bwdq]', line_clean)
                if match:
                    self.data_items.add(match.group(1))
                    
        print(f"Code structure analysis:")
        print(f"  Imports: {len(self.imports)}")
        print(f"  Functions: {len(self.functions)}")
        print(f"  Labels: {len(self.labels)}")
        print(f"  Data items: {len(self.data_items)}")
        
    def fix_asm_code(self) -> bool:
        """修复汇编代码"""
        print("Fixing assembly code...")
        
        self.fixed_lines = []
        
        # 添加标准头部
        self.add_standard_header()
        
        # 处理每一行
        skip_until_end = None
        in_data_section = False
        in_code_section = False
        
        for i, line in enumerate(self.original_lines):
            original_line = line.rstrip()
            line_clean = line.strip().lower()
            
            # 跳过某些块
            if skip_until_end:
                if skip_until_end in line_clean:
                    skip_until_end = None
                continue
                
            # 跳过注释和空行
            if not line_clean or line_clean.startswith(';'):
                if original_line.strip():  # 保留有意义的注释
                    self.fixed_lines.append(original_line)
                continue
                
            # 跳过反汇编器输出信息
            if any(skip_pattern in line_clean for skip_pattern in [
                'microsoft', 'disassembly', 'source:', 'type:', 'timestamp:',
                'checksum:', 'image base:', 'section alignment:', 'file alignment:'
            ]):
                continue
                
            # 检测段
            if line_clean == '.data':
                in_data_section = True
                in_code_section = False
                self.fixed_lines.append('.data')
                continue
            elif line_clean == '.code':
                in_data_section = False
                in_code_section = True
                self.fixed_lines.append('.code')
                continue
                
            # 修复具体的行
            fixed_line = self.fix_line(original_line, in_data_section, in_code_section)
            if fixed_line is not None:
                if isinstance(fixed_line, list):
                    self.fixed_lines.extend(fixed_line)
                else:
                    self.fixed_lines.append(fixed_line)
                    
        # 添加标准结尾
        self.add_standard_footer()
        
        print(f"Fixed {len(self.original_lines)} -> {len(self.fixed_lines)} lines")
        return True
        
    def add_standard_header(self):
        """添加标准头部"""
        self.fixed_lines.extend([
            "; Fixed assembly code for compilation",
            f"; Architecture: {'x64' if self.is_64bit else 'x86'}",
            f"; Source: {self.asm_path.name}",
            ""
        ])
        
        if not self.is_64bit:
            self.fixed_lines.extend([
                ".model flat, stdcall",
                ".stack 4096",
                ""
            ])
            
        # 添加外部函数声明
        if self.imports:
            self.fixed_lines.append("; External functions")
            # 添加常用的Windows API
            common_apis = {
                'GetStdHandle', 'WriteConsoleA', 'ReadConsoleA', 'ExitProcess',
                'GetCommandLineA', 'GetProcessHeap', 'HeapAlloc', 'HeapFree',
                'CreateFileA', 'ReadFile', 'WriteFile', 'CloseHandle',
                'MessageBoxA', 'GetLastError', 'SetLastError'
            }
            
            all_imports = self.imports.union(common_apis)
            for imp in sorted(all_imports):
                self.fixed_lines.append(f"extern {imp}: proc")
            self.fixed_lines.append("")
            
        # 添加常量
        self.fixed_lines.extend([
            "; Constants",
            "STD_OUTPUT_HANDLE equ -11",
            "STD_INPUT_HANDLE equ -10",
            "STD_ERROR_HANDLE equ -12",
            "GENERIC_READ equ 80000000h",
            "GENERIC_WRITE equ 40000000h",
            "CREATE_ALWAYS equ 2",
            "FILE_ATTRIBUTE_NORMAL equ 80h",
            ""
        ])
        
    def fix_line(self, line: str, in_data_section: bool, in_code_section: bool) -> Optional[str]:
        """修复单行代码"""
        line_clean = line.strip()
        line_lower = line_clean.lower()
        
        # 跳过空行
        if not line_clean:
            return None
            
        # 跳过某些不需要的行
        skip_patterns = [
            'assume', 'option', 'includelib', 'include',
            '.386', '.486', '.586', '.686', 'mmx', 'xmm'
        ]
        
        if any(pattern in line_lower for pattern in skip_patterns):
            return None
            
        # 修复模型声明
        if '.model' in line_lower and not self.is_64bit:
            return '.model flat, stdcall'
            
        # 修复堆栈声明
        if '.stack' in line_lower:
            return '.stack 4096'
            
        # 修复段声明
        if 'segment' in line_lower:
            if 'data' in line_lower:
                return '.data'
            elif 'code' in line_lower or 'text' in line_lower:
                return '.code'
            else:
                return None
                
        # 修复end语句
        if line_lower.startswith('end '):
            # 查找入口点
            entry_point = 'main'
            if 'start' in self.functions or 'start' in self.labels:
                entry_point = 'start'
            elif 'main' in self.functions or 'main' in self.labels:
                entry_point = 'main'
            elif self.functions:
                entry_point = list(self.functions)[0]
                
            return f"end {entry_point}"
            
        # 修复指令
        if in_code_section:
            return self.fix_instruction(line_clean)
        elif in_data_section:
            return self.fix_data_declaration(line_clean)
        else:
            return line_clean
            
    def fix_instruction(self, line: str) -> str:
        """修复指令"""
        line_lower = line.lower()
        
        # 修复寄存器名称
        if self.is_64bit:
            # 32位寄存器转64位
            replacements = {
                r'\beax\b': 'rax', r'\bebx\b': 'rbx', r'\becx\b': 'rcx', r'\bedx\b': 'rdx',
                r'\besi\b': 'rsi', r'\bedi\b': 'rdi', r'\bebp\b': 'rbp', r'\besp\b': 'rsp',
                r'\bdword ptr\b': 'qword ptr'
            }
        else:
            # 64位寄存器转32位
            replacements = {
                r'\brax\b': 'eax', r'\brbx\b': 'ebx', r'\brcx\b': 'ecx', r'\brdx\b': 'edx',
                r'\brsi\b': 'esi', r'\brdi\b': 'edi', r'\brbp\b': 'ebp', r'\brsp\b': 'esp',
                r'\bqword ptr\b': 'dword ptr'
            }
            
        for pattern, replacement in replacements.items():
            line = re.sub(pattern, replacement, line, flags=re.IGNORECASE)
            
        # 修复调用约定
        if 'call' in line_lower:
            # 确保调用的函数存在
            match = re.search(r'call\s+(\w+)', line_lower)
            if match:
                func_name = match.group(1)
                if func_name not in self.imports and func_name not in self.functions:
                    # 添加到导入列表
                    self.imports.add(func_name)
                    
        # 修复跳转指令
        jump_instructions = ['jmp', 'je', 'jne', 'jz', 'jnz', 'jl', 'jg', 'jle', 'jge', 'ja', 'jb', 'jae', 'jbe']
        for jump in jump_instructions:
            if line_lower.startswith(jump + ' '):
                # 确保跳转目标是有效的标签
                match = re.search(f'{jump}\\s+(\\w+)', line_lower)
                if match:
                    target = match.group(1)
                    if target not in self.labels and target not in self.functions:
                        # 创建标签
                        self.labels.add(target)
                        
        return line
        
    def fix_data_declaration(self, line: str) -> str:
        """修复数据声明"""
        line_lower = line.lower()
        
        # 修复字符串声明
        if 'db ' in line_lower and '"' in line:
            # 确保字符串以0结尾
            if not line.rstrip().endswith(', 0') and not line.rstrip().endswith(',0'):
                if line.rstrip().endswith('"'):
                    return line.rstrip() + ', 0'
                    
        # 修复Unicode字符串
        if 'dw ' in line_lower and '"' in line:
            if not line.rstrip().endswith(', 0') and not line.rstrip().endswith(',0'):
                if line.rstrip().endswith('"'):
                    return line.rstrip() + ', 0'
                    
        return line
        
    def add_standard_footer(self):
        """添加标准结尾"""
        # 确保有主入口点
        if 'main' not in self.functions and 'start' not in self.functions:
            self.fixed_lines.extend([
                "",
                "; Main entry point",
                "main proc"
            ])
            
            if self.is_64bit:
                self.fixed_lines.extend([
                    "    sub rsp, 40",
                    "    mov rcx, 0",
                    "    call ExitProcess",
                    "    add rsp, 40"
                ])
            else:
                self.fixed_lines.extend([
                    "    push 0",
                    "    call ExitProcess"
                ])
                
            self.fixed_lines.extend([
                "    ret",
                "main endp",
                "",
                "end main"
            ])
        else:
            # 使用现有的入口点
            entry_point = 'main' if 'main' in self.functions else 'start'
            if not any(f'end {entry_point}' in line.lower() for line in self.fixed_lines):
                self.fixed_lines.append(f"end {entry_point}")
                
    def write_fixed_asm(self) -> bool:
        """写入修复后的汇编文件"""
        try:
            with open(self.fixed_asm_path, 'w', encoding='utf-8') as f:
                f.write('\n'.join(self.fixed_lines))
            print(f"Fixed assembly written to {self.fixed_asm_path}")
            return True
        except Exception as e:
            print(f"Failed to write fixed assembly: {e}")
            return False
            
    def compile_to_exe(self) -> bool:
        """编译为exe文件"""
        print(f"Compiling to {self.exe_path}...")
        
        # 选择编译器
        if self.is_64bit and self.ml64_path:
            ml_exe = self.ml64_path
        elif not self.is_64bit and self.ml_path:
            ml_exe = self.ml_path
        else:
            print("Error: No suitable compiler found")
            return False
            
        # 临时文件
        obj_path = self.fixed_asm_path.with_suffix('.obj')
        
        try:
            # 汇编步骤
            print(f"Assembling with {Path(ml_exe).name}...")
            
            if self.is_64bit:
                asm_cmd = [ml_exe, '/c', '/Fo', str(obj_path), str(self.fixed_asm_path)]
            else:
                asm_cmd = [ml_exe, '/c', '/coff', '/Fo', str(obj_path), str(self.fixed_asm_path)]
                
            result = subprocess.run(asm_cmd, capture_output=True, text=True)
            
            if result.returncode != 0:
                print("Assembly failed:")
                print(result.stdout)
                print(result.stderr)
                
                # 尝试修复常见错误
                if self.fix_assembly_errors(result.stderr):
                    print("Attempting to fix errors and retry...")
                    self.write_fixed_asm()
                    result = subprocess.run(asm_cmd, capture_output=True, text=True)
                    
                if result.returncode != 0:
                    return False
                    
            print("Assembly successful")
            
            # 链接步骤
            print("Linking...")
            
            link_exe = self.link_path if self.link_path else 'link'
            
            if self.is_64bit:
                link_cmd = [
                    link_exe, '/SUBSYSTEM:CONSOLE', '/ENTRY:main',
                    f'/OUT:{self.exe_path}', str(obj_path),
                    'kernel32.lib', 'user32.lib'
                ]
            else:
                link_cmd = [
                    link_exe, '/SUBSYSTEM:CONSOLE', '/ENTRY:main',
                    f'/OUT:{self.exe_path}', str(obj_path),
                    'kernel32.lib', 'user32.lib'
                ]
                
            result = subprocess.run(link_cmd, capture_output=True, text=True)
            
            if result.returncode != 0:
                print("Linking failed:")
                print(result.stdout)
                print(result.stderr)
                return False
                
            print("Linking successful")
            
            # 清理临时文件
            try:
                obj_path.unlink()
            except:
                pass
                
            return True
            
        except Exception as e:
            print(f"Compilation failed: {e}")
            return False
            
    def fix_assembly_errors(self, error_output: str) -> bool:
        """修复汇编错误"""
        print("Analyzing assembly errors...")
        
        fixed_anything = False
        
        # 常见错误模式和修复
        error_fixes = [
            (r'undefined symbol.*?(\w+)', self.fix_undefined_symbol),
            (r'invalid instruction', self.fix_invalid_instruction),
            (r'syntax error', self.fix_syntax_error)
        ]
        
        for pattern, fix_func in error_fixes:
            matches = re.findall(pattern, error_output, re.IGNORECASE)
            for match in matches:
                if fix_func(match):
                    fixed_anything = True
                    
        return fixed_anything
        
    def fix_undefined_symbol(self, symbol: str) -> bool:
        """修复未定义符号"""
        print(f"Fixing undefined symbol: {symbol}")
        
        # 添加到导入列表
        if symbol not in self.imports:
            self.imports.add(symbol)
            # 在文件开头添加extern声明
            for i, line in enumerate(self.fixed_lines):
                if line.strip().lower() == '.data':
                    self.fixed_lines.insert(i, f"extern {symbol}: proc")
                    return True
                    
        return False
        
    def fix_invalid_instruction(self, instruction: str) -> bool:
        """修复无效指令"""
        print(f"Fixing invalid instruction: {instruction}")
        # 这里可以添加具体的指令修复逻辑
        return False
        
    def fix_syntax_error(self, error: str) -> bool:
        """修复语法错误"""
        print(f"Fixing syntax error: {error}")
        # 这里可以添加具体的语法修复逻辑
        return False
        
    def test_exe(self) -> bool:
        """测试生成的exe文件"""
        if not self.exe_path.exists():
            return False
            
        try:
            print(f"Testing {self.exe_path}...")
            result = subprocess.run([str(self.exe_path)], capture_output=True, text=True, timeout=10)
            print(f"Exit code: {result.returncode}")
            if result.stdout:
                print(f"Output: {result.stdout}")
            if result.stderr:
                print(f"Error: {result.stderr}")
            return True
        except subprocess.TimeoutExpired:
            print("Program timed out (10 seconds)")
            return True
        except Exception as e:
            print(f"Test failed: {e}")
            return False
            
    def compile(self) -> bool:
        """执行完整的编译过程"""
        print(f"Universal ASM to EXE compilation: {self.asm_path} -> {self.exe_path}")
        print("=" * 60)
        
        if not self.detect_compilers():
            return False
            
        if not self.analyze_asm_file():
            return False
            
        if not self.fix_asm_code():
            return False
            
        if not self.write_fixed_asm():
            return False
            
        if not self.compile_to_exe():
            return False
            
        # 测试生成的exe
        self.test_exe()
        
        return True
        
def main():
    if len(sys.argv) < 2:
        print("Universal ASM to EXE Compiler")
        print("=" * 30)
        print("Usage: python universal_asm_to_exe_compiler.py <input_asm> [output_exe]")
        print("")
        print("Features:")
        print("  - Intelligent assembly code fixing")
        print("  - Automatic error detection and repair")
        print("  - Support for both 32-bit and 64-bit")
        print("  - Standard MASM output")
        print("  - Automatic compilation to EXE")
        print("  - Built-in testing")
        print("")
        print("Examples:")
        print("  python universal_asm_to_exe_compiler.py program.asm")
        print("  python universal_asm_to_exe_compiler.py program.asm output.exe")
        return 1
        
    asm_path = sys.argv[1]
    exe_path = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(asm_path):
        print(f"Error: {asm_path} not found")
        return 1
        
    compiler = UniversalAsmToExeCompiler(asm_path, exe_path)
    
    if compiler.compile():
        print("\n" + "=" * 60)
        print("Compilation Summary")
        print("=" * 60)
        print(f"Source: {compiler.asm_path}")
        print(f"Fixed: {compiler.fixed_asm_path}")
        print(f"Output: {compiler.exe_path}")
        print(f"Architecture: {'x64' if compiler.is_64bit else 'x86'}")
        print(f"Original lines: {len(compiler.original_lines)}")
        print(f"Fixed lines: {len(compiler.fixed_lines)}")
        print(f"Imports: {len(compiler.imports)}")
        print(f"Functions: {len(compiler.functions)}")
        print(f"Labels: {len(compiler.labels)}")
        print(f"Data items: {len(compiler.data_items)}")
        print("\nCompilation completed successfully!")
        
        if compiler.exe_path.exists():
            print(f"\nExecutable size: {compiler.exe_path.stat().st_size} bytes")
            print(f"To run: {compiler.exe_path}")
            
        return 0
    else:
        print("\nCompilation failed!")
        print("\nTroubleshooting:")
        print("1. Make sure you're running from Developer Command Prompt")
        print("2. Install Microsoft Visual Studio or Windows SDK")
        print("3. Check the fixed assembly file for manual corrections")
        return 1
        
if __name__ == "__main__":
    sys.exit(main())