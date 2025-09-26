import re

def clean_radare2_output(input_file, output_file):
    """
    专门清理radare2输出的汇编文件
    """
    try:
        with open(input_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # 首先移除所有ANSI转义序列
        ansi_escape = re.compile(r'\x1B(?:[@-Z\\-_]|\[[0-?]*[ -/]*[@-~])')
        content = ansi_escape.sub('', content)
        
        # 移除所有颜色代码格式 [数字;数字;数字m
        content = re.sub(r'\[\d+(?:;\d+)*m', '', content)
        
        # 移除分散的数字和分号
        content = re.sub(r'\s+\d+\s*;\s*\d+\s*;\s*\d+\s*;\s*\d+\s+', ' ', content)
        content = re.sub(r'\s+\d+\s*;\s*\d+\s*;\s*\d+\s+', ' ', content)
        content = re.sub(r'\s+\d+\s*;\s*\d+\s+', ' ', content)
        
        # 按行处理
        lines = content.split('\n')
        cleaned_lines = []
        
        for line in lines:
            # 跳过空行
            if not line.strip():
                continue
                
            # 移除行首的图形字符和多余空格
            line = line.strip()
            
            # 如果行包含地址和指令，尝试格式化
            if '0x' in line and any(instr in line for instr in ['sub', 'call', 'add', 'jmp', 'int3', 'mov', 'test', 'je', 'jne', 'xor', 'ret', 'cmp', 'lock']):
                # 提取地址和指令部分
                parts = line.split()
                formatted_parts = []
                
                for part in parts:
                    # 保留地址
                    if part.startswith('0x'):
                        formatted_parts.append(part)
                    # 保留指令
                    elif part in ['sub', 'call', 'add', 'jmp', 'int3', 'mov', 'test', 'je', 'jne', 'xor', 'ret', 'cmp', 'lock', 'cmpxchg', 'qword']:
                        formatted_parts.append(part)
                    # 保留寄存器
                    elif part in ['rsp', 'rax', 'rcx', 'eax', 'ecx', 'al', 'gs:']:
                        formatted_parts.append(part)
                    # 保留操作数
                    elif part.startswith('0x') or part.isdigit() or part in [',', '[', ']', '+']:
                        formatted_parts.append(part)
                    # 保留十六进制字节
                    elif re.match(r'^[0-9a-f]{2}$', part):
                        formatted_parts.append(part)
                
                if formatted_parts:
                    cleaned_lines.append(' '.join(formatted_parts))
            else:
                # 对于其他行，简单清理
                cleaned = re.sub(r'[^\w\s0-9x:;,\[\]\+\-]', '', line)
                if cleaned.strip():
                    cleaned_lines.append(cleaned.strip())
        
        # 写入清理后的文件
        with open(output_file, 'w', encoding='utf-8') as f:
            for line in cleaned_lines:
                f.write(line + '\n')
        
        print(f"已清理文件: {input_file} -> {output_file}")
        print(f"清理后行数: {len(cleaned_lines)}")
        
    except Exception as e:
        print(f"处理文件时出错: {e}")

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 3:
        print("用法: python clean_asm.py <输入文件> <输出文件>")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    clean_radare2_output(input_file, output_file)