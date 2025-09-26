@echo off
chcp 65001 >nul
echo Setting up Visual Studio environment...

call "D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"
if errorlevel 1 (
    echo Failed to setup VS environment
    exit /b 1
)

echo Compiling hello_chinese.asm...
ml64 /c hello_chinese.asm
if errorlevel 1 (
    echo Assembly compilation failed
    exit /b 1
)

echo Linking hello_chinese.obj...
link hello_chinese.obj kernel32.lib /subsystem:console /entry:main
if errorlevel 1 (
    echo Linking failed
    exit /b 1
)

echo Successfully created hello_chinese.exe
echo Running the program:
hello_chinese.exe
echo Compilation and execution completed!