; Simple Hello World Program (64-bit)
; Compiled from disassembled hello.exe
; Simplified for easy compilation

; External functions
extern GetStdHandle: proc
extern WriteConsoleA: proc
extern ExitProcess: proc

; Constants
STD_OUTPUT_HANDLE equ -11

.data
    hello_msg db "Hello, World from disassembled program!", 13, 10, 0
    msg_len equ $ - hello_msg - 1
    bytes_written dq ?

.code

; Print string function
print_string proc
    sub rsp, 40                 ; Shadow space + alignment
    
    ; Get stdout handle
    mov rcx, STD_OUTPUT_HANDLE
    call GetStdHandle
    
    ; Write to console
    mov rcx, rax                ; hConsoleOutput
    lea rdx, hello_msg          ; lpBuffer
    mov r8, msg_len             ; nNumberOfCharsToWrite
    lea r9, bytes_written       ; lpNumberOfCharsWritten
    mov qword ptr [rsp+32], 0   ; lpReserved
    call WriteConsoleA
    
    add rsp, 40
    ret
print_string endp

; Main program entry point
start:
    sub rsp, 40                 ; Shadow space + alignment
    
    ; Call print function
    call print_string
    
    ; Exit program
    mov rcx, 0
    call ExitProcess
    
    add rsp, 40
    ret

end start
