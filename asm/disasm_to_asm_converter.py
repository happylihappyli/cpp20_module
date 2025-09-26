#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
反汇编文件转换器
将COFF/PE Dumper输出的反汇编文件转换为可编译的MASM64汇编源代码
"""

import re
import sys

def parse_disasm_line(line):
    """解析反汇编行，提取地址和指令"""
    # 匹配格式: 地址: 机器码 指令
    pattern = r'\s*([0-9A-F]+):\s+([0-9A-F\s]+)\s+(.+)'
    match = re.match(pattern, line)
    
    if match:
        address = match.group(1)
        machine_code = match.group(2).strip()
        instruction = match.group(3).strip()
        return address, machine_code, instruction
    return None, None, None

def clean_instruction(instruction):
    """清理指令，移除地址引用"""
    # 移除具体的内存地址，替换为标签
    instruction = re.sub(r'\[([0-9A-F]+)h\]', r'[label_\1]', instruction)
    instruction = re.sub(r'([0-9A-F]+)h', r'label_\1', instruction)
    
    # 处理常见的指令格式
    if 'call' in instruction and 'qword ptr' in instruction:
        instruction = re.sub(r'call\s+qword ptr \[(.+?)\]', r'call \1', instruction)
    
    return instruction

def convert_disasm_to_asm(input_file, output_file):
    """转换反汇编文件为汇编源代码"""
    
    with open(input_file, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    asm_lines = []
    asm_lines.append("; Converted from disassembly file")
    asm_lines.append("; Addresses and machine codes removed")
    asm_lines.append("")
    asm_lines.append(".code")
    asm_lines.append("")
    
    # 添加常用的外部函数声明
    externals = [
        "extern ExitProcess: proc",
        "extern GetStdHandle: proc", 
        "extern WriteConsoleA: proc",
        "extern WriteConsoleW: proc"
    ]
    
    for ext in externals:
        asm_lines.append(ext)
    asm_lines.append("")
    
    function_count = 0
    in_code_section = False
    
    for line in lines:
        line = line.strip()
        
        # 跳过文件头信息
        if 'Microsoft (R) COFF/PE Dumper' in line:
            continue
        if 'Copyright (C) Microsoft Corporation' in line:
            continue
        if 'Dump of file' in line:
            continue
        if 'File Type:' in line:
            continue
        if line.startswith('Summary'):
            break
            
        # 解析指令行
        address, machine_code, instruction = parse_disasm_line(line)
        
        if address and instruction:
            in_code_section = True
            
            # 检测函数开始（通常以特定模式开始）
            if any(inst in instruction.lower() for inst in ['sub rsp', 'push rbp', 'push rbx']):
                if function_count > 0:
                    asm_lines.append(f"func_{function_count:04X} endp")
                    asm_lines.append("")
                function_count += 1
                asm_lines.append(f"func_{address} proc")
            
            # 清理并添加指令
            clean_inst = clean_instruction(instruction)
            asm_lines.append(f"    {clean_inst}")
            
            # 检测函数结束
            if instruction.lower().strip() == 'ret':
                asm_lines.append(f"func_{address}_end:")
    
    # 结束最后一个函数
    if function_count > 0:
        asm_lines.append(f"func_{function_count:04X} endp")
    
    # 添加数据段
    asm_lines.append("")
    asm_lines.append(".data")
    asm_lines.append("; Data section placeholders")
    
    # 为所有引用的标签创建占位符
    label_pattern = r'label_([0-9A-F]+)'
    labels = set()
    for line in asm_lines:
        matches = re.findall(label_pattern, line)
        labels.update(matches)
    
    for label in sorted(labels):
        asm_lines.append(f"label_{label} dq 0")
    
    asm_lines.append("")
    asm_lines.append("end")
    
    # 写入输出文件
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(asm_lines))
    
    print(f"转换完成: {input_file} -> {output_file}")
    print(f"生成了 {function_count} 个函数")
    print(f"生成了 {len(labels)} 个数据标签")

def main():
    if len(sys.argv) != 3:
        print("用法: python disasm_to_asm_converter.py <输入文件> <输出文件>")
        print("示例: python disasm_to_asm_converter.py main.asm main_converted.asm")
        return
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    
    try:
        convert_disasm_to_asm(input_file, output_file)
    except Exception as e:
        print(f"转换失败: {e}")

if __name__ == "__main__":
    # 如果没有命令行参数，使用默认文件
    if len(sys.argv) == 1:
        convert_disasm_to_asm("main.asm", "main_auto_converted.asm")
    else:
        main()