@echo off
chcp 65001 >nul
call "D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"

echo Reassembling from source-level assembly...
if exist main_source.asm (
    echo Compiling main_source.asm to object file...
    ml64 /c main_source.asm
    
    echo Linking with required modules...
    link main_source.obj ..\obj\funny.obj ..\obj\math.obj /OUT:main_reassembled.exe /SUBSYSTEM:CONSOLE
    
    if exist main_reassembled.exe (
        echo Success! Generated main_reassembled.exe
        echo Testing the reassembled executable:
        main_reassembled.exe
    ) else (
        echo Failed to create executable
    )
) else (
    echo main_source.asm not found. Run compile_asm.bat first.
)