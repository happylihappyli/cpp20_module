@echo off
chcp 65001 > nul
echo Compiling test_simple.cpp...

echo Setting up Visual Studio environment...
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64

echo Compiling...
cl /Fe:test_simple.exe test_simple.cpp

if %errorlevel% neq 0 (
    echo Compilation failed!
    pause
    exit /b 1
)

echo Success! Generated test_simple.exe
echo Testing execution...
test_simple.exe
echo Program finished.
pause