
; Demo program for universal converter
.model flat, stdcall
.stack 4096

extern GetStdHandle: proc
extern WriteConsoleA: proc
extern ExitProcess: proc

STD_OUTPUT_HANDLE equ -11

.data
    demo_msg db "Hello from Universal Converter Demo!", 13, 10, 0
    msg_len dd 37
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
    lea edx, demo_msg
    push edx
    push eax
    call WriteConsoleA
    
    ; Exit
    push 0
    call ExitProcess
    
    ret
main endp

end main
