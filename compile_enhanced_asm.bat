@echo off
chcp 65001 > nul
echo Compiling enhanced disassembly...

set VS_PATH=D:\Code\VS2022\Community
set VCVARS_PATH="%VS_PATH%\VC\Auxiliary\Build\vcvars64.bat"

if not exist %VCVARS_PATH% (
    echo Error: Visual Studio vcvars64.bat not found at %VCVARS_PATH%
    echo Please check your Visual Studio installation path
    exit /b 1
)

echo Setting up Visual Studio environment...
call %VCVARS_PATH%

if %errorlevel% neq 0 (
    echo Error: Failed to setup Visual Studio environment
    exit /b 1
)

echo Assembling hello_enhanced_disasm.asm...
ml64 /c hello_enhanced_disasm.asm

if %errorlevel% neq 0 (
    echo Error: Assembly failed
    exit /b 1
)

echo Linking...
link hello_enhanced_disasm.obj /SUBSYSTEM:CONSOLE /OUT:hello_enhanced.exe

if %errorlevel% neq 0 (
    echo Error: Linking failed
    exit /b 1
)

echo Success! Generated hello_enhanced.exe
echo Testing execution...
hello_enhanced.exe
echo Exit code: %errorlevel%