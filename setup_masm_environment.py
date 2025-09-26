#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
MASM环境设置助手

自动检测和配置MASM编译环境
"""

import os
import sys
import subprocess
import winreg
from pathlib import Path

class MASMEnvironmentSetup:
    def __init__(self):
        self.vs_paths = []
        self.sdk_paths = []
        self.masm_path = None
        self.link_path = None
        
    def find_visual_studio_installations(self):
        """查找Visual Studio安装路径"""
        print("🔍 搜索Visual Studio安装...")
        
        # 常见的VS安装路径
        common_paths = [
            r"C:\Program Files\Microsoft Visual Studio",
            r"C:\Program Files (x86)\Microsoft Visual Studio",
        ]
        
        for base_path in common_paths:
            if os.path.exists(base_path):
                for year in ['2022', '2019', '2017', '2015']:
                    for edition in ['Enterprise', 'Professional', 'Community', 'BuildTools']:
                        vs_path = os.path.join(base_path, year, edition)
                        if os.path.exists(vs_path):
                            self.vs_paths.append(vs_path)
                            print(f"  ✓ 找到: {vs_path}")
                            
        # 使用vswhere查找VS安装
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
                    for path in result.stdout.strip().split('\n'):
                        if path and path not in self.vs_paths:
                            self.vs_paths.append(path)
                            print(f"  ✓ vswhere找到: {path}")
        except Exception as e:
            print(f"  ⚠️ vswhere查找失败: {e}")
            
    def find_windows_sdk(self):
        """查找Windows SDK"""
        print("\n🔍 搜索Windows SDK...")
        
        try:
            # 从注册表查找SDK
            with winreg.OpenKey(winreg.HKEY_LOCAL_MACHINE, 
                              r"SOFTWARE\WOW6432Node\Microsoft\Microsoft SDKs\Windows\v10.0") as key:
                sdk_path, _ = winreg.QueryValueEx(key, "InstallationFolder")
                if os.path.exists(sdk_path):
                    self.sdk_paths.append(sdk_path)
                    print(f"  ✓ 找到SDK: {sdk_path}")
        except Exception:
            pass
            
        # 常见SDK路径
        common_sdk_paths = [
            r"C:\Program Files (x86)\Windows Kits\10",
            r"C:\Program Files\Windows Kits\10",
        ]
        
        for sdk_path in common_sdk_paths:
            if os.path.exists(sdk_path) and sdk_path not in self.sdk_paths:
                self.sdk_paths.append(sdk_path)
                print(f"  ✓ 找到SDK: {sdk_path}")
                
    def find_masm_and_link(self):
        """查找MASM和LINK工具"""
        print("\n🔍 搜索MASM和LINK工具...")
        
        # 在VS安装中查找
        for vs_path in self.vs_paths:
            # 查找VC工具
            vc_tools_path = os.path.join(vs_path, "VC", "Tools", "MSVC")
            if os.path.exists(vc_tools_path):
                # 找到最新版本
                versions = [d for d in os.listdir(vc_tools_path) 
                           if os.path.isdir(os.path.join(vc_tools_path, d))]
                if versions:
                    latest_version = sorted(versions)[-1]
                    
                    # 检查x64和x86工具
                    for arch in ['x64', 'x86']:
                        bin_path = os.path.join(vc_tools_path, latest_version, "bin", f"Hostx64\\{arch}")
                        if not os.path.exists(bin_path):
                            bin_path = os.path.join(vc_tools_path, latest_version, "bin", f"Hostx86\\{arch}")
                            
                        if os.path.exists(bin_path):
                            ml_exe = os.path.join(bin_path, "ml64.exe" if arch == "x64" else "ml.exe")
                            link_exe = os.path.join(bin_path, "link.exe")
                            
                            if os.path.exists(ml_exe) and os.path.exists(link_exe):
                                if not self.masm_path:  # 使用第一个找到的
                                    self.masm_path = ml_exe
                                    self.link_path = link_exe
                                    print(f"  ✓ 找到MASM ({arch}): {ml_exe}")
                                    print(f"  ✓ 找到LINK ({arch}): {link_exe}")
                                    
        # 在SDK中查找
        for sdk_path in self.sdk_paths:
            bin_path = os.path.join(sdk_path, "bin")
            if os.path.exists(bin_path):
                # 查找最新版本
                versions = [d for d in os.listdir(bin_path) 
                           if os.path.isdir(os.path.join(bin_path, d)) and d.startswith("10.")]
                if versions:
                    latest_version = sorted(versions)[-1]
                    for arch in ['x64', 'x86']:
                        arch_bin = os.path.join(bin_path, latest_version, arch)
                        if os.path.exists(arch_bin):
                            ml_exe = os.path.join(arch_bin, "ml64.exe" if arch == "x64" else "ml.exe")
                            link_exe = os.path.join(arch_bin, "link.exe")
                            
                            if os.path.exists(ml_exe) and os.path.exists(link_exe) and not self.masm_path:
                                self.masm_path = ml_exe
                                self.link_path = link_exe
                                print(f"  ✓ SDK中找到MASM ({arch}): {ml_exe}")
                                print(f"  ✓ SDK中找到LINK ({arch}): {link_exe}")
                                
    def create_developer_command_prompt_script(self):
        """创建开发者命令提示符脚本"""
        print("\n📝 创建开发者环境脚本...")
        
        if not self.vs_paths:
            print("  ⚠️ 未找到Visual Studio，无法创建环境脚本")
            return False
            
        vs_path = self.vs_paths[0]  # 使用第一个找到的VS
        
        # 查找vcvarsall.bat
        vcvarsall_path = None
        possible_paths = [
            os.path.join(vs_path, "VC", "Auxiliary", "Build", "vcvarsall.bat"),
            os.path.join(vs_path, "VC", "vcvarsall.bat"),
        ]
        
        for path in possible_paths:
            if os.path.exists(path):
                vcvarsall_path = path
                break
                
        if not vcvarsall_path:
            print("  ⚠️ 未找到vcvarsall.bat")
            return False
            
        # 创建环境设置脚本
        script_content = f'''@echo off
echo 设置Visual Studio开发环境...
call "{vcvarsall_path}" x64

echo.
echo 环境变量已设置完成！
echo 现在可以使用以下命令：
echo   ml64.exe - 64位汇编器
echo   ml.exe   - 32位汇编器  
echo   link.exe - 链接器
echo.
echo 测试MASM是否可用：
where ml64.exe
where ml.exe
where link.exe

echo.
echo 现在可以编译汇编文件了！
echo 示例: ml64 /c hello.asm ^&^& link hello.obj kernel32.lib user32.lib /subsystem:console
echo.
'''
        
        script_path = "setup_dev_env.bat"
        with open(script_path, 'w', encoding='utf-8') as f:
            f.write(script_content)
            
        print(f"  ✓ 创建环境脚本: {script_path}")
        return True
        
    def create_compile_script(self):
        """创建编译脚本"""
        print("\n📝 创建编译脚本...")
        
        if not self.masm_path or not self.link_path:
            print("  ⚠️ 未找到MASM工具，创建通用脚本")
            
            script_content = '''@echo off
echo Universal ASM Compiler Script
echo ============================

if "%1"=="" (
    echo Usage: %0 ^<asm_file^> [output_name]
    echo Example: %0 hello.asm hello.exe
    exit /b 1
)

set ASM_FILE=%1
set OUTPUT_NAME=%2
if "%OUTPUT_NAME%"=="" set OUTPUT_NAME=%~n1.exe

echo Compiling: %ASM_FILE% -> %OUTPUT_NAME%

REM 尝试使用ml64 (64位)
ml64.exe /c /Fo %~n1.obj %ASM_FILE% 2>nul
if %ERRORLEVEL%==0 (
    echo Using ml64.exe...
    link.exe %~n1.obj kernel32.lib user32.lib /subsystem:console /out:%OUTPUT_NAME%
    goto :cleanup
)

REM 尝试使用ml (32位)
ml.exe /c /coff /Fo %~n1.obj %ASM_FILE% 2>nul
if %ERRORLEVEL%==0 (
    echo Using ml.exe...
    link.exe %~n1.obj kernel32.lib user32.lib /subsystem:console /out:%OUTPUT_NAME%
    goto :cleanup
)

echo Error: No MASM compiler found!
echo Please run setup_dev_env.bat first or install Visual Studio
exit /b 1

:cleanup
if exist %~n1.obj del %~n1.obj
echo Compilation complete: %OUTPUT_NAME%
'''
        else:
            # 使用找到的具体路径
            masm_name = os.path.basename(self.masm_path)
            script_content = f'''@echo off
echo Universal ASM Compiler Script (Direct Path)
echo ==========================================

if "%1"=="" (
    echo Usage: %0 ^<asm_file^> [output_name]
    echo Example: %0 hello.asm hello.exe
    exit /b 1
)

set ASM_FILE=%1
set OUTPUT_NAME=%2
if "%OUTPUT_NAME%"=="" set OUTPUT_NAME=%~n1.exe

echo Compiling: %ASM_FILE% -> %OUTPUT_NAME%
echo Using: {masm_name}

"{self.masm_path}" /c /Fo %~n1.obj %ASM_FILE%
if %ERRORLEVEL% neq 0 (
    echo Assembly failed!
    exit /b 1
)

"{self.link_path}" %~n1.obj kernel32.lib user32.lib /subsystem:console /out:%OUTPUT_NAME%
if %ERRORLEVEL% neq 0 (
    echo Linking failed!
    exit /b 1
)

if exist %~n1.obj del %~n1.obj
echo Compilation complete: %OUTPUT_NAME%
'''
        
        script_path = "compile_asm_universal.bat"
        with open(script_path, 'w', encoding='utf-8') as f:
            f.write(script_content)
            
        print(f"  ✓ 创建编译脚本: {script_path}")
        return True
        
    def test_compilation(self):
        """测试编译环境"""
        print("\n🧪 测试编译环境...")
        
        # 创建简单的测试文件
        test_asm = '''
.386
.model flat, stdcall
option casemap:none

include windows.inc
include kernel32.inc
includelib kernel32.lib

.data
    msg db "Hello from MASM!", 0

.code
start:
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    push eax
    invoke WriteConsoleA, eax, offset msg, 17, 0, 0
    invoke ExitProcess, 0
end start
'''
        
        with open("test_masm.asm", 'w') as f:
            f.write(test_asm)
            
        print("  ✓ 创建测试文件: test_masm.asm")
        
        # 尝试编译
        if self.masm_path and self.link_path:
            try:
                print(f"  🔨 使用 {os.path.basename(self.masm_path)} 编译...")
                result = subprocess.run([
                    self.masm_path, "/c", "/Fo", "test_masm.obj", "test_masm.asm"
                ], capture_output=True, text=True)
                
                if result.returncode == 0:
                    print("  ✓ 汇编成功")
                    
                    # 尝试链接
                    result = subprocess.run([
                        self.link_path, "test_masm.obj", "kernel32.lib", 
                        "/subsystem:console", "/out:test_masm.exe"
                    ], capture_output=True, text=True)
                    
                    if result.returncode == 0:
                        print("  ✓ 链接成功")
                        print("  ✓ 编译环境测试通过！")
                        return True
                    else:
                        print(f"  ✗ 链接失败: {result.stderr}")
                else:
                    print(f"  ✗ 汇编失败: {result.stderr}")
            except Exception as e:
                print(f"  ✗ 测试编译出错: {e}")
        else:
            print("  ⚠️ 未找到MASM工具，跳过编译测试")
            
        return False
        
    def generate_report(self):
        """生成环境报告"""
        print("\n" + "="*60)
        print("MASM环境检测报告")
        print("="*60)
        
        print(f"Visual Studio安装: {len(self.vs_paths)} 个")
        for i, path in enumerate(self.vs_paths, 1):
            print(f"  {i}. {path}")
            
        print(f"\nWindows SDK安装: {len(self.sdk_paths)} 个")
        for i, path in enumerate(self.sdk_paths, 1):
            print(f"  {i}. {path}")
            
        print(f"\nMASM工具:")
        if self.masm_path:
            print(f"  ✓ MASM: {self.masm_path}")
            print(f"  ✓ LINK: {self.link_path}")
        else:
            print("  ✗ 未找到MASM工具")
            
        print(f"\n生成的文件:")
        files = ["setup_dev_env.bat", "compile_asm_universal.bat", "test_masm.asm"]
        for file in files:
            if os.path.exists(file):
                print(f"  ✓ {file}")
            else:
                print(f"  ✗ {file}")
                
        print("\n建议:")
        if not self.vs_paths and not self.sdk_paths:
            print("  1. 安装 Visual Studio Community (免费)")
            print("  2. 或安装 Windows SDK")
            print("  3. 或使用 Visual Studio Build Tools")
        elif not self.masm_path:
            print("  1. 运行 setup_dev_env.bat 设置环境")
            print("  2. 或从开始菜单打开 'Developer Command Prompt'")
        else:
            print("  1. 环境配置完成，可以直接使用")
            print("  2. 使用 compile_asm_universal.bat 编译汇编文件")
            
def main():
    print("MASM环境设置助手")
    print("="*40)
    
    setup = MASMEnvironmentSetup()
    
    # 执行检测
    setup.find_visual_studio_installations()
    setup.find_windows_sdk()
    setup.find_masm_and_link()
    
    # 创建脚本
    setup.create_developer_command_prompt_script()
    setup.create_compile_script()
    
    # 测试环境
    setup.test_compilation()
    
    # 生成报告
    setup.generate_report()
    
    print("\n" + "="*60)
    print("设置完成！")
    print("="*60)
    print("下一步:")
    print("1. 如果有Visual Studio，运行: setup_dev_env.bat")
    print("2. 使用编译脚本: compile_asm_universal.bat your_file.asm")
    print("3. 或者安装Visual Studio Community (推荐)")
    
if __name__ == "__main__":
    main()