@echo off
chcp 65001 > nul
echo Compiling main.asm...
echo This is reconstructed from main.exe

echo Setting up Visual Studio environment...
REM Visual Studio not found, trying alternative setup
for /f "delims=" %%i in ('"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe" -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath') do set "VS_PATH=%%i"
if defined VS_PATH (
    call "%VS_PATH%\VC\Auxiliary\Build\vcvarsall.bat" x64
) else (
    echo Visual Studio not found! Please install Visual Studio Build Tools.
    pause
    exit /b 1
)

echo Assembling main.asm...
ml64 /c main.asm

if %errorlevel% neq 0 (
    echo Assembly failed!
    pause
    exit /b 1
)

echo Linking...
link main.obj /SUBSYSTEM:CONSOLE /ENTRY:main /OUT:main.exe

if %errorlevel% neq 0 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Success! Generated main.exe
echo This executable is reconstructed from main.exe
echo Testing execution...
main.exe
echo Program finished.
pause
