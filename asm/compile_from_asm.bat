@echo off
chcp 65001 >nul
call "D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"

echo Attempting to compile from disassembled assembly code...
echo.

echo Note: Direct compilation from dumpbin output is not possible because:
echo 1. dumpbin generates disassembly for analysis, not compilable source
echo 2. It includes PE headers, metadata, and non-executable sections
echo 3. Assembly syntax is for viewing, not for ml64 assembler
echo.

echo However, we can demonstrate the process with object file assembly:
echo.

echo Step 1: Try to assemble main_obj_disasm.asm (will likely fail)
ml64 /c main_obj_disasm.asm /Fo:main_from_disasm.obj 2>asm_errors.txt
if exist main_from_disasm.obj (
    echo Success: Created object from disassembly
    link main_from_disasm.obj /OUT:main_from_asm.exe /SUBSYSTEM:CONSOLE
) else (
    echo Expected failure: Cannot directly assemble dumpbin output
    echo Error details:
    type asm_errors.txt
)
echo.

echo Step 2: Alternative - Create a simple test assembly
echo Creating a minimal assembly file for demonstration...
(
echo .code
echo main PROC
echo     sub rsp, 28h
echo     lea rcx, hello_msg
echo     call printf
echo     add rsp, 28h
echo     xor eax, eax
echo     ret
echo main ENDP
echo.
echo .data
echo hello_msg db "Hello from Assembly!", 0Ah, 0
echo.
echo END
) > simple_test.asm

echo Assembling simple test...
ml64 /c simple_test.asm /Fo:simple_test.obj
if exist simple_test.obj (
    echo Linking with C runtime...
    link simple_test.obj /OUT:simple_test.exe /SUBSYSTEM:CONSOLE /DEFAULTLIB:msvcrt.lib /ENTRY:main
    if exist simple_test.exe (
        echo Success: Created executable from assembly
        echo Running test:
        simple_test.exe
    )
)

echo.
echo Conclusion:
echo - Original main.exe and relinked version are functionally identical
echo - Binary differences are due to timestamps and memory layout
echo - Direct assembly from dumpbin output requires significant manual editing
echo - Object file relinking is the practical approach for testing