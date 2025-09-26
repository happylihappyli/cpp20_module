@echo off
chcp 65001 > nul
echo Setting up Visual Studio environment...

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

echo Compiling unicode_demo.asm...
"%ML64_PATH%" /c unicode_demo.asm
if errorlevel 1 (
    echo Compilation failed!
    pause
    exit /b 1
)

echo Linking unicode_demo.obj...
"%LINK_PATH%" /subsystem:console /entry:main unicode_demo.obj kernel32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Running unicode_demo.exe...
unicode_demo.exe

echo.
echo Compilation and execution completed!
pause