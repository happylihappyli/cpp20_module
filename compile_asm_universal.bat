@echo off
echo Universal ASM Compiler Script (Direct Path)
echo ==========================================

if "%1"=="" (
    echo Usage: %0 ^<asm_file^> [output_name]
    echo Example: %0 hello.asm hello.exe
    exit /b 1
)

set ASM_FILE=%1
set OUTPUT_NAME=%2
if "%OUTPUT_NAME%"=="" set OUTPUT_NAME=%~n1.exe

echo Compiling: %ASM_FILE% -> %OUTPUT_NAME%
echo Using: ml64.exe

"D:\Code\VS2019\Community\VC\Tools\MSVC\14.29.30133\bin\Hostx64\x64\ml64.exe" /c /Fo %~n1.obj %ASM_FILE%
if %ERRORLEVEL% neq 0 (
    echo Assembly failed!
    exit /b 1
)

"D:\Code\VS2019\Community\VC\Tools\MSVC\14.29.30133\bin\Hostx64\x64\link.exe" %~n1.obj kernel32.lib user32.lib /subsystem:console /out:%OUTPUT_NAME%
if %ERRORLEVEL% neq 0 (
    echo Linking failed!
    exit /b 1
)

if exist %~n1.obj del %~n1.obj
echo Compilation complete: %OUTPUT_NAME%
