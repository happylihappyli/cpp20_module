@echo off
chcp 65001 > nul
echo Compiling app.asm...
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

echo Assembling app.asm...
ml64 /c app.asm

if %errorlevel% neq 0 (
    echo Assembly failed!
    pause
    exit /b 1
)

echo Linking...
link app.obj /SUBSYSTEM:CONSOLE /ENTRY:main /OUT:app.exe

if %errorlevel% neq 0 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Success! Generated app.exe
echo This executable is reconstructed from hello.exe
echo Testing execution...
app.exe
echo Program finished.
pause
