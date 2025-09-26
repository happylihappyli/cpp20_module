import re

def simple_clean_asm(input_file, output_file):
    """
    简单粗暴地清理汇编文件，移除所有ANSI代码和格式字符
    """
    try:
        with open(input_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # 移除所有ANSI转义序列
        content = re.sub(r'\x1B\[[0-9;]*[mK]', '', content)
        
        # 移除所有形式的颜色代码
        content = re.sub(r'\[[0-9;]*m', '', content)
        
        # 移除所有方括号内的数字序列
        content = re.sub(r'\[[0-9;]+m', '', content)
        
        # 移除单独的[0m
        content = re.sub(r'\[0m', '', content)
        
        # 移除其他ANSI序列
        content = re.sub(r'\[[0-9]+;[0-9]+;[0-9]+m', '', content)
        content = re.sub(r'\[[0-9]+;[0-9]+m', '', content)
        content = re.sub(r'\[[0-9]+m', '', content)
        
        # 移除分散的数字和分号
        content = re.sub(r'\s+[0-9]+\s*;\s*[0-9]+\s*;\s*[0-9]+\s*;\s*[0-9]+\s+', ' ', content)
        content = re.sub(r'\s+[0-9]+\s*;\s*[0-9]+\s*;\s*[0-9]+\s+', ' ', content)
        content = re.sub(r'\s+[0-9]+\s*;\s*[0-9]+\s+', ' ', content)
        
        # 清理多余的空格
        content = re.sub(r'\s+', ' ', content)
        
        # 按行处理
        lines = content.split('\n')
        cleaned_lines = []
        
        for line in lines:
            line = line.strip()
            if line:
                # 进一步清理每行
                line = re.sub(r'\s+', ' ', line)
                cleaned_lines.append(line)
        
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
        print("用法: python simple_clean.py <输入文件> <输出文件>")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    simple_clean_asm(input_file, output_file)