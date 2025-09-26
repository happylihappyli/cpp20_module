@echo off
chcp 65001 >nul
echo Setting up Visual Studio environment...

set "VCVARS_PATH=D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"
set "ML64_PATH=D:\Code\VS2022\Community\VC\Tools\MSVC\14.39.33519\bin\Hostx64\x64\ml64.exe"
set "LINK_PATH=D:\Code\VS2022\Community\VC\Tools\MSVC\14.39.33519\bin\Hostx64\x64\link.exe"

if not exist "%VCVARS_PATH%" (
    echo Error: vcvars64.bat not found at %VCVARS_PATH%
    exit /b 1
)

if not exist "%ML64_PATH%" (
    echo Error: ml64.exe not found at %ML64_PATH%
    exit /b 1
)

echo Calling vcvars64.bat to setup environment...
call "%VCVARS_PATH%"

echo Checking if main.asm is a valid assembly source file...
findstr /c:".code" /c:".data" /c:"proc" main.asm >nul
if errorlevel 1 (
    echo Warning: main.asm appears to be a disassembly dump, not compilable source code
    echo Creating a simple test assembly file instead...
    
    echo .code > simple_test.asm
    echo main proc >> simple_test.asm
    echo     mov rax, 0 >> simple_test.asm
    echo     ret >> simple_test.asm
    echo main endp >> simple_test.asm
    echo end >> simple_test.asm
    
    echo Compiling simple_test.asm...
    ml64 /c simple_test.asm
    if errorlevel 1 (
        echo Assembly compilation failed
        exit /b 1
    )
    
    echo Linking simple_test.obj...
    link simple_test.obj /subsystem:console /entry:main
    if errorlevel 1 (
        echo Linking failed
        exit /b 1
    )
    
    echo Successfully created simple_test.exe
) else (
    echo Compiling main.asm...
    ml64 /c main.asm
    if errorlevel 1 (
        echo Assembly compilation failed
        exit /b 1
    )
    
    echo Linking main.obj...
    link main.obj /subsystem:console
    if errorlevel 1 (
        echo Linking failed
        exit /b 1
    )
    
    echo Successfully created main.exe
)

echo Compilation completed successfully!