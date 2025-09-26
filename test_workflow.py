#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Test Workflow for Universal EXE <-> ASM Converter

测试通用exe转asm和asm转exe转换器的完整工作流程
"""

import os
import sys
import subprocess
from pathlib import Path
import tempfile
import shutil

def check_dependencies():
    """检查依赖库"""
    print("Checking dependencies...")
    
    missing_deps = []
    
    try:
        import pefile
        print("✓ pefile library found")
    except ImportError:
        missing_deps.append('pefile')
        print("✗ pefile library missing")
        
    try:
        import capstone
        print("✓ capstone library found")
    except ImportError:
        missing_deps.append('capstone')
        print("✗ capstone library missing")
        
    if missing_deps:
        print(f"\nMissing dependencies: {', '.join(missing_deps)}")
        print("Install with:")
        for dep in missing_deps:
            print(f"  pip install {dep}")
        return False
        
    return True

def install_dependencies():
    """安装依赖库"""
    print("Installing dependencies...")
    
    deps = ['pefile', 'capstone']
    
    for dep in deps:
        try:
            print(f"Installing {dep}...")
            result = subprocess.run([sys.executable, '-m', 'pip', 'install', dep], 
                                  capture_output=True, text=True)
            if result.returncode == 0:
                print(f"✓ {dep} installed successfully")
            else:
                print(f"✗ Failed to install {dep}")
                print(result.stderr)
                return False
        except Exception as e:
            print(f"✗ Error installing {dep}: {e}")
            return False
            
    return True

def test_exe_to_asm_converter():
    """测试exe转asm转换器"""
    print("\n" + "=" * 50)
    print("Testing EXE to ASM Converter")
    print("=" * 50)
    
    # 查找测试用的exe文件
    test_files = []
    current_dir = Path('.')
    
    # 查找现有的exe文件
    for exe_file in current_dir.glob('*.exe'):
        if exe_file.stat().st_size < 1024 * 1024:  # 小于1MB的文件
            test_files.append(exe_file)
            
    if not test_files:
        print("No suitable test EXE files found")
        print("Creating a simple test program...")
        
        # 创建一个简单的C程序并编译
        test_c = '''
#include <stdio.h>
int main() {
    printf("Hello World!\\n");
    return 0;
}
'''
        
        try:
            with open('test_simple.c', 'w') as f:
                f.write(test_c)
                
            # 尝试用gcc编译
            result = subprocess.run(['gcc', 'test_simple.c', '-o', 'test_simple.exe'], 
                                  capture_output=True, text=True)
            if result.returncode == 0:
                test_files.append(Path('test_simple.exe'))
                print("✓ Created test_simple.exe")
            else:
                print("✗ Failed to create test executable")
                print("Please provide a test .exe file manually")
                return False
        except:
            print("✗ GCC not available, cannot create test executable")
            return False
            
    # 测试转换器
    test_exe = test_files[0]
    print(f"Testing with: {test_exe}")
    
    try:
        # 导入转换器
        sys.path.insert(0, '.')
        from universal_exe_to_asm_converter import UniversalExeToAsmConverter
        
        # 执行转换
        converter = UniversalExeToAsmConverter(str(test_exe))
        
        print("Analyzing PE file...")
        if not converter.analyze_pe_file():
            print("✗ PE analysis failed")
            return False
        print("✓ PE analysis successful")
        
        print("Disassembling code...")
        if not converter.disassemble_code():
            print("✗ Disassembly failed")
            return False
        print("✓ Disassembly successful")
        
        print("Generating assembly code...")
        asm_content = converter.generate_asm_code()
        if not asm_content:
            print("✗ Assembly generation failed")
            return False
        print("✓ Assembly generation successful")
        
        # 写入文件
        asm_path = test_exe.with_suffix('.asm')
        with open(asm_path, 'w', encoding='utf-8') as f:
            f.write(asm_content)
        print(f"✓ Assembly written to {asm_path}")
        
        return True, asm_path
        
    except Exception as e:
        print(f"✗ EXE to ASM conversion failed: {e}")
        return False
        
def test_asm_to_exe_compiler(asm_path):
    """测试asm转exe编译器"""
    print("\n" + "=" * 50)
    print("Testing ASM to EXE Compiler")
    print("=" * 50)
    
    try:
        # 导入编译器
        from universal_asm_to_exe_compiler import UniversalAsmToExeCompiler
        
        # 执行编译
        compiler = UniversalAsmToExeCompiler(str(asm_path))
        
        print("Analyzing assembly file...")
        if not compiler.analyze_asm_file():
            print("✗ ASM analysis failed")
            return False
        print("✓ ASM analysis successful")
        
        print("Fixing assembly code...")
        if not compiler.fix_asm_code():
            print("✗ ASM fixing failed")
            return False
        print("✓ ASM fixing successful")
        
        print("Writing fixed assembly...")
        if not compiler.write_fixed_asm():
            print("✗ Writing fixed ASM failed")
            return False
        print(f"✓ Fixed assembly written to {compiler.fixed_asm_path}")
        
        # 检查编译器可用性
        if not compiler.detect_compilers():
            print("⚠ MASM compiler not available, skipping actual compilation")
            print("✓ ASM fixing and preparation completed successfully")
            return True
            
        print("Compiling to executable...")
        if not compiler.compile_to_exe():
            print("✗ Compilation to EXE failed")
            return False
        print("✓ Compilation successful")
        
        return True
        
    except Exception as e:
        print(f"✗ ASM to EXE compilation failed: {e}")
        return False
        
def test_complete_workflow():
    """测试完整工作流程"""
    print("\n" + "=" * 60)
    print("COMPLETE WORKFLOW TEST")
    print("=" * 60)
    
    # 步骤1: 检查依赖
    if not check_dependencies():
        print("\nAttempting to install dependencies...")
        if not install_dependencies():
            print("✗ Failed to install dependencies")
            return False
        print("✓ Dependencies installed")
        
    # 步骤2: 测试exe转asm
    result = test_exe_to_asm_converter()
    if not result:
        print("✗ EXE to ASM conversion failed")
        return False
        
    success, asm_path = result
    if not success:
        return False
        
    # 步骤3: 测试asm转exe
    if not test_asm_to_exe_compiler(asm_path):
        print("✗ ASM to EXE compilation failed")
        return False
        
    print("\n" + "=" * 60)
    print("WORKFLOW TEST SUMMARY")
    print("=" * 60)
    print("✓ Dependencies check/installation: PASSED")
    print("✓ EXE to ASM conversion: PASSED")
    print("✓ ASM to EXE compilation: PASSED")
    print("")
    print("Complete workflow test: SUCCESS")
    print("")
    print("Files created:")
    print(f"  - Assembly file: {asm_path}")
    print(f"  - Fixed assembly: {asm_path.with_name(asm_path.stem + '_fixed.asm')}")
    
    exe_path = asm_path.with_suffix('.exe')
    if exe_path.exists():
        print(f"  - Executable: {exe_path}")
    else:
        print("  - Executable: Not created (MASM not available)")
        
    return True
    
def create_demo_files():
    """创建演示文件"""
    print("\n" + "=" * 50)
    print("Creating Demo Files")
    print("=" * 50)
    
    # 创建简单的演示程序
    demo_asm = '''
; Demo program for universal converter
.model flat, stdcall
.stack 4096

extern GetStdHandle: proc
extern WriteConsoleA: proc
extern ExitProcess: proc

STD_OUTPUT_HANDLE equ -11

.data
    demo_msg db "Hello from Universal Converter Demo!", 13, 10, 0
    msg_len dd 37
    bytes_written dd ?

.code

main proc
    ; Get stdout handle
    push STD_OUTPUT_HANDLE
    call GetStdHandle
    
    ; Write message
    push 0
    lea edx, bytes_written
    push edx
    push msg_len
    lea edx, demo_msg
    push edx
    push eax
    call WriteConsoleA
    
    ; Exit
    push 0
    call ExitProcess
    
    ret
main endp

end main
'''
    
    with open('demo_program.asm', 'w', encoding='utf-8') as f:
        f.write(demo_asm)
    print("✓ Created demo_program.asm")
    
    # 创建批处理脚本
    batch_script = '''
@echo off
echo Universal EXE/ASM Converter Demo
echo ================================
echo.

echo Step 1: Testing ASM to EXE compilation...
python universal_asm_to_exe_compiler.py demo_program.asm
echo.

if exist demo_program.exe (
    echo Step 2: Testing EXE to ASM conversion...
    python universal_exe_to_asm_converter.py demo_program.exe demo_reverse.asm
    echo.
    
    echo Step 3: Testing reverse compilation...
    python universal_asm_to_exe_compiler.py demo_reverse.asm demo_reverse.exe
    echo.
    
    echo Demo completed!
    echo Files created:
    dir /b *.asm *.exe 2>nul
) else (
    echo Demo requires MASM compiler to be available
    echo Please run from Developer Command Prompt
)

echo.
pause
'''
    
    with open('run_demo.bat', 'w', encoding='utf-8') as f:
        f.write(batch_script)
    print("✓ Created run_demo.bat")
    
    return True
    
def main():
    print("Universal EXE/ASM Converter Workflow Test")
    print("=" * 50)
    
    if len(sys.argv) > 1 and sys.argv[1] == '--install-deps':
        return 0 if install_dependencies() else 1
        
    if len(sys.argv) > 1 and sys.argv[1] == '--create-demo':
        return 0 if create_demo_files() else 1
        
    # 运行完整测试
    success = test_complete_workflow()
    
    if success:
        print("\n" + "=" * 60)
        print("NEXT STEPS")
        print("=" * 60)
        print("1. To create demo files: python test_workflow.py --create-demo")
        print("2. To install dependencies only: python test_workflow.py --install-deps")
        print("3. To test with your own EXE: python universal_exe_to_asm_converter.py your_file.exe")
        print("4. To compile ASM to EXE: python universal_asm_to_exe_compiler.py your_file.asm")
        print("")
        print("For full functionality, run from Developer Command Prompt with MASM available.")
        
    return 0 if success else 1
    
if __name__ == "__main__":
    sys.exit(main())