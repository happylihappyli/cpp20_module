@echo off
echo Compile with Full Path Script
echo ============================

if "%1"=="" (
    echo Usage: %0 ^<asm_file^> [output_name]
    echo Example: %0 hello.asm hello.exe
    exit /b 1
)

set ASM_FILE=%1
set OUTPUT_NAME=%2
if "%OUTPUT_NAME%"=="" set OUTPUT_NAME=%~n1.exe

echo Compiling: %ASM_FILE% -> %OUTPUT_NAME%

REM 使用完整路径的MASM和LINK
set MASM_PATH="D:\Code\VS2019\Community\VC\Tools\MSVC\14.29.30133\bin\Hostx64\x64\ml64.exe"
set LINK_PATH="D:\Code\VS2019\Community\VC\Tools\MSVC\14.29.30133\bin\Hostx64\x64\link.exe"

REM 设置库路径
set LIB_PATH="D:\Windows Kits\10\Lib\10.0.22621.0\um\x64"
set UCRT_PATH="D:\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64"

echo Using MASM: %MASM_PATH%
echo Using LINK: %LINK_PATH%

REM 汇编
%MASM_PATH% /c /Fo %~n1.obj %ASM_FILE%
if %ERRORLEVEL% neq 0 (
    echo Assembly failed!
    exit /b 1
)

REM 链接
%LINK_PATH% %~n1.obj /LIBPATH:%LIB_PATH% /LIBPATH:%UCRT_PATH% kernel32.lib user32.lib /subsystem:console /out:%OUTPUT_NAME%
if %ERRORLEVEL% neq 0 (
    echo Linking failed!
    exit /b 1
)

if exist %~n1.obj del %~n1.obj
echo Compilation complete: %OUTPUT_NAME%

REM 测试运行
echo.
echo Testing the compiled program:
%OUTPUT_NAME%