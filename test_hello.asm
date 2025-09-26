; Simple test program for exe->asm->exe workflow
.model flat, stdcall
.stack 4096

extern GetStdHandle: proc
extern WriteConsoleA: proc
extern ExitProcess: proc

; Constants
STD_OUTPUT_HANDLE equ -11

.data
    hello_msg db "Hello from test program!", 13, 10, 0
    msg_len dd 25
    bytes_written dd ?

.code

main proc
    ; Get stdout handle
    push STD_OUTPUT_HANDLE
    call GetStdHandle
    
    ; Write message
    push 0
    lea edx, bytes_written
    push edx
    push msg_len
    lea edx, hello_msg
    push edx
    push eax
    call WriteConsoleA
    
    ; Exit
    push 0
    call ExitProcess
    
    ret
main endp

end main