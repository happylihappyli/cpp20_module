@echo off
echo ========================================
echo Universal EXE to ASM Disassembler Demo
echo ========================================
echo.

echo Testing all disassembly tools...
echo.

echo [1/4] Universal Disassembler (Full featured)
echo Command: python universal_disasm_exe_to_asm.py bin\hello.exe hello_universal.asm
python universal_disasm_exe_to_asm.py bin\hello.exe hello_universal.asm
echo.

echo [2/4] Simple Disassembler (Fast and compact)
echo Command: python simple_exe_to_asm.py bin\hello.exe hello_simple.asm
python simple_exe_to_asm.py bin\hello.exe hello_simple.asm
echo.

echo [3/4] Capstone Disassembler (Original)
echo Command: python disasm_exe_to_asm.py bin\hello.exe hello_disasm.asm
python disasm_exe_to_asm.py bin\hello.exe hello_disasm.asm
echo.

echo [4/4] Testing with main.exe
echo Command: python simple_exe_to_asm.py bin\main.exe main_demo.asm
python simple_exe_to_asm.py bin\main.exe main_demo.asm
echo.

echo ========================================
echo File size comparison:
echo ========================================
dir /b *.asm | findstr "hello\|main_demo" > temp_files.txt
for /f %%f in (temp_files.txt) do (
    echo %%f: 
    dir "%%f" | findstr "%%f"
)
del temp_files.txt
echo.

echo ========================================
echo Demo completed!
echo ========================================
echo.
echo Generated files:
dir /b *.asm | findstr "hello\|main_demo"
echo.
echo All disassemblers can handle any EXE file!
pause