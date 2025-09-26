@echo off
chcp 65001 >nul
echo Setting up Visual Studio environment...

call "D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"
if errorlevel 1 (
    echo Failed to setup VS environment
    exit /b 1
)

echo Compiling main_source_compilable.asm...
ml64 /c main_source_compilable.asm
if errorlevel 1 (
    echo Assembly compilation failed
    exit /b 1
)

echo Linking main_source_compilable.obj...
link main_source_compilable.obj /subsystem:console
if errorlevel 1 (
    echo Linking failed
    exit /b 1
)

echo Successfully created main_source_compilable.exe
echo Compilation completed!