@echo off
chcp 65001 >nul

REM 切换到当前脚本所在目录
cd /d %~dp0

REM 检查是否安装了Python和SCons
scons --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo 错误: 未找到SCons。请先安装SCons。
    echo 安装命令: pip install scons
    pause
    exit /b 1
)

REM 检查是否存在SConstruct文件
if not exist SConstruct (
    echo 错误: 未找到SConstruct文件！
    pause
    exit /b 1
)

REM 检查模型文件是否存在
if not exist ..\models\add_model.pt (
    echo 警告: 未找到TorchScript模型文件！
    echo 请先运行: python generate_torchscript.py
    echo 如果没有安装PyTorch，请运行: setup_and_generate_torchscript.bat
)

REM 运行scons编译
cls
echo 正在编译TorchScript C++示例...
echo 当前目录: %CD%
echo 请稍候...
echo.

scons

REM 检查编译是否成功
if %ERRORLEVEL% neq 0 (
    echo.
echo 编译失败！请检查错误信息。
    pause
    exit /b 1
)

REM 编译成功
if exist ..\..\bin\load_torchscript.exe (
    echo.
echo ======== 编译成功 ========
echo 可执行文件已生成: ..\..\bin\load_torchscript.exe
echo =========================
    
    REM 询问用户是否运行程序
echo.
echo 是否立即运行程序？(Y/N): 
set /p run=
if /i "%run%"=="Y" (
    echo.
echo 正在运行程序...
    ..\..\bin\load_torchscript.exe
)
)

REM 播放完成提示音
python -c "import winsound; winsound.Beep(1000, 500)"

pause