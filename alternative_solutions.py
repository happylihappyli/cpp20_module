#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
反汇编替代解决方案
当直接反汇编无法生成可编译代码时的其他选择
"""

import os
import sys
import subprocess

def solution_1_template_generator():
    """
    方案1: 基于分析结果的汇编模板生成器
    """
    print("\n=== 方案1: 汇编模板生成器 ===")
    
    # 分析原始二进制文件的基本信息
    try:
        import pefile
        pe = pefile.PE("hello2.exe")
        
        # 获取基本信息
        entry_point = pe.OPTIONAL_HEADER.AddressOfEntryPoint
        image_base = pe.OPTIONAL_HEADER.ImageBase
        
        # 生成基于模板的汇编代码
        template_asm = f"""; 基于分析的汇编模板
; 原始入口点: 0x{entry_point:x}
; 镜像基址: 0x{image_base:x}

.386
.model flat, stdcall
option casemap:none

; 导入库声明
includelib kernel32.lib
includelib user32.lib

; API 函数声明
GetStdHandle PROTO :DWORD
WriteConsoleA PROTO :DWORD,:DWORD,:DWORD,:DWORD,:DWORD
ExitProcess PROTO :DWORD

.data
    msg db 'Hello from ASM!', 0
    msg_len equ $ - msg - 1
    written dd ?

.code
start:
    ; 获取标准输出句柄
    push -11                    ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov ebx, eax               ; 保存句柄
    
    ; 写入控制台
    push 0                     ; lpReserved
    push offset written        ; lpNumberOfCharsWritten
    push msg_len               ; nNumberOfCharsToWrite
    push offset msg            ; lpBuffer
    push ebx                   ; hConsoleOutput
    call WriteConsoleA
    
    ; 退出程序
    push 0
    call ExitProcess
    
end start
"""
        
        with open("hello_template.asm", "w", encoding="utf-8") as f:
            f.write(template_asm)
        
        print("✓ 生成了基于模板的汇编文件: hello_template.asm")
        print("  这个文件使用标准的MASM语法，应该可以直接编译")
        return True
        
    except Exception as e:
        print(f"✗ 模板生成失败: {e}")
        return False

def solution_2_ida_approach():
    """
    方案2: IDA Pro 方法说明
    """
    print("\n=== 方案2: IDA Pro 专业方法 ===")
    print("如果您有IDA Pro，可以使用以下方法:")
    print("")
    print("1. 在IDA Pro中打开hello2.exe")
    print("2. 等待自动分析完成")
    print("3. 使用以下Python脚本 (在IDA Pro中运行):")
    
    ida_script = '''
# IDA Pro Python 脚本
import idaapi
import idc
import idautils

def export_to_asm():
    """导出为更完整的汇编代码"""
    with open("hello_ida_export.asm", "w") as f:
        f.write("; 由IDA Pro导出\n")
        f.write(".386\n.model flat, stdcall\n\n")
        
        # 导出数据段
        f.write(".data\n")
        for seg_ea in idautils.Segments():
            seg = idaapi.getseg(seg_ea)
            if seg and seg.type == idaapi.SEG_DATA:
                f.write(f"; 数据段: {idc.get_segm_name(seg_ea)}\n")
        
        # 导出代码段
        f.write("\n.code\n")
        for func_ea in idautils.Functions():
            func_name = idc.get_func_name(func_ea)
            f.write(f"\n{func_name} PROC\n")
            
            # 获取函数指令
            func_end = idc.find_func_end(func_ea)
            ea = func_ea
            while ea < func_end:
                disasm = idc.generate_disasm_line(ea, 0)
                if disasm:
                    f.write(f"    {disasm}\n")
                ea = idc.next_head(ea)
            
            f.write(f"{func_name} ENDP\n")
        
        f.write("\nend\n")
    
    print("导出完成: hello_ida_export.asm")

# 运行导出
export_to_asm()
'''
    
    with open("ida_export_script.py", "w", encoding="utf-8") as f:
        f.write(ida_script)
    
    print("4. 脚本已保存为: ida_export_script.py")
    print("5. 在IDA Pro中: File -> Script file -> 选择ida_export_script.py")
    print("")
    print("优势: IDA Pro提供最准确的函数识别和交叉引用分析")

def solution_3_radare2_install():
    """
    方案3: 尝试安装和使用 radare2
    """
    print("\n=== 方案3: radare2 安装指南 ===")
    print("radare2 是一个强大的开源逆向工程框架")
    print("")
    print("Windows 安装方法:")
    print("1. 下载预编译版本:")
    print("   https://github.com/radareorg/radare2/releases")
    print("2. 或使用包管理器:")
    print("   - Chocolatey: choco install radare2")
    print("   - Scoop: scoop install radare2")
    print("")
    print("安装后可以使用:")
    
    r2_commands = '''
# radare2 基本使用
r2 hello2.exe          # 打开文件
> aaa                  # 自动分析
> pdf                  # 打印当前函数反汇编
> aflj                 # 列出所有函数(JSON格式)
> px 100               # 十六进制查看
> s main               # 跳转到main函数
> V                    # 进入可视化模式
'''
    
    with open("radare2_usage.txt", "w", encoding="utf-8") as f:
        f.write(r2_commands)
    
    print("基本命令已保存到: radare2_usage.txt")

def solution_4_ghidra_manual():
    """
    方案4: Ghidra 手动导出方法
    """
    print("\n=== 方案4: Ghidra 手动导出 ===")
    print("即使没有Ghidra Bridge，也可以手动使用Ghidra:")
    print("")
    print("1. 下载Ghidra (免费): https://ghidra-sre.org/")
    print("2. 创建新项目并导入hello2.exe")
    print("3. 运行自动分析 (Analysis -> Auto Analyze)")
    print("4. 导出汇编代码:")
    print("   - File -> Export Program")
    print("   - 选择格式: 'Assembly'")
    print("   - 配置导出选项")
    print("")
    print("5. 或者使用Ghidra的脚本功能:")
    
    ghidra_script = '''
// Ghidra Java 脚本示例
// 在Ghidra中: Window -> Script Manager -> 新建脚本

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ExportAssembly extends GhidraScript {
    @Override
    public void run() throws Exception {
        Listing listing = currentProgram.getListing();
        
        // 获取所有函数
        FunctionManager funcMgr = currentProgram.getFunctionManager();
        FunctionIterator functions = funcMgr.getFunctions(true);
        
        // 导出到文件
        java.io.PrintWriter writer = new java.io.PrintWriter("ghidra_export.asm");
        writer.println("; Ghidra 导出的汇编代码");
        writer.println(".386");
        writer.println(".model flat, stdcall");
        writer.println("");
        
        while (functions.hasNext()) {
            Function func = functions.next();
            writer.println(func.getName() + " PROC");
            
            // 导出函数指令
            AddressSetView body = func.getBody();
            InstructionIterator instructions = listing.getInstructions(body, true);
            
            while (instructions.hasNext()) {
                Instruction inst = instructions.next();
                writer.println("    " + inst.toString());
            }
            
            writer.println(func.getName() + " ENDP");
            writer.println("");
        }
        
        writer.println("end");
        writer.close();
        
        println("导出完成: ghidra_export.asm");
    }
}
'''
    
    with open("ghidra_export_script.java", "w", encoding="utf-8") as f:
        f.write(ghidra_script)
    
    print("Ghidra脚本已保存为: ghidra_export_script.java")

def solution_5_objdump_approach():
    """
    方案5: 使用系统工具 objdump (如果可用)
    """
    print("\n=== 方案5: 系统工具方法 ===")
    
    # 检查是否有objdump (通常在MinGW或MSYS2中)
    try:
        result = subprocess.run(["objdump", "--version"], 
                              capture_output=True, text=True, timeout=5)
        if result.returncode == 0:
            print("✓ 发现objdump工具")
            print("可以使用以下命令:")
            print("  objdump -d hello2.exe > hello_objdump.asm")
            print("  objdump -D hello2.exe > hello_objdump_full.asm")
            
            # 尝试运行
            try:
                subprocess.run(["objdump", "-d", "hello2.exe"], 
                             stdout=open("hello_objdump.asm", "w"), 
                             timeout=10)
                print("✓ 已生成: hello_objdump.asm")
            except Exception as e:
                print(f"objdump执行失败: {e}")
        else:
            print("✗ objdump不可用")
    except (FileNotFoundError, subprocess.TimeoutExpired):
        print("✗ 系统中未找到objdump工具")
        print("可以通过以下方式安装:")
        print("  - 安装MinGW-w64")
        print("  - 安装MSYS2")
        print("  - 使用WSL中的binutils")

def main():
    """
    主函数 - 展示所有替代方案
    """
    print("反汇编替代解决方案")
    print("=" * 50)
    print("当直接反汇编无法生成可编译代码时，以下是其他选择:")
    
    # 执行各种方案
    solution_1_template_generator()
    solution_2_ida_approach()
    solution_3_radare2_install()
    solution_4_ghidra_manual()
    solution_5_objdump_approach()
    
    print("\n" + "=" * 50)
    print("总结建议:")
    print("1. 🎯 立即可用: 使用生成的汇编模板 (hello_template.asm)")
    print("2. 🔧 专业工具: 安装Ghidra或IDA Pro进行深度分析")
    print("3. 🚀 开源选择: 安装radare2获得强大的命令行工具")
    print("4. 💡 实用方法: 结合多种工具的分析结果手工重建代码")
    print("")
    print("记住: 反汇编的目标是理解程序逻辑，而不是完美重建源代码")

if __name__ == "__main__":
    main()