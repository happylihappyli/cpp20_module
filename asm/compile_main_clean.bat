@echo off
chcp 65001 > nul
echo Converting and compiling main.asm to clean assembly...

:: Set VS2022 paths
set "VCVARS_PATH=D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"
set "ML64_PATH=D:\Code\VS2022\Community\VC\Tools\MSVC\14.39.33519\bin\HostX64\x64\ml64.exe"
set "LINK_PATH=D:\Code\VS2022\Community\VC\Tools\MSVC\14.39.33519\bin\HostX64\x64\link.exe"

:: Check if vcvars64.bat exists
if not exist "%VCVARS_PATH%" (
    echo Error: vcvars64.bat not found at %VCVARS_PATH%
    pause
    exit /b 1
)

:: Setup VS environment
call "%VCVARS_PATH%"

echo.
echo Compiling main_simplified.asm...
"%ML64_PATH%" /c main_simplified.asm
if errorlevel 1 (
    echo Compilation failed!
    pause
    exit /b 1
)

echo Linking main_simplified.obj...
"%LINK_PATH%" /subsystem:console /entry:main main_simplified.obj kernel32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo.
echo Running main_simplified.exe...
main_simplified.exe

echo.
echo Also compiling main_clean.asm...
"%ML64_PATH%" /c main_clean.asm
if errorlevel 1 (
    echo main_clean.asm compilation failed (expected - contains placeholder functions)
) else (
    echo main_clean.asm compiled successfully
)

echo.
echo Conversion completed!
echo - main_simplified.asm: Functional version
echo - main_clean.asm: Structural conversion with placeholders
pause