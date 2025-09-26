#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Universal EXE/ASM Converter - Usage Examples

通用exe/asm转换器使用示例

本脚本展示了如何使用两个转换器程序的各种功能
"""

import os
import sys
from pathlib import Path

def example_1_basic_exe_to_asm():
    """示例1: 基本的exe转asm转换"""
    print("=" * 60)
    print("示例1: 基本的EXE转ASM转换")
    print("=" * 60)
    
    # 检查是否有测试文件
    test_files = list(Path('.').glob('*.exe'))
    if not test_files:
        print("没有找到测试用的exe文件")
        print("请将要转换的exe文件放在当前目录")
        return False
        
    test_exe = test_files[0]
    print(f"使用测试文件: {test_exe}")
    
    try:
        from universal_exe_to_asm_converter import UniversalExeToAsmConverter
        
        # 创建转换器实例
        converter = UniversalExeToAsmConverter(str(test_exe))
        
        # 执行转换
        print("开始转换...")
        if converter.convert():
            print(f"✓ 转换成功!")
            print(f"  输出文件: {converter.asm_path}")
            print(f"  编译脚本: {converter.asm_path.with_suffix('.bat')}")
            return True
        else:
            print("✗ 转换失败")
            return False
            
    except Exception as e:
        print(f"✗ 转换过程出错: {e}")
        return False
        
def example_2_basic_asm_to_exe():
    """示例2: 基本的asm转exe编译"""
    print("\n" + "=" * 60)
    print("示例2: 基本的ASM转EXE编译")
    print("=" * 60)
    
    # 查找asm文件
    asm_files = list(Path('.').glob('*.asm'))
    if not asm_files:
        print("没有找到asm文件")
        print("请先运行示例1生成asm文件")
        return False
        
    test_asm = asm_files[0]
    print(f"使用测试文件: {test_asm}")
    
    try:
        from universal_asm_to_exe_compiler import UniversalAsmToExeCompiler
        
        # 创建编译器实例
        compiler = UniversalAsmToExeCompiler(str(test_asm))
        
        # 执行编译
        print("开始编译...")
        if compiler.compile():
            print(f"✓ 编译成功!")
            print(f"  修复后的ASM: {compiler.fixed_asm_path}")
            print(f"  输出文件: {compiler.exe_path}")
            return True
        else:
            print("✗ 编译失败")
            return False
            
    except Exception as e:
        print(f"✗ 编译过程出错: {e}")
        return False
        
def example_3_programmatic_usage():
    """示例3: 编程方式使用转换器"""
    print("\n" + "=" * 60)
    print("示例3: 编程方式使用转换器")
    print("=" * 60)
    
    try:
        from universal_exe_to_asm_converter import UniversalExeToAsmConverter
        from universal_asm_to_exe_compiler import UniversalAsmToExeCompiler
        
        # 查找exe文件
        exe_files = list(Path('.').glob('*.exe'))
        if not exe_files:
            print("没有找到exe文件进行测试")
            return False
            
        test_exe = exe_files[0]
        print(f"处理文件: {test_exe}")
        
        # 步骤1: 创建转换器并分析文件
        print("\n步骤1: 分析PE文件")
        converter = UniversalExeToAsmConverter(str(test_exe), "example_output.asm")
        
        if not converter.analyze_pe_file():
            print("✗ PE文件分析失败")
            return False
            
        print(f"✓ 架构: {'x64' if converter.is_64bit else 'x86'}")
        print(f"✓ 入口点: 0x{converter.entry_point:08x}")
        print(f"✓ 导入函数: {len(converter.imports)}")
        print(f"✓ 字符串: {len(converter.strings)}")
        
        # 步骤2: 反汇编代码
        print("\n步骤2: 反汇编代码")
        if not converter.disassemble_code():
            print("✗ 反汇编失败")
            return False
            
        print(f"✓ 指令数量: {len(converter.instructions)}")
        print(f"✓ 函数数量: {len(converter.functions)}")
        
        # 步骤3: 生成汇编代码
        print("\n步骤3: 生成汇编代码")
        asm_content = converter.generate_asm_code()
        
        with open("example_output.asm", 'w', encoding='utf-8') as f:
            f.write(asm_content)
        print("✓ 汇编代码已生成")
        
        # 步骤4: 编译回exe
        print("\n步骤4: 编译回exe")
        compiler = UniversalAsmToExeCompiler("example_output.asm", "example_output.exe")
        
        # 分析汇编文件
        if not compiler.analyze_asm_file():
            print("✗ 汇编文件分析失败")
            return False
            
        print(f"✓ 检测到架构: {'x64' if compiler.is_64bit else 'x86'}")
        print(f"✓ 导入函数: {len(compiler.imports)}")
        print(f"✓ 函数定义: {len(compiler.functions)}")
        
        # 修复代码
        if not compiler.fix_asm_code():
            print("✗ 代码修复失败")
            return False
            
        print(f"✓ 代码修复完成: {len(compiler.original_lines)} -> {len(compiler.fixed_lines)} 行")
        
        # 写入修复后的文件
        compiler.write_fixed_asm()
        print(f"✓ 修复后的文件: {compiler.fixed_asm_path}")
        
        print("\n✓ 编程方式使用演示完成")
        return True
        
    except Exception as e:
        print(f"✗ 编程方式使用出错: {e}")
        return False
        
def example_4_batch_processing():
    """示例4: 批量处理多个文件"""
    print("\n" + "=" * 60)
    print("示例4: 批量处理多个文件")
    print("=" * 60)
    
    try:
        from universal_exe_to_asm_converter import UniversalExeToAsmConverter
        
        # 查找所有exe文件
        exe_files = list(Path('.').glob('*.exe'))
        if len(exe_files) < 2:
            print("需要至少2个exe文件来演示批量处理")
            print("当前只找到:", [f.name for f in exe_files])
            return False
            
        print(f"找到 {len(exe_files)} 个exe文件")
        
        results = []
        for exe_file in exe_files[:3]:  # 限制处理前3个文件
            print(f"\n处理: {exe_file.name}")
            
            try:
                converter = UniversalExeToAsmConverter(str(exe_file))
                
                # 快速分析
                if converter.analyze_pe_file():
                    print(f"  ✓ 架构: {'x64' if converter.is_64bit else 'x86'}")
                    print(f"  ✓ 大小: {exe_file.stat().st_size} 字节")
                    
                    # 执行转换
                    if converter.convert():
                        print(f"  ✓ 转换成功 -> {converter.asm_path.name}")
                        results.append((exe_file.name, "成功", converter.asm_path.name))
                    else:
                        print(f"  ✗ 转换失败")
                        results.append((exe_file.name, "失败", "-"))
                else:
                    print(f"  ✗ 分析失败")
                    results.append((exe_file.name, "分析失败", "-"))
                    
            except Exception as e:
                print(f"  ✗ 处理出错: {e}")
                results.append((exe_file.name, "出错", "-"))
                
        # 显示结果摘要
        print("\n" + "=" * 40)
        print("批量处理结果摘要")
        print("=" * 40)
        print(f"{'文件名':<20} {'状态':<10} {'输出':<20}")
        print("-" * 50)
        for exe_name, status, output in results:
            print(f"{exe_name:<20} {status:<10} {output:<20}")
            
        success_count = sum(1 for _, status, _ in results if status == "成功")
        print(f"\n成功: {success_count}/{len(results)}")
        
        return True
        
    except Exception as e:
        print(f"✗ 批量处理出错: {e}")
        return False
        
def example_5_custom_analysis():
    """示例5: 自定义分析和信息提取"""
    print("\n" + "=" * 60)
    print("示例5: 自定义分析和信息提取")
    print("=" * 60)
    
    try:
        from universal_exe_to_asm_converter import UniversalExeToAsmConverter
        
        # 查找exe文件
        exe_files = list(Path('.').glob('*.exe'))
        if not exe_files:
            print("没有找到exe文件进行分析")
            return False
            
        test_exe = exe_files[0]
        print(f"分析文件: {test_exe}")
        
        converter = UniversalExeToAsmConverter(str(test_exe))
        
        # 执行分析
        if not converter.analyze_pe_file():
            print("✗ 文件分析失败")
            return False
            
        # 显示详细信息
        print("\n📊 文件基本信息")
        print(f"  文件大小: {test_exe.stat().st_size:,} 字节")
        print(f"  架构: {'x64' if converter.is_64bit else 'x86'}")
        print(f"  映像基址: 0x{converter.image_base:08x}")
        print(f"  入口点: 0x{converter.entry_point:08x}")
        
        print("\n📚 导入函数分析")
        if converter.imports:
            dll_groups = {}
            for imp_info in converter.imports.values():
                dll = imp_info['dll']
                if dll not in dll_groups:
                    dll_groups[dll] = []
                dll_groups[dll].append(imp_info['name'])
                
            for dll, functions in sorted(dll_groups.items()):
                print(f"  {dll}: {len(functions)} 个函数")
                for func in sorted(functions)[:5]:  # 显示前5个
                    print(f"    - {func}")
                if len(functions) > 5:
                    print(f"    ... 还有 {len(functions) - 5} 个")
        else:
            print("  无导入函数")
            
        print("\n📝 字符串常量分析")
        if converter.strings:
            ascii_strings = [s for s in converter.strings.values() if s['type'] == 'ascii']
            unicode_strings = [s for s in converter.strings.values() if s['type'] == 'unicode']
            
            print(f"  ASCII字符串: {len(ascii_strings)} 个")
            print(f"  Unicode字符串: {len(unicode_strings)} 个")
            
            # 显示一些有趣的字符串
            interesting_strings = []
            for addr, string_info in converter.strings.items():
                value = string_info['value']
                if len(value) > 3 and any(keyword in value.lower() for keyword in 
                    ['error', 'warning', 'success', 'failed', 'http', 'www', '.exe', '.dll']):
                    interesting_strings.append(value)
                    
            if interesting_strings:
                print("  有趣的字符串:")
                for s in interesting_strings[:10]:  # 显示前10个
                    print(f"    - {repr(s)}")
        else:
            print("  无字符串常量")
            
        print("\n🗂️ 数据段分析")
        if converter.data_sections:
            for section in converter.data_sections:
                print(f"  {section['name']}: {section['size']:,} 字节 @ 0x{section['virtual_address']:08x}")
        else:
            print("  无数据段")
            
        # 执行反汇编
        if converter.disassemble_code():
            print("\n🔧 代码分析")
            print(f"  总指令数: {len(converter.instructions):,}")
            print(f"  识别函数: {len(converter.functions)}")
            
            # 分析指令类型
            instruction_types = {}
            for insn in converter.instructions:
                mnemonic = insn['mnemonic']
                instruction_types[mnemonic] = instruction_types.get(mnemonic, 0) + 1
                
            print("  常用指令:")
            for mnemonic, count in sorted(instruction_types.items(), key=lambda x: x[1], reverse=True)[:10]:
                print(f"    {mnemonic}: {count} 次")
                
            print("  函数列表:")
            for func in converter.functions[:10]:  # 显示前10个函数
                size = "未知"
                if func['end']:
                    size = f"{func['end'] - func['start']} 字节"
                print(f"    {func['name']} @ 0x{func['start']:08x} ({size})")
                
        print("\n✓ 自定义分析完成")
        return True
        
    except Exception as e:
        print(f"✗ 自定义分析出错: {e}")
        return False
        
def main():
    """主函数 - 运行所有示例"""
    print("Universal EXE/ASM Converter - 使用示例")
    print("=" * 60)
    
    examples = [
        ("基本EXE转ASM转换", example_1_basic_exe_to_asm),
        ("基本ASM转EXE编译", example_2_basic_asm_to_exe),
        ("编程方式使用", example_3_programmatic_usage),
        ("批量处理", example_4_batch_processing),
        ("自定义分析", example_5_custom_analysis)
    ]
    
    if len(sys.argv) > 1:
        # 运行特定示例
        try:
            example_num = int(sys.argv[1])
            if 1 <= example_num <= len(examples):
                name, func = examples[example_num - 1]
                print(f"运行示例 {example_num}: {name}")
                success = func()
                return 0 if success else 1
            else:
                print(f"示例编号必须在 1-{len(examples)} 之间")
                return 1
        except ValueError:
            print("请提供有效的示例编号")
            return 1
    else:
        # 运行所有示例
        print("运行所有示例...")
        print("\n提示: 使用 'python example_usage.py <数字>' 运行特定示例")
        
        results = []
        for i, (name, func) in enumerate(examples, 1):
            print(f"\n{'='*20} 示例 {i}: {name} {'='*20}")
            try:
                success = func()
                results.append((i, name, "成功" if success else "失败"))
            except KeyboardInterrupt:
                print("\n用户中断")
                break
            except Exception as e:
                print(f"示例 {i} 出现异常: {e}")
                results.append((i, name, "异常"))
                
        # 显示总结
        print("\n" + "=" * 60)
        print("示例运行总结")
        print("=" * 60)
        for num, name, status in results:
            status_icon = "✓" if status == "成功" else "✗"
            print(f"{status_icon} 示例 {num}: {name} - {status}")
            
        success_count = sum(1 for _, _, status in results if status == "成功")
        print(f"\n成功: {success_count}/{len(results)}")
        
        return 0 if success_count == len(results) else 1
        
if __name__ == "__main__":
    sys.exit(main())