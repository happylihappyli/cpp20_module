; Simple Disassembler Output
; Source: hello.exe
; Architecture: x64
; Entry Point: 0x140003630

; 64-bit mode
.stack 4096

; External functions
extern CompareStringW: proc
extern CreateFileW: proc
extern EnterCriticalSection: proc
extern FindClose: proc
extern FlsAlloc: proc
extern FlsGetValue: proc
extern GetCommandLineW: proc
extern GetConsoleMode: proc
extern GetFileType: proc
extern GetModuleHandleExW: proc
extern HeapSize: proc
extern IsProcessorFeaturePresent: proc
extern LeaveCriticalSection: proc
extern LoadLibraryExW: proc
extern RaiseException: proc
extern TlsAlloc: proc
extern TlsGetValue: proc
extern UnhandledExceptionFilter: proc
extern WideCharToMultiByte: proc
extern WriteFile: proc

.data
    str_14001d330 db " === C++20 ", 0
    str_14001d341 db " v1.1 ==== ", 0
    str_14001d350 db "string too long", 0
    str_14001d3a8 db "Unknown exception", 0
    str_14001d3c0 db "bad array new length", 0
    str_14001d3e0 db "bad allocation", 0
    str_14001d5c8 db "bad exception", 0
    str_14001dcf0 db "__based(", 0
    str_14001dd00 db "__cdecl", 0
    str_14001dd08 db "__pascal", 0
    str_14001dd18 db "__stdcall", 0
    str_14001dd28 db "__thiscall", 0
    str_14001dd38 db "__fastcall", 0
    str_14001dd48 db "__vectorcall", 0
    str_14001dd58 db "__clrcall", 0
    str_14001dd64 db "__eabi", 0
    str_14001dd70 db "__swift_1", 0
    str_14001dd80 db "__swift_2", 0
    str_14001dd90 db "__swift_3", 0
    str_14001dda0 db "__ptr64", 0
    newline db 13, 10, 0

.code

; Main disassembled code
main_code:
    sub rsp, 0x58  ; 0x140001000
    lea rax, [rsp + 0x30]  ; 0x140001004
    mov qword ptr [rsp + 0x20], rax  ; 0x140001009
    lea rdx, [rip + 0x1c31b]  ; 0x14000100e
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140001015
    call 0x1400015f0  ; 0x14000101a
    mov qword ptr [rsp + 0x28], rax  ; 0x14000101f
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140001024
    call 0x140001e10  ; 0x140001029
    xor eax, eax  ; 0x14000102e
    add rsp, 0x58  ; 0x140001030
    ret  ; 0x140001034
    int3   ; 0x140001035
    int3   ; 0x140001036
    int3   ; 0x140001037
    int3   ; 0x140001038
    int3   ; 0x140001039
    int3   ; 0x14000103a
    int3   ; 0x14000103b
    int3   ; 0x14000103c
    int3   ; 0x14000103d
    int3   ; 0x14000103e
    int3   ; 0x14000103f
    mov byte ptr [rsp + 0x10], dl  ; 0x140001040
    mov qword ptr [rsp + 8], rcx  ; 0x140001044
    sub rsp, 0x28  ; 0x140001049
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000104d
    call 0x140001420  ; 0x140001052
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001057
    mov rcx, rax  ; 0x14000105c
    call 0x1400015b0  ; 0x14000105f
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001064
    add rsp, 0x28  ; 0x140001069
    ret  ; 0x14000106d
    int3   ; 0x14000106e
    int3   ; 0x14000106f
    mov qword ptr [rsp + 8], rcx  ; 0x140001070
    sub rsp, 0x28  ; 0x140001075
    call 0x140001cf0  ; 0x140001079
    movzx eax, al  ; 0x14000107e
    test eax, eax  ; 0x140001081
    jne 0x14000109c  ; 0x140001083
    cmp qword ptr [rsp + 0x30], 0x1000  ; 0x140001085
    jb 0x14000109c  ; 0x14000108e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001090
    call 0x1400011a0  ; 0x140001095
    jmp 0x1400010b2  ; 0x14000109a
    cmp qword ptr [rsp + 0x30], 0  ; 0x14000109c
    je 0x1400010b0  ; 0x1400010a2
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400010a4
    call 0x140001a70  ; 0x1400010a9
    jmp 0x1400010b2  ; 0x1400010ae
    xor eax, eax  ; 0x1400010b0
    add rsp, 0x28  ; 0x1400010b2
    ret  ; 0x1400010b6
    int3   ; 0x1400010b7
    int3   ; 0x1400010b8
    int3   ; 0x1400010b9
    int3   ; 0x1400010ba
    int3   ; 0x1400010bb
    int3   ; 0x1400010bc
    int3   ; 0x1400010bd
    int3   ; 0x1400010be
    int3   ; 0x1400010bf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400010c0
    mov qword ptr [rsp + 8], rcx  ; 0x1400010c5
    sub rsp, 0x28  ; 0x1400010ca
    mov rax, qword ptr [rsp + 0x38]  ; 0x1400010ce
    mov rdx, qword ptr [rax]  ; 0x1400010d3
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400010d6
    call 0x140001ba0  ; 0x1400010db
    add rsp, 0x28  ; 0x1400010e0
    ret  ; 0x1400010e4
    int3   ; 0x1400010e5
    int3   ; 0x1400010e6
    int3   ; 0x1400010e7
    int3   ; 0x1400010e8
    int3   ; 0x1400010e9
    int3   ; 0x1400010ea
    int3   ; 0x1400010eb
    int3   ; 0x1400010ec
    int3   ; 0x1400010ed
    int3   ; 0x1400010ee
    int3   ; 0x1400010ef
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400010f0
    mov qword ptr [rsp + 8], rcx  ; 0x1400010f5
    sub rsp, 0x48  ; 0x1400010fa
    mov rax, qword ptr [rsp + 0x58]  ; 0x1400010fe
    mov rax, qword ptr [rax]  ; 0x140001103
    inc rax  ; 0x140001106
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140001109
    mov qword ptr [rcx], rax  ; 0x14000110e
    mov rdx, qword ptr [rsp + 0x58]  ; 0x140001111
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140001116
    call 0x1400010c0  ; 0x14000111b
    mov qword ptr [rsp + 0x28], rax  ; 0x140001120
    call 0x140001cf0  ; 0x140001125
    movzx eax, al  ; 0x14000112a
    test eax, eax  ; 0x14000112d
    je 0x140001181  ; 0x14000112f
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140001131
    call 0x140001420  ; 0x140001136
    mov qword ptr [rsp + 0x30], rax  ; 0x14000113b
    mov qword ptr [rsp + 0x20], 0  ; 0x140001140
    jmp 0x140001158  ; 0x140001149
    mov rax, qword ptr [rsp + 0x20]  ; 0x14000114b
    inc rax  ; 0x140001150
    mov qword ptr [rsp + 0x20], rax  ; 0x140001153
    mov rax, qword ptr [rsp + 0x58]  ; 0x140001158
    mov rax, qword ptr [rax]  ; 0x14000115d
    cmp qword ptr [rsp + 0x20], rax  ; 0x140001160
    jae 0x140001181  ; 0x140001165
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001167
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000116c
    add rcx, rax  ; 0x140001171
    mov rax, rcx  ; 0x140001174
    mov rcx, rax  ; 0x140001177
    call 0x140001450  ; 0x14000117a
    jmp 0x14000114b  ; 0x14000117f
    mov rax, qword ptr [rsp + 0x58]  ; 0x140001181
    mov rax, qword ptr [rax]  ; 0x140001186
    dec rax  ; 0x140001189
    mov rcx, qword ptr [rsp + 0x58]  ; 0x14000118c
    mov qword ptr [rcx], rax  ; 0x140001191
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001194
    add rsp, 0x48  ; 0x140001199
    ret  ; 0x14000119d
    int3   ; 0x14000119e
    int3   ; 0x14000119f
    mov qword ptr [rsp + 8], rcx  ; 0x1400011a0
    sub rsp, 0x48  ; 0x1400011a5
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400011a9
    add rax, 0x27  ; 0x1400011ae
    mov qword ptr [rsp + 0x28], rax  ; 0x1400011b2
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400011b7
    cmp qword ptr [rsp + 0x28], rax  ; 0x1400011bc
    ja 0x1400011c8  ; 0x1400011c1
    call 0x140001b50  ; 0x1400011c3
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400011c8
    call 0x140001a70  ; 0x1400011cd
    mov qword ptr [rsp + 0x20], rax  ; 0x1400011d2
    cmp qword ptr [rsp + 0x20], 0  ; 0x1400011d7
    je 0x1400011e1  ; 0x1400011dd
    jmp 0x1400011ec  ; 0x1400011df
    call 0x140009e8c  ; 0x1400011e1
    xor eax, eax  ; 0x1400011e6
    test eax, eax  ; 0x1400011e8
    jne 0x1400011e1  ; 0x1400011ea
    xor eax, eax  ; 0x1400011ec
    test eax, eax  ; 0x1400011ee
    jne 0x1400011d7  ; 0x1400011f0
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400011f2
    add rax, 0x27  ; 0x1400011f7
    and rax, 0xffffffffffffffe0  ; 0x1400011fb
    mov qword ptr [rsp + 0x30], rax  ; 0x1400011ff
    mov eax, 8  ; 0x140001204
    imul rax, rax, -1  ; 0x140001209
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000120d
    mov rdx, qword ptr [rsp + 0x20]  ; 0x140001212
    mov qword ptr [rcx + rax], rdx  ; 0x140001217
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000121b
    add rsp, 0x48  ; 0x140001220
    ret  ; 0x140001224
    int3   ; 0x140001225
    int3   ; 0x140001226
    int3   ; 0x140001227
    int3   ; 0x140001228
    int3   ; 0x140001229
    int3   ; 0x14000122a
    int3   ; 0x14000122b
    int3   ; 0x14000122c
    int3   ; 0x14000122d
    int3   ; 0x14000122e
    int3   ; 0x14000122f
    mov qword ptr [rsp + 0x18], r8  ; 0x140001230
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001235
    mov qword ptr [rsp + 8], rcx  ; 0x14000123a
    sub rsp, 0x58  ; 0x14000123f
    mov rax, qword ptr [rsp + 0x60]  ; 0x140001243
    mov qword ptr [rsp + 0x28], rax  ; 0x140001248
    mov rcx, qword ptr [rsp + 0x60]  ; 0x14000124d
    call 0x140001d60  ; 0x140001252
    cmp qword ptr [rsp + 0x70], rax  ; 0x140001257
    jbe 0x140001263  ; 0x14000125c
    call 0x140001b80  ; 0x14000125e
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140001263
    call 0x140001b30  ; 0x140001268
    mov qword ptr [rsp + 0x48], rax  ; 0x14000126d
    lea rax, [rip + 0x1c0d4]  ; 0x140001272
    mov qword ptr [rsp + 0x40], rax  ; 0x140001279
    mov r8, qword ptr [rsp + 0x28]  ; 0x14000127e
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140001283
    lea rcx, [rsp + 0x20]  ; 0x140001288
    call 0x140001670  ; 0x14000128d
    cmp qword ptr [rsp + 0x70], 0xf  ; 0x140001292
    ja 0x1400012fd  ; 0x140001298
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000129a
    mov rcx, qword ptr [rsp + 0x70]  ; 0x14000129f
    mov qword ptr [rax + 0x10], rcx  ; 0x1400012a4
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400012a8
    mov qword ptr [rax + 0x18], 0xf  ; 0x1400012ad
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400012b5
    mov r8, qword ptr [rsp + 0x70]  ; 0x1400012ba
    mov rdx, qword ptr [rsp + 0x68]  ; 0x1400012bf
    mov rcx, rax  ; 0x1400012c4
    call 0x140001c60  ; 0x1400012c7
    mov byte ptr [rsp + 0x21], 0  ; 0x1400012cc
    mov rax, qword ptr [rsp + 0x70]  ; 0x1400012d1
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400012d6
    add rcx, rax  ; 0x1400012db
    mov rax, rcx  ; 0x1400012de
    lea rdx, [rsp + 0x21]  ; 0x1400012e1
    mov rcx, rax  ; 0x1400012e6
    call 0x140001c20  ; 0x1400012e9
    lea rcx, [rsp + 0x20]  ; 0x1400012ee
    call 0x140001880  ; 0x1400012f3
    jmp 0x1400013a7  ; 0x1400012f8
    mov rcx, qword ptr [rsp + 0x60]  ; 0x1400012fd
    call 0x140001d60  ; 0x140001302
    mov r8, rax  ; 0x140001307
    mov edx, 0xf  ; 0x14000130a
    mov rcx, qword ptr [rsp + 0x70]  ; 0x14000130f
    call 0x140001a90  ; 0x140001314
    mov qword ptr [rsp + 0x38], rax  ; 0x140001319
    lea rdx, [rsp + 0x38]  ; 0x14000131e
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001323
    call 0x1400010f0  ; 0x140001328
    mov qword ptr [rsp + 0x30], rax  ; 0x14000132d
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001332
    lea rdx, [rsp + 0x30]  ; 0x140001337
    mov rcx, rax  ; 0x14000133c
    call 0x1400013b0  ; 0x14000133f
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001344
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140001349
    mov qword ptr [rax + 0x10], rcx  ; 0x14000134e
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001352
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140001357
    mov qword ptr [rax + 0x18], rcx  ; 0x14000135c
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001360
    call 0x140001420  ; 0x140001365
    mov r8, qword ptr [rsp + 0x70]  ; 0x14000136a
    mov rdx, qword ptr [rsp + 0x68]  ; 0x14000136f
    mov rcx, rax  ; 0x140001374
    call 0x140001c60  ; 0x140001377
    mov byte ptr [rsp + 0x22], 0  ; 0x14000137c
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001381
    call 0x140001420  ; 0x140001386
    add rax, qword ptr [rsp + 0x70]  ; 0x14000138b
    lea rdx, [rsp + 0x22]  ; 0x140001390
    mov rcx, rax  ; 0x140001395
    call 0x140001c20  ; 0x140001398
    lea rcx, [rsp + 0x20]  ; 0x14000139d
    call 0x140001880  ; 0x1400013a2
    add rsp, 0x58  ; 0x1400013a7
    ret  ; 0x1400013ab
    int3   ; 0x1400013ac
    int3   ; 0x1400013ad
    int3   ; 0x1400013ae
    int3   ; 0x1400013af
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400013b0
    mov qword ptr [rsp + 8], rcx  ; 0x1400013b5
    sub rsp, 0x38  ; 0x1400013ba
    call 0x140001cf0  ; 0x1400013be
    movzx eax, al  ; 0x1400013c3
    test eax, eax  ; 0x1400013c6
    je 0x1400013e3  ; 0x1400013c8
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400013ca
    call 0x140001420  ; 0x1400013cf
    mov rdx, qword ptr [rsp + 0x48]  ; 0x1400013d4
    mov rcx, rax  ; 0x1400013d9
    call 0x1400014d0  ; 0x1400013dc
    jmp 0x14000140f  ; 0x1400013e1
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400013e3
    call 0x140001420  ; 0x1400013e8
    mov rdx, rax  ; 0x1400013ed
    mov ecx, 8  ; 0x1400013f0
    call 0x140001900  ; 0x1400013f5
    mov qword ptr [rsp + 0x20], rax  ; 0x1400013fa
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400013ff
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001404
    mov rcx, qword ptr [rcx]  ; 0x140001409
    mov qword ptr [rax], rcx  ; 0x14000140c
    add rsp, 0x38  ; 0x14000140f
    ret  ; 0x140001413
    int3   ; 0x140001414
    int3   ; 0x140001415
    int3   ; 0x140001416
    int3   ; 0x140001417
    int3   ; 0x140001418
    int3   ; 0x140001419
    int3   ; 0x14000141a
    int3   ; 0x14000141b
    int3   ; 0x14000141c
    int3   ; 0x14000141d
    int3   ; 0x14000141e
    int3   ; 0x14000141f
    mov qword ptr [rsp + 8], rcx  ; 0x140001420
    mov rax, qword ptr [rsp + 8]  ; 0x140001425
    ret  ; 0x14000142a
    int3   ; 0x14000142b
    int3   ; 0x14000142c
    int3   ; 0x14000142d
    int3   ; 0x14000142e
    int3   ; 0x14000142f
    mov qword ptr [rsp + 8], rcx  ; 0x140001430
    sub rsp, 0x18  ; 0x140001435
    mov byte ptr [rsp], 0  ; 0x140001439
    mov rax, qword ptr [rsp + 0x20]  ; 0x14000143d
    add rsp, 0x18  ; 0x140001442
    ret  ; 0x140001446
    int3   ; 0x140001447
    int3   ; 0x140001448
    int3   ; 0x140001449
    int3   ; 0x14000144a
    int3   ; 0x14000144b
    int3   ; 0x14000144c
    int3   ; 0x14000144d
    int3   ; 0x14000144e
    int3   ; 0x14000144f
    mov qword ptr [rsp + 8], rcx  ; 0x140001450
    push rdi  ; 0x140001455
    sub rsp, 0x30  ; 0x140001456
    mov qword ptr [rsp + 0x20], 1  ; 0x14000145a
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140001463
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140001468
    call 0x140001900  ; 0x14000146d
    mov qword ptr [rsp + 0x28], rax  ; 0x140001472
    mov rdi, qword ptr [rsp + 0x28]  ; 0x140001477
    xor eax, eax  ; 0x14000147c
    mov rcx, qword ptr [rsp + 0x20]  ; 0x14000147e
    rep stosb byte ptr [rdi], al  ; 0x140001483
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001485
    add rsp, 0x30  ; 0x14000148a
    pop rdi  ; 0x14000148e
    ret  ; 0x14000148f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001490
    mov qword ptr [rsp + 8], rcx  ; 0x140001495
    sub rsp, 0x38  ; 0x14000149a
    mov rdx, qword ptr [rsp + 0x40]  ; 0x14000149e
    mov ecx, 1  ; 0x1400014a3
    call 0x140001900  ; 0x1400014a8
    mov qword ptr [rsp + 0x20], rax  ; 0x1400014ad
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400014b2
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400014b7
    movzx ecx, byte ptr [rcx]  ; 0x1400014bc
    mov byte ptr [rax], cl  ; 0x1400014bf
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400014c1
    add rsp, 0x38  ; 0x1400014c6
    ret  ; 0x1400014ca
    int3   ; 0x1400014cb
    int3   ; 0x1400014cc
    int3   ; 0x1400014cd
    int3   ; 0x1400014ce
    int3   ; 0x1400014cf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400014d0
    mov qword ptr [rsp + 8], rcx  ; 0x1400014d5
    sub rsp, 0x38  ; 0x1400014da
    mov rdx, qword ptr [rsp + 0x40]  ; 0x1400014de
    mov ecx, 8  ; 0x1400014e3
    call 0x140001900  ; 0x1400014e8
    mov qword ptr [rsp + 0x20], rax  ; 0x1400014ed
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400014f2
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400014f7
    mov rcx, qword ptr [rcx]  ; 0x1400014fc
    mov qword ptr [rax], rcx  ; 0x1400014ff
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001502
    add rsp, 0x38  ; 0x140001507
    ret  ; 0x14000150b
    int3   ; 0x14000150c
    int3   ; 0x14000150d
    int3   ; 0x14000150e
    int3   ; 0x14000150f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001510
    mov qword ptr [rsp + 8], rcx  ; 0x140001515
    sub rsp, 0x18  ; 0x14000151a
    mov rax, qword ptr [rsp + 0x20]  ; 0x14000151e
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140001523
    mov rcx, qword ptr [rcx]  ; 0x140001528
    cmp qword ptr [rax], rcx  ; 0x14000152b
    jae 0x14000153b  ; 0x14000152e
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001530
    mov qword ptr [rsp], rax  ; 0x140001535
    jmp 0x140001544  ; 0x140001539
    mov rax, qword ptr [rsp + 0x20]  ; 0x14000153b
    mov qword ptr [rsp], rax  ; 0x140001540
    mov rax, qword ptr [rsp]  ; 0x140001544
    mov qword ptr [rsp + 8], rax  ; 0x140001548
    mov rax, qword ptr [rsp + 8]  ; 0x14000154d
    add rsp, 0x18  ; 0x140001552
    ret  ; 0x140001556
    int3   ; 0x140001557
    int3   ; 0x140001558
    int3   ; 0x140001559
    int3   ; 0x14000155a
    int3   ; 0x14000155b
    int3   ; 0x14000155c
    int3   ; 0x14000155d
    int3   ; 0x14000155e
    int3   ; 0x14000155f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001560
    mov qword ptr [rsp + 8], rcx  ; 0x140001565
    sub rsp, 0x18  ; 0x14000156a
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000156e
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140001573
    mov rcx, qword ptr [rcx]  ; 0x140001578
    cmp qword ptr [rax], rcx  ; 0x14000157b
    jae 0x14000158b  ; 0x14000157e
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001580
    mov qword ptr [rsp], rax  ; 0x140001585
    jmp 0x140001594  ; 0x140001589
    mov rax, qword ptr [rsp + 0x20]  ; 0x14000158b
    mov qword ptr [rsp], rax  ; 0x140001590
    mov rax, qword ptr [rsp]  ; 0x140001594
    mov qword ptr [rsp + 8], rax  ; 0x140001598
    mov rax, qword ptr [rsp + 8]  ; 0x14000159d
    add rsp, 0x18  ; 0x1400015a2
    ret  ; 0x1400015a6
    int3   ; 0x1400015a7
    int3   ; 0x1400015a8
    int3   ; 0x1400015a9
    int3   ; 0x1400015aa
    int3   ; 0x1400015ab
    int3   ; 0x1400015ac
    int3   ; 0x1400015ad
    int3   ; 0x1400015ae
    int3   ; 0x1400015af
    mov qword ptr [rsp + 8], rcx  ; 0x1400015b0
    sub rsp, 0x28  ; 0x1400015b5
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400015b9
    mov rcx, rax  ; 0x1400015be
    call 0x140001650  ; 0x1400015c1
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400015c6
    mov qword ptr [rax + 0x10], 0  ; 0x1400015cb
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400015d3
    mov qword ptr [rax + 0x18], 0  ; 0x1400015d8
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400015e0
    add rsp, 0x28  ; 0x1400015e5
    ret  ; 0x1400015e9
    int3   ; 0x1400015ea
    int3   ; 0x1400015eb
    int3   ; 0x1400015ec
    int3   ; 0x1400015ed
    int3   ; 0x1400015ee
    int3   ; 0x1400015ef
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400015f0
    mov qword ptr [rsp + 8], rcx  ; 0x1400015f5
    sub rsp, 0x38  ; 0x1400015fa
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400015fe
    mov qword ptr [rsp + 0x28], rax  ; 0x140001603
    movzx edx, byte ptr [rsp + 0x20]  ; 0x140001608
    mov rcx, qword ptr [rsp + 0x28]  ; 0x14000160d
    call 0x140001040  ; 0x140001612
    nop   ; 0x140001617
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001618
    call 0x140001d00  ; 0x14000161d
    mov rcx, rax  ; 0x140001622
    call 0x140001420  ; 0x140001625
    mov r8, rax  ; 0x14000162a
    mov rdx, qword ptr [rsp + 0x48]  ; 0x14000162d
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001632
    call 0x140001230  ; 0x140001637
    nop   ; 0x14000163c
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000163d
    add rsp, 0x38  ; 0x140001642
    ret  ; 0x140001646
    int3   ; 0x140001647
    int3   ; 0x140001648
    int3   ; 0x140001649
    int3   ; 0x14000164a
    int3   ; 0x14000164b
    int3   ; 0x14000164c
    int3   ; 0x14000164d
    int3   ; 0x14000164e
    int3   ; 0x14000164f
    mov qword ptr [rsp + 8], rcx  ; 0x140001650
    push rdi  ; 0x140001655
    mov rax, qword ptr [rsp + 0x10]  ; 0x140001656
    mov rdi, qword ptr [rsp + 0x10]  ; 0x14000165b
    xor eax, eax  ; 0x140001660
    mov ecx, 0x10  ; 0x140001662
    rep stosb byte ptr [rdi], al  ; 0x140001667
    mov rax, qword ptr [rsp + 0x10]  ; 0x140001669
    pop rdi  ; 0x14000166e
    ret  ; 0x14000166f
    mov qword ptr [rsp + 0x18], r8  ; 0x140001670
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001675
    mov qword ptr [rsp + 8], rcx  ; 0x14000167a
    mov rax, qword ptr [rsp + 8]  ; 0x14000167f
    ret  ; 0x140001684
    int3   ; 0x140001685
    int3   ; 0x140001686
    int3   ; 0x140001687
    int3   ; 0x140001688
    int3   ; 0x140001689
    int3   ; 0x14000168a
    int3   ; 0x14000168b
    int3   ; 0x14000168c
    int3   ; 0x14000168d
    int3   ; 0x14000168e
    int3   ; 0x14000168f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001690
    mov qword ptr [rsp + 8], rcx  ; 0x140001695
    sub rsp, 0x28  ; 0x14000169a
    mov r8d, 1  ; 0x14000169e
    mov rdx, qword ptr [rsp + 0x38]  ; 0x1400016a4
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400016a9
    call 0x1400017f0  ; 0x1400016ae
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400016b3
    lea rcx, [rip + 0x1bcc1]  ; 0x1400016b8
    mov qword ptr [rax], rcx  ; 0x1400016bf
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400016c2
    add rsp, 0x28  ; 0x1400016c7
    ret  ; 0x1400016cb
    int3   ; 0x1400016cc
    int3   ; 0x1400016cd
    int3   ; 0x1400016ce
    int3   ; 0x1400016cf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400016d0
    mov qword ptr [rsp + 8], rcx  ; 0x1400016d5
    sub rsp, 0x28  ; 0x1400016da
    mov rdx, qword ptr [rsp + 0x38]  ; 0x1400016de
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400016e3
    call 0x140001790  ; 0x1400016e8
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400016ed
    lea rcx, [rip + 0x1bc87]  ; 0x1400016f2
    mov qword ptr [rax], rcx  ; 0x1400016f9
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400016fc
    add rsp, 0x28  ; 0x140001701
    ret  ; 0x140001705
    int3   ; 0x140001706
    int3   ; 0x140001707
    int3   ; 0x140001708
    int3   ; 0x140001709
    int3   ; 0x14000170a
    int3   ; 0x14000170b
    int3   ; 0x14000170c
    int3   ; 0x14000170d
    int3   ; 0x14000170e
    int3   ; 0x14000170f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001710
    mov qword ptr [rsp + 8], rcx  ; 0x140001715
    sub rsp, 0x28  ; 0x14000171a
    mov rdx, qword ptr [rsp + 0x38]  ; 0x14000171e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001723
    call 0x1400016d0  ; 0x140001728
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000172d
    lea rcx, [rip + 0x1bc5f]  ; 0x140001732
    mov qword ptr [rax], rcx  ; 0x140001739
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000173c
    add rsp, 0x28  ; 0x140001741
    ret  ; 0x140001745
    int3   ; 0x140001746
    int3   ; 0x140001747
    int3   ; 0x140001748
    int3   ; 0x140001749
    int3   ; 0x14000174a
    int3   ; 0x14000174b
    int3   ; 0x14000174c
    int3   ; 0x14000174d
    int3   ; 0x14000174e
    int3   ; 0x14000174f
    mov qword ptr [rsp + 8], rcx  ; 0x140001750
    sub rsp, 0x28  ; 0x140001755
    lea rdx, [rip + 0x1bc60]  ; 0x140001759
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001760
    call 0x140001690  ; 0x140001765
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000176a
    lea rcx, [rip + 0x1bc22]  ; 0x14000176f
    mov qword ptr [rax], rcx  ; 0x140001776
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001779
    add rsp, 0x28  ; 0x14000177e
    ret  ; 0x140001782
    int3   ; 0x140001783
    int3   ; 0x140001784
    int3   ; 0x140001785
    int3   ; 0x140001786
    int3   ; 0x140001787
    int3   ; 0x140001788
    int3   ; 0x140001789
    int3   ; 0x14000178a
    int3   ; 0x14000178b
    int3   ; 0x14000178c
    int3   ; 0x14000178d
    int3   ; 0x14000178e
    int3   ; 0x14000178f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001790
    mov qword ptr [rsp + 8], rcx  ; 0x140001795
    push rdi  ; 0x14000179a
    sub rsp, 0x20  ; 0x14000179b
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000179f
    lea rcx, [rip + 0x1bbbd]  ; 0x1400017a4
    mov qword ptr [rax], rcx  ; 0x1400017ab
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400017ae
    add rax, 8  ; 0x1400017b3
    mov rdi, rax  ; 0x1400017b7
    xor eax, eax  ; 0x1400017ba
    mov ecx, 0x10  ; 0x1400017bc
    rep stosb byte ptr [rdi], al  ; 0x1400017c1
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400017c3
    add rax, 8  ; 0x1400017c8
    mov rcx, qword ptr [rsp + 0x38]  ; 0x1400017cc
    add rcx, 8  ; 0x1400017d1
    mov rdx, rax  ; 0x1400017d5
    call 0x1400040c0  ; 0x1400017d8
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400017dd
    add rsp, 0x20  ; 0x1400017e2
    pop rdi  ; 0x1400017e6
    ret  ; 0x1400017e7
    int3   ; 0x1400017e8
    int3   ; 0x1400017e9
    int3   ; 0x1400017ea
    int3   ; 0x1400017eb
    int3   ; 0x1400017ec
    int3   ; 0x1400017ed
    int3   ; 0x1400017ee
    int3   ; 0x1400017ef
    mov dword ptr [rsp + 0x18], r8d  ; 0x1400017f0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400017f5
    mov qword ptr [rsp + 8], rcx  ; 0x1400017fa
    push rdi  ; 0x1400017ff
    mov rax, qword ptr [rsp + 0x10]  ; 0x140001800
    lea rcx, [rip + 0x1bb5c]  ; 0x140001805
    mov qword ptr [rax], rcx  ; 0x14000180c
    mov rax, qword ptr [rsp + 0x10]  ; 0x14000180f
    add rax, 8  ; 0x140001814
    mov rdi, rax  ; 0x140001818
    xor eax, eax  ; 0x14000181b
    mov ecx, 0x10  ; 0x14000181d
    rep stosb byte ptr [rdi], al  ; 0x140001822
    mov rax, qword ptr [rsp + 0x10]  ; 0x140001824
    mov rcx, qword ptr [rsp + 0x18]  ; 0x140001829
    mov qword ptr [rax + 8], rcx  ; 0x14000182e
    mov rax, qword ptr [rsp + 0x10]  ; 0x140001832
    pop rdi  ; 0x140001837
    ret  ; 0x140001838
    int3   ; 0x140001839
    int3   ; 0x14000183a
    int3   ; 0x14000183b
    int3   ; 0x14000183c
    int3   ; 0x14000183d
    int3   ; 0x14000183e
    int3   ; 0x14000183f
    mov qword ptr [rsp + 8], rcx  ; 0x140001840
    sub rsp, 0x28  ; 0x140001845
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001849
    mov rcx, rax  ; 0x14000184e
    call 0x140001860  ; 0x140001851
    add rsp, 0x28  ; 0x140001856
    ret  ; 0x14000185a
    int3   ; 0x14000185b
    int3   ; 0x14000185c
    int3   ; 0x14000185d
    int3   ; 0x14000185e
    int3   ; 0x14000185f
    mov qword ptr [rsp + 8], rcx  ; 0x140001860
    sub rsp, 0x28  ; 0x140001865
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001869
    mov rcx, rax  ; 0x14000186e
    call 0x140001880  ; 0x140001871
    add rsp, 0x28  ; 0x140001876
    ret  ; 0x14000187a
    int3   ; 0x14000187b
    int3   ; 0x14000187c
    int3   ; 0x14000187d
    int3   ; 0x14000187e
    int3   ; 0x14000187f
    mov qword ptr [rsp + 8], rcx  ; 0x140001880
    ret  ; 0x140001885
    int3   ; 0x140001886
    int3   ; 0x140001887
    int3   ; 0x140001888
    int3   ; 0x140001889
    int3   ; 0x14000188a
    int3   ; 0x14000188b
    int3   ; 0x14000188c
    int3   ; 0x14000188d
    int3   ; 0x14000188e
    int3   ; 0x14000188f
    mov qword ptr [rsp + 8], rcx  ; 0x140001890
    sub rsp, 0x28  ; 0x140001895
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001899
    call 0x1400018d0  ; 0x14000189e
    add rsp, 0x28  ; 0x1400018a3
    ret  ; 0x1400018a7
    int3   ; 0x1400018a8
    int3   ; 0x1400018a9
    int3   ; 0x1400018aa
    int3   ; 0x1400018ab
    int3   ; 0x1400018ac
    int3   ; 0x1400018ad
    int3   ; 0x1400018ae
    int3   ; 0x1400018af
    mov qword ptr [rsp + 8], rcx  ; 0x1400018b0
    sub rsp, 0x28  ; 0x1400018b5
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400018b9
    call 0x140001890  ; 0x1400018be
    add rsp, 0x28  ; 0x1400018c3
    ret  ; 0x1400018c7
    int3   ; 0x1400018c8
    int3   ; 0x1400018c9
    int3   ; 0x1400018ca
    int3   ; 0x1400018cb
    int3   ; 0x1400018cc
    int3   ; 0x1400018cd
    int3   ; 0x1400018ce
    int3   ; 0x1400018cf
    mov qword ptr [rsp + 8], rcx  ; 0x1400018d0
    sub rsp, 0x28  ; 0x1400018d5
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400018d9
    lea rcx, [rip + 0x1ba83]  ; 0x1400018de
    mov qword ptr [rax], rcx  ; 0x1400018e5
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400018e8
    add rax, 8  ; 0x1400018ed
    mov rcx, rax  ; 0x1400018f1
    call 0x140004150  ; 0x1400018f4
    add rsp, 0x28  ; 0x1400018f9
    ret  ; 0x1400018fd
    int3   ; 0x1400018fe
    int3   ; 0x1400018ff
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001900
    mov qword ptr [rsp + 8], rcx  ; 0x140001905
    mov rax, qword ptr [rsp + 0x10]  ; 0x14000190a
    ret  ; 0x14000190f
    mov dword ptr [rsp + 0x10], edx  ; 0x140001910
    mov qword ptr [rsp + 8], rcx  ; 0x140001914
    sub rsp, 0x28  ; 0x140001919
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000191d
    call 0x140001890  ; 0x140001922
    mov eax, dword ptr [rsp + 0x38]  ; 0x140001927
    and eax, 1  ; 0x14000192b
    test eax, eax  ; 0x14000192e
    je 0x140001941  ; 0x140001930
    mov edx, 0x18  ; 0x140001932
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001937
    call 0x1400032e4  ; 0x14000193c
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001941
    add rsp, 0x28  ; 0x140001946
    ret  ; 0x14000194a
    int3   ; 0x14000194b
    int3   ; 0x14000194c
    int3   ; 0x14000194d
    int3   ; 0x14000194e
    int3   ; 0x14000194f
    mov dword ptr [rsp + 0x10], edx  ; 0x140001950
    mov qword ptr [rsp + 8], rcx  ; 0x140001954
    sub rsp, 0x28  ; 0x140001959
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000195d
    call 0x1400018b0  ; 0x140001962
    mov eax, dword ptr [rsp + 0x38]  ; 0x140001967
    and eax, 1  ; 0x14000196b
    test eax, eax  ; 0x14000196e
    je 0x140001981  ; 0x140001970
    mov edx, 0x18  ; 0x140001972
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001977
    call 0x1400032e4  ; 0x14000197c
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001981
    add rsp, 0x28  ; 0x140001986
    ret  ; 0x14000198a
    int3   ; 0x14000198b
    int3   ; 0x14000198c
    int3   ; 0x14000198d
    int3   ; 0x14000198e
    int3   ; 0x14000198f
    mov dword ptr [rsp + 0x10], edx  ; 0x140001990
    mov qword ptr [rsp + 8], rcx  ; 0x140001994
    sub rsp, 0x28  ; 0x140001999
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000199d
    call 0x1400018d0  ; 0x1400019a2
    mov eax, dword ptr [rsp + 0x38]  ; 0x1400019a7
    and eax, 1  ; 0x1400019ab
    test eax, eax  ; 0x1400019ae
    je 0x1400019c1  ; 0x1400019b0
    mov edx, 0x18  ; 0x1400019b2
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400019b7
    call 0x1400032e4  ; 0x1400019bc
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400019c1
    add rsp, 0x28  ; 0x1400019c6
    ret  ; 0x1400019ca
    int3   ; 0x1400019cb
    int3   ; 0x1400019cc
    int3   ; 0x1400019cd
    int3   ; 0x1400019ce
    int3   ; 0x1400019cf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400019d0
    mov qword ptr [rsp + 8], rcx  ; 0x1400019d5
    sub rsp, 0x48  ; 0x1400019da
    mov rax, qword ptr [rsp + 0x58]  ; 0x1400019de
    mov rax, qword ptr [rax]  ; 0x1400019e3
    add rax, 0x27  ; 0x1400019e6
    mov rcx, qword ptr [rsp + 0x58]  ; 0x1400019ea
    mov qword ptr [rcx], rax  ; 0x1400019ef
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400019f2
    mov rax, qword ptr [rax]  ; 0x1400019f7
    mov qword ptr [rsp + 0x30], rax  ; 0x1400019fa
    mov eax, 8  ; 0x1400019ff
    imul rax, rax, -1  ; 0x140001a04
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001a08
    mov rax, qword ptr [rcx + rax]  ; 0x140001a0d
    mov qword ptr [rsp + 0x28], rax  ; 0x140001a11
    mov qword ptr [rsp + 0x38], 8  ; 0x140001a16
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001a1f
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140001a24
    mov rax, qword ptr [rax]  ; 0x140001a29
    sub rax, rcx  ; 0x140001a2c
    mov qword ptr [rsp + 0x20], rax  ; 0x140001a2f
    cmp qword ptr [rsp + 0x20], 8  ; 0x140001a34
    jb 0x140001a46  ; 0x140001a3a
    cmp qword ptr [rsp + 0x20], 0x27  ; 0x140001a3c
    ja 0x140001a46  ; 0x140001a42
    jmp 0x140001a51  ; 0x140001a44
    call 0x140009e8c  ; 0x140001a46
    xor eax, eax  ; 0x140001a4b
    test eax, eax  ; 0x140001a4d
    jne 0x140001a46  ; 0x140001a4f
    xor eax, eax  ; 0x140001a51
    test eax, eax  ; 0x140001a53
    jne 0x140001a34  ; 0x140001a55
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001a57
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140001a5c
    mov qword ptr [rax], rcx  ; 0x140001a61
    add rsp, 0x48  ; 0x140001a64
    ret  ; 0x140001a68
    int3   ; 0x140001a69
    int3   ; 0x140001a6a
    int3   ; 0x140001a6b
    int3   ; 0x140001a6c
    int3   ; 0x140001a6d
    int3   ; 0x140001a6e
    int3   ; 0x140001a6f
    mov qword ptr [rsp + 8], rcx  ; 0x140001a70
    sub rsp, 0x28  ; 0x140001a75
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001a79
    call 0x1400032a8  ; 0x140001a7e
    add rsp, 0x28  ; 0x140001a83
    ret  ; 0x140001a87
    int3   ; 0x140001a88
    int3   ; 0x140001a89
    int3   ; 0x140001a8a
    int3   ; 0x140001a8b
    int3   ; 0x140001a8c
    int3   ; 0x140001a8d
    int3   ; 0x140001a8e
    int3   ; 0x140001a8f
    mov qword ptr [rsp + 0x18], r8  ; 0x140001a90
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001a95
    mov qword ptr [rsp + 8], rcx  ; 0x140001a9a
    sub rsp, 0x38  ; 0x140001a9f
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001aa3
    or rax, 0xf  ; 0x140001aa8
    mov qword ptr [rsp + 0x20], rax  ; 0x140001aac
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001ab1
    cmp qword ptr [rsp + 0x20], rax  ; 0x140001ab6
    jbe 0x140001ac4  ; 0x140001abb
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001abd
    jmp 0x140001b1d  ; 0x140001ac2
    xor edx, edx  ; 0x140001ac4
    mov rax, qword ptr [rsp + 0x48]  ; 0x140001ac6
    mov ecx, 2  ; 0x140001acb
    div rcx  ; 0x140001ad0
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140001ad3
    sub rcx, rax  ; 0x140001ad8
    mov rax, rcx  ; 0x140001adb
    cmp qword ptr [rsp + 0x48], rax  ; 0x140001ade
    jbe 0x140001aec  ; 0x140001ae3
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001ae5
    jmp 0x140001b1d  ; 0x140001aea
    xor edx, edx  ; 0x140001aec
    mov rax, qword ptr [rsp + 0x48]  ; 0x140001aee
    mov ecx, 2  ; 0x140001af3
    div rcx  ; 0x140001af8
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001afb
    add rcx, rax  ; 0x140001b00
    mov rax, rcx  ; 0x140001b03
    mov qword ptr [rsp + 0x28], rax  ; 0x140001b06
    lea rdx, [rsp + 0x28]  ; 0x140001b0b
    lea rcx, [rsp + 0x20]  ; 0x140001b10
    call 0x140001510  ; 0x140001b15
    mov rax, qword ptr [rax]  ; 0x140001b1a
    add rsp, 0x38  ; 0x140001b1d
    ret  ; 0x140001b21
    int3   ; 0x140001b22
    int3   ; 0x140001b23
    int3   ; 0x140001b24
    int3   ; 0x140001b25
    int3   ; 0x140001b26
    int3   ; 0x140001b27
    int3   ; 0x140001b28
    int3   ; 0x140001b29
    int3   ; 0x140001b2a
    int3   ; 0x140001b2b
    int3   ; 0x140001b2c
    int3   ; 0x140001b2d
    int3   ; 0x140001b2e
    int3   ; 0x140001b2f
    mov qword ptr [rsp + 8], rcx  ; 0x140001b30
    sub rsp, 0x28  ; 0x140001b35
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001b39
    mov rcx, rax  ; 0x140001b3e
    call 0x140001420  ; 0x140001b41
    add rsp, 0x28  ; 0x140001b46
    ret  ; 0x140001b4a
    int3   ; 0x140001b4b
    int3   ; 0x140001b4c
    int3   ; 0x140001b4d
    int3   ; 0x140001b4e
    int3   ; 0x140001b4f
    sub rsp, 0x48  ; 0x140001b50
    lea rcx, [rsp + 0x20]  ; 0x140001b54
    call 0x140001750  ; 0x140001b59
    lea rdx, [rip + 0x25c43]  ; 0x140001b5e
    lea rcx, [rsp + 0x20]  ; 0x140001b65
    call 0x140004178  ; 0x140001b6a
    add rsp, 0x48  ; 0x140001b6f
    ret  ; 0x140001b73
    int3   ; 0x140001b74
    int3   ; 0x140001b75
    int3   ; 0x140001b76
    int3   ; 0x140001b77
    int3   ; 0x140001b78
    int3   ; 0x140001b79
    int3   ; 0x140001b7a
    int3   ; 0x140001b7b
    int3   ; 0x140001b7c
    int3   ; 0x140001b7d
    int3   ; 0x140001b7e
    int3   ; 0x140001b7f
    sub rsp, 0x28  ; 0x140001b80
    lea rcx, [rip + 0x1b7c5]  ; 0x140001b84
    call 0x140003284  ; 0x140001b8b
    add rsp, 0x28  ; 0x140001b90
    ret  ; 0x140001b94
    int3   ; 0x140001b95
    int3   ; 0x140001b96
    int3   ; 0x140001b97
    int3   ; 0x140001b98
    int3   ; 0x140001b99
    int3   ; 0x140001b9a
    int3   ; 0x140001b9b
    int3   ; 0x140001b9c
    int3   ; 0x140001b9d
    int3   ; 0x140001b9e
    int3   ; 0x140001b9f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001ba0
    mov qword ptr [rsp + 8], rcx  ; 0x140001ba5
    sub rsp, 0x28  ; 0x140001baa
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140001bae
    call 0x140001430  ; 0x140001bb3
    mov rcx, rax  ; 0x140001bb8
    call 0x140001070  ; 0x140001bbb
    add rsp, 0x28  ; 0x140001bc0
    ret  ; 0x140001bc4
    int3   ; 0x140001bc5
    int3   ; 0x140001bc6
    int3   ; 0x140001bc7
    int3   ; 0x140001bc8
    int3   ; 0x140001bc9
    int3   ; 0x140001bca
    int3   ; 0x140001bcb
    int3   ; 0x140001bcc
    int3   ; 0x140001bcd
    int3   ; 0x140001bce
    int3   ; 0x140001bcf
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001bd0
    mov qword ptr [rsp + 8], rcx  ; 0x140001bd5
    sub rsp, 0x28  ; 0x140001bda
    call 0x140001cf0  ; 0x140001bde
    movzx eax, al  ; 0x140001be3
    test eax, eax  ; 0x140001be6
    je 0x140001c03  ; 0x140001be8
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001bea
    call 0x140001420  ; 0x140001bef
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140001bf4
    mov rcx, rax  ; 0x140001bf9
    call 0x140001490  ; 0x140001bfc
    jmp 0x140001c12  ; 0x140001c01
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001c03
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140001c08
    movzx ecx, byte ptr [rcx]  ; 0x140001c0d
    mov byte ptr [rax], cl  ; 0x140001c10
    add rsp, 0x28  ; 0x140001c12
    ret  ; 0x140001c16
    int3   ; 0x140001c17
    int3   ; 0x140001c18
    int3   ; 0x140001c19
    int3   ; 0x140001c1a
    int3   ; 0x140001c1b
    int3   ; 0x140001c1c
    int3   ; 0x140001c1d
    int3   ; 0x140001c1e
    int3   ; 0x140001c1f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001c20
    mov qword ptr [rsp + 8], rcx  ; 0x140001c25
    sub rsp, 0x28  ; 0x140001c2a
    call 0x140001cf0  ; 0x140001c2e
    movzx eax, al  ; 0x140001c33
    test eax, eax  ; 0x140001c36
    je 0x140001c4b  ; 0x140001c38
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140001c3a
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001c3f
    call 0x140001bd0  ; 0x140001c44

start:
    ; Program entry point
    call main_code
    ret

end start