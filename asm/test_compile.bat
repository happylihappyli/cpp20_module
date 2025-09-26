@echo off
chcp 65001 >nul
call "D:\Code\VS2022\Community\VC\Auxiliary\Build\vcvars64.bat"

echo Testing compilation and comparison with original main.exe...
echo.

echo Step 1: Relink object files to create new executable
link ..\obj\main.obj ..\obj\funny.obj ..\obj\math.obj /OUT:main_relinked.exe /SUBSYSTEM:CONSOLE

if exist main_relinked.exe (
    echo Successfully created main_relinked.exe
    echo.
    
    echo Step 2: Compare file sizes
    echo Original main.exe size:
    dir ..\bin\main.exe | findstr main.exe
    echo Relinked executable size:
    dir main_relinked.exe | findstr main_relinked.exe
    echo.
    
    echo Step 3: Test functionality
    echo Running original main.exe:
    ..\bin\main.exe
    echo.
    echo Running relinked main_relinked.exe:
    main_relinked.exe
    echo.
    
    echo Step 4: Binary comparison
    fc /b ..\bin\main.exe main_relinked.exe > comparison_result.txt
    if errorlevel 1 (
        echo Files are different. Check comparison_result.txt for details.
    ) else (
        echo Files are identical!
    )
    
) else (
    echo Failed to create relinked executable
    echo Check for missing dependencies or linking errors
)