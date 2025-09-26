; Advanced converted assembly from EXE
; Reconstructed program logic based on behavior analysis

.model flat, stdcall
.stack 4096

extern GetStdHandle@4: proc
extern WriteConsoleA@20: proc
extern ExitProcess@4: proc
extern wsprintfA: proc
extern lstrlenA@4: proc

STD_OUTPUT_HANDLE equ -11

.data
    str_0 db "=== C++20 Test v1.1 ====", 0
    str_1 db "Basic math operation test:", 0
    str_2 db "Advanced math function test:", 0
    str_3 db ">> Program execution completed!", 0
    math_str_0 db "10 + 5 = 15", 0
    math_str_1 db "10 - 5 = 5", 0
    math_str_2 db "10 * 5 = 50", 0
    math_str_3 db "10 / 5 = 2.000000", 0
    prime_str_0 db "2 is prime", 0
    prime_str_1 db "3 is prime", 0
    prime_str_2 db "4 is not prime", 0
    prime_str_3 db "17 is prime", 0
    prime_str_4 db "25 is not prime", 0
    prime_str_5 db "29 is prime", 0
    fact_str_0 db "5! = 120", 0
    newline db 13, 10, 0
    number_format db '%d', 0
    number_buffer db 32 dup(?)
    bytes_written dd ?

.code
print_string proc
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    
    ; Get stdout handle
    push STD_OUTPUT_HANDLE
    call GetStdHandle@4
    mov ebx, eax
    
    ; Get string length
    push dword ptr [ebp+8]  ; str_ptr
    call lstrlenA@4
    mov ecx, eax
    
    ; Write string
    push 0                  ; lpReserved
    push offset bytes_written
    push ecx                ; nNumberOfCharsToWrite
    push dword ptr [ebp+8]  ; lpBuffer
    push ebx                ; hConsoleOutput
    call WriteConsoleA@20
    
    ; Write newline
    push 0                  ; lpReserved
    push offset bytes_written
    push 2                  ; nNumberOfCharsToWrite
    push offset newline     ; lpBuffer
    push ebx                ; hConsoleOutput
    call WriteConsoleA@20
    
    pop edx
    pop ecx
    pop ebx
    pop ebp
    ret 4
print_string endp

math_add proc
    ; Input: ECX = a, EDX = b
    ; Output: EAX = a + b
    mov eax, ecx
    add eax, edx
    ret
math_add endp

math_subtract proc
    ; Input: ECX = a, EDX = b
    ; Output: EAX = a - b
    mov eax, ecx
    sub eax, edx
    ret
math_subtract endp

math_multiply proc
    ; Input: ECX = a, EDX = b
    ; Output: EAX = a * b
    mov eax, ecx
    imul eax, edx
    ret
math_multiply endp

math_divide proc
    ; Input: ECX = a, EDX = b
    ; Output: EAX = a / b
    mov eax, ecx
    cdq
    idiv edx
    ret
math_divide endp

factorial proc
    ; Input: ECX = n
    ; Output: EAX = n!
    push ebx
    mov eax, 1
    mov ebx, ecx
    cmp ebx, 1
    jle factorial_done
factorial_loop:
    imul eax, ebx
    dec ebx
    cmp ebx, 1
    jg factorial_loop
factorial_done:
    pop ebx
    ret
factorial endp

is_prime proc
    ; Input: ECX = n
    ; Output: EAX = 1 if prime, 0 if not prime
    push ebx
    push edx
    
    cmp ecx, 2
    jl not_prime
    cmp ecx, 2
    je is_prime_yes
    cmp ecx, 3
    je is_prime_yes
    
    ; Check if even
    mov eax, ecx
    and eax, 1
    jz not_prime
    
    ; Check divisors from 3 to sqrt(n)
    mov ebx, 3
prime_loop:
    mov eax, ebx
    imul eax, ebx
    cmp eax, ecx
    jg is_prime_yes
    
    mov eax, ecx
    cdq
    idiv ebx
    cmp edx, 0
    je not_prime
    
    add ebx, 2
    jmp prime_loop
    
is_prime_yes:
    mov eax, 1
    jmp prime_done
not_prime:
    mov eax, 0
prime_done:
    pop edx
    pop ebx
    ret
is_prime endp

start:
    ; Reconstructed main program logic

    invoke print_string, offset str_0

    invoke print_string, offset str_1

    ; Calculate 10 + 5
    mov ecx, 10
    mov edx, 5
    call math_add
    invoke print_string, offset math_str_0

    ; Calculate 10 - 5
    mov ecx, 10
    mov edx, 5
    call math_subtract
    invoke print_string, offset math_str_1

    ; Calculate 10 * 5
    mov ecx, 10
    mov edx, 5
    call math_multiply
    invoke print_string, offset math_str_2

    ; Calculate 10 / 5
    mov ecx, 10
    mov edx, 5
    call math_divide
    invoke print_string, offset math_str_3

    invoke print_string, offset str_2

    ; Calculate 5!
    mov ecx, 5
    call factorial
    invoke print_string, offset fact_str_0

    ; Check if 2 is prime
    mov ecx, 2
    call is_prime
    invoke print_string, offset prime_str_0

    ; Check if 3 is prime
    mov ecx, 3
    call is_prime
    invoke print_string, offset prime_str_1

    ; Check if 4 is prime
    mov ecx, 4
    call is_prime
    invoke print_string, offset prime_str_2

    ; Check if 17 is prime
    mov ecx, 17
    call is_prime
    invoke print_string, offset prime_str_3

    ; Check if 25 is prime
    mov ecx, 25
    call is_prime
    invoke print_string, offset prime_str_4

    ; Check if 29 is prime
    mov ecx, 29
    call is_prime
    invoke print_string, offset prime_str_5

    invoke print_string, offset str_3

    ; Exit program
    invoke ExitProcess, 0

end start