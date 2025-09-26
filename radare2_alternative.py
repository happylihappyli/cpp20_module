#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
radare2替代方案 - 使用Python实现反汇编功能
模拟radare2的反汇编输出格式
"""

import os
import sys
import struct
from pathlib import Path

try:
    import pefile
    import capstone
except ImportError:
    print("需要安装依赖: pip install pefile capstone")
    sys.exit(1)

def disassemble_with_radare2_format(exe_path, output_path):
    """
    使用capstone反汇编，输出类似radare2格式的汇编代码
    """
    try:
        print(f"正在分析 {exe_path}...")
        
        # 加载PE文件
        pe = pefile.PE(exe_path)
        
        # 获取入口点和镜像基址
        entry_point = pe.OPTIONAL_HEADER.AddressOfEntryPoint
        image_base = pe.OPTIONAL_HEADER.ImageBase
        entry_va = image_base + entry_point
        
        print(f"入口点: 0x{entry_point:x}")
        print(f"镜像基址: 0x{image_base:x}")
        print(f"入口虚拟地址: 0x{entry_va:x}")
        
        # 找到包含入口点的节
        entry_section = None
        for section in pe.sections:
            section_start = section.VirtualAddress
            section_end = section_start + section.Misc_VirtualSize
            if section_start <= entry_point < section_end:
                entry_section = section
                break
        
        if not entry_section:
            print("错误: 找不到包含入口点的节")
            return False
        
        # 获取代码数据
        section_data = entry_section.get_data()
        section_va = image_base + entry_section.VirtualAddress
        
        # 初始化capstone反汇编器
        if pe.FILE_HEADER.Machine == 0x8664:  # x64
            md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
        else:  # x86
            md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
        
        md.detail = True
        
        # 反汇编代码
        instructions = list(md.disasm(section_data, section_va))
        
        # 生成radare2风格的汇编输出
        asm_content = generate_radare2_style_asm(instructions, entry_va, image_base, pe)
        
        # 写入文件
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(asm_content)
        
        print(f"✓ 成功生成radare2风格的汇编文件: {output_path}")
        print(f"✓ 反汇编了 {len(instructions)} 条指令")
        return True
        
    except Exception as e:
        print(f"错误: {e}")
        return False

def generate_radare2_style_asm(instructions, entry_va, image_base, pe):
    """
    生成radare2风格的汇编代码
    """
    asm_lines = []
    
    # 添加文件头注释
    asm_lines.append("; radare2风格反汇编输出")
    asm_lines.append(f"; 原始文件入口点: 0x{entry_va:x}")
    asm_lines.append(f"; 镜像基址: 0x{image_base:x}")
    asm_lines.append("; 生成工具: radare2_alternative.py")
    asm_lines.append("")
    
    # 添加节信息
    asm_lines.append("; 节信息:")
    for section in pe.sections:
        name = section.Name.decode('utf-8').rstrip('\x00')
        va = image_base + section.VirtualAddress
        size = section.Misc_VirtualSize
        asm_lines.append(f"; {name:8} VA:0x{va:08x} Size:0x{size:08x}")
    asm_lines.append("")
    
    # 添加导入函数信息
    if hasattr(pe, 'DIRECTORY_ENTRY_IMPORT'):
        asm_lines.append("; 导入函数:")
        for entry in pe.DIRECTORY_ENTRY_IMPORT:
            dll_name = entry.dll.decode('utf-8')
            asm_lines.append(f"; {dll_name}:")
            for imp in entry.imports:
                if imp.name:
                    func_name = imp.name.decode('utf-8')
                    asm_lines.append(f";   {func_name} @ 0x{imp.address:08x}")
        asm_lines.append("")
    
    # 添加反汇编代码
    asm_lines.append("; 反汇编代码:")
    asm_lines.append("")
    
    current_function = None
    
    for i, insn in enumerate(instructions):
        # 检查是否是新函数的开始（简单启发式）
        if (i == 0 or 
            insn.mnemonic in ['push', 'mov'] and i < 10 or
            any(insn.address == imp.address for entry in getattr(pe, 'DIRECTORY_ENTRY_IMPORT', []) 
                for imp in entry.imports if imp.address)):
            
            if current_function != insn.address:
                if current_function is not None:
                    asm_lines.append("")
                asm_lines.append(f"; 函数 @ 0x{insn.address:08x}")
                current_function = insn.address
        
        # 格式化指令
        bytes_str = ' '.join(f'{b:02x}' for b in insn.bytes)
        
        # radare2风格的地址和字节码显示
        addr_str = f"0x{insn.address:08x}"
        bytes_padded = f"{bytes_str:<20}"
        
        # 处理操作数
        op_str = insn.op_str
        
        # 添加注释（如果是跳转或调用指令）
        comment = ""
        if insn.mnemonic in ['call', 'jmp', 'je', 'jne', 'jz', 'jnz', 'ja', 'jb', 'jl', 'jg']:
            # 尝试解析目标地址
            if insn.operands and len(insn.operands) > 0:
                op = insn.operands[0]
                if op.type == capstone.x86.X86_OP_IMM:
                    target_addr = op.value.imm
                    comment = f" ; -> 0x{target_addr:08x}"
        
        # 生成汇编行
        asm_line = f"{addr_str}  {bytes_padded} {insn.mnemonic:<8} {op_str}{comment}"
        asm_lines.append(asm_line)
        
        # 限制输出长度（避免文件过大）
        if len(asm_lines) > 1000:
            asm_lines.append("; ... (输出被截断，避免文件过大)")
            break
    
    return '\n'.join(asm_lines)

def main():
    print("=== radare2替代方案 ===")
    print("使用Python工具模拟radare2反汇编功能")
    print()
    
    # 查找hello.exe
    hello_exe = "hello.exe"
    if not os.path.exists(hello_exe):
        # 尝试在bin目录查找
        hello_exe = "bin/hello.exe"
        if not os.path.exists(hello_exe):
            print("错误: 找不到hello.exe文件")
            print("请确保hello.exe在当前目录或bin目录中")
            return
    
    output_file = "hello.asm"
    
    print(f"输入文件: {hello_exe}")
    print(f"输出文件: {output_file}")
    print()
    
    # 执行反汇编
    if disassemble_with_radare2_format(hello_exe, output_file):
        print(f"\n✓ 成功生成 {output_file}")
        print("\n使用说明:")
        print(f"1. 查看生成的汇编文件: type {output_file}")
        print("2. 这是radare2风格的反汇编输出")
        print("3. 包含地址、字节码和汇编指令")
    else:
        print("\n✗ 反汇编失败")

if __name__ == '__main__':
    main()