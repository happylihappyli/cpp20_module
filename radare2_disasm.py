#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
radare2风格反汇编工具
完全模拟radare2的输出格式和命令
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

def radare2_disasm(exe_path, output_path=None):
    """
    使用radare2风格反汇编PE文件
    """
    try:
        print(f"[0x00000000]> aaa")
        print(f"[x] Analyze all flags starting with sym. and entry0 (aa)")
        print(f"[x] Analyze function calls (aac)")
        print(f"[x] Analyze len bytes of instructions for references (aar)")
        print(f"[x] Check for objc references")
        print(f"[x] Check for vtables")
        print(f"[x] Type matching analysis for all functions (aaft)")
        print(f"[x] Propagate noreturn information")
        print(f"[x] Use -AA or aaaa to perform additional experimental analysis.")
        print()
        
        # 加载PE文件
        pe = pefile.PE(exe_path)
        
        # 获取基本信息
        entry_point = pe.OPTIONAL_HEADER.AddressOfEntryPoint
        image_base = pe.OPTIONAL_HEADER.ImageBase
        entry_va = image_base + entry_point
        
        print(f"[0x{entry_va:08x}]> pdf")
        print()
        
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
        
        # 生成radare2风格输出
        r2_output = generate_r2_output(instructions, entry_va, pe)
        
        # 输出到文件或控制台
        if output_path:
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(r2_output)
            print(f"输出已保存到: {output_path}")
        else:
            print(r2_output)
        
        return True
        
    except Exception as e:
        print(f"错误: {e}")
        return False

def generate_r2_output(instructions, entry_va, pe):
    """
    生成标准radare2风格的反汇编输出
    """
    lines = []
    
    # 添加函数头
    lines.append(f"┌ {len([i for i in instructions[:100]])} bytes @ 0x{entry_va:08x}")
    lines.append(f"│           ; DATA XREF from entry0 @ 0x{entry_va:08x}")
    
    # 限制输出长度，只显示前100条指令
    display_instructions = instructions[:100]
    
    for i, insn in enumerate(display_instructions):
        # radare2风格的地址显示
        addr_str = f"0x{insn.address:08x}"
        
        # 字节码
        bytes_str = ''.join(f'{b:02x}' for b in insn.bytes)
        bytes_padded = f"{bytes_str:<16}"
        
        # 指令和操作数
        mnemonic = insn.mnemonic
        op_str = insn.op_str
        
        # 添加分支符号
        if i == 0:
            prefix = "│           "
        elif i == len(display_instructions) - 1:
            prefix = "└           "
        else:
            prefix = "│           "
        
        # 特殊指令标记
        if mnemonic in ['call']:
            prefix = prefix.replace('│', '├')
        elif mnemonic in ['jmp', 'je', 'jne', 'jz', 'jnz', 'ja', 'jb', 'jl', 'jg']:
            prefix = prefix.replace('│', '└')
        
        # 格式化输出行
        line = f"{prefix}{addr_str}      {bytes_padded} {mnemonic:<8} {op_str}"
        
        # 添加注释
        if mnemonic == 'call' and insn.operands:
            op = insn.operands[0]
            if op.type == capstone.x86.X86_OP_IMM:
                target = op.value.imm
                # 查找导入函数
                func_name = find_import_function(pe, target)
                if func_name:
                    line += f" ; {func_name}"
                else:
                    line += f" ; fcn.{target:08x}"
        
        lines.append(line)
    
    if len(instructions) > 100:
        lines.append(f"│           ; ... ({len(instructions) - 100} more instructions)")
        lines.append("└           ; (truncated for display)")
    
    return '\n'.join(lines)

def find_import_function(pe, address):
    """
    查找导入函数名称
    """
    try:
        if hasattr(pe, 'DIRECTORY_ENTRY_IMPORT'):
            for entry in pe.DIRECTORY_ENTRY_IMPORT:
                for imp in entry.imports:
                    if imp.address == address and imp.name:
                        return imp.name.decode('utf-8')
    except:
        pass
    return None

def main():
    if len(sys.argv) < 2:
        print("用法: python radare2_disasm.py <exe_file> [output_file]")
        print("示例: python radare2_disasm.py bin/hello.exe hello.asm")
        return
    
    exe_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(exe_file):
        print(f"错误: 文件 {exe_file} 不存在")
        return
    
    print(f"-- radare2 {exe_file} --")
    print(f"[0x00000000]> aaaa")
    
    radare2_disasm(exe_file, output_file)

if __name__ == '__main__':
    main()