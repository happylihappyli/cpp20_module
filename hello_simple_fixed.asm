; Simple Hello World for MASM64
.code

extern GetStdHandle: proc
extern WriteConsoleA: proc  
extern ExitProcess: proc

main proc
    ; 获取标准输出句柄
    mov rcx, -11        ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov r8, rax         ; 保存句柄
    
    ; 写入Hello World
    mov rcx, r8         ; 句柄
    lea rdx, hello_msg  ; 消息地址
    mov r8, 13          ; 消息长度
    mov r9, 0           ; lpNumberOfCharsWritten
    push 0              ; lpReserved
    call WriteConsoleA
    add rsp, 8          ; 清理栈
    
    ; 退出程序
    mov rcx, 0
    call ExitProcess
main endp

.data
hello_msg db 'Hello World!', 13, 10

end