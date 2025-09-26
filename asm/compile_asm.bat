@echo off
chcp 65001 >nul
call "D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"

echo Disassembling main.exe to assembly code...
dumpbin /disasm ..\bin\main.exe > main_disasm.asm

echo Generating source-level assembly from main.cpp...
cl /c /FA /Fa:main_source.asm ..\src\main.cpp /std:c++20 /experimental:module /EHsc /reference ..\obj\funny.ifc /reference ..\obj\math.ifc

echo Assembly files generated:
echo - main_disasm.asm: Binary disassembly output
echo - main_source.asm: Source-level assembly from C++ code
echo Note: Use main_source.asm for reassembly with ml64