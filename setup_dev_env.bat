@echo off
echo 设置Visual Studio开发环境...
call "D:\Code\VS2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64

echo.
echo 环境变量已设置完成！
echo 现在可以使用以下命令：
echo   ml64.exe - 64位汇编器
echo   ml.exe   - 32位汇编器  
echo   link.exe - 链接器
echo.
echo 测试MASM是否可用：
where ml64.exe
where ml.exe
where link.exe

echo.
echo 现在可以编译汇编文件了！
echo 示例: ml64 /c hello.asm ^&^& link hello.obj kernel32.lib user32.lib /subsystem:console
echo.
