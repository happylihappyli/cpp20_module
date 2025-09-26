@echo off
echo ========================================
echo Compiling hello.asm to hello_compiled.exe
echo ========================================
echo.

echo Checking for MASM64...
ml64 /? >nul 2>nul
if errorlevel 1 goto :no_masm

echo Found MASM64, attempting compilation...
echo.

echo Step 1: Assembling with ml64...
ml64 /c /Fo hello_compiled.obj hello.asm
if errorlevel 1 goto :asm_failed

echo Step 2: Linking...
link /SUBSYSTEM:CONSOLE /ENTRY:start /OUT:hello_compiled.exe hello_compiled.obj kernel32.lib user32.lib
if errorlevel 1 goto :link_failed

echo.
echo ========================================
echo Compilation successful!
echo Output: hello_compiled.exe
echo ========================================
goto :cleanup

:no_masm
echo MASM64 not found!
echo Please install Visual Studio with C++ tools or Windows SDK
echo.
echo Manual compilation instructions:
echo 1. Install Visual Studio with C++ development tools
echo 2. Open "Developer Command Prompt for VS"
echo 3. Run: ml64 /c /Fo hello_compiled.obj hello.asm
echo 4. Run: link /SUBSYSTEM:CONSOLE /ENTRY:start /OUT:hello_compiled.exe hello_compiled.obj kernel32.lib user32.lib
echo.
goto :end

:asm_failed
echo Assembly failed!
echo The hello.asm file may need manual adjustments.
echo This is common with disassembled code.
goto :cleanup

:link_failed
echo Linking failed!
echo Check that all required libraries are available.
goto :cleanup

:cleanup
if exist hello_compiled.obj del hello_compiled.obj

:end
echo.
echo Done!
pause