#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Assembly Build Script for C++20 Module Project

This script handles the complete workflow from C++ source to assembly and executable.
Since dumpbin-generated .asm files cannot be directly compiled, this script provides
alternative approaches for assembly-based compilation.
"""

import os
import sys
import subprocess
import argparse

class AssemblyBuilder:
    def __init__(self):
        self.vs_path = r'D:\Code\VS2022\Community'
        self.vc_vars = os.path.join(self.vs_path, r'VC\Auxiliary\Build\vcvars64.bat')
        self.src_dir = 'src'
        self.obj_dir = 'obj'
        self.asm_dir = 'asm'
        self.bin_dir = 'bin'
        
        # Ensure directories exist
        for d in [self.obj_dir, self.asm_dir, self.bin_dir]:
            os.makedirs(d, exist_ok=True)
    
    def run_cmd(self, cmd, cwd=None):
        """Run command with VS environment"""
        full_cmd = f'call "{self.vc_vars}" && chcp 65001 >nul && {cmd}'
        try:
            result = subprocess.run(full_cmd, shell=True, cwd=cwd, 
                                  capture_output=True, text=True, encoding='gbk')
            return result.returncode == 0, result.stdout, result.stderr
        except UnicodeDecodeError:
            # Fallback to default encoding
            result = subprocess.run(full_cmd, shell=True, cwd=cwd, 
                                  capture_output=True, text=True)
            return result.returncode == 0, result.stdout, result.stderr
    
    def compile_modules(self):
        """Compile C++20 modules"""
        print("Compiling C++20 modules...")
        
        modules = [
            ('funny.ixx', 'funny.ifc', 'funny.obj'),
            ('math.ixx', 'math.ifc', 'math.obj')
        ]
        
        for ixx_file, ifc_file, obj_file in modules:
            ixx_path = os.path.join(self.src_dir, ixx_file)
            ifc_path = os.path.join(self.obj_dir, ifc_file)
            obj_path = os.path.join(self.obj_dir, obj_file)
            
            cmd = f'cl /std:c++20 /experimental:module /c "{ixx_path}" /Fo:"{obj_path}" /module:output "{ifc_path}"'
            success, stdout, stderr = self.run_cmd(cmd)
            
            if not success:
                print(f"Failed to compile {ixx_file}")
                print(f"Error: {stderr}")
                return False
            
            print(f"  ✓ {ixx_file} -> {obj_file}")
        
        return True
    
    def compile_main(self):
        """Compile main.cpp"""
        print("Compiling main.cpp...")
        
        main_cpp = os.path.join(self.src_dir, 'main.cpp')
        main_obj = os.path.join(self.obj_dir, 'main.obj')
        funny_ifc = os.path.join(self.obj_dir, 'funny.ifc')
        math_ifc = os.path.join(self.obj_dir, 'math.ifc')
        
        cmd = f'cl /std:c++20 /experimental:module /c "{main_cpp}" /Fo:"{main_obj}" /module:reference "{funny_ifc}" /module:reference "{math_ifc}"'
        success, stdout, stderr = self.run_cmd(cmd)
        
        if success:
            print("  ✓ main.cpp -> main.obj")
        else:
            print(f"Failed to compile main.cpp: {stderr}")
        
        return success
    
    def generate_source_assembly(self):
        """Generate compilable assembly from source"""
        print("Generating source-level assembly...")
        
        main_cpp = os.path.join(self.src_dir, 'main.cpp')
        main_asm = os.path.join(self.asm_dir, 'main_source_compilable.asm')
        funny_ifc = os.path.join(self.obj_dir, 'funny.ifc')
        math_ifc = os.path.join(self.obj_dir, 'math.ifc')
        
        # Generate assembly with /FA flag
        cmd = f'cl /std:c++20 /experimental:module /FA /Fa"{main_asm}" "{main_cpp}" /module:reference "{funny_ifc}" /module:reference "{math_ifc}" /EHsc /c'
        success, stdout, stderr = self.run_cmd(cmd)
        
        if success and os.path.exists(main_asm):
            print(f"  ✓ Generated: {main_asm}")
            return True
        else:
            print(f"Failed to generate source assembly: {stderr}")
            return False
    
    def generate_object_disassembly(self):
        """Generate disassembly from object files"""
        print("Generating object disassembly...")
        
        objects = ['main.obj', 'funny.obj', 'math.obj']
        for obj in objects:
            obj_path = os.path.join(self.obj_dir, obj)
            asm_path = os.path.join(self.asm_dir, f'{obj.replace(".obj", "_disasm.asm")}')
            
            if os.path.exists(obj_path):
                cmd = f'dumpbin /disasm "{obj_path}" > "{asm_path}"'
                success, _, _ = self.run_cmd(cmd)
                if success:
                    print(f"  ✓ {obj} -> {os.path.basename(asm_path)}")
    
    def link_executable(self):
        """Link final executable"""
        print("Linking executable...")
        
        obj_files = [
            os.path.join(self.obj_dir, 'main.obj'),
            os.path.join(self.obj_dir, 'funny.obj'),
            os.path.join(self.obj_dir, 'math.obj')
        ]
        
        exe_path = os.path.join(self.bin_dir, 'main_asm_build.exe')
        
        obj_list = ' '.join([f'"{obj}"' for obj in obj_files])
        cmd = f'link {obj_list} /OUT:"{exe_path}" /SUBSYSTEM:CONSOLE'
        success, stdout, stderr = self.run_cmd(cmd)
        
        if success:
            print(f"  ✓ Created: {exe_path}")
        else:
            print(f"Failed to link executable: {stderr}")
        
        return success
    
    def create_assembly_compile_script(self):
        """Create script to demonstrate assembly compilation"""
        print("Creating assembly compilation demonstration...")
        
        script_content = '''@echo off
chcp 65001 >nul
call "D:\\Code\\VS2022\\Community\\VC\\Auxiliary\\Build\\vcvars64.bat"

echo Assembly Compilation Demonstration
echo ===================================
echo.

echo Note: The main.asm file from dumpbin cannot be directly compiled because:
echo - It contains PE headers and metadata
echo - Uses disassembly syntax, not assembler syntax
echo - Includes non-executable sections
echo.

echo Alternative 1: Relink from object files
echo ----------------------------------------
link "..\\obj\\main.obj" "..\\obj\\funny.obj" "..\\obj\\math.obj" /OUT:main_from_objects.exe /SUBSYSTEM:CONSOLE

if exist main_from_objects.exe (
    echo ✓ Success: Created main_from_objects.exe
    echo Testing functionality:
    main_from_objects.exe
    echo.
) else (
    echo ✗ Failed to create executable from objects
)

echo Alternative 2: Compile from source-level assembly
echo ------------------------------------------------
if exist main_source_compilable.asm (
    echo Attempting to assemble main_source_compilable.asm...
    ml64 /c main_source_compilable.asm /Fo:main_from_source_asm.obj
    if exist main_from_source_asm.obj (
        echo ✓ Assembly successful, linking...
        link main_from_source_asm.obj "..\\obj\\funny.obj" "..\\obj\\math.obj" /OUT:main_from_source_asm.exe /SUBSYSTEM:CONSOLE
        if exist main_from_source_asm.exe (
            echo ✓ Success: Created main_from_source_asm.exe
            echo Testing functionality:
            main_from_source_asm.exe
        )
    ) else (
        echo ✗ Assembly failed - source assembly may need manual editing
    )
) else (
    echo ✗ main_source_compilable.asm not found
)

echo.
echo Summary:
echo - Object relinking: Always works, identical functionality
echo - Source assembly: May require manual editing for complex C++ code
echo - Dumpbin disassembly: For analysis only, not compilable
'''
        
        script_path = os.path.join(self.asm_dir, 'compile_assembly_demo.bat')
        with open(script_path, 'w', encoding='utf-8') as f:
            f.write(script_content)
        
        print(f"  ✓ Created: {script_path}")
    
    def build_all(self):
        """Complete build process"""
        print("Starting Assembly Build Process")
        print("=" * 40)
        
        steps = [
            ("Compiling modules", self.compile_modules),
            ("Compiling main", self.compile_main),
            ("Generating source assembly", self.generate_source_assembly),
            ("Generating object disassembly", self.generate_object_disassembly),
            ("Linking executable", self.link_executable),
            ("Creating demo script", self.create_assembly_compile_script)
        ]
        
        for step_name, step_func in steps:
            print(f"\n{step_name}...")
            if not step_func():
                print(f"✗ Failed at: {step_name}")
                return False
        
        print("\n" + "=" * 40)
        print("✓ Build completed successfully!")
        print("\nGenerated files:")
        print(f"  - Executable: {os.path.join(self.bin_dir, 'main_asm_build.exe')}")
        print(f"  - Assembly files: {self.asm_dir}/")
        print(f"  - Demo script: {os.path.join(self.asm_dir, 'compile_assembly_demo.bat')}")
        print("\nTo test assembly compilation:")
        print(f"  cd {self.asm_dir} && .\\compile_assembly_demo.bat")
        
        return True

def main():
    parser = argparse.ArgumentParser(description='Assembly Build Script for C++20 Modules')
    parser.add_argument('--clean', action='store_true', help='Clean build directories')
    args = parser.parse_args()
    
    builder = AssemblyBuilder()
    
    if args.clean:
        print("Cleaning build directories...")
        import shutil
        for d in [builder.obj_dir, builder.asm_dir, builder.bin_dir]:
            if os.path.exists(d):
                shutil.rmtree(d)
        print("Clean completed.")
        return
    
    success = builder.build_all()
    sys.exit(0 if success else 1)

if __name__ == '__main__':
    main()