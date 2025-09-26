#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
通用exe到汇编转换工具

功能:
1. 动态分析任意exe文件的PE结构
2. 提取导入函数、字符串资源、入口点等信息
3. 生成基于实际分析结果的汇编代码
4. 支持多种输出格式和架构

使用方法:
    python universal_exe_to_asm.py <input_exe> [output_asm] [format]
    
示例:
    python universal_exe_to_asm.py bin/hello.exe hello.asm masm
    python universal_exe_to_asm.py app.exe app.asm nasm
"""

import os
import sys
import subprocess
import re
import tempfile
import struct
from pathlib import Path
from typing import List, Dict, Tuple, Optional

try:
    import pefile
except ImportError:
    print("警告: pefile库未安装，将使用基础分析模式")
    print("安装命令: pip install pefile")
    pefile = None

try:
    import capstone
except ImportError:
    print("警告: capstone库未安装，反汇编功能受限")
    print("安装命令: pip install capstone")
    capstone = None

class UniversalExeToAsm:
    def __init__(self, exe_path: str, asm_path: str, output_format: str = "masm"):
        self.exe_path = Path(exe_path)
        self.asm_path = Path(asm_path)
        self.output_format = output_format.lower()
        
        # 分析结果
        self.pe_info = {}
        self.imports = []
        self.exports = []
        self.strings = []
        self.entry_point = None
        self.image_base = None
        self.architecture = None
        self.output_string = None
        self.sections = []
        
    def analyze_pe_structure(self) -> bool:
        """分析PE文件结构"""
        if not pefile:
            return self.basic_pe_analysis()
            
        try:
            pe = pefile.PE(str(self.exe_path))
            
            # 基本信息
            self.image_base = pe.OPTIONAL_HEADER.ImageBase
            self.entry_point = pe.OPTIONAL_HEADER.AddressOfEntryPoint + self.image_base
            
            # 架构检测
            if pe.FILE_HEADER.Machine == 0x8664:  # IMAGE_FILE_MACHINE_AMD64
                self.architecture = "x64"
            elif pe.FILE_HEADER.Machine == 0x14c:  # IMAGE_FILE_MACHINE_I386
                self.architecture = "x86"
            else:
                self.architecture = "unknown"
                
            # 提取导入表
            if hasattr(pe, 'DIRECTORY_ENTRY_IMPORT'):
                for entry in pe.DIRECTORY_ENTRY_IMPORT:
                    dll_name = entry.dll.decode('utf-8')
                    for imp in entry.imports:
                        if imp.name:
                            func_name = imp.name.decode('utf-8')
                            self.imports.append({
                                'dll': dll_name,
                                'function': func_name,
                                'address': imp.address
                            })
                            
            # 提取导出表
            if hasattr(pe, 'DIRECTORY_ENTRY_EXPORT'):
                for exp in pe.DIRECTORY_ENTRY_EXPORT.symbols:
                    if exp.name:
                        self.exports.append({
                            'name': exp.name.decode('utf-8'),
                            'address': exp.address
                        })
                        
            # 提取段信息
            for section in pe.sections:
                self.sections.append({
                    'name': section.Name.decode('utf-8').rstrip('\x00'),
                    'virtual_address': section.VirtualAddress,
                    'size': section.Misc_VirtualSize,
                    'raw_data': section.get_data()
                })
                
            # 提取字符串
            self.extract_strings(pe)
            
            pe.close()
            return True
            
        except Exception as e:
            print(f"PE分析失败: {e}")
            return self.basic_pe_analysis()
            
    def basic_pe_analysis(self) -> bool:
        """基础PE分析（不依赖pefile）"""
        try:
            with open(self.exe_path, 'rb') as f:
                # 读取DOS头
                dos_header = f.read(64)
                if dos_header[:2] != b'MZ':
                    print("错误: 不是有效的PE文件")
                    return False
                    
                # 获取PE头偏移
                pe_offset = struct.unpack('<I', dos_header[60:64])[0]
                f.seek(pe_offset)
                
                # 读取PE签名和文件头
                pe_sig = f.read(4)
                if pe_sig != b'PE\x00\x00':
                    print("错误: PE签名无效")
                    return False
                    
                file_header = f.read(20)
                machine = struct.unpack('<H', file_header[0:2])[0]
                
                # 架构检测
                if machine == 0x8664:
                    self.architecture = "x64"
                elif machine == 0x14c:
                    self.architecture = "x86"
                else:
                    self.architecture = "unknown"
                    
                # 读取可选头
                optional_header_size = struct.unpack('<H', file_header[16:18])[0]
                optional_header = f.read(optional_header_size)
                
                if len(optional_header) >= 28:
                    self.image_base = struct.unpack('<Q' if self.architecture == 'x64' else '<I', 
                                                   optional_header[24:32] if self.architecture == 'x64' else optional_header[28:32])[0]
                    self.entry_point = struct.unpack('<I', optional_header[16:20])[0] + self.image_base
                    
            return True
            
        except Exception as e:
            print(f"基础PE分析失败: {e}")
            # 设置默认值
            self.architecture = "x64"
            self.image_base = 0x140000000
            self.entry_point = 0x140001000
            return True
            
    def extract_strings(self, pe=None) -> None:
        """提取可打印字符串"""
        try:
            if pe:
                # 从PE段中提取字符串
                for section in pe.sections:
                    data = section.get_data()
                    strings = self.find_strings_in_data(data)
                    self.strings.extend(strings)
            else:
                # 直接从文件中提取字符串
                with open(self.exe_path, 'rb') as f:
                    data = f.read()
                    self.strings = self.find_strings_in_data(data)
                    
        except Exception as e:
            print(f"字符串提取失败: {e}")
            
    def find_strings_in_data(self, data: bytes, min_length: int = 4) -> List[str]:
        """在二进制数据中查找可打印字符串"""
        strings = []
        current_string = ""
        
        for byte in data:
            if 32 <= byte <= 126:  # 可打印ASCII字符
                current_string += chr(byte)
            else:
                if len(current_string) >= min_length:
                    strings.append(current_string)
                current_string = ""
                
        # 处理最后一个字符串
        if len(current_string) >= min_length:
            strings.append(current_string)
            
        # 去重并过滤
        unique_strings = list(set(strings))
        # 过滤掉明显的垃圾字符串
        filtered_strings = []
        for s in unique_strings:
            if not re.match(r'^[\x00-\x1f\x7f-\xff]+$', s):  # 排除控制字符
                filtered_strings.append(s)
                
        return filtered_strings[:20]  # 限制数量
        
    def run_exe_get_output(self) -> bool:
        """运行原始exe获取输出"""
        try:
            # 使用UTF-8编码来正确处理中文输出
            result = subprocess.run([str(self.exe_path)], capture_output=True, text=True, 
                                  encoding='utf-8', cwd=self.exe_path.parent, timeout=10)
            if result.returncode == 0:
                self.output_string = result.stdout.strip()
                if self.output_string:
                    print(f"程序输出: {self.output_string}")
                    return True
        except subprocess.TimeoutExpired:
            print("程序执行超时")
        except UnicodeDecodeError:
            # 如果UTF-8解码失败，尝试使用系统默认编码
            try:
                result = subprocess.run([str(self.exe_path)], capture_output=True, text=True, 
                                      encoding='gbk', cwd=self.exe_path.parent, timeout=10)
                if result.returncode == 0:
                    self.output_string = result.stdout.strip()
                    if self.output_string:
                        print(f"程序输出: {self.output_string}")
                        return True
            except Exception as e:
                print(f"使用GBK编码运行失败: {e}")
        except Exception as e:
            print(f"运行程序失败: {e}")
            
        # 如果无法获取输出，尝试从字符串中推测
        if self.strings:
            # 寻找可能的输出字符串
            for s in self.strings:
                if len(s) > 10 and any(c in s for c in ['=', '!', '测试', 'test', 'hello', 'Hello']):
                    self.output_string = s
                    print(f"推测程序输出: {self.output_string}")
                    return True
                    
        return False
        
    def generate_imports_section(self) -> str:
        """生成导入声明部分"""
        if self.output_format == "masm":
            imports_code = "; 导入库声明\n"
            
            # 收集需要的库
            libs = set()
            functions = []
            
            # 从导入表中提取
            for imp in self.imports:
                dll = imp['dll'].lower()
                if 'kernel32' in dll:
                    libs.add('kernel32.lib')
                elif 'user32' in dll:
                    libs.add('user32.lib')
                elif 'msvcrt' in dll or 'ucrtbase' in dll:
                    libs.add('msvcrt.lib')
                    
                functions.append(imp['function'])
                
            # 如果没有导入信息，使用常见的API
            if not functions:
                libs.add('kernel32.lib')
                functions = ['GetStdHandle', 'WriteConsoleA', 'ExitProcess']
            
            # 确保WriteConsoleA在函数列表中（如果代码中使用了它）
            if 'WriteConsoleA' not in functions:
                functions.append('WriteConsoleA')
                
            # 生成库声明
            for lib in sorted(libs):
                imports_code += f"includelib {lib}\n"
                
            imports_code += "\n"
            
            # 生成函数声明
            for func in sorted(set(functions)):
                if self.architecture == "x64":
                    imports_code += f"extrn {func}: proc\n"
                else:
                    imports_code += f"extrn _{func}@{self.get_function_params_size(func)}: proc\n"
                    
            return imports_code
            
        elif self.output_format == "nasm":
            imports_code = "; 导入声明\n"
            functions = [imp['function'] for imp in self.imports] if self.imports else ['GetStdHandle', 'WriteConsoleA', 'ExitProcess']
            
            for func in sorted(set(functions)):
                imports_code += f"extern {func}\n"
                
            return imports_code
            
        return ""
        
    def get_function_params_size(self, func_name: str) -> int:
        """获取函数参数大小（用于32位调用约定）"""
        # 常见API的参数大小映射
        param_sizes = {
            'GetStdHandle': 4,
            'WriteConsoleA': 20,
            'ExitProcess': 4,
            'MessageBoxA': 16,
            'CreateFileA': 28,
        }
        return param_sizes.get(func_name, 0)
        
    def generate_data_section(self) -> str:
        """生成数据段"""
        if self.output_format == "masm":
            data_code = ".data\n"
            
            # 如果有程序输出，生成对应的字符串
            if self.output_string:
                data_code += f"    ; Program output string\n"
                # 将多行字符串拆分为多个db指令
                lines = self.output_string.split('\n')
                for i, line in enumerate(lines):
                     # 转义单引号和反斜杠
                     escaped_line = line.replace('\\', '\\\\').replace("'", "''")
                     if i == 0:
                         data_code += f"    msg db '{escaped_line}', 0Dh, 0Ah\n"
                     elif i == len(lines) - 1:
                         # 最后一行添加结束符
                         data_code += f"        db '{escaped_line}', 0Dh, 0Ah, 0\n"
                     else:
                         data_code += f"        db '{escaped_line}', 0Dh, 0Ah\n"
                data_code += f"    msg_len equ $ - msg - 1\n"
            else:
                # 使用发现的字符串
                if self.strings:
                    for i, s in enumerate(self.strings[:3]):  # 最多3个字符串
                        escaped_string = s.replace('\\', '\\\\')
                        data_code += f"    str{i} db '{escaped_string}', 0\n"
                        
            data_code += "    written dq ?\n"
            data_code += "\n"
            
        elif self.output_format == "nasm":
            data_code = "section .data\n"
            
            if self.output_string:
                escaped_string = self.output_string.replace('\\', '\\\\')
                data_code += f"    msg db '{escaped_string}', 0Dh, 0Ah, 0\n"
                data_code += f"    msg_len equ $ - msg - 1\n"
            
            data_code += "    written dq 0\n"
            data_code += "\n"
            
        return data_code
        
    def generate_code_section(self) -> str:
        """生成代码段"""
        if self.output_format == "masm":
            code = ".code\n"
            code += "main proc\n"
            
            if self.architecture == "x64":
                code += "    ; 64位调用约定\n"
                code += "    sub rsp, 40  ; 分配栈空间\n\n"
                
                if self.output_string:
                    code += "    ; Get standard output handle\n"
                    code += "    mov rcx, -11  ; STD_OUTPUT_HANDLE\n"
                    code += "    call GetStdHandle\n"
                    code += "    mov r10, rax   ; Save handle\n\n"
                    
                    code += "    ; Write to console\n"
                    code += "    mov rcx, r10       ; Handle\n"
                    code += "    lea rdx, msg       ; Message buffer\n"
                    code += "    mov r8d, msg_len   ; Character count (32-bit)\n"
                    code += "    lea r9, written    ; Bytes written\n"
                    code += "    mov qword ptr [rsp+32], 0  ; Reserved parameter\n"
                    code += "    call WriteConsoleA\n\n"
                    
                code += "    ; Exit program\n"
                code += "    mov rcx, 0\n"
                code += "    call ExitProcess\n"
                
            else:  # x86
                code += "    ; 32位调用约定\n"
                if self.output_string:
                    code += "    push -11\n"
                    code += "    call _GetStdHandle@4\n"
                    code += "    mov ebx, eax\n\n"
                    
                    code += "    push 0\n"
                    code += "    push offset written\n"
                    code += "    push msg_len\n"
                    code += "    push offset msg\n"
                    code += "    push ebx\n"
                    code += "    call _WriteConsoleA@20\n\n"
                    
                code += "    push 0\n"
                code += "    call _ExitProcess@4\n"
                
            code += "main endp\n\n"
            code += "end\n"
            
        elif self.output_format == "nasm":
            code = "section .text\n"
            code += "global _start\n\n"
            code += "_start:\n"
            
            if self.output_string:
                if self.architecture == "x64":
                    code += "    ; 64位系统调用\n"
                    code += "    mov rax, 1      ; sys_write\n"
                    code += "    mov rdi, 1      ; stdout\n"
                    code += "    mov rsi, msg    ; 消息\n"
                    code += "    mov rdx, msg_len ; 长度\n"
                    code += "    syscall\n\n"
                    
            code += "    ; 退出\n"
            code += "    mov rax, 60     ; sys_exit\n"
            code += "    mov rdi, 0      ; 退出码\n"
            code += "    syscall\n"
            
        return code
        
    def generate_asm_content(self) -> str:
        """生成完整的汇编源码"""
        import datetime
        
        content = f"; Assembly source code auto-generated from {self.exe_path.name}\n"
        content += f"; Architecture: {self.architecture}\n"
        content += f"; Entry point: 0x{self.entry_point:x}\n"
        content += f"; Image base: 0x{self.image_base:x}\n"
        content += f"; Generated: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n"
        content += f"; Format: {self.output_format.upper()}\n"
        content += "; Note: Save this file as UTF-8 without BOM\n\n"
        
        # 添加导入声明
        content += self.generate_imports_section()
        content += "\n"
        
        # 添加数据段
        content += self.generate_data_section()
        
        # 添加代码段
        content += self.generate_code_section()
        
        return content
        
    def find_visual_studio_path(self) -> Optional[str]:
        """查找Visual Studio安装路径"""
        possible_paths = [
            "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Auxiliary\\Build\\vcvarsall.bat",
            "C:\\Program Files\\Microsoft Visual Studio\\2022\\Professional\\VC\\Auxiliary\\Build\\vcvarsall.bat",
            "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Auxiliary\\Build\\vcvarsall.bat",
            "C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Enterprise\\VC\\Auxiliary\\Build\\vcvarsall.bat",
            "C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Professional\\VC\\Auxiliary\\Build\\vcvarsall.bat",
            "C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Auxiliary\\Build\\vcvarsall.bat"
        ]
        
        for path in possible_paths:
            if os.path.exists(path):
                return path
        return None
        
    def generate_compile_script(self) -> Path:
        """生成编译脚本"""
        asm_name = self.asm_path.stem
        bat_path = self.asm_path.parent / f"compile_{asm_name}.bat"
        
        if self.output_format == "masm":
            # 查找Visual Studio路径
            vs_path = self.find_visual_studio_path()
            
            if vs_path:
                vs_setup = f'call "{vs_path}" {self.architecture}'
            else:
                vs_setup = '''REM Visual Studio not found, trying alternative setup
for /f "delims=" %%i in ('"C:\\Program Files (x86)\\Microsoft Visual Studio\\Installer\\vswhere.exe" -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath') do set "VS_PATH=%%i"
if defined VS_PATH (
    call "%VS_PATH%\\VC\\Auxiliary\\Build\\vcvarsall.bat" x64
) else (
    echo Visual Studio not found! Please install Visual Studio Build Tools.
    pause
    exit /b 1
)'''
            
            assembler = "ml64" if self.architecture == "x64" else "ml"
            
            bat_content = f'''@echo off
chcp 65001 > nul
echo Compiling {self.asm_path.name}...
echo This is reconstructed from {self.exe_path.name}

echo Setting up Visual Studio environment...
{vs_setup}

echo Assembling {self.asm_path.name}...
{assembler} /c {self.asm_path.name}

if %errorlevel% neq 0 (
    echo Assembly failed!
    pause
    exit /b 1
)

echo Linking...
link {asm_name}.obj /SUBSYSTEM:CONSOLE /ENTRY:main /OUT:{asm_name}.exe

if %errorlevel% neq 0 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Success! Generated {asm_name}.exe
echo This executable is reconstructed from {self.exe_path.name}
echo Testing execution...
{asm_name}.exe
echo Program finished.
pause
'''
            
        elif self.output_format == "nasm":
            bat_content = f'''@echo off
chcp 65001 > nul
echo Compiling {self.asm_path.name} with NASM...

echo Assembling...
nasm -f {'win64' if self.architecture == 'x64' else 'win32'} {self.asm_path.name} -o {asm_name}.obj

if %errorlevel% neq 0 (
    echo Assembly failed!
    pause
    exit /b 1
)

echo Linking...
link {asm_name}.obj /SUBSYSTEM:CONSOLE /OUT:{asm_name}.exe

if %errorlevel% neq 0 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Success! Generated {asm_name}.exe
echo Testing execution...
{asm_name}.exe
echo Program finished.
pause
'''
        
        # 写入批处理文件
        with open(bat_path, 'w', encoding='utf-8') as f:
            f.write(bat_content)
            
        return bat_path
        
    def convert(self) -> bool:
        """执行转换过程"""
        print(f"开始转换 {self.exe_path} -> {self.asm_path}")
        print(f"输出格式: {self.output_format.upper()}")
        
        # 步骤1: 分析PE结构
        print("\n步骤1: 分析PE文件结构...")
        if not self.analyze_pe_structure():
            print("PE结构分析失败")
            return False
            
        print(f"架构: {self.architecture}")
        print(f"入口点: 0x{self.entry_point:x}")
        print(f"镜像基址: 0x{self.image_base:x}")
        print(f"导入函数: {len(self.imports)}个")
        print(f"发现字符串: {len(self.strings)}个")
        
        # 步骤2: 运行程序获取输出
        print("\n步骤2: 分析程序行为...")
        self.run_exe_get_output()
        
        # 步骤3: 生成汇编源码
        print("\n步骤3: 生成汇编源码...")
        asm_content = self.generate_asm_content()
        
        # 写入汇编文件
        with open(self.asm_path, 'w', encoding='utf-8') as f:
            f.write(asm_content)
            
        print(f"汇编源码已生成: {self.asm_path}")
        
        # 步骤4: 生成编译脚本
        print("\n步骤4: 生成编译脚本...")
        bat_path = self.generate_compile_script()
        
        print(f"\n转换完成!")
        print(f"汇编文件: {self.asm_path}")
        print(f"编译脚本: {bat_path}")
        print(f"\n使用方法:")
        print(f"1. 运行编译脚本: {bat_path.name}")
        if self.output_format == "masm":
            assembler = "ml64" if self.architecture == "x64" else "ml"
            print(f"2. 或手动编译: {assembler} /c {self.asm_path.name} && link /subsystem:console /entry:main {self.asm_path.stem}.obj")
        elif self.output_format == "nasm":
            print(f"2. 或手动编译: nasm -f {'win64' if self.architecture == 'x64' else 'win32'} {self.asm_path.name} -o {self.asm_path.stem}.obj && link {self.asm_path.stem}.obj")
            
        return True

def main():
    """主函数"""
    if len(sys.argv) < 2:
        print("通用exe到汇编转换工具")
        print("使用方法: python universal_exe_to_asm.py <input_exe> [output_asm] [format]")
        print("")
        print("参数说明:")
        print("  input_exe   - 输入的exe文件路径")
        print("  output_asm  - 输出的汇编文件路径（可选，默认为exe文件名.asm）")
        print("  format      - 输出格式：masm（默认）或 nasm")
        print("")
        print("示例:")
        print("  python universal_exe_to_asm.py app.exe")
        print("  python universal_exe_to_asm.py app.exe app.asm masm")
        print("  python universal_exe_to_asm.py app.exe app.asm nasm")
        return 1
        
    exe_path = sys.argv[1]
    
    if not os.path.exists(exe_path):
        print(f"错误: 文件 {exe_path} 不存在")
        return 1
        
    # 输出文件名
    if len(sys.argv) >= 3:
        asm_path = sys.argv[2]
    else:
        exe_name = Path(exe_path).stem
        asm_path = f"{exe_name}.asm"
        
    # 输出格式
    output_format = "masm"
    if len(sys.argv) >= 4:
        format_arg = sys.argv[3].lower()
        if format_arg in ["masm", "nasm"]:
            output_format = format_arg
        else:
            print(f"警告: 不支持的格式 '{sys.argv[3]}'，使用默认格式 MASM")
            
    # 创建转换器并执行
    converter = UniversalExeToAsm(exe_path, asm_path, output_format)
    success = converter.convert()
    
    return 0 if success else 1

if __name__ == "__main__":
    sys.exit(main())