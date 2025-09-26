@echo off
echo Compiling main_advanced.asm...

rem Find Visual Studio
set "VS_PATH="
if exist "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat" (
    set "VS_PATH=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"
) else if exist "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat" (
    set "VS_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"
) else (
    echo Visual Studio not found!
    pause
    exit /b 1
)

echo Initializing Visual Studio environment...
call "%VS_PATH%"

echo Assembling and linking...
ml /c /Zi /Fl main_advanced.asm
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

link /SUBSYSTEM:CONSOLE main_advanced.obj
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Build successful!
echo Testing the program...
main_advanced.exe
echo.
echo Program finished.
pause
