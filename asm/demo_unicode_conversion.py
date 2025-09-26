#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
演示Unicode转换工具的使用
"""

def char_to_hex(text):
    """将文本转换为16进制Unicode编码"""
    result = []
    for char in text:
        code = ord(char)
        if code < 128:  # ASCII字符
            result.append(f"'{char}'")
        else:  # Unicode字符
            result.append(f"{code:04X}H")
    return result

def generate_asm_string(text, var_name="msg"):
    """生成MASM64汇编字符串定义"""
    hex_codes = char_to_hex(text)
    asm_line = f"{var_name} dw " + ",".join(hex_codes)
    length_line = f"{var_name}_len equ ($ - {var_name}) / 2"
    return asm_line, length_line

# 演示转换
print("=== Unicode转换演示 ===")
print()

# 示例1: 简单中文
text1 = "你好世界"
print(f"文本: {text1}")
asm_line1, length_line1 = generate_asm_string(text1, "hello_msg")
print(f"汇编代码:")
print(f"  {asm_line1}")
print(f"  {length_line1}")
print()

# 示例2: 混合文本
text2 = "Hello 世界!"
print(f"文本: {text2}")
asm_line2, length_line2 = generate_asm_string(text2, "mixed_msg")
print(f"汇编代码:")
print(f"  {asm_line2}")
print(f"  {length_line2}")
print()

# 常用字符对照表
print("=== 常用中文字符编码对照 ===")
common_chars = {
    '世': '4E16H',
    '界': '754CH', 
    '你': '4F60H',
    '好': '597DH',
    '中': '4E2DH',
    '国': '56FDH',
    '程': '7A0BH',
    '序': '5E8FH'
}

for char, code in common_chars.items():
    decimal = int(code[:-1], 16)
    print(f"'{char}' -> {code} (十进制: {decimal})")

print()
print("=== 记忆技巧 ===")
print("1. 使用在线工具: https://unicode-table.com/")
print("2. Windows字符映射表: 运行 charmap.exe")
print("3. Python查询: ord('字') 获取十进制码")
print("4. 常用字符可以记住，如 '世'=4E16H, '界'=754CH")
print("5. 使用UTF-8字符串 + MultiByteToWideChar API转换")

print()
print("=== 推荐方法 ===")
print("方法1: 直接使用16进制 (适合少量固定文本)")
print("方法2: UTF-8字符串 + API转换 (适合动态文本)")
print("方法3: 使用Python脚本生成汇编代码 (推荐)")