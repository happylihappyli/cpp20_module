
@echo off
echo Universal EXE/ASM Converter Demo
echo ================================
echo.

echo Step 1: Testing ASM to EXE compilation...
python universal_asm_to_exe_compiler.py demo_program.asm
echo.

if exist demo_program.exe (
    echo Step 2: Testing EXE to ASM conversion...
    python universal_exe_to_asm_converter.py demo_program.exe demo_reverse.asm
    echo.
    
    echo Step 3: Testing reverse compilation...
    python universal_asm_to_exe_compiler.py demo_reverse.asm demo_reverse.exe
    echo.
    
    echo Demo completed!
    echo Files created:
    dir /b *.asm *.exe 2>nul
) else (
    echo Demo requires MASM compiler to be available
    echo Please run from Developer Command Prompt
)

echo.
pause
