
.386
.model flat, stdcall
option casemap:none

include windows.inc
include kernel32.inc
includelib kernel32.lib

.data
    msg db "Hello from MASM!", 0

.code
start:
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    push eax
    invoke WriteConsoleA, eax, offset msg, 17, 0, 0
    invoke ExitProcess, 0
end start
