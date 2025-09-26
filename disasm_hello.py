#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
使用Capstone Engine反汇编hello.exe为hello.asm
需要安装: pip install capstone
"""

import os
import sys
from capstone import *

def read_pe_file(filename):
    """读取PE文件的代码段"""
    try:
        with open(filename, 'rb') as f:
            data = f.read()
        return data
    except FileNotFoundError:
        print(f"错误: 找不到文件 {filename}")
        return None
    except Exception as e:
        print(f"读取文件时出错: {e}")
        return None

def disassemble_to_asm(binary_data, output_file, arch=CS_ARCH_X86, mode=CS_MODE_64):
    """使用Capstone反汇编二进制数据并输出为ASM格式"""
    try:
        # 初始化Capstone反汇编引擎
        md = Cs(arch, mode)
        md.detail = True  # 启用详细信息
        
        # 创建输出文件
        with open(output_file, 'w', encoding='utf-8') as f:
            # 写入ASM文件头
            f.write("; 使用Capstone Engine反汇编生成\n")
            f.write("; 原文件: hello.exe\n")
            f.write("; 生成时间: {}\n\n".format(__import__('datetime').datetime.now()))
            
            f.write(".code\n\n")
            
            # 反汇编指令
            instruction_count = 0
            for i, instruction in enumerate(md.disasm(binary_data, 0x1000)):
                # 格式化输出: 地址 | 机器码 | 汇编指令
                machine_code = ' '.join(['{:02x}'.format(b) for b in instruction.bytes])
                
                # 写入汇编指令
                f.write(f"    {instruction.mnemonic} {instruction.op_str}\n")
                
                # 添加注释显示地址和机器码
                f.write(f"    ; 0x{instruction.address:08x}: {machine_code}\n")
                
                instruction_count += 1
                
                # 限制输出指令数量，避免文件过大
                if instruction_count > 1000:
                    f.write("\n; ... 更多指令被截断 ...\n")
                    break
            
            f.write("\nend\n")
            
        print(f"反汇编完成! 共处理 {instruction_count} 条指令")
        print(f"输出文件: {output_file}")
        return True
        
    except Exception as e:
        print(f"反汇编过程中出错: {e}")
        return False

def find_code_section(binary_data):
    """简单的PE文件代码段查找(简化版本)"""
    # 这是一个简化的实现，实际PE解析会更复杂
    # 寻找常见的代码段特征
    
    # 跳过PE头，从可能的代码段开始
    # 通常代码段在文件的0x400-0x1000之间开始
    code_start = 0x400
    if len(binary_data) > code_start:
        return binary_data[code_start:code_start + 0x2000]  # 取8KB作为代码段
    else:
        return binary_data[0x200:]  # 如果文件太小，从0x200开始

def main():
    """主函数"""
    # 输入和输出文件路径
    input_file = "bin/hello.exe"
    output_file = "hello.asm"
    
    # 检查输入文件是否存在
    if not os.path.exists(input_file):
        print(f"错误: 找不到输入文件 {input_file}")
        print("请确保hello.exe在bin目录中")
        return 1
    
    print(f"开始反汇编 {input_file}...")
    
    # 读取二进制文件
    binary_data = read_pe_file(input_file)
    if binary_data is None:
        return 1
    
    print(f"文件大小: {len(binary_data)} 字节")
    
    # 提取可能的代码段
    code_section = find_code_section(binary_data)
    print(f"代码段大小: {len(code_section)} 字节")
    
    # 反汇编为ASM格式
    success = disassemble_to_asm(code_section, output_file)
    
    if success:
        print(f"\n反汇编成功完成!")
        print(f"输出文件: {output_file}")
        return 0
    else:
        print("反汇编失败!")
        return 1

if __name__ == "__main__":
    try:
        # 检查是否安装了capstone
        import capstone
        print(f"Capstone版本: {capstone.__version__}")
    except ImportError:
        print("错误: 未安装capstone库")
        print("请运行: pip install capstone")
        sys.exit(1)
    
    sys.exit(main())