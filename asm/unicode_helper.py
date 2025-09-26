#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Unicode Helper Tool for MASM64 Assembly
帮助生成汇编代码中的Unicode字符编码
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

def lookup_unicode(char):
    """查找单个字符的Unicode编码"""
    code = ord(char)
    return {
        'char': char,
        'decimal': code,
        'hex': f"U+{code:04X}",
        'asm_hex': f"{code:04X}H",
        'description': f"Unicode字符 '{char}' 的编码"
    }

def main():
    print("=== Unicode Helper for MASM64 ===")
    print("1. 字符串转换")
    print("2. 单字符查询")
    print("3. 常用中文字符")
    
    choice = input("\n请选择功能 (1-3): ").strip()
    
    if choice == '1':
        text = input("请输入要转换的文本: ")
        var_name = input("变量名 (默认msg): ").strip() or "msg"
        
        asm_line, length_line = generate_asm_string(text, var_name)
        print(f"\n汇编代码:")
        print(asm_line)
        print(length_line)
        
        print(f"\n字符详细信息:")
        for i, char in enumerate(text):
            info = lookup_unicode(char)
            print(f"  {i+1}. {info['description']} -> {info['asm_hex']}")
    
    elif choice == '2':
        char = input("请输入单个字符: ")
        if len(char) == 1:
            info = lookup_unicode(char)
            print(f"\n字符信息:")
            for key, value in info.items():
                print(f"  {key}: {value}")
        else:
            print("请只输入一个字符")
    
    elif choice == '3':
        common_chars = {
            '世': '4E16H',
            '界': '754CH', 
            '你': '4F60H',
            '好': '597DH',
            '中': '4E2DH',
            '国': '56FDH',
            '程': '7A0BH',
            '序': '5E8FH',
            '语': '8A9EH',
            '言': '8A00H'
        }
        
        print("\n常用中文字符编码:")
        for char, code in common_chars.items():
            print(f"  '{char}' -> {code}")
        
        print("\n在线Unicode查询: https://unicode-table.com/")
        print("Windows字符映射表: charmap.exe")
    
    else:
        print("无效选择")

if __name__ == "__main__":
    main()