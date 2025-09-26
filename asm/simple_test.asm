.code
main PROC
    sub rsp, 28h
    lea rcx, hello_msg
    call printf
    add rsp, 28h
    xor eax, eax
    ret
main ENDP

.data
hello_msg db "Hello from Assembly!", 0Ah, 0

END
