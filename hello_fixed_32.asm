; Simple Hello World Program
; Compiled from disassembled hello.exe
; Simplified for easy compilation

.model flat, stdcall
.stack 4096

; External functions
extern GetStdHandle: proc
extern WriteConsoleA: proc
extern ExitProcess: proc

; Constants
STD_OUTPUT_HANDLE equ -11

.data
    hello_msg db "Hello, World from disassembled program!", 13, 10, 0
    msg_len equ $ - hello_msg - 1
    bytes_written dd ?

.code

; Print string function
print_string proc
    push ebp
    mov ebp, esp
    
    ; Get stdout handle
    push STD_OUTPUT_HANDLE
    call GetStdHandle
    
    ; Write to console
    push 0                      ; lpReserved
    lea edx, bytes_written
    push edx                    ; lpNumberOfCharsWritten
    push msg_len                ; nNumberOfCharsToWrite
    lea edx, hello_msg
    push edx                    ; lpBuffer
    push eax                    ; hConsoleOutput
    call WriteConsoleA
    
    pop ebp
    ret
print_string endp

; Main program entry point
start:
    ; Call print function
    call print_string
    
    ; Exit program
    push 0
    call ExitProcess

end start
