; 基于 hello.exe 自动生成的汇编源码
; 架构: x64
; 入口点: 0x140008dd0
; 镜像基址: 0x140000000
; 程序输出: "=== C++20 测试 v1.1 ===="
; 生成时间: 2025-09-16 22:34:59
; 格式: NASM
; 注意: 此文件需要以 UTF-8 without BOM 格式保存

; 导入声明
extern CloseHandle
extern CompareStringW
extern CreateFileW
extern DecodePointer
extern DeleteCriticalSection
extern EncodePointer
extern EnterCriticalSection
extern EnumSystemLocalesW
extern ExitProcess
extern FindClose
extern FindFirstFileExW
extern FindNextFileW
extern FlsAlloc
extern FlsFree
extern FlsGetValue
extern FlsSetValue
extern FlushFileBuffers
extern FreeEnvironmentStringsW
extern FreeLibrary
extern GetACP
extern GetCPInfo
extern GetCommandLineA
extern GetCommandLineW
extern GetConsoleMode
extern GetConsoleOutputCP
extern GetCurrentProcess
extern GetCurrentProcessId
extern GetCurrentThreadId
extern GetEnvironmentStringsW
extern GetFileSizeEx
extern GetFileType
extern GetLastError
extern GetLocaleInfoW
extern GetModuleFileNameW
extern GetModuleHandleExW
extern GetModuleHandleW
extern GetOEMCP
extern GetProcAddress
extern GetProcessHeap
extern GetStartupInfoW
extern GetStdHandle
extern GetStringTypeW
extern GetSystemTimeAsFileTime
extern GetUserDefaultLCID
extern HeapAlloc
extern HeapFree
extern HeapReAlloc
extern HeapSize
extern InitializeCriticalSectionAndSpinCount
extern InitializeCriticalSectionEx
extern InitializeSListHead
extern IsDebuggerPresent
extern IsProcessorFeaturePresent
extern IsValidCodePage
extern IsValidLocale
extern LCMapStringEx
extern LCMapStringW
extern LeaveCriticalSection
extern LoadLibraryExW
extern MultiByteToWideChar
extern QueryPerformanceCounter
extern RaiseException
extern ReadConsoleW
extern ReadFile
extern RtlCaptureContext
extern RtlLookupFunctionEntry
extern RtlPcToFileHeader
extern RtlUnwind
extern RtlUnwindEx
extern RtlVirtualUnwind
extern SetEnvironmentVariableW
extern SetFilePointerEx
extern SetLastError
extern SetStdHandle
extern SetUnhandledExceptionFilter
extern TerminateProcess
extern TlsAlloc
extern TlsFree
extern TlsGetValue
extern TlsSetValue
extern UnhandledExceptionFilter
extern WideCharToMultiByte
extern WriteConsoleW
extern WriteFile

section .data
    msg db '=== C++20 测试 v1.1 ====', 0Dh, 0Ah, 0
    msg_len equ $ - msg - 1
    written dq 0

section .text
global _start

_start:
    ; 64位系统调用
    mov rax, 1      ; sys_write
    mov rdi, 1      ; stdout
    mov rsi, msg    ; 消息
    mov rdx, msg_len ; 长度
    syscall

    ; 退出
    mov rax, 60     ; sys_exit
    mov rdi, 0      ; 退出码
    syscall
