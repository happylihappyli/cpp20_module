; Universal EXE to ASM Converter Output
; Source: main.exe
; Architecture: x64
; Image Base: 0x140000000
; Entry Point: 0x140001000
; Total Instructions: 228
; Total Functions: 4

; 64-bit mode
.stack 4096

; External functions
extern ExitProcess: proc
extern GetStdHandle: proc
extern WriteConsoleA: proc

; Constants
STD_OUTPUT_HANDLE equ -11
STD_INPUT_HANDLE equ -10
STD_ERROR_HANDLE equ -12

.data
    str_140002060 db ".text$mn", 0
    str_140002074 db ".idata$5", 0
    str_140002088 db ".rdata", 0
    str_140002098 db ".rdata$voltmd", 0
    str_1400020b0 db ".rdata$zzzdbg", 0
    str_1400020c8 db ".idata$2", 0
    str_1400020dc db ".idata$3", 0
    str_1400020f0 db ".idata$4", 0
    str_140002104 db ".idata$6", 0
    str_140002118 db ".data", 0
    str_14000216a db "ExitProcess", 0
    str_140002178 db "GetStdHandle", 0
    str_140002188 db "WriteConsoleA", 0
    str_140002196 db "KERNEL32.dll", 0
    str_140003000 db "=== C++20 Test v1.1 ==== ", 0
    str_14000301b db "Basic math operation test:", 0
    str_140003070 db "Advanced math function test:", 0
    str_140003098 db "2 is prime", 0
    str_1400030a4 db "3 is prime", 0
    str_1400030b0 db "4 is not prime", 0
    str_1400030c0 db "17 is prime", 0
    str_1400030cd db "25 is not prime", 0
    str_1400030de db "29 is prime", 0
    str_1400030eb db ">> Program execution completed!", 0
    newline db 13, 10, 0
    buffer db 256 dup(?)
    bytes_written dd ?

.code

; Helper function: print string (64-bit)
print_string proc
    sub rsp, 40
    mov rcx, STD_OUTPUT_HANDLE
    call GetStdHandle
    mov rcx, rax
    lea rdx, buffer
    mov r8, 256
    lea r9, bytes_written
    mov qword ptr [rsp+32], 0
    call WriteConsoleA
    add rsp, 40
    ret
print_string endp

; Main disassembled code
; Function: start
start proc
    sub rsp, 0x28  ; 0x140001000
    mov rcx, 0xfffffffffffffff5  ; 0x140001004
    call func_14000104a  ; 0x14000100b
    mov r10, rax  ; 0x140001010
    mov rcx, r10  ; 0x140001013
    lea rdx, [rip + 0x1fe3]  ; 0x140001016
    mov r8d, 0x10c  ; 0x14000101d
    lea r9, [rip + 0x20e3]  ; 0x140001023
    mov qword ptr [rsp + 0x20], 0  ; 0x14000102a
    call func_140001050  ; 0x140001033
    mov rcx, 0  ; 0x140001038
    call func_140001044  ; 0x14000103f
start endp

; Function: func_140001044
func_140001044 proc
    jmp qword ptr [rip + 0xfb6]  ; 0x140001044
func_140001044 endp

; Function: func_14000104a
func_14000104a proc
    jmp qword ptr [rip + 0xfb8]  ; 0x14000104a
func_14000104a endp

; Function: func_140001050
func_140001050 proc
    jmp qword ptr [rip + 0xfba]  ; 0x140001050
    add byte ptr [rax], al  ; 0x140001056
    add byte ptr [rax], al  ; 0x140001058
    add byte ptr [rax], al  ; 0x14000105a
    add byte ptr [rax], al  ; 0x14000105c
    add byte ptr [rax], al  ; 0x14000105e
    add byte ptr [rax], al  ; 0x140001060
    add byte ptr [rax], al  ; 0x140001062
    add byte ptr [rax], al  ; 0x140001064
    add byte ptr [rax], al  ; 0x140001066
    add byte ptr [rax], al  ; 0x140001068
    add byte ptr [rax], al  ; 0x14000106a
    add byte ptr [rax], al  ; 0x14000106c
    add byte ptr [rax], al  ; 0x14000106e
    add byte ptr [rax], al  ; 0x140001070
    add byte ptr [rax], al  ; 0x140001072
    add byte ptr [rax], al  ; 0x140001074
    add byte ptr [rax], al  ; 0x140001076
    add byte ptr [rax], al  ; 0x140001078
    add byte ptr [rax], al  ; 0x14000107a
    add byte ptr [rax], al  ; 0x14000107c
    add byte ptr [rax], al  ; 0x14000107e
    add byte ptr [rax], al  ; 0x140001080
    add byte ptr [rax], al  ; 0x140001082
    add byte ptr [rax], al  ; 0x140001084
    add byte ptr [rax], al  ; 0x140001086
    add byte ptr [rax], al  ; 0x140001088
    add byte ptr [rax], al  ; 0x14000108a
    add byte ptr [rax], al  ; 0x14000108c
    add byte ptr [rax], al  ; 0x14000108e
    add byte ptr [rax], al  ; 0x140001090
    add byte ptr [rax], al  ; 0x140001092
    add byte ptr [rax], al  ; 0x140001094
    add byte ptr [rax], al  ; 0x140001096
    add byte ptr [rax], al  ; 0x140001098
    add byte ptr [rax], al  ; 0x14000109a
    add byte ptr [rax], al  ; 0x14000109c
    add byte ptr [rax], al  ; 0x14000109e
    add byte ptr [rax], al  ; 0x1400010a0
    add byte ptr [rax], al  ; 0x1400010a2
    add byte ptr [rax], al  ; 0x1400010a4
    add byte ptr [rax], al  ; 0x1400010a6
    add byte ptr [rax], al  ; 0x1400010a8
    add byte ptr [rax], al  ; 0x1400010aa
    add byte ptr [rax], al  ; 0x1400010ac
    add byte ptr [rax], al  ; 0x1400010ae
    add byte ptr [rax], al  ; 0x1400010b0
    add byte ptr [rax], al  ; 0x1400010b2
    add byte ptr [rax], al  ; 0x1400010b4
    add byte ptr [rax], al  ; 0x1400010b6
    add byte ptr [rax], al  ; 0x1400010b8
    add byte ptr [rax], al  ; 0x1400010ba
    add byte ptr [rax], al  ; 0x1400010bc
    add byte ptr [rax], al  ; 0x1400010be
    add byte ptr [rax], al  ; 0x1400010c0
    add byte ptr [rax], al  ; 0x1400010c2
    add byte ptr [rax], al  ; 0x1400010c4
    add byte ptr [rax], al  ; 0x1400010c6
    add byte ptr [rax], al  ; 0x1400010c8
    add byte ptr [rax], al  ; 0x1400010ca
    add byte ptr [rax], al  ; 0x1400010cc
    add byte ptr [rax], al  ; 0x1400010ce
    add byte ptr [rax], al  ; 0x1400010d0
    add byte ptr [rax], al  ; 0x1400010d2
    add byte ptr [rax], al  ; 0x1400010d4
    add byte ptr [rax], al  ; 0x1400010d6
    add byte ptr [rax], al  ; 0x1400010d8
    add byte ptr [rax], al  ; 0x1400010da
    add byte ptr [rax], al  ; 0x1400010dc
    add byte ptr [rax], al  ; 0x1400010de
    add byte ptr [rax], al  ; 0x1400010e0
    add byte ptr [rax], al  ; 0x1400010e2
    add byte ptr [rax], al  ; 0x1400010e4
    add byte ptr [rax], al  ; 0x1400010e6
    add byte ptr [rax], al  ; 0x1400010e8
    add byte ptr [rax], al  ; 0x1400010ea
    add byte ptr [rax], al  ; 0x1400010ec
    add byte ptr [rax], al  ; 0x1400010ee
    add byte ptr [rax], al  ; 0x1400010f0
    add byte ptr [rax], al  ; 0x1400010f2
    add byte ptr [rax], al  ; 0x1400010f4
    add byte ptr [rax], al  ; 0x1400010f6
    add byte ptr [rax], al  ; 0x1400010f8
    add byte ptr [rax], al  ; 0x1400010fa
    add byte ptr [rax], al  ; 0x1400010fc
    add byte ptr [rax], al  ; 0x1400010fe
    add byte ptr [rax], al  ; 0x140001100
    add byte ptr [rax], al  ; 0x140001102
    add byte ptr [rax], al  ; 0x140001104
    add byte ptr [rax], al  ; 0x140001106
    add byte ptr [rax], al  ; 0x140001108
    add byte ptr [rax], al  ; 0x14000110a
    add byte ptr [rax], al  ; 0x14000110c
    add byte ptr [rax], al  ; 0x14000110e
    add byte ptr [rax], al  ; 0x140001110
    add byte ptr [rax], al  ; 0x140001112
    add byte ptr [rax], al  ; 0x140001114
    add byte ptr [rax], al  ; 0x140001116
    add byte ptr [rax], al  ; 0x140001118
    add byte ptr [rax], al  ; 0x14000111a
    add byte ptr [rax], al  ; 0x14000111c
    add byte ptr [rax], al  ; 0x14000111e
    add byte ptr [rax], al  ; 0x140001120
    add byte ptr [rax], al  ; 0x140001122
    add byte ptr [rax], al  ; 0x140001124
    add byte ptr [rax], al  ; 0x140001126
    add byte ptr [rax], al  ; 0x140001128
    add byte ptr [rax], al  ; 0x14000112a
    add byte ptr [rax], al  ; 0x14000112c
    add byte ptr [rax], al  ; 0x14000112e
    add byte ptr [rax], al  ; 0x140001130
    add byte ptr [rax], al  ; 0x140001132
    add byte ptr [rax], al  ; 0x140001134
    add byte ptr [rax], al  ; 0x140001136
    add byte ptr [rax], al  ; 0x140001138
    add byte ptr [rax], al  ; 0x14000113a
    add byte ptr [rax], al  ; 0x14000113c
    add byte ptr [rax], al  ; 0x14000113e
    add byte ptr [rax], al  ; 0x140001140
    add byte ptr [rax], al  ; 0x140001142
    add byte ptr [rax], al  ; 0x140001144
    add byte ptr [rax], al  ; 0x140001146
    add byte ptr [rax], al  ; 0x140001148
    add byte ptr [rax], al  ; 0x14000114a
    add byte ptr [rax], al  ; 0x14000114c
    add byte ptr [rax], al  ; 0x14000114e
    add byte ptr [rax], al  ; 0x140001150
    add byte ptr [rax], al  ; 0x140001152
    add byte ptr [rax], al  ; 0x140001154
    add byte ptr [rax], al  ; 0x140001156
    add byte ptr [rax], al  ; 0x140001158
    add byte ptr [rax], al  ; 0x14000115a
    add byte ptr [rax], al  ; 0x14000115c
    add byte ptr [rax], al  ; 0x14000115e
    add byte ptr [rax], al  ; 0x140001160
    add byte ptr [rax], al  ; 0x140001162
    add byte ptr [rax], al  ; 0x140001164
    add byte ptr [rax], al  ; 0x140001166
    add byte ptr [rax], al  ; 0x140001168
    add byte ptr [rax], al  ; 0x14000116a
    add byte ptr [rax], al  ; 0x14000116c
    add byte ptr [rax], al  ; 0x14000116e
    add byte ptr [rax], al  ; 0x140001170
    add byte ptr [rax], al  ; 0x140001172
    add byte ptr [rax], al  ; 0x140001174
    add byte ptr [rax], al  ; 0x140001176
    add byte ptr [rax], al  ; 0x140001178
    add byte ptr [rax], al  ; 0x14000117a
    add byte ptr [rax], al  ; 0x14000117c
    add byte ptr [rax], al  ; 0x14000117e
    add byte ptr [rax], al  ; 0x140001180
    add byte ptr [rax], al  ; 0x140001182
    add byte ptr [rax], al  ; 0x140001184
    add byte ptr [rax], al  ; 0x140001186
    add byte ptr [rax], al  ; 0x140001188
    add byte ptr [rax], al  ; 0x14000118a
    add byte ptr [rax], al  ; 0x14000118c
    add byte ptr [rax], al  ; 0x14000118e
    add byte ptr [rax], al  ; 0x140001190
    add byte ptr [rax], al  ; 0x140001192
    add byte ptr [rax], al  ; 0x140001194
    add byte ptr [rax], al  ; 0x140001196
    add byte ptr [rax], al  ; 0x140001198
    add byte ptr [rax], al  ; 0x14000119a
    add byte ptr [rax], al  ; 0x14000119c
    add byte ptr [rax], al  ; 0x14000119e
    add byte ptr [rax], al  ; 0x1400011a0
    add byte ptr [rax], al  ; 0x1400011a2
    add byte ptr [rax], al  ; 0x1400011a4
    add byte ptr [rax], al  ; 0x1400011a6
    add byte ptr [rax], al  ; 0x1400011a8
    add byte ptr [rax], al  ; 0x1400011aa
    add byte ptr [rax], al  ; 0x1400011ac
    add byte ptr [rax], al  ; 0x1400011ae
    add byte ptr [rax], al  ; 0x1400011b0
    add byte ptr [rax], al  ; 0x1400011b2
    add byte ptr [rax], al  ; 0x1400011b4
    add byte ptr [rax], al  ; 0x1400011b6
    add byte ptr [rax], al  ; 0x1400011b8
    add byte ptr [rax], al  ; 0x1400011ba
    add byte ptr [rax], al  ; 0x1400011bc
    add byte ptr [rax], al  ; 0x1400011be
    add byte ptr [rax], al  ; 0x1400011c0
    add byte ptr [rax], al  ; 0x1400011c2
    add byte ptr [rax], al  ; 0x1400011c4
    add byte ptr [rax], al  ; 0x1400011c6
    add byte ptr [rax], al  ; 0x1400011c8
    add byte ptr [rax], al  ; 0x1400011ca
    add byte ptr [rax], al  ; 0x1400011cc
    add byte ptr [rax], al  ; 0x1400011ce
    add byte ptr [rax], al  ; 0x1400011d0
    add byte ptr [rax], al  ; 0x1400011d2
    add byte ptr [rax], al  ; 0x1400011d4
    add byte ptr [rax], al  ; 0x1400011d6
    add byte ptr [rax], al  ; 0x1400011d8
    add byte ptr [rax], al  ; 0x1400011da
    add byte ptr [rax], al  ; 0x1400011dc
    add byte ptr [rax], al  ; 0x1400011de
    add byte ptr [rax], al  ; 0x1400011e0
    add byte ptr [rax], al  ; 0x1400011e2
    add byte ptr [rax], al  ; 0x1400011e4
    add byte ptr [rax], al  ; 0x1400011e6
    add byte ptr [rax], al  ; 0x1400011e8
    add byte ptr [rax], al  ; 0x1400011ea
    add byte ptr [rax], al  ; 0x1400011ec
    add byte ptr [rax], al  ; 0x1400011ee
    add byte ptr [rax], al  ; 0x1400011f0
    add byte ptr [rax], al  ; 0x1400011f2
    add byte ptr [rax], al  ; 0x1400011f4
    add byte ptr [rax], al  ; 0x1400011f6
    add byte ptr [rax], al  ; 0x1400011f8
    add byte ptr [rax], al  ; 0x1400011fa
    add byte ptr [rax], al  ; 0x1400011fc
    add byte ptr [rax], al  ; 0x1400011fe
func_140001050 endp

; Program entry point
main_entry:
    call start
    ret

end main_entry