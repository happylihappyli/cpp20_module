.code

extern ExitProcess: proc
extern GetStdHandle: proc
extern WriteConsoleW: proc
extern SetConsoleOutputCP: proc
extern MultiByteToWideChar: proc

main proc
    ; Set console output code page to UTF-8 (65001)
    mov rcx, 65001
    call SetConsoleOutputCP
    
    ; Get stdout handle
    mov rcx, -11        ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov r12, rax        ; Save handle
    
    ; Method 1: Direct Unicode values (hard to remember)
    mov rcx, r12
    lea rdx, direct_msg
    mov r8, direct_len
    lea r9, bytes_written
    mov qword ptr [rsp+32], 0
    call WriteConsoleW
    
    ; Method 2: Convert UTF-8 to Unicode using API
    ; Convert UTF-8 string to Unicode
    mov rcx, 65001      ; CP_UTF8
    mov rdx, 0          ; dwFlags
    lea r8, utf8_msg    ; UTF-8 source
    mov r9, utf8_len    ; Source length
    lea rax, converted_msg
    mov qword ptr [rsp+32], rax  ; Destination buffer
    mov qword ptr [rsp+40], 100  ; Destination size
    call MultiByteToWideChar
    
    ; Write converted message
    mov rcx, r12
    lea rdx, converted_msg
    mov r8, rax         ; Length returned by conversion
    lea r9, bytes_written
    mov qword ptr [rsp+32], 0
    call WriteConsoleW
    
    ; Exit
    mov rcx, 0
    call ExitProcess
main endp

.data
; Method 1: Direct Unicode (hard to remember)
direct_msg dw 'D','i','r','e','c','t',':',20H,4E16H,754CH,0Dh,0Ah  ; "Direct: 世界"
direct_len equ ($ - direct_msg) / 2

; Method 2: UTF-8 string (easier to remember and edit)
utf8_msg db "Converted: 世界", 13, 10, 0  ; UTF-8 encoding
utf8_len equ $ - utf8_msg - 1

; Buffer for converted Unicode string
converted_msg dw 100 dup(0)
bytes_written dq 0

; Helper: Character code reference
; 世 = U+4E16 = 4E16H
; 界 = U+754C = 754CH
; You can look up Unicode values at: unicode-table.com

end