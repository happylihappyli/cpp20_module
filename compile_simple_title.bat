@echo off
chcp 936 >nul

rem 设置Visual Studio环境变量
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

rem 确保bin目录存在
if not exist bin mkdir bin

rem 编译简单的中文标题测试程序
cl /std:c++20 /EHsc /utf-8 src\simple_title_test2.cpp /link user32.lib gdi32.lib /out:bin\simple_title_test2.exe

rem 检查编译是否成功
if %errorlevel% equ 0 (
    echo 编译成功，正在运行程序...
    start bin\simple_title_test2.exe
) else (
    echo 编译失败，请检查错误信息
    pause
)