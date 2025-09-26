
# IDA Pro Python 脚本
import idaapi
import idc
import idautils

def export_to_asm():
    """导出为更完整的汇编代码"""
    with open("hello_ida_export.asm", "w") as f:
        f.write("; 由IDA Pro导出
")
        f.write(".386
.model flat, stdcall

")
        
        # 导出数据段
        f.write(".data
")
        for seg_ea in idautils.Segments():
            seg = idaapi.getseg(seg_ea)
            if seg and seg.type == idaapi.SEG_DATA:
                f.write(f"; 数据段: {idc.get_segm_name(seg_ea)}
")
        
        # 导出代码段
        f.write("
.code
")
        for func_ea in idautils.Functions():
            func_name = idc.get_func_name(func_ea)
            f.write(f"
{func_name} PROC
")
            
            # 获取函数指令
            func_end = idc.find_func_end(func_ea)
            ea = func_ea
            while ea < func_end:
                disasm = idc.generate_disasm_line(ea, 0)
                if disasm:
                    f.write(f"    {disasm}
")
                ea = idc.next_head(ea)
            
            f.write(f"{func_name} ENDP
")
        
        f.write("
end
")
    
    print("导出完成: hello_ida_export.asm")

# 运行导出
export_to_asm()
