@echo off
chcp 65001 >nul
call "D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"

echo Generating assembly from compiled object files...

if exist ..\obj\main.obj (
    echo Disassembling main.obj...
    dumpbin /disasm ..\obj\main.obj > main_obj_disasm.asm
    echo Generated main_obj_disasm.asm from main.obj
)

if exist ..\obj\funny.obj (
    echo Disassembling funny.obj...
    dumpbin /disasm ..\obj\funny.obj > funny_obj_disasm.asm
    echo Generated funny_obj_disasm.asm from funny.obj
)

if exist ..\obj\math.obj (
    echo Disassembling math.obj...
    dumpbin /disasm ..\obj\math.obj > math_obj_disasm.asm
    echo Generated math_obj_disasm.asm from math.obj
)

echo All object files have been disassembled.
echo Use these .asm files to study the generated assembly code.