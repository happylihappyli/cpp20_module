; Simple Hello World in MASM64
; This demonstrates compilable assembly syntax

.code

; External functions from C runtime
extern printf: proc
extern ExitProcess: proc

; Main function
main proc
    ; Set up stack frame
    sub rsp, 28h        ; Reserve shadow space + alignment
    
    ; Call printf
    lea rcx, hello_msg  ; First parameter (format string)
    call printf
    
    ; Call printf again with different message
    lea rcx, demo_msg
    call printf
    
    ; Clean up and exit
    add rsp, 28h        ; Restore stack
    xor eax, eax        ; Return 0
    ret
main endp

.data
hello_msg db "Hello from Pure Assembly!", 0Ah, 0
demo_msg  db "This assembly code can be compiled with ml64.", 0Ah, 0

END