@echo off
chcp 65001 > nul
echo Compiling hello.asm...
echo This is reconstructed from hello.exe

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

echo Assembling hello.asm...
ml64 /c hello.asm

if %errorlevel% neq 0 (
    echo Assembly failed!
    pause
    exit /b 1
)

echo Linking...
link hello.obj /SUBSYSTEM:CONSOLE /ENTRY:main /OUT:hello.exe

if %errorlevel% neq 0 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Success! Generated hello.exe
echo This executable is reconstructed from hello.exe
echo Testing execution...
hello.exe
echo Program finished.
pause
