#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
修复汇编文件中的int3指令问题

int3是调试断点指令，在MASM中需要特殊处理
"""

import re
import sys
from pathlib import Path

def fix_int3_instructions(input_file, output_file=None):
    """修复汇编文件中的int3指令"""
    
    if output_file is None:
        output_file = input_file.replace('.asm', '_fixed_int3.asm')
    
    print(f"修复文件: {input_file} -> {output_file}")
    
    try:
        with open(input_file, 'r', encoding='utf-8') as f:
            lines = f.readlines()
    except UnicodeDecodeError:
        with open(input_file, 'r', encoding='latin-1') as f:
            lines = f.readlines()
    
    fixed_lines = []
    int3_count = 0
    
    for i, line in enumerate(lines, 1):
        original_line = line
        
        # 检查是否包含int3指令
        if re.search(r'\bint3\b', line, re.IGNORECASE):
            int3_count += 1
            
            # 方案1: 注释掉int3指令
            if ';' not in line or line.strip().startswith('int3'):
                # 如果整行都是int3，注释掉
                fixed_line = f"    ; {line.strip()}  ; Fixed: int3 instruction commented out\n"
            else:
                # 如果行中有其他内容，只注释int3部分
                fixed_line = re.sub(r'\bint3\b', '; int3', line, flags=re.IGNORECASE)
                
            fixed_lines.append(fixed_line)
            
            if int3_count <= 10:  # 只显示前10个修复
                print(f"  行 {i}: {original_line.strip()} -> {fixed_line.strip()}")
        else:
            fixed_lines.append(line)
    
    # 写入修复后的文件
    with open(output_file, 'w', encoding='utf-8') as f:
        f.writelines(fixed_lines)
    
    print(f"\n修复完成:")
    print(f"  总行数: {len(lines)}")
    print(f"  修复的int3指令: {int3_count}")
    print(f"  输出文件: {output_file}")
    
    return output_file

def create_simple_hello_asm():
    """创建一个简单的Hello World汇编程序"""
    
    simple_asm = '''
; Simple Hello World for MASM64
.code

extern GetStdHandle: proc
extern WriteConsoleA: proc  
extern ExitProcess: proc

main proc
    ; 获取标准输出句柄
    mov rcx, -11        ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov r8, rax         ; 保存句柄
    
    ; 写入Hello World
    mov rcx, r8         ; 句柄
    lea rdx, hello_msg  ; 消息地址
    mov r8, 13          ; 消息长度
    mov r9, 0           ; lpNumberOfCharsWritten
    push 0              ; lpReserved
    call WriteConsoleA
    add rsp, 8          ; 清理栈
    
    ; 退出程序
    mov rcx, 0
    call ExitProcess
main endp

.data
hello_msg db 'Hello World!', 13, 10

end
'''
    
    with open('hello_simple_fixed.asm', 'w', encoding='utf-8') as f:
        f.write(simple_asm.strip())
    
    print("创建简单版本: hello_simple_fixed.asm")
    return 'hello_simple_fixed.asm'

def main():
    if len(sys.argv) < 2:
        print("用法: python fix_int3_instructions.py <input.asm> [output.asm]")
        print("或者: python fix_int3_instructions.py --create-simple")
        return
    
    if sys.argv[1] == '--create-simple':
        create_simple_hello_asm()
        return
    
    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not Path(input_file).exists():
        print(f"错误: 文件不存在 {input_file}")
        return
    
    # 修复int3指令
    fixed_file = fix_int3_instructions(input_file, output_file)
    
    print(f"\n建议:")
    print(f"1. 使用修复后的文件: {fixed_file}")
    print(f"2. 或者使用简单版本: python {__file__} --create-simple")
    print(f"3. 编译命令: compile_asm_universal.bat {fixed_file}")

if __name__ == "__main__":
    main()