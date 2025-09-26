; 基于 ping.exe 自动生成的汇编源码
; 架构: x64
; 入口点: 0x140001300
; 镜像基址: 0x140000000
; 程序输出: "     processorArchitecture="amd64""
; 生成时间: 2025-09-16 22:31:07
; 格式: MASM
; 注意: 此文件需要以 UTF-8 without BOM 格式保存

; 导入库声明
includelib msvcrt.lib

extrn ?terminate@@YAXXZ: proc
extrn FormatMessageW: proc
extrn FreeAddrInfoW: proc
extrn GetAddrInfoW: proc
extrn GetConsoleMode: proc
extrn GetCurrentProcess: proc
extrn GetCurrentProcessId: proc
extrn GetCurrentThreadId: proc
extrn GetEnvironmentVariableW: proc
extrn GetFileType: proc
extrn GetIpErrorString: proc
extrn GetIpForwardTable: proc
extrn GetLastError: proc
extrn GetModuleHandleW: proc
extrn GetNameInfoW: proc
extrn GetSystemTimeAsFileTime: proc
extrn GetTickCount: proc
extrn HeapSetInformation: proc
extrn Icmp6CreateFile: proc
extrn Icmp6SendEcho2: proc
extrn IcmpCloseHandle: proc
extrn IcmpCreateFile: proc
extrn IcmpSendEcho2Ex: proc
extrn InetNtopW: proc
extrn LocalAlloc: proc
extrn LocalFree: proc
extrn QueryPerformanceCounter: proc
extrn RegCloseKey: proc
extrn RegOpenKeyExW: proc
extrn RegQueryValueExW: proc
extrn RtlCaptureContext: proc
extrn RtlIpv4StringToAddressW: proc
extrn RtlLookupFunctionEntry: proc
extrn RtlVirtualUnwind: proc
extrn SetConsoleCtrlHandler: proc
extrn SetCurrentThreadCompartmentId: proc
extrn SetThreadUILanguage: proc
extrn SetUnhandledExceptionFilter: proc
extrn Sleep: proc
extrn TerminateProcess: proc
extrn UnhandledExceptionFilter: proc
extrn WSACleanup: proc
extrn WSAStartup: proc
extrn WideCharToMultiByte: proc
extrn _XcptFilter: proc
extrn __C_specific_handler: proc
extrn __iob_func: proc
extrn __set_app_type: proc
extrn __setusermatherr: proc
extrn __wgetmainargs: proc
extrn _amsg_exit: proc
extrn _cexit: proc
extrn _commode: proc
extrn _exit: proc
extrn _fileno: proc
extrn _fmode: proc
extrn _get_osfhandle: proc
extrn _initterm: proc
extrn _setmode: proc
extrn _wcsicmp: proc
extrn _write: proc
extrn exit: proc
extrn fflush: proc
extrn fgetpos: proc
extrn fwprintf: proc
extrn iswctype: proc
extrn memcpy: proc
extrn memset: proc
extrn wcschr: proc
extrn wcstoul: proc

.data
    ; 程序输出字符串
    msg db '     processorArchitecture="amd64"', 0Dh, 0Ah, 0
    msg_len equ $ - msg - 1
    written dq ?

.code
main proc
    ; 64位调用约定
    sub rsp, 40  ; 分配栈空间

    ; 获取标准输出句柄
    mov rcx, -11  ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov r8, rax   ; 保存句柄

    ; 写入控制台
    mov rcx, r8        ; 句柄
    lea rdx, msg       ; 消息缓冲区
    mov r8, msg_len    ; 字符数
    lea r9, written    ; 写入字节数
    mov qword ptr [rsp+32], 0  ; 保留参数
    call WriteConsoleA

    ; 退出程序
    mov rcx, 0
    call ExitProcess
main endp

end
