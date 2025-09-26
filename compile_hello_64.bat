@echo off
echo Compiling hello_fixed_64.asm (64-bit)...
echo.

ml64 /c /Fo hello_fixed_64.obj hello_fixed_64.asm
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

link /SUBSYSTEM:CONSOLE /ENTRY:start /OUT:hello_fixed_64.exe hello_fixed_64.obj kernel32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo.
echo Compilation successful!
echo Output: hello_fixed_64.exe
echo.
echo Testing the program:
hello_fixed_64.exe
echo.
pause
