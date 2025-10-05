#!/usr/bin/env pwsh
# -*- coding: utf-8 -*-
"""Simple PowerShell script to compile TorchScript program"""

# Set paths
$vsDevCmdPath = 'D:\Code\VS2022\Community\Common7\Tools\VsDevCmd.bat'
$libtorchPath = 'D:/Code\libtorch-win-shared-with-deps-2.8.0+cu126\libtorch'
$sourceFile = 'simple_test.cpp'
$outDir = '..\bin'

# Check if paths exist
if (-not (Test-Path -Path $vsDevCmdPath)) {
    Write-Host "ERROR: Cannot find VS Developer Command Prompt: $vsDevCmdPath"
    pause
    exit 1
}

if (-not (Test-Path -Path $libtorchPath)) {
    Write-Host "ERROR: Cannot find LibTorch: $libtorchPath"
    pause
    exit 1
}

if (-not (Test-Path -Path $sourceFile)) {
    Write-Host "ERROR: Cannot find source file: $sourceFile"
    pause
    exit 1
}

# Create output directory if it doesn't exist
if (-not (Test-Path -Path $outDir)) {
    Write-Host "Creating output directory: $outDir"
    New-Item -ItemType Directory -Path $outDir -Force | Out-Null
}

# Prepare compilation command
$includeDir1 = Join-Path -Path $libtorchPath -ChildPath 'include'
$includeDir2 = Join-Path -Path $includeDir1 -ChildPath 'torch\csrc\api\include'
$libDir = Join-Path -Path $libtorchPath -ChildPath 'lib'
$objFile = Join-Path -Path $outDir -ChildPath 'simple_test.obj'
$exeFile = Join-Path -Path $outDir -ChildPath 'simple_test.exe'

# Build the compilation command string
$compileCmd = "cl /EHsc /std:c++17 /W3 /D_CRT_SECURE_NO_WARNINGS " +
              "/I`"$includeDir1`" " +
              "/I`"$includeDir2`" " +
              "$sourceFile " +
              "/Fo`"$objFile`" " +
              "/link " +
              "/LIBPATH:`"$libDir`" " +
              "torch.lib torch_cpu.lib c10.lib " +
              "/OUT:`"$exeFile`" " +
              "/SUBSYSTEM:CONSOLE"

# Use VS Developer Command Prompt to compile
Write-Host "=== Starting compilation of $sourceFile ==="
Write-Host "First, configuring VS development environment..."

# Run the command in cmd.exe with /c switch
$fullCmd = "cmd.exe /c \`"$vsDevCmdPath\`" -arch=x64 -host_arch=x64 && $compileCmd"
        
        # Execute the command
        try {
            # Set output encoding to UTF-8
            [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
            [Console]::InputEncoding = [System.Text.Encoding]::UTF8
            
            # Run the command in cmd.exe with /c switch
            $fullCmd = "cmd.exe /c \`"$vsDevCmdPath\`" -arch=x64 -host_arch=x64 && $compileCmd"
            
            Write-Host "Executing command: $fullCmd"
            
            # Execute the command and capture output
            $process = Start-Process -FilePath 'cmd.exe' -ArgumentList "/c $fullCmd" -NoNewWindow -Wait -PassThru -RedirectStandardOutput 'compile_output.log' -RedirectStandardError 'compile_error.log'
            
            # Check if compilation was successful
            if ($process.ExitCode -eq 0) {
                Write-Host "\n=== Compilation successful! ==="
                Write-Host "Executable: $exeFile"
                
                # Display compilation output
                Write-Host "\n=== Compilation Output ==="
                Get-Content 'compile_output.log'
                
                # Copy DLL files
                Write-Host "\n=== Copying necessary DLL files ==="
                $dlls = @('torch.dll', 'torch_cpu.dll', 'c10.dll', 'fbgemm.dll', 'libiomp5md.dll')
                
                foreach ($dll in $dlls) {
                    $srcDll = Join-Path -Path $libDir -ChildPath $dll
                    $dstDll = Join-Path -Path $outDir -ChildPath $dll
                    
                    if (Test-Path -Path $srcDll) {
                        try {
                            Copy-Item -Path $srcDll -Destination $dstDll -Force
                            Write-Host "Copied successfully: $dll"
                        } catch {
                            Write-Host "Failed to copy: $dll, Error: $_"
                        }
                    } else {
                        Write-Host "Warning: Cannot find DLL file: $srcDll"
                    }
                }
                
                Write-Host "\n=== Operation completed ==="
                Write-Host "Please run $exeFile in the $outDir directory to test the program"
            } else {
                Write-Host "Compilation failed with exit code: $process.ExitCode"
                Write-Host "\n=== Error Output ==="
                Get-Content 'compile_error.log'
                pause
                exit 1
            }
        } catch {
            Write-Host "Error executing compilation command: $_"
            pause
            exit 1
        }