; Simple Disassembler Output
; Source: main.exe
; Architecture: x64
; Entry Point: 0x140004d78

; 64-bit mode
.stack 4096

; External functions
extern FindFirstFileExW: proc
extern FlsGetValue: proc
extern FlsSetValue: proc
extern FlushFileBuffers: proc
extern FreeEnvironmentStringsW: proc
extern FreeLibrary: proc
extern GetACP: proc
extern GetCommandLineW: proc
extern GetLastError: proc
extern GetModuleFileNameW: proc
extern GetModuleHandleExW: proc
extern GetModuleHandleW: proc
extern GetProcAddress: proc
extern GetProcessHeap: proc
extern IsDebuggerPresent: proc
extern LeaveCriticalSection: proc
extern LoadLibraryExW: proc
extern SetEnvironmentVariableW: proc
extern SetUnhandledExceptionFilter: proc
extern WideCharToMultiByte: proc

.data
    str_14001e330 db " === C++20 Test v1.1 ==== ", 0
    str_14001e350 db "Basic math operation test:", 0
    str_14001e3b0 db "Caught exception: ", 0
    str_14001e3c8 db "Advanced math function test:", 0
    str_14001e3f0 db "Caught exception: ", 0
    str_14001e408 db " is prime", 0
    str_14001e418 db " is not prime", 0
    str_14001e428 db ">> Program execution completed!", 0
    str_14001e448 db "Program exception: ", 0
    str_14001e478 db "Unknown exception", 0
    str_14001e490 db "string too long", 0
    str_14001e4a0 db "invalid string position", 0
    str_14001e4e8 db "bad array new length", 0
    str_14001e50e db "$@Division by zero", 0
    str_14001e528 db "Factorial argument must be non-negative", 0
    str_14001e598 db "bad allocation", 0
    str_14001e788 db "bad exception", 0
    str_14001eeb0 db "__based(", 0
    str_14001eec0 db "__cdecl", 0
    str_14001eec8 db "__pascal", 0
    newline db 13, 10, 0

.code

; Main disassembled code
main_code:
    sub rsp, 0x4c8  ; 0x140001000
    mov rax, qword ptr [rip + 0x28ff2]  ; 0x140001007
    xor rax, rsp  ; 0x14000100e
    mov qword ptr [rsp + 0x4b0], rax  ; 0x140001011
    lea rax, [rsp + 0x1f8]  ; 0x140001019
    mov qword ptr [rsp + 0x50], rax  ; 0x140001021
    lea rdx, [rip + 0x1d303]  ; 0x140001026
    mov rcx, qword ptr [rsp + 0x50]  ; 0x14000102d
    call 0x140002030  ; 0x140001032
    mov qword ptr [rsp + 0x58], rax  ; 0x140001037
    mov rcx, qword ptr [rsp + 0x58]  ; 0x14000103c
    call 0x140003780  ; 0x140001041
    nop   ; 0x140001046
    lea rax, [rsp + 0x218]  ; 0x140001047
    mov qword ptr [rsp + 0x60], rax  ; 0x14000104f
    lea rdx, [rip + 0x1d2f5]  ; 0x140001054
    mov rcx, qword ptr [rsp + 0x60]  ; 0x14000105b
    call 0x140002030  ; 0x140001060
    mov qword ptr [rsp + 0x68], rax  ; 0x140001065
    mov rcx, qword ptr [rsp + 0x68]  ; 0x14000106a
    call 0x140003780  ; 0x14000106f
    lea rax, [rsp + 0x1d8]  ; 0x140001074
    mov qword ptr [rsp + 0x80], rax  ; 0x14000107c
    mov edx, 5  ; 0x140001084
    mov ecx, 0xa  ; 0x140001089
    call 0x140003380  ; 0x14000108e
    mov dword ptr [rsp + 0x30], eax  ; 0x140001093
    mov edx, dword ptr [rsp + 0x30]  ; 0x140001097
    lea rcx, [rsp + 0x378]  ; 0x14000109b
    call 0x1400037e0  ; 0x1400010a3
    mov qword ptr [rsp + 0x70], rax  ; 0x1400010a8
    mov rax, qword ptr [rsp + 0x70]  ; 0x1400010ad
    mov qword ptr [rsp + 0x78], rax  ; 0x1400010b2
    mov r8, qword ptr [rsp + 0x78]  ; 0x1400010b7
    lea rdx, [rip + 0x1d2ad]  ; 0x1400010bc
    mov rcx, qword ptr [rsp + 0x80]  ; 0x1400010c3
    call 0x1400015c0  ; 0x1400010cb
    mov qword ptr [rsp + 0x88], rax  ; 0x1400010d0
    mov rcx, qword ptr [rsp + 0x88]  ; 0x1400010d8
    call 0x140003780  ; 0x1400010e0
    nop   ; 0x1400010e5
    lea rcx, [rsp + 0x378]  ; 0x1400010e6
    call 0x1400022c0  ; 0x1400010ee
    lea rax, [rsp + 0x258]  ; 0x1400010f3
    mov qword ptr [rsp + 0xa0], rax  ; 0x1400010fb
    mov edx, 5  ; 0x140001103
    mov ecx, 0xa  ; 0x140001108
    call 0x1400033a0  ; 0x14000110d
    mov dword ptr [rsp + 0x34], eax  ; 0x140001112
    mov edx, dword ptr [rsp + 0x34]  ; 0x140001116
    lea rcx, [rsp + 0x478]  ; 0x14000111a
    call 0x1400037e0  ; 0x140001122
    mov qword ptr [rsp + 0x90], rax  ; 0x140001127
    mov rax, qword ptr [rsp + 0x90]  ; 0x14000112f
    mov qword ptr [rsp + 0x98], rax  ; 0x140001137
    mov r8, qword ptr [rsp + 0x98]  ; 0x14000113f
    lea rdx, [rip + 0x1d232]  ; 0x140001147
    mov rcx, qword ptr [rsp + 0xa0]  ; 0x14000114e
    call 0x1400015c0  ; 0x140001156
    mov qword ptr [rsp + 0xa8], rax  ; 0x14000115b
    mov rcx, qword ptr [rsp + 0xa8]  ; 0x140001163
    call 0x140003780  ; 0x14000116b
    nop   ; 0x140001170
    lea rcx, [rsp + 0x478]  ; 0x140001171
    call 0x1400022c0  ; 0x140001179
    lea rax, [rsp + 0x278]  ; 0x14000117e
    mov qword ptr [rsp + 0xc0], rax  ; 0x140001186
    mov edx, 5  ; 0x14000118e
    mov ecx, 0xa  ; 0x140001193
    call 0x1400033c0  ; 0x140001198
    mov dword ptr [rsp + 0x38], eax  ; 0x14000119d
    mov edx, dword ptr [rsp + 0x38]  ; 0x1400011a1
    lea rcx, [rsp + 0x398]  ; 0x1400011a5
    call 0x1400037e0  ; 0x1400011ad
    mov qword ptr [rsp + 0xb0], rax  ; 0x1400011b2
    mov rax, qword ptr [rsp + 0xb0]  ; 0x1400011ba
    mov qword ptr [rsp + 0xb8], rax  ; 0x1400011c2
    mov r8, qword ptr [rsp + 0xb8]  ; 0x1400011ca
    lea rdx, [rip + 0x1d1b7]  ; 0x1400011d2
    mov rcx, qword ptr [rsp + 0xc0]  ; 0x1400011d9
    call 0x1400015c0  ; 0x1400011e1
    mov qword ptr [rsp + 0xc8], rax  ; 0x1400011e6
    mov rcx, qword ptr [rsp + 0xc8]  ; 0x1400011ee
    call 0x140003780  ; 0x1400011f6
    nop   ; 0x1400011fb
    lea rcx, [rsp + 0x398]  ; 0x1400011fc
    call 0x1400022c0  ; 0x140001204
    nop   ; 0x140001209
    lea rax, [rsp + 0x298]  ; 0x14000120a
    mov qword ptr [rsp + 0xe8], rax  ; 0x140001212
    movsd xmm1, qword ptr [rip + 0x1d2de]  ; 0x14000121a
    movsd xmm0, qword ptr [rip + 0x1d2de]  ; 0x140001222
    call 0x1400033e0  ; 0x14000122a
    movsd qword ptr [rsp + 0xd0], xmm0  ; 0x14000122f
    movsd xmm1, qword ptr [rsp + 0xd0]  ; 0x140001238
    lea rcx, [rsp + 0x3b8]  ; 0x140001241
    call 0x140003820  ; 0x140001249
    mov qword ptr [rsp + 0xd8], rax  ; 0x14000124e
    mov rax, qword ptr [rsp + 0xd8]  ; 0x140001256
    mov qword ptr [rsp + 0xe0], rax  ; 0x14000125e
    mov r8, qword ptr [rsp + 0xe0]  ; 0x140001266
    lea rdx, [rip + 0x1d12b]  ; 0x14000126e
    mov rcx, qword ptr [rsp + 0xe8]  ; 0x140001275
    call 0x1400015c0  ; 0x14000127d
    mov qword ptr [rsp + 0xf0], rax  ; 0x140001282
    mov rcx, qword ptr [rsp + 0xf0]  ; 0x14000128a
    call 0x140003780  ; 0x140001292
    nop   ; 0x140001297
    lea rcx, [rsp + 0x3b8]  ; 0x140001298
    call 0x1400022c0  ; 0x1400012a0
    nop   ; 0x1400012a5
    jmp 0x1400012a8  ; 0x1400012a6
    lea rax, [rsp + 0x2d8]  ; 0x1400012a8
    mov qword ptr [rsp + 0x120], rax  ; 0x1400012b0
    lea rdx, [rip + 0x1d109]  ; 0x1400012b8
    mov rcx, qword ptr [rsp + 0x120]  ; 0x1400012bf
    call 0x140002030  ; 0x1400012c7
    mov qword ptr [rsp + 0x128], rax  ; 0x1400012cc
    mov rcx, qword ptr [rsp + 0x128]  ; 0x1400012d4
    call 0x140003780  ; 0x1400012dc
    lea rax, [rsp + 0x2f8]  ; 0x1400012e1
    mov qword ptr [rsp + 0x140], rax  ; 0x1400012e9
    mov ecx, 5  ; 0x1400012f1
    call 0x1400034e0  ; 0x1400012f6
    mov dword ptr [rsp + 0x3c], eax  ; 0x1400012fb
    mov edx, dword ptr [rsp + 0x3c]  ; 0x1400012ff
    lea rcx, [rsp + 0x3f8]  ; 0x140001303
    call 0x1400037e0  ; 0x14000130b
    mov qword ptr [rsp + 0x130], rax  ; 0x140001310
    mov rax, qword ptr [rsp + 0x130]  ; 0x140001318
    mov qword ptr [rsp + 0x138], rax  ; 0x140001320
    mov r8, qword ptr [rsp + 0x138]  ; 0x140001328
    lea rdx, [rip + 0x1d0b1]  ; 0x140001330
    mov rcx, qword ptr [rsp + 0x140]  ; 0x140001337
    call 0x1400015c0  ; 0x14000133f
    mov qword ptr [rsp + 0x148], rax  ; 0x140001344
    mov rcx, qword ptr [rsp + 0x148]  ; 0x14000134c
    call 0x140003780  ; 0x140001354
    nop   ; 0x140001359
    lea rcx, [rsp + 0x3f8]  ; 0x14000135a
    call 0x1400022c0  ; 0x140001362
    nop   ; 0x140001367
    jmp 0x14000136a  ; 0x140001368
    mov dword ptr [rsp + 0x498], 2  ; 0x14000136a
    mov dword ptr [rsp + 0x49c], 3  ; 0x140001375
    mov dword ptr [rsp + 0x4a0], 4  ; 0x140001380
    mov dword ptr [rsp + 0x4a4], 0x11  ; 0x14000138b
    mov dword ptr [rsp + 0x4a8], 0x19  ; 0x140001396
    mov dword ptr [rsp + 0x4ac], 0x1d  ; 0x1400013a1
    lea rax, [rsp + 0x498]  ; 0x1400013ac
    mov qword ptr [rsp + 0x40], rax  ; 0x1400013b4
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400013b9
    mov qword ptr [rsp + 0x28], rax  ; 0x1400013be
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400013c3
    add rax, 0x18  ; 0x1400013c8
    mov qword ptr [rsp + 0x178], rax  ; 0x1400013cc
    jmp 0x1400013e4  ; 0x1400013d4
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400013d6
    add rax, 4  ; 0x1400013db
    mov qword ptr [rsp + 0x28], rax  ; 0x1400013df
    mov rax, qword ptr [rsp + 0x178]  ; 0x1400013e4
    cmp qword ptr [rsp + 0x28], rax  ; 0x1400013ec
    je 0x1400014ad  ; 0x1400013f1
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400013f7
    mov eax, dword ptr [rax]  ; 0x1400013fc
    mov dword ptr [rsp + 0x24], eax  ; 0x1400013fe
    lea rax, [rsp + 0x338]  ; 0x140001402
    mov qword ptr [rsp + 0x190], rax  ; 0x14000140a
    mov ecx, dword ptr [rsp + 0x24]  ; 0x140001412
    call 0x140003570  ; 0x140001416
    mov byte ptr [rsp + 0x20], al  ; 0x14000141b
    movzx eax, byte ptr [rsp + 0x20]  ; 0x14000141f
    test eax, eax  ; 0x140001424
    je 0x140001436  ; 0x140001426
    lea rax, [rip + 0x1cfd9]  ; 0x140001428
    mov qword ptr [rsp + 0x48], rax  ; 0x14000142f
    jmp 0x140001442  ; 0x140001434
    lea rax, [rip + 0x1cfdb]  ; 0x140001436
    mov qword ptr [rsp + 0x48], rax  ; 0x14000143d
    mov edx, dword ptr [rsp + 0x24]  ; 0x140001442
    lea rcx, [rsp + 0x438]  ; 0x140001446
    call 0x1400037e0  ; 0x14000144e
    mov qword ptr [rsp + 0x180], rax  ; 0x140001453
    mov rax, qword ptr [rsp + 0x180]  ; 0x14000145b
    mov qword ptr [rsp + 0x188], rax  ; 0x140001463
    mov r8, qword ptr [rsp + 0x48]  ; 0x14000146b
    mov rdx, qword ptr [rsp + 0x188]  ; 0x140001470
    mov rcx, qword ptr [rsp + 0x190]  ; 0x140001478
    call 0x140001570  ; 0x140001480
    mov qword ptr [rsp + 0x198], rax  ; 0x140001485
    mov rcx, qword ptr [rsp + 0x198]  ; 0x14000148d
    call 0x140003780  ; 0x140001495
    nop   ; 0x14000149a
    lea rcx, [rsp + 0x438]  ; 0x14000149b
    call 0x1400022c0  ; 0x1400014a3
    jmp 0x1400013d6  ; 0x1400014a8
    lea rax, [rsp + 0x358]  ; 0x1400014ad
    mov qword ptr [rsp + 0x1a0], rax  ; 0x1400014b5
    lea rdx, [rip + 0x1cf64]  ; 0x1400014bd
    mov rcx, qword ptr [rsp + 0x1a0]  ; 0x1400014c4
    call 0x140002030  ; 0x1400014cc
    mov qword ptr [rsp + 0x1a8], rax  ; 0x1400014d1
    mov rcx, qword ptr [rsp + 0x1a8]  ; 0x1400014d9
    call 0x140003780  ; 0x1400014e1
    nop   ; 0x1400014e6
    jmp 0x1400014e9  ; 0x1400014e7
    xor eax, eax  ; 0x1400014e9
    mov rcx, qword ptr [rsp + 0x4b0]  ; 0x1400014eb
    xor rcx, rsp  ; 0x1400014f3
    call 0x140004a50  ; 0x1400014f6
    add rsp, 0x4c8  ; 0x1400014fb
    ret  ; 0x140001502
    int3   ; 0x140001503
    int3   ; 0x140001504
    int3   ; 0x140001505
    int3   ; 0x140001506
    int3   ; 0x140001507
    int3   ; 0x140001508
    int3   ; 0x140001509
    int3   ; 0x14000150a
    int3   ; 0x14000150b
    int3   ; 0x14000150c
    int3   ; 0x14000150d
    int3   ; 0x14000150e
    int3   ; 0x14000150f
    mov byte ptr [rsp + 0x10], dl  ; 0x140001510
    mov qword ptr [rsp + 8], rcx  ; 0x140001514
    sub rsp, 0x28  ; 0x140001519
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000151d
    call 0x1400019c0  ; 0x140001522
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001527
    mov rcx, rax  ; 0x14000152c
    call 0x140001f70  ; 0x14000152f
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001534
    add rsp, 0x28  ; 0x140001539
    ret  ; 0x14000153d
    int3   ; 0x14000153e
    int3   ; 0x14000153f
    mov qword ptr [rsp + 0x18], r8  ; 0x140001540
    mov byte ptr [rsp + 0x10], dl  ; 0x140001545
    mov qword ptr [rsp + 8], rcx  ; 0x140001549
    sub rsp, 0x28  ; 0x14000154e
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001552
    mov rcx, rax  ; 0x140001557
    call 0x140001f70  ; 0x14000155a
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000155f
    add rsp, 0x28  ; 0x140001564
    ret  ; 0x140001568
    int3   ; 0x140001569
    int3   ; 0x14000156a
    int3   ; 0x14000156b
    int3   ; 0x14000156c
    int3   ; 0x14000156d
    int3   ; 0x14000156e
    int3   ; 0x14000156f
    mov qword ptr [rsp + 0x18], r8  ; 0x140001570
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001575
    mov qword ptr [rsp + 8], rcx  ; 0x14000157a
    sub rsp, 0x38  ; 0x14000157f
    mov dword ptr [rsp + 0x20], 0  ; 0x140001583
    mov rdx, qword ptr [rsp + 0x50]  ; 0x14000158b
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001590
    call 0x140002c00  ; 0x140001595
    mov rdx, rax  ; 0x14000159a
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000159d
    call 0x140001fb0  ; 0x1400015a2
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400015a7
    or eax, 1  ; 0x1400015ab
    mov dword ptr [rsp + 0x20], eax  ; 0x1400015ae
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400015b2
    add rsp, 0x38  ; 0x1400015b7
    ret  ; 0x1400015bb
    int3   ; 0x1400015bc
    int3   ; 0x1400015bd
    int3   ; 0x1400015be
    int3   ; 0x1400015bf
    mov qword ptr [rsp + 0x18], r8  ; 0x1400015c0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400015c5
    mov qword ptr [rsp + 8], rcx  ; 0x1400015ca
    sub rsp, 0x38  ; 0x1400015cf
    mov dword ptr [rsp + 0x20], 0  ; 0x1400015d3
    mov r8, qword ptr [rsp + 0x48]  ; 0x1400015db
    xor edx, edx  ; 0x1400015e0
    mov rcx, qword ptr [rsp + 0x50]  ; 0x1400015e2
    call 0x1400030d0  ; 0x1400015e7
    mov rdx, rax  ; 0x1400015ec
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400015ef
    call 0x140001fb0  ; 0x1400015f4
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400015f9
    or eax, 1  ; 0x1400015fd
    mov dword ptr [rsp + 0x20], eax  ; 0x140001600
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001604
    add rsp, 0x38  ; 0x140001609
    ret  ; 0x14000160d
    int3   ; 0x14000160e
    int3   ; 0x14000160f
    mov qword ptr [rsp + 8], rcx  ; 0x140001610
    sub rsp, 0x28  ; 0x140001615
    call 0x140003120  ; 0x140001619
    movzx eax, al  ; 0x14000161e
    test eax, eax  ; 0x140001621
    jne 0x14000163c  ; 0x140001623
    cmp qword ptr [rsp + 0x30], 0x1000  ; 0x140001625
    jb 0x14000163c  ; 0x14000162e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001630
    call 0x140001740  ; 0x140001635
    jmp 0x140001652  ; 0x14000163a
    cmp qword ptr [rsp + 0x30], 0  ; 0x14000163c
    je 0x140001650  ; 0x140001642
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001644
    call 0x140002660  ; 0x140001649
    jmp 0x140001652  ; 0x14000164e
    xor eax, eax  ; 0x140001650
    add rsp, 0x28  ; 0x140001652
    ret  ; 0x140001656
    int3   ; 0x140001657
    int3   ; 0x140001658
    int3   ; 0x140001659
    int3   ; 0x14000165a
    int3   ; 0x14000165b
    int3   ; 0x14000165c
    int3   ; 0x14000165d
    int3   ; 0x14000165e
    int3   ; 0x14000165f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001660
    mov qword ptr [rsp + 8], rcx  ; 0x140001665
    sub rsp, 0x28  ; 0x14000166a
    mov rax, qword ptr [rsp + 0x38]  ; 0x14000166e
    mov rdx, qword ptr [rax]  ; 0x140001673
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001676
    call 0x140002bd0  ; 0x14000167b
    add rsp, 0x28  ; 0x140001680
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
    sub rsp, 0x48  ; 0x14000169a
    mov rax, qword ptr [rsp + 0x58]  ; 0x14000169e
    mov rax, qword ptr [rax]  ; 0x1400016a3
    inc rax  ; 0x1400016a6
    mov rcx, qword ptr [rsp + 0x58]  ; 0x1400016a9
    mov qword ptr [rcx], rax  ; 0x1400016ae
    mov rdx, qword ptr [rsp + 0x58]  ; 0x1400016b1
    mov rcx, qword ptr [rsp + 0x50]  ; 0x1400016b6
    call 0x140001660  ; 0x1400016bb
    mov qword ptr [rsp + 0x28], rax  ; 0x1400016c0
    call 0x140003120  ; 0x1400016c5
    movzx eax, al  ; 0x1400016ca
    test eax, eax  ; 0x1400016cd
    je 0x140001721  ; 0x1400016cf
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400016d1
    call 0x1400019c0  ; 0x1400016d6
    mov qword ptr [rsp + 0x30], rax  ; 0x1400016db
    mov qword ptr [rsp + 0x20], 0  ; 0x1400016e0
    jmp 0x1400016f8  ; 0x1400016e9
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400016eb
    inc rax  ; 0x1400016f0
    mov qword ptr [rsp + 0x20], rax  ; 0x1400016f3
    mov rax, qword ptr [rsp + 0x58]  ; 0x1400016f8
    mov rax, qword ptr [rax]  ; 0x1400016fd
    cmp qword ptr [rsp + 0x20], rax  ; 0x140001700
    jae 0x140001721  ; 0x140001705
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001707
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000170c
    add rcx, rax  ; 0x140001711
    mov rax, rcx  ; 0x140001714
    mov rcx, rax  ; 0x140001717
    call 0x140001e10  ; 0x14000171a
    jmp 0x1400016eb  ; 0x14000171f
    mov rax, qword ptr [rsp + 0x58]  ; 0x140001721
    mov rax, qword ptr [rax]  ; 0x140001726
    dec rax  ; 0x140001729
    mov rcx, qword ptr [rsp + 0x58]  ; 0x14000172c
    mov qword ptr [rcx], rax  ; 0x140001731
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001734
    add rsp, 0x48  ; 0x140001739
    ret  ; 0x14000173d
    int3   ; 0x14000173e
    int3   ; 0x14000173f
    mov qword ptr [rsp + 8], rcx  ; 0x140001740
    sub rsp, 0x48  ; 0x140001745
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001749
    add rax, 0x27  ; 0x14000174e
    mov qword ptr [rsp + 0x28], rax  ; 0x140001752
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001757
    cmp qword ptr [rsp + 0x28], rax  ; 0x14000175c
    ja 0x140001768  ; 0x140001761
    call 0x140002ab0  ; 0x140001763
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140001768
    call 0x140002660  ; 0x14000176d
    mov qword ptr [rsp + 0x20], rax  ; 0x140001772
    cmp qword ptr [rsp + 0x20], 0  ; 0x140001777
    je 0x140001781  ; 0x14000177d
    jmp 0x14000178c  ; 0x14000177f
    call 0x14000b5dc  ; 0x140001781
    xor eax, eax  ; 0x140001786
    test eax, eax  ; 0x140001788
    jne 0x140001781  ; 0x14000178a
    xor eax, eax  ; 0x14000178c
    test eax, eax  ; 0x14000178e
    jne 0x140001777  ; 0x140001790
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001792
    add rax, 0x27  ; 0x140001797
    and rax, 0xffffffffffffffe0  ; 0x14000179b
    mov qword ptr [rsp + 0x30], rax  ; 0x14000179f
    mov eax, 8  ; 0x1400017a4
    imul rax, rax, -1  ; 0x1400017a9
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400017ad
    mov rdx, qword ptr [rsp + 0x20]  ; 0x1400017b2
    mov qword ptr [rcx + rax], rdx  ; 0x1400017b7
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400017bb
    add rsp, 0x48  ; 0x1400017c0
    ret  ; 0x1400017c4
    int3   ; 0x1400017c5
    int3   ; 0x1400017c6
    int3   ; 0x1400017c7
    int3   ; 0x1400017c8
    int3   ; 0x1400017c9
    int3   ; 0x1400017ca
    int3   ; 0x1400017cb
    int3   ; 0x1400017cc
    int3   ; 0x1400017cd
    int3   ; 0x1400017ce
    int3   ; 0x1400017cf
    mov qword ptr [rsp + 0x18], r8  ; 0x1400017d0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400017d5
    mov qword ptr [rsp + 8], rcx  ; 0x1400017da
    sub rsp, 0x58  ; 0x1400017df
    mov rax, qword ptr [rsp + 0x60]  ; 0x1400017e3
    mov qword ptr [rsp + 0x28], rax  ; 0x1400017e8
    mov rcx, qword ptr [rsp + 0x60]  ; 0x1400017ed
    call 0x140003190  ; 0x1400017f2
    cmp qword ptr [rsp + 0x70], rax  ; 0x1400017f7
    jbe 0x140001803  ; 0x1400017fc
    call 0x140002b90  ; 0x1400017fe
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140001803
    call 0x1400027e0  ; 0x140001808
    mov qword ptr [rsp + 0x48], rax  ; 0x14000180d
    lea rax, [rip + 0x1cc71]  ; 0x140001812
    mov qword ptr [rsp + 0x40], rax  ; 0x140001819
    mov r8, qword ptr [rsp + 0x28]  ; 0x14000181e
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140001823
    lea rcx, [rsp + 0x20]  ; 0x140001828
    call 0x1400020b0  ; 0x14000182d
    cmp qword ptr [rsp + 0x70], 0xf  ; 0x140001832
    ja 0x14000189d  ; 0x140001838
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000183a
    mov rcx, qword ptr [rsp + 0x70]  ; 0x14000183f
    mov qword ptr [rax + 0x10], rcx  ; 0x140001844
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001848
    mov qword ptr [rax + 0x18], 0xf  ; 0x14000184d
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001855
    mov r8, qword ptr [rsp + 0x70]  ; 0x14000185a
    mov rdx, qword ptr [rsp + 0x68]  ; 0x14000185f
    mov rcx, rax  ; 0x140001864
    call 0x140002dc0  ; 0x140001867
    mov byte ptr [rsp + 0x21], 0  ; 0x14000186c
    mov rax, qword ptr [rsp + 0x70]  ; 0x140001871
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140001876
    add rcx, rax  ; 0x14000187b
    mov rax, rcx  ; 0x14000187e
    lea rdx, [rsp + 0x21]  ; 0x140001881
    mov rcx, rax  ; 0x140001886
    call 0x140002d80  ; 0x140001889
    lea rcx, [rsp + 0x20]  ; 0x14000188e
    call 0x140001a30  ; 0x140001893
    jmp 0x140001947  ; 0x140001898
    mov rcx, qword ptr [rsp + 0x60]  ; 0x14000189d
    call 0x140003190  ; 0x1400018a2
    mov r8, rax  ; 0x1400018a7
    mov edx, 0xf  ; 0x1400018aa
    mov rcx, qword ptr [rsp + 0x70]  ; 0x1400018af
    call 0x1400026d0  ; 0x1400018b4
    mov qword ptr [rsp + 0x38], rax  ; 0x1400018b9
    lea rdx, [rsp + 0x38]  ; 0x1400018be
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400018c3
    call 0x140001690  ; 0x1400018c8
    mov qword ptr [rsp + 0x30], rax  ; 0x1400018cd
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400018d2
    lea rdx, [rsp + 0x30]  ; 0x1400018d7
    mov rcx, rax  ; 0x1400018dc
    call 0x140001950  ; 0x1400018df
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400018e4
    mov rcx, qword ptr [rsp + 0x70]  ; 0x1400018e9
    mov qword ptr [rax + 0x10], rcx  ; 0x1400018ee
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400018f2
    mov rcx, qword ptr [rsp + 0x38]  ; 0x1400018f7
    mov qword ptr [rax + 0x18], rcx  ; 0x1400018fc
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001900
    call 0x1400019c0  ; 0x140001905
    mov r8, qword ptr [rsp + 0x70]  ; 0x14000190a
    mov rdx, qword ptr [rsp + 0x68]  ; 0x14000190f
    mov rcx, rax  ; 0x140001914
    call 0x140002dc0  ; 0x140001917
    mov byte ptr [rsp + 0x22], 0  ; 0x14000191c
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001921
    call 0x1400019c0  ; 0x140001926
    add rax, qword ptr [rsp + 0x70]  ; 0x14000192b
    lea rdx, [rsp + 0x22]  ; 0x140001930
    mov rcx, rax  ; 0x140001935
    call 0x140002d80  ; 0x140001938
    lea rcx, [rsp + 0x20]  ; 0x14000193d
    call 0x140001a30  ; 0x140001942
    add rsp, 0x58  ; 0x140001947
    ret  ; 0x14000194b
    int3   ; 0x14000194c
    int3   ; 0x14000194d
    int3   ; 0x14000194e
    int3   ; 0x14000194f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001950
    mov qword ptr [rsp + 8], rcx  ; 0x140001955
    sub rsp, 0x38  ; 0x14000195a
    call 0x140003120  ; 0x14000195e
    movzx eax, al  ; 0x140001963
    test eax, eax  ; 0x140001966
    je 0x140001983  ; 0x140001968
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000196a
    call 0x1400019c0  ; 0x14000196f
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140001974
    mov rcx, rax  ; 0x140001979
    call 0x140001e90  ; 0x14000197c
    jmp 0x1400019af  ; 0x140001981
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001983
    call 0x1400019c0  ; 0x140001988
    mov rdx, rax  ; 0x14000198d
    mov ecx, 8  ; 0x140001990
    call 0x140002360  ; 0x140001995
    mov qword ptr [rsp + 0x20], rax  ; 0x14000199a
    mov rax, qword ptr [rsp + 0x20]  ; 0x14000199f
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400019a4
    mov rcx, qword ptr [rcx]  ; 0x1400019a9
    mov qword ptr [rax], rcx  ; 0x1400019ac
    add rsp, 0x38  ; 0x1400019af
    ret  ; 0x1400019b3
    int3   ; 0x1400019b4
    int3   ; 0x1400019b5
    int3   ; 0x1400019b6
    int3   ; 0x1400019b7
    int3   ; 0x1400019b8
    int3   ; 0x1400019b9
    int3   ; 0x1400019ba
    int3   ; 0x1400019bb
    int3   ; 0x1400019bc
    int3   ; 0x1400019bd
    int3   ; 0x1400019be
    int3   ; 0x1400019bf
    mov qword ptr [rsp + 8], rcx  ; 0x1400019c0
    mov rax, qword ptr [rsp + 8]  ; 0x1400019c5
    ret  ; 0x1400019ca
    int3   ; 0x1400019cb
    int3   ; 0x1400019cc
    int3   ; 0x1400019cd
    int3   ; 0x1400019ce
    int3   ; 0x1400019cf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400019d0
    mov qword ptr [rsp + 8], rcx  ; 0x1400019d5
    sub rsp, 0x28  ; 0x1400019da
    call 0x140003120  ; 0x1400019de
    movzx eax, al  ; 0x1400019e3
    test eax, eax  ; 0x1400019e6
    je 0x1400019f6  ; 0x1400019e8
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400019ea
    call 0x1400049b0  ; 0x1400019ef
    jmp 0x140001a20  ; 0x1400019f4
    cmp qword ptr [rsp + 0x38], 0x1000  ; 0x1400019f6
    jb 0x140001a10  ; 0x1400019ff
    lea rdx, [rsp + 0x38]  ; 0x140001a01
    lea rcx, [rsp + 0x30]  ; 0x140001a06
    call 0x1400025b0  ; 0x140001a0b
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140001a10
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001a15
    call 0x1400049b8  ; 0x140001a1a
    nop   ; 0x140001a1f
    add rsp, 0x28  ; 0x140001a20
    ret  ; 0x140001a24
    int3   ; 0x140001a25
    int3   ; 0x140001a26
    int3   ; 0x140001a27
    int3   ; 0x140001a28
    int3   ; 0x140001a29
    int3   ; 0x140001a2a
    int3   ; 0x140001a2b
    int3   ; 0x140001a2c
    int3   ; 0x140001a2d
    int3   ; 0x140001a2e
    int3   ; 0x140001a2f
    mov qword ptr [rsp + 8], rcx  ; 0x140001a30
    ret  ; 0x140001a35
    int3   ; 0x140001a36
    int3   ; 0x140001a37
    int3   ; 0x140001a38
    int3   ; 0x140001a39
    int3   ; 0x140001a3a
    int3   ; 0x140001a3b
    int3   ; 0x140001a3c
    int3   ; 0x140001a3d
    int3   ; 0x140001a3e
    int3   ; 0x140001a3f
    mov qword ptr [rsp + 8], rcx  ; 0x140001a40
    sub rsp, 0x18  ; 0x140001a45
    mov byte ptr [rsp], 0  ; 0x140001a49
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001a4d
    add rsp, 0x18  ; 0x140001a52
    ret  ; 0x140001a56
    int3   ; 0x140001a57
    int3   ; 0x140001a58
    int3   ; 0x140001a59
    int3   ; 0x140001a5a
    int3   ; 0x140001a5b
    int3   ; 0x140001a5c
    int3   ; 0x140001a5d
    int3   ; 0x140001a5e
    int3   ; 0x140001a5f
    mov qword ptr [rsp + 0x20], r9  ; 0x140001a60
    mov byte ptr [rsp + 0x18], r8b  ; 0x140001a65
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001a6a
    mov qword ptr [rsp + 8], rcx  ; 0x140001a6f
    sub rsp, 0x88  ; 0x140001a74
    mov rax, qword ptr [rsp + 0x90]  ; 0x140001a7b
    mov qword ptr [rsp + 0x30], rax  ; 0x140001a83
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001a88
    mov rax, qword ptr [rax + 0x10]  ; 0x140001a8d
    mov qword ptr [rsp + 0x38], rax  ; 0x140001a91
    mov rcx, qword ptr [rsp + 0x90]  ; 0x140001a96
    call 0x140003190  ; 0x140001a9e
    sub rax, qword ptr [rsp + 0x38]  ; 0x140001aa3
    cmp rax, qword ptr [rsp + 0x98]  ; 0x140001aa8
    jae 0x140001ab7  ; 0x140001ab0
    call 0x140002b90  ; 0x140001ab2
    mov rax, qword ptr [rsp + 0x98]  ; 0x140001ab7
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140001abf
    add rcx, rax  ; 0x140001ac4
    mov rax, rcx  ; 0x140001ac7
    mov qword ptr [rsp + 0x48], rax  ; 0x140001aca
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001acf
    mov rax, qword ptr [rax + 0x18]  ; 0x140001ad4
    mov qword ptr [rsp + 0x58], rax  ; 0x140001ad8
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140001add
    mov rcx, qword ptr [rsp + 0x90]  ; 0x140001ae2
    call 0x140002680  ; 0x140001aea
    mov qword ptr [rsp + 0x50], rax  ; 0x140001aef
    mov rcx, qword ptr [rsp + 0x90]  ; 0x140001af4
    call 0x1400027e0  ; 0x140001afc
    mov qword ptr [rsp + 0x68], rax  ; 0x140001b01
    lea rdx, [rsp + 0x50]  ; 0x140001b06
    mov rcx, qword ptr [rsp + 0x68]  ; 0x140001b0b
    call 0x140001690  ; 0x140001b10
    mov qword ptr [rsp + 0x40], rax  ; 0x140001b15
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001b1a
    call 0x140001a30  ; 0x140001b1f
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001b24
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001b29
    mov qword ptr [rax + 0x10], rcx  ; 0x140001b2e
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001b32
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140001b37
    mov qword ptr [rax + 0x18], rcx  ; 0x140001b3c
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001b40
    call 0x1400019c0  ; 0x140001b45
    mov qword ptr [rsp + 0x70], rax  ; 0x140001b4a
    cmp qword ptr [rsp + 0x58], 0xf  ; 0x140001b4f
    jbe 0x140001bc5  ; 0x140001b55
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001b57
    mov rax, qword ptr [rax]  ; 0x140001b5c
    mov qword ptr [rsp + 0x60], rax  ; 0x140001b5f
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140001b64
    call 0x1400019c0  ; 0x140001b69
    mov rcx, qword ptr [rsp + 0xb0]  ; 0x140001b6e
    mov qword ptr [rsp + 0x28], rcx  ; 0x140001b76
    mov rcx, qword ptr [rsp + 0xa8]  ; 0x140001b7b
    mov qword ptr [rsp + 0x20], rcx  ; 0x140001b83
    mov r9, qword ptr [rsp + 0x38]  ; 0x140001b88
    mov r8, rax  ; 0x140001b8d
    mov rdx, qword ptr [rsp + 0x70]  ; 0x140001b90
    lea rcx, [rsp + 0xa0]  ; 0x140001b95
    call 0x140002370  ; 0x140001b9d
    mov r8, qword ptr [rsp + 0x58]  ; 0x140001ba2
    mov rdx, qword ptr [rsp + 0x60]  ; 0x140001ba7
    mov rcx, qword ptr [rsp + 0x68]  ; 0x140001bac
    call 0x1400027a0  ; 0x140001bb1
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001bb6
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001bbb
    mov qword ptr [rax], rcx  ; 0x140001bc0
    jmp 0x140001c10  ; 0x140001bc3
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001bc5
    mov rcx, qword ptr [rsp + 0xb0]  ; 0x140001bca
    mov qword ptr [rsp + 0x28], rcx  ; 0x140001bd2
    mov rcx, qword ptr [rsp + 0xa8]  ; 0x140001bd7
    mov qword ptr [rsp + 0x20], rcx  ; 0x140001bdf
    mov r9, qword ptr [rsp + 0x38]  ; 0x140001be4
    mov r8, rax  ; 0x140001be9
    mov rdx, qword ptr [rsp + 0x70]  ; 0x140001bec
    lea rcx, [rsp + 0xa0]  ; 0x140001bf1
    call 0x140002370  ; 0x140001bf9
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001bfe
    lea rdx, [rsp + 0x40]  ; 0x140001c03
    mov rcx, rax  ; 0x140001c08
    call 0x140001950  ; 0x140001c0b
    mov rax, qword ptr [rsp + 0x90]  ; 0x140001c10
    add rsp, 0x88  ; 0x140001c18
    ret  ; 0x140001c1f
    mov qword ptr [rsp + 0x20], r9  ; 0x140001c20
    mov byte ptr [rsp + 0x18], r8b  ; 0x140001c25
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001c2a
    mov qword ptr [rsp + 8], rcx  ; 0x140001c2f
    sub rsp, 0x98  ; 0x140001c34
    mov rax, qword ptr [rsp + 0xa0]  ; 0x140001c3b
    mov qword ptr [rsp + 0x40], rax  ; 0x140001c43
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001c48
    mov rax, qword ptr [rax + 0x10]  ; 0x140001c4d
    mov qword ptr [rsp + 0x48], rax  ; 0x140001c51
    mov rcx, qword ptr [rsp + 0xa0]  ; 0x140001c56
    call 0x140003190  ; 0x140001c5e
    sub rax, qword ptr [rsp + 0x48]  ; 0x140001c63
    cmp rax, qword ptr [rsp + 0xa8]  ; 0x140001c68
    jae 0x140001c77  ; 0x140001c70
    call 0x140002b90  ; 0x140001c72
    mov rax, qword ptr [rsp + 0xa8]  ; 0x140001c77
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001c7f
    add rcx, rax  ; 0x140001c84
    mov rax, rcx  ; 0x140001c87
    mov qword ptr [rsp + 0x58], rax  ; 0x140001c8a
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001c8f
    mov rax, qword ptr [rax + 0x18]  ; 0x140001c94
    mov qword ptr [rsp + 0x68], rax  ; 0x140001c98
    mov rdx, qword ptr [rsp + 0x58]  ; 0x140001c9d
    mov rcx, qword ptr [rsp + 0xa0]  ; 0x140001ca2
    call 0x140002680  ; 0x140001caa
    mov qword ptr [rsp + 0x60], rax  ; 0x140001caf
    mov rcx, qword ptr [rsp + 0xa0]  ; 0x140001cb4
    call 0x1400027e0  ; 0x140001cbc
    mov qword ptr [rsp + 0x78], rax  ; 0x140001cc1
    lea rdx, [rsp + 0x60]  ; 0x140001cc6
    mov rcx, qword ptr [rsp + 0x78]  ; 0x140001ccb
    call 0x140001690  ; 0x140001cd0
    mov qword ptr [rsp + 0x50], rax  ; 0x140001cd5
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001cda
    call 0x140001a30  ; 0x140001cdf
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001ce4
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140001ce9
    mov qword ptr [rax + 0x10], rcx  ; 0x140001cee
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001cf2
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140001cf7
    mov qword ptr [rax + 0x18], rcx  ; 0x140001cfc
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140001d00
    call 0x1400019c0  ; 0x140001d05
    mov qword ptr [rsp + 0x80], rax  ; 0x140001d0a
    cmp qword ptr [rsp + 0x68], 0xf  ; 0x140001d12
    jbe 0x140001d98  ; 0x140001d18
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001d1a
    mov rax, qword ptr [rax]  ; 0x140001d1f
    mov qword ptr [rsp + 0x70], rax  ; 0x140001d22
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140001d27
    call 0x1400019c0  ; 0x140001d2c
    mov rcx, qword ptr [rsp + 0xc8]  ; 0x140001d31
    mov qword ptr [rsp + 0x30], rcx  ; 0x140001d39
    mov rcx, qword ptr [rsp + 0xc0]  ; 0x140001d3e
    mov qword ptr [rsp + 0x28], rcx  ; 0x140001d46
    mov rcx, qword ptr [rsp + 0xb8]  ; 0x140001d4b
    mov qword ptr [rsp + 0x20], rcx  ; 0x140001d53
    mov r9, qword ptr [rsp + 0x48]  ; 0x140001d58
    mov r8, rax  ; 0x140001d5d
    mov rdx, qword ptr [rsp + 0x80]  ; 0x140001d60
    lea rcx, [rsp + 0xb0]  ; 0x140001d68
    call 0x1400023f0  ; 0x140001d70
    mov r8, qword ptr [rsp + 0x68]  ; 0x140001d75
    mov rdx, qword ptr [rsp + 0x70]  ; 0x140001d7a
    mov rcx, qword ptr [rsp + 0x78]  ; 0x140001d7f
    call 0x1400027a0  ; 0x140001d84
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001d89
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140001d8e
    mov qword ptr [rax], rcx  ; 0x140001d93
    jmp 0x140001df3  ; 0x140001d96
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001d98
    mov rcx, qword ptr [rsp + 0xc8]  ; 0x140001d9d
    mov qword ptr [rsp + 0x30], rcx  ; 0x140001da5
    mov rcx, qword ptr [rsp + 0xc0]  ; 0x140001daa
    mov qword ptr [rsp + 0x28], rcx  ; 0x140001db2
    mov rcx, qword ptr [rsp + 0xb8]  ; 0x140001db7
    mov qword ptr [rsp + 0x20], rcx  ; 0x140001dbf
    mov r9, qword ptr [rsp + 0x48]  ; 0x140001dc4
    mov r8, rax  ; 0x140001dc9
    mov rdx, qword ptr [rsp + 0x80]  ; 0x140001dcc
    lea rcx, [rsp + 0xb0]  ; 0x140001dd4
    call 0x1400023f0  ; 0x140001ddc
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001de1
    lea rdx, [rsp + 0x50]  ; 0x140001de6
    mov rcx, rax  ; 0x140001deb
    call 0x140001950  ; 0x140001dee
    mov rax, qword ptr [rsp + 0xa0]  ; 0x140001df3
    add rsp, 0x98  ; 0x140001dfb
    ret  ; 0x140001e02
    int3   ; 0x140001e03
    int3   ; 0x140001e04
    int3   ; 0x140001e05
    int3   ; 0x140001e06
    int3   ; 0x140001e07
    int3   ; 0x140001e08
    int3   ; 0x140001e09
    int3   ; 0x140001e0a
    int3   ; 0x140001e0b
    int3   ; 0x140001e0c
    int3   ; 0x140001e0d
    int3   ; 0x140001e0e
    int3   ; 0x140001e0f
    mov qword ptr [rsp + 8], rcx  ; 0x140001e10
    push rdi  ; 0x140001e15
    sub rsp, 0x30  ; 0x140001e16
    mov qword ptr [rsp + 0x20], 1  ; 0x140001e1a
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140001e23
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140001e28
    call 0x140002360  ; 0x140001e2d
    mov qword ptr [rsp + 0x28], rax  ; 0x140001e32
    mov rdi, qword ptr [rsp + 0x28]  ; 0x140001e37
    xor eax, eax  ; 0x140001e3c
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140001e3e
    rep stosb byte ptr [rdi], al  ; 0x140001e43
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001e45
    add rsp, 0x30  ; 0x140001e4a
    pop rdi  ; 0x140001e4e
    ret  ; 0x140001e4f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001e50
    mov qword ptr [rsp + 8], rcx  ; 0x140001e55
    sub rsp, 0x38  ; 0x140001e5a
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140001e5e
    mov ecx, 1  ; 0x140001e63
    call 0x140002360  ; 0x140001e68
    mov qword ptr [rsp + 0x20], rax  ; 0x140001e6d
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001e72
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001e77
    movzx ecx, byte ptr [rcx]  ; 0x140001e7c
    mov byte ptr [rax], cl  ; 0x140001e7f
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001e81
    add rsp, 0x38  ; 0x140001e86
    ret  ; 0x140001e8a
    int3   ; 0x140001e8b
    int3   ; 0x140001e8c
    int3   ; 0x140001e8d
    int3   ; 0x140001e8e
    int3   ; 0x140001e8f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001e90
    mov qword ptr [rsp + 8], rcx  ; 0x140001e95
    sub rsp, 0x38  ; 0x140001e9a
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140001e9e
    mov ecx, 8  ; 0x140001ea3
    call 0x140002360  ; 0x140001ea8
    mov qword ptr [rsp + 0x20], rax  ; 0x140001ead
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001eb2
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001eb7
    mov rcx, qword ptr [rcx]  ; 0x140001ebc
    mov qword ptr [rax], rcx  ; 0x140001ebf
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001ec2
    add rsp, 0x38  ; 0x140001ec7
    ret  ; 0x140001ecb
    int3   ; 0x140001ecc
    int3   ; 0x140001ecd
    int3   ; 0x140001ece
    int3   ; 0x140001ecf
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001ed0
    mov qword ptr [rsp + 8], rcx  ; 0x140001ed5
    sub rsp, 0x18  ; 0x140001eda
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001ede
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140001ee3
    mov rcx, qword ptr [rcx]  ; 0x140001ee8
    cmp qword ptr [rax], rcx  ; 0x140001eeb
    jae 0x140001efb  ; 0x140001eee
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001ef0
    mov qword ptr [rsp], rax  ; 0x140001ef5
    jmp 0x140001f04  ; 0x140001ef9
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001efb
    mov qword ptr [rsp], rax  ; 0x140001f00
    mov rax, qword ptr [rsp]  ; 0x140001f04
    mov qword ptr [rsp + 8], rax  ; 0x140001f08
    mov rax, qword ptr [rsp + 8]  ; 0x140001f0d
    add rsp, 0x18  ; 0x140001f12
    ret  ; 0x140001f16
    int3   ; 0x140001f17
    int3   ; 0x140001f18
    int3   ; 0x140001f19
    int3   ; 0x140001f1a
    int3   ; 0x140001f1b
    int3   ; 0x140001f1c
    int3   ; 0x140001f1d
    int3   ; 0x140001f1e
    int3   ; 0x140001f1f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001f20
    mov qword ptr [rsp + 8], rcx  ; 0x140001f25
    sub rsp, 0x18  ; 0x140001f2a
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001f2e
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140001f33
    mov rcx, qword ptr [rcx]  ; 0x140001f38
    cmp qword ptr [rax], rcx  ; 0x140001f3b
    jae 0x140001f4b  ; 0x140001f3e
    mov rax, qword ptr [rsp + 0x28]  ; 0x140001f40
    mov qword ptr [rsp], rax  ; 0x140001f45
    jmp 0x140001f54  ; 0x140001f49
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001f4b
    mov qword ptr [rsp], rax  ; 0x140001f50
    mov rax, qword ptr [rsp]  ; 0x140001f54
    mov qword ptr [rsp + 8], rax  ; 0x140001f58
    mov rax, qword ptr [rsp + 8]  ; 0x140001f5d
    add rsp, 0x18  ; 0x140001f62
    ret  ; 0x140001f66
    int3   ; 0x140001f67
    int3   ; 0x140001f68
    int3   ; 0x140001f69
    int3   ; 0x140001f6a
    int3   ; 0x140001f6b
    int3   ; 0x140001f6c
    int3   ; 0x140001f6d
    int3   ; 0x140001f6e
    int3   ; 0x140001f6f
    mov qword ptr [rsp + 8], rcx  ; 0x140001f70
    sub rsp, 0x28  ; 0x140001f75
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001f79
    mov rcx, rax  ; 0x140001f7e
    call 0x140002090  ; 0x140001f81
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001f86
    mov qword ptr [rax + 0x10], 0  ; 0x140001f8b
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001f93
    mov qword ptr [rax + 0x18], 0  ; 0x140001f98
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001fa0
    add rsp, 0x28  ; 0x140001fa5
    ret  ; 0x140001fa9
    int3   ; 0x140001faa
    int3   ; 0x140001fab
    int3   ; 0x140001fac
    int3   ; 0x140001fad
    int3   ; 0x140001fae
    int3   ; 0x140001faf
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001fb0
    mov qword ptr [rsp + 8], rcx  ; 0x140001fb5
    sub rsp, 0x48  ; 0x140001fba
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001fbe
    mov qword ptr [rsp + 0x30], rax  ; 0x140001fc3
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140001fc8
    call 0x1400027e0  ; 0x140001fcd
    mov qword ptr [rsp + 0x28], rax  ; 0x140001fd2
    movzx eax, byte ptr [rsp + 0x21]  ; 0x140001fd7
    mov byte ptr [rsp + 0x20], al  ; 0x140001fdc
    mov r8, qword ptr [rsp + 0x28]  ; 0x140001fe0
    movzx edx, byte ptr [rsp + 0x20]  ; 0x140001fe5
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001fea
    call 0x140001540  ; 0x140001fef
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001ff4
    mov qword ptr [rsp + 0x38], rax  ; 0x140001ff9
    lea rdx, [rip + 0x1c485]  ; 0x140001ffe
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002005
    call 0x140002650  ; 0x14000200a
    mov rdx, qword ptr [rsp + 0x58]  ; 0x14000200f
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002014
    call 0x140002900  ; 0x140002019
    mov rax, qword ptr [rsp + 0x50]  ; 0x14000201e
    add rsp, 0x48  ; 0x140002023
    ret  ; 0x140002027
    int3   ; 0x140002028
    int3   ; 0x140002029
    int3   ; 0x14000202a
    int3   ; 0x14000202b
    int3   ; 0x14000202c
    int3   ; 0x14000202d
    int3   ; 0x14000202e
    int3   ; 0x14000202f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002030
    mov qword ptr [rsp + 8], rcx  ; 0x140002035
    sub rsp, 0x38  ; 0x14000203a
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000203e
    mov qword ptr [rsp + 0x28], rax  ; 0x140002043
    movzx edx, byte ptr [rsp + 0x20]  ; 0x140002048
    mov rcx, qword ptr [rsp + 0x28]  ; 0x14000204d
    call 0x140001510  ; 0x140002052
    nop   ; 0x140002057
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140002058
    call 0x140003130  ; 0x14000205d
    mov rcx, rax  ; 0x140002062
    call 0x1400019c0  ; 0x140002065
    mov r8, rax  ; 0x14000206a
    mov rdx, qword ptr [rsp + 0x48]  ; 0x14000206d
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002072
    call 0x1400017d0  ; 0x140002077
    nop   ; 0x14000207c
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000207d
    add rsp, 0x38  ; 0x140002082
    ret  ; 0x140002086
    int3   ; 0x140002087
    int3   ; 0x140002088
    int3   ; 0x140002089
    int3   ; 0x14000208a
    int3   ; 0x14000208b
    int3   ; 0x14000208c
    int3   ; 0x14000208d

start:
    ; Program entry point
    call main_code
    ret

end start