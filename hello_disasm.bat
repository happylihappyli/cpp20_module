@echo off
echo Compiling hello_disasm.asm using MASM...

rem Try to find MASM
set "MASM_PATH="
if exist "C:\masm32\bin\ml.exe" (
    set "MASM_PATH=C:\masm32\bin"
) else if exist "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\*\bin\Hostx64\x86\ml.exe" (
    for /d %%i in ("C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\*") do (
        if exist "%%i\bin\Hostx64\x86\ml.exe" (
            set "MASM_PATH=%%i\bin\Hostx64\x86"
            goto :found_masm
        )
    )
) else (
    echo MASM not found! Please install MASM32 or Visual Studio.
    pause
    exit /b 1
)

:found_masm
echo Found MASM at: %MASM_PATH%

echo Assembling...
"%MASM_PATH%\ml.exe" /c /Zi /Fl hello_disasm.asm
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

echo Linking...
"%MASM_PATH%\link.exe" /SUBSYSTEM:CONSOLE hello_disasm.obj kernel32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Build successful!
echo Testing the program...
hello_disasm.exe
echo.
echo Program finished.
pause
