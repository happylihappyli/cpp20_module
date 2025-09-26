; Universal Disassembler Output
; Source: main.exe
; Architecture: x64
; Image Base: 0x140000000
; Entry Point: 0x140004d78
; Total Instructions: 28020
; Total Functions: 113

; 64-bit mode
.stack 4096

; External functions
extern SetConsoleOutputCP: proc
extern RtlCaptureContext: proc
extern RtlLookupFunctionEntry: proc
extern RtlVirtualUnwind: proc
extern UnhandledExceptionFilter: proc
extern SetUnhandledExceptionFilter: proc
extern GetCurrentProcess: proc
extern TerminateProcess: proc
extern IsProcessorFeaturePresent: proc
extern QueryPerformanceCounter: proc
extern GetCurrentProcessId: proc
extern GetCurrentThreadId: proc
extern GetSystemTimeAsFileTime: proc
extern InitializeSListHead: proc
extern IsDebuggerPresent: proc
extern GetStartupInfoW: proc
extern GetModuleHandleW: proc
extern WriteConsoleW: proc
extern RtlPcToFileHeader: proc
extern RaiseException: proc
extern RtlUnwindEx: proc
extern GetLastError: proc
extern SetLastError: proc
extern EncodePointer: proc
extern EnterCriticalSection: proc
extern LeaveCriticalSection: proc
extern DeleteCriticalSection: proc
extern InitializeCriticalSectionAndSpinCount: proc
extern TlsAlloc: proc
extern TlsGetValue: proc
extern TlsSetValue: proc
extern TlsFree: proc
extern FreeLibrary: proc
extern GetProcAddress: proc
extern LoadLibraryExW: proc
extern GetStdHandle: proc
extern WriteFile: proc
extern GetModuleFileNameW: proc
extern ExitProcess: proc
extern GetModuleHandleExW: proc
extern GetCommandLineA: proc
extern GetCommandLineW: proc
extern HeapAlloc: proc
extern HeapFree: proc
extern FlsAlloc: proc
extern FlsGetValue: proc
extern FlsSetValue: proc
extern FlsFree: proc
extern CompareStringW: proc
extern LCMapStringW: proc
extern GetFileType: proc
extern FindClose: proc
extern FindFirstFileExW: proc
extern FindNextFileW: proc
extern IsValidCodePage: proc
extern GetACP: proc
extern GetOEMCP: proc
extern GetCPInfo: proc
extern MultiByteToWideChar: proc
extern WideCharToMultiByte: proc
extern GetEnvironmentStringsW: proc
extern FreeEnvironmentStringsW: proc
extern SetEnvironmentVariableW: proc
extern SetStdHandle: proc
extern GetStringTypeW: proc
extern GetProcessHeap: proc
extern FlushFileBuffers: proc
extern GetConsoleOutputCP: proc
extern GetConsoleMode: proc
extern GetFileSizeEx: proc
extern SetFilePointerEx: proc
extern HeapSize: proc
extern HeapReAlloc: proc
extern CloseHandle: proc
extern CreateFileW: proc

.data
    ; String constants
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
    str_14001eed8 db "__stdcall", 0
    str_14001eee8 db "__thiscall", 0
    str_14001eef8 db "__fastcall", 0
    str_14001ef08 db "__vectorcall", 0
    str_14001ef18 db "__clrcall", 0
    str_14001ef24 db "__eabi", 0
    str_14001ef30 db "__swift_1", 0
    str_14001ef40 db "__swift_2", 0
    str_14001ef50 db "__swift_3", 0
    str_14001ef60 db "__ptr64", 0
    str_14001ef68 db "__restrict", 0
    str_14001ef78 db "__unaligned", 0
    str_14001ef88 db "restrict(", 0
    str_14001ef94 db " new", 0
    str_14001efa0 db " delete", 0
    str_14001efc8 db "operator", 0
    str_14001f050 db "`vftable'", 0
    str_14001f060 db "`vbtable'", 0
    str_14001f070 db "`vcall'", 0
    str_14001f078 db "`typeof'", 0
    str_14001f088 db "`local static guard'", 0
    str_14001f0a0 db "`string'", 0
    str_14001f0b0 db "`vbase destructor'", 0
    str_14001f0c8 db "`vector deleting destructor'", 0
    str_14001f0e8 db "`default constructor closure'", 0
    str_14001f108 db "`scalar deleting destructor'", 0
    str_14001f128 db "`vector constructor iterator'", 0
    str_14001f148 db "`vector destructor iterator'", 0
    str_14001f168 db "`vector vbase constructor iterator'", 0
    str_14001f190 db "`virtual displacement map'", 0
    str_14001f1b0 db "`eh vector constructor iterator'", 0
    str_14001f1d8 db "`eh vector destructor iterator'", 0
    str_14001f1f8 db "`eh vector vbase constructor iterator'", 0
    str_14001f220 db "`copy constructor closure'", 0
    str_14001f240 db "`udt returning'", 0
    str_14001f254 db "`RTTI", 0
    str_14001f260 db "`local vftable'", 0
    str_14001f270 db "`local vftable constructor closure'", 0
    str_14001f294 db " new[]", 0
    str_14001f2a0 db " delete[]", 0
    str_14001f2b0 db "`omni callsig'", 0
    str_14001f2c0 db "`placement delete closure'", 0
    str_14001f2e0 db "`placement delete[] closure'", 0
    str_14001f300 db "`managed vector constructor iterator'", 0
    str_14001f328 db "`managed vector destructor iterator'", 0
    str_14001f350 db "`eh vector copy constructor iterator'", 0
    str_14001f378 db "`eh vector vbase copy constructor iterator'", 0
    str_14001f3a8 db "`dynamic initializer for '", 0
    str_14001f3c8 db "`dynamic atexit destructor for '", 0
    str_14001f3f0 db "`vector copy constructor iterator'", 0
    str_14001f418 db "`vector vbase copy constructor iterator'", 0
    str_14001f448 db "`managed vector copy constructor iterator'", 0
    str_14001f478 db "`local static thread guard'", 0
    str_14001f498 db "operator \x22\x22 ", 0
    str_14001f4a8 db "operator co_await", 0
    str_14001f4c0 db "operator<=>", 0
    str_14001f4d0 db " Type Descriptor'", 0
    str_14001f4e8 db " Base Class Descriptor at (", 0
    str_14001f508 db " Base Class Array'", 0
    str_14001f520 db " Class Hierarchy Descriptor'", 0
    str_14001f540 db " Complete Object Locator'", 0
    str_14001f560 db "`anonymous namespace'", 0
    str_14001f640 db "FlsAlloc", 0
    str_14001f658 db "FlsFree", 0
    str_14001f668 db "FlsGetValue", 0
    str_14001f680 db "FlsSetValue", 0
    str_14001f698 db "InitializeCriticalSectionEx", 0
    str_14001f8d0 db "(null)", 0
    str_14001fa48 db "CorExitProcess", 0
    str_14001fe5c db "Sunday", 0
    str_14001fe64 db "Monday", 0
    str_14001fe70 db "Tuesday", 0
    str_14001fe78 db "Wednesday", 0
    str_14001fe88 db "Thursday", 0
    str_14001fe94 db "Friday", 0
    str_14001fea0 db "Saturday", 0
    str_14001fee0 db "January", 0
    str_14001fee8 db "February", 0
    str_14001fef4 db "March", 0
    str_14001fefc db "April", 0
    str_14001ff04 db "June", 0
    str_14001ff0c db "July", 0
    str_14001ff14 db "August", 0
    str_14001ff20 db "September", 0
    str_14001ff30 db "October", 0
    str_14001ff38 db "November", 0
    str_14001ff48 db "December", 0
    str_14001ff60 db "MM/dd/yy", 0
    str_14001ff70 db "dddd, MMMM dd, yyyy", 0
    str_14001ff88 db "HH:mm:ss", 0
    str_1400208d0 db "AreFileApisANSI", 0
    str_1400208e8 db "CompareStringEx", 0
    str_140020908 db "LCMapStringEx", 0
    str_140020920 db "LocaleNameToLCID", 0
    str_140020938 db "AppPolicyGetProcessTerminationMethod", 0
    str_1400209f0 db "NAN(SNAN)", 0
    str_140020a00 db "nan(snan)", 0
    str_140020a10 db "NAN(IND)", 0
    str_140020a20 db "nan(ind)", 0
    str_140020a2c db "e+000", 0
    str_140020e40 db " !\x22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\]^_`abcdefghijklmnopqrstuvwxyz{|}~", 0
    str_140020fc0 db " !\x22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~", 0
    str_1400244f0 db "d8L2", 0
    str_14002451c db "[aOni*{", 0
    str_14002457a db "\x22RP(", 0
    str_1400245f3 db "eLK(w", 0
    str_140024660 db "FEMh", 0
    str_14002466e db "h0'D", 0
    str_1400246c0 db "owM&", 0
    str_1400246fd db "~ $s%r", 0
    str_14002470c db "@b;zO]", 0
    str_14002474b db "$qE}", 0
    str_140024789 db ";*xh", 0
    str_140024824 db "iu+-,", 0
    str_14002488a db "\lo}", 0
    str_140024895 db "obwQ4", 0
    str_1400248af db "&Sgw", 0
    str_140024947 db "?nz(", 0
    str_1400249fa db "=87M", 0
    str_140024ae7 db "v2!L.2", 0
    str_140024b69 db "X/4B", 0
    str_140024c07 db "k=yI", 0
    str_140024c6a db "^<V7w", 0
    str_140024cbd db "W&|.", 0
    str_140024da0 db "1#INF", 0
    str_140024da8 db "1#QNAN", 0
    str_140024db0 db "1#SNAN", 0
    str_140024db8 db "1#IND", 0
    str_140024f00 db "UUUUUU", 0
    str_140024f30 db "UUUUUU", 0
    str_140024fb1 db "TUUUU", 0
    str_140024fd4 db "#Ib?", 0
    str_14002584f db "=imb;D", 0
    str_140025857 db "=W>6", 0
    str_14002593f db ">[^j", 0
    str_140025947 db ">Kb|", 0
    str_140025986 db "+>De", 0
    str_1400259f9 db "11Y@", 0
    str_1400259fe db "/>58d%", 0
    str_140025a14 db "MJ$>", 0
    str_140025a2f db ">cQ6", 0
    str_140025a36 db "!>6'Y", 0
    str_140025a47 db ">jtm}S", 0
    str_140025a9e db ")>6{1n", 0
    str_140025aac db "Vr.>T", 0
    str_140025abc db "+f)>0'", 0
    str_140025b0b db "Lj[;>", 0
    str_140025b2e db "3>fvw", 0
    str_140025b3c db ";H9>&X", 0
    str_140025b62 db "*StO9>T", 0
    str_140025b8e db ".>Tu", 0
    str_140025bac db "n03>Pu", 0
    str_140025c2d db "S9>H", 0
    str_140025c74 db "x.&>", 0
    str_140025c82 db "K~Je#>!", 0
    str_140025ca6 db "(>aI", 0
    str_140025caf db "=cQ6", 0
    str_140025cbb db "+M<7>", 0
    str_140025cce db "*>f[", 0
    str_140025cdc db "o ->", 0
    str_140025cfc db "l(>>", 0
    str_140025d05 db "c(>\,", 0
    str_140025d14 db "ET5>", 0
    str_140025d1e db ";>9l", 0
    str_140025d34 db "mG4>", 0
    str_140025d5b db "bp(=>?g", 0
    str_140025dbd db "37>k", 0
    str_140025dec db "~X3>", 0
    str_140025dfe db "6>J`", 0
    str_140025e06 db "?>!T", 0
    str_140025e1c db "BC?>6t9^", 0
    str_140025e61 db "'._M", 0
    str_140025e75 db "BF>^G", 0
    str_140025e85 db "K&>.yC", 0
    str_140025e94 db " 'L>[", 0
    str_140025e9c db ".xJ>Hf", 0
    str_140025ea3 db "y\PD>!", 0
    str_140025eb2 db "|b=})>", 0
    str_140025ec3 db "c [1>H'", 0
    str_140025ed4 db "dL?>", 0
    str_140025f02 db "uzKs@>", 0
    str_140025f1e db "3>N;kU", 0
    str_140025f4d db "kE>fvw", 0
    str_140025f65 db "eF>t", 0
    str_140025f76 db "L>ev", 0
    str_140025f8e db "A>pP&", 0
    str_140025f94 db "V6E>`\x22(5", 0
    str_140025fdd db ",=>B", 0
    str_140025fe6 db "\x22>}t", 0
    str_14002600c db "0iN>/", 0
    str_14002601c db "+h->|", 0
    str_14002602e db "@>%>b", 0
    str_14002606f db "?qBJ", 0
    str_1400261b2 db "l@6 ", 0
    str_140026227 db "?-hk", 0
    str_1400262f9 db "OZQ%", 0
    str_1400263e9 db "-)4d", 0
    str_14002642f db "?:kP<", 0
    str_14002643f db "?UUUUUU", 0
    str_1400264c7 db "?f`Y4", 0
    str_1400264f7 db "?QY^&", 0
    str_140026537 db "?U)#", 0
    str_1400266ef db "?ysB", 0
    str_140026717 db "?$G4", 0
    str_140026827 db "?7zQ6$", 0
    str_140026850 db "log10", 0
    str_1400272fc db ".text$mn", 0
    str_140027310 db ".text$mn$00", 0
    str_140027324 db ".text$mn$21", 0
    str_140027338 db ".text$x", 0
    str_140027348 db ".idata$5", 0
    str_14002735c db ".00cfg", 0
    str_14002736c db ".CRT$XCA", 0
    str_140027380 db ".CRT$XCAA", 0
    str_140027394 db ".CRT$XCZ", 0
    str_1400273a8 db ".CRT$XIA", 0
    str_1400273bc db ".CRT$XIAA", 0
    str_1400273d0 db ".CRT$XIAC", 0
    str_1400273e4 db ".CRT$XIC", 0
    str_1400273f8 db ".CRT$XIZ", 0
    str_14002740c db ".CRT$XPA", 0
    str_140027420 db ".CRT$XPX", 0
    str_140027434 db ".CRT$XPXA", 0
    str_140027448 db ".CRT$XPZ", 0
    str_14002745c db ".CRT$XTA", 0
    str_140027470 db ".CRT$XTZ", 0
    str_140027484 db ".rdata", 0
    str_140027494 db ".rdata$00", 0
    str_1400274a8 db ".rdata$r", 0
    str_1400274bc db ".rdata$voltmd", 0
    str_1400274d4 db ".rdata$zzzdbg", 0
    str_1400274ec db ".rtc$IAA", 0
    str_140027500 db ".rtc$IZZ", 0
    str_140027514 db ".rtc$TAA", 0
    str_140027528 db ".rtc$TZZ", 0
    str_14002753c db ".xdata", 0
    str_14002754c db ".xdata$x", 0
    str_140027560 db ".idata$2", 0
    str_140027574 db ".idata$3", 0
    str_140027588 db ".idata$4", 0
    str_14002759c db ".idata$6", 0
    str_1400275b0 db ".data", 0
    str_1400275c0 db ".data$r", 0
    str_1400275d0 db ".data$rs", 0
    str_1400275e4 db ".bss", 0
    str_1400275f4 db ".pdata", 0
    str_140027604 db "_RDATA", 0
    str_1400291ca db "SetConsoleOutputCP", 0
    str_1400291e0 db "RtlCaptureContext", 0
    str_1400291f4 db "RtlLookupFunctionEntry", 0
    str_14002920e db "RtlVirtualUnwind", 0
    str_140029222 db "UnhandledExceptionFilter", 0
    str_14002923e db "SetUnhandledExceptionFilter", 0
    str_14002925c db "GetCurrentProcess", 0
    str_140029270 db "TerminateProcess", 0
    str_140029284 db "IsProcessorFeaturePresent", 0
    str_1400292a0 db "QueryPerformanceCounter", 0
    str_1400292ba db "GetCurrentProcessId", 0
    str_1400292d0 db "GetCurrentThreadId", 0
    str_1400292e6 db "GetSystemTimeAsFileTime", 0
    str_140029300 db "InitializeSListHead", 0
    str_140029316 db "IsDebuggerPresent", 0
    str_14002932a db "GetStartupInfoW", 0
    str_14002933c db "GetModuleHandleW", 0
    str_14002934e db "KERNEL32.dll", 0
    str_14002935e db "RtlPcToFileHeader", 0
    str_140029372 db "RaiseException", 0
    str_140029384 db "RtlUnwindEx", 0
    str_140029392 db "GetLastError", 0
    str_1400293a2 db "SetLastError", 0
    str_1400293b2 db "EncodePointer", 0
    str_1400293c2 db "EnterCriticalSection", 0
    str_1400293da db "LeaveCriticalSection", 0
    str_1400293f2 db "DeleteCriticalSection", 0
    str_14002940a db "InitializeCriticalSectionAndSpinCount", 0
    str_140029432 db "TlsAlloc", 0
    str_14002943e db "TlsGetValue", 0
    str_14002944c db "TlsSetValue", 0
    str_14002945a db "TlsFree", 0
    str_140029464 db "FreeLibrary", 0
    str_140029472 db "GetProcAddress", 0
    str_140029484 db "LoadLibraryExW", 0
    str_140029496 db "GetStdHandle", 0
    str_1400294a6 db "WriteFile", 0
    str_1400294b2 db "GetModuleFileNameW", 0
    str_1400294c8 db "ExitProcess", 0
    str_1400294d6 db "GetModuleHandleExW", 0
    str_1400294ec db "GetCommandLineA", 0
    str_1400294fe db "GetCommandLineW", 0
    str_140029510 db "HeapAlloc", 0
    str_14002951c db "HeapFree", 0
    str_140029528 db "FlsAlloc", 0
    str_140029534 db "FlsGetValue", 0
    str_140029542 db "FlsSetValue", 0
    str_140029550 db "FlsFree", 0
    str_14002955a db "CompareStringW", 0
    str_14002956c db "LCMapStringW", 0
    str_14002957c db "GetFileType", 0
    str_14002958a db "FindClose", 0
    str_140029596 db "FindFirstFileExW", 0
    str_1400295aa db "FindNextFileW", 0
    str_1400295ba db "IsValidCodePage", 0
    str_1400295cc db "GetACP", 0
    str_1400295d6 db "GetOEMCP", 0
    str_1400295e2 db "GetCPInfo", 0
    str_1400295ee db "MultiByteToWideChar", 0
    str_140029604 db "WideCharToMultiByte", 0
    str_14002961a db "GetEnvironmentStringsW", 0
    str_140029634 db "FreeEnvironmentStringsW", 0
    str_14002964e db "SetEnvironmentVariableW", 0
    str_140029668 db "SetStdHandle", 0
    str_140029678 db "GetStringTypeW", 0
    str_14002968a db "GetProcessHeap", 0
    str_14002969c db "FlushFileBuffers", 0
    str_1400296b0 db "GetConsoleOutputCP", 0
    str_1400296c6 db "GetConsoleMode", 0
    str_1400296d8 db "GetFileSizeEx", 0
    str_1400296e8 db "SetFilePointerEx", 0
    str_1400296fc db "HeapSize", 0
    str_140029708 db "HeapReAlloc", 0
    str_140029716 db "CloseHandle", 0
    str_140029724 db "CreateFileW", 0
    str_140029732 db "WriteConsoleW", 0
    str_14002a4ca db "abcdefghijklmnopqrstuvwxyz", 0
    str_14002a4ea db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0
    str_14002a6f1 db "abcdefghijklmnopqrstuvwxyz", 0
    str_14002a711 db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0
    str_14002aa90 db ".?AVMyException@funny@@", 0
    str_14002aab8 db ".?AVbad_array_new_length@std@@", 0
    str_14002aae8 db ".?AVbad_alloc@std@@", 0
    str_14002ab10 db ".?AVexception@std@@", 0
    str_14002ab38 db ".?AVinvalid_argument@std@@", 0
    str_14002ab68 db ".?AVlogic_error@std@@", 0
    str_14002ab90 db ".?AVlength_error@std@@", 0
    str_14002abb8 db ".?AVout_of_range@std@@", 0
    str_14002abe0 db ".?AVbad_exception@std@@", 0
    str_14002ac08 db ".?AVtype_info@@", 0
    newline db 13, 10, 0
    bytes_written dd ?

.code

; Section: .text

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
    nop  ; 0x140001046
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
    nop  ; 0x1400010e5
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
    nop  ; 0x140001170
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
    nop  ; 0x1400011fb
    lea rcx, [rsp + 0x398]  ; 0x1400011fc
    call 0x1400022c0  ; 0x140001204
    nop  ; 0x140001209
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
    nop  ; 0x140001297
    lea rcx, [rsp + 0x3b8]  ; 0x140001298
    call 0x1400022c0  ; 0x1400012a0
    nop  ; 0x1400012a5
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
    nop  ; 0x140001359
    lea rcx, [rsp + 0x3f8]  ; 0x14000135a
    call 0x1400022c0  ; 0x140001362
    nop  ; 0x140001367
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
    nop  ; 0x14000149a
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
    nop  ; 0x1400014e6
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
    nop  ; 0x140001a1f
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
    nop  ; 0x140002057
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140002058
    call 0x140003130  ; 0x14000205d
    mov rcx, rax  ; 0x140002062
    call 0x1400019c0  ; 0x140002065
    mov r8, rax  ; 0x14000206a
    mov rdx, qword ptr [rsp + 0x48]  ; 0x14000206d
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002072
    call 0x1400017d0  ; 0x140002077
    nop  ; 0x14000207c
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
    int3   ; 0x14000208e
    int3   ; 0x14000208f
    mov qword ptr [rsp + 8], rcx  ; 0x140002090
    push rdi  ; 0x140002095
    mov rax, qword ptr [rsp + 0x10]  ; 0x140002096
    mov rdi, qword ptr [rsp + 0x10]  ; 0x14000209b
    xor eax, eax  ; 0x1400020a0
    mov ecx, 0x10  ; 0x1400020a2
    rep stosb byte ptr [rdi], al  ; 0x1400020a7
    mov rax, qword ptr [rsp + 0x10]  ; 0x1400020a9
    pop rdi  ; 0x1400020ae
    ret  ; 0x1400020af
    mov qword ptr [rsp + 0x18], r8  ; 0x1400020b0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400020b5
    mov qword ptr [rsp + 8], rcx  ; 0x1400020ba
    mov rax, qword ptr [rsp + 8]  ; 0x1400020bf
    ret  ; 0x1400020c4
    int3   ; 0x1400020c5
    int3   ; 0x1400020c6
    int3   ; 0x1400020c7
    int3   ; 0x1400020c8
    int3   ; 0x1400020c9
    int3   ; 0x1400020ca
    int3   ; 0x1400020cb
    int3   ; 0x1400020cc
    int3   ; 0x1400020cd
    int3   ; 0x1400020ce
    int3   ; 0x1400020cf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400020d0
    mov qword ptr [rsp + 8], rcx  ; 0x1400020d5
    sub rsp, 0x28  ; 0x1400020da
    mov r8d, 1  ; 0x1400020de
    mov rdx, qword ptr [rsp + 0x38]  ; 0x1400020e4
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400020e9
    call 0x140002230  ; 0x1400020ee
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400020f3
    lea rcx, [rip + 0x1c3c1]  ; 0x1400020f8
    mov qword ptr [rax], rcx  ; 0x1400020ff
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002102
    add rsp, 0x28  ; 0x140002107
    ret  ; 0x14000210b
    int3   ; 0x14000210c
    int3   ; 0x14000210d
    int3   ; 0x14000210e
    int3   ; 0x14000210f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002110
    mov qword ptr [rsp + 8], rcx  ; 0x140002115
    sub rsp, 0x28  ; 0x14000211a
    mov rdx, qword ptr [rsp + 0x38]  ; 0x14000211e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002123
    call 0x1400021d0  ; 0x140002128
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000212d
    lea rcx, [rip + 0x1c387]  ; 0x140002132
    mov qword ptr [rax], rcx  ; 0x140002139
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000213c
    add rsp, 0x28  ; 0x140002141
    ret  ; 0x140002145
    int3   ; 0x140002146
    int3   ; 0x140002147
    int3   ; 0x140002148
    int3   ; 0x140002149
    int3   ; 0x14000214a
    int3   ; 0x14000214b
    int3   ; 0x14000214c
    int3   ; 0x14000214d
    int3   ; 0x14000214e
    int3   ; 0x14000214f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002150
    mov qword ptr [rsp + 8], rcx  ; 0x140002155
    sub rsp, 0x28  ; 0x14000215a
    mov rdx, qword ptr [rsp + 0x38]  ; 0x14000215e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002163
    call 0x140002110  ; 0x140002168
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000216d
    lea rcx, [rip + 0x1c35f]  ; 0x140002172
    mov qword ptr [rax], rcx  ; 0x140002179
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000217c
    add rsp, 0x28  ; 0x140002181
    ret  ; 0x140002185
    int3   ; 0x140002186
    int3   ; 0x140002187
    int3   ; 0x140002188
    int3   ; 0x140002189
    int3   ; 0x14000218a
    int3   ; 0x14000218b
    int3   ; 0x14000218c
    int3   ; 0x14000218d
    int3   ; 0x14000218e
    int3   ; 0x14000218f
    mov qword ptr [rsp + 8], rcx  ; 0x140002190
    sub rsp, 0x28  ; 0x140002195
    lea rdx, [rip + 0x1c348]  ; 0x140002199
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400021a0
    call 0x1400020d0  ; 0x1400021a5
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400021aa
    lea rcx, [rip + 0x1c322]  ; 0x1400021af
    mov qword ptr [rax], rcx  ; 0x1400021b6
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400021b9
    add rsp, 0x28  ; 0x1400021be
    ret  ; 0x1400021c2
    int3   ; 0x1400021c3
    int3   ; 0x1400021c4
    int3   ; 0x1400021c5
    int3   ; 0x1400021c6
    int3   ; 0x1400021c7
    int3   ; 0x1400021c8
    int3   ; 0x1400021c9
    int3   ; 0x1400021ca
    int3   ; 0x1400021cb
    int3   ; 0x1400021cc
    int3   ; 0x1400021cd
    int3   ; 0x1400021ce
    int3   ; 0x1400021cf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400021d0
    mov qword ptr [rsp + 8], rcx  ; 0x1400021d5
    push rdi  ; 0x1400021da
    sub rsp, 0x20  ; 0x1400021db
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400021df
    lea rcx, [rip + 0x1c27d]  ; 0x1400021e4
    mov qword ptr [rax], rcx  ; 0x1400021eb
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400021ee
    add rax, 8  ; 0x1400021f3
    mov rdi, rax  ; 0x1400021f7
    xor eax, eax  ; 0x1400021fa
    mov ecx, 0x10  ; 0x1400021fc
    rep stosb byte ptr [rdi], al  ; 0x140002201
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002203
    add rax, 8  ; 0x140002208
    mov rcx, qword ptr [rsp + 0x38]  ; 0x14000220c
    add rcx, 8  ; 0x140002211
    mov rdx, rax  ; 0x140002215
    call 0x140005810  ; 0x140002218
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000221d
    add rsp, 0x20  ; 0x140002222
    pop rdi  ; 0x140002226
    ret  ; 0x140002227
    int3   ; 0x140002228
    int3   ; 0x140002229
    int3   ; 0x14000222a
    int3   ; 0x14000222b
    int3   ; 0x14000222c
    int3   ; 0x14000222d
    int3   ; 0x14000222e
    int3   ; 0x14000222f
    mov dword ptr [rsp + 0x18], r8d  ; 0x140002230
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002235
    mov qword ptr [rsp + 8], rcx  ; 0x14000223a
    push rdi  ; 0x14000223f
    mov rax, qword ptr [rsp + 0x10]  ; 0x140002240
    lea rcx, [rip + 0x1c21c]  ; 0x140002245
    mov qword ptr [rax], rcx  ; 0x14000224c
    mov rax, qword ptr [rsp + 0x10]  ; 0x14000224f
    add rax, 8  ; 0x140002254
    mov rdi, rax  ; 0x140002258
    xor eax, eax  ; 0x14000225b
    mov ecx, 0x10  ; 0x14000225d
    rep stosb byte ptr [rdi], al  ; 0x140002262
    mov rax, qword ptr [rsp + 0x10]  ; 0x140002264
    mov rcx, qword ptr [rsp + 0x18]  ; 0x140002269
    mov qword ptr [rax + 8], rcx  ; 0x14000226e
    mov rax, qword ptr [rsp + 0x10]  ; 0x140002272
    pop rdi  ; 0x140002277
    ret  ; 0x140002278
    int3   ; 0x140002279
    int3   ; 0x14000227a
    int3   ; 0x14000227b
    int3   ; 0x14000227c
    int3   ; 0x14000227d
    int3   ; 0x14000227e
    int3   ; 0x14000227f
    mov qword ptr [rsp + 8], rcx  ; 0x140002280
    sub rsp, 0x28  ; 0x140002285
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002289
    mov rcx, rax  ; 0x14000228e
    call 0x1400022a0  ; 0x140002291
    add rsp, 0x28  ; 0x140002296
    ret  ; 0x14000229a
    int3   ; 0x14000229b
    int3   ; 0x14000229c
    int3   ; 0x14000229d
    int3   ; 0x14000229e
    int3   ; 0x14000229f
    mov qword ptr [rsp + 8], rcx  ; 0x1400022a0
    sub rsp, 0x28  ; 0x1400022a5
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400022a9
    mov rcx, rax  ; 0x1400022ae
    call 0x140001a30  ; 0x1400022b1
    add rsp, 0x28  ; 0x1400022b6
    ret  ; 0x1400022ba
    int3   ; 0x1400022bb
    int3   ; 0x1400022bc
    int3   ; 0x1400022bd
    int3   ; 0x1400022be
    int3   ; 0x1400022bf
    mov qword ptr [rsp + 8], rcx  ; 0x1400022c0
    sub rsp, 0x28  ; 0x1400022c5
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400022c9
    call 0x140002ae0  ; 0x1400022ce
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400022d3
    mov rcx, rax  ; 0x1400022d8
    call 0x140002280  ; 0x1400022db
    add rsp, 0x28  ; 0x1400022e0
    ret  ; 0x1400022e4
    int3   ; 0x1400022e5
    int3   ; 0x1400022e6
    int3   ; 0x1400022e7
    int3   ; 0x1400022e8
    int3   ; 0x1400022e9
    int3   ; 0x1400022ea
    int3   ; 0x1400022eb
    int3   ; 0x1400022ec
    int3   ; 0x1400022ed
    int3   ; 0x1400022ee
    int3   ; 0x1400022ef
    mov qword ptr [rsp + 8], rcx  ; 0x1400022f0
    sub rsp, 0x28  ; 0x1400022f5
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400022f9
    call 0x140002330  ; 0x1400022fe
    add rsp, 0x28  ; 0x140002303
    ret  ; 0x140002307
    int3   ; 0x140002308
    int3   ; 0x140002309
    int3   ; 0x14000230a
    int3   ; 0x14000230b
    int3   ; 0x14000230c
    int3   ; 0x14000230d
    int3   ; 0x14000230e
    int3   ; 0x14000230f
    mov qword ptr [rsp + 8], rcx  ; 0x140002310
    sub rsp, 0x28  ; 0x140002315
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002319
    call 0x1400022f0  ; 0x14000231e
    add rsp, 0x28  ; 0x140002323
    ret  ; 0x140002327
    int3   ; 0x140002328
    int3   ; 0x140002329
    int3   ; 0x14000232a
    int3   ; 0x14000232b
    int3   ; 0x14000232c
    int3   ; 0x14000232d
    int3   ; 0x14000232e
    int3   ; 0x14000232f
    mov qword ptr [rsp + 8], rcx  ; 0x140002330
    sub rsp, 0x28  ; 0x140002335
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002339
    lea rcx, [rip + 0x1c123]  ; 0x14000233e
    mov qword ptr [rax], rcx  ; 0x140002345
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002348
    add rax, 8  ; 0x14000234d
    mov rcx, rax  ; 0x140002351
    call 0x1400058a0  ; 0x140002354
    add rsp, 0x28  ; 0x140002359
    ret  ; 0x14000235d
    int3   ; 0x14000235e
    int3   ; 0x14000235f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002360
    mov qword ptr [rsp + 8], rcx  ; 0x140002365
    mov rax, qword ptr [rsp + 0x10]  ; 0x14000236a
    ret  ; 0x14000236f
    mov qword ptr [rsp + 0x20], r9  ; 0x140002370
    mov qword ptr [rsp + 0x18], r8  ; 0x140002375
    mov qword ptr [rsp + 0x10], rdx  ; 0x14000237a
    mov qword ptr [rsp + 8], rcx  ; 0x14000237f
    sub rsp, 0x38  ; 0x140002384
    mov r8, qword ptr [rsp + 0x58]  ; 0x140002388
    mov rdx, qword ptr [rsp + 0x50]  ; 0x14000238d
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140002392
    call 0x140002dc0  ; 0x140002397
    mov rax, qword ptr [rsp + 0x58]  ; 0x14000239c
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400023a1
    add rcx, rax  ; 0x1400023a6
    mov rax, rcx  ; 0x1400023a9
    mov r8, qword ptr [rsp + 0x68]  ; 0x1400023ac
    mov rdx, qword ptr [rsp + 0x60]  ; 0x1400023b1
    mov rcx, rax  ; 0x1400023b6
    call 0x140002dc0  ; 0x1400023b9
    mov byte ptr [rsp + 0x20], 0  ; 0x1400023be
    mov rax, qword ptr [rsp + 0x68]  ; 0x1400023c3
    mov rcx, qword ptr [rsp + 0x58]  ; 0x1400023c8
    add rcx, rax  ; 0x1400023cd
    mov rax, rcx  ; 0x1400023d0
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400023d3
    add rcx, rax  ; 0x1400023d8
    mov rax, rcx  ; 0x1400023db
    lea rdx, [rsp + 0x20]  ; 0x1400023de
    mov rcx, rax  ; 0x1400023e3
    call 0x140002d80  ; 0x1400023e6
    add rsp, 0x38  ; 0x1400023eb
    ret  ; 0x1400023ef
    mov qword ptr [rsp + 0x20], r9  ; 0x1400023f0
    mov qword ptr [rsp + 0x18], r8  ; 0x1400023f5
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400023fa
    mov qword ptr [rsp + 8], rcx  ; 0x1400023ff
    sub rsp, 0x38  ; 0x140002404
    mov r8, qword ptr [rsp + 0x60]  ; 0x140002408
    mov rdx, qword ptr [rsp + 0x50]  ; 0x14000240d
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140002412
    call 0x140002dc0  ; 0x140002417
    mov rax, qword ptr [rsp + 0x60]  ; 0x14000241c
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140002421
    add rcx, rax  ; 0x140002426
    mov rax, rcx  ; 0x140002429
    mov r8, qword ptr [rsp + 0x70]  ; 0x14000242c
    mov rdx, qword ptr [rsp + 0x68]  ; 0x140002431
    mov rcx, rax  ; 0x140002436
    call 0x140002dc0  ; 0x140002439
    mov rax, qword ptr [rsp + 0x60]  ; 0x14000243e
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140002443
    sub rcx, rax  ; 0x140002448
    mov rax, rcx  ; 0x14000244b
    inc rax  ; 0x14000244e
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140002451
    mov rdx, qword ptr [rsp + 0x50]  ; 0x140002456
    add rdx, rcx  ; 0x14000245b
    mov rcx, rdx  ; 0x14000245e
    mov rdx, qword ptr [rsp + 0x60]  ; 0x140002461
    mov r8, qword ptr [rsp + 0x48]  ; 0x140002466
    add r8, rdx  ; 0x14000246b
    mov rdx, r8  ; 0x14000246e
    add rdx, qword ptr [rsp + 0x70]  ; 0x140002471
    mov qword ptr [rsp + 0x20], rdx  ; 0x140002476
    mov r8, rax  ; 0x14000247b
    mov rdx, rcx  ; 0x14000247e
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002481
    mov rcx, rax  ; 0x140002486
    call 0x140002dc0  ; 0x140002489
    add rsp, 0x38  ; 0x14000248e
    ret  ; 0x140002492
    int3   ; 0x140002493
    int3   ; 0x140002494
    int3   ; 0x140002495
    int3   ; 0x140002496
    int3   ; 0x140002497
    int3   ; 0x140002498
    int3   ; 0x140002499
    int3   ; 0x14000249a
    int3   ; 0x14000249b
    int3   ; 0x14000249c
    int3   ; 0x14000249d
    int3   ; 0x14000249e
    int3   ; 0x14000249f
    mov dword ptr [rsp + 0x10], edx  ; 0x1400024a0
    mov qword ptr [rsp + 8], rcx  ; 0x1400024a4
    sub rsp, 0x28  ; 0x1400024a9
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400024ad
    call 0x1400022f0  ; 0x1400024b2
    mov eax, dword ptr [rsp + 0x38]  ; 0x1400024b7
    and eax, 1  ; 0x1400024bb
    test eax, eax  ; 0x1400024be
    je 0x1400024d1  ; 0x1400024c0
    mov edx, 0x18  ; 0x1400024c2
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400024c7
    call 0x1400049b8  ; 0x1400024cc
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400024d1
    add rsp, 0x28  ; 0x1400024d6
    ret  ; 0x1400024da
    int3   ; 0x1400024db
    int3   ; 0x1400024dc
    int3   ; 0x1400024dd
    int3   ; 0x1400024de
    int3   ; 0x1400024df
    mov dword ptr [rsp + 0x10], edx  ; 0x1400024e0
    mov qword ptr [rsp + 8], rcx  ; 0x1400024e4
    sub rsp, 0x28  ; 0x1400024e9
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400024ed
    call 0x140002310  ; 0x1400024f2
    mov eax, dword ptr [rsp + 0x38]  ; 0x1400024f7
    and eax, 1  ; 0x1400024fb
    test eax, eax  ; 0x1400024fe
    je 0x140002511  ; 0x140002500
    mov edx, 0x18  ; 0x140002502
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002507
    call 0x1400049b8  ; 0x14000250c
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002511
    add rsp, 0x28  ; 0x140002516
    ret  ; 0x14000251a
    int3   ; 0x14000251b
    int3   ; 0x14000251c
    int3   ; 0x14000251d
    int3   ; 0x14000251e
    int3   ; 0x14000251f
    mov dword ptr [rsp + 0x10], edx  ; 0x140002520
    mov qword ptr [rsp + 8], rcx  ; 0x140002524
    sub rsp, 0x28  ; 0x140002529
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000252d
    call 0x140002330  ; 0x140002532
    mov eax, dword ptr [rsp + 0x38]  ; 0x140002537
    and eax, 1  ; 0x14000253b
    test eax, eax  ; 0x14000253e
    je 0x140002551  ; 0x140002540
    mov edx, 0x18  ; 0x140002542
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002547
    call 0x1400049b8  ; 0x14000254c
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002551
    add rsp, 0x28  ; 0x140002556
    ret  ; 0x14000255a
    int3   ; 0x14000255b
    int3   ; 0x14000255c
    int3   ; 0x14000255d
    int3   ; 0x14000255e
    int3   ; 0x14000255f
    mov qword ptr [rsp + 8], rcx  ; 0x140002560
    sub rsp, 0x38  ; 0x140002565
    call 0x140003120  ; 0x140002569
    movzx eax, al  ; 0x14000256e
    test eax, eax  ; 0x140002571
    je 0x1400025aa  ; 0x140002573
    mov qword ptr [rsp + 0x20], 0  ; 0x140002575
    jmp 0x14000258d  ; 0x14000257e
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002580
    inc rax  ; 0x140002585
    mov qword ptr [rsp + 0x20], rax  ; 0x140002588
    cmp qword ptr [rsp + 0x20], 0x10  ; 0x14000258d
    jae 0x1400025aa  ; 0x140002593
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002595
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000259a
    add rcx, rax  ; 0x14000259f
    mov rax, rcx  ; 0x1400025a2
    mov byte ptr [rax], 0  ; 0x1400025a5
    jmp 0x140002580  ; 0x1400025a8
    add rsp, 0x38  ; 0x1400025aa
    ret  ; 0x1400025ae
    int3   ; 0x1400025af
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400025b0
    mov qword ptr [rsp + 8], rcx  ; 0x1400025b5
    sub rsp, 0x48  ; 0x1400025ba
    mov rax, qword ptr [rsp + 0x58]  ; 0x1400025be
    mov rax, qword ptr [rax]  ; 0x1400025c3
    add rax, 0x27  ; 0x1400025c6
    mov rcx, qword ptr [rsp + 0x58]  ; 0x1400025ca
    mov qword ptr [rcx], rax  ; 0x1400025cf
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400025d2
    mov rax, qword ptr [rax]  ; 0x1400025d7
    mov qword ptr [rsp + 0x30], rax  ; 0x1400025da
    mov eax, 8  ; 0x1400025df
    imul rax, rax, -1  ; 0x1400025e4
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400025e8
    mov rax, qword ptr [rcx + rax]  ; 0x1400025ed
    mov qword ptr [rsp + 0x28], rax  ; 0x1400025f1
    mov qword ptr [rsp + 0x38], 8  ; 0x1400025f6
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400025ff
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002604
    mov rax, qword ptr [rax]  ; 0x140002609
    sub rax, rcx  ; 0x14000260c
    mov qword ptr [rsp + 0x20], rax  ; 0x14000260f
    cmp qword ptr [rsp + 0x20], 8  ; 0x140002614
    jb 0x140002626  ; 0x14000261a
    cmp qword ptr [rsp + 0x20], 0x27  ; 0x14000261c
    ja 0x140002626  ; 0x140002622
    jmp 0x140002631  ; 0x140002624
    call 0x14000b5dc  ; 0x140002626
    xor eax, eax  ; 0x14000262b
    test eax, eax  ; 0x14000262d
    jne 0x140002626  ; 0x14000262f
    xor eax, eax  ; 0x140002631
    test eax, eax  ; 0x140002633
    jne 0x140002614  ; 0x140002635
    mov rax, qword ptr [rsp + 0x50]  ; 0x140002637
    mov rcx, qword ptr [rsp + 0x28]  ; 0x14000263c
    mov qword ptr [rax], rcx  ; 0x140002641
    add rsp, 0x48  ; 0x140002644
    ret  ; 0x140002648
    int3   ; 0x140002649
    int3   ; 0x14000264a
    int3   ; 0x14000264b
    int3   ; 0x14000264c
    int3   ; 0x14000264d
    int3   ; 0x14000264e
    int3   ; 0x14000264f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002650
    mov qword ptr [rsp + 8], rcx  ; 0x140002655
    ret  ; 0x14000265a
    int3   ; 0x14000265b
    int3   ; 0x14000265c
    int3   ; 0x14000265d
    int3   ; 0x14000265e
    int3   ; 0x14000265f
    mov qword ptr [rsp + 8], rcx  ; 0x140002660
    sub rsp, 0x28  ; 0x140002665
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002669
    call 0x140004974  ; 0x14000266e
    add rsp, 0x28  ; 0x140002673
    ret  ; 0x140002677
    int3   ; 0x140002678
    int3   ; 0x140002679
    int3   ; 0x14000267a
    int3   ; 0x14000267b
    int3   ; 0x14000267c
    int3   ; 0x14000267d
    int3   ; 0x14000267e
    int3   ; 0x14000267f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002680
    mov qword ptr [rsp + 8], rcx  ; 0x140002685
    sub rsp, 0x38  ; 0x14000268a
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000268e
    call 0x140003190  ; 0x140002693
    mov qword ptr [rsp + 0x20], rax  ; 0x140002698
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000269d
    mov rax, qword ptr [rax + 0x18]  ; 0x1400026a2
    mov qword ptr [rsp + 0x28], rax  ; 0x1400026a6
    mov r8, qword ptr [rsp + 0x20]  ; 0x1400026ab
    mov rdx, qword ptr [rsp + 0x28]  ; 0x1400026b0
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400026b5
    call 0x1400026d0  ; 0x1400026ba
    add rsp, 0x38  ; 0x1400026bf
    ret  ; 0x1400026c3
    int3   ; 0x1400026c4
    int3   ; 0x1400026c5
    int3   ; 0x1400026c6
    int3   ; 0x1400026c7
    int3   ; 0x1400026c8
    int3   ; 0x1400026c9
    int3   ; 0x1400026ca
    int3   ; 0x1400026cb
    int3   ; 0x1400026cc
    int3   ; 0x1400026cd
    int3   ; 0x1400026ce
    int3   ; 0x1400026cf
    mov qword ptr [rsp + 0x18], r8  ; 0x1400026d0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400026d5
    mov qword ptr [rsp + 8], rcx  ; 0x1400026da
    sub rsp, 0x38  ; 0x1400026df
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400026e3
    or rax, 0xf  ; 0x1400026e8
    mov qword ptr [rsp + 0x20], rax  ; 0x1400026ec
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400026f1
    cmp qword ptr [rsp + 0x20], rax  ; 0x1400026f6
    jbe 0x140002704  ; 0x1400026fb
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400026fd
    jmp 0x14000275d  ; 0x140002702
    xor edx, edx  ; 0x140002704
    mov rax, qword ptr [rsp + 0x48]  ; 0x140002706
    mov ecx, 2  ; 0x14000270b
    div rcx  ; 0x140002710
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002713
    sub rcx, rax  ; 0x140002718
    mov rax, rcx  ; 0x14000271b
    cmp qword ptr [rsp + 0x48], rax  ; 0x14000271e
    jbe 0x14000272c  ; 0x140002723
    mov rax, qword ptr [rsp + 0x50]  ; 0x140002725
    jmp 0x14000275d  ; 0x14000272a
    xor edx, edx  ; 0x14000272c
    mov rax, qword ptr [rsp + 0x48]  ; 0x14000272e
    mov ecx, 2  ; 0x140002733
    div rcx  ; 0x140002738
    mov rcx, qword ptr [rsp + 0x48]  ; 0x14000273b
    add rcx, rax  ; 0x140002740
    mov rax, rcx  ; 0x140002743
    mov qword ptr [rsp + 0x28], rax  ; 0x140002746
    lea rdx, [rsp + 0x28]  ; 0x14000274b
    lea rcx, [rsp + 0x20]  ; 0x140002750
    call 0x140001ed0  ; 0x140002755
    mov rax, qword ptr [rax]  ; 0x14000275a
    add rsp, 0x38  ; 0x14000275d
    ret  ; 0x140002761
    int3   ; 0x140002762
    int3   ; 0x140002763
    int3   ; 0x140002764
    int3   ; 0x140002765
    int3   ; 0x140002766
    int3   ; 0x140002767
    int3   ; 0x140002768
    int3   ; 0x140002769
    int3   ; 0x14000276a
    int3   ; 0x14000276b
    int3   ; 0x14000276c
    int3   ; 0x14000276d
    int3   ; 0x14000276e
    int3   ; 0x14000276f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002770
    mov qword ptr [rsp + 8], rcx  ; 0x140002775
    sub rsp, 0x28  ; 0x14000277a
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000277e
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002783
    cmp qword ptr [rax + 0x10], rcx  ; 0x140002788
    jae 0x140002793  ; 0x14000278c
    call 0x140002bb0  ; 0x14000278e
    add rsp, 0x28  ; 0x140002793
    ret  ; 0x140002797
    int3   ; 0x140002798
    int3   ; 0x140002799
    int3   ; 0x14000279a
    int3   ; 0x14000279b
    int3   ; 0x14000279c
    int3   ; 0x14000279d
    int3   ; 0x14000279e
    int3   ; 0x14000279f
    mov qword ptr [rsp + 0x18], r8  ; 0x1400027a0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400027a5
    mov qword ptr [rsp + 8], rcx  ; 0x1400027aa
    sub rsp, 0x28  ; 0x1400027af
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400027b3
    inc rax  ; 0x1400027b8
    mov r8, rax  ; 0x1400027bb
    mov rdx, qword ptr [rsp + 0x38]  ; 0x1400027be
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400027c3
    call 0x140002e50  ; 0x1400027c8
    nop  ; 0x1400027cd
    add rsp, 0x28  ; 0x1400027ce
    ret  ; 0x1400027d2
    int3   ; 0x1400027d3
    int3   ; 0x1400027d4
    int3   ; 0x1400027d5
    int3   ; 0x1400027d6
    int3   ; 0x1400027d7
    int3   ; 0x1400027d8
    int3   ; 0x1400027d9
    int3   ; 0x1400027da
    int3   ; 0x1400027db
    int3   ; 0x1400027dc
    int3   ; 0x1400027dd
    int3   ; 0x1400027de
    int3   ; 0x1400027df
    mov qword ptr [rsp + 8], rcx  ; 0x1400027e0
    sub rsp, 0x28  ; 0x1400027e5
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400027e9
    mov rcx, rax  ; 0x1400027ee
    call 0x1400019c0  ; 0x1400027f1
    add rsp, 0x28  ; 0x1400027f6
    ret  ; 0x1400027fa
    int3   ; 0x1400027fb
    int3   ; 0x1400027fc
    int3   ; 0x1400027fd
    int3   ; 0x1400027fe
    int3   ; 0x1400027ff
    mov qword ptr [rsp + 8], rcx  ; 0x140002800
    sub rsp, 0x18  ; 0x140002805
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002809
    cmp qword ptr [rax + 0x18], 0xf  ; 0x14000280e
    jbe 0x14000281e  ; 0x140002813
    mov dword ptr [rsp], 1  ; 0x140002815
    jmp 0x140002825  ; 0x14000281c
    mov dword ptr [rsp], 0  ; 0x14000281e
    movzx eax, byte ptr [rsp]  ; 0x140002825
    add rsp, 0x18  ; 0x140002829
    ret  ; 0x14000282d
    int3   ; 0x14000282e
    int3   ; 0x14000282f
    mov qword ptr [rsp + 8], rcx  ; 0x140002830
    sub rsp, 0x38  ; 0x140002835
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002839
    mov qword ptr [rsp + 0x20], rax  ; 0x14000283e
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002843
    call 0x140002800  ; 0x140002848
    movzx eax, al  ; 0x14000284d
    test eax, eax  ; 0x140002850
    je 0x140002866  ; 0x140002852
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002854
    mov rcx, qword ptr [rax]  ; 0x140002859
    call 0x1400019c0  ; 0x14000285c
    mov qword ptr [rsp + 0x20], rax  ; 0x140002861
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002866
    add rsp, 0x38  ; 0x14000286b
    ret  ; 0x14000286f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002870
    mov qword ptr [rsp + 8], rcx  ; 0x140002875
    sub rsp, 0x38  ; 0x14000287a
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000287e
    mov qword ptr [rsp + 0x20], rax  ; 0x140002883
    mov rax, qword ptr [rsp + 0x48]  ; 0x140002888
    mov rdx, rax  ; 0x14000288d
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140002890
    call 0x140002650  ; 0x140002895
    add rsp, 0x38  ; 0x14000289a
    ret  ; 0x14000289e
    int3   ; 0x14000289f
    mov qword ptr [rsp + 8], rcx  ; 0x1400028a0
    sub rsp, 0x38  ; 0x1400028a5
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400028a9
    mov rcx, rax  ; 0x1400028ae
    call 0x140001a30  ; 0x1400028b1
    call 0x140003120  ; 0x1400028b6
    movzx eax, al  ; 0x1400028bb
    test eax, eax  ; 0x1400028be
    je 0x1400028f7  ; 0x1400028c0
    mov qword ptr [rsp + 0x20], 0  ; 0x1400028c2
    jmp 0x1400028da  ; 0x1400028cb
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400028cd
    inc rax  ; 0x1400028d2
    mov qword ptr [rsp + 0x20], rax  ; 0x1400028d5
    cmp qword ptr [rsp + 0x20], 0x10  ; 0x1400028da
    jae 0x1400028f7  ; 0x1400028e0
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400028e2
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400028e7
    add rcx, rax  ; 0x1400028ec
    mov rax, rcx  ; 0x1400028ef
    mov byte ptr [rax], 0  ; 0x1400028f2
    jmp 0x1400028cd  ; 0x1400028f5
    add rsp, 0x38  ; 0x1400028f7
    ret  ; 0x1400028fb
    int3   ; 0x1400028fc
    int3   ; 0x1400028fd
    int3   ; 0x1400028fe
    int3   ; 0x1400028ff
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002900
    mov qword ptr [rsp + 8], rcx  ; 0x140002905
    sub rsp, 0x58  ; 0x14000290a
    mov rax, qword ptr [rsp + 0x60]  ; 0x14000290e
    mov qword ptr [rsp + 0x30], rax  ; 0x140002913
    mov rax, qword ptr [rsp + 0x68]  ; 0x140002918
    mov qword ptr [rsp + 0x28], rax  ; 0x14000291d
    call 0x140003120  ; 0x140002922
    movzx eax, al  ; 0x140002927
    test eax, eax  ; 0x14000292a
    jne 0x1400029ba  ; 0x14000292c
    mov rax, qword ptr [rsp + 0x60]  ; 0x140002932
    mov rcx, rax  ; 0x140002937
    call 0x1400019c0  ; 0x14000293a
    mov qword ptr [rsp + 0x40], rax  ; 0x14000293f
    mov rax, qword ptr [rsp + 0x68]  ; 0x140002944
    mov rcx, rax  ; 0x140002949
    call 0x1400019c0  ; 0x14000294c
    mov qword ptr [rsp + 0x38], rax  ; 0x140002951
    mov r8d, 0x20  ; 0x140002956
    mov rdx, qword ptr [rsp + 0x38]  ; 0x14000295c
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002961
    call 0x14001c6e0  ; 0x140002966
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000296b
    mov qword ptr [rax + 0x10], 0  ; 0x140002970
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002978
    mov qword ptr [rax + 0x18], 0xf  ; 0x14000297d
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002985
    call 0x140002560  ; 0x14000298a
    mov byte ptr [rsp + 0x20], 0  ; 0x14000298f
    mov eax, 1  ; 0x140002994
    imul rax, rax, 0  ; 0x140002999
    mov rcx, qword ptr [rsp + 0x28]  ; 0x14000299d
    add rcx, rax  ; 0x1400029a2
    mov rax, rcx  ; 0x1400029a5
    lea rdx, [rsp + 0x20]  ; 0x1400029a8
    mov rcx, rax  ; 0x1400029ad
    call 0x140002d80  ; 0x1400029b0
    jmp 0x140002aa1  ; 0x1400029b5
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400029ba
    call 0x140002800  ; 0x1400029bf
    movzx eax, al  ; 0x1400029c4
    test eax, eax  ; 0x1400029c7
    je 0x1400029fb  ; 0x1400029c9
    mov rdx, qword ptr [rsp + 0x68]  ; 0x1400029cb
    mov rcx, qword ptr [rsp + 0x60]  ; 0x1400029d0
    call 0x140002870  ; 0x1400029d5
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400029da
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400029df
    mov rdx, rax  ; 0x1400029e4
    call 0x140001950  ; 0x1400029e7
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400029ec
    mov rcx, rax  ; 0x1400029f1
    call 0x1400028a0  ; 0x1400029f4
    jmp 0x140002a3d  ; 0x1400029f9
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400029fb
    call 0x140001a30  ; 0x140002a00
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002a05
    call 0x140002560  ; 0x140002a0a
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002a0f
    mov rax, qword ptr [rax + 0x10]  ; 0x140002a14
    inc rax  ; 0x140002a18
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002a1b
    mov rdx, qword ptr [rsp + 0x30]  ; 0x140002a20
    mov qword ptr [rsp + 0x48], rdx  ; 0x140002a25
    mov r8, rax  ; 0x140002a2a
    mov rdx, rcx  ; 0x140002a2d
    mov rax, qword ptr [rsp + 0x48]  ; 0x140002a30
    mov rcx, rax  ; 0x140002a35
    call 0x140002dc0  ; 0x140002a38
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002a3d
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002a42
    mov rcx, qword ptr [rcx + 0x18]  ; 0x140002a47
    mov qword ptr [rax + 0x18], rcx  ; 0x140002a4b
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002a4f
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002a54
    mov rcx, qword ptr [rcx + 0x10]  ; 0x140002a59
    mov qword ptr [rax + 0x10], rcx  ; 0x140002a5d
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002a61
    mov qword ptr [rax + 0x10], 0  ; 0x140002a66
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002a6e
    mov qword ptr [rax + 0x18], 0xf  ; 0x140002a73
    mov byte ptr [rsp + 0x21], 0  ; 0x140002a7b
    mov eax, 1  ; 0x140002a80
    imul rax, rax, 0  ; 0x140002a85
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002a89
    add rcx, rax  ; 0x140002a8e
    mov rax, rcx  ; 0x140002a91
    lea rdx, [rsp + 0x21]  ; 0x140002a94
    mov rcx, rax  ; 0x140002a99
    call 0x140002d80  ; 0x140002a9c
    add rsp, 0x58  ; 0x140002aa1
    ret  ; 0x140002aa5
    int3   ; 0x140002aa6
    int3   ; 0x140002aa7
    int3   ; 0x140002aa8
    int3   ; 0x140002aa9
    int3   ; 0x140002aaa
    int3   ; 0x140002aab
    int3   ; 0x140002aac
    int3   ; 0x140002aad
    int3   ; 0x140002aae
    int3   ; 0x140002aaf
    sub rsp, 0x48  ; 0x140002ab0
    lea rcx, [rsp + 0x20]  ; 0x140002ab4
    call 0x140002190  ; 0x140002ab9
    lea rdx, [rip + 0x261cb]  ; 0x140002abe
    lea rcx, [rsp + 0x20]  ; 0x140002ac5
    call 0x1400058d0  ; 0x140002aca
    add rsp, 0x48  ; 0x140002acf
    ret  ; 0x140002ad3
    int3   ; 0x140002ad4
    int3   ; 0x140002ad5
    int3   ; 0x140002ad6
    int3   ; 0x140002ad7
    int3   ; 0x140002ad8
    int3   ; 0x140002ad9
    int3   ; 0x140002ada
    int3   ; 0x140002adb
    int3   ; 0x140002adc
    int3   ; 0x140002add
    int3   ; 0x140002ade
    int3   ; 0x140002adf
    mov qword ptr [rsp + 8], rcx  ; 0x140002ae0
    sub rsp, 0x48  ; 0x140002ae5
    mov rax, qword ptr [rsp + 0x50]  ; 0x140002ae9
    mov qword ptr [rsp + 0x28], rax  ; 0x140002aee
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002af3
    call 0x140001a30  ; 0x140002af8
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002afd
    call 0x140002800  ; 0x140002b02
    movzx eax, al  ; 0x140002b07
    test eax, eax  ; 0x140002b0a
    je 0x140002b45  ; 0x140002b0c
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002b0e
    call 0x1400027e0  ; 0x140002b13
    mov qword ptr [rsp + 0x30], rax  ; 0x140002b18
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b1d
    mov r8, qword ptr [rax + 0x18]  ; 0x140002b22
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b26
    mov rdx, qword ptr [rax]  ; 0x140002b2b
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002b2e
    call 0x1400027a0  ; 0x140002b33
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b38
    mov rcx, rax  ; 0x140002b3d
    call 0x1400028a0  ; 0x140002b40
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b45
    mov qword ptr [rax + 0x10], 0  ; 0x140002b4a
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b52
    mov qword ptr [rax + 0x18], 0xf  ; 0x140002b57
    mov byte ptr [rsp + 0x20], 0  ; 0x140002b5f
    mov eax, 1  ; 0x140002b64
    imul rax, rax, 0  ; 0x140002b69
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002b6d
    add rcx, rax  ; 0x140002b72
    mov rax, rcx  ; 0x140002b75
    lea rdx, [rsp + 0x20]  ; 0x140002b78
    mov rcx, rax  ; 0x140002b7d
    call 0x140002d80  ; 0x140002b80
    add rsp, 0x48  ; 0x140002b85
    ret  ; 0x140002b89
    int3   ; 0x140002b8a
    int3   ; 0x140002b8b
    int3   ; 0x140002b8c
    int3   ; 0x140002b8d
    int3   ; 0x140002b8e
    int3   ; 0x140002b8f
    sub rsp, 0x28  ; 0x140002b90
    lea rcx, [rip + 0x1b8f5]  ; 0x140002b94
    call 0x14000492c  ; 0x140002b9b
    add rsp, 0x28  ; 0x140002ba0
    ret  ; 0x140002ba4
    int3   ; 0x140002ba5
    int3   ; 0x140002ba6
    int3   ; 0x140002ba7
    int3   ; 0x140002ba8
    int3   ; 0x140002ba9
    int3   ; 0x140002baa
    int3   ; 0x140002bab
    int3   ; 0x140002bac
    int3   ; 0x140002bad
    int3   ; 0x140002bae
    int3   ; 0x140002baf
    sub rsp, 0x28  ; 0x140002bb0
    lea rcx, [rip + 0x1b8e5]  ; 0x140002bb4
    call 0x140004950  ; 0x140002bbb
    add rsp, 0x28  ; 0x140002bc0
    ret  ; 0x140002bc4
    int3   ; 0x140002bc5
    int3   ; 0x140002bc6
    int3   ; 0x140002bc7
    int3   ; 0x140002bc8
    int3   ; 0x140002bc9
    int3   ; 0x140002bca
    int3   ; 0x140002bcb
    int3   ; 0x140002bcc
    int3   ; 0x140002bcd
    int3   ; 0x140002bce
    int3   ; 0x140002bcf
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002bd0
    mov qword ptr [rsp + 8], rcx  ; 0x140002bd5
    sub rsp, 0x28  ; 0x140002bda
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002bde
    call 0x140001a40  ; 0x140002be3
    mov rcx, rax  ; 0x140002be8
    call 0x140001610  ; 0x140002beb
    add rsp, 0x28  ; 0x140002bf0
    ret  ; 0x140002bf4
    int3   ; 0x140002bf5
    int3   ; 0x140002bf6
    int3   ; 0x140002bf7
    int3   ; 0x140002bf8
    int3   ; 0x140002bf9
    int3   ; 0x140002bfa
    int3   ; 0x140002bfb
    int3   ; 0x140002bfc
    int3   ; 0x140002bfd
    int3   ; 0x140002bfe
    int3   ; 0x140002bff
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002c00
    mov qword ptr [rsp + 8], rcx  ; 0x140002c05
    sub rsp, 0x28  ; 0x140002c0a
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002c0e
    call 0x140003130  ; 0x140002c13
    mov rcx, rax  ; 0x140002c18
    call 0x1400019c0  ; 0x140002c1b
    mov r8, rax  ; 0x140002c20
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140002c23
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002c28
    call 0x140002c40  ; 0x140002c2d
    add rsp, 0x28  ; 0x140002c32
    ret  ; 0x140002c36
    int3   ; 0x140002c37
    int3   ; 0x140002c38
    int3   ; 0x140002c39
    int3   ; 0x140002c3a
    int3   ; 0x140002c3b
    int3   ; 0x140002c3c
    int3   ; 0x140002c3d
    int3   ; 0x140002c3e
    int3   ; 0x140002c3f
    mov qword ptr [rsp + 0x18], r8  ; 0x140002c40
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002c45
    mov qword ptr [rsp + 8], rcx  ; 0x140002c4a
    sub rsp, 0x58  ; 0x140002c4f
    mov rax, qword ptr [rsp + 0x60]  ; 0x140002c53
    mov rax, qword ptr [rax + 0x10]  ; 0x140002c58
    mov qword ptr [rsp + 0x38], rax  ; 0x140002c5c
    mov rax, qword ptr [rsp + 0x60]  ; 0x140002c61
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002c66
    mov rax, qword ptr [rax + 0x18]  ; 0x140002c6b
    sub rax, rcx  ; 0x140002c6f
    cmp qword ptr [rsp + 0x70], rax  ; 0x140002c72
    ja 0x140002cfe  ; 0x140002c77
    mov rax, qword ptr [rsp + 0x70]  ; 0x140002c7d
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002c82
    add rcx, rax  ; 0x140002c87
    mov rax, rcx  ; 0x140002c8a
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140002c8d
    mov qword ptr [rcx + 0x10], rax  ; 0x140002c92
    mov rax, qword ptr [rsp + 0x60]  ; 0x140002c96
    mov rcx, rax  ; 0x140002c9b
    call 0x140002830  ; 0x140002c9e
    mov qword ptr [rsp + 0x40], rax  ; 0x140002ca3
    mov rax, qword ptr [rsp + 0x38]  ; 0x140002ca8
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002cad
    add rcx, rax  ; 0x140002cb2
    mov rax, rcx  ; 0x140002cb5
    mov r8, qword ptr [rsp + 0x70]  ; 0x140002cb8
    mov rdx, qword ptr [rsp + 0x68]  ; 0x140002cbd
    mov rcx, rax  ; 0x140002cc2
    call 0x140003200  ; 0x140002cc5
    mov byte ptr [rsp + 0x30], 0  ; 0x140002cca
    mov rax, qword ptr [rsp + 0x70]  ; 0x140002ccf
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002cd4
    add rcx, rax  ; 0x140002cd9
    mov rax, rcx  ; 0x140002cdc
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002cdf
    add rcx, rax  ; 0x140002ce4
    mov rax, rcx  ; 0x140002ce7
    lea rdx, [rsp + 0x30]  ; 0x140002cea
    mov rcx, rax  ; 0x140002cef
    call 0x140002d80  ; 0x140002cf2
    mov rax, qword ptr [rsp + 0x60]  ; 0x140002cf7
    jmp 0x140002d22  ; 0x140002cfc
    mov rax, qword ptr [rsp + 0x70]  ; 0x140002cfe
    mov qword ptr [rsp + 0x20], rax  ; 0x140002d03
    mov r9, qword ptr [rsp + 0x68]  ; 0x140002d08
    movzx r8d, byte ptr [rsp + 0x31]  ; 0x140002d0d
    mov rdx, qword ptr [rsp + 0x70]  ; 0x140002d13
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140002d18
    call 0x140001a60  ; 0x140002d1d
    add rsp, 0x58  ; 0x140002d22
    ret  ; 0x140002d26
    int3   ; 0x140002d27
    int3   ; 0x140002d28
    int3   ; 0x140002d29
    int3   ; 0x140002d2a
    int3   ; 0x140002d2b
    int3   ; 0x140002d2c
    int3   ; 0x140002d2d
    int3   ; 0x140002d2e
    int3   ; 0x140002d2f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002d30
    mov qword ptr [rsp + 8], rcx  ; 0x140002d35
    sub rsp, 0x28  ; 0x140002d3a
    call 0x140003120  ; 0x140002d3e
    movzx eax, al  ; 0x140002d43
    test eax, eax  ; 0x140002d46
    je 0x140002d63  ; 0x140002d48
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002d4a
    call 0x1400019c0  ; 0x140002d4f
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140002d54
    mov rcx, rax  ; 0x140002d59
    call 0x140001e50  ; 0x140002d5c
    jmp 0x140002d72  ; 0x140002d61
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002d63
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002d68
    movzx ecx, byte ptr [rcx]  ; 0x140002d6d
    mov byte ptr [rax], cl  ; 0x140002d70
    add rsp, 0x28  ; 0x140002d72
    ret  ; 0x140002d76
    int3   ; 0x140002d77
    int3   ; 0x140002d78
    int3   ; 0x140002d79
    int3   ; 0x140002d7a
    int3   ; 0x140002d7b
    int3   ; 0x140002d7c
    int3   ; 0x140002d7d
    int3   ; 0x140002d7e
    int3   ; 0x140002d7f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002d80
    mov qword ptr [rsp + 8], rcx  ; 0x140002d85
    sub rsp, 0x28  ; 0x140002d8a
    call 0x140003120  ; 0x140002d8e
    movzx eax, al  ; 0x140002d93
    test eax, eax  ; 0x140002d96
    je 0x140002dab  ; 0x140002d98
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140002d9a
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002d9f
    call 0x140002d30  ; 0x140002da4
    jmp 0x140002dba  ; 0x140002da9
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002dab
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002db0
    movzx ecx, byte ptr [rcx]  ; 0x140002db5
    mov byte ptr [rax], cl  ; 0x140002db8
    add rsp, 0x28  ; 0x140002dba
    ret  ; 0x140002dbe
    int3   ; 0x140002dbf
    mov qword ptr [rsp + 0x18], r8  ; 0x140002dc0
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002dc5
    mov qword ptr [rsp + 8], rcx  ; 0x140002dca
    sub rsp, 0x38  ; 0x140002dcf
    call 0x140003120  ; 0x140002dd3
    movzx eax, al  ; 0x140002dd8
    test eax, eax  ; 0x140002ddb
    je 0x140002e31  ; 0x140002ddd
    mov qword ptr [rsp + 0x20], 0  ; 0x140002ddf
    jmp 0x140002df7  ; 0x140002de8
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002dea
    inc rax  ; 0x140002def
    mov qword ptr [rsp + 0x20], rax  ; 0x140002df2
    mov rax, qword ptr [rsp + 0x50]  ; 0x140002df7
    cmp qword ptr [rsp + 0x20], rax  ; 0x140002dfc
    je 0x140002e2a  ; 0x140002e01
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002e03
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002e08
    add rcx, rax  ; 0x140002e0d
    mov rax, rcx  ; 0x140002e10
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140002e13
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140002e18
    add rdx, rcx  ; 0x140002e1d
    mov rcx, rdx  ; 0x140002e20
    movzx ecx, byte ptr [rcx]  ; 0x140002e23
    mov byte ptr [rax], cl  ; 0x140002e26
    jmp 0x140002dea  ; 0x140002e28
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002e2a
    jmp 0x140002e4a  ; 0x140002e2f
    mov r8, qword ptr [rsp + 0x50]  ; 0x140002e31
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140002e36
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002e3b
    call 0x14001c6e0  ; 0x140002e40
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002e45
    add rsp, 0x38  ; 0x140002e4a
    ret  ; 0x140002e4e
    int3   ; 0x140002e4f
    mov qword ptr [rsp + 0x18], r8  ; 0x140002e50
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002e55
    mov qword ptr [rsp + 8], rcx  ; 0x140002e5a
    sub rsp, 0x28  ; 0x140002e5f
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140002e63
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002e68
    call 0x1400019d0  ; 0x140002e6d
    add rsp, 0x28  ; 0x140002e72
    ret  ; 0x140002e76
    int3   ; 0x140002e77
    int3   ; 0x140002e78
    int3   ; 0x140002e79
    int3   ; 0x140002e7a
    int3   ; 0x140002e7b
    int3   ; 0x140002e7c
    int3   ; 0x140002e7d
    int3   ; 0x140002e7e
    int3   ; 0x140002e7f
    mov qword ptr [rsp + 0x20], r9  ; 0x140002e80
    mov qword ptr [rsp + 0x18], r8  ; 0x140002e85
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002e8a
    mov qword ptr [rsp + 8], rcx  ; 0x140002e8f
    sub rsp, 0x78  ; 0x140002e94
    mov rax, qword ptr [rsp + 0x80]  ; 0x140002e98
    mov qword ptr [rsp + 0x58], rax  ; 0x140002ea0
    mov rdx, qword ptr [rsp + 0x88]  ; 0x140002ea5
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140002ead
    call 0x140002770  ; 0x140002eb2
    mov rax, qword ptr [rsp + 0x80]  ; 0x140002eb7
    mov rax, qword ptr [rax + 0x10]  ; 0x140002ebf
    mov qword ptr [rsp + 0x48], rax  ; 0x140002ec3
    mov rax, qword ptr [rsp + 0x80]  ; 0x140002ec8
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140002ed0
    mov rax, qword ptr [rax + 0x18]  ; 0x140002ed5
    sub rax, rcx  ; 0x140002ed9
    cmp qword ptr [rsp + 0x98], rax  ; 0x140002edc
    ja 0x140002ef9  ; 0x140002ee4
    call 0x140003120  ; 0x140002ee6
    movzx eax, al  ; 0x140002eeb
    test eax, eax  ; 0x140002eee
    jne 0x140002ef9  ; 0x140002ef0
    mov byte ptr [rsp + 0x30], 1  ; 0x140002ef2
    jmp 0x140002efe  ; 0x140002ef7
    mov byte ptr [rsp + 0x30], 0  ; 0x140002ef9
    movzx eax, byte ptr [rsp + 0x30]  ; 0x140002efe
    mov byte ptr [rsp + 0x31], al  ; 0x140002f03
    movzx eax, byte ptr [rsp + 0x31]  ; 0x140002f07
    test eax, eax  ; 0x140002f0c
    je 0x140003085  ; 0x140002f0e
    mov rax, qword ptr [rsp + 0x98]  ; 0x140002f14
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140002f1c
    add rcx, rax  ; 0x140002f21
    mov rax, rcx  ; 0x140002f24
    mov rcx, qword ptr [rsp + 0x80]  ; 0x140002f27
    mov qword ptr [rcx + 0x10], rax  ; 0x140002f2f
    mov rax, qword ptr [rsp + 0x80]  ; 0x140002f33
    mov rcx, rax  ; 0x140002f3b
    call 0x140002830  ; 0x140002f3e
    mov qword ptr [rsp + 0x50], rax  ; 0x140002f43
    mov rax, qword ptr [rsp + 0x88]  ; 0x140002f48
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002f50
    add rcx, rax  ; 0x140002f55
    mov rax, rcx  ; 0x140002f58
    mov qword ptr [rsp + 0x38], rax  ; 0x140002f5b
    mov rax, qword ptr [rsp + 0x98]  ; 0x140002f60
    mov rcx, qword ptr [rsp + 0x90]  ; 0x140002f68
    add rcx, rax  ; 0x140002f70
    mov rax, rcx  ; 0x140002f73
    cmp rax, qword ptr [rsp + 0x38]  ; 0x140002f76
    jbe 0x140002f97  ; 0x140002f7b
    mov rax, qword ptr [rsp + 0x48]  ; 0x140002f7d
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002f82
    add rcx, rax  ; 0x140002f87
    mov rax, rcx  ; 0x140002f8a
    cmp qword ptr [rsp + 0x90], rax  ; 0x140002f8d
    jbe 0x140002fa6  ; 0x140002f95
    mov rax, qword ptr [rsp + 0x98]  ; 0x140002f97
    mov qword ptr [rsp + 0x40], rax  ; 0x140002f9f
    jmp 0x140002fd8  ; 0x140002fa4
    mov rax, qword ptr [rsp + 0x90]  ; 0x140002fa6
    cmp qword ptr [rsp + 0x38], rax  ; 0x140002fae
    ja 0x140002fc0  ; 0x140002fb3
    mov qword ptr [rsp + 0x40], 0  ; 0x140002fb5
    jmp 0x140002fd8  ; 0x140002fbe
    mov rax, qword ptr [rsp + 0x90]  ; 0x140002fc0
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002fc8
    sub rcx, rax  ; 0x140002fcd
    mov rax, rcx  ; 0x140002fd0
    mov qword ptr [rsp + 0x40], rax  ; 0x140002fd3
    mov rax, qword ptr [rsp + 0x88]  ; 0x140002fd8
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140002fe0
    sub rcx, rax  ; 0x140002fe5
    mov rax, rcx  ; 0x140002fe8
    inc rax  ; 0x140002feb
    mov rcx, qword ptr [rsp + 0x98]  ; 0x140002fee
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140002ff6
    add rdx, rcx  ; 0x140002ffb
    mov rcx, rdx  ; 0x140002ffe
    mov r8, rax  ; 0x140003001
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140003004
    call 0x140003200  ; 0x140003009
    mov r8, qword ptr [rsp + 0x40]  ; 0x14000300e
    mov rdx, qword ptr [rsp + 0x90]  ; 0x140003013
    mov rcx, qword ptr [rsp + 0x38]  ; 0x14000301b
    call 0x140002dc0  ; 0x140003020
    mov rax, qword ptr [rsp + 0x40]  ; 0x140003025
    mov rcx, qword ptr [rsp + 0x98]  ; 0x14000302a
    sub rcx, rax  ; 0x140003032
    mov rax, rcx  ; 0x140003035
    mov rcx, qword ptr [rsp + 0x98]  ; 0x140003038
    mov rdx, qword ptr [rsp + 0x90]  ; 0x140003040
    add rdx, rcx  ; 0x140003048
    mov rcx, rdx  ; 0x14000304b
    add rcx, qword ptr [rsp + 0x40]  ; 0x14000304e
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140003053
    mov r8, qword ptr [rsp + 0x38]  ; 0x140003058
    add r8, rdx  ; 0x14000305d
    mov rdx, r8  ; 0x140003060
    mov qword ptr [rsp + 0x60], rdx  ; 0x140003063
    mov r8, rax  ; 0x140003068
    mov rdx, rcx  ; 0x14000306b
    mov rax, qword ptr [rsp + 0x60]  ; 0x14000306e
    mov rcx, rax  ; 0x140003073
    call 0x140002dc0  ; 0x140003076
    mov rax, qword ptr [rsp + 0x80]  ; 0x14000307b
    jmp 0x1400030c2  ; 0x140003083
    mov rax, qword ptr [rsp + 0x98]  ; 0x140003085
    mov qword ptr [rsp + 0x28], rax  ; 0x14000308d
    mov rax, qword ptr [rsp + 0x90]  ; 0x140003092
    mov qword ptr [rsp + 0x20], rax  ; 0x14000309a
    mov r9, qword ptr [rsp + 0x88]  ; 0x14000309f
    movzx r8d, byte ptr [rsp + 0x32]  ; 0x1400030a7
    mov rdx, qword ptr [rsp + 0x98]  ; 0x1400030ad
    mov rcx, qword ptr [rsp + 0x80]  ; 0x1400030b5
    call 0x140001c20  ; 0x1400030bd
    add rsp, 0x78  ; 0x1400030c2
    ret  ; 0x1400030c6
    int3   ; 0x1400030c7
    int3   ; 0x1400030c8
    int3   ; 0x1400030c9
    int3   ; 0x1400030ca
    int3   ; 0x1400030cb
    int3   ; 0x1400030cc
    int3   ; 0x1400030cd
    int3   ; 0x1400030ce
    int3   ; 0x1400030cf
    mov qword ptr [rsp + 0x18], r8  ; 0x1400030d0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400030d5
    mov qword ptr [rsp + 8], rcx  ; 0x1400030da
    sub rsp, 0x28  ; 0x1400030df
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400030e3
    call 0x140003130  ; 0x1400030e8
    mov rcx, rax  ; 0x1400030ed
    call 0x1400019c0  ; 0x1400030f0
    mov r9, rax  ; 0x1400030f5
    mov r8, qword ptr [rsp + 0x40]  ; 0x1400030f8
    mov rdx, qword ptr [rsp + 0x38]  ; 0x1400030fd
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140003102
    call 0x140002e80  ; 0x140003107
    add rsp, 0x28  ; 0x14000310c
    ret  ; 0x140003110
    int3   ; 0x140003111
    int3   ; 0x140003112
    int3   ; 0x140003113
    int3   ; 0x140003114
    int3   ; 0x140003115
    int3   ; 0x140003116
    int3   ; 0x140003117
    int3   ; 0x140003118
    int3   ; 0x140003119
    int3   ; 0x14000311a
    int3   ; 0x14000311b
    int3   ; 0x14000311c
    int3   ; 0x14000311d
    int3   ; 0x14000311e
    int3   ; 0x14000311f
    xor al, al  ; 0x140003120
    ret  ; 0x140003122
    int3   ; 0x140003123
    int3   ; 0x140003124
    int3   ; 0x140003125
    int3   ; 0x140003126
    int3   ; 0x140003127
    int3   ; 0x140003128
    int3   ; 0x140003129
    int3   ; 0x14000312a
    int3   ; 0x14000312b
    int3   ; 0x14000312c
    int3   ; 0x14000312d
    int3   ; 0x14000312e
    int3   ; 0x14000312f
    mov qword ptr [rsp + 8], rcx  ; 0x140003130
    sub rsp, 0x18  ; 0x140003135
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003139
    mov qword ptr [rsp + 8], rax  ; 0x14000313e
    mov qword ptr [rsp], 0xffffffffffffffff  ; 0x140003143
    inc qword ptr [rsp]  ; 0x14000314b
    mov rax, qword ptr [rsp + 8]  ; 0x14000314f
    mov rcx, qword ptr [rsp]  ; 0x140003154
    cmp byte ptr [rax + rcx], 0  ; 0x140003158
    jne 0x14000314b  ; 0x14000315c
    mov rax, qword ptr [rsp]  ; 0x14000315e
    add rsp, 0x18  ; 0x140003162
    ret  ; 0x140003166
    int3   ; 0x140003167
    int3   ; 0x140003168
    int3   ; 0x140003169
    int3   ; 0x14000316a
    int3   ; 0x14000316b
    int3   ; 0x14000316c
    int3   ; 0x14000316d
    int3   ; 0x14000316e
    int3   ; 0x14000316f
    movabs rax, 0x7fffffffffffffff  ; 0x140003170
    ret  ; 0x14000317a
    int3   ; 0x14000317b
    int3   ; 0x14000317c
    int3   ; 0x14000317d
    int3   ; 0x14000317e
    int3   ; 0x14000317f
    mov qword ptr [rsp + 8], rcx  ; 0x140003180
    mov rax, 0xffffffffffffffff  ; 0x140003185
    ret  ; 0x14000318c
    int3   ; 0x14000318d
    int3   ; 0x14000318e
    int3   ; 0x14000318f
    mov qword ptr [rsp + 8], rcx  ; 0x140003190
    sub rsp, 0x58  ; 0x140003195
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140003199
    call 0x1400027e0  ; 0x14000319e
    mov rcx, rax  ; 0x1400031a3
    call 0x140003180  ; 0x1400031a6
    mov qword ptr [rsp + 0x28], rax  ; 0x1400031ab
    mov qword ptr [rsp + 0x20], 0x10  ; 0x1400031b0
    lea rdx, [rsp + 0x20]  ; 0x1400031b9
    lea rcx, [rsp + 0x28]  ; 0x1400031be
    call 0x140001ed0  ; 0x1400031c3
    mov rax, qword ptr [rax]  ; 0x1400031c8
    mov qword ptr [rsp + 0x30], rax  ; 0x1400031cb
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400031d0
    dec rax  ; 0x1400031d5
    mov qword ptr [rsp + 0x38], rax  ; 0x1400031d8
    call 0x140003170  ; 0x1400031dd
    mov qword ptr [rsp + 0x40], rax  ; 0x1400031e2
    lea rdx, [rsp + 0x38]  ; 0x1400031e7
    lea rcx, [rsp + 0x40]  ; 0x1400031ec
    call 0x140001f20  ; 0x1400031f1
    mov rax, qword ptr [rax]  ; 0x1400031f6
    add rsp, 0x58  ; 0x1400031f9
    ret  ; 0x1400031fd
    int3   ; 0x1400031fe
    int3   ; 0x1400031ff
    mov qword ptr [rsp + 0x18], r8  ; 0x140003200
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003205
    mov qword ptr [rsp + 8], rcx  ; 0x14000320a
    sub rsp, 0x48  ; 0x14000320f
    call 0x140003120  ; 0x140003213
    movzx eax, al  ; 0x140003218
    test eax, eax  ; 0x14000321b
    je 0x140003314  ; 0x14000321d
    mov byte ptr [rsp + 0x20], 1  ; 0x140003223
    mov rax, qword ptr [rsp + 0x58]  ; 0x140003228
    mov qword ptr [rsp + 0x38], rax  ; 0x14000322d
    jmp 0x140003241  ; 0x140003232
    mov rax, qword ptr [rsp + 0x38]  ; 0x140003234
    inc rax  ; 0x140003239
    mov qword ptr [rsp + 0x38], rax  ; 0x14000323c
    mov rax, qword ptr [rsp + 0x60]  ; 0x140003241
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140003246
    add rcx, rax  ; 0x14000324b
    mov rax, rcx  ; 0x14000324e
    cmp qword ptr [rsp + 0x38], rax  ; 0x140003251
    je 0x14000326d  ; 0x140003256
    mov rax, qword ptr [rsp + 0x38]  ; 0x140003258
    cmp qword ptr [rsp + 0x50], rax  ; 0x14000325d
    jne 0x14000326b  ; 0x140003262
    mov byte ptr [rsp + 0x20], 0  ; 0x140003264
    jmp 0x14000326d  ; 0x140003269
    jmp 0x140003234  ; 0x14000326b
    movzx eax, byte ptr [rsp + 0x20]  ; 0x14000326d
    test eax, eax  ; 0x140003272
    je 0x1400032c3  ; 0x140003274
    mov qword ptr [rsp + 0x28], 0  ; 0x140003276
    jmp 0x14000328e  ; 0x14000327f
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003281
    inc rax  ; 0x140003286
    mov qword ptr [rsp + 0x28], rax  ; 0x140003289
    mov rax, qword ptr [rsp + 0x60]  ; 0x14000328e
    cmp qword ptr [rsp + 0x28], rax  ; 0x140003293
    je 0x1400032c1  ; 0x140003298
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000329a
    mov rcx, qword ptr [rsp + 0x50]  ; 0x14000329f
    add rcx, rax  ; 0x1400032a4
    mov rax, rcx  ; 0x1400032a7
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400032aa
    mov rdx, qword ptr [rsp + 0x58]  ; 0x1400032af
    add rdx, rcx  ; 0x1400032b4
    mov rcx, rdx  ; 0x1400032b7
    movzx ecx, byte ptr [rcx]  ; 0x1400032ba
    mov byte ptr [rax], cl  ; 0x1400032bd
    jmp 0x140003281  ; 0x1400032bf
    jmp 0x14000330d  ; 0x1400032c1
    mov rax, qword ptr [rsp + 0x60]  ; 0x1400032c3
    mov qword ptr [rsp + 0x30], rax  ; 0x1400032c8
    jmp 0x1400032dc  ; 0x1400032cd
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400032cf
    dec rax  ; 0x1400032d4
    mov qword ptr [rsp + 0x30], rax  ; 0x1400032d7
    cmp qword ptr [rsp + 0x30], 0  ; 0x1400032dc
    je 0x14000330d  ; 0x1400032e2
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400032e4
    mov rcx, qword ptr [rsp + 0x50]  ; 0x1400032e9
    add rcx, rax  ; 0x1400032ee
    mov rax, rcx  ; 0x1400032f1
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400032f4
    mov rdx, qword ptr [rsp + 0x58]  ; 0x1400032f9
    add rdx, rcx  ; 0x1400032fe
    mov rcx, rdx  ; 0x140003301
    movzx ecx, byte ptr [rcx - 1]  ; 0x140003304
    mov byte ptr [rax - 1], cl  ; 0x140003308
    jmp 0x1400032cf  ; 0x14000330b
    mov rax, qword ptr [rsp + 0x50]  ; 0x14000330d
    jmp 0x14000332d  ; 0x140003312
    mov r8, qword ptr [rsp + 0x60]  ; 0x140003314
    mov rdx, qword ptr [rsp + 0x58]  ; 0x140003319
    mov rcx, qword ptr [rsp + 0x50]  ; 0x14000331e
    call 0x14001c6e0  ; 0x140003323
    mov rax, qword ptr [rsp + 0x50]  ; 0x140003328
    add rsp, 0x48  ; 0x14000332d
    ret  ; 0x140003331
    int3   ; 0x140003332
    int3   ; 0x140003333
    int3   ; 0x140003334
    int3   ; 0x140003335
    int3   ; 0x140003336
    int3   ; 0x140003337
    int3   ; 0x140003338
    int3   ; 0x140003339
    int3   ; 0x14000333a
    int3   ; 0x14000333b
    int3   ; 0x14000333c
    int3   ; 0x14000333d
    int3   ; 0x14000333e
    int3   ; 0x14000333f
    mov qword ptr [rsp + 8], rcx  ; 0x140003340
    sub rsp, 0x18  ; 0x140003345
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003349
    cmp qword ptr [rax + 8], 0  ; 0x14000334e
    je 0x140003364  ; 0x140003353
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003355
    mov rax, qword ptr [rax + 8]  ; 0x14000335a
    mov qword ptr [rsp], rax  ; 0x14000335e
    jmp 0x14000336f  ; 0x140003362
    lea rax, [rip + 0x1b10d]  ; 0x140003364
    mov qword ptr [rsp], rax  ; 0x14000336b
    mov rax, qword ptr [rsp]  ; 0x14000336f
    add rsp, 0x18  ; 0x140003373
    ret  ; 0x140003377
    int3   ; 0x140003378
    int3   ; 0x140003379
    int3   ; 0x14000337a
    int3   ; 0x14000337b
    int3   ; 0x14000337c
    int3   ; 0x14000337d
    int3   ; 0x14000337e
    int3   ; 0x14000337f
    mov dword ptr [rsp + 0x10], edx  ; 0x140003380
    mov dword ptr [rsp + 8], ecx  ; 0x140003384
    mov eax, dword ptr [rsp + 0x10]  ; 0x140003388
    mov ecx, dword ptr [rsp + 8]  ; 0x14000338c
    add ecx, eax  ; 0x140003390
    mov eax, ecx  ; 0x140003392
    ret  ; 0x140003394
    int3   ; 0x140003395
    int3   ; 0x140003396
    int3   ; 0x140003397
    int3   ; 0x140003398
    int3   ; 0x140003399
    int3   ; 0x14000339a
    int3   ; 0x14000339b
    int3   ; 0x14000339c
    int3   ; 0x14000339d
    int3   ; 0x14000339e
    int3   ; 0x14000339f
    mov dword ptr [rsp + 0x10], edx  ; 0x1400033a0
    mov dword ptr [rsp + 8], ecx  ; 0x1400033a4
    mov eax, dword ptr [rsp + 0x10]  ; 0x1400033a8
    mov ecx, dword ptr [rsp + 8]  ; 0x1400033ac
    sub ecx, eax  ; 0x1400033b0
    mov eax, ecx  ; 0x1400033b2
    ret  ; 0x1400033b4
    int3   ; 0x1400033b5
    int3   ; 0x1400033b6
    int3   ; 0x1400033b7
    int3   ; 0x1400033b8
    int3   ; 0x1400033b9
    int3   ; 0x1400033ba
    int3   ; 0x1400033bb
    int3   ; 0x1400033bc
    int3   ; 0x1400033bd
    int3   ; 0x1400033be
    int3   ; 0x1400033bf
    mov dword ptr [rsp + 0x10], edx  ; 0x1400033c0
    mov dword ptr [rsp + 8], ecx  ; 0x1400033c4
    mov eax, dword ptr [rsp + 8]  ; 0x1400033c8
    imul eax, dword ptr [rsp + 0x10]  ; 0x1400033cc
    ret  ; 0x1400033d1
    int3   ; 0x1400033d2
    int3   ; 0x1400033d3
    int3   ; 0x1400033d4
    int3   ; 0x1400033d5
    int3   ; 0x1400033d6
    int3   ; 0x1400033d7
    int3   ; 0x1400033d8
    int3   ; 0x1400033d9
    int3   ; 0x1400033da
    int3   ; 0x1400033db
    int3   ; 0x1400033dc
    int3   ; 0x1400033dd
    int3   ; 0x1400033de
    int3   ; 0x1400033df
    movsd qword ptr [rsp + 0x10], xmm1  ; 0x1400033e0
    movsd qword ptr [rsp + 8], xmm0  ; 0x1400033e6
    sub rsp, 0x48  ; 0x1400033ec
    movsd xmm0, qword ptr [rsp + 0x58]  ; 0x1400033f0
    ucomisd xmm0, qword ptr [rip + 0x1b182]  ; 0x1400033f6
    jp 0x140003424  ; 0x1400033fe
    jne 0x140003424  ; 0x140003400
    lea rdx, [rip + 0x1b107]  ; 0x140003402
    lea rcx, [rsp + 0x20]  ; 0x140003409
    call 0x1400036c0  ; 0x14000340e
    lea rdx, [rip + 0x2592e]  ; 0x140003413
    lea rcx, [rsp + 0x20]  ; 0x14000341a
    call 0x1400058d0  ; 0x14000341f
    movsd xmm0, qword ptr [rsp + 0x50]  ; 0x140003424
    divsd xmm0, qword ptr [rsp + 0x58]  ; 0x14000342a
    add rsp, 0x48  ; 0x140003430
    ret  ; 0x140003434
    int3   ; 0x140003435
    int3   ; 0x140003436
    int3   ; 0x140003437
    int3   ; 0x140003438
    int3   ; 0x140003439
    int3   ; 0x14000343a
    int3   ; 0x14000343b
    int3   ; 0x14000343c
    int3   ; 0x14000343d
    int3   ; 0x14000343e
    int3   ; 0x14000343f
    mov dword ptr [rsp + 0x10], edx  ; 0x140003440
    movsd qword ptr [rsp + 8], xmm0  ; 0x140003444
    sub rsp, 0x38  ; 0x14000344a
    cmp dword ptr [rsp + 0x48], 0  ; 0x14000344e
    jne 0x14000345f  ; 0x140003453
    movsd xmm0, qword ptr [rip + 0x1b12b]  ; 0x140003455
    jmp 0x1400034d0  ; 0x14000345d
    cmp dword ptr [rsp + 0x48], 0  ; 0x14000345f
    jge 0x14000348a  ; 0x140003464
    mov eax, dword ptr [rsp + 0x48]  ; 0x140003466
    neg eax  ; 0x14000346a
    mov edx, eax  ; 0x14000346c
    movsd xmm0, qword ptr [rsp + 0x40]  ; 0x14000346e
    call 0x140003440  ; 0x140003474
    movsd xmm1, qword ptr [rip + 0x1b107]  ; 0x140003479
    divsd xmm1, xmm0  ; 0x140003481
    movaps xmm0, xmm1  ; 0x140003485
    jmp 0x1400034d0  ; 0x140003488
    movsd xmm0, qword ptr [rip + 0x1b0f6]  ; 0x14000348a
    movsd qword ptr [rsp + 0x28], xmm0  ; 0x140003492
    mov dword ptr [rsp + 0x20], 0  ; 0x140003498
    jmp 0x1400034ac  ; 0x1400034a0
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400034a2
    inc eax  ; 0x1400034a6
    mov dword ptr [rsp + 0x20], eax  ; 0x1400034a8
    mov eax, dword ptr [rsp + 0x48]  ; 0x1400034ac
    cmp dword ptr [rsp + 0x20], eax  ; 0x1400034b0
    jge 0x1400034ca  ; 0x1400034b4
    movsd xmm0, qword ptr [rsp + 0x28]  ; 0x1400034b6
    mulsd xmm0, qword ptr [rsp + 0x40]  ; 0x1400034bc
    movsd qword ptr [rsp + 0x28], xmm0  ; 0x1400034c2
    jmp 0x1400034a2  ; 0x1400034c8
    movsd xmm0, qword ptr [rsp + 0x28]  ; 0x1400034ca
    add rsp, 0x38  ; 0x1400034d0
    ret  ; 0x1400034d4
    int3   ; 0x1400034d5
    int3   ; 0x1400034d6
    int3   ; 0x1400034d7
    int3   ; 0x1400034d8
    int3   ; 0x1400034d9
    int3   ; 0x1400034da
    int3   ; 0x1400034db
    int3   ; 0x1400034dc
    int3   ; 0x1400034dd
    int3   ; 0x1400034de
    int3   ; 0x1400034df
    mov dword ptr [rsp + 8], ecx  ; 0x1400034e0
    sub rsp, 0x48  ; 0x1400034e4
    cmp dword ptr [rsp + 0x50], 0  ; 0x1400034e8
    jge 0x140003511  ; 0x1400034ed
    lea rdx, [rip + 0x1b032]  ; 0x1400034ef
    lea rcx, [rsp + 0x28]  ; 0x1400034f6
    call 0x1400036c0  ; 0x1400034fb
    lea rdx, [rip + 0x25841]  ; 0x140003500
    lea rcx, [rsp + 0x28]  ; 0x140003507
    call 0x1400058d0  ; 0x14000350c
    cmp dword ptr [rsp + 0x50], 0  ; 0x140003511
    je 0x14000351f  ; 0x140003516
    cmp dword ptr [rsp + 0x50], 1  ; 0x140003518
    jne 0x140003526  ; 0x14000351d
    mov eax, 1  ; 0x14000351f
    jmp 0x14000355f  ; 0x140003524
    mov dword ptr [rsp + 0x24], 1  ; 0x140003526
    mov dword ptr [rsp + 0x20], 2  ; 0x14000352e
    jmp 0x140003542  ; 0x140003536
    mov eax, dword ptr [rsp + 0x20]  ; 0x140003538
    inc eax  ; 0x14000353c
    mov dword ptr [rsp + 0x20], eax  ; 0x14000353e
    mov eax, dword ptr [rsp + 0x50]  ; 0x140003542
    cmp dword ptr [rsp + 0x20], eax  ; 0x140003546
    jg 0x14000355b  ; 0x14000354a
    mov eax, dword ptr [rsp + 0x24]  ; 0x14000354c
    imul eax, dword ptr [rsp + 0x20]  ; 0x140003550
    mov dword ptr [rsp + 0x24], eax  ; 0x140003555
    jmp 0x140003538  ; 0x140003559
    mov eax, dword ptr [rsp + 0x24]  ; 0x14000355b
    add rsp, 0x48  ; 0x14000355f
    ret  ; 0x140003563
    int3   ; 0x140003564
    int3   ; 0x140003565
    int3   ; 0x140003566
    int3   ; 0x140003567
    int3   ; 0x140003568
    int3   ; 0x140003569
    int3   ; 0x14000356a
    int3   ; 0x14000356b
    int3   ; 0x14000356c
    int3   ; 0x14000356d
    int3   ; 0x14000356e
    int3   ; 0x14000356f
    mov dword ptr [rsp + 8], ecx  ; 0x140003570
    sub rsp, 0x18  ; 0x140003574
    cmp dword ptr [rsp + 0x20], 1  ; 0x140003578
    jg 0x140003586  ; 0x14000357d
    xor al, al  ; 0x14000357f
    jmp 0x140003607  ; 0x140003581
    cmp dword ptr [rsp + 0x20], 3  ; 0x140003586
    jg 0x140003591  ; 0x14000358b
    mov al, 1  ; 0x14000358d
    jmp 0x140003607  ; 0x14000358f
    mov eax, dword ptr [rsp + 0x20]  ; 0x140003591
    cdq   ; 0x140003595
    and eax, 1  ; 0x140003596
    xor eax, edx  ; 0x140003599
    sub eax, edx  ; 0x14000359b
    test eax, eax  ; 0x14000359d
    je 0x1400035b3  ; 0x14000359f
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400035a1
    cdq   ; 0x1400035a5
    mov ecx, 3  ; 0x1400035a6
    idiv ecx  ; 0x1400035ab
    mov eax, edx  ; 0x1400035ad
    test eax, eax  ; 0x1400035af
    jne 0x1400035b7  ; 0x1400035b1
    xor al, al  ; 0x1400035b3
    jmp 0x140003607  ; 0x1400035b5
    mov dword ptr [rsp], 5  ; 0x1400035b7
    jmp 0x1400035c9  ; 0x1400035be
    mov eax, dword ptr [rsp]  ; 0x1400035c0
    add eax, 6  ; 0x1400035c3
    mov dword ptr [rsp], eax  ; 0x1400035c6
    mov eax, dword ptr [rsp]  ; 0x1400035c9
    imul eax, dword ptr [rsp]  ; 0x1400035cc
    cmp eax, dword ptr [rsp + 0x20]  ; 0x1400035d0
    jg 0x140003605  ; 0x1400035d4
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400035d6
    cdq   ; 0x1400035da
    idiv dword ptr [rsp]  ; 0x1400035db
    mov eax, edx  ; 0x1400035de
    test eax, eax  ; 0x1400035e0
    je 0x1400035ff  ; 0x1400035e2
    mov eax, dword ptr [rsp]  ; 0x1400035e4
    add eax, 2  ; 0x1400035e7
    mov dword ptr [rsp + 4], eax  ; 0x1400035ea
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400035ee
    cdq   ; 0x1400035f2
    mov ecx, dword ptr [rsp + 4]  ; 0x1400035f3
    idiv ecx  ; 0x1400035f7
    mov eax, edx  ; 0x1400035f9
    test eax, eax  ; 0x1400035fb
    jne 0x140003603  ; 0x1400035fd
    xor al, al  ; 0x1400035ff
    jmp 0x140003607  ; 0x140003601
    jmp 0x1400035c0  ; 0x140003603
    mov al, 1  ; 0x140003605
    add rsp, 0x18  ; 0x140003607
    ret  ; 0x14000360b
    int3   ; 0x14000360c
    int3   ; 0x14000360d
    int3   ; 0x14000360e
    int3   ; 0x14000360f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003610
    mov qword ptr [rsp + 8], rcx  ; 0x140003615
    push rdi  ; 0x14000361a
    sub rsp, 0x30  ; 0x14000361b
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000361f
    lea rcx, [rip + 0x1ae3d]  ; 0x140003624
    mov qword ptr [rax], rcx  ; 0x14000362b
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000362e
    add rax, 8  ; 0x140003633
    mov rdi, rax  ; 0x140003637
    xor eax, eax  ; 0x14000363a
    mov ecx, 0x10  ; 0x14000363c
    rep stosb byte ptr [rdi], al  ; 0x140003641
    mov rax, qword ptr [rsp + 0x48]  ; 0x140003643
    mov qword ptr [rsp + 0x20], rax  ; 0x140003648
    mov byte ptr [rsp + 0x28], 1  ; 0x14000364d
    mov rax, qword ptr [rsp + 0x40]  ; 0x140003652
    add rax, 8  ; 0x140003657
    mov rdx, rax  ; 0x14000365b
    lea rcx, [rsp + 0x20]  ; 0x14000365e
    call 0x140005810  ; 0x140003663
    mov rax, qword ptr [rsp + 0x40]  ; 0x140003668
    add rsp, 0x30  ; 0x14000366d
    pop rdi  ; 0x140003671
    ret  ; 0x140003672
    int3   ; 0x140003673
    int3   ; 0x140003674
    int3   ; 0x140003675
    int3   ; 0x140003676
    int3   ; 0x140003677
    int3   ; 0x140003678
    int3   ; 0x140003679
    int3   ; 0x14000367a
    int3   ; 0x14000367b
    int3   ; 0x14000367c
    int3   ; 0x14000367d
    int3   ; 0x14000367e
    int3   ; 0x14000367f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003680
    mov qword ptr [rsp + 8], rcx  ; 0x140003685
    sub rsp, 0x28  ; 0x14000368a
    mov rdx, qword ptr [rsp + 0x38]  ; 0x14000368e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140003693
    call 0x140003700  ; 0x140003698
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000369d
    lea rcx, [rip + 0x1aec7]  ; 0x1400036a2
    mov qword ptr [rax], rcx  ; 0x1400036a9
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400036ac
    add rsp, 0x28  ; 0x1400036b1
    ret  ; 0x1400036b5
    int3   ; 0x1400036b6
    int3   ; 0x1400036b7
    int3   ; 0x1400036b8
    int3   ; 0x1400036b9
    int3   ; 0x1400036ba
    int3   ; 0x1400036bb
    int3   ; 0x1400036bc
    int3   ; 0x1400036bd
    int3   ; 0x1400036be
    int3   ; 0x1400036bf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400036c0
    mov qword ptr [rsp + 8], rcx  ; 0x1400036c5
    sub rsp, 0x28  ; 0x1400036ca
    mov rdx, qword ptr [rsp + 0x38]  ; 0x1400036ce
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400036d3
    call 0x140003740  ; 0x1400036d8
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400036dd
    lea rcx, [rip + 0x1ae87]  ; 0x1400036e2
    mov qword ptr [rax], rcx  ; 0x1400036e9
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400036ec
    add rsp, 0x28  ; 0x1400036f1
    ret  ; 0x1400036f5
    int3   ; 0x1400036f6
    int3   ; 0x1400036f7
    int3   ; 0x1400036f8
    int3   ; 0x1400036f9
    int3   ; 0x1400036fa
    int3   ; 0x1400036fb
    int3   ; 0x1400036fc
    int3   ; 0x1400036fd
    int3   ; 0x1400036fe
    int3   ; 0x1400036ff
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003700
    mov qword ptr [rsp + 8], rcx  ; 0x140003705
    sub rsp, 0x28  ; 0x14000370a
    mov rdx, qword ptr [rsp + 0x38]  ; 0x14000370e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140003713
    call 0x1400021d0  ; 0x140003718
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000371d
    lea rcx, [rip + 0x1ae2f]  ; 0x140003722
    mov qword ptr [rax], rcx  ; 0x140003729
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000372c
    add rsp, 0x28  ; 0x140003731
    ret  ; 0x140003735
    int3   ; 0x140003736
    int3   ; 0x140003737
    int3   ; 0x140003738
    int3   ; 0x140003739
    int3   ; 0x14000373a
    int3   ; 0x14000373b
    int3   ; 0x14000373c
    int3   ; 0x14000373d
    int3   ; 0x14000373e
    int3   ; 0x14000373f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003740
    mov qword ptr [rsp + 8], rcx  ; 0x140003745
    sub rsp, 0x28  ; 0x14000374a
    mov rdx, qword ptr [rsp + 0x38]  ; 0x14000374e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140003753
    call 0x140003610  ; 0x140003758
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000375d
    lea rcx, [rip + 0x1adef]  ; 0x140003762
    mov qword ptr [rax], rcx  ; 0x140003769
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000376c
    add rsp, 0x28  ; 0x140003771
    ret  ; 0x140003775
    int3   ; 0x140003776
    int3   ; 0x140003777
    int3   ; 0x140003778
    int3   ; 0x140003779
    int3   ; 0x14000377a
    int3   ; 0x14000377b
    int3   ; 0x14000377c
    int3   ; 0x14000377d
    int3   ; 0x14000377e
    int3   ; 0x14000377f
    mov qword ptr [rsp + 8], rcx  ; 0x140003780
    sub rsp, 0x28  ; 0x140003785
    movzx eax, byte ptr [rip + 0x27498]  ; 0x140003789
    test eax, eax  ; 0x140003790
    jne 0x1400037a6  ; 0x140003792
    mov ecx, 0xfde9  ; 0x140003794
    call qword ptr [rip + 0x1a861]  ; 0x140003799
    mov byte ptr [rip + 0x27482], 1  ; 0x14000379f
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400037a6
    call 0x140004380  ; 0x1400037ab
    mov rdx, rax  ; 0x1400037b0
    lea rcx, [rip + 0x1add6]  ; 0x1400037b3
    call 0x1400046e0  ; 0x1400037ba
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400037bf
    call 0x1400022c0  ; 0x1400037c4
    add rsp, 0x28  ; 0x1400037c9
    ret  ; 0x1400037cd
    int3   ; 0x1400037ce
    int3   ; 0x1400037cf
    int3   ; 0x1400037d0
    int3   ; 0x1400037d1
    int3   ; 0x1400037d2
    int3   ; 0x1400037d3
    int3   ; 0x1400037d4
    int3   ; 0x1400037d5
    int3   ; 0x1400037d6
    int3   ; 0x1400037d7
    int3   ; 0x1400037d8
    int3   ; 0x1400037d9
    int3   ; 0x1400037da
    int3   ; 0x1400037db
    int3   ; 0x1400037dc
    int3   ; 0x1400037dd
    int3   ; 0x1400037de
    int3   ; 0x1400037df
    mov dword ptr [rsp + 0x10], edx  ; 0x1400037e0
    mov qword ptr [rsp + 8], rcx  ; 0x1400037e4
    sub rsp, 0x38  ; 0x1400037e9
    mov dword ptr [rsp + 0x20], 0  ; 0x1400037ed
    mov edx, dword ptr [rsp + 0x48]  ; 0x1400037f5
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400037f9
    call 0x1400043b0  ; 0x1400037fe
    mov eax, dword ptr [rsp + 0x20]  ; 0x140003803
    or eax, 1  ; 0x140003807
    mov dword ptr [rsp + 0x20], eax  ; 0x14000380a
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000380e
    add rsp, 0x38  ; 0x140003813
    ret  ; 0x140003817
    int3   ; 0x140003818
    int3   ; 0x140003819
    int3   ; 0x14000381a
    int3   ; 0x14000381b
    int3   ; 0x14000381c
    int3   ; 0x14000381d
    int3   ; 0x14000381e
    int3   ; 0x14000381f
    movsd qword ptr [rsp + 0x10], xmm1  ; 0x140003820
    mov qword ptr [rsp + 8], rcx  ; 0x140003826
    sub rsp, 0x38  ; 0x14000382b
    mov dword ptr [rsp + 0x20], 0  ; 0x14000382f
    movsd xmm1, qword ptr [rsp + 0x48]  ; 0x140003837
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000383d
    call 0x140004430  ; 0x140003842
    mov eax, dword ptr [rsp + 0x20]  ; 0x140003847
    or eax, 1  ; 0x14000384b
    mov dword ptr [rsp + 0x20], eax  ; 0x14000384e
    mov rax, qword ptr [rsp + 0x40]  ; 0x140003852
    add rsp, 0x38  ; 0x140003857
    ret  ; 0x14000385b
    int3   ; 0x14000385c
    int3   ; 0x14000385d
    int3   ; 0x14000385e
    int3   ; 0x14000385f
    int3   ; 0x140003860
    int3   ; 0x140003861
    int3   ; 0x140003862
    int3   ; 0x140003863
    int3   ; 0x140003864
    int3   ; 0x140003865
    int3   ; 0x140003866
    int3   ; 0x140003867
    int3   ; 0x140003868
    int3   ; 0x140003869
    int3   ; 0x14000386a
    int3   ; 0x14000386b
    int3   ; 0x14000386c
    int3   ; 0x14000386d
    int3   ; 0x14000386e
    int3   ; 0x14000386f
    movss dword ptr [rsp + 0x10], xmm1  ; 0x140003870
    mov qword ptr [rsp + 8], rcx  ; 0x140003876
    sub rsp, 0x38  ; 0x14000387b
    mov dword ptr [rsp + 0x20], 0  ; 0x14000387f
    movss xmm1, dword ptr [rsp + 0x48]  ; 0x140003887
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000388d
    call 0x1400043f0  ; 0x140003892
    mov eax, dword ptr [rsp + 0x20]  ; 0x140003897
    or eax, 1  ; 0x14000389b
    mov dword ptr [rsp + 0x20], eax  ; 0x14000389e
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400038a2
    add rsp, 0x38  ; 0x1400038a7
    ret  ; 0x1400038ab
    int3   ; 0x1400038ac
    int3   ; 0x1400038ad
    int3   ; 0x1400038ae
    int3   ; 0x1400038af
    int3   ; 0x1400038b0
    int3   ; 0x1400038b1
    int3   ; 0x1400038b2
    int3   ; 0x1400038b3
    int3   ; 0x1400038b4
    int3   ; 0x1400038b5
    int3   ; 0x1400038b6
    int3   ; 0x1400038b7
    int3   ; 0x1400038b8
    int3   ; 0x1400038b9
    int3   ; 0x1400038ba
    int3   ; 0x1400038bb
    int3   ; 0x1400038bc
    int3   ; 0x1400038bd
    int3   ; 0x1400038be
    int3   ; 0x1400038bf
    mov dword ptr [rsp + 0x10], edx  ; 0x1400038c0
    mov qword ptr [rsp + 8], rcx  ; 0x1400038c4
    sub rsp, 0x38  ; 0x1400038c9
    mov dword ptr [rsp + 0x20], 0  ; 0x1400038cd
    mov edx, dword ptr [rsp + 0x48]  ; 0x1400038d5
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400038d9
    call 0x1400043b0  ; 0x1400038de
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400038e3
    or eax, 1  ; 0x1400038e7
    mov dword ptr [rsp + 0x20], eax  ; 0x1400038ea
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400038ee
    add rsp, 0x38  ; 0x1400038f3
    ret  ; 0x1400038f7
    int3   ; 0x1400038f8
    int3   ; 0x1400038f9
    int3   ; 0x1400038fa
    int3   ; 0x1400038fb
    int3   ; 0x1400038fc
    int3   ; 0x1400038fd
    int3   ; 0x1400038fe
    int3   ; 0x1400038ff
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003900
    mov qword ptr [rsp + 8], rcx  ; 0x140003905
    sub rsp, 0x38  ; 0x14000390a
    mov dword ptr [rsp + 0x20], 0  ; 0x14000390e
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140003916
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000391b
    call 0x1400044d0  ; 0x140003920
    mov eax, dword ptr [rsp + 0x20]  ; 0x140003925
    or eax, 1  ; 0x140003929
    mov dword ptr [rsp + 0x20], eax  ; 0x14000392c
    mov rax, qword ptr [rsp + 0x40]  ; 0x140003930
    add rsp, 0x38  ; 0x140003935
    ret  ; 0x140003939
    int3   ; 0x14000393a
    int3   ; 0x14000393b
    int3   ; 0x14000393c
    int3   ; 0x14000393d
    int3   ; 0x14000393e
    int3   ; 0x14000393f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003940
    mov qword ptr [rsp + 8], rcx  ; 0x140003945
    sub rsp, 0x38  ; 0x14000394a
    mov dword ptr [rsp + 0x20], 0  ; 0x14000394e
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140003956
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000395b
    call 0x140004510  ; 0x140003960
    mov eax, dword ptr [rsp + 0x20]  ; 0x140003965
    or eax, 1  ; 0x140003969
    mov dword ptr [rsp + 0x20], eax  ; 0x14000396c
    mov rax, qword ptr [rsp + 0x40]  ; 0x140003970
    add rsp, 0x38  ; 0x140003975
    ret  ; 0x140003979
    int3   ; 0x14000397a
    int3   ; 0x14000397b
    int3   ; 0x14000397c
    int3   ; 0x14000397d
    int3   ; 0x14000397e
    int3   ; 0x14000397f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003980
    mov qword ptr [rsp + 8], rcx  ; 0x140003985
    sub rsp, 0x38  ; 0x14000398a
    mov dword ptr [rsp + 0x20], 0  ; 0x14000398e
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140003996
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000399b
    call 0x140002030  ; 0x1400039a0
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400039a5
    or eax, 1  ; 0x1400039a9
    mov dword ptr [rsp + 0x20], eax  ; 0x1400039ac
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400039b0
    add rsp, 0x38  ; 0x1400039b5
    ret  ; 0x1400039b9
    int3   ; 0x1400039ba
    int3   ; 0x1400039bb
    int3   ; 0x1400039bc
    int3   ; 0x1400039bd
    int3   ; 0x1400039be
    int3   ; 0x1400039bf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400039c0
    mov qword ptr [rsp + 8], rcx  ; 0x1400039c5
    sub rsp, 0x38  ; 0x1400039ca
    mov dword ptr [rsp + 0x20], 0  ; 0x1400039ce
    mov rdx, qword ptr [rsp + 0x48]  ; 0x1400039d6
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400039db
    call 0x1400040d0  ; 0x1400039e0
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400039e5
    or eax, 1  ; 0x1400039e9
    mov dword ptr [rsp + 0x20], eax  ; 0x1400039ec
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400039f0
    add rsp, 0x38  ; 0x1400039f5
    ret  ; 0x1400039f9
    int3   ; 0x1400039fa
    int3   ; 0x1400039fb
    int3   ; 0x1400039fc
    int3   ; 0x1400039fd
    int3   ; 0x1400039fe
    int3   ; 0x1400039ff
    mov qword ptr [rsp + 0x20], r9  ; 0x140003a00
    mov qword ptr [rsp + 0x18], r8  ; 0x140003a05
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003a0a
    mov qword ptr [rsp + 8], rcx  ; 0x140003a0f
    sub rsp, 0x48  ; 0x140003a14
    mov rax, qword ptr [rsp + 0x50]  ; 0x140003a18
    mov qword ptr [rsp + 0x38], rax  ; 0x140003a1d
    mov r8, qword ptr [rsp + 0x68]  ; 0x140003a22
    movzx edx, byte ptr [rsp + 0x20]  ; 0x140003a27
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140003a2c
    call 0x140001540  ; 0x140003a31
    nop  ; 0x140003a36
    lea rdx, [rsp + 0x60]  ; 0x140003a37
    lea rcx, [rsp + 0x58]  ; 0x140003a3c
    call 0x140002650  ; 0x140003a41
    lea rcx, [rsp + 0x58]  ; 0x140003a46
    call 0x140003da0  ; 0x140003a4b
    mov qword ptr [rsp + 0x28], rax  ; 0x140003a50
    lea rcx, [rsp + 0x60]  ; 0x140003a55
    call 0x140003da0  ; 0x140003a5a
    mov qword ptr [rsp + 0x30], rax  ; 0x140003a5f
    mov rax, qword ptr [rsp + 0x30]  ; 0x140003a64
    cmp qword ptr [rsp + 0x28], rax  ; 0x140003a69
    jne 0x140003a7c  ; 0x140003a6e
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140003a70
    call 0x1400041f0  ; 0x140003a75
    jmp 0x140003aa7  ; 0x140003a7a
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003a7c
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140003a81
    sub rcx, rax  ; 0x140003a86
    mov rax, rcx  ; 0x140003a89
    mov rcx, rax  ; 0x140003a8c
    call 0x1400019c0  ; 0x140003a8f
    mov r8, rax  ; 0x140003a94
    mov rdx, qword ptr [rsp + 0x28]  ; 0x140003a97
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140003a9c
    call 0x1400017d0  ; 0x140003aa1
    nop  ; 0x140003aa6
    mov rax, qword ptr [rsp + 0x50]  ; 0x140003aa7
    add rsp, 0x48  ; 0x140003aac
    ret  ; 0x140003ab0
    int3   ; 0x140003ab1
    int3   ; 0x140003ab2
    int3   ; 0x140003ab3
    int3   ; 0x140003ab4
    int3   ; 0x140003ab5
    int3   ; 0x140003ab6
    int3   ; 0x140003ab7
    int3   ; 0x140003ab8
    int3   ; 0x140003ab9
    int3   ; 0x140003aba
    int3   ; 0x140003abb
    int3   ; 0x140003abc
    int3   ; 0x140003abd
    int3   ; 0x140003abe
    int3   ; 0x140003abf
    mov qword ptr [rsp + 0x18], r8  ; 0x140003ac0
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003ac5
    mov qword ptr [rsp + 8], rcx  ; 0x140003aca
    sub rsp, 0x68  ; 0x140003acf
    mov rax, qword ptr [rsp + 0x70]  ; 0x140003ad3
    mov qword ptr [rsp + 0x28], rax  ; 0x140003ad8
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140003add
    call 0x140003190  ; 0x140003ae2
    cmp qword ptr [rsp + 0x80], rax  ; 0x140003ae7
    jbe 0x140003af6  ; 0x140003aef
    call 0x140002b90  ; 0x140003af1
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140003af6
    call 0x1400027e0  ; 0x140003afb
    mov qword ptr [rsp + 0x48], rax  ; 0x140003b00
    lea rax, [rip + 0x1a97e]  ; 0x140003b05
    mov qword ptr [rsp + 0x40], rax  ; 0x140003b0c
    mov r8, qword ptr [rsp + 0x28]  ; 0x140003b11
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140003b16
    lea rcx, [rsp + 0x20]  ; 0x140003b1b
    call 0x1400020b0  ; 0x140003b20
    cmp qword ptr [rsp + 0x80], 0xf  ; 0x140003b25
    ja 0x140003b75  ; 0x140003b2e
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003b30
    mov rcx, qword ptr [rsp + 0x80]  ; 0x140003b35
    mov qword ptr [rax + 0x10], rcx  ; 0x140003b3d
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003b41
    mov qword ptr [rax + 0x18], 0xf  ; 0x140003b46
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003b4e
    mov r8d, 0x10  ; 0x140003b53
    mov rdx, qword ptr [rsp + 0x78]  ; 0x140003b59
    mov rcx, rax  ; 0x140003b5e
    call 0x140002dc0  ; 0x140003b61
    lea rcx, [rsp + 0x20]  ; 0x140003b66
    call 0x140001a30  ; 0x140003b6b
    jmp 0x140003c17  ; 0x140003b70
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140003b75
    call 0x140003190  ; 0x140003b7a
    mov r8, rax  ; 0x140003b7f
    mov edx, 0xf  ; 0x140003b82
    mov rcx, qword ptr [rsp + 0x80]  ; 0x140003b87
    call 0x1400026d0  ; 0x140003b8f
    mov qword ptr [rsp + 0x30], rax  ; 0x140003b94
    lea rdx, [rsp + 0x30]  ; 0x140003b99
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140003b9e
    call 0x140001690  ; 0x140003ba3
    mov qword ptr [rsp + 0x38], rax  ; 0x140003ba8
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003bad
    lea rdx, [rsp + 0x38]  ; 0x140003bb2
    mov rcx, rax  ; 0x140003bb7
    call 0x140001950  ; 0x140003bba
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003bbf
    mov rcx, qword ptr [rsp + 0x80]  ; 0x140003bc4
    mov qword ptr [rax + 0x10], rcx  ; 0x140003bcc
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003bd0
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140003bd5
    mov qword ptr [rax + 0x18], rcx  ; 0x140003bda
    mov rax, qword ptr [rsp + 0x80]  ; 0x140003bde
    inc rax  ; 0x140003be6
    mov qword ptr [rsp + 0x50], rax  ; 0x140003be9
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140003bee
    call 0x1400019c0  ; 0x140003bf3
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140003bf8
    mov r8, rcx  ; 0x140003bfd
    mov rdx, qword ptr [rsp + 0x78]  ; 0x140003c00
    mov rcx, rax  ; 0x140003c05
    call 0x140002dc0  ; 0x140003c08
    lea rcx, [rsp + 0x20]  ; 0x140003c0d
    call 0x140001a30  ; 0x140003c12
    add rsp, 0x68  ; 0x140003c17
    ret  ; 0x140003c1b
    int3   ; 0x140003c1c
    int3   ; 0x140003c1d
    int3   ; 0x140003c1e
    int3   ; 0x140003c1f
    mov qword ptr [rsp + 0x18], r8  ; 0x140003c20
    mov byte ptr [rsp + 0x10], dl  ; 0x140003c25
    mov qword ptr [rsp + 8], rcx  ; 0x140003c29
    sub rsp, 0x58  ; 0x140003c2e
    mov rax, qword ptr [rsp + 0x60]  ; 0x140003c32
    mov qword ptr [rsp + 0x28], rax  ; 0x140003c37
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140003c3c
    call 0x140003190  ; 0x140003c41
    cmp qword ptr [rsp + 0x70], rax  ; 0x140003c46
    jbe 0x140003c52  ; 0x140003c4b
    call 0x140002b90  ; 0x140003c4d
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140003c52
    call 0x1400027e0  ; 0x140003c57
    mov qword ptr [rsp + 0x48], rax  ; 0x140003c5c
    lea rax, [rip + 0x1a822]  ; 0x140003c61
    mov qword ptr [rsp + 0x40], rax  ; 0x140003c68
    mov r8, qword ptr [rsp + 0x28]  ; 0x140003c6d
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140003c72
    lea rcx, [rsp + 0x20]  ; 0x140003c77
    call 0x1400020b0  ; 0x140003c7c
    cmp qword ptr [rsp + 0x70], 0xf  ; 0x140003c81
    ja 0x140003ced  ; 0x140003c87
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003c89
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140003c8e
    mov qword ptr [rax + 0x10], rcx  ; 0x140003c93
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003c97
    mov qword ptr [rax + 0x18], 0xf  ; 0x140003c9c
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003ca4
    movzx r8d, byte ptr [rsp + 0x68]  ; 0x140003ca9
    mov rdx, qword ptr [rsp + 0x70]  ; 0x140003caf
    mov rcx, rax  ; 0x140003cb4
    call 0x140004320  ; 0x140003cb7
    mov byte ptr [rsp + 0x21], 0  ; 0x140003cbc
    mov rax, qword ptr [rsp + 0x70]  ; 0x140003cc1
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140003cc6
    add rcx, rax  ; 0x140003ccb
    mov rax, rcx  ; 0x140003cce
    lea rdx, [rsp + 0x21]  ; 0x140003cd1
    mov rcx, rax  ; 0x140003cd6
    call 0x140002d80  ; 0x140003cd9
    lea rcx, [rsp + 0x20]  ; 0x140003cde
    call 0x140001a30  ; 0x140003ce3
    jmp 0x140003d98  ; 0x140003ce8
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140003ced
    call 0x140003190  ; 0x140003cf2
    mov r8, rax  ; 0x140003cf7
    mov edx, 0xf  ; 0x140003cfa
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140003cff
    call 0x1400026d0  ; 0x140003d04
    mov qword ptr [rsp + 0x38], rax  ; 0x140003d09
    lea rdx, [rsp + 0x38]  ; 0x140003d0e
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140003d13
    call 0x140001690  ; 0x140003d18
    mov qword ptr [rsp + 0x30], rax  ; 0x140003d1d
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003d22
    lea rdx, [rsp + 0x30]  ; 0x140003d27
    mov rcx, rax  ; 0x140003d2c
    call 0x140001950  ; 0x140003d2f
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003d34
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140003d39
    mov qword ptr [rax + 0x10], rcx  ; 0x140003d3e
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003d42
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140003d47
    mov qword ptr [rax + 0x18], rcx  ; 0x140003d4c
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140003d50
    call 0x1400019c0  ; 0x140003d55
    movzx r8d, byte ptr [rsp + 0x68]  ; 0x140003d5a
    mov rdx, qword ptr [rsp + 0x70]  ; 0x140003d60
    mov rcx, rax  ; 0x140003d65
    call 0x140004320  ; 0x140003d68
    mov byte ptr [rsp + 0x22], 0  ; 0x140003d6d
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140003d72
    call 0x1400019c0  ; 0x140003d77
    add rax, qword ptr [rsp + 0x70]  ; 0x140003d7c
    lea rdx, [rsp + 0x22]  ; 0x140003d81
    mov rcx, rax  ; 0x140003d86
    call 0x140002d80  ; 0x140003d89
    lea rcx, [rsp + 0x20]  ; 0x140003d8e
    call 0x140001a30  ; 0x140003d93
    add rsp, 0x58  ; 0x140003d98
    ret  ; 0x140003d9c
    int3   ; 0x140003d9d
    int3   ; 0x140003d9e
    int3   ; 0x140003d9f
    mov qword ptr [rsp + 8], rcx  ; 0x140003da0
    mov rax, qword ptr [rsp + 8]  ; 0x140003da5
    mov rax, qword ptr [rax]  ; 0x140003daa
    ret  ; 0x140003dad
    int3   ; 0x140003dae
    int3   ; 0x140003daf
    mov dword ptr [rsp + 0x10], edx  ; 0x140003db0
    mov qword ptr [rsp + 8], rcx  ; 0x140003db4
    sub rsp, 0x68  ; 0x140003db9
    mov rax, qword ptr [rip + 0x2623c]  ; 0x140003dbd
    xor rax, rsp  ; 0x140003dc4
    mov qword ptr [rsp + 0x58], rax  ; 0x140003dc7
    mov dword ptr [rsp + 0x30], 0  ; 0x140003dcc
    lea rcx, [rsp + 0x40]  ; 0x140003dd4
    call 0x1400040c0  ; 0x140003dd9
    mov qword ptr [rsp + 0x38], rax  ; 0x140003dde
    mov rax, qword ptr [rsp + 0x38]  ; 0x140003de3
    mov qword ptr [rsp + 0x20], rax  ; 0x140003de8
    mov eax, dword ptr [rsp + 0x78]  ; 0x140003ded
    mov dword ptr [rsp + 0x2c], eax  ; 0x140003df1
    cmp dword ptr [rsp + 0x78], 0  ; 0x140003df5
    jge 0x140003e2a  ; 0x140003dfa
    xor eax, eax  ; 0x140003dfc
    sub eax, dword ptr [rsp + 0x2c]  ; 0x140003dfe
    mov edx, eax  ; 0x140003e02
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140003e04
    call 0x140003f60  ; 0x140003e09
    mov qword ptr [rsp + 0x20], rax  ; 0x140003e0e
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003e13
    dec rax  ; 0x140003e18
    mov qword ptr [rsp + 0x20], rax  ; 0x140003e1b
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003e20
    mov byte ptr [rax], 0x2d  ; 0x140003e25
    jmp 0x140003e3d  ; 0x140003e28
    mov edx, dword ptr [rsp + 0x2c]  ; 0x140003e2a
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140003e2e
    call 0x140003f60  ; 0x140003e33
    mov qword ptr [rsp + 0x20], rax  ; 0x140003e38
    lea rcx, [rsp + 0x28]  ; 0x140003e3d
    call 0x1400019c0  ; 0x140003e42
    mov r9, rax  ; 0x140003e47
    mov r8, qword ptr [rsp + 0x38]  ; 0x140003e4a
    mov rdx, qword ptr [rsp + 0x20]  ; 0x140003e4f
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140003e54
    call 0x140003a00  ; 0x140003e59
    mov eax, dword ptr [rsp + 0x30]  ; 0x140003e5e
    or eax, 1  ; 0x140003e62
    mov dword ptr [rsp + 0x30], eax  ; 0x140003e65
    mov rax, qword ptr [rsp + 0x70]  ; 0x140003e69
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140003e6e
    xor rcx, rsp  ; 0x140003e73
    call 0x140004a50  ; 0x140003e76
    add rsp, 0x68  ; 0x140003e7b
    ret  ; 0x140003e7f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003e80
    mov qword ptr [rsp + 8], rcx  ; 0x140003e85
    sub rsp, 0x68  ; 0x140003e8a
    mov rax, qword ptr [rip + 0x2616b]  ; 0x140003e8e
    xor rax, rsp  ; 0x140003e95
    mov qword ptr [rsp + 0x58], rax  ; 0x140003e98
    mov dword ptr [rsp + 0x2c], 0  ; 0x140003e9d
    lea rcx, [rsp + 0x40]  ; 0x140003ea5
    call 0x1400040c0  ; 0x140003eaa
    mov qword ptr [rsp + 0x38], rax  ; 0x140003eaf
    mov rax, qword ptr [rsp + 0x38]  ; 0x140003eb4
    mov qword ptr [rsp + 0x20], rax  ; 0x140003eb9
    mov rax, qword ptr [rsp + 0x78]  ; 0x140003ebe
    mov qword ptr [rsp + 0x30], rax  ; 0x140003ec3
    cmp qword ptr [rsp + 0x78], 0  ; 0x140003ec8
    jge 0x140003f00  ; 0x140003ece
    xor eax, eax  ; 0x140003ed0
    sub rax, qword ptr [rsp + 0x30]  ; 0x140003ed2
    mov rdx, rax  ; 0x140003ed7
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140003eda
    call 0x140003fc0  ; 0x140003edf
    mov qword ptr [rsp + 0x20], rax  ; 0x140003ee4
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003ee9
    dec rax  ; 0x140003eee
    mov qword ptr [rsp + 0x20], rax  ; 0x140003ef1
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003ef6
    mov byte ptr [rax], 0x2d  ; 0x140003efb
    jmp 0x140003f14  ; 0x140003efe
    mov rdx, qword ptr [rsp + 0x30]  ; 0x140003f00
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140003f05
    call 0x140003fc0  ; 0x140003f0a
    mov qword ptr [rsp + 0x20], rax  ; 0x140003f0f
    lea rcx, [rsp + 0x28]  ; 0x140003f14
    call 0x1400019c0  ; 0x140003f19
    mov r9, rax  ; 0x140003f1e
    mov r8, qword ptr [rsp + 0x38]  ; 0x140003f21
    mov rdx, qword ptr [rsp + 0x20]  ; 0x140003f26
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140003f2b
    call 0x140003a00  ; 0x140003f30
    mov eax, dword ptr [rsp + 0x2c]  ; 0x140003f35
    or eax, 1  ; 0x140003f39
    mov dword ptr [rsp + 0x2c], eax  ; 0x140003f3c
    mov rax, qword ptr [rsp + 0x70]  ; 0x140003f40
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140003f45
    xor rcx, rsp  ; 0x140003f4a
    call 0x140004a50  ; 0x140003f4d
    add rsp, 0x68  ; 0x140003f52
    ret  ; 0x140003f56
    int3   ; 0x140003f57
    int3   ; 0x140003f58
    int3   ; 0x140003f59
    int3   ; 0x140003f5a
    int3   ; 0x140003f5b
    int3   ; 0x140003f5c
    int3   ; 0x140003f5d
    int3   ; 0x140003f5e
    int3   ; 0x140003f5f
    mov dword ptr [rsp + 0x10], edx  ; 0x140003f60
    mov qword ptr [rsp + 8], rcx  ; 0x140003f64
    sub rsp, 0x18  ; 0x140003f69
    mov eax, dword ptr [rsp + 0x28]  ; 0x140003f6d
    mov dword ptr [rsp], eax  ; 0x140003f71
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003f74
    dec rax  ; 0x140003f79
    mov qword ptr [rsp + 0x20], rax  ; 0x140003f7c
    xor edx, edx  ; 0x140003f81
    mov eax, dword ptr [rsp]  ; 0x140003f83
    mov ecx, 0xa  ; 0x140003f86
    div ecx  ; 0x140003f8b
    mov eax, edx  ; 0x140003f8d
    add eax, 0x30  ; 0x140003f8f
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140003f92
    mov byte ptr [rcx], al  ; 0x140003f97
    xor edx, edx  ; 0x140003f99
    mov eax, dword ptr [rsp]  ; 0x140003f9b
    mov ecx, 0xa  ; 0x140003f9e
    div ecx  ; 0x140003fa3
    mov dword ptr [rsp], eax  ; 0x140003fa5
    cmp dword ptr [rsp], 0  ; 0x140003fa8
    jne 0x140003f74  ; 0x140003fac
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003fae
    add rsp, 0x18  ; 0x140003fb3
    ret  ; 0x140003fb7
    int3   ; 0x140003fb8
    int3   ; 0x140003fb9
    int3   ; 0x140003fba
    int3   ; 0x140003fbb
    int3   ; 0x140003fbc
    int3   ; 0x140003fbd
    int3   ; 0x140003fbe
    int3   ; 0x140003fbf
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003fc0
    mov qword ptr [rsp + 8], rcx  ; 0x140003fc5
    sub rsp, 0x18  ; 0x140003fca
    mov rax, qword ptr [rsp + 0x28]  ; 0x140003fce
    mov qword ptr [rsp], rax  ; 0x140003fd3
    mov rax, qword ptr [rsp + 0x20]  ; 0x140003fd7
    dec rax  ; 0x140003fdc
    mov qword ptr [rsp + 0x20], rax  ; 0x140003fdf
    xor edx, edx  ; 0x140003fe4
    mov rax, qword ptr [rsp]  ; 0x140003fe6
    mov ecx, 0xa  ; 0x140003fea
    div rcx  ; 0x140003fef
    mov rax, rdx  ; 0x140003ff2
    add rax, 0x30  ; 0x140003ff5
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140003ff9
    mov byte ptr [rcx], al  ; 0x140003ffe
    xor edx, edx  ; 0x140004000
    mov rax, qword ptr [rsp]  ; 0x140004002
    mov ecx, 0xa  ; 0x140004006
    div rcx  ; 0x14000400b
    mov qword ptr [rsp], rax  ; 0x14000400e
    cmp qword ptr [rsp], 0  ; 0x140004012
    jne 0x140003fd7  ; 0x140004017
    mov rax, qword ptr [rsp + 0x20]  ; 0x140004019
    add rsp, 0x18  ; 0x14000401e
    ret  ; 0x140004022
    int3   ; 0x140004023
    int3   ; 0x140004024
    int3   ; 0x140004025
    int3   ; 0x140004026
    int3   ; 0x140004027
    int3   ; 0x140004028
    int3   ; 0x140004029
    int3   ; 0x14000402a
    int3   ; 0x14000402b
    int3   ; 0x14000402c
    int3   ; 0x14000402d
    int3   ; 0x14000402e
    int3   ; 0x14000402f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140004030
    mov qword ptr [rsp + 8], rcx  ; 0x140004035
    sub rsp, 0x68  ; 0x14000403a
    mov rax, qword ptr [rip + 0x25fbb]  ; 0x14000403e
    xor rax, rsp  ; 0x140004045
    mov qword ptr [rsp + 0x50], rax  ; 0x140004048
    mov dword ptr [rsp + 0x24], 0  ; 0x14000404d
    lea rcx, [rsp + 0x38]  ; 0x140004055
    call 0x1400040c0  ; 0x14000405a
    mov qword ptr [rsp + 0x28], rax  ; 0x14000405f
    mov rdx, qword ptr [rsp + 0x78]  ; 0x140004064
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140004069
    call 0x140003fc0  ; 0x14000406e
    mov qword ptr [rsp + 0x30], rax  ; 0x140004073
    lea rcx, [rsp + 0x20]  ; 0x140004078
    call 0x1400019c0  ; 0x14000407d
    mov r9, rax  ; 0x140004082
    mov r8, qword ptr [rsp + 0x28]  ; 0x140004085
    mov rdx, qword ptr [rsp + 0x30]  ; 0x14000408a
    mov rcx, qword ptr [rsp + 0x70]  ; 0x14000408f
    call 0x140003a00  ; 0x140004094
    mov eax, dword ptr [rsp + 0x24]  ; 0x140004099
    or eax, 1  ; 0x14000409d
    mov dword ptr [rsp + 0x24], eax  ; 0x1400040a0
    mov rax, qword ptr [rsp + 0x70]  ; 0x1400040a4
    mov rcx, qword ptr [rsp + 0x50]  ; 0x1400040a9
    xor rcx, rsp  ; 0x1400040ae
    call 0x140004a50  ; 0x1400040b1
    add rsp, 0x68  ; 0x1400040b6
    ret  ; 0x1400040ba
    int3   ; 0x1400040bb
    int3   ; 0x1400040bc
    int3   ; 0x1400040bd
    int3   ; 0x1400040be
    int3   ; 0x1400040bf
    mov qword ptr [rsp + 8], rcx  ; 0x1400040c0
    mov rax, qword ptr [rsp + 8]  ; 0x1400040c5
    add rax, 0x15  ; 0x1400040ca
    ret  ; 0x1400040ce
    int3   ; 0x1400040cf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400040d0
    mov qword ptr [rsp + 8], rcx  ; 0x1400040d5
    sub rsp, 0x58  ; 0x1400040da
    mov rax, qword ptr [rsp + 0x60]  ; 0x1400040de
    mov qword ptr [rsp + 0x30], rax  ; 0x1400040e3
    mov rcx, qword ptr [rsp + 0x68]  ; 0x1400040e8
    call 0x1400027e0  ; 0x1400040ed
    mov rdx, rax  ; 0x1400040f2
    lea rcx, [rsp + 0x21]  ; 0x1400040f5
    call 0x1400043a0  ; 0x1400040fa
    mov qword ptr [rsp + 0x28], rax  ; 0x1400040ff
    movzx eax, byte ptr [rsp + 0x22]  ; 0x140004104
    mov byte ptr [rsp + 0x20], al  ; 0x140004109
    mov r8, qword ptr [rsp + 0x28]  ; 0x14000410d
    movzx edx, byte ptr [rsp + 0x20]  ; 0x140004112
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140004117
    call 0x140001540  ; 0x14000411c
    nop  ; 0x140004121
    mov rax, qword ptr [rsp + 0x68]  ; 0x140004122
    mov rax, qword ptr [rax + 0x10]  ; 0x140004127
    mov qword ptr [rsp + 0x38], rax  ; 0x14000412b
    mov rax, qword ptr [rsp + 0x68]  ; 0x140004130
    mov rcx, rax  ; 0x140004135
    call 0x140002830  ; 0x140004138
    mov qword ptr [rsp + 0x40], rax  ; 0x14000413d
    mov r8, qword ptr [rsp + 0x38]  ; 0x140004142
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140004147
    mov rcx, qword ptr [rsp + 0x60]  ; 0x14000414c
    call 0x140003ac0  ; 0x140004151
    nop  ; 0x140004156
    mov rax, qword ptr [rsp + 0x60]  ; 0x140004157
    add rsp, 0x58  ; 0x14000415c
    ret  ; 0x140004160
    int3   ; 0x140004161
    int3   ; 0x140004162
    int3   ; 0x140004163
    int3   ; 0x140004164
    int3   ; 0x140004165
    int3   ; 0x140004166
    int3   ; 0x140004167
    int3   ; 0x140004168
    int3   ; 0x140004169
    int3   ; 0x14000416a
    int3   ; 0x14000416b
    int3   ; 0x14000416c
    int3   ; 0x14000416d
    int3   ; 0x14000416e
    int3   ; 0x14000416f
    mov byte ptr [rsp + 0x18], r8b  ; 0x140004170
    mov qword ptr [rsp + 0x10], rdx  ; 0x140004175
    mov qword ptr [rsp + 8], rcx  ; 0x14000417a
    sub rsp, 0x38  ; 0x14000417f
    mov rax, qword ptr [rsp + 0x40]  ; 0x140004183
    mov qword ptr [rsp + 0x28], rax  ; 0x140004188
    movzx edx, byte ptr [rsp + 0x20]  ; 0x14000418d
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140004192
    call 0x140001510  ; 0x140004197
    nop  ; 0x14000419c
    mov r8, qword ptr [rsp + 0x48]  ; 0x14000419d
    movzx edx, byte ptr [rsp + 0x50]  ; 0x1400041a2
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400041a7
    call 0x140003c20  ; 0x1400041ac
    nop  ; 0x1400041b1
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400041b2
    add rsp, 0x38  ; 0x1400041b7
    ret  ; 0x1400041bb
    int3   ; 0x1400041bc
    int3   ; 0x1400041bd
    int3   ; 0x1400041be
    int3   ; 0x1400041bf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400041c0
    mov qword ptr [rsp + 8], rcx  ; 0x1400041c5
    sub rsp, 0x28  ; 0x1400041ca
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400041ce
    mov rcx, rax  ; 0x1400041d3
    call 0x140002830  ; 0x1400041d6
    add rax, qword ptr [rsp + 0x38]  ; 0x1400041db
    add rsp, 0x28  ; 0x1400041e0
    ret  ; 0x1400041e4
    int3   ; 0x1400041e5
    int3   ; 0x1400041e6
    int3   ; 0x1400041e7
    int3   ; 0x1400041e8
    int3   ; 0x1400041e9
    int3   ; 0x1400041ea
    int3   ; 0x1400041eb
    int3   ; 0x1400041ec
    int3   ; 0x1400041ed
    int3   ; 0x1400041ee
    int3   ; 0x1400041ef
    mov qword ptr [rsp + 8], rcx  ; 0x1400041f0
    sub rsp, 0x38  ; 0x1400041f5
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400041f9
    mov qword ptr [rsp + 0x28], rax  ; 0x1400041fe
    lea rdx, [rip + 0x1a280]  ; 0x140004203
    mov rcx, qword ptr [rsp + 0x28]  ; 0x14000420a
    call 0x140002650  ; 0x14000420f
    mov rax, qword ptr [rsp + 0x28]  ; 0x140004214
    mov qword ptr [rax + 0x10], 0  ; 0x140004219
    mov rax, qword ptr [rsp + 0x28]  ; 0x140004221
    mov qword ptr [rax + 0x18], 0xf  ; 0x140004226
    mov rcx, qword ptr [rsp + 0x28]  ; 0x14000422e
    call 0x140002560  ; 0x140004233
    mov byte ptr [rsp + 0x20], 0  ; 0x140004238
    mov eax, 1  ; 0x14000423d
    imul rax, rax, 0  ; 0x140004242
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140004246
    add rcx, rax  ; 0x14000424b
    mov rax, rcx  ; 0x14000424e
    lea rdx, [rsp + 0x20]  ; 0x140004251
    mov rcx, rax  ; 0x140004256
    call 0x140002d80  ; 0x140004259
    add rsp, 0x38  ; 0x14000425e
    ret  ; 0x140004262
    int3   ; 0x140004263
    int3   ; 0x140004264
    int3   ; 0x140004265
    int3   ; 0x140004266
    int3   ; 0x140004267
    int3   ; 0x140004268
    int3   ; 0x140004269
    int3   ; 0x14000426a
    int3   ; 0x14000426b
    int3   ; 0x14000426c
    int3   ; 0x14000426d
    int3   ; 0x14000426e
    int3   ; 0x14000426f
    mov byte ptr [rsp + 0x18], r8b  ; 0x140004270
    mov qword ptr [rsp + 0x10], rdx  ; 0x140004275
    mov qword ptr [rsp + 8], rcx  ; 0x14000427a
    sub rsp, 0x38  ; 0x14000427f
    call 0x140003120  ; 0x140004283
    movzx eax, al  ; 0x140004288
    test eax, eax  ; 0x14000428b
    je 0x1400042d0  ; 0x14000428d
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000428f
    mov qword ptr [rsp + 0x20], rax  ; 0x140004294
    jmp 0x1400042b5  ; 0x140004299
    mov rax, qword ptr [rsp + 0x48]  ; 0x14000429b
    dec rax  ; 0x1400042a0
    mov qword ptr [rsp + 0x48], rax  ; 0x1400042a3
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400042a8
    inc rax  ; 0x1400042ad
    mov qword ptr [rsp + 0x20], rax  ; 0x1400042b0
    cmp qword ptr [rsp + 0x48], 0  ; 0x1400042b5
    jbe 0x1400042ce  ; 0x1400042bb
    lea rdx, [rsp + 0x50]  ; 0x1400042bd
    mov rcx, qword ptr [rsp + 0x20]  ; 0x1400042c2
    call 0x140001e50  ; 0x1400042c7
    jmp 0x14000429b  ; 0x1400042cc
    jmp 0x14000430c  ; 0x1400042ce
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400042d0
    mov qword ptr [rsp + 0x28], rax  ; 0x1400042d5
    jmp 0x1400042f6  ; 0x1400042da
    mov rax, qword ptr [rsp + 0x48]  ; 0x1400042dc
    dec rax  ; 0x1400042e1
    mov qword ptr [rsp + 0x48], rax  ; 0x1400042e4
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400042e9
    inc rax  ; 0x1400042ee
    mov qword ptr [rsp + 0x28], rax  ; 0x1400042f1
    cmp qword ptr [rsp + 0x48], 0  ; 0x1400042f6
    jbe 0x14000430c  ; 0x1400042fc
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400042fe
    movzx ecx, byte ptr [rsp + 0x50]  ; 0x140004303
    mov byte ptr [rax], cl  ; 0x140004308
    jmp 0x1400042dc  ; 0x14000430a
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000430c
    add rsp, 0x38  ; 0x140004311
    ret  ; 0x140004315
    int3   ; 0x140004316
    int3   ; 0x140004317
    int3   ; 0x140004318
    int3   ; 0x140004319
    int3   ; 0x14000431a
    int3   ; 0x14000431b
    int3   ; 0x14000431c
    int3   ; 0x14000431d
    int3   ; 0x14000431e
    int3   ; 0x14000431f
    mov byte ptr [rsp + 0x18], r8b  ; 0x140004320
    mov qword ptr [rsp + 0x10], rdx  ; 0x140004325
    mov qword ptr [rsp + 8], rcx  ; 0x14000432a
    sub rsp, 0x28  ; 0x14000432f
    call 0x140003120  ; 0x140004333
    movzx eax, al  ; 0x140004338
    test eax, eax  ; 0x14000433b
    je 0x140004356  ; 0x14000433d
    movzx r8d, byte ptr [rsp + 0x40]  ; 0x14000433f
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140004345
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000434a
    call 0x140004270  ; 0x14000434f
    jmp 0x14000436c  ; 0x140004354
    movsx eax, byte ptr [rsp + 0x40]  ; 0x140004356
    mov r8, qword ptr [rsp + 0x38]  ; 0x14000435b
    mov edx, eax  ; 0x140004360
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140004362
    call 0x14001cd80  ; 0x140004367
    add rsp, 0x28  ; 0x14000436c
    ret  ; 0x140004370
    int3   ; 0x140004371
    int3   ; 0x140004372
    int3   ; 0x140004373
    int3   ; 0x140004374
    int3   ; 0x140004375
    int3   ; 0x140004376
    int3   ; 0x140004377
    int3   ; 0x140004378
    int3   ; 0x140004379
    int3   ; 0x14000437a
    int3   ; 0x14000437b
    int3   ; 0x14000437c
    int3   ; 0x14000437d
    int3   ; 0x14000437e
    int3   ; 0x14000437f
    mov qword ptr [rsp + 8], rcx  ; 0x140004380
    sub rsp, 0x28  ; 0x140004385
    mov rax, qword ptr [rsp + 0x30]  ; 0x140004389
    mov rcx, rax  ; 0x14000438e
    call 0x140002830  ; 0x140004391
    add rsp, 0x28  ; 0x140004396
    ret  ; 0x14000439a
    int3   ; 0x14000439b
    int3   ; 0x14000439c
    int3   ; 0x14000439d
    int3   ; 0x14000439e
    int3   ; 0x14000439f
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400043a0
    mov qword ptr [rsp + 8], rcx  ; 0x1400043a5
    mov rax, qword ptr [rsp + 8]  ; 0x1400043aa
    ret  ; 0x1400043af
    mov dword ptr [rsp + 0x10], edx  ; 0x1400043b0
    mov qword ptr [rsp + 8], rcx  ; 0x1400043b4
    sub rsp, 0x38  ; 0x1400043b9
    mov dword ptr [rsp + 0x20], 0  ; 0x1400043bd
    mov edx, dword ptr [rsp + 0x48]  ; 0x1400043c5
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400043c9
    call 0x140003db0  ; 0x1400043ce
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400043d3
    or eax, 1  ; 0x1400043d7
    mov dword ptr [rsp + 0x20], eax  ; 0x1400043da
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400043de
    add rsp, 0x38  ; 0x1400043e3
    ret  ; 0x1400043e7
    int3   ; 0x1400043e8
    int3   ; 0x1400043e9
    int3   ; 0x1400043ea
    int3   ; 0x1400043eb
    int3   ; 0x1400043ec
    int3   ; 0x1400043ed
    int3   ; 0x1400043ee
    int3   ; 0x1400043ef
    movss dword ptr [rsp + 0x10], xmm1  ; 0x1400043f0
    mov qword ptr [rsp + 8], rcx  ; 0x1400043f6
    sub rsp, 0x38  ; 0x1400043fb
    mov dword ptr [rsp + 0x20], 0  ; 0x1400043ff
    cvtss2sd xmm0, dword ptr [rsp + 0x48]  ; 0x140004407
    movaps xmm1, xmm0  ; 0x14000440d
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140004410
    call 0x140004430  ; 0x140004415
    mov eax, dword ptr [rsp + 0x20]  ; 0x14000441a
    or eax, 1  ; 0x14000441e
    mov dword ptr [rsp + 0x20], eax  ; 0x140004421
    mov rax, qword ptr [rsp + 0x40]  ; 0x140004425
    add rsp, 0x38  ; 0x14000442a
    ret  ; 0x14000442e
    int3   ; 0x14000442f
    movsd qword ptr [rsp + 0x10], xmm1  ; 0x140004430
    mov qword ptr [rsp + 8], rcx  ; 0x140004436
    sub rsp, 0x48  ; 0x14000443b
    mov dword ptr [rsp + 0x20], 0  ; 0x14000443f
    movsd xmm1, qword ptr [rsp + 0x58]  ; 0x140004447
    movq rdx, xmm1  ; 0x14000444d
    lea rcx, [rip + 0x1a13b]  ; 0x140004452
    call 0x140004560  ; 0x140004459
    cdqe   ; 0x14000445e
    mov qword ptr [rsp + 0x28], rax  ; 0x140004460
    xor r8d, r8d  ; 0x140004465
    mov rdx, qword ptr [rsp + 0x28]  ; 0x140004468
    mov rcx, qword ptr [rsp + 0x50]  ; 0x14000446d
    call 0x140004170  ; 0x140004472
    mov qword ptr [rsp + 0x38], rax  ; 0x140004477
    mov eax, dword ptr [rsp + 0x20]  ; 0x14000447c
    or eax, 1  ; 0x140004480
    mov dword ptr [rsp + 0x20], eax  ; 0x140004483
    mov rax, qword ptr [rsp + 0x28]  ; 0x140004487
    inc rax  ; 0x14000448c
    mov qword ptr [rsp + 0x30], rax  ; 0x14000448f
    xor edx, edx  ; 0x140004494
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140004496
    call 0x1400041c0  ; 0x14000449b
    movsd xmm3, qword ptr [rsp + 0x58]  ; 0x1400044a0
    movq r9, xmm3  ; 0x1400044a6
    lea r8, [rip + 0x1a0e2]  ; 0x1400044ab
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400044b2
    mov rdx, rcx  ; 0x1400044b7
    mov rcx, rax  ; 0x1400044ba
    call 0x140004750  ; 0x1400044bd
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400044c2
    add rsp, 0x48  ; 0x1400044c7
    ret  ; 0x1400044cb
    int3   ; 0x1400044cc
    int3   ; 0x1400044cd
    int3   ; 0x1400044ce
    int3   ; 0x1400044cf
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400044d0
    mov qword ptr [rsp + 8], rcx  ; 0x1400044d5
    sub rsp, 0x38  ; 0x1400044da
    mov dword ptr [rsp + 0x20], 0  ; 0x1400044de
    mov rdx, qword ptr [rsp + 0x48]  ; 0x1400044e6
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400044eb
    call 0x140003e80  ; 0x1400044f0
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400044f5
    or eax, 1  ; 0x1400044f9
    mov dword ptr [rsp + 0x20], eax  ; 0x1400044fc
    mov rax, qword ptr [rsp + 0x40]  ; 0x140004500
    add rsp, 0x38  ; 0x140004505
    ret  ; 0x140004509
    int3   ; 0x14000450a
    int3   ; 0x14000450b
    int3   ; 0x14000450c
    int3   ; 0x14000450d
    int3   ; 0x14000450e
    int3   ; 0x14000450f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140004510
    mov qword ptr [rsp + 8], rcx  ; 0x140004515
    sub rsp, 0x38  ; 0x14000451a
    mov dword ptr [rsp + 0x20], 0  ; 0x14000451e
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140004526
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000452b
    call 0x140004030  ; 0x140004530
    mov eax, dword ptr [rsp + 0x20]  ; 0x140004535
    or eax, 1  ; 0x140004539
    mov dword ptr [rsp + 0x20], eax  ; 0x14000453c
    mov rax, qword ptr [rsp + 0x40]  ; 0x140004540
    add rsp, 0x38  ; 0x140004545
    ret  ; 0x140004549
    int3   ; 0x14000454a
    int3   ; 0x14000454b
    int3   ; 0x14000454c
    int3   ; 0x14000454d
    int3   ; 0x14000454e
    int3   ; 0x14000454f
    lea rax, [rip + 0x266c9]  ; 0x140004550
    ret  ; 0x140004557
    int3   ; 0x140004558
    int3   ; 0x140004559
    int3   ; 0x14000455a
    int3   ; 0x14000455b
    int3   ; 0x14000455c
    int3   ; 0x14000455d
    int3   ; 0x14000455e
    int3   ; 0x14000455f
    mov qword ptr [rsp + 8], rcx  ; 0x140004560
    mov qword ptr [rsp + 0x10], rdx  ; 0x140004565
    mov qword ptr [rsp + 0x18], r8  ; 0x14000456a
    mov qword ptr [rsp + 0x20], r9  ; 0x14000456f
    sub rsp, 0x38  ; 0x140004574
    lea rax, [rsp + 0x48]  ; 0x140004578
    mov qword ptr [rsp + 0x28], rax  ; 0x14000457d
    mov r8, qword ptr [rsp + 0x28]  ; 0x140004582
    xor edx, edx  ; 0x140004587
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140004589
    call 0x140004600  ; 0x14000458e
    mov dword ptr [rsp + 0x20], eax  ; 0x140004593
    mov qword ptr [rsp + 0x28], 0  ; 0x140004597
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400045a0
    add rsp, 0x38  ; 0x1400045a4
    ret  ; 0x1400045a8
    int3   ; 0x1400045a9
    int3   ; 0x1400045aa
    int3   ; 0x1400045ab
    int3   ; 0x1400045ac
    int3   ; 0x1400045ad
    int3   ; 0x1400045ae
    int3   ; 0x1400045af
    mov qword ptr [rsp + 0x20], r9  ; 0x1400045b0
    mov qword ptr [rsp + 0x18], r8  ; 0x1400045b5
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400045ba
    mov qword ptr [rsp + 8], rcx  ; 0x1400045bf
    sub rsp, 0x38  ; 0x1400045c4
    call 0x140004550  ; 0x1400045c8
    mov rcx, qword ptr [rsp + 0x58]  ; 0x1400045cd
    mov qword ptr [rsp + 0x20], rcx  ; 0x1400045d2
    mov r9, qword ptr [rsp + 0x50]  ; 0x1400045d7
    mov r8, qword ptr [rsp + 0x48]  ; 0x1400045dc
    mov rdx, qword ptr [rsp + 0x40]  ; 0x1400045e1
    mov rcx, qword ptr [rax]  ; 0x1400045e6
    call 0x14000e614  ; 0x1400045e9
    add rsp, 0x38  ; 0x1400045ee
    ret  ; 0x1400045f2
    int3   ; 0x1400045f3
    int3   ; 0x1400045f4
    int3   ; 0x1400045f5
    int3   ; 0x1400045f6
    int3   ; 0x1400045f7
    int3   ; 0x1400045f8
    int3   ; 0x1400045f9
    int3   ; 0x1400045fa
    int3   ; 0x1400045fb
    int3   ; 0x1400045fc
    int3   ; 0x1400045fd
    int3   ; 0x1400045fe
    int3   ; 0x1400045ff
    mov qword ptr [rsp + 0x18], r8  ; 0x140004600
    mov qword ptr [rsp + 0x10], rdx  ; 0x140004605
    mov qword ptr [rsp + 8], rcx  ; 0x14000460a
    sub rsp, 0x48  ; 0x14000460f
    call 0x140004550  ; 0x140004613
    mov rax, qword ptr [rax]  ; 0x140004618
    or rax, 2  ; 0x14000461b
    mov rcx, qword ptr [rsp + 0x60]  ; 0x14000461f
    mov qword ptr [rsp + 0x28], rcx  ; 0x140004624
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140004629
    mov qword ptr [rsp + 0x20], rcx  ; 0x14000462e
    mov r9, qword ptr [rsp + 0x50]  ; 0x140004633
    xor r8d, r8d  ; 0x140004638
    xor edx, edx  ; 0x14000463b
    mov rcx, rax  ; 0x14000463d
    call 0x14000e738  ; 0x140004640
    mov dword ptr [rsp + 0x30], eax  ; 0x140004645
    cmp dword ptr [rsp + 0x30], 0  ; 0x140004649
    jge 0x14000465a  ; 0x14000464e
    mov dword ptr [rsp + 0x34], 0xffffffff  ; 0x140004650
    jmp 0x140004662  ; 0x140004658
    mov eax, dword ptr [rsp + 0x30]  ; 0x14000465a
    mov dword ptr [rsp + 0x34], eax  ; 0x14000465e
    mov eax, dword ptr [rsp + 0x34]  ; 0x140004662
    add rsp, 0x48  ; 0x140004666
    ret  ; 0x14000466a
    int3   ; 0x14000466b
    int3   ; 0x14000466c
    int3   ; 0x14000466d
    int3   ; 0x14000466e
    int3   ; 0x14000466f
    mov qword ptr [rsp + 0x20], r9  ; 0x140004670
    mov qword ptr [rsp + 0x18], r8  ; 0x140004675
    mov qword ptr [rsp + 0x10], rdx  ; 0x14000467a
    mov qword ptr [rsp + 8], rcx  ; 0x14000467f
    sub rsp, 0x48  ; 0x140004684
    call 0x140004550  ; 0x140004688
    mov rcx, qword ptr [rsp + 0x70]  ; 0x14000468d
    mov qword ptr [rsp + 0x28], rcx  ; 0x140004692
    mov rcx, qword ptr [rsp + 0x68]  ; 0x140004697
    mov qword ptr [rsp + 0x20], rcx  ; 0x14000469c
    mov r9, qword ptr [rsp + 0x60]  ; 0x1400046a1
    mov r8, qword ptr [rsp + 0x58]  ; 0x1400046a6
    mov rdx, qword ptr [rsp + 0x50]  ; 0x1400046ab
    mov rcx, qword ptr [rax]  ; 0x1400046b0
    call 0x14000e98c  ; 0x1400046b3
    mov dword ptr [rsp + 0x30], eax  ; 0x1400046b8
    cmp dword ptr [rsp + 0x30], 0  ; 0x1400046bc
    jge 0x1400046cd  ; 0x1400046c1
    mov dword ptr [rsp + 0x34], 0xffffffff  ; 0x1400046c3
    jmp 0x1400046d5  ; 0x1400046cb
    mov eax, dword ptr [rsp + 0x30]  ; 0x1400046cd
    mov dword ptr [rsp + 0x34], eax  ; 0x1400046d1
    mov eax, dword ptr [rsp + 0x34]  ; 0x1400046d5
    add rsp, 0x48  ; 0x1400046d9
    ret  ; 0x1400046dd
    int3   ; 0x1400046de
    int3   ; 0x1400046df
    mov qword ptr [rsp + 8], rcx  ; 0x1400046e0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400046e5
    mov qword ptr [rsp + 0x18], r8  ; 0x1400046ea
    mov qword ptr [rsp + 0x20], r9  ; 0x1400046ef
    sub rsp, 0x48  ; 0x1400046f4
    lea rax, [rsp + 0x58]  ; 0x1400046f8
    mov qword ptr [rsp + 0x28], rax  ; 0x1400046fd
    mov rax, qword ptr [rsp + 0x28]  ; 0x140004702
    mov qword ptr [rsp + 0x30], rax  ; 0x140004707
    mov ecx, 1  ; 0x14000470c
    call 0x14000b774  ; 0x140004711
    mov qword ptr [rsp + 0x38], rax  ; 0x140004716
    mov r9, qword ptr [rsp + 0x30]  ; 0x14000471b
    xor r8d, r8d  ; 0x140004720
    mov rdx, qword ptr [rsp + 0x50]  ; 0x140004723
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140004728
    call 0x1400045b0  ; 0x14000472d
    mov dword ptr [rsp + 0x20], eax  ; 0x140004732
    mov qword ptr [rsp + 0x28], 0  ; 0x140004736
    mov eax, dword ptr [rsp + 0x20]  ; 0x14000473f
    add rsp, 0x48  ; 0x140004743
    ret  ; 0x140004747
    int3   ; 0x140004748
    int3   ; 0x140004749
    int3   ; 0x14000474a
    int3   ; 0x14000474b
    int3   ; 0x14000474c
    int3   ; 0x14000474d
    int3   ; 0x14000474e
    int3   ; 0x14000474f
    mov qword ptr [rsp + 0x18], r8  ; 0x140004750
    mov qword ptr [rsp + 0x10], rdx  ; 0x140004755
    mov qword ptr [rsp + 8], rcx  ; 0x14000475a
    mov qword ptr [rsp + 0x20], r9  ; 0x14000475f
    sub rsp, 0x48  ; 0x140004764
    lea rax, [rsp + 0x68]  ; 0x140004768
    mov qword ptr [rsp + 0x38], rax  ; 0x14000476d
    mov rax, qword ptr [rsp + 0x38]  ; 0x140004772
    mov qword ptr [rsp + 0x20], rax  ; 0x140004777
    xor r9d, r9d  ; 0x14000477c
    mov r8, qword ptr [rsp + 0x60]  ; 0x14000477f
    mov rdx, qword ptr [rsp + 0x58]  ; 0x140004784
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140004789
    call 0x140004670  ; 0x14000478e
    mov dword ptr [rsp + 0x30], eax  ; 0x140004793
    mov qword ptr [rsp + 0x38], 0  ; 0x140004797
    mov eax, dword ptr [rsp + 0x30]  ; 0x1400047a0
    add rsp, 0x48  ; 0x1400047a4
    ret  ; 0x1400047a8
    int3   ; 0x1400047a9
    int3   ; 0x1400047aa
    int3   ; 0x1400047ab
    and qword ptr [rcx + 0x10], 0  ; 0x1400047ac
    lea rax, [rip + 0x19de0]  ; 0x1400047b1
    mov qword ptr [rcx + 8], rax  ; 0x1400047b8
    lea rax, [rip + 0x19cfd]  ; 0x1400047bc
    mov qword ptr [rcx], rax  ; 0x1400047c3
    mov rax, rcx  ; 0x1400047c6
    ret  ; 0x1400047c9
    int3   ; 0x1400047ca
    int3   ; 0x1400047cb
    push rbx  ; 0x1400047cc
    sub rsp, 0x20  ; 0x1400047ce
    mov rbx, rcx  ; 0x1400047d2
    mov rax, rdx  ; 0x1400047d5
    lea rcx, [rip + 0x19c89]  ; 0x1400047d8
    xorps xmm0, xmm0  ; 0x1400047df
    mov qword ptr [rbx], rcx  ; 0x1400047e2
    lea rdx, [rbx + 8]  ; 0x1400047e5
    lea rcx, [rax + 8]  ; 0x1400047e9
    movups xmmword ptr [rdx], xmm0  ; 0x1400047ed
    call 0x140005810  ; 0x1400047f0
    lea rax, [rip + 0x19db4]  ; 0x1400047f5
    mov qword ptr [rbx], rax  ; 0x1400047fc
    mov rax, rbx  ; 0x1400047ff
    add rsp, 0x20  ; 0x140004802
    pop rbx  ; 0x140004806
    ret  ; 0x140004807
    push rbx  ; 0x140004808
    sub rsp, 0x30  ; 0x14000480a
    mov rbx, rcx  ; 0x14000480e
    mov byte ptr [rsp + 0x28], 1  ; 0x140004811
    mov rax, rdx  ; 0x140004816
    lea rcx, [rip + 0x19c48]  ; 0x140004819
    xorps xmm0, xmm0  ; 0x140004820
    mov qword ptr [rsp + 0x20], rax  ; 0x140004823
    mov qword ptr [rbx], rcx  ; 0x140004828
    lea rdx, [rbx + 8]  ; 0x14000482b
    lea rcx, [rsp + 0x20]  ; 0x14000482f
    movups xmmword ptr [rdx], xmm0  ; 0x140004834
    call 0x140005810  ; 0x140004837
    lea rax, [rip + 0x19d6d]  ; 0x14000483c
    mov qword ptr [rbx], rax  ; 0x140004843
    mov rax, rbx  ; 0x140004846
    add rsp, 0x30  ; 0x140004849
    pop rbx  ; 0x14000484d
    ret  ; 0x14000484e
    int3   ; 0x14000484f
    push rbx  ; 0x140004850
    sub rsp, 0x20  ; 0x140004852
    mov rbx, rcx  ; 0x140004856
    mov rax, rdx  ; 0x140004859
    lea rcx, [rip + 0x19c05]  ; 0x14000485c
    xorps xmm0, xmm0  ; 0x140004863
    mov qword ptr [rbx], rcx  ; 0x140004866
    lea rdx, [rbx + 8]  ; 0x140004869
    lea rcx, [rax + 8]  ; 0x14000486d
    movups xmmword ptr [rdx], xmm0  ; 0x140004871
    call 0x140005810  ; 0x140004874
    lea rax, [rip + 0x19d48]  ; 0x140004879
    mov qword ptr [rbx], rax  ; 0x140004880
    mov rax, rbx  ; 0x140004883
    add rsp, 0x20  ; 0x140004886
    pop rbx  ; 0x14000488a
    ret  ; 0x14000488b
    push rbx  ; 0x14000488c
    sub rsp, 0x30  ; 0x14000488e
    mov rbx, rcx  ; 0x140004892
    mov byte ptr [rsp + 0x28], 1  ; 0x140004895
    mov rax, rdx  ; 0x14000489a
    lea rcx, [rip + 0x19bc4]  ; 0x14000489d
    xorps xmm0, xmm0  ; 0x1400048a4
    mov qword ptr [rsp + 0x20], rax  ; 0x1400048a7
    mov qword ptr [rbx], rcx  ; 0x1400048ac
    lea rdx, [rbx + 8]  ; 0x1400048af
    lea rcx, [rsp + 0x20]  ; 0x1400048b3
    movups xmmword ptr [rdx], xmm0  ; 0x1400048b8
    call 0x140005810  ; 0x1400048bb
    lea rax, [rip + 0x19d01]  ; 0x1400048c0
    mov qword ptr [rbx], rax  ; 0x1400048c7
    mov rax, rbx  ; 0x1400048ca
    add rsp, 0x30  ; 0x1400048cd
    pop rbx  ; 0x1400048d1
    ret  ; 0x1400048d2
    int3   ; 0x1400048d3
    lea rax, [rip + 0x19b8d]  ; 0x1400048d4
    mov qword ptr [rcx], rax  ; 0x1400048db
    add rcx, 8  ; 0x1400048de
    jmp 0x1400058a0  ; 0x1400048e2
    int3   ; 0x1400048e7
    mov qword ptr [rsp + 8], rbx  ; 0x1400048e8
    push rdi  ; 0x1400048ed
    sub rsp, 0x20  ; 0x1400048ee
    lea rax, [rip + 0x19b6f]  ; 0x1400048f2
    mov rdi, rcx  ; 0x1400048f9
    mov qword ptr [rcx], rax  ; 0x1400048fc
    mov ebx, edx  ; 0x1400048ff
    add rcx, 8  ; 0x140004901
    call 0x1400058a0  ; 0x140004905
    test bl, 1  ; 0x14000490a
    je 0x14000491c  ; 0x14000490d
    mov edx, 0x18  ; 0x14000490f
    mov rcx, rdi  ; 0x140004914
    call 0x1400049b8  ; 0x140004917
    mov rbx, qword ptr [rsp + 0x30]  ; 0x14000491c
    mov rax, rdi  ; 0x140004921
    add rsp, 0x20  ; 0x140004924
    pop rdi  ; 0x140004928
    ret  ; 0x140004929
    int3   ; 0x14000492a
    int3   ; 0x14000492b
    sub rsp, 0x48  ; 0x14000492c
    mov rdx, rcx  ; 0x140004930
    lea rcx, [rsp + 0x20]  ; 0x140004933
    call 0x140004808  ; 0x140004938
    lea rdx, [rip + 0x244cc]  ; 0x14000493d
    lea rcx, [rsp + 0x20]  ; 0x140004944
    call 0x1400058d0  ; 0x140004949
    int3   ; 0x14000494e
    int3   ; 0x14000494f
    sub rsp, 0x48  ; 0x140004950
    mov rdx, rcx  ; 0x140004954
    lea rcx, [rsp + 0x20]  ; 0x140004957
    call 0x14000488c  ; 0x14000495c
    lea rdx, [rip + 0x24510]  ; 0x140004961
    lea rcx, [rsp + 0x20]  ; 0x140004968
    call 0x1400058d0  ; 0x14000496d
    int3   ; 0x140004972
    int3   ; 0x140004973
    push rbx  ; 0x140004974
    sub rsp, 0x20  ; 0x140004976
    mov rbx, rcx  ; 0x14000497a
    jmp 0x14000498e  ; 0x14000497d
    mov rcx, rbx  ; 0x14000497f
    call 0x14000eaa8  ; 0x140004982
    test eax, eax  ; 0x140004987
    je 0x14000499e  ; 0x140004989
    mov rcx, rbx  ; 0x14000498b
    call 0x14000eb20  ; 0x14000498e
    test rax, rax  ; 0x140004993
    je 0x14000497f  ; 0x140004996
    add rsp, 0x20  ; 0x140004998
    pop rbx  ; 0x14000499c
    ret  ; 0x14000499d
    cmp rbx, -1  ; 0x14000499e
    je 0x1400049aa  ; 0x1400049a2
    call 0x140004d8c  ; 0x1400049a4
    int3   ; 0x1400049a9
    call 0x140004dac  ; 0x1400049aa
    int3   ; 0x1400049af
    jmp 0x14000eb28  ; 0x1400049b0
    int3   ; 0x1400049b5
    int3   ; 0x1400049b6
    int3   ; 0x1400049b7
    jmp 0x1400049b0  ; 0x1400049b8
    int3   ; 0x1400049bd
    int3   ; 0x1400049be
    int3   ; 0x1400049bf
    mov rax, rsp  ; 0x1400049c0
    mov qword ptr [rax + 8], rbx  ; 0x1400049c3
; Function: func_1400049c7
func_1400049c7:
    mov qword ptr [rax + 0x10], rbp  ; 0x1400049c7
    mov qword ptr [rax + 0x18], rsi  ; 0x1400049cb
    mov qword ptr [rax + 0x20], rdi  ; 0x1400049cf
    push r14  ; 0x1400049d3
    sub rsp, 0x20  ; 0x1400049d5
    mov rbx, qword ptr [r9 + 0x38]  ; 0x1400049d9
    mov rsi, rdx  ; 0x1400049dd
    mov r14, r8  ; 0x1400049e0
    mov rbp, rcx  ; 0x1400049e3
    mov rdx, r9  ; 0x1400049e6
    mov rcx, rsi  ; 0x1400049e9
    mov rdi, r9  ; 0x1400049ec
    lea r8, [rbx + 4]  ; 0x1400049ef
    call 0x140004abc  ; 0x1400049f3
    mov eax, dword ptr [rbp + 4]  ; 0x1400049f8
    and al, 0x66  ; 0x1400049fb
    neg al  ; 0x1400049fd
    mov eax, 1  ; 0x1400049ff
    sbb r8d, r8d  ; 0x140004a04
    neg r8d  ; 0x140004a07
    add r8d, eax  ; 0x140004a0a
    test dword ptr [rbx + 4], r8d  ; 0x140004a0d
    je 0x140004a24  ; 0x140004a11
    mov r9, rdi  ; 0x140004a13
    mov r8, r14  ; 0x140004a16
    mov rdx, rsi  ; 0x140004a19
    mov rcx, rbp  ; 0x140004a1c
    call 0x140006570  ; 0x140004a1f
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140004a24
    mov rbp, qword ptr [rsp + 0x38]  ; 0x140004a29
    mov rsi, qword ptr [rsp + 0x40]  ; 0x140004a2e
    mov rdi, qword ptr [rsp + 0x48]  ; 0x140004a33
    add rsp, 0x20  ; 0x140004a38
    pop r14  ; 0x140004a3c
    ret  ; 0x140004a3e
    int3   ; 0x140004a3f
    int3   ; 0x140004a40
    int3   ; 0x140004a41
    int3   ; 0x140004a42
    int3   ; 0x140004a43
    int3   ; 0x140004a44
    int3   ; 0x140004a45
    nop  ; 0x140004a46
    cmp rcx, qword ptr [rip + 0x255a9]  ; 0x140004a50
    jne 0x140004a69  ; 0x140004a57
    rol rcx, 0x10  ; 0x140004a59
    test cx, 0xffff  ; 0x140004a5d
    jne 0x140004a65  ; 0x140004a62
    ret  ; 0x140004a64
    ror rcx, 0x10  ; 0x140004a65
    jmp 0x140004e00  ; 0x140004a69
    int3   ; 0x140004a6e
    int3   ; 0x140004a6f
    push rbx  ; 0x140004a70
    sub rsp, 0x20  ; 0x140004a72
    lea rax, [rip + 0x19b63]  ; 0x140004a76
    mov rbx, rcx  ; 0x140004a7d
    mov qword ptr [rcx], rax  ; 0x140004a80
    test dl, 1  ; 0x140004a83
    je 0x140004a92  ; 0x140004a86
    mov edx, 0x18  ; 0x140004a88
    call 0x1400049b8  ; 0x140004a8d
    mov rax, rbx  ; 0x140004a92
    add rsp, 0x20  ; 0x140004a95
    pop rbx  ; 0x140004a99
    ret  ; 0x140004a9a
    int3   ; 0x140004a9b
    sub rsp, 0x28  ; 0x140004a9c
    mov r8, qword ptr [r9 + 0x38]  ; 0x140004aa0
    mov rcx, rdx  ; 0x140004aa4
    mov rdx, r9  ; 0x140004aa7
    call 0x140004abc  ; 0x140004aaa
    mov eax, 1  ; 0x140004aaf
    add rsp, 0x28  ; 0x140004ab4
    ret  ; 0x140004ab8
    int3   ; 0x140004ab9
    int3   ; 0x140004aba
    int3   ; 0x140004abb
    push rbx  ; 0x140004abc
    mov r11d, dword ptr [r8]  ; 0x140004abe
    mov rbx, rdx  ; 0x140004ac1
    and r11d, 0xfffffff8  ; 0x140004ac4
    mov r9, rcx  ; 0x140004ac8
    test byte ptr [r8], 4  ; 0x140004acb
    mov r10, rcx  ; 0x140004acf
    je 0x140004ae7  ; 0x140004ad2
    mov eax, dword ptr [r8 + 8]  ; 0x140004ad4
    movsxd r10, dword ptr [r8 + 4]  ; 0x140004ad8
    neg eax  ; 0x140004adc
    add r10, rcx  ; 0x140004ade
    movsxd rcx, eax  ; 0x140004ae1
    and r10, rcx  ; 0x140004ae4
    movsxd rax, r11d  ; 0x140004ae7
    mov rdx, qword ptr [rax + r10]  ; 0x140004aea
    mov rax, qword ptr [rbx + 0x10]  ; 0x140004aee
    mov ecx, dword ptr [rax + 8]  ; 0x140004af2
    mov rax, qword ptr [rbx + 8]  ; 0x140004af5
    test byte ptr [rcx + rax + 3], 0xf  ; 0x140004af9
    je 0x140004b0b  ; 0x140004afe
    movzx eax, byte ptr [rcx + rax + 3]  ; 0x140004b00
    and eax, 0xfffffff0  ; 0x140004b05
    add r9, rax  ; 0x140004b08
    xor r9, rdx  ; 0x140004b0b
    mov rcx, r9  ; 0x140004b0e
    pop rbx  ; 0x140004b11
    jmp 0x140004a50  ; 0x140004b12
    int3   ; 0x140004b17
    push rbx  ; 0x140004b18
    sub rsp, 0x20  ; 0x140004b1a
    mov ecx, 1  ; 0x140004b1e
    call 0x14000ecc8  ; 0x140004b23
    call 0x140005360  ; 0x140004b28
    mov ecx, eax  ; 0x140004b2d
    call 0x14000f864  ; 0x140004b2f
    call 0x140005354  ; 0x140004b34
    mov ebx, eax  ; 0x140004b39
    call 0x14000fa28  ; 0x140004b3b
    mov ecx, 1  ; 0x140004b40
    mov dword ptr [rax], ebx  ; 0x140004b45
    call 0x1400050e0  ; 0x140004b47
    test al, al  ; 0x140004b4c
    je 0x140004bc3  ; 0x140004b4e
    call 0x1400055d8  ; 0x140004b50
    lea rcx, [rip + 0xab8]  ; 0x140004b55
    call 0x140005290  ; 0x140004b5c
    call 0x140005358  ; 0x140004b61
    mov ecx, eax  ; 0x140004b66
    call 0x14000ef84  ; 0x140004b68
    test eax, eax  ; 0x140004b6d
    jne 0x140004bc3  ; 0x140004b6f
    call 0x140005368  ; 0x140004b71
    call 0x1400053a4  ; 0x140004b76
    test eax, eax  ; 0x140004b7b
    je 0x140004b8b  ; 0x140004b7d
    lea rcx, [rip + 0x7ce]  ; 0x140004b7f
    call 0x14000ed34  ; 0x140004b86
    call 0x14000537c  ; 0x140004b8b
    call 0x14000537c  ; 0x140004b90
    call 0x140005354  ; 0x140004b95
    mov ecx, eax  ; 0x140004b9a
    call 0x14000f988  ; 0x140004b9c
    call 0x140005378  ; 0x140004ba1
    test al, al  ; 0x140004ba6
    je 0x140004baf  ; 0x140004ba8
    call 0x14000f4bc  ; 0x140004baa
    call 0x140005354  ; 0x140004baf
    call 0x140005510  ; 0x140004bb4
    test eax, eax  ; 0x140004bb9
    jne 0x140004bc3  ; 0x140004bbb
    add rsp, 0x20  ; 0x140004bbd
    pop rbx  ; 0x140004bc1
    ret  ; 0x140004bc2
    mov ecx, 7  ; 0x140004bc3
    call 0x1400053c8  ; 0x140004bc8
    int3   ; 0x140004bcd
    int3   ; 0x140004bce
    int3   ; 0x140004bcf
    sub rsp, 0x28  ; 0x140004bd0
    call 0x140005388  ; 0x140004bd4
    xor eax, eax  ; 0x140004bd9
    add rsp, 0x28  ; 0x140004bdb
    ret  ; 0x140004bdf
    sub rsp, 0x28  ; 0x140004be0
    call 0x14000556c  ; 0x140004be4
    call 0x140005354  ; 0x140004be9
    mov ecx, eax  ; 0x140004bee
    add rsp, 0x28  ; 0x140004bf0
    jmp 0x14000f9fc  ; 0x140004bf4
    int3   ; 0x140004bf9
    int3   ; 0x140004bfa
    int3   ; 0x140004bfb
    mov qword ptr [rsp + 8], rbx  ; 0x140004bfc
    mov qword ptr [rsp + 0x10], rsi  ; 0x140004c01
    push rdi  ; 0x140004c06
    sub rsp, 0x30  ; 0x140004c07
    mov ecx, 1  ; 0x140004c0b
    call 0x1400050a4  ; 0x140004c10
    test al, al  ; 0x140004c15
    je 0x140004d53  ; 0x140004c17
    xor sil, sil  ; 0x140004c1d
    mov byte ptr [rsp + 0x20], sil  ; 0x140004c20
    call 0x140005068  ; 0x140004c25
    mov bl, al  ; 0x140004c2a
    mov ecx, dword ptr [rip + 0x2656e]  ; 0x140004c2c
    cmp ecx, 1  ; 0x140004c32
    je 0x140004d5e  ; 0x140004c35
    test ecx, ecx  ; 0x140004c3b
    jne 0x140004c89  ; 0x140004c3d
    mov dword ptr [rip + 0x26557], 1  ; 0x140004c3f
    lea rdx, [rip + 0x19698]  ; 0x140004c49
    lea rcx, [rip + 0x19659]  ; 0x140004c50
    call 0x14000f508  ; 0x140004c57
    test eax, eax  ; 0x140004c5c
    je 0x140004c6a  ; 0x140004c5e
    mov eax, 0xff  ; 0x140004c60
    jmp 0x140004d43  ; 0x140004c65
    lea rdx, [rip + 0x19637]  ; 0x140004c6a
    lea rcx, [rip + 0x19620]  ; 0x140004c71
    call 0x14000f4c4  ; 0x140004c78
    mov dword ptr [rip + 0x26519], 2  ; 0x140004c7d
    jmp 0x140004c91  ; 0x140004c87
    mov sil, 1  ; 0x140004c89
    mov byte ptr [rsp + 0x20], sil  ; 0x140004c8c
    mov cl, bl  ; 0x140004c91
    call 0x140005204  ; 0x140004c93
    call 0x1400053b0  ; 0x140004c98
    mov rbx, rax  ; 0x140004c9d
    cmp qword ptr [rax], 0  ; 0x140004ca0
    je 0x140004cc4  ; 0x140004ca4
    mov rcx, rax  ; 0x140004ca6
    call 0x14000516c  ; 0x140004ca9
    test al, al  ; 0x140004cae
    je 0x140004cc4  ; 0x140004cb0
    xor r8d, r8d  ; 0x140004cb2
    lea edx, [r8 + 2]  ; 0x140004cb5
    xor ecx, ecx  ; 0x140004cb9
    mov rax, qword ptr [rbx]  ; 0x140004cbb
    call qword ptr [rip + 0x195ac]  ; 0x140004cbe
    call 0x1400053b8  ; 0x140004cc4
    mov rbx, rax  ; 0x140004cc9
    cmp qword ptr [rax], 0  ; 0x140004ccc
    je 0x140004ce6  ; 0x140004cd0
    mov rcx, rax  ; 0x140004cd2
    call 0x14000516c  ; 0x140004cd5
    test al, al  ; 0x140004cda
    je 0x140004ce6  ; 0x140004cdc
    mov rcx, qword ptr [rbx]  ; 0x140004cde
    call 0x14000f818  ; 0x140004ce1
    call 0x14000f46c  ; 0x140004ce6
    mov rdi, rax  ; 0x140004ceb
    call 0x14000f8d4  ; 0x140004cee
    mov rbx, qword ptr [rax]  ; 0x140004cf3
    call 0x14000f8cc  ; 0x140004cf6
    mov r8, rdi  ; 0x140004cfb
    mov rdx, rbx  ; 0x140004cfe
    mov ecx, dword ptr [rax]  ; 0x140004d01
    call 0x140001000  ; 0x140004d03
    mov ebx, eax  ; 0x140004d08
    call 0x140005518  ; 0x140004d0a
    test al, al  ; 0x140004d0f
    je 0x140004d68  ; 0x140004d11
    test sil, sil  ; 0x140004d13
    jne 0x140004d1d  ; 0x140004d16
    call 0x14000f7fc  ; 0x140004d18
    xor edx, edx  ; 0x140004d1d
    mov cl, 1  ; 0x140004d1f
    call 0x140005228  ; 0x140004d21
    mov eax, ebx  ; 0x140004d26
    jmp 0x140004d43  ; 0x140004d28
    mov ebx, eax  ; 0x140004d2a
    call 0x140005518  ; 0x140004d2c
    test al, al  ; 0x140004d31
    je 0x140004d70  ; 0x140004d33
    cmp byte ptr [rsp + 0x20], 0  ; 0x140004d35
    jne 0x140004d41  ; 0x140004d3a
    call 0x14000f7ec  ; 0x140004d3c
    mov eax, ebx  ; 0x140004d41
    mov rbx, qword ptr [rsp + 0x40]  ; 0x140004d43
    mov rsi, qword ptr [rsp + 0x48]  ; 0x140004d48
    add rsp, 0x30  ; 0x140004d4d
    pop rdi  ; 0x140004d51
    ret  ; 0x140004d52
    mov ecx, 7  ; 0x140004d53
    call 0x1400053c8  ; 0x140004d58
    nop  ; 0x140004d5d
    mov ecx, 7  ; 0x140004d5e
    call 0x1400053c8  ; 0x140004d63
    mov ecx, ebx  ; 0x140004d68
    call 0x14000f858  ; 0x140004d6a
    nop  ; 0x140004d6f
    mov ecx, ebx  ; 0x140004d70
    call 0x14000f80c  ; 0x140004d72
    nop  ; 0x140004d77
    sub rsp, 0x28  ; 0x140004d78
    call 0x1400052a8  ; 0x140004d7c
    add rsp, 0x28  ; 0x140004d81
    jmp 0x140004bfc  ; 0x140004d85
    int3   ; 0x140004d8a
    int3   ; 0x140004d8b
    sub rsp, 0x48  ; 0x140004d8c
    lea rcx, [rsp + 0x20]  ; 0x140004d90
    call 0x1400047ac  ; 0x140004d95
    lea rdx, [rip + 0x24037]  ; 0x140004d9a
    lea rcx, [rsp + 0x20]  ; 0x140004da1
    call 0x1400058d0  ; 0x140004da6
    int3   ; 0x140004dab
    sub rsp, 0x48  ; 0x140004dac
    lea rcx, [rsp + 0x20]  ; 0x140004db0
    call 0x140002190  ; 0x140004db5
    lea rdx, [rip + 0x23ecf]  ; 0x140004dba
    lea rcx, [rsp + 0x20]  ; 0x140004dc1
    call 0x1400058d0  ; 0x140004dc6
    int3   ; 0x140004dcb
    push rbx  ; 0x140004dcc
    sub rsp, 0x20  ; 0x140004dce
    mov rbx, rcx  ; 0x140004dd2
    xor ecx, ecx  ; 0x140004dd5
    call qword ptr [rip + 0x1924b]  ; 0x140004dd7
    mov rcx, rbx  ; 0x140004ddd
    call qword ptr [rip + 0x1923a]  ; 0x140004de0
    call qword ptr [rip + 0x19244]  ; 0x140004de6
    mov rcx, rax  ; 0x140004dec
    mov edx, 0xc0000409  ; 0x140004def
    add rsp, 0x20  ; 0x140004df4
    pop rbx  ; 0x140004df8
    jmp qword ptr [rip + 0x19238]  ; 0x140004df9
    mov qword ptr [rsp + 8], rcx  ; 0x140004e00
    sub rsp, 0x38  ; 0x140004e05
    mov ecx, 0x17  ; 0x140004e09
    call qword ptr [rip + 0x1922c]  ; 0x140004e0e
    test eax, eax  ; 0x140004e14
    je 0x140004e1f  ; 0x140004e16
    mov ecx, 2  ; 0x140004e18
    int 0x29  ; 0x140004e1d
    lea rcx, [rip + 0x25eaa]  ; 0x140004e1f
    call 0x140004ff4  ; 0x140004e26
    mov rax, qword ptr [rsp + 0x38]  ; 0x140004e2b
    mov qword ptr [rip + 0x25f91], rax  ; 0x140004e30
    lea rax, [rsp + 0x38]  ; 0x140004e37
    add rax, 8  ; 0x140004e3c
    mov qword ptr [rip + 0x25f21], rax  ; 0x140004e40
    mov rax, qword ptr [rip + 0x25f7a]  ; 0x140004e47
    mov qword ptr [rip + 0x25deb], rax  ; 0x140004e4e
    mov rax, qword ptr [rsp + 0x40]  ; 0x140004e55
    mov qword ptr [rip + 0x25eef], rax  ; 0x140004e5a
    mov dword ptr [rip + 0x25dc5], 0xc0000409  ; 0x140004e61
    mov dword ptr [rip + 0x25dbf], 1  ; 0x140004e6b
    mov dword ptr [rip + 0x25dc9], 1  ; 0x140004e75
    mov eax, 8  ; 0x140004e7f
    imul rax, rax, 0  ; 0x140004e84
    lea rcx, [rip + 0x25dc1]  ; 0x140004e88
    mov qword ptr [rcx + rax], 2  ; 0x140004e8f
    mov eax, 8  ; 0x140004e97
    imul rax, rax, 0  ; 0x140004e9c
    mov rcx, qword ptr [rip + 0x25159]  ; 0x140004ea0
    mov qword ptr [rsp + rax + 0x20], rcx  ; 0x140004ea7
    mov eax, 8  ; 0x140004eac
    imul rax, rax, 1  ; 0x140004eb1
    mov rcx, qword ptr [rip + 0x25184]  ; 0x140004eb5
    mov qword ptr [rsp + rax + 0x20], rcx  ; 0x140004ebc
    lea rcx, [rip + 0x19720]  ; 0x140004ec1
    call 0x140004dcc  ; 0x140004ec8
    add rsp, 0x38  ; 0x140004ecd
    ret  ; 0x140004ed1
    int3   ; 0x140004ed2
    int3   ; 0x140004ed3
    sub rsp, 0x28  ; 0x140004ed4
    mov ecx, 8  ; 0x140004ed8
    call 0x140004ee8  ; 0x140004edd
    add rsp, 0x28  ; 0x140004ee2
    ret  ; 0x140004ee6
    int3   ; 0x140004ee7
    mov dword ptr [rsp + 8], ecx  ; 0x140004ee8
    sub rsp, 0x28  ; 0x140004eec
    mov ecx, 0x17  ; 0x140004ef0
    call qword ptr [rip + 0x19145]  ; 0x140004ef5
    test eax, eax  ; 0x140004efb
    je 0x140004f07  ; 0x140004efd
    mov eax, dword ptr [rsp + 0x30]  ; 0x140004eff
    mov ecx, eax  ; 0x140004f03
    int 0x29  ; 0x140004f05
    lea rcx, [rip + 0x25dc2]  ; 0x140004f07
    call 0x140004f84  ; 0x140004f0e
    mov rax, qword ptr [rsp + 0x28]  ; 0x140004f13
    mov qword ptr [rip + 0x25ea9], rax  ; 0x140004f18
    lea rax, [rsp + 0x28]  ; 0x140004f1f
    add rax, 8  ; 0x140004f24
    mov qword ptr [rip + 0x25e39], rax  ; 0x140004f28
    mov rax, qword ptr [rip + 0x25e92]  ; 0x140004f2f
    mov qword ptr [rip + 0x25d03], rax  ; 0x140004f36
    mov dword ptr [rip + 0x25ce9], 0xc0000409  ; 0x140004f3d
    mov dword ptr [rip + 0x25ce3], 1  ; 0x140004f47
    mov dword ptr [rip + 0x25ced], 1  ; 0x140004f51
    mov eax, 8  ; 0x140004f5b
    imul rax, rax, 0  ; 0x140004f60
    lea rcx, [rip + 0x25ce5]  ; 0x140004f64
    mov edx, dword ptr [rsp + 0x30]  ; 0x140004f6b
    mov qword ptr [rcx + rax], rdx  ; 0x140004f6f
    lea rcx, [rip + 0x1966e]  ; 0x140004f73
    call 0x140004dcc  ; 0x140004f7a
    add rsp, 0x28  ; 0x140004f7f
    ret  ; 0x140004f83
    mov qword ptr [rsp + 0x20], rbx  ; 0x140004f84
    push rdi  ; 0x140004f89
    sub rsp, 0x40  ; 0x140004f8a
    mov rbx, rcx  ; 0x140004f8e
    call qword ptr [rip + 0x19071]  ; 0x140004f91
    mov rdi, qword ptr [rbx + 0xf8]  ; 0x140004f97
    lea rdx, [rsp + 0x50]  ; 0x140004f9e
    mov rcx, rdi  ; 0x140004fa3
    xor r8d, r8d  ; 0x140004fa6
    call qword ptr [rip + 0x19061]  ; 0x140004fa9
    test rax, rax  ; 0x140004faf
    je 0x140004fe6  ; 0x140004fb2
    and qword ptr [rsp + 0x38], 0  ; 0x140004fb4
    lea rcx, [rsp + 0x58]  ; 0x140004fba
    mov rdx, qword ptr [rsp + 0x50]  ; 0x140004fbf
    mov r9, rax  ; 0x140004fc4
    mov qword ptr [rsp + 0x30], rcx  ; 0x140004fc7
    mov r8, rdi  ; 0x140004fcc
    lea rcx, [rsp + 0x60]  ; 0x140004fcf
    mov qword ptr [rsp + 0x28], rcx  ; 0x140004fd4
    xor ecx, ecx  ; 0x140004fd9
    mov qword ptr [rsp + 0x20], rbx  ; 0x140004fdb
    call qword ptr [rip + 0x19032]  ; 0x140004fe0
    mov rbx, qword ptr [rsp + 0x68]  ; 0x140004fe6
    add rsp, 0x40  ; 0x140004feb
    pop rdi  ; 0x140004fef
    ret  ; 0x140004ff0
    int3   ; 0x140004ff1
    int3   ; 0x140004ff2
    int3   ; 0x140004ff3
    push rbx  ; 0x140004ff4
    push rsi  ; 0x140004ff6
    push rdi  ; 0x140004ff7
    sub rsp, 0x40  ; 0x140004ff8
    mov rbx, rcx  ; 0x140004ffc
    call qword ptr [rip + 0x19003]  ; 0x140004fff
    mov rsi, qword ptr [rbx + 0xf8]  ; 0x140005005
    xor edi, edi  ; 0x14000500c
    xor r8d, r8d  ; 0x14000500e
    lea rdx, [rsp + 0x60]  ; 0x140005011
    mov rcx, rsi  ; 0x140005016
    call qword ptr [rip + 0x18ff1]  ; 0x140005019
    test rax, rax  ; 0x14000501f
    je 0x14000505d  ; 0x140005022
    and qword ptr [rsp + 0x38], 0  ; 0x140005024
    lea rcx, [rsp + 0x68]  ; 0x14000502a
    mov rdx, qword ptr [rsp + 0x60]  ; 0x14000502f
    mov r9, rax  ; 0x140005034
    mov qword ptr [rsp + 0x30], rcx  ; 0x140005037
    mov r8, rsi  ; 0x14000503c
    lea rcx, [rsp + 0x70]  ; 0x14000503f
    mov qword ptr [rsp + 0x28], rcx  ; 0x140005044
    xor ecx, ecx  ; 0x140005049
    mov qword ptr [rsp + 0x20], rbx  ; 0x14000504b
    call qword ptr [rip + 0x18fc2]  ; 0x140005050
    inc edi  ; 0x140005056
    cmp edi, 2  ; 0x140005058
    jl 0x14000500e  ; 0x14000505b
    add rsp, 0x40  ; 0x14000505d
    pop rdi  ; 0x140005061
    pop rsi  ; 0x140005062
    pop rbx  ; 0x140005063
    ret  ; 0x140005064
    int3   ; 0x140005065
    int3   ; 0x140005066
    int3   ; 0x140005067
    sub rsp, 0x28  ; 0x140005068
    call 0x1400057fc  ; 0x14000506c
    test eax, eax  ; 0x140005071
    je 0x140005096  ; 0x140005073
    mov rax, qword ptr gs:[0x30]  ; 0x140005075
    mov rcx, qword ptr [rax + 8]  ; 0x14000507e
    jmp 0x140005089  ; 0x140005082
    cmp rcx, rax  ; 0x140005084
    je 0x14000509d  ; 0x140005087
    xor eax, eax  ; 0x140005089
    lock cmpxchg qword ptr [rip + 0x26114], rcx  ; 0x14000508b
    jne 0x140005084  ; 0x140005094
    xor al, al  ; 0x140005096
    add rsp, 0x28  ; 0x140005098
    ret  ; 0x14000509c
    mov al, 1  ; 0x14000509d
    jmp 0x140005098  ; 0x14000509f
    int3   ; 0x1400050a1
    int3   ; 0x1400050a2
    int3   ; 0x1400050a3
    sub rsp, 0x28  ; 0x1400050a4
    test ecx, ecx  ; 0x1400050a8
    jne 0x1400050b3  ; 0x1400050aa
    mov byte ptr [rip + 0x260fd], 1  ; 0x1400050ac
    call 0x140005650  ; 0x1400050b3
    call 0x140006848  ; 0x1400050b8
    test al, al  ; 0x1400050bd
    jne 0x1400050c5  ; 0x1400050bf
    xor al, al  ; 0x1400050c1
    jmp 0x1400050d9  ; 0x1400050c3
    call 0x14000ff68  ; 0x1400050c5
    test al, al  ; 0x1400050ca
    jne 0x1400050d7  ; 0x1400050cc
    xor ecx, ecx  ; 0x1400050ce
    call 0x140006870  ; 0x1400050d0
    jmp 0x1400050c1  ; 0x1400050d5
    mov al, 1  ; 0x1400050d7
    add rsp, 0x28  ; 0x1400050d9
    ret  ; 0x1400050dd
    int3   ; 0x1400050de
    int3   ; 0x1400050df
    push rbx  ; 0x1400050e0
    sub rsp, 0x20  ; 0x1400050e2
    cmp byte ptr [rip + 0x260c4], 0  ; 0x1400050e6
    mov ebx, ecx  ; 0x1400050ed
    jne 0x140005158  ; 0x1400050ef
    cmp ecx, 1  ; 0x1400050f1
    ja 0x140005160  ; 0x1400050f4
    call 0x1400057fc  ; 0x1400050f6
    test eax, eax  ; 0x1400050fb
    je 0x140005127  ; 0x1400050fd
    test ebx, ebx  ; 0x1400050ff
    jne 0x140005127  ; 0x140005101
    lea rcx, [rip + 0x260ae]  ; 0x140005103
    call 0x14000fdcc  ; 0x14000510a
    test eax, eax  ; 0x14000510f
    jne 0x140005123  ; 0x140005111
    lea rcx, [rip + 0x260b6]  ; 0x140005113
    call 0x14000fdcc  ; 0x14000511a
    test eax, eax  ; 0x14000511f
    je 0x140005151  ; 0x140005121
    xor al, al  ; 0x140005123
    jmp 0x14000515a  ; 0x140005125
    movdqa xmm0, xmmword ptr [rip + 0x194d1]  ; 0x140005127
    or rax, 0xffffffffffffffff  ; 0x14000512f
    movdqu xmmword ptr [rip + 0x2607d], xmm0  ; 0x140005133
    mov qword ptr [rip + 0x26086], rax  ; 0x14000513b
    movdqu xmmword ptr [rip + 0x26086], xmm0  ; 0x140005142
    mov qword ptr [rip + 0x2608f], rax  ; 0x14000514a
    mov byte ptr [rip + 0x26059], 1  ; 0x140005151
    mov al, 1  ; 0x140005158
    add rsp, 0x20  ; 0x14000515a
    pop rbx  ; 0x14000515e
    ret  ; 0x14000515f
    mov ecx, 5  ; 0x140005160
    call 0x1400053c8  ; 0x140005165
    int3   ; 0x14000516a
    int3   ; 0x14000516b
    sub rsp, 0x18  ; 0x14000516c
    mov r8, rcx  ; 0x140005170
    mov eax, 0x5a4d  ; 0x140005173
    cmp word ptr [rip - 0x517f], ax  ; 0x140005178
    jne 0x1400051f9  ; 0x14000517f
    movsxd rcx, dword ptr [rip - 0x514c]  ; 0x140005181
    lea rdx, [rip - 0x518f]  ; 0x140005188
    add rcx, rdx  ; 0x14000518f
    cmp dword ptr [rcx], 0x4550  ; 0x140005192
    jne 0x1400051f9  ; 0x140005198
    mov eax, 0x20b  ; 0x14000519a
    cmp word ptr [rcx + 0x18], ax  ; 0x14000519f
    jne 0x1400051f9  ; 0x1400051a3
    sub r8, rdx  ; 0x1400051a5
    movzx edx, word ptr [rcx + 0x14]  ; 0x1400051a8
    add rdx, 0x18  ; 0x1400051ac
    add rdx, rcx  ; 0x1400051b0
    movzx eax, word ptr [rcx + 6]  ; 0x1400051b3
    lea rcx, [rax + rax*4]  ; 0x1400051b7
    lea r9, [rdx + rcx*8]  ; 0x1400051bb
    mov qword ptr [rsp], rdx  ; 0x1400051bf
    cmp rdx, r9  ; 0x1400051c3
    je 0x1400051e0  ; 0x1400051c6
    mov ecx, dword ptr [rdx + 0xc]  ; 0x1400051c8
    cmp r8, rcx  ; 0x1400051cb
    jb 0x1400051da  ; 0x1400051ce
    mov eax, dword ptr [rdx + 8]  ; 0x1400051d0
    add eax, ecx  ; 0x1400051d3
    cmp r8, rax  ; 0x1400051d5
    jb 0x1400051e2  ; 0x1400051d8
    add rdx, 0x28  ; 0x1400051da
    jmp 0x1400051bf  ; 0x1400051de
    xor edx, edx  ; 0x1400051e0
    test rdx, rdx  ; 0x1400051e2
    jne 0x1400051eb  ; 0x1400051e5
    xor al, al  ; 0x1400051e7
    jmp 0x1400051ff  ; 0x1400051e9
    cmp dword ptr [rdx + 0x24], 0  ; 0x1400051eb
    jge 0x1400051f5  ; 0x1400051ef
    xor al, al  ; 0x1400051f1
    jmp 0x1400051ff  ; 0x1400051f3
    mov al, 1  ; 0x1400051f5
    jmp 0x1400051ff  ; 0x1400051f7
    xor al, al  ; 0x1400051f9
    jmp 0x1400051ff  ; 0x1400051fb
    xor al, al  ; 0x1400051fd
    add rsp, 0x18  ; 0x1400051ff
    ret  ; 0x140005203
    push rbx  ; 0x140005204
    sub rsp, 0x20  ; 0x140005206
    mov bl, cl  ; 0x14000520a
    call 0x1400057fc  ; 0x14000520c
    xor edx, edx  ; 0x140005211
    test eax, eax  ; 0x140005213
    je 0x140005222  ; 0x140005215
    test bl, bl  ; 0x140005217
    jne 0x140005222  ; 0x140005219
    xchg qword ptr [rip + 0x25f86], rdx  ; 0x14000521b
    add rsp, 0x20  ; 0x140005222
    pop rbx  ; 0x140005226
    ret  ; 0x140005227
    push rbx  ; 0x140005228
    sub rsp, 0x20  ; 0x14000522a
    cmp byte ptr [rip + 0x25f7b], 0  ; 0x14000522e
    mov bl, cl  ; 0x140005235
    je 0x14000523d  ; 0x140005237
    test dl, dl  ; 0x140005239
    jne 0x140005249  ; 0x14000523b
    call 0x14000ff7c  ; 0x14000523d
    mov cl, bl  ; 0x140005242
    call 0x140006870  ; 0x140005244
    mov al, 1  ; 0x140005249
    add rsp, 0x20  ; 0x14000524b
    pop rbx  ; 0x14000524f
    ret  ; 0x140005250
    int3   ; 0x140005251
    int3   ; 0x140005252
    int3   ; 0x140005253
    push rbx  ; 0x140005254
    sub rsp, 0x20  ; 0x140005256
    cmp qword ptr [rip + 0x25f56], -1  ; 0x14000525a
    mov rbx, rcx  ; 0x140005262
    jne 0x14000526e  ; 0x140005265
    call 0x14000fd78  ; 0x140005267
    jmp 0x14000527d  ; 0x14000526c
    mov rdx, rbx  ; 0x14000526e
    lea rcx, [rip + 0x25f40]  ; 0x140005271
    call 0x14000fdf4  ; 0x140005278
    xor edx, edx  ; 0x14000527d
    test eax, eax  ; 0x14000527f
    cmove rdx, rbx  ; 0x140005281
    mov rax, rdx  ; 0x140005285
    add rsp, 0x20  ; 0x140005288
    pop rbx  ; 0x14000528c
    ret  ; 0x14000528d
    int3   ; 0x14000528e
    int3   ; 0x14000528f
    sub rsp, 0x28  ; 0x140005290
    call 0x140005254  ; 0x140005294
    neg rax  ; 0x140005299
    sbb eax, eax  ; 0x14000529c
    neg eax  ; 0x14000529e
    dec eax  ; 0x1400052a0
    add rsp, 0x28  ; 0x1400052a2
    ret  ; 0x1400052a6
    int3   ; 0x1400052a7
    mov qword ptr [rsp + 0x18], rbx  ; 0x1400052a8
; Function: func_1400052ad
func_1400052ad:
    push rbp  ; 0x1400052ad
    mov rbp, rsp  ; 0x1400052ae
    sub rsp, 0x30  ; 0x1400052b1
    mov rax, qword ptr [rip + 0x24d44]  ; 0x1400052b5
    movabs rbx, 0x2b992ddfa232  ; 0x1400052bc
    cmp rax, rbx  ; 0x1400052c6
    jne 0x14000533f  ; 0x1400052c9
    and qword ptr [rbp + 0x10], 0  ; 0x1400052cb
    lea rcx, [rbp + 0x10]  ; 0x1400052d0
    call qword ptr [rip + 0x18d86]  ; 0x1400052d4
    mov rax, qword ptr [rbp + 0x10]  ; 0x1400052da
    mov qword ptr [rbp - 0x10], rax  ; 0x1400052de
    call qword ptr [rip + 0x18d70]  ; 0x1400052e2
    mov eax, eax  ; 0x1400052e8
    xor qword ptr [rbp - 0x10], rax  ; 0x1400052ea
    call qword ptr [rip + 0x18d5c]  ; 0x1400052ee
    mov eax, eax  ; 0x1400052f4
    lea rcx, [rbp + 0x18]  ; 0x1400052f6
    xor qword ptr [rbp - 0x10], rax  ; 0x1400052fa
    call qword ptr [rip + 0x18d44]  ; 0x1400052fe
    mov eax, dword ptr [rbp + 0x18]  ; 0x140005304
    lea rcx, [rbp - 0x10]  ; 0x140005307
    shl rax, 0x20  ; 0x14000530b
    xor rax, qword ptr [rbp + 0x18]  ; 0x14000530f
    xor rax, qword ptr [rbp - 0x10]  ; 0x140005313
    xor rax, rcx  ; 0x140005317
    movabs rcx, 0xffffffffffff  ; 0x14000531a
    and rax, rcx  ; 0x140005324
    movabs rcx, 0x2b992ddfa233  ; 0x140005327
    cmp rax, rbx  ; 0x140005331
    cmove rax, rcx  ; 0x140005334
    mov qword ptr [rip + 0x24cc1], rax  ; 0x140005338
    mov rbx, qword ptr [rsp + 0x50]  ; 0x14000533f
    not rax  ; 0x140005344
    mov qword ptr [rip + 0x24cf2], rax  ; 0x140005347
    add rsp, 0x30  ; 0x14000534e
    pop rbp  ; 0x140005352
    ret  ; 0x140005353
    xor eax, eax  ; 0x140005354
    ret  ; 0x140005356
    int3   ; 0x140005357
    mov eax, 1  ; 0x140005358
    ret  ; 0x14000535d
    int3   ; 0x14000535e
    int3   ; 0x14000535f
    mov eax, 0x4000  ; 0x140005360
    ret  ; 0x140005365
    int3   ; 0x140005366
    int3   ; 0x140005367
    lea rcx, [rip + 0x25e81]  ; 0x140005368
    jmp qword ptr [rip + 0x18cf2]  ; 0x14000536f
    int3   ; 0x140005376
    int3   ; 0x140005377
    mov al, 1  ; 0x140005378
    ret  ; 0x14000537a
    int3   ; 0x14000537b
    ret  ; 0x14000537c
    int3   ; 0x14000537f
    lea rax, [rip + 0x25e79]  ; 0x140005380
    ret  ; 0x140005387
    sub rsp, 0x28  ; 0x140005388
    call 0x140004550  ; 0x14000538c
    or qword ptr [rax], 0x24  ; 0x140005391
    call 0x140005380  ; 0x140005395
    or qword ptr [rax], 2  ; 0x14000539a
    add rsp, 0x28  ; 0x14000539e
    ret  ; 0x1400053a2
    int3   ; 0x1400053a3
    xor eax, eax  ; 0x1400053a4
    cmp dword ptr [rip + 0x24ca4], eax  ; 0x1400053a6
    sete al  ; 0x1400053ac
    ret  ; 0x1400053af
    lea rax, [rip + 0x26a59]  ; 0x1400053b0
    ret  ; 0x1400053b7
    lea rax, [rip + 0x26a49]  ; 0x1400053b8
    ret  ; 0x1400053bf
    and dword ptr [rip + 0x25e41], 0  ; 0x1400053c0
    ret  ; 0x1400053c7
    mov qword ptr [rsp + 8], rbx  ; 0x1400053c8
; Function: func_1400053cd
func_1400053cd:
    push rbp  ; 0x1400053cd
    lea rbp, [rsp - 0x4c0]  ; 0x1400053ce
    sub rsp, 0x5c0  ; 0x1400053d6
    mov ebx, ecx  ; 0x1400053dd
    mov ecx, 0x17  ; 0x1400053df
    call qword ptr [rip + 0x18c56]  ; 0x1400053e4
    test eax, eax  ; 0x1400053ea
    je 0x1400053f2  ; 0x1400053ec
    mov ecx, ebx  ; 0x1400053ee
    int 0x29  ; 0x1400053f0
    mov ecx, 3  ; 0x1400053f2
    call 0x1400053c0  ; 0x1400053f7
    xor edx, edx  ; 0x1400053fc
    lea rcx, [rbp - 0x10]  ; 0x1400053fe
    mov r8d, 0x4d0  ; 0x140005402
    call 0x14001cd80  ; 0x140005408
    lea rcx, [rbp - 0x10]  ; 0x14000540d
    call qword ptr [rip + 0x18bf1]  ; 0x140005411
    mov rbx, qword ptr [rbp + 0xe8]  ; 0x140005417
    lea rdx, [rbp + 0x4d8]  ; 0x14000541e
    mov rcx, rbx  ; 0x140005425
    xor r8d, r8d  ; 0x140005428
    call qword ptr [rip + 0x18bdf]  ; 0x14000542b
    test rax, rax  ; 0x140005431
    je 0x140005472  ; 0x140005434
    and qword ptr [rsp + 0x38], 0  ; 0x140005436
    lea rcx, [rbp + 0x4e0]  ; 0x14000543c
    mov rdx, qword ptr [rbp + 0x4d8]  ; 0x140005443
    mov r9, rax  ; 0x14000544a
    mov qword ptr [rsp + 0x30], rcx  ; 0x14000544d
    mov r8, rbx  ; 0x140005452
    lea rcx, [rbp + 0x4e8]  ; 0x140005455
    mov qword ptr [rsp + 0x28], rcx  ; 0x14000545c
    lea rcx, [rbp - 0x10]  ; 0x140005461
    mov qword ptr [rsp + 0x20], rcx  ; 0x140005465
    xor ecx, ecx  ; 0x14000546a
    call qword ptr [rip + 0x18ba6]  ; 0x14000546c
    mov rax, qword ptr [rbp + 0x4c8]  ; 0x140005472
    lea rcx, [rsp + 0x50]  ; 0x140005479
    mov qword ptr [rbp + 0xe8], rax  ; 0x14000547e
    xor edx, edx  ; 0x140005485
    lea rax, [rbp + 0x4c8]  ; 0x140005487
    mov r8d, 0x98  ; 0x14000548e
    add rax, 8  ; 0x140005494
    mov qword ptr [rbp + 0x88], rax  ; 0x140005498
    call 0x14001cd80  ; 0x14000549f
    mov rax, qword ptr [rbp + 0x4c8]  ; 0x1400054a4
    mov qword ptr [rsp + 0x60], rax  ; 0x1400054ab
    mov dword ptr [rsp + 0x50], 0x40000015  ; 0x1400054b0
    mov dword ptr [rsp + 0x54], 1  ; 0x1400054b8
    call qword ptr [rip + 0x18baa]  ; 0x1400054c0
    mov ebx, eax  ; 0x1400054c6
    xor ecx, ecx  ; 0x1400054c8
    lea rax, [rsp + 0x50]  ; 0x1400054ca
    mov qword ptr [rsp + 0x40], rax  ; 0x1400054cf
    lea rax, [rbp - 0x10]  ; 0x1400054d4
    mov qword ptr [rsp + 0x48], rax  ; 0x1400054d8
    call qword ptr [rip + 0x18b45]  ; 0x1400054dd
    lea rcx, [rsp + 0x40]  ; 0x1400054e3
    call qword ptr [rip + 0x18b32]  ; 0x1400054e8
    test eax, eax  ; 0x1400054ee
    jne 0x1400054ff  ; 0x1400054f0
    cmp ebx, 1  ; 0x1400054f2
    je 0x1400054ff  ; 0x1400054f5
    lea ecx, [rax + 3]  ; 0x1400054f7
    call 0x1400053c0  ; 0x1400054fa
    mov rbx, qword ptr [rsp + 0x5d0]  ; 0x1400054ff
    add rsp, 0x5c0  ; 0x140005507
    pop rbp  ; 0x14000550e
    ret  ; 0x14000550f
    jmp 0x140005354  ; 0x140005510
    int3   ; 0x140005515
    int3   ; 0x140005516
    int3   ; 0x140005517
    sub rsp, 0x28  ; 0x140005518
    xor ecx, ecx  ; 0x14000551c
    call qword ptr [rip + 0x18b5c]  ; 0x14000551e
    test rax, rax  ; 0x140005524
    je 0x140005562  ; 0x140005527
    mov ecx, 0x5a4d  ; 0x140005529
    cmp word ptr [rax], cx  ; 0x14000552e
    jne 0x140005562  ; 0x140005531
    movsxd rcx, dword ptr [rax + 0x3c]  ; 0x140005533
    add rcx, rax  ; 0x140005537
    cmp dword ptr [rcx], 0x4550  ; 0x14000553a
    jne 0x140005562  ; 0x140005540
    mov eax, 0x20b  ; 0x140005542
    cmp word ptr [rcx + 0x18], ax  ; 0x140005547
    jne 0x140005562  ; 0x14000554b
    cmp dword ptr [rcx + 0x84], 0xe  ; 0x14000554d
    jbe 0x140005562  ; 0x140005554
    cmp dword ptr [rcx + 0xf8], 0  ; 0x140005556
    setne al  ; 0x14000555d
    jmp 0x140005564  ; 0x140005560
    xor al, al  ; 0x140005562
    add rsp, 0x28  ; 0x140005564
    ret  ; 0x140005568
    int3   ; 0x140005569
    int3   ; 0x14000556a
    int3   ; 0x14000556b
    lea rcx, [rip + 9]  ; 0x14000556c
    jmp qword ptr [rip + 0x18aae]  ; 0x140005573
    int3   ; 0x14000557a
    int3   ; 0x14000557b
    mov qword ptr [rsp + 8], rbx  ; 0x14000557c
    push rdi  ; 0x140005581
    sub rsp, 0x20  ; 0x140005582
    mov rbx, qword ptr [rcx]  ; 0x140005586
    mov rdi, rcx  ; 0x140005589
    cmp dword ptr [rbx], 0xe06d7363  ; 0x14000558c
    jne 0x1400055b0  ; 0x140005592
    cmp dword ptr [rbx + 0x18], 4  ; 0x140005594
    jne 0x1400055b0  ; 0x140005598
    mov edx, dword ptr [rbx + 0x20]  ; 0x14000559a
    lea eax, [rdx - 0x19930520]  ; 0x14000559d
    cmp eax, 2  ; 0x1400055a3
    jbe 0x1400055bd  ; 0x1400055a6
    cmp edx, 0x1994000  ; 0x1400055a8
    je 0x1400055bd  ; 0x1400055ae
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400055b0
    xor eax, eax  ; 0x1400055b5
    add rsp, 0x20  ; 0x1400055b7
    pop rdi  ; 0x1400055bb
    ret  ; 0x1400055bc
    call 0x1400069e4  ; 0x1400055bd
    mov qword ptr [rax], rbx  ; 0x1400055c2
    mov rbx, qword ptr [rdi + 8]  ; 0x1400055c5
    call 0x1400069f8  ; 0x1400055c9
    mov qword ptr [rax], rbx  ; 0x1400055ce
    call 0x14000ffb4  ; 0x1400055d1
    int3   ; 0x1400055d6
    int3   ; 0x1400055d7
    mov qword ptr [rsp + 8], rbx  ; 0x1400055d8
    push rdi  ; 0x1400055dd
    sub rsp, 0x20  ; 0x1400055de
    lea rbx, [rip + 0x22057]  ; 0x1400055e2
    lea rdi, [rip + 0x22050]  ; 0x1400055e9
    jmp 0x140005604  ; 0x1400055f0
    mov rax, qword ptr [rbx]  ; 0x1400055f2
    test rax, rax  ; 0x1400055f5
    je 0x140005600  ; 0x1400055f8
    call qword ptr [rip + 0x18c70]  ; 0x1400055fa
    add rbx, 8  ; 0x140005600
    cmp rbx, rdi  ; 0x140005604
    jb 0x1400055f2  ; 0x140005607
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140005609
    add rsp, 0x20  ; 0x14000560e
    pop rdi  ; 0x140005612
    ret  ; 0x140005613
    mov qword ptr [rsp + 8], rbx  ; 0x140005614
    push rdi  ; 0x140005619
    sub rsp, 0x20  ; 0x14000561a
    lea rbx, [rip + 0x2202b]  ; 0x14000561e
    lea rdi, [rip + 0x22024]  ; 0x140005625
    jmp 0x140005640  ; 0x14000562c
    mov rax, qword ptr [rbx]  ; 0x14000562e
    test rax, rax  ; 0x140005631
    je 0x14000563c  ; 0x140005634
    call qword ptr [rip + 0x18c34]  ; 0x140005636
    add rbx, 8  ; 0x14000563c
    cmp rbx, rdi  ; 0x140005640
    jb 0x14000562e  ; 0x140005643
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140005645
    add rsp, 0x20  ; 0x14000564a
    pop rdi  ; 0x14000564e
    ret  ; 0x14000564f
    mov qword ptr [rsp + 0x10], rbx  ; 0x140005650
    mov qword ptr [rsp + 0x18], rsi  ; 0x140005655
    push rdi  ; 0x14000565a
    sub rsp, 0x10  ; 0x14000565b
    xor eax, eax  ; 0x14000565f
    xor ecx, ecx  ; 0x140005661
    cpuid   ; 0x140005663
    mov r8d, ecx  ; 0x140005665
    xor r11d, r11d  ; 0x140005668
    mov r10d, edx  ; 0x14000566b
    xor r8d, 0x6c65746e  ; 0x14000566e
    xor r10d, 0x49656e69  ; 0x140005675
    mov r9d, ebx  ; 0x14000567c
    mov esi, eax  ; 0x14000567f
    xor ecx, ecx  ; 0x140005681
    lea eax, [r11 + 1]  ; 0x140005683
    or r10d, r8d  ; 0x140005687
    cpuid   ; 0x14000568a
    xor r9d, 0x756e6547  ; 0x14000568c
    mov dword ptr [rsp], eax  ; 0x140005693
    or r10d, r9d  ; 0x140005696
    mov dword ptr [rsp + 4], ebx  ; 0x140005699
    mov edi, ecx  ; 0x14000569d
    mov dword ptr [rsp + 8], ecx  ; 0x14000569f
    mov dword ptr [rsp + 0xc], edx  ; 0x1400056a3
    jne 0x140005704  ; 0x1400056a7
    or qword ptr [rip + 0x249b7], 0xffffffffffffffff  ; 0x1400056a9
    and eax, 0xfff3ff0  ; 0x1400056b1
    mov qword ptr [rip + 0x2499f], 0x8000  ; 0x1400056b6
    cmp eax, 0x106c0  ; 0x1400056c1
    je 0x1400056f0  ; 0x1400056c6
    cmp eax, 0x20660  ; 0x1400056c8
    je 0x1400056f0  ; 0x1400056cd
    cmp eax, 0x20670  ; 0x1400056cf
    je 0x1400056f0  ; 0x1400056d4
    add eax, 0xfffcf9b0  ; 0x1400056d6
    cmp eax, 0x20  ; 0x1400056db
    ja 0x140005704  ; 0x1400056de
    movabs rcx, 0x100010001  ; 0x1400056e0
    bt rcx, rax  ; 0x1400056ea
    jae 0x140005704  ; 0x1400056ee
    mov r8d, dword ptr [rip + 0x25b15]  ; 0x1400056f0
    or r8d, 1  ; 0x1400056f7
    mov dword ptr [rip + 0x25b0a], r8d  ; 0x1400056fb
    jmp 0x14000570b  ; 0x140005702
    mov r8d, dword ptr [rip + 0x25b01]  ; 0x140005704
    mov eax, 7  ; 0x14000570b
    lea r9d, [rax - 5]  ; 0x140005710
    cmp esi, eax  ; 0x140005714
    jl 0x14000573e  ; 0x140005716
    xor ecx, ecx  ; 0x140005718
    cpuid   ; 0x14000571a
    mov dword ptr [rsp], eax  ; 0x14000571c
    mov r11d, ebx  ; 0x14000571f
    mov dword ptr [rsp + 4], ebx  ; 0x140005722
    mov dword ptr [rsp + 8], ecx  ; 0x140005726
    mov dword ptr [rsp + 0xc], edx  ; 0x14000572a
    bt ebx, 9  ; 0x14000572e
    jae 0x14000573e  ; 0x140005732
    or r8d, r9d  ; 0x140005734
    mov dword ptr [rip + 0x25ace], r8d  ; 0x140005737
    mov dword ptr [rip + 0x24910], 1  ; 0x14000573e
    mov dword ptr [rip + 0x2490d], r9d  ; 0x140005748
    bt edi, 0x14  ; 0x14000574f
    jae 0x1400057ea  ; 0x140005753
    mov dword ptr [rip + 0x248f8], r9d  ; 0x140005759
    mov ebx, 6  ; 0x140005760
    mov dword ptr [rip + 0x248f1], ebx  ; 0x140005765
    bt edi, 0x1b  ; 0x14000576b
    jae 0x1400057ea  ; 0x14000576f
    bt edi, 0x1c  ; 0x140005771
    jae 0x1400057ea  ; 0x140005775
    xor ecx, ecx  ; 0x140005777
    xgetbv   ; 0x140005779
    shl rdx, 0x20  ; 0x14000577c
    or rdx, rax  ; 0x140005780
    mov qword ptr [rsp + 0x20], rdx  ; 0x140005783
    mov rax, qword ptr [rsp + 0x20]  ; 0x140005788
    and al, bl  ; 0x14000578d
    cmp al, bl  ; 0x14000578f
    jne 0x1400057ea  ; 0x140005791
    mov eax, dword ptr [rip + 0x248c3]  ; 0x140005793
    or eax, 8  ; 0x140005799
    mov dword ptr [rip + 0x248b2], 3  ; 0x14000579c
    mov dword ptr [rip + 0x248b0], eax  ; 0x1400057a6
    test r11b, 0x20  ; 0x1400057ac
    je 0x1400057ea  ; 0x1400057b0
    or eax, 0x20  ; 0x1400057b2
    mov dword ptr [rip + 0x24899], 5  ; 0x1400057b5
    mov dword ptr [rip + 0x24897], eax  ; 0x1400057bf
    mov eax, 0xd0030000  ; 0x1400057c5
    and r11d, eax  ; 0x1400057ca
    cmp r11d, eax  ; 0x1400057cd
    jne 0x1400057ea  ; 0x1400057d0
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400057d2
    and al, 0xe0  ; 0x1400057d7
    cmp al, 0xe0  ; 0x1400057d9
    jne 0x1400057ea  ; 0x1400057db
    or dword ptr [rip + 0x24878], 0x40  ; 0x1400057dd
    mov dword ptr [rip + 0x2486e], ebx  ; 0x1400057e4
    mov rbx, qword ptr [rsp + 0x28]  ; 0x1400057ea
    xor eax, eax  ; 0x1400057ef
    mov rsi, qword ptr [rsp + 0x30]  ; 0x1400057f1
    add rsp, 0x10  ; 0x1400057f6
    pop rdi  ; 0x1400057fa
    ret  ; 0x1400057fb
    xor eax, eax  ; 0x1400057fc
    cmp dword ptr [rip + 0x265fc], eax  ; 0x1400057fe
    setne al  ; 0x140005804
    ret  ; 0x140005807
    int3   ; 0x140005808
    int3   ; 0x140005809
    int3   ; 0x14000580a
    int3   ; 0x14000580b
    int3   ; 0x14000580c
    int3   ; 0x14000580d
    int3   ; 0x14000580e
    int3   ; 0x14000580f
    mov qword ptr [rsp + 8], rbx  ; 0x140005810
    mov qword ptr [rsp + 0x10], rsi  ; 0x140005815
    mov qword ptr [rsp + 0x18], rdi  ; 0x14000581a
    push r14  ; 0x14000581f
    sub rsp, 0x20  ; 0x140005821
    cmp byte ptr [rcx + 8], 0  ; 0x140005825
    mov r14, rdx  ; 0x140005829
    mov rsi, rcx  ; 0x14000582c
    je 0x14000587d  ; 0x14000582f
    mov rax, qword ptr [rcx]  ; 0x140005831
    test rax, rax  ; 0x140005834
    je 0x14000587d  ; 0x140005837
    or rdi, 0xffffffffffffffff  ; 0x140005839
    inc rdi  ; 0x14000583d
    cmp byte ptr [rax + rdi], 0  ; 0x140005840
    jne 0x14000583d  ; 0x140005844
    lea rcx, [rdi + 1]  ; 0x140005846
    call 0x14000eb20  ; 0x14000584a
    mov rbx, rax  ; 0x14000584f
    test rax, rax  ; 0x140005852
    je 0x140005873  ; 0x140005855
    mov r8, qword ptr [rsi]  ; 0x140005857
    lea rdx, [rdi + 1]  ; 0x14000585a
    mov rcx, rax  ; 0x14000585e
    call 0x14000ffe0  ; 0x140005861
    mov rax, rbx  ; 0x140005866
    mov byte ptr [r14 + 8], 1  ; 0x140005869
    mov qword ptr [r14], rax  ; 0x14000586e
    xor ebx, ebx  ; 0x140005871
    mov rcx, rbx  ; 0x140005873
    call 0x14000eb28  ; 0x140005876
    jmp 0x140005887  ; 0x14000587b
    mov rax, qword ptr [rcx]  ; 0x14000587d
    mov qword ptr [rdx], rax  ; 0x140005880
    mov byte ptr [rdx + 8], 0  ; 0x140005883
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140005887
    mov rsi, qword ptr [rsp + 0x38]  ; 0x14000588c
    mov rdi, qword ptr [rsp + 0x40]  ; 0x140005891
    add rsp, 0x20  ; 0x140005896
    pop r14  ; 0x14000589a
    ret  ; 0x14000589c
    int3   ; 0x14000589d
    int3   ; 0x14000589e
    int3   ; 0x14000589f
    push rbx  ; 0x1400058a0
    sub rsp, 0x20  ; 0x1400058a2
    cmp byte ptr [rcx + 8], 0  ; 0x1400058a6
    mov rbx, rcx  ; 0x1400058aa
    je 0x1400058b7  ; 0x1400058ad
    mov rcx, qword ptr [rcx]  ; 0x1400058af
    call 0x14000eb28  ; 0x1400058b2
    and qword ptr [rbx], 0  ; 0x1400058b7
    mov byte ptr [rbx + 8], 0  ; 0x1400058bb
    add rsp, 0x20  ; 0x1400058bf
    pop rbx  ; 0x1400058c3
    ret  ; 0x1400058c4
    int3   ; 0x1400058c5
    int3   ; 0x1400058c6
    int3   ; 0x1400058c7
    int3   ; 0x1400058c8
    int3   ; 0x1400058c9
    int3   ; 0x1400058ca
    int3   ; 0x1400058cb
    int3   ; 0x1400058cc
    int3   ; 0x1400058cd
    int3   ; 0x1400058ce
    int3   ; 0x1400058cf
    mov qword ptr [rsp + 0x18], rbx  ; 0x1400058d0
    mov qword ptr [rsp + 0x20], rsi  ; 0x1400058d5
    push rdi  ; 0x1400058da
    sub rsp, 0x50  ; 0x1400058db
    mov rbx, rdx  ; 0x1400058df
    mov rsi, rcx  ; 0x1400058e2
    mov edi, 0x19930520  ; 0x1400058e5
    test rdx, rdx  ; 0x1400058ea
    je 0x14000590c  ; 0x1400058ed
    test byte ptr [rdx], 0x10  ; 0x1400058ef
    je 0x14000590c  ; 0x1400058f2
    mov rcx, qword ptr [rcx]  ; 0x1400058f4
    sub rcx, 8  ; 0x1400058f7
    mov rax, qword ptr [rcx]  ; 0x1400058fb
    mov rbx, qword ptr [rax + 0x30]  ; 0x1400058fe
    mov rax, qword ptr [rax + 0x40]  ; 0x140005902
    call qword ptr [rip + 0x18964]  ; 0x140005906
    xor eax, eax  ; 0x14000590c
    mov qword ptr [rsp + 0x20], rax  ; 0x14000590e
    test rbx, rbx  ; 0x140005913
    je 0x14000593a  ; 0x140005916
    lea rdx, [rsp + 0x20]  ; 0x140005918
    mov rcx, rbx  ; 0x14000591d
    call qword ptr [rip + 0x1876a]  ; 0x140005920
    mov qword ptr [rsp + 0x20], rax  ; 0x140005926
    test byte ptr [rbx], 8  ; 0x14000592b
    jne 0x140005935  ; 0x14000592e
    test rax, rax  ; 0x140005930
    jne 0x14000593a  ; 0x140005933
    mov edi, 0x1994000  ; 0x140005935
    mov edx, 1  ; 0x14000593a
    mov qword ptr [rsp + 0x28], rdi  ; 0x14000593f
    lea r9, [rsp + 0x28]  ; 0x140005944
    mov qword ptr [rsp + 0x30], rsi  ; 0x140005949
    mov ecx, 0xe06d7363  ; 0x14000594e
    mov qword ptr [rsp + 0x38], rbx  ; 0x140005953
    mov qword ptr [rsp + 0x40], rax  ; 0x140005958
    lea r8d, [rdx + 3]  ; 0x14000595d
    call qword ptr [rip + 0x18731]  ; 0x140005961
    mov rbx, qword ptr [rsp + 0x70]  ; 0x140005967
    mov rsi, qword ptr [rsp + 0x78]  ; 0x14000596c
    add rsp, 0x50  ; 0x140005971
    pop rdi  ; 0x140005975
    ret  ; 0x140005976
    int3   ; 0x140005977
    mov rax, rsp  ; 0x140005978
    mov qword ptr [rax + 0x20], r9  ; 0x14000597b
    mov qword ptr [rax + 0x18], r8  ; 0x14000597f
    mov qword ptr [rax + 0x10], rdx  ; 0x140005983
    mov qword ptr [rax + 8], rcx  ; 0x140005987
    push rbx  ; 0x14000598b
    sub rsp, 0x70  ; 0x14000598c
    mov rbx, rcx  ; 0x140005990
    and dword ptr [rax - 0x38], 0  ; 0x140005993
    mov qword ptr [rax - 0x20], rcx  ; 0x140005997
    mov qword ptr [rax - 0x18], r8  ; 0x14000599b
    call 0x140006a38  ; 0x14000599f
    lea rdx, [rsp + 0x58]  ; 0x1400059a4
    mov ecx, dword ptr [rbx]  ; 0x1400059a9
    mov rax, qword ptr [rax + 0x10]  ; 0x1400059ab
    call qword ptr [rip + 0x188bb]  ; 0x1400059af
    mov dword ptr [rsp + 0x40], 0  ; 0x1400059b5
    jmp 0x1400059bf  ; 0x1400059bd
    mov eax, dword ptr [rsp + 0x40]  ; 0x1400059bf
    add rsp, 0x70  ; 0x1400059c3
    pop rbx  ; 0x1400059c7
    ret  ; 0x1400059c8
    int3   ; 0x1400059c9
    int3   ; 0x1400059ca
    int3   ; 0x1400059cb
    mov rax, rsp  ; 0x1400059cc
    mov qword ptr [rax + 0x20], r9  ; 0x1400059cf
    mov qword ptr [rax + 0x18], r8  ; 0x1400059d3
    mov qword ptr [rax + 0x10], rdx  ; 0x1400059d7
    mov qword ptr [rax + 8], rcx  ; 0x1400059db
    push rbx  ; 0x1400059df
    sub rsp, 0x70  ; 0x1400059e0
    mov rbx, rcx  ; 0x1400059e4
    and dword ptr [rax - 0x38], 0  ; 0x1400059e7
    mov qword ptr [rax - 0x20], rcx  ; 0x1400059eb
    mov qword ptr [rax - 0x18], r8  ; 0x1400059ef
    call 0x140006a38  ; 0x1400059f3
    lea rdx, [rsp + 0x58]  ; 0x1400059f8
    mov ecx, dword ptr [rbx]  ; 0x1400059fd
    mov rax, qword ptr [rax + 0x10]  ; 0x1400059ff
    call qword ptr [rip + 0x18867]  ; 0x140005a03
    mov dword ptr [rsp + 0x40], 0  ; 0x140005a09
    jmp 0x140005a13  ; 0x140005a11
    mov eax, dword ptr [rsp + 0x40]  ; 0x140005a13
    add rsp, 0x70  ; 0x140005a17
    pop rbx  ; 0x140005a1b
    ret  ; 0x140005a1c
    int3   ; 0x140005a1d
    int3   ; 0x140005a1e
    int3   ; 0x140005a1f
    mov qword ptr [rsp + 8], rbx  ; 0x140005a20
; Function: func_140005a25
func_140005a25:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140005a25
    mov qword ptr [rsp + 0x18], rsi  ; 0x140005a2a
    push rdi  ; 0x140005a2f
    sub rsp, 0x20  ; 0x140005a30
    mov edi, dword ptr [rcx + 0xc]  ; 0x140005a34
    mov esi, edx  ; 0x140005a37
    mov rbp, rcx  ; 0x140005a39
    test edi, edi  ; 0x140005a3c
    je 0x140005a6b  ; 0x140005a3e
    lea ebx, [rdi - 1]  ; 0x140005a40
    mov edi, ebx  ; 0x140005a43
    call 0x140006a38  ; 0x140005a45
    lea rdx, [rbx + rbx*4]  ; 0x140005a4a
    mov rax, qword ptr [rax + 0x60]  ; 0x140005a4e
    lea rcx, [rax + rdx*4]  ; 0x140005a52
    movsxd rax, dword ptr [rbp + 0x10]  ; 0x140005a56
    add rax, rcx  ; 0x140005a5a
    cmp esi, dword ptr [rax + 4]  ; 0x140005a5d
    jle 0x140005a67  ; 0x140005a60
    cmp esi, dword ptr [rax + 8]  ; 0x140005a62
    jle 0x140005a6d  ; 0x140005a65
    test ebx, ebx  ; 0x140005a67
    jne 0x140005a40  ; 0x140005a69
    xor eax, eax  ; 0x140005a6b
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140005a6d
    mov rbp, qword ptr [rsp + 0x38]  ; 0x140005a72
    mov rsi, qword ptr [rsp + 0x40]  ; 0x140005a77
    add rsp, 0x20  ; 0x140005a7c
    pop rdi  ; 0x140005a80
    ret  ; 0x140005a81
    int3   ; 0x140005a82
    int3   ; 0x140005a83
    mov rax, rsp  ; 0x140005a84
    mov qword ptr [rax + 8], rbx  ; 0x140005a87
; Function: func_140005a8b
func_140005a8b:
    mov qword ptr [rax + 0x10], rbp  ; 0x140005a8b
    mov qword ptr [rax + 0x18], rsi  ; 0x140005a8f
    mov qword ptr [rax + 0x20], rdi  ; 0x140005a93
    push r14  ; 0x140005a97
    mov bl, byte ptr [rcx]  ; 0x140005a99
    lea r10, [rcx + 1]  ; 0x140005a9b
    mov byte ptr [rdx], bl  ; 0x140005a9f
    mov esi, r9d  ; 0x140005aa1
    lea r14, [rip - 0x5aab]  ; 0x140005aa4
    mov rbp, r8  ; 0x140005aab
    mov r11, rdx  ; 0x140005aae
    mov rdi, rcx  ; 0x140005ab1
    test bl, 4  ; 0x140005ab4
    je 0x140005add  ; 0x140005ab7
    movzx ecx, byte ptr [r10]  ; 0x140005ab9
    and ecx, 0xf  ; 0x140005abd
    movsx rax, byte ptr [rcx + r14 + 0x1e610]  ; 0x140005ac0
    mov cl, byte ptr [rcx + r14 + 0x1e620]  ; 0x140005ac9
    sub r10, rax  ; 0x140005ad1
    mov eax, dword ptr [r10 - 4]  ; 0x140005ad4
    shr eax, cl  ; 0x140005ad8
    mov dword ptr [rdx + 4], eax  ; 0x140005ada
    test bl, 8  ; 0x140005add
    je 0x140005aec  ; 0x140005ae0
    mov eax, dword ptr [r10]  ; 0x140005ae2
    add r10, 4  ; 0x140005ae5
    mov dword ptr [rdx + 8], eax  ; 0x140005ae9
    test bl, 0x10  ; 0x140005aec
    je 0x140005afb  ; 0x140005aef
    mov eax, dword ptr [r10]  ; 0x140005af1
    add r10, 4  ; 0x140005af4
    mov dword ptr [rdx + 0xc], eax  ; 0x140005af8
    xor r9d, r9d  ; 0x140005afb
    lea r8, [r10 + 4]  ; 0x140005afe
    cmp byte ptr [rsp + 0x30], r9b  ; 0x140005b02
    jne 0x140005b69  ; 0x140005b07
    test bl, 2  ; 0x140005b09
    je 0x140005b69  ; 0x140005b0c
    mov dword ptr [rdx + 0x10], r9d  ; 0x140005b0e
    cmp dword ptr [r10], r9d  ; 0x140005b12
    je 0x140005b60  ; 0x140005b15
    movsxd rdx, dword ptr [r10]  ; 0x140005b17
    add rdx, rbp  ; 0x140005b1a
    movzx ecx, byte ptr [rdx]  ; 0x140005b1d
    and ecx, 0xf  ; 0x140005b20
    movsx rax, byte ptr [rcx + r14 + 0x1e610]  ; 0x140005b23
    mov cl, byte ptr [rcx + r14 + 0x1e620]  ; 0x140005b2c
    sub rdx, rax  ; 0x140005b34
    mov r10d, dword ptr [rdx - 4]  ; 0x140005b37
    shr r10d, cl  ; 0x140005b3b
    test r10d, r10d  ; 0x140005b3e
    je 0x140005b6f  ; 0x140005b41
    mov eax, dword ptr [rdx]  ; 0x140005b43
    mov ecx, dword ptr [rdx + 4]  ; 0x140005b45
    lea rdx, [rdx + 8]  ; 0x140005b48
    cmp eax, esi  ; 0x140005b4c
    je 0x140005b5a  ; 0x140005b4e
    inc r9d  ; 0x140005b50
    cmp r9d, r10d  ; 0x140005b53
    jb 0x140005b43  ; 0x140005b56
    jmp 0x140005b6f  ; 0x140005b58
    mov dword ptr [r11 + 0x10], ecx  ; 0x140005b5a
    jmp 0x140005b6f  ; 0x140005b5e
    mov ecx, 7  ; 0x140005b60
    int 0x29  ; 0x140005b65
    jmp 0x140005b6f  ; 0x140005b67
    mov eax, dword ptr [r10]  ; 0x140005b69
    mov dword ptr [rdx + 0x10], eax  ; 0x140005b6c
    test bl, 1  ; 0x140005b6f
    je 0x140005b99  ; 0x140005b72
    movzx ecx, byte ptr [r8]  ; 0x140005b74
    and ecx, 0xf  ; 0x140005b78
    movsx rdx, byte ptr [rcx + r14 + 0x1e610]  ; 0x140005b7b
    mov cl, byte ptr [rcx + r14 + 0x1e620]  ; 0x140005b84
    sub r8, rdx  ; 0x140005b8c
    mov edx, dword ptr [r8 - 4]  ; 0x140005b8f
    shr edx, cl  ; 0x140005b93
    mov dword ptr [r11 + 0x14], edx  ; 0x140005b95
    mov rbx, qword ptr [rsp + 0x10]  ; 0x140005b99
    sub r8, rdi  ; 0x140005b9e
    mov rbp, qword ptr [rsp + 0x18]  ; 0x140005ba1
    mov rax, r8  ; 0x140005ba6
    mov rsi, qword ptr [rsp + 0x20]  ; 0x140005ba9
    mov rdi, qword ptr [rsp + 0x28]  ; 0x140005bae
    pop r14  ; 0x140005bb3
    ret  ; 0x140005bb5
    int3   ; 0x140005bb6
    int3   ; 0x140005bb7
    push rbx  ; 0x140005bb8
    sub rsp, 0x20  ; 0x140005bba
    mov rbx, rdx  ; 0x140005bbe
    mov rdx, rcx  ; 0x140005bc1
    mov rcx, rbx  ; 0x140005bc4
    call 0x140006c1c  ; 0x140005bc7
    mov edx, eax  ; 0x140005bcc
    mov rcx, rbx  ; 0x140005bce
    call 0x140005a20  ; 0x140005bd1
    test rax, rax  ; 0x140005bd6
    setne al  ; 0x140005bd9
    add rsp, 0x20  ; 0x140005bdc
    pop rbx  ; 0x140005be0
    ret  ; 0x140005be1
    int3   ; 0x140005be2
    int3   ; 0x140005be3
    mov al, byte ptr [rdx]  ; 0x140005be4
    and al, 1  ; 0x140005be6
    ret  ; 0x140005be8
    int3   ; 0x140005be9
    int3   ; 0x140005bea
    int3   ; 0x140005beb
    mov qword ptr [rsp + 8], rbx  ; 0x140005bec
    mov qword ptr [rsp + 0x10], rsi  ; 0x140005bf1
    push rdi  ; 0x140005bf6
    sub rsp, 0x20  ; 0x140005bf7
    lea r9, [rsp + 0x48]  ; 0x140005bfb
    mov rbx, r8  ; 0x140005c00
    mov rdi, rdx  ; 0x140005c03
    call 0x140005c84  ; 0x140005c06
    mov rdx, rdi  ; 0x140005c0b
    mov rcx, rbx  ; 0x140005c0e
    mov rsi, rax  ; 0x140005c11
    call 0x140006c1c  ; 0x140005c14
    mov edx, eax  ; 0x140005c19
    mov rcx, rbx  ; 0x140005c1b
    call 0x140005a20  ; 0x140005c1e
    test rax, rax  ; 0x140005c23
    jne 0x140005c2e  ; 0x140005c26
    or r9d, 0xffffffff  ; 0x140005c28
    jmp 0x140005c32  ; 0x140005c2c
    mov r9d, dword ptr [rax + 4]  ; 0x140005c2e
    mov r8, rbx  ; 0x140005c32
    mov rdx, rdi  ; 0x140005c35
    mov rcx, rsi  ; 0x140005c38
    call 0x1400093e0  ; 0x140005c3b
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140005c40
    mov rsi, qword ptr [rsp + 0x38]  ; 0x140005c45
    add rsp, 0x20  ; 0x140005c4a
    pop rdi  ; 0x140005c4e
    ret  ; 0x140005c4f
    sub rsp, 0x28  ; 0x140005c50
    test byte ptr [r8], 1  ; 0x140005c54
    mov rcx, qword ptr [rcx]  ; 0x140005c58
    mov qword ptr [rsp + 0x30], rcx  ; 0x140005c5b
    je 0x140005c6f  ; 0x140005c60
    mov eax, dword ptr [r8 + 0x14]  ; 0x140005c62
    mov rcx, qword ptr [rax + rcx]  ; 0x140005c66
    mov qword ptr [rsp + 0x30], rcx  ; 0x140005c6a
    or r9d, 0xffffffff  ; 0x140005c6f
    lea rcx, [rsp + 0x30]  ; 0x140005c73
    call 0x14000956c  ; 0x140005c78
    add rsp, 0x28  ; 0x140005c7d
    ret  ; 0x140005c81
    int3   ; 0x140005c82
    int3   ; 0x140005c83
    mov qword ptr [rsp + 0x10], rbx  ; 0x140005c84
; Function: func_140005c89
func_140005c89:
    mov qword ptr [rsp + 0x18], rbp  ; 0x140005c89
    push rsi  ; 0x140005c8e
    push rdi  ; 0x140005c8f
    push r12  ; 0x140005c90
    push r14  ; 0x140005c92
    push r15  ; 0x140005c94
    sub rsp, 0x20  ; 0x140005c96
    mov esi, dword ptr [r8 + 0xc]  ; 0x140005c9a
    mov r12, rcx  ; 0x140005c9e
    mov rcx, r8  ; 0x140005ca1
    mov rdi, r9  ; 0x140005ca4
    mov r14, r8  ; 0x140005ca7
    mov r15, rdx  ; 0x140005caa
    call 0x140006c1c  ; 0x140005cad
    mov r10, qword ptr [r12]  ; 0x140005cb2
    mov ebp, eax  ; 0x140005cb6
    mov qword ptr [rdi], r10  ; 0x140005cb8
    jmp 0x140005d20  ; 0x140005cbb
    movsxd rax, dword ptr [r14 + 0x10]  ; 0x140005cbd
    lea ecx, [rsi - 1]  ; 0x140005cc1
    mov esi, ecx  ; 0x140005cc4
    lea rcx, [rcx + rcx*4]  ; 0x140005cc6
    lea rbx, [rax + rcx*4]  ; 0x140005cca
    add rbx, qword ptr [r15 + 8]  ; 0x140005cce
    cmp ebp, dword ptr [rbx + 4]  ; 0x140005cd2
    jle 0x140005d20  ; 0x140005cd5
    cmp ebp, dword ptr [rbx + 8]  ; 0x140005cd7
    jg 0x140005d20  ; 0x140005cda
    mov rcx, qword ptr [r15]  ; 0x140005cdc
    lea rdx, [rsp + 0x50]  ; 0x140005cdf
    xor r8d, r8d  ; 0x140005ce4
    call qword ptr [rip + 0x18323]  ; 0x140005ce7
    movsxd r8, dword ptr [rbx + 0x10]  ; 0x140005ced
    xor ecx, ecx  ; 0x140005cf1
    add r8, qword ptr [rsp + 0x50]  ; 0x140005cf3
    mov r9d, dword ptr [rbx + 0xc]  ; 0x140005cf8
    mov r10d, dword ptr [rax]  ; 0x140005cfc
    test r9d, r9d  ; 0x140005cff
    je 0x140005d1b  ; 0x140005d02
    lea rdx, [r8 + 0xc]  ; 0x140005d04
    movsxd rax, dword ptr [rdx]  ; 0x140005d08
    cmp rax, r10  ; 0x140005d0b
    je 0x140005d1b  ; 0x140005d0e
    inc ecx  ; 0x140005d10
    add rdx, 0x14  ; 0x140005d12
    cmp ecx, r9d  ; 0x140005d16
    jb 0x140005d08  ; 0x140005d19
    cmp ecx, r9d  ; 0x140005d1b
    jb 0x140005d26  ; 0x140005d1e
    test esi, esi  ; 0x140005d20
    jne 0x140005cbd  ; 0x140005d22
    jmp 0x140005d3a  ; 0x140005d24
    mov rax, qword ptr [r12]  ; 0x140005d26
    lea rcx, [rcx + rcx*4]  ; 0x140005d2a
    movsxd rcx, dword ptr [r8 + rcx*4 + 0x10]  ; 0x140005d2e
    mov rcx, qword ptr [rcx + rax]  ; 0x140005d33
    mov qword ptr [rdi], rcx  ; 0x140005d37
    mov rbx, qword ptr [rsp + 0x58]  ; 0x140005d3a
    mov rax, rdi  ; 0x140005d3f
    mov rbp, qword ptr [rsp + 0x60]  ; 0x140005d42
    add rsp, 0x20  ; 0x140005d47
    pop r15  ; 0x140005d4b
    pop r14  ; 0x140005d4d
    pop r12  ; 0x140005d4f
    pop rdi  ; 0x140005d51
    pop rsi  ; 0x140005d52
    ret  ; 0x140005d53
    mov rax, qword ptr [rcx]  ; 0x140005d54
    mov rdx, rcx  ; 0x140005d57
    mov qword ptr [r9], rax  ; 0x140005d5a
    test byte ptr [r8], 1  ; 0x140005d5d
    je 0x140005d71  ; 0x140005d61
    mov ecx, dword ptr [r8 + 0x14]  ; 0x140005d63
    mov rax, qword ptr [rdx]  ; 0x140005d67
    mov rcx, qword ptr [rcx + rax]  ; 0x140005d6a
    mov qword ptr [r9], rcx  ; 0x140005d6e
    mov rax, r9  ; 0x140005d71
    ret  ; 0x140005d74
    int3   ; 0x140005d75
    int3   ; 0x140005d76
    int3   ; 0x140005d77
    mov qword ptr [rsp + 8], rbx  ; 0x140005d78
; Function: func_140005d7d
func_140005d7d:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140005d7d
    mov qword ptr [rsp + 0x18], rsi  ; 0x140005d82
    push rdi  ; 0x140005d87
    push r12  ; 0x140005d88
    push r13  ; 0x140005d8a
    push r14  ; 0x140005d8c
    push r15  ; 0x140005d8e
    sub rsp, 0x40  ; 0x140005d90
    mov rbx, qword ptr [rsp + 0x90]  ; 0x140005d94
    mov r15, rdx  ; 0x140005d9c
    mov rsi, rcx  ; 0x140005d9f
    mov rdx, r9  ; 0x140005da2
    mov rcx, rbx  ; 0x140005da5
    mov rdi, r9  ; 0x140005da8
    mov r14d, r8d  ; 0x140005dab
    mov ebp, dword ptr [rbx + 0xc]  ; 0x140005dae
    call 0x140006c1c  ; 0x140005db1
    xor r10d, r10d  ; 0x140005db6
    mov r9d, eax  ; 0x140005db9
    test ebp, ebp  ; 0x140005dbc
    je 0x140005ea3  ; 0x140005dbe
    mov r11, qword ptr [rdi + 8]  ; 0x140005dc4
    or r12d, 0xffffffff  ; 0x140005dc8
    movsxd rbx, dword ptr [rbx + 0x10]  ; 0x140005dcc
    mov r8d, r12d  ; 0x140005dd0
    mov r13d, r12d  ; 0x140005dd3
    mov edx, ebp  ; 0x140005dd6
    lea edi, [rdx - 1]  ; 0x140005dd8
    lea rcx, [rdi + rdi*4]  ; 0x140005ddb
    lea rax, [r11 + rcx*4]  ; 0x140005ddf
    cmp r9d, dword ptr [rax + rbx + 4]  ; 0x140005de3
    jle 0x140005df1  ; 0x140005de8
    cmp r9d, dword ptr [rax + rbx + 8]  ; 0x140005dea
    jle 0x140005df7  ; 0x140005def
    mov edx, edi  ; 0x140005df1
    test edi, edi  ; 0x140005df3
    jne 0x140005dd8  ; 0x140005df5
    test edx, edx  ; 0x140005df7
    je 0x140005e0b  ; 0x140005df9
    lea eax, [rdx - 1]  ; 0x140005dfb
    lea rax, [rax + rax*4]  ; 0x140005dfe
    lea r9, [r11 + rax*4]  ; 0x140005e02
    add r9, rbx  ; 0x140005e06
    jmp 0x140005e0e  ; 0x140005e09
    mov r9, r10  ; 0x140005e0b
    mov edx, r10d  ; 0x140005e0e
    lea rcx, [r11 + rbx]  ; 0x140005e11
    test r9, r9  ; 0x140005e15
    je 0x140005e2b  ; 0x140005e18
    mov eax, dword ptr [r9 + 4]  ; 0x140005e1a
    cmp dword ptr [rcx], eax  ; 0x140005e1e
    jle 0x140005e40  ; 0x140005e20
    mov eax, dword ptr [r9 + 8]  ; 0x140005e22
    cmp dword ptr [rcx + 4], eax  ; 0x140005e26
    jg 0x140005e40  ; 0x140005e29
    cmp r14d, dword ptr [rcx]  ; 0x140005e2b
    jl 0x140005e40  ; 0x140005e2e
    cmp r14d, dword ptr [rcx + 4]  ; 0x140005e30
    jg 0x140005e40  ; 0x140005e34
    cmp r8d, r12d  ; 0x140005e36
    mov r13d, edx  ; 0x140005e39
    cmove r8d, edx  ; 0x140005e3c
    inc edx  ; 0x140005e40
    add rcx, 0x14  ; 0x140005e42
    cmp edx, ebp  ; 0x140005e46
    jb 0x140005e15  ; 0x140005e48
    mov eax, r10d  ; 0x140005e4a
    mov qword ptr [rsp + 0x20], r15  ; 0x140005e4d
    lea r11, [rsp + 0x40]  ; 0x140005e52
    mov qword ptr [rsp + 0x30], r15  ; 0x140005e57
    mov rbx, qword ptr [r11 + 0x30]  ; 0x140005e5c
    cmp r8d, r12d  ; 0x140005e60
    mov rbp, qword ptr [r11 + 0x38]  ; 0x140005e63
    cmovne eax, r8d  ; 0x140005e67
    mov dword ptr [rsp + 0x28], eax  ; 0x140005e6b
    lea eax, [r13 + 1]  ; 0x140005e6f
    movups xmm0, xmmword ptr [rsp + 0x20]  ; 0x140005e73
    cmovne r10d, eax  ; 0x140005e78
    mov rax, rsi  ; 0x140005e7c
    mov dword ptr [rsp + 0x38], r10d  ; 0x140005e7f
    movups xmm1, xmmword ptr [rsp + 0x30]  ; 0x140005e84
    movdqu xmmword ptr [rsi], xmm0  ; 0x140005e89
    movdqu xmmword ptr [rsi + 0x10], xmm1  ; 0x140005e8d
    mov rsi, qword ptr [r11 + 0x40]  ; 0x140005e92
    mov rsp, r11  ; 0x140005e96
    pop r15  ; 0x140005e99
    pop r14  ; 0x140005e9b
    pop r13  ; 0x140005e9d
    pop r12  ; 0x140005e9f
    pop rdi  ; 0x140005ea1
    ret  ; 0x140005ea2
    call 0x140010040  ; 0x140005ea3
    int3   ; 0x140005ea8
    int3   ; 0x140005ea9
    int3   ; 0x140005eaa
    int3   ; 0x140005eab
    mov rax, rsp  ; 0x140005eac
    mov qword ptr [rax + 8], rbx  ; 0x140005eaf
; Function: func_140005eb3
func_140005eb3:
    mov qword ptr [rax + 0x10], rbp  ; 0x140005eb3
    mov qword ptr [rax + 0x18], rsi  ; 0x140005eb7
    mov qword ptr [rax + 0x20], rdi  ; 0x140005ebb
    push r14  ; 0x140005ebf
    sub rsp, 0x60  ; 0x140005ec1
    mov qword ptr [rsp + 0x20], rdx  ; 0x140005ec5
    mov rdi, rdx  ; 0x140005eca
    movaps xmmword ptr [rax - 0x18], xmm6  ; 0x140005ecd
    mov rbp, rcx  ; 0x140005ed1
    mov qword ptr [rsp + 0x30], rdx  ; 0x140005ed4
    xor ebx, ebx  ; 0x140005ed9
    mov dword ptr [rsp + 0x28], ebx  ; 0x140005edb
    lea rdx, [rax - 0x28]  ; 0x140005edf
    movaps xmm6, xmmword ptr [rsp + 0x20]  ; 0x140005ee3
    mov rcx, rdi  ; 0x140005ee8
    movdqa xmmword ptr [rax - 0x28], xmm6  ; 0x140005eeb
    mov r14d, r8d  ; 0x140005ef0
    xor esi, esi  ; 0x140005ef3
    call 0x14000623c  ; 0x140005ef5
    mov r9d, dword ptr [rdi]  ; 0x140005efa
    xor edx, edx  ; 0x140005efd
    test r9d, r9d  ; 0x140005eff
    je 0x140005fca  ; 0x140005f02
    mov r8, qword ptr [rdi + 8]  ; 0x140005f08
    lea r10, [rip - 0x5f13]  ; 0x140005f0c
    mov rax, qword ptr [rdi + 0x18]  ; 0x140005f13
    mov ecx, ebx  ; 0x140005f17
    cmp r14d, eax  ; 0x140005f19
    jl 0x140005f39  ; 0x140005f1c
    shr rax, 0x20  ; 0x140005f1e
    cmp r14d, eax  ; 0x140005f22
    jg 0x140005f39  ; 0x140005f25
    test ecx, ecx  ; 0x140005f27
    mov ebx, edx  ; 0x140005f29
    mov esi, edx  ; 0x140005f2b
    cmove ebx, ecx  ; 0x140005f2d
    mov dword ptr [rsp + 0x28], ebx  ; 0x140005f30
    movaps xmm6, xmmword ptr [rsp + 0x20]  ; 0x140005f34
    movzx ecx, byte ptr [r8]  ; 0x140005f39
    inc edx  ; 0x140005f3d
    and ecx, 0xf  ; 0x140005f3f
    movsx rax, byte ptr [rcx + r10 + 0x1e610]  ; 0x140005f42
    mov cl, byte ptr [rcx + r10 + 0x1e620]  ; 0x140005f4b
    sub r8, rax  ; 0x140005f53
    mov eax, dword ptr [r8 - 4]  ; 0x140005f56
    shr eax, cl  ; 0x140005f5a
    mov qword ptr [rdi + 8], r8  ; 0x140005f5c
    mov dword ptr [rdi + 0x18], eax  ; 0x140005f60
    movzx ecx, byte ptr [r8]  ; 0x140005f63
    and ecx, 0xf  ; 0x140005f67
    movsx rax, byte ptr [rcx + r10 + 0x1e610]  ; 0x140005f6a
    mov cl, byte ptr [rcx + r10 + 0x1e620]  ; 0x140005f73
    sub r8, rax  ; 0x140005f7b
    mov eax, dword ptr [r8 - 4]  ; 0x140005f7e
    shr eax, cl  ; 0x140005f82
    mov qword ptr [rdi + 8], r8  ; 0x140005f84
    mov dword ptr [rdi + 0x1c], eax  ; 0x140005f88
    movzx ecx, byte ptr [r8]  ; 0x140005f8b
    and ecx, 0xf  ; 0x140005f8f
    movsx rax, byte ptr [rcx + r10 + 0x1e610]  ; 0x140005f92
    mov cl, byte ptr [rcx + r10 + 0x1e620]  ; 0x140005f9b
    sub r8, rax  ; 0x140005fa3
    mov eax, dword ptr [r8 - 4]  ; 0x140005fa6
    shr eax, cl  ; 0x140005faa
    mov qword ptr [rdi + 8], r8  ; 0x140005fac
    mov dword ptr [rdi + 0x20], eax  ; 0x140005fb0
    mov eax, dword ptr [r8]  ; 0x140005fb3
    add r8, 4  ; 0x140005fb6
    mov qword ptr [rdi + 8], r8  ; 0x140005fba
    mov dword ptr [rdi + 0x24], eax  ; 0x140005fbe
    cmp edx, r9d  ; 0x140005fc1
    jne 0x140005f13  ; 0x140005fc4
    inc esi  ; 0x140005fca
    movdqa xmmword ptr [rsp + 0x40], xmm6  ; 0x140005fcc
    lea rdx, [rsp + 0x40]  ; 0x140005fd2
    mov dword ptr [rsp + 0x38], esi  ; 0x140005fd7
    mov rcx, rdi  ; 0x140005fdb
    call 0x14000623c  ; 0x140005fde
    movups xmm0, xmmword ptr [rsp + 0x30]  ; 0x140005fe3
    lea r11, [rsp + 0x60]  ; 0x140005fe8
    mov rax, rbp  ; 0x140005fed
    mov rbx, qword ptr [r11 + 0x10]  ; 0x140005ff0
    mov rsi, qword ptr [r11 + 0x20]  ; 0x140005ff4
    mov rdi, qword ptr [r11 + 0x28]  ; 0x140005ff8
    movdqu xmmword ptr [rbp], xmm6  ; 0x140005ffc
    movaps xmm6, xmmword ptr [rsp + 0x50]  ; 0x140006001
    movdqu xmmword ptr [rbp + 0x10], xmm0  ; 0x140006006
    mov rbp, qword ptr [r11 + 0x18]  ; 0x14000600b
    mov rsp, r11  ; 0x14000600f
    pop r14  ; 0x140006012
    ret  ; 0x140006014
    int3   ; 0x140006015
    int3   ; 0x140006016
    int3   ; 0x140006017
; Function: func_140006018
func_140006018:
    push rbp  ; 0x140006018
    lea rbp, [rsp - 0x1f]  ; 0x14000601a
    sub rsp, 0xe0  ; 0x14000601f
    mov rax, qword ptr [rip + 0x23fd3]  ; 0x140006026
    xor rax, rsp  ; 0x14000602d
    mov qword ptr [rbp + 0xf], rax  ; 0x140006030
    mov r10, qword ptr [rbp + 0x77]  ; 0x140006034
    lea rax, [rip + 0x18691]  ; 0x140006038
    movups xmm0, xmmword ptr [rax]  ; 0x14000603f
    mov r11, rcx  ; 0x140006042
    lea rcx, [rsp + 0x30]  ; 0x140006045
    movups xmm1, xmmword ptr [rax + 0x10]  ; 0x14000604a
    movups xmmword ptr [rcx], xmm0  ; 0x14000604e
    movups xmm0, xmmword ptr [rax + 0x20]  ; 0x140006051
    movups xmmword ptr [rcx + 0x10], xmm1  ; 0x140006055
    movups xmm1, xmmword ptr [rax + 0x30]  ; 0x140006059
    movups xmmword ptr [rcx + 0x20], xmm0  ; 0x14000605d
    movups xmm0, xmmword ptr [rax + 0x40]  ; 0x140006061
    movups xmmword ptr [rcx + 0x30], xmm1  ; 0x140006065
    movups xmm1, xmmword ptr [rax + 0x50]  ; 0x140006069
    movups xmmword ptr [rcx + 0x40], xmm0  ; 0x14000606d
    movups xmm0, xmmword ptr [rax + 0x60]  ; 0x140006071
    movups xmmword ptr [rcx + 0x50], xmm1  ; 0x140006075
    movups xmm1, xmmword ptr [rax + 0x80]  ; 0x140006079
    movups xmmword ptr [rcx + 0x60], xmm0  ; 0x140006080
    movups xmm0, xmmword ptr [rax + 0x70]  ; 0x140006084
    mov rax, qword ptr [rax + 0x90]  ; 0x140006088
    movups xmmword ptr [rcx + 0x70], xmm0  ; 0x14000608f
    movups xmmword ptr [rcx + 0x80], xmm1  ; 0x140006093
    mov qword ptr [rcx + 0x90], rax  ; 0x14000609a
    lea rax, [rip + 0x2cb4]  ; 0x1400060a1
    mov rcx, qword ptr [r11]  ; 0x1400060a8
    mov qword ptr [rbp - 0x71], rax  ; 0x1400060ab
    mov rax, qword ptr [rbp + 0x4f]  ; 0x1400060af
    mov qword ptr [rbp - 0x61], rax  ; 0x1400060b3
    movsxd rax, dword ptr [rbp + 0x5f]  ; 0x1400060b7
    mov qword ptr [rbp - 0x59], rax  ; 0x1400060bb
    mov rax, qword ptr [rbp + 0x57]  ; 0x1400060bf
    mov qword ptr [rbp - 0x49], rax  ; 0x1400060c3
    movzx eax, byte ptr [rbp + 0x7f]  ; 0x1400060c7
    mov qword ptr [rbp - 0x39], rax  ; 0x1400060cb
    mov rax, qword ptr [r10 + 0x40]  ; 0x1400060cf
    mov qword ptr [rsp + 0x28], rax  ; 0x1400060d3
    mov rax, qword ptr [r10 + 0x28]  ; 0x1400060d8
    mov qword ptr [rbp - 0x69], r9  ; 0x1400060dc
    xor r9d, r9d  ; 0x1400060e0
    mov qword ptr [rbp - 0x51], r8  ; 0x1400060e3
    lea r8, [rsp + 0x30]  ; 0x1400060e7
    mov qword ptr [rbp - 0x41], rdx  ; 0x1400060ec
    mov rdx, qword ptr [r10]  ; 0x1400060f0
    mov qword ptr [rsp + 0x20], rax  ; 0x1400060f3
    mov qword ptr [rbp - 0x31], 0x19930520  ; 0x1400060f8
    call qword ptr [rip + 0x17f9a]  ; 0x140006100
    mov rcx, qword ptr [rbp + 0xf]  ; 0x140006106
    xor rcx, rsp  ; 0x14000610a
    call 0x140004a50  ; 0x14000610d
    add rsp, 0xe0  ; 0x140006112
    pop rbp  ; 0x140006119
    ret  ; 0x14000611a
    int3   ; 0x14000611b
; Function: func_14000611c
func_14000611c:
    push rbp  ; 0x14000611c
    lea rbp, [rsp - 0x1f]  ; 0x14000611e
    sub rsp, 0xe0  ; 0x140006123
    mov rax, qword ptr [rip + 0x23ecf]  ; 0x14000612a
    xor rax, rsp  ; 0x140006131
    mov qword ptr [rbp + 0xf], rax  ; 0x140006134
    mov r10, qword ptr [rbp + 0x77]  ; 0x140006138
    lea rax, [rip + 0x184ed]  ; 0x14000613c
    movups xmm0, xmmword ptr [rax]  ; 0x140006143
    mov r11, rcx  ; 0x140006146
    lea rcx, [rsp + 0x30]  ; 0x140006149
    movups xmm1, xmmword ptr [rax + 0x10]  ; 0x14000614e
    movups xmmword ptr [rcx], xmm0  ; 0x140006152
    movups xmm0, xmmword ptr [rax + 0x20]  ; 0x140006155
    movups xmmword ptr [rcx + 0x10], xmm1  ; 0x140006159
    movups xmm1, xmmword ptr [rax + 0x30]  ; 0x14000615d
    movups xmmword ptr [rcx + 0x20], xmm0  ; 0x140006161
    movups xmm0, xmmword ptr [rax + 0x40]  ; 0x140006165
    movups xmmword ptr [rcx + 0x30], xmm1  ; 0x140006169
    movups xmm1, xmmword ptr [rax + 0x50]  ; 0x14000616d
    movups xmmword ptr [rcx + 0x40], xmm0  ; 0x140006171
    movups xmm0, xmmword ptr [rax + 0x60]  ; 0x140006175
    movups xmmword ptr [rcx + 0x50], xmm1  ; 0x140006179
    movups xmm1, xmmword ptr [rax + 0x80]  ; 0x14000617d
    movups xmmword ptr [rcx + 0x60], xmm0  ; 0x140006184
    movups xmm0, xmmword ptr [rax + 0x70]  ; 0x140006188
    mov rax, qword ptr [rax + 0x90]  ; 0x14000618c
    movups xmmword ptr [rcx + 0x70], xmm0  ; 0x140006193
    movups xmmword ptr [rcx + 0x80], xmm1  ; 0x140006197
    mov qword ptr [rcx + 0x90], rax  ; 0x14000619e
    lea rax, [rip + 0x2d9c]  ; 0x1400061a5
    mov qword ptr [rbp - 0x71], rax  ; 0x1400061ac
    mov rax, qword ptr [rbp + 0x4f]  ; 0x1400061b0
    mov qword ptr [rbp - 0x61], rax  ; 0x1400061b4
    movsxd rax, dword ptr [rbp + 0x5f]  ; 0x1400061b8
    mov qword ptr [rbp - 0x51], r8  ; 0x1400061bc
    mov r8, qword ptr [rbp + 0x6f]  ; 0x1400061c0
    mov qword ptr [rbp - 0x59], rax  ; 0x1400061c4
    movzx eax, byte ptr [rbp + 0x7f]  ; 0x1400061c8
    mov qword ptr [rbp - 0x39], rax  ; 0x1400061cc
    mov rcx, qword ptr [r8 + 0x18]  ; 0x1400061d0
    mov r8, qword ptr [r8 + 0x20]  ; 0x1400061d4
    add rcx, qword ptr [r10 + 8]  ; 0x1400061d8
    add r8, qword ptr [r10 + 8]  ; 0x1400061dc
    movsxd rax, dword ptr [rbp + 0x67]  ; 0x1400061e0
    mov qword ptr [rbp - 0x19], rax  ; 0x1400061e4
    mov rax, qword ptr [r10 + 0x40]  ; 0x1400061e8
    mov qword ptr [rsp + 0x28], rax  ; 0x1400061ec
    mov rax, qword ptr [r10 + 0x28]  ; 0x1400061f1
    mov qword ptr [rbp - 0x69], r9  ; 0x1400061f5
    xor r9d, r9d  ; 0x1400061f9
    mov qword ptr [rbp - 0x49], rcx  ; 0x1400061fc
    mov rcx, qword ptr [r11]  ; 0x140006200
    mov qword ptr [rbp - 0x41], rdx  ; 0x140006203
    mov rdx, qword ptr [r10]  ; 0x140006207
    mov qword ptr [rbp - 0x29], r8  ; 0x14000620a
    lea r8, [rsp + 0x30]  ; 0x14000620e
    mov qword ptr [rsp + 0x20], rax  ; 0x140006213
    mov qword ptr [rbp - 0x31], 0x19930520  ; 0x140006218
    call qword ptr [rip + 0x17e7a]  ; 0x140006220
    mov rcx, qword ptr [rbp + 0xf]  ; 0x140006226
    xor rcx, rsp  ; 0x14000622a
    call 0x140004a50  ; 0x14000622d
    add rsp, 0xe0  ; 0x140006232
    pop rbp  ; 0x140006239
    ret  ; 0x14000623a
    int3   ; 0x14000623b
    mov r8, qword ptr [rcx + 0x10]  ; 0x14000623c
    lea r11, [rip - 0x6247]  ; 0x140006240
    mov qword ptr [rcx + 8], r8  ; 0x140006247
    mov r9, rcx  ; 0x14000624b
    movzx ecx, byte ptr [r8]  ; 0x14000624e
    and ecx, 0xf  ; 0x140006252
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x140006255
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x14000625e
    sub r8, rax  ; 0x140006266
    mov eax, dword ptr [r8 - 4]  ; 0x140006269
    shr eax, cl  ; 0x14000626d
    mov qword ptr [r9 + 8], r8  ; 0x14000626f
    mov dword ptr [r9 + 0x18], eax  ; 0x140006273
    movzx ecx, byte ptr [r8]  ; 0x140006277
    and ecx, 0xf  ; 0x14000627b
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x14000627e
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x140006287
    sub r8, rax  ; 0x14000628f
    mov eax, dword ptr [r8 - 4]  ; 0x140006292
    mov qword ptr [r9 + 8], r8  ; 0x140006296
    shr eax, cl  ; 0x14000629a
    mov dword ptr [r9 + 0x1c], eax  ; 0x14000629c
    movzx ecx, byte ptr [r8]  ; 0x1400062a0
    and ecx, 0xf  ; 0x1400062a4
    movsx rax, byte ptr [r11 + rcx + 0x1e610]  ; 0x1400062a7
    mov cl, byte ptr [r11 + rcx + 0x1e620]  ; 0x1400062b0
    sub r8, rax  ; 0x1400062b8
    mov eax, dword ptr [r8 - 4]  ; 0x1400062bb
    mov qword ptr [r9 + 8], r8  ; 0x1400062bf
    shr eax, cl  ; 0x1400062c3
    mov dword ptr [r9 + 0x20], eax  ; 0x1400062c5
    mov eax, dword ptr [r8]  ; 0x1400062c9
    add r8, 4  ; 0x1400062cc
    cmp dword ptr [rdx + 8], 0  ; 0x1400062d0
    mov qword ptr [r9 + 8], r8  ; 0x1400062d4
    mov dword ptr [r9 + 0x24], eax  ; 0x1400062d8
    je 0x1400063fd  ; 0x1400062dc
    mov r10d, dword ptr [rdx + 8]  ; 0x1400062e2
    movzx ecx, byte ptr [r8]  ; 0x1400062e6
    and ecx, 0xf  ; 0x1400062ea
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x1400062ed
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x1400062f6
    sub r8, rax  ; 0x1400062fe
    mov eax, dword ptr [r8 - 4]  ; 0x140006301
    mov qword ptr [r9 + 8], r8  ; 0x140006305
    shr eax, cl  ; 0x140006309
    mov dword ptr [r9 + 0x18], eax  ; 0x14000630b
    movzx ecx, byte ptr [r8]  ; 0x14000630f
    and ecx, 0xf  ; 0x140006313
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x140006316
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x14000631f
    sub r8, rax  ; 0x140006327
    mov eax, dword ptr [r8 - 4]  ; 0x14000632a
    mov qword ptr [r9 + 8], r8  ; 0x14000632e
    shr eax, cl  ; 0x140006332
    mov dword ptr [r9 + 0x1c], eax  ; 0x140006334
    movzx ecx, byte ptr [r8]  ; 0x140006338
    and ecx, 0xf  ; 0x14000633c
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x14000633f
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x140006348
    sub r8, rax  ; 0x140006350
    mov eax, dword ptr [r8 - 4]  ; 0x140006353
    lea rdx, [r8 + 4]  ; 0x140006357
    mov qword ptr [r9 + 8], r8  ; 0x14000635b
    shr eax, cl  ; 0x14000635f
    mov dword ptr [r9 + 0x20], eax  ; 0x140006361
    mov eax, dword ptr [r8]  ; 0x140006365
    mov qword ptr [r9 + 8], rdx  ; 0x140006368
    mov dword ptr [r9 + 0x24], eax  ; 0x14000636c
    movzx ecx, byte ptr [rdx]  ; 0x140006370
    and ecx, 0xf  ; 0x140006373
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x140006376
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x14000637f
    sub rdx, rax  ; 0x140006387
    mov eax, dword ptr [rdx - 4]  ; 0x14000638a
    shr eax, cl  ; 0x14000638d
    mov qword ptr [r9 + 8], rdx  ; 0x14000638f
    mov dword ptr [r9 + 0x18], eax  ; 0x140006393
    movzx ecx, byte ptr [rdx]  ; 0x140006397
    and ecx, 0xf  ; 0x14000639a
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x14000639d
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x1400063a6
    sub rdx, rax  ; 0x1400063ae
    mov eax, dword ptr [rdx - 4]  ; 0x1400063b1
    shr eax, cl  ; 0x1400063b4
    mov qword ptr [r9 + 8], rdx  ; 0x1400063b6
    mov dword ptr [r9 + 0x1c], eax  ; 0x1400063ba
    movzx ecx, byte ptr [rdx]  ; 0x1400063be
    and ecx, 0xf  ; 0x1400063c1
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x1400063c4
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x1400063cd
    sub rdx, rax  ; 0x1400063d5
    mov eax, dword ptr [rdx - 4]  ; 0x1400063d8
    lea r8, [rdx + 4]  ; 0x1400063db
    shr eax, cl  ; 0x1400063df
    mov qword ptr [r9 + 8], rdx  ; 0x1400063e1
    mov dword ptr [r9 + 0x20], eax  ; 0x1400063e5
    mov eax, dword ptr [rdx]  ; 0x1400063e9
    mov qword ptr [r9 + 8], r8  ; 0x1400063eb
    mov dword ptr [r9 + 0x24], eax  ; 0x1400063ef
    sub r10, 1  ; 0x1400063f3
    jne 0x1400062e6  ; 0x1400063f7
    ret  ; 0x1400063fd
    int3   ; 0x1400063fe
    int3   ; 0x1400063ff
    push rbx  ; 0x140006400
    sub rsp, 0x20  ; 0x140006402
    mov rbx, rcx  ; 0x140006406
    mov qword ptr [rcx], rdx  ; 0x140006409
    call 0x140006a38  ; 0x14000640c
    cmp rbx, qword ptr [rax + 0x58]  ; 0x140006411
    jae 0x140006422  ; 0x140006415
    call 0x140006a38  ; 0x140006417
    mov rcx, qword ptr [rax + 0x58]  ; 0x14000641c
    jmp 0x140006424  ; 0x140006420
    xor ecx, ecx  ; 0x140006422
    mov qword ptr [rbx + 8], rcx  ; 0x140006424
    call 0x140006a38  ; 0x140006428
    mov qword ptr [rax + 0x58], rbx  ; 0x14000642d
    mov rax, rbx  ; 0x140006431
    add rsp, 0x20  ; 0x140006434
    pop rbx  ; 0x140006438
    ret  ; 0x140006439
    int3   ; 0x14000643a
    int3   ; 0x14000643b
    mov qword ptr [rsp + 8], rbx  ; 0x14000643c
    push rdi  ; 0x140006441
    sub rsp, 0x20  ; 0x140006442
    mov rdi, rcx  ; 0x140006446
    call 0x140006a38  ; 0x140006449
    cmp rdi, qword ptr [rax + 0x58]  ; 0x14000644e
    jne 0x140006489  ; 0x140006452
    call 0x140006a38  ; 0x140006454
    mov rdx, qword ptr [rax + 0x58]  ; 0x140006459
    test rdx, rdx  ; 0x14000645d
    je 0x140006489  ; 0x140006460
    mov rbx, qword ptr [rdx + 8]  ; 0x140006462
    cmp rdi, rdx  ; 0x140006466
    je 0x140006475  ; 0x140006469
    mov rdx, rbx  ; 0x14000646b
    test rbx, rbx  ; 0x14000646e
    je 0x140006489  ; 0x140006471
    jmp 0x140006462  ; 0x140006473
    call 0x140006a38  ; 0x140006475
    mov qword ptr [rax + 0x58], rbx  ; 0x14000647a
    mov rbx, qword ptr [rsp + 0x30]  ; 0x14000647e
    add rsp, 0x20  ; 0x140006483
    pop rdi  ; 0x140006487
    ret  ; 0x140006488
    call 0x140010040  ; 0x140006489
    int3   ; 0x14000648e
    int3   ; 0x14000648f
    sub rsp, 0x28  ; 0x140006490
    call 0x140006a38  ; 0x140006494
    mov rax, qword ptr [rax + 0x60]  ; 0x140006499
    add rsp, 0x28  ; 0x14000649d
    ret  ; 0x1400064a1
    int3   ; 0x1400064a2
    int3   ; 0x1400064a3
    sub rsp, 0x28  ; 0x1400064a4
    call 0x140006a38  ; 0x1400064a8
    mov rax, qword ptr [rax + 0x68]  ; 0x1400064ad
    add rsp, 0x28  ; 0x1400064b1
    ret  ; 0x1400064b5
    int3   ; 0x1400064b6
    int3   ; 0x1400064b7
    push rbx  ; 0x1400064b8
    sub rsp, 0x20  ; 0x1400064ba
    mov rbx, rcx  ; 0x1400064be
    call 0x140006a38  ; 0x1400064c1
    mov qword ptr [rax + 0x60], rbx  ; 0x1400064c6
    add rsp, 0x20  ; 0x1400064ca
    pop rbx  ; 0x1400064ce
    ret  ; 0x1400064cf
    push rbx  ; 0x1400064d0
    sub rsp, 0x20  ; 0x1400064d2
    mov rbx, rcx  ; 0x1400064d6
    call 0x140006a38  ; 0x1400064d9
    mov qword ptr [rax + 0x68], rbx  ; 0x1400064de
    add rsp, 0x20  ; 0x1400064e2
    pop rbx  ; 0x1400064e6
    ret  ; 0x1400064e7
    mov rax, rsp  ; 0x1400064e8
    mov qword ptr [rax + 0x10], rbx  ; 0x1400064eb
; Function: func_1400064ef
func_1400064ef:
    mov qword ptr [rax + 0x18], rbp  ; 0x1400064ef
    mov qword ptr [rax + 0x20], rsi  ; 0x1400064f3
    push rdi  ; 0x1400064f7
    sub rsp, 0x40  ; 0x1400064f8
    mov rbx, qword ptr [r9 + 8]  ; 0x1400064fc
    mov rdi, r9  ; 0x140006500
    mov rsi, r8  ; 0x140006503
    mov qword ptr [rax + 8], rdx  ; 0x140006506
    mov rbp, rcx  ; 0x14000650a
    call 0x140006a38  ; 0x14000650d
    mov qword ptr [rax + 0x60], rbx  ; 0x140006512
    mov rbx, qword ptr [rbp + 0x38]  ; 0x140006516
    call 0x140006a38  ; 0x14000651a
    mov qword ptr [rax + 0x68], rbx  ; 0x14000651f
    call 0x140006a38  ; 0x140006523
    mov rcx, qword ptr [rdi + 0x38]  ; 0x140006528
    mov r9, rdi  ; 0x14000652c
    mov r8, rsi  ; 0x14000652f
    mov edx, dword ptr [rcx]  ; 0x140006532
    mov rcx, rbp  ; 0x140006534
    add rdx, qword ptr [rax + 0x60]  ; 0x140006537
    xor eax, eax  ; 0x14000653b
    mov byte ptr [rsp + 0x38], al  ; 0x14000653d
    mov qword ptr [rsp + 0x30], rax  ; 0x140006541
    mov dword ptr [rsp + 0x28], eax  ; 0x140006546
    mov qword ptr [rsp + 0x20], rdx  ; 0x14000654a
    lea rdx, [rsp + 0x50]  ; 0x14000654f
    call 0x140008b44  ; 0x140006554
    mov rbx, qword ptr [rsp + 0x58]  ; 0x140006559
    mov rbp, qword ptr [rsp + 0x60]  ; 0x14000655e
    mov rsi, qword ptr [rsp + 0x68]  ; 0x140006563
    add rsp, 0x40  ; 0x140006568
    pop rdi  ; 0x14000656c
    ret  ; 0x14000656d
    int3   ; 0x14000656e
    int3   ; 0x14000656f
    mov rax, rsp  ; 0x140006570
    mov qword ptr [rax + 0x10], rbx  ; 0x140006573
; Function: func_140006577
func_140006577:
    mov qword ptr [rax + 0x18], rbp  ; 0x140006577
    mov qword ptr [rax + 0x20], rsi  ; 0x14000657b
    push rdi  ; 0x14000657f
    sub rsp, 0x60  ; 0x140006580
    and dword ptr [rax - 0x24], 0  ; 0x140006584
    mov rdi, r9  ; 0x140006588
    and dword ptr [rax - 0x20], 0  ; 0x14000658b
    mov rsi, r8  ; 0x14000658f
    and dword ptr [rax - 0x1c], 0  ; 0x140006592
    mov rbp, rcx  ; 0x140006596
    and dword ptr [rax - 0x18], 0  ; 0x140006599
    and dword ptr [rax - 0x14], 0  ; 0x14000659d
    mov rbx, qword ptr [r9 + 8]  ; 0x1400065a1
    mov byte ptr [rax - 0x28], 0  ; 0x1400065a5
    mov qword ptr [rax + 8], rdx  ; 0x1400065a9
    call 0x140006a38  ; 0x1400065ad
    mov qword ptr [rax + 0x60], rbx  ; 0x1400065b2
    mov rbx, qword ptr [rbp + 0x38]  ; 0x1400065b6
    call 0x140006a38  ; 0x1400065ba
    mov qword ptr [rax + 0x68], rbx  ; 0x1400065bf
    call 0x140006a38  ; 0x1400065c3
    mov rcx, qword ptr [rdi + 0x38]  ; 0x1400065c8
    lea rdx, [rsp + 0x40]  ; 0x1400065cc
    mov r9, qword ptr [rdi + 0x10]  ; 0x1400065d1
    mov r8, qword ptr [rdi + 8]  ; 0x1400065d5
    mov byte ptr [rsp + 0x20], 0  ; 0x1400065d9
    mov ecx, dword ptr [rcx]  ; 0x1400065de
    add rcx, qword ptr [rax + 0x60]  ; 0x1400065e0
    mov r9d, dword ptr [r9]  ; 0x1400065e4
    call 0x140005a84  ; 0x1400065e7
    mov byte ptr [rsp + 0x38], 0  ; 0x1400065ec
    lea rax, [rsp + 0x40]  ; 0x1400065f1
    and qword ptr [rsp + 0x30], 0  ; 0x1400065f6
    lea rdx, [rsp + 0x70]  ; 0x1400065fc
    and dword ptr [rsp + 0x28], 0  ; 0x140006601
    mov r9, rdi  ; 0x140006606
    mov r8, rsi  ; 0x140006609
    mov qword ptr [rsp + 0x20], rax  ; 0x14000660c
    mov rcx, rbp  ; 0x140006611
    call 0x140008b4c  ; 0x140006614
    lea r11, [rsp + 0x60]  ; 0x140006619
    mov rbx, qword ptr [r11 + 0x18]  ; 0x14000661e
    mov rbp, qword ptr [r11 + 0x20]  ; 0x140006622
    mov rsi, qword ptr [r11 + 0x28]  ; 0x140006626
    mov rsp, r11  ; 0x14000662a
    pop rdi  ; 0x14000662d
    ret  ; 0x14000662e
    int3   ; 0x14000662f
    mov qword ptr [rsp + 8], rbx  ; 0x140006630
; Function: func_140006635
func_140006635:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140006635
    mov qword ptr [rsp + 0x18], rsi  ; 0x14000663a
    push rdi  ; 0x14000663f
    push r12  ; 0x140006640
    push r13  ; 0x140006642
    push r14  ; 0x140006644
    push r15  ; 0x140006646
    sub rsp, 0x40  ; 0x140006648
    mov rsi, rcx  ; 0x14000664c
    mov r15, r9  ; 0x14000664f
    mov rcx, r8  ; 0x140006652
    mov rbp, r8  ; 0x140006655
    mov r13, rdx  ; 0x140006658
    call 0x140009d24  ; 0x14000665b
    mov r12, qword ptr [r15 + 8]  ; 0x140006660
    mov r14, qword ptr [r15]  ; 0x140006664
    mov rbx, qword ptr [r15 + 0x38]  ; 0x140006667
    sub r14, r12  ; 0x14000666b
    test byte ptr [rsi + 4], 0x66  ; 0x14000666e
    mov edi, dword ptr [r15 + 0x48]  ; 0x140006672
    jne 0x14000676d  ; 0x140006676
    mov qword ptr [rsp + 0x30], rsi  ; 0x14000667c
    mov qword ptr [rsp + 0x38], rbp  ; 0x140006681
    jmp 0x140006759  ; 0x140006686
    mov ecx, edi  ; 0x14000668b
    add rcx, rcx  ; 0x14000668d
    mov ebp, edi  ; 0x140006690
    mov eax, dword ptr [rbx + rcx*8 + 4]  ; 0x140006692
    cmp r14, rax  ; 0x140006696
    jb 0x140006757  ; 0x140006699
    mov eax, dword ptr [rbx + rcx*8 + 8]  ; 0x14000669f
    cmp r14, rax  ; 0x1400066a3
    jae 0x140006757  ; 0x1400066a6
    cmp dword ptr [rbx + rcx*8 + 0x10], 0  ; 0x1400066ac
    je 0x140006757  ; 0x1400066b1
    cmp dword ptr [rbx + rcx*8 + 0xc], 1  ; 0x1400066b7
    je 0x1400066d9  ; 0x1400066bc
    mov eax, dword ptr [rbx + rcx*8 + 0xc]  ; 0x1400066be
    mov rdx, r13  ; 0x1400066c2
    add rax, r12  ; 0x1400066c5
    lea rcx, [rsp + 0x30]  ; 0x1400066c8
    call rax  ; 0x1400066cd
    test eax, eax  ; 0x1400066cf
    js 0x140006766  ; 0x1400066d1
    jle 0x140006757  ; 0x1400066d7
    cmp dword ptr [rsi], 0xe06d7363  ; 0x1400066d9
    jne 0x140006709  ; 0x1400066df
    cmp qword ptr [rip + 0x1807f], 0  ; 0x1400066e1
    je 0x140006709  ; 0x1400066e9
    lea rcx, [rip + 0x18076]  ; 0x1400066eb
    call 0x14001c270  ; 0x1400066f2
    test eax, eax  ; 0x1400066f7
    je 0x140006709  ; 0x1400066f9
    mov edx, 1  ; 0x1400066fb
    mov rcx, rsi  ; 0x140006700
    call qword ptr [rip + 0x1805f]  ; 0x140006703
    lea rax, [rbp + 1]  ; 0x140006709
    mov r8d, 1  ; 0x14000670d
    add rax, rax  ; 0x140006713
    mov rdx, r13  ; 0x140006716
    mov ecx, dword ptr [rbx + rax*8]  ; 0x140006719
    add rcx, r12  ; 0x14000671c
    call 0x140009cf0  ; 0x14000671f
    mov r9d, dword ptr [rsi]  ; 0x140006724
    lea rax, [rbp + 1]  ; 0x140006727
    add rax, rax  ; 0x14000672b
    mov r8, rsi  ; 0x14000672e
    mov rcx, r13  ; 0x140006731
    mov edx, dword ptr [rbx + rax*8]  ; 0x140006734
    mov rax, qword ptr [r15 + 0x40]  ; 0x140006737
    add rdx, r12  ; 0x14000673b
    mov qword ptr [rsp + 0x28], rax  ; 0x14000673e
    mov rax, qword ptr [r15 + 0x28]  ; 0x140006743
    mov qword ptr [rsp + 0x20], rax  ; 0x140006747
    call qword ptr [rip + 0x1794e]  ; 0x14000674c
    call 0x140009d20  ; 0x140006752
    inc edi  ; 0x140006757
    cmp edi, dword ptr [rbx]  ; 0x140006759
    jb 0x14000668b  ; 0x14000675b
    jmp 0x140006824  ; 0x140006761
    xor eax, eax  ; 0x140006766
    jmp 0x140006829  ; 0x140006768
    mov rbp, qword ptr [r15 + 0x20]  ; 0x14000676d
    sub rbp, r12  ; 0x140006771
    jmp 0x140006818  ; 0x140006774
    mov r9d, edi  ; 0x140006779
    add r9, r9  ; 0x14000677c
    mov eax, dword ptr [rbx + r9*8 + 4]  ; 0x14000677f
    cmp r14, rax  ; 0x140006784
    jb 0x140006816  ; 0x140006787
    mov eax, dword ptr [rbx + r9*8 + 8]  ; 0x14000678d
    cmp r14, rax  ; 0x140006792
    jae 0x140006816  ; 0x140006795
    test byte ptr [rsi + 4], 0x20  ; 0x140006797
    je 0x1400067dc  ; 0x14000679b
    xor edx, edx  ; 0x14000679d
    test r8d, r8d  ; 0x14000679f
    je 0x1400067d8  ; 0x1400067a2
    mov ecx, edx  ; 0x1400067a4
    add rcx, rcx  ; 0x1400067a6
    mov eax, dword ptr [rbx + rcx*8 + 4]  ; 0x1400067a9
    cmp rbp, rax  ; 0x1400067ad
    jb 0x1400067d1  ; 0x1400067b0
    mov eax, dword ptr [rbx + rcx*8 + 8]  ; 0x1400067b2
    cmp rbp, rax  ; 0x1400067b6
    jae 0x1400067d1  ; 0x1400067b9
    mov eax, dword ptr [rbx + r9*8 + 0x10]  ; 0x1400067bb
    cmp dword ptr [rbx + rcx*8 + 0x10], eax  ; 0x1400067c0
    jne 0x1400067d1  ; 0x1400067c4
    mov eax, dword ptr [rbx + r9*8 + 0xc]  ; 0x1400067c6
    cmp dword ptr [rbx + rcx*8 + 0xc], eax  ; 0x1400067cb
    je 0x1400067d8  ; 0x1400067cf
    inc edx  ; 0x1400067d1
    cmp edx, r8d  ; 0x1400067d3
    jb 0x1400067a4  ; 0x1400067d6
    cmp edx, dword ptr [rbx]  ; 0x1400067d8
    jne 0x140006824  ; 0x1400067da
    mov eax, edi  ; 0x1400067dc
    inc rax  ; 0x1400067de
    mov ecx, edi  ; 0x1400067e1
    add rax, rax  ; 0x1400067e3
    add rcx, rcx  ; 0x1400067e6
    cmp dword ptr [rbx + rax*8], 0  ; 0x1400067e9
    je 0x1400067ff  ; 0x1400067ed
    mov eax, dword ptr [rbx + rax*8]  ; 0x1400067ef
    cmp rbp, rax  ; 0x1400067f2
    jne 0x140006816  ; 0x1400067f5
    test byte ptr [rsi + 4], 0x20  ; 0x1400067f7
    jne 0x140006824  ; 0x1400067fb
    jmp 0x140006816  ; 0x1400067fd
    lea eax, [rdi + 1]  ; 0x1400067ff
    mov rdx, r13  ; 0x140006802
    mov dword ptr [r15 + 0x48], eax  ; 0x140006805
    mov r8d, dword ptr [rbx + rcx*8 + 0xc]  ; 0x140006809
    mov cl, 1  ; 0x14000680e
    add r8, r12  ; 0x140006810
    call r8  ; 0x140006813
    inc edi  ; 0x140006816
    mov r8d, dword ptr [rbx]  ; 0x140006818
    cmp edi, r8d  ; 0x14000681b
    jb 0x140006779  ; 0x14000681e
    mov eax, 1  ; 0x140006824
    lea r11, [rsp + 0x40]  ; 0x140006829
    mov rbx, qword ptr [r11 + 0x30]  ; 0x14000682e
    mov rbp, qword ptr [r11 + 0x38]  ; 0x140006832
    mov rsi, qword ptr [r11 + 0x40]  ; 0x140006836
    mov rsp, r11  ; 0x14000683a
    pop r15  ; 0x14000683d
    pop r14  ; 0x14000683f
    pop r13  ; 0x140006841
    pop r12  ; 0x140006843
    pop rdi  ; 0x140006845
    ret  ; 0x140006846
    int3   ; 0x140006847
    sub rsp, 0x28  ; 0x140006848
    call 0x140009d5c  ; 0x14000684c
    test al, al  ; 0x140006851
    jne 0x140006859  ; 0x140006853
    xor al, al  ; 0x140006855
    jmp 0x14000686b  ; 0x140006857
    call 0x140006b14  ; 0x140006859
    test al, al  ; 0x14000685e
    jne 0x140006869  ; 0x140006860
    call 0x140009da4  ; 0x140006862
    jmp 0x140006855  ; 0x140006867
    mov al, 1  ; 0x140006869
    add rsp, 0x28  ; 0x14000686b
    ret  ; 0x14000686f
    sub rsp, 0x28  ; 0x140006870
    test cl, cl  ; 0x140006874
    jne 0x140006882  ; 0x140006876
    call 0x140006b5c  ; 0x140006878
    call 0x140009da4  ; 0x14000687d
    mov al, 1  ; 0x140006882
    add rsp, 0x28  ; 0x140006884
    ret  ; 0x140006888
    int3   ; 0x140006889
    int3   ; 0x14000688a
    int3   ; 0x14000688b
    cmp rcx, rdx  ; 0x14000688c
    je 0x1400068aa  ; 0x14000688f
    add rdx, 9  ; 0x140006891
    lea rax, [rcx + 9]  ; 0x140006895
    sub rdx, rax  ; 0x140006899
    mov cl, byte ptr [rax]  ; 0x14000689c
    cmp cl, byte ptr [rax + rdx]  ; 0x14000689e
    jne 0x1400068ad  ; 0x1400068a1
    inc rax  ; 0x1400068a3
    test cl, cl  ; 0x1400068a6
    jne 0x14000689c  ; 0x1400068a8
    xor eax, eax  ; 0x1400068aa
    ret  ; 0x1400068ac
    sbb eax, eax  ; 0x1400068ad
    or eax, 1  ; 0x1400068af
    ret  ; 0x1400068b2
    int3   ; 0x1400068b3
    test rcx, rcx  ; 0x1400068b4
    je 0x140006920  ; 0x1400068b7
    mov byte ptr [rsp + 0x10], dl  ; 0x1400068b9
    sub rsp, 0x48  ; 0x1400068bd
    cmp dword ptr [rcx], 0xe06d7363  ; 0x1400068c1
    jne 0x14000691c  ; 0x1400068c7
    cmp dword ptr [rcx + 0x18], 4  ; 0x1400068c9
    jne 0x14000691c  ; 0x1400068cd
    mov eax, dword ptr [rcx + 0x20]  ; 0x1400068cf
    sub eax, 0x19930520  ; 0x1400068d2
    cmp eax, 2  ; 0x1400068d7
    ja 0x14000691c  ; 0x1400068da
    mov rax, qword ptr [rcx + 0x30]  ; 0x1400068dc
    test rax, rax  ; 0x1400068e0
    je 0x14000691c  ; 0x1400068e3
    movsxd rdx, dword ptr [rax + 4]  ; 0x1400068e5
    test edx, edx  ; 0x1400068e9
    je 0x1400068fe  ; 0x1400068eb
    add rdx, qword ptr [rcx + 0x38]  ; 0x1400068ed
    mov rcx, qword ptr [rcx + 0x28]  ; 0x1400068f1
    call 0x140006924  ; 0x1400068f5
    jmp 0x14000691c  ; 0x1400068fa
    jmp 0x14000691c  ; 0x1400068fc
    test byte ptr [rax], 0x10  ; 0x1400068fe
    je 0x14000691c  ; 0x140006901
    mov rax, qword ptr [rcx + 0x28]  ; 0x140006903
    mov rcx, qword ptr [rax]  ; 0x140006907
    test rcx, rcx  ; 0x14000690a
    je 0x14000691c  ; 0x14000690d
    mov rax, qword ptr [rcx]  ; 0x14000690f
    mov rax, qword ptr [rax + 0x10]  ; 0x140006912
    call qword ptr [rip + 0x17954]  ; 0x140006916
    add rsp, 0x48  ; 0x14000691c
    ret  ; 0x140006920
    int3   ; 0x140006921
    int3   ; 0x140006922
    int3   ; 0x140006923
    jmp rdx  ; 0x140006924
    int3   ; 0x140006927
    push rbx  ; 0x140006928
    sub rsp, 0x20  ; 0x14000692a
    mov rbx, rcx  ; 0x14000692e
    call 0x140006a38  ; 0x140006931
    mov rdx, qword ptr [rax + 0x58]  ; 0x140006936
    jmp 0x140006945  ; 0x14000693a
    cmp qword ptr [rdx], rbx  ; 0x14000693c
    je 0x140006953  ; 0x14000693f
    mov rdx, qword ptr [rdx + 8]  ; 0x140006941
    test rdx, rdx  ; 0x140006945
    jne 0x14000693c  ; 0x140006948
    lea eax, [rdx + 1]  ; 0x14000694a
    add rsp, 0x20  ; 0x14000694d
    pop rbx  ; 0x140006951
    ret  ; 0x140006952
    xor eax, eax  ; 0x140006953
    jmp 0x14000694d  ; 0x140006955
    int3   ; 0x140006957
    movsxd rax, dword ptr [rdx]  ; 0x140006958
    add rax, rcx  ; 0x14000695b
    cmp dword ptr [rdx + 4], 0  ; 0x14000695e
    jl 0x14000697a  ; 0x140006962
    movsxd r9, dword ptr [rdx + 4]  ; 0x140006964
    movsxd rdx, dword ptr [rdx + 8]  ; 0x140006968
    mov rcx, qword ptr [r9 + rcx]  ; 0x14000696c
    movsxd r8, dword ptr [rdx + rcx]  ; 0x140006970
    add r8, r9  ; 0x140006974
    add rax, r8  ; 0x140006977
    ret  ; 0x14000697a
    int3   ; 0x14000697b
    mov qword ptr [rsp + 8], rbx  ; 0x14000697c
    push rdi  ; 0x140006981
    sub rsp, 0x20  ; 0x140006982
    mov rdi, qword ptr [rcx]  ; 0x140006986
    mov rbx, rcx  ; 0x140006989
    cmp dword ptr [rdi], 0xe0434352  ; 0x14000698c
    je 0x1400069a6  ; 0x140006992
    cmp dword ptr [rdi], 0xe0434f4d  ; 0x140006994
    je 0x1400069a6  ; 0x14000699a
    cmp dword ptr [rdi], 0xe06d7363  ; 0x14000699c
    je 0x1400069c6  ; 0x1400069a2
    jmp 0x1400069b9  ; 0x1400069a4
    call 0x140006a38  ; 0x1400069a6
    cmp dword ptr [rax + 0x30], 0  ; 0x1400069ab
    jle 0x1400069b9  ; 0x1400069af
    call 0x140006a38  ; 0x1400069b1
    dec dword ptr [rax + 0x30]  ; 0x1400069b6
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400069b9
    xor eax, eax  ; 0x1400069be
    add rsp, 0x20  ; 0x1400069c0
    pop rdi  ; 0x1400069c4
    ret  ; 0x1400069c5
    call 0x140006a38  ; 0x1400069c6
    mov qword ptr [rax + 0x20], rdi  ; 0x1400069cb
    mov rbx, qword ptr [rbx + 8]  ; 0x1400069cf
    call 0x140006a38  ; 0x1400069d3
    mov qword ptr [rax + 0x28], rbx  ; 0x1400069d8
    call 0x14000ffb4  ; 0x1400069dc
    int3   ; 0x1400069e1
    int3   ; 0x1400069e2
    int3   ; 0x1400069e3
    sub rsp, 0x28  ; 0x1400069e4
    call 0x140006a38  ; 0x1400069e8
    add rax, 0x20  ; 0x1400069ed
    add rsp, 0x28  ; 0x1400069f1
    ret  ; 0x1400069f5
    int3   ; 0x1400069f6
    int3   ; 0x1400069f7
    sub rsp, 0x28  ; 0x1400069f8
    call 0x140006a38  ; 0x1400069fc
    add rax, 0x28  ; 0x140006a01
    add rsp, 0x28  ; 0x140006a05
    ret  ; 0x140006a09
    int3   ; 0x140006a0a
    int3   ; 0x140006a0b
    sub rsp, 0x28  ; 0x140006a0c
    call 0x14000ffb4  ; 0x140006a10
    int3   ; 0x140006a15
    int3   ; 0x140006a16
    int3   ; 0x140006a17
    sub rsp, 0x28  ; 0x140006a18
    test rcx, rcx  ; 0x140006a1c
    je 0x140006a32  ; 0x140006a1f
    lea rax, [rip + 0x247f8]  ; 0x140006a21
    cmp rcx, rax  ; 0x140006a28
    je 0x140006a32  ; 0x140006a2b
    call 0x14000eb28  ; 0x140006a2d
    add rsp, 0x28  ; 0x140006a32
    ret  ; 0x140006a36
    int3   ; 0x140006a37
    sub rsp, 0x28  ; 0x140006a38
    call 0x140006a54  ; 0x140006a3c
    test rax, rax  ; 0x140006a41
    je 0x140006a4b  ; 0x140006a44
    add rsp, 0x28  ; 0x140006a46
    ret  ; 0x140006a4a
    call 0x140010040  ; 0x140006a4b
    int3   ; 0x140006a50
    int3   ; 0x140006a51
    int3   ; 0x140006a52
    int3   ; 0x140006a53
    mov qword ptr [rsp + 8], rbx  ; 0x140006a54
    mov qword ptr [rsp + 0x10], rsi  ; 0x140006a59
    push rdi  ; 0x140006a5e
    sub rsp, 0x20  ; 0x140006a5f
    cmp dword ptr [rip + 0x23606], -1  ; 0x140006a63
    jne 0x140006a73  ; 0x140006a6a
    xor eax, eax  ; 0x140006a6c
    jmp 0x140006b03  ; 0x140006a6e
    call qword ptr [rip + 0x1762f]  ; 0x140006a73
    mov ecx, dword ptr [rip + 0x235f1]  ; 0x140006a79
    mov edi, eax  ; 0x140006a7f
    call 0x14000ad78  ; 0x140006a81
    or rdx, 0xffffffffffffffff  ; 0x140006a86
    xor esi, esi  ; 0x140006a8a
    cmp rax, rdx  ; 0x140006a8c
    je 0x140006af8  ; 0x140006a8f
    test rax, rax  ; 0x140006a91
    je 0x140006a9b  ; 0x140006a94
    mov rsi, rax  ; 0x140006a96
    jmp 0x140006af8  ; 0x140006a99
    mov ecx, dword ptr [rip + 0x235cf]  ; 0x140006a9b
    call 0x14000adc0  ; 0x140006aa1
    test eax, eax  ; 0x140006aa6
    je 0x140006af8  ; 0x140006aa8
    mov edx, 0x80  ; 0x140006aaa
    lea ecx, [rdx - 0x7f]  ; 0x140006aaf
    call 0x140010098  ; 0x140006ab2
    mov ecx, dword ptr [rip + 0x235b3]  ; 0x140006ab7
    mov rbx, rax  ; 0x140006abd
    test rax, rax  ; 0x140006ac0
    je 0x140006ae9  ; 0x140006ac3
    mov rdx, rax  ; 0x140006ac5
    call 0x14000adc0  ; 0x140006ac8
    test eax, eax  ; 0x140006acd
    je 0x140006ae3  ; 0x140006acf
    mov rax, rbx  ; 0x140006ad1
    mov dword ptr [rbx + 0x78], 0xfffffffe  ; 0x140006ad4
    mov rbx, rsi  ; 0x140006adb
    mov rsi, rax  ; 0x140006ade
    jmp 0x140006af0  ; 0x140006ae1
    mov ecx, dword ptr [rip + 0x23587]  ; 0x140006ae3
    xor edx, edx  ; 0x140006ae9
    call 0x14000adc0  ; 0x140006aeb
    mov rcx, rbx  ; 0x140006af0
    call 0x14000eb28  ; 0x140006af3
    mov ecx, edi  ; 0x140006af8
    call qword ptr [rip + 0x175b0]  ; 0x140006afa
    mov rax, rsi  ; 0x140006b00
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140006b03
    mov rsi, qword ptr [rsp + 0x38]  ; 0x140006b08
    add rsp, 0x20  ; 0x140006b0d
    pop rdi  ; 0x140006b11
    ret  ; 0x140006b12
    int3   ; 0x140006b13
    sub rsp, 0x28  ; 0x140006b14
    lea rcx, [rip - 0x107]  ; 0x140006b18
    call 0x14000ace8  ; 0x140006b1f
    mov dword ptr [rip + 0x23546], eax  ; 0x140006b24
    cmp eax, -1  ; 0x140006b2a
    je 0x140006b54  ; 0x140006b2d
    lea rdx, [rip + 0x246ea]  ; 0x140006b2f
    mov ecx, eax  ; 0x140006b36
    call 0x14000adc0  ; 0x140006b38
    test eax, eax  ; 0x140006b3d
    je 0x140006b4f  ; 0x140006b3f
    mov dword ptr [rip + 0x2474d], 0xfffffffe  ; 0x140006b41
    mov al, 1  ; 0x140006b4b
    jmp 0x140006b56  ; 0x140006b4d
    call 0x140006b5c  ; 0x140006b4f
    xor al, al  ; 0x140006b54
    add rsp, 0x28  ; 0x140006b56
    ret  ; 0x140006b5a
    int3   ; 0x140006b5b
    sub rsp, 0x28  ; 0x140006b5c
    mov ecx, dword ptr [rip + 0x2350a]  ; 0x140006b60
    cmp ecx, -1  ; 0x140006b66
    je 0x140006b77  ; 0x140006b69
    call 0x14000ad30  ; 0x140006b6b
    or dword ptr [rip + 0x234f9], 0xffffffff  ; 0x140006b70
    mov al, 1  ; 0x140006b77
    add rsp, 0x28  ; 0x140006b79
    ret  ; 0x140006b7d
    int3   ; 0x140006b7e
    int3   ; 0x140006b7f
    sub rsp, 0x28  ; 0x140006b80
    movsxd r9, dword ptr [r8 + 0x1c]  ; 0x140006b84
    mov r10, r8  ; 0x140006b88
    mov rax, qword ptr [rcx]  ; 0x140006b8b
    mov eax, dword ptr [r9 + rax]  ; 0x140006b8e
    cmp eax, -2  ; 0x140006b92
    jne 0x140006ba2  ; 0x140006b95
    mov r8, qword ptr [rdx]  ; 0x140006b97
    mov rcx, r10  ; 0x140006b9a
    call 0x140006c2c  ; 0x140006b9d
    add rsp, 0x28  ; 0x140006ba2
    ret  ; 0x140006ba6
    int3   ; 0x140006ba7
    push rbx  ; 0x140006ba8
    sub rsp, 0x20  ; 0x140006baa
    lea r9, [rsp + 0x40]  ; 0x140006bae
    mov rbx, r8  ; 0x140006bb3
    call 0x140005c84  ; 0x140006bb6
    mov rcx, qword ptr [rax]  ; 0x140006bbb
    movsxd rax, dword ptr [rbx + 0x1c]  ; 0x140006bbe
    mov qword ptr [rsp + 0x40], rcx  ; 0x140006bc2
    mov eax, dword ptr [rax + rcx + 4]  ; 0x140006bc7
    add rsp, 0x20  ; 0x140006bcb
    pop rbx  ; 0x140006bcf
    ret  ; 0x140006bd0
    int3   ; 0x140006bd1
    int3   ; 0x140006bd2
    int3   ; 0x140006bd3
    movsxd rdx, dword ptr [rdx + 0x1c]  ; 0x140006bd4
    mov rax, qword ptr [rcx]  ; 0x140006bd8
    mov dword ptr [rdx + rax], r8d  ; 0x140006bdb
    ret  ; 0x140006bdf
    mov qword ptr [rsp + 8], rbx  ; 0x140006be0
    push rdi  ; 0x140006be5
    sub rsp, 0x20  ; 0x140006be6
    mov edi, r9d  ; 0x140006bea
    mov rbx, r8  ; 0x140006bed
    lea r9, [rsp + 0x40]  ; 0x140006bf0
    call 0x140005c84  ; 0x140006bf5
    mov rcx, qword ptr [rax]  ; 0x140006bfa
    movsxd rax, dword ptr [rbx + 0x1c]  ; 0x140006bfd
    mov qword ptr [rsp + 0x40], rcx  ; 0x140006c01
    cmp edi, dword ptr [rax + rcx + 4]  ; 0x140006c06
    jle 0x140006c10  ; 0x140006c0a
    mov dword ptr [rax + rcx + 4], edi  ; 0x140006c0c
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140006c10
    add rsp, 0x20  ; 0x140006c15
    pop rdi  ; 0x140006c19
    ret  ; 0x140006c1a
    int3   ; 0x140006c1b
    mov r8, qword ptr [rdx]  ; 0x140006c1c
    jmp 0x140006c2c  ; 0x140006c1f
    mov r8, qword ptr [rdx]  ; 0x140006c24
    jmp 0x140006c94  ; 0x140006c27
    push rbx  ; 0x140006c2c
    sub rsp, 0x20  ; 0x140006c2e
    mov rbx, r8  ; 0x140006c32
    test rcx, rcx  ; 0x140006c35
    je 0x140006c8c  ; 0x140006c38
    movsxd r11, dword ptr [rcx + 0x18]  ; 0x140006c3a
    mov r10, qword ptr [rdx + 8]  ; 0x140006c3e
    lea rax, [r10 + r11]  ; 0x140006c42
    test rax, rax  ; 0x140006c46
    je 0x140006c8c  ; 0x140006c49
    mov r8d, dword ptr [rcx + 0x14]  ; 0x140006c4b
    xor r9d, r9d  ; 0x140006c4f
    test r8d, r8d  ; 0x140006c52
    je 0x140006c87  ; 0x140006c55
    lea rcx, [r11 + r9*8]  ; 0x140006c57
    movsxd rdx, dword ptr [rcx + r10]  ; 0x140006c5b
    add rdx, r10  ; 0x140006c5f
    cmp rbx, rdx  ; 0x140006c62
    jb 0x140006c6f  ; 0x140006c65
    inc r9d  ; 0x140006c67
    cmp r9d, r8d  ; 0x140006c6a
    jb 0x140006c57  ; 0x140006c6d
    test r9d, r9d  ; 0x140006c6f
    je 0x140006c87  ; 0x140006c72
    lea ecx, [r9 - 1]  ; 0x140006c74
    lea rax, [r10 + rcx*8]  ; 0x140006c78
    mov eax, dword ptr [rax + r11 + 4]  ; 0x140006c7c
    add rsp, 0x20  ; 0x140006c81
    pop rbx  ; 0x140006c85
    ret  ; 0x140006c86
    or eax, 0xffffffff  ; 0x140006c87
    jmp 0x140006c81  ; 0x140006c8a
    call 0x140010040  ; 0x140006c8c
    int3   ; 0x140006c91
    int3   ; 0x140006c92
    int3   ; 0x140006c93
    mov rax, rsp  ; 0x140006c94
    mov qword ptr [rax + 8], rbx  ; 0x140006c97
; Function: func_140006c9b
func_140006c9b:
    mov qword ptr [rax + 0x10], rbp  ; 0x140006c9b
    mov qword ptr [rax + 0x18], rsi  ; 0x140006c9f
    mov qword ptr [rax + 0x20], rdi  ; 0x140006ca3
    push r14  ; 0x140006ca7
    or ebp, 0xffffffff  ; 0x140006ca9
    mov rbx, r8  ; 0x140006cac
    cmp dword ptr [rcx + 0x10], 0  ; 0x140006caf
    mov r10, rdx  ; 0x140006cb3
    je 0x140006d68  ; 0x140006cb6
    movsxd r9, dword ptr [rcx + 0x10]  ; 0x140006cbc
    lea r14, [rip - 0x6cc7]  ; 0x140006cc0
    mov rdi, qword ptr [rdx + 8]  ; 0x140006cc7
    xor esi, esi  ; 0x140006ccb
    add r9, rdi  ; 0x140006ccd
    xor r8d, r8d  ; 0x140006cd0
    mov edx, ebp  ; 0x140006cd3
    movzx ecx, byte ptr [r9]  ; 0x140006cd5
    and ecx, 0xf  ; 0x140006cd9
    movsx rax, byte ptr [rcx + r14 + 0x1e610]  ; 0x140006cdc
    mov cl, byte ptr [rcx + r14 + 0x1e620]  ; 0x140006ce5
    sub r9, rax  ; 0x140006ced
    mov r11d, dword ptr [r9 - 4]  ; 0x140006cf0
    shr r11d, cl  ; 0x140006cf4
    test r11d, r11d  ; 0x140006cf7
    je 0x140006d68  ; 0x140006cfa
    mov rax, qword ptr [r10 + 0x10]  ; 0x140006cfc
    mov r10d, dword ptr [rax]  ; 0x140006d00
    movzx ecx, byte ptr [r9]  ; 0x140006d03
    and ecx, 0xf  ; 0x140006d07
    movsx rax, byte ptr [rcx + r14 + 0x1e610]  ; 0x140006d0a
    mov cl, byte ptr [rcx + r14 + 0x1e620]  ; 0x140006d13
    sub r9, rax  ; 0x140006d1b
    mov eax, dword ptr [r9 - 4]  ; 0x140006d1e
    shr eax, cl  ; 0x140006d22
    add esi, eax  ; 0x140006d24
    mov eax, esi  ; 0x140006d26
    add rax, r10  ; 0x140006d28
    add rax, rdi  ; 0x140006d2b
    cmp rbx, rax  ; 0x140006d2e
    jb 0x140006d5e  ; 0x140006d31
    movzx ecx, byte ptr [r9]  ; 0x140006d33
    inc r8d  ; 0x140006d37
    and ecx, 0xf  ; 0x140006d3a
    movsx rax, byte ptr [rcx + r14 + 0x1e610]  ; 0x140006d3d
    mov cl, byte ptr [rcx + r14 + 0x1e620]  ; 0x140006d46
    sub r9, rax  ; 0x140006d4e
    mov edx, dword ptr [r9 - 4]  ; 0x140006d51
    shr edx, cl  ; 0x140006d55
    dec edx  ; 0x140006d57
    cmp r8d, r11d  ; 0x140006d59
    jb 0x140006d03  ; 0x140006d5c
    test r8d, r8d  ; 0x140006d5e
    cmove edx, ebp  ; 0x140006d61
    mov eax, edx  ; 0x140006d64
    jmp 0x140006d6a  ; 0x140006d66
    mov eax, ebp  ; 0x140006d68
    mov rbx, qword ptr [rsp + 0x10]  ; 0x140006d6a
    mov rbp, qword ptr [rsp + 0x18]  ; 0x140006d6f
    mov rsi, qword ptr [rsp + 0x20]  ; 0x140006d74
    mov rdi, qword ptr [rsp + 0x28]  ; 0x140006d79
    pop r14  ; 0x140006d7e
    ret  ; 0x140006d80
    int3   ; 0x140006d81
    int3   ; 0x140006d82
    int3   ; 0x140006d83
    mov qword ptr [rsp + 8], rbx  ; 0x140006d84
    mov qword ptr [rsp + 0x10], rsi  ; 0x140006d89
    mov qword ptr [rsp + 0x18], rdi  ; 0x140006d8e
    push r13  ; 0x140006d93
    push r14  ; 0x140006d95
    push r15  ; 0x140006d97
    sub rsp, 0x30  ; 0x140006d99
    mov r14, r9  ; 0x140006d9d
    mov rbx, r8  ; 0x140006da0
    mov rsi, rdx  ; 0x140006da3
    mov r13, rcx  ; 0x140006da6
    xor edi, edi  ; 0x140006da9
    cmp dword ptr [r8 + 4], edi  ; 0x140006dab
    je 0x140006dc0  ; 0x140006daf
    movsxd r15, dword ptr [r8 + 4]  ; 0x140006db1
    call 0x140006490  ; 0x140006db5
    lea rdx, [r15 + rax]  ; 0x140006dba
    jmp 0x140006dc6  ; 0x140006dbe
    mov rdx, rdi  ; 0x140006dc0
    mov r15d, edi  ; 0x140006dc3
    test rdx, rdx  ; 0x140006dc6
    je 0x140006f46  ; 0x140006dc9
    test r15d, r15d  ; 0x140006dcf
    je 0x140006de5  ; 0x140006dd2
    call 0x140006490  ; 0x140006dd4
    mov rcx, rax  ; 0x140006dd9
    movsxd rax, dword ptr [rbx + 4]  ; 0x140006ddc
    add rcx, rax  ; 0x140006de0
    jmp 0x140006de8  ; 0x140006de3
    mov rcx, rdi  ; 0x140006de5
    cmp byte ptr [rcx + 0x10], dil  ; 0x140006de8
    je 0x140006f46  ; 0x140006dec
    cmp dword ptr [rbx + 8], edi  ; 0x140006df2
    jne 0x140006dff  ; 0x140006df5
    cmp dword ptr [rbx], edi  ; 0x140006df7
    jge 0x140006f46  ; 0x140006df9
    cmp dword ptr [rbx], edi  ; 0x140006dff
    jl 0x140006e0d  ; 0x140006e01
    movsxd rax, dword ptr [rbx + 8]  ; 0x140006e03
    add rax, qword ptr [rsi]  ; 0x140006e07
    mov rsi, rax  ; 0x140006e0a
    test byte ptr [rbx], 0x80  ; 0x140006e0d
    je 0x140006e44  ; 0x140006e10
    test byte ptr [r14], 0x10  ; 0x140006e12
    je 0x140006e44  ; 0x140006e16
    mov rax, qword ptr [rip + 0x243f1]  ; 0x140006e18
    test rax, rax  ; 0x140006e1f
    je 0x140006e44  ; 0x140006e22
    call qword ptr [rip + 0x17446]  ; 0x140006e24
    test rax, rax  ; 0x140006e2a
    je 0x140006f62  ; 0x140006e2d
    test rsi, rsi  ; 0x140006e33
    je 0x140006f62  ; 0x140006e36
    mov qword ptr [rsi], rax  ; 0x140006e3c
    mov rcx, rax  ; 0x140006e3f
    jmp 0x140006ea3  ; 0x140006e42
    test byte ptr [rbx], 8  ; 0x140006e44
    je 0x140006e64  ; 0x140006e47
    mov rcx, qword ptr [r13 + 0x28]  ; 0x140006e49
    test rcx, rcx  ; 0x140006e4d
    je 0x140006f67  ; 0x140006e50
    test rsi, rsi  ; 0x140006e56
    je 0x140006f67  ; 0x140006e59
    mov qword ptr [rsi], rcx  ; 0x140006e5f
    jmp 0x140006ea3  ; 0x140006e62
    test byte ptr [r14], 1  ; 0x140006e64
    je 0x140006eb4  ; 0x140006e68
    mov rdx, qword ptr [r13 + 0x28]  ; 0x140006e6a
    test rdx, rdx  ; 0x140006e6e
    je 0x140006f6c  ; 0x140006e71
    test rsi, rsi  ; 0x140006e77
    je 0x140006f6c  ; 0x140006e7a
    movsxd r8, dword ptr [r14 + 0x14]  ; 0x140006e80
    mov rcx, rsi  ; 0x140006e84
    call 0x14001c6e0  ; 0x140006e87
    cmp dword ptr [r14 + 0x14], 8  ; 0x140006e8c
    jne 0x140006f42  ; 0x140006e91
    cmp qword ptr [rsi], rdi  ; 0x140006e97
    je 0x140006f42  ; 0x140006e9a
    mov rcx, qword ptr [rsi]  ; 0x140006ea0
    lea rdx, [r14 + 8]  ; 0x140006ea3
    call 0x140006958  ; 0x140006ea7
    mov qword ptr [rsi], rax  ; 0x140006eac
    jmp 0x140006f42  ; 0x140006eaf
    cmp dword ptr [r14 + 0x18], edi  ; 0x140006eb4
    je 0x140006ec9  ; 0x140006eb8
    movsxd rbx, dword ptr [r14 + 0x18]  ; 0x140006eba
    call 0x1400064a4  ; 0x140006ebe
    lea rcx, [rbx + rax]  ; 0x140006ec3
    jmp 0x140006ece  ; 0x140006ec7
    mov rcx, rdi  ; 0x140006ec9
    mov ebx, edi  ; 0x140006ecc
    test rcx, rcx  ; 0x140006ece
    jne 0x140006f07  ; 0x140006ed1
    cmp qword ptr [r13 + 0x28], rdi  ; 0x140006ed3
    je 0x140006f71  ; 0x140006ed7
    test rsi, rsi  ; 0x140006edd
    je 0x140006f71  ; 0x140006ee0
    movsxd rbx, dword ptr [r14 + 0x14]  ; 0x140006ee6
    lea rdx, [r14 + 8]  ; 0x140006eea
    mov rcx, qword ptr [r13 + 0x28]  ; 0x140006eee
    call 0x140006958  ; 0x140006ef2
    mov rdx, rax  ; 0x140006ef7
    mov r8, rbx  ; 0x140006efa
    mov rcx, rsi  ; 0x140006efd
    call 0x14001c6e0  ; 0x140006f00
    jmp 0x140006f42  ; 0x140006f05
    cmp qword ptr [r13 + 0x28], rdi  ; 0x140006f07
    je 0x140006f76  ; 0x140006f0b
    test rsi, rsi  ; 0x140006f0d
    je 0x140006f76  ; 0x140006f10
    test ebx, ebx  ; 0x140006f12
    je 0x140006f27  ; 0x140006f14
    call 0x1400064a4  ; 0x140006f16
    mov rcx, rax  ; 0x140006f1b
    movsxd rax, dword ptr [r14 + 0x18]  ; 0x140006f1e
    add rcx, rax  ; 0x140006f22
    jmp 0x140006f2a  ; 0x140006f25
    mov rcx, rdi  ; 0x140006f27
    test rcx, rcx  ; 0x140006f2a
    je 0x140006f76  ; 0x140006f2d
    mov al, byte ptr [r14]  ; 0x140006f2f
    and al, 4  ; 0x140006f32
    neg al  ; 0x140006f34
    sbb ecx, ecx  ; 0x140006f36
    neg ecx  ; 0x140006f38
    inc ecx  ; 0x140006f3a
    mov edi, ecx  ; 0x140006f3c
    mov dword ptr [rsp + 0x20], ecx  ; 0x140006f3e
    mov eax, edi  ; 0x140006f42
    jmp 0x140006f48  ; 0x140006f44
    xor eax, eax  ; 0x140006f46
    mov rbx, qword ptr [rsp + 0x50]  ; 0x140006f48
    mov rsi, qword ptr [rsp + 0x58]  ; 0x140006f4d
    mov rdi, qword ptr [rsp + 0x60]  ; 0x140006f52
    add rsp, 0x30  ; 0x140006f57
    pop r15  ; 0x140006f5b
    pop r14  ; 0x140006f5d
    pop r13  ; 0x140006f5f
    ret  ; 0x140006f61
    call 0x140010040  ; 0x140006f62
    call 0x140010040  ; 0x140006f67
    call 0x140010040  ; 0x140006f6c
    call 0x140010040  ; 0x140006f71
    call 0x140010040  ; 0x140006f76
    nop  ; 0x140006f7b
    call 0x140010040  ; 0x140006f7c
    nop  ; 0x140006f81
    int3   ; 0x140006f82
    int3   ; 0x140006f83
    mov qword ptr [rsp + 8], rbx  ; 0x140006f84
    mov qword ptr [rsp + 0x10], rsi  ; 0x140006f89
    mov qword ptr [rsp + 0x18], rdi  ; 0x140006f8e
    push r13  ; 0x140006f93
    push r14  ; 0x140006f95
    push r15  ; 0x140006f97
    sub rsp, 0x30  ; 0x140006f99
    mov r14, r9  ; 0x140006f9d
    mov rbx, r8  ; 0x140006fa0
    mov rsi, rdx  ; 0x140006fa3
    mov r13, rcx  ; 0x140006fa6
    xor edi, edi  ; 0x140006fa9
    cmp dword ptr [r8 + 8], edi  ; 0x140006fab
    je 0x140006fc0  ; 0x140006faf
    movsxd r15, dword ptr [r8 + 8]  ; 0x140006fb1
    call 0x140006490  ; 0x140006fb5
    lea rdx, [r15 + rax]  ; 0x140006fba
    jmp 0x140006fc6  ; 0x140006fbe
    mov rdx, rdi  ; 0x140006fc0
    mov r15d, edi  ; 0x140006fc3
    test rdx, rdx  ; 0x140006fc6
    je 0x140007149  ; 0x140006fc9
    test r15d, r15d  ; 0x140006fcf
    je 0x140006fe5  ; 0x140006fd2
    call 0x140006490  ; 0x140006fd4
    mov rcx, rax  ; 0x140006fd9
    movsxd rax, dword ptr [rbx + 8]  ; 0x140006fdc
    add rcx, rax  ; 0x140006fe0
    jmp 0x140006fe8  ; 0x140006fe3
    mov rcx, rdi  ; 0x140006fe5
    cmp byte ptr [rcx + 0x10], dil  ; 0x140006fe8
    je 0x140007149  ; 0x140006fec
    cmp dword ptr [rbx + 0xc], edi  ; 0x140006ff2
    jne 0x140007000  ; 0x140006ff5
    cmp dword ptr [rbx + 4], edi  ; 0x140006ff7
    jge 0x140007149  ; 0x140006ffa
    cmp dword ptr [rbx + 4], edi  ; 0x140007000
    jl 0x14000700e  ; 0x140007003
    mov eax, dword ptr [rbx + 0xc]  ; 0x140007005
    add rax, qword ptr [rsi]  ; 0x140007008
    mov rsi, rax  ; 0x14000700b
    test byte ptr [rbx + 4], 0x80  ; 0x14000700e
    je 0x140007046  ; 0x140007012
    test byte ptr [r14], 0x10  ; 0x140007014
    je 0x140007046  ; 0x140007018
    mov rax, qword ptr [rip + 0x241ef]  ; 0x14000701a
    test rax, rax  ; 0x140007021
    je 0x140007046  ; 0x140007024
    call qword ptr [rip + 0x17244]  ; 0x140007026
    test rax, rax  ; 0x14000702c
    je 0x140007165  ; 0x14000702f
    test rsi, rsi  ; 0x140007035
    je 0x140007165  ; 0x140007038
    mov qword ptr [rsi], rax  ; 0x14000703e
    mov rcx, rax  ; 0x140007041
    jmp 0x1400070a6  ; 0x140007044
    test byte ptr [rbx + 4], 8  ; 0x140007046
    je 0x140007067  ; 0x14000704a
    mov rcx, qword ptr [r13 + 0x28]  ; 0x14000704c
    test rcx, rcx  ; 0x140007050
    je 0x14000716a  ; 0x140007053
    test rsi, rsi  ; 0x140007059
    je 0x14000716a  ; 0x14000705c
    mov qword ptr [rsi], rcx  ; 0x140007062
    jmp 0x1400070a6  ; 0x140007065
    test byte ptr [r14], 1  ; 0x140007067
    je 0x1400070b7  ; 0x14000706b
    mov rdx, qword ptr [r13 + 0x28]  ; 0x14000706d
    test rdx, rdx  ; 0x140007071
    je 0x14000716f  ; 0x140007074
    test rsi, rsi  ; 0x14000707a
    je 0x14000716f  ; 0x14000707d
    movsxd r8, dword ptr [r14 + 0x14]  ; 0x140007083
    mov rcx, rsi  ; 0x140007087
    call 0x14001c6e0  ; 0x14000708a
    cmp dword ptr [r14 + 0x14], 8  ; 0x14000708f
    jne 0x140007145  ; 0x140007094
    cmp qword ptr [rsi], rdi  ; 0x14000709a
    je 0x140007145  ; 0x14000709d
    mov rcx, qword ptr [rsi]  ; 0x1400070a3
    lea rdx, [r14 + 8]  ; 0x1400070a6
    call 0x140006958  ; 0x1400070aa
    mov qword ptr [rsi], rax  ; 0x1400070af
    jmp 0x140007145  ; 0x1400070b2
    cmp dword ptr [r14 + 0x18], edi  ; 0x1400070b7
    je 0x1400070cc  ; 0x1400070bb
    movsxd rbx, dword ptr [r14 + 0x18]  ; 0x1400070bd
    call 0x1400064a4  ; 0x1400070c1
    lea rcx, [rbx + rax]  ; 0x1400070c6
    jmp 0x1400070d1  ; 0x1400070ca
    mov rcx, rdi  ; 0x1400070cc
    mov ebx, edi  ; 0x1400070cf
    test rcx, rcx  ; 0x1400070d1
    jne 0x14000710a  ; 0x1400070d4
    cmp qword ptr [r13 + 0x28], rdi  ; 0x1400070d6
    je 0x140007174  ; 0x1400070da
    test rsi, rsi  ; 0x1400070e0
    je 0x140007174  ; 0x1400070e3
    movsxd rbx, dword ptr [r14 + 0x14]  ; 0x1400070e9
    lea rdx, [r14 + 8]  ; 0x1400070ed
    mov rcx, qword ptr [r13 + 0x28]  ; 0x1400070f1
    call 0x140006958  ; 0x1400070f5
    mov rdx, rax  ; 0x1400070fa
    mov r8, rbx  ; 0x1400070fd
    mov rcx, rsi  ; 0x140007100
    call 0x14001c6e0  ; 0x140007103
    jmp 0x140007145  ; 0x140007108
    cmp qword ptr [r13 + 0x28], rdi  ; 0x14000710a
    je 0x140007179  ; 0x14000710e
    test rsi, rsi  ; 0x140007110
    je 0x140007179  ; 0x140007113
    test ebx, ebx  ; 0x140007115
    je 0x14000712a  ; 0x140007117
    call 0x1400064a4  ; 0x140007119
    mov rcx, rax  ; 0x14000711e
    movsxd rax, dword ptr [r14 + 0x18]  ; 0x140007121
    add rcx, rax  ; 0x140007125
    jmp 0x14000712d  ; 0x140007128
    mov rcx, rdi  ; 0x14000712a
    test rcx, rcx  ; 0x14000712d
    je 0x140007179  ; 0x140007130
    mov al, byte ptr [r14]  ; 0x140007132
    and al, 4  ; 0x140007135
    neg al  ; 0x140007137
    sbb ecx, ecx  ; 0x140007139
    neg ecx  ; 0x14000713b
    inc ecx  ; 0x14000713d
    mov edi, ecx  ; 0x14000713f
    mov dword ptr [rsp + 0x20], ecx  ; 0x140007141
    mov eax, edi  ; 0x140007145
    jmp 0x14000714b  ; 0x140007147
    xor eax, eax  ; 0x140007149
    mov rbx, qword ptr [rsp + 0x50]  ; 0x14000714b
    mov rsi, qword ptr [rsp + 0x58]  ; 0x140007150
    mov rdi, qword ptr [rsp + 0x60]  ; 0x140007155
    add rsp, 0x30  ; 0x14000715a
    pop r15  ; 0x14000715e
    pop r14  ; 0x140007160
    pop r13  ; 0x140007162
    ret  ; 0x140007164
    call 0x140010040  ; 0x140007165
    call 0x140010040  ; 0x14000716a
    call 0x140010040  ; 0x14000716f
    call 0x140010040  ; 0x140007174
    call 0x140010040  ; 0x140007179
    nop  ; 0x14000717e
    call 0x140010040  ; 0x14000717f
    nop  ; 0x140007184
    int3   ; 0x140007185
    int3   ; 0x140007186
    int3   ; 0x140007187
    mov qword ptr [rsp + 8], rbx  ; 0x140007188
    mov qword ptr [rsp + 0x10], rsi  ; 0x14000718d
    mov qword ptr [rsp + 0x18], rdi  ; 0x140007192
    push r14  ; 0x140007197
    sub rsp, 0x20  ; 0x140007199
    mov rdi, r9  ; 0x14000719d
    mov r14, rcx  ; 0x1400071a0
    xor ebx, ebx  ; 0x1400071a3
    cmp dword ptr [r8], ebx  ; 0x1400071a5
    jge 0x1400071af  ; 0x1400071a8
    mov rsi, rdx  ; 0x1400071aa
    jmp 0x1400071b6  ; 0x1400071ad
    movsxd rsi, dword ptr [r8 + 8]  ; 0x1400071af
    add rsi, qword ptr [rdx]  ; 0x1400071b3
    call 0x140006d84  ; 0x1400071b6
    sub eax, 1  ; 0x1400071bb
    je 0x1400071fc  ; 0x1400071be
    cmp eax, 1  ; 0x1400071c0
    jne 0x14000722c  ; 0x1400071c3
    lea rdx, [rdi + 8]  ; 0x1400071c5
    mov rcx, qword ptr [r14 + 0x28]  ; 0x1400071c9
    call 0x140006958  ; 0x1400071cd
    mov r14, rax  ; 0x1400071d2
    cmp dword ptr [rdi + 0x18], ebx  ; 0x1400071d5
    je 0x1400071e6  ; 0x1400071d8
    call 0x1400064a4  ; 0x1400071da
    movsxd rbx, dword ptr [rdi + 0x18]  ; 0x1400071df
    add rbx, rax  ; 0x1400071e3
    mov r9d, 1  ; 0x1400071e6
    mov r8, r14  ; 0x1400071ec
    mov rdx, rbx  ; 0x1400071ef
    mov rcx, rsi  ; 0x1400071f2
    call 0x140009b2c  ; 0x1400071f5
    jmp 0x14000722c  ; 0x1400071fa
    lea rdx, [rdi + 8]  ; 0x1400071fc
    mov rcx, qword ptr [r14 + 0x28]  ; 0x140007200
    call 0x140006958  ; 0x140007204
    mov r14, rax  ; 0x140007209
    cmp dword ptr [rdi + 0x18], ebx  ; 0x14000720c
    je 0x14000721d  ; 0x14000720f
    call 0x1400064a4  ; 0x140007211
    movsxd rbx, dword ptr [rdi + 0x18]  ; 0x140007216
    add rbx, rax  ; 0x14000721a
    mov r8, r14  ; 0x14000721d
    mov rdx, rbx  ; 0x140007220
    mov rcx, rsi  ; 0x140007223
    call 0x140009b20  ; 0x140007226
    nop  ; 0x14000722b
    mov rbx, qword ptr [rsp + 0x30]  ; 0x14000722c
    mov rsi, qword ptr [rsp + 0x38]  ; 0x140007231
    mov rdi, qword ptr [rsp + 0x40]  ; 0x140007236
    add rsp, 0x20  ; 0x14000723b
    pop r14  ; 0x14000723f
    ret  ; 0x140007241
    call 0x140010040  ; 0x140007242
    nop  ; 0x140007247
    mov qword ptr [rsp + 8], rbx  ; 0x140007248
    mov qword ptr [rsp + 0x10], rsi  ; 0x14000724d
    mov qword ptr [rsp + 0x18], rdi  ; 0x140007252
    push r14  ; 0x140007257
    sub rsp, 0x20  ; 0x140007259
    mov rdi, r9  ; 0x14000725d
    mov r14, rcx  ; 0x140007260
    xor ebx, ebx  ; 0x140007263
    cmp dword ptr [r8 + 4], ebx  ; 0x140007265
    jge 0x140007270  ; 0x140007269
    mov rsi, rdx  ; 0x14000726b
    jmp 0x140007277  ; 0x14000726e
    mov esi, dword ptr [r8 + 0xc]  ; 0x140007270
    add rsi, qword ptr [rdx]  ; 0x140007274
    call 0x140006f84  ; 0x140007277
    sub eax, 1  ; 0x14000727c
    je 0x1400072bd  ; 0x14000727f
    cmp eax, 1  ; 0x140007281
    jne 0x1400072ed  ; 0x140007284
    lea rdx, [rdi + 8]  ; 0x140007286
    mov rcx, qword ptr [r14 + 0x28]  ; 0x14000728a
    call 0x140006958  ; 0x14000728e
    mov r14, rax  ; 0x140007293
    cmp dword ptr [rdi + 0x18], ebx  ; 0x140007296
    je 0x1400072a7  ; 0x140007299
    call 0x1400064a4  ; 0x14000729b
    movsxd rbx, dword ptr [rdi + 0x18]  ; 0x1400072a0
    add rbx, rax  ; 0x1400072a4
    mov r9d, 1  ; 0x1400072a7
    mov r8, r14  ; 0x1400072ad
    mov rdx, rbx  ; 0x1400072b0
    mov rcx, rsi  ; 0x1400072b3
    call 0x140009b2c  ; 0x1400072b6
    jmp 0x1400072ed  ; 0x1400072bb
    lea rdx, [rdi + 8]  ; 0x1400072bd
    mov rcx, qword ptr [r14 + 0x28]  ; 0x1400072c1
    call 0x140006958  ; 0x1400072c5
    mov r14, rax  ; 0x1400072ca
    cmp dword ptr [rdi + 0x18], ebx  ; 0x1400072cd
    je 0x1400072de  ; 0x1400072d0
    call 0x1400064a4  ; 0x1400072d2
    movsxd rbx, dword ptr [rdi + 0x18]  ; 0x1400072d7
    add rbx, rax  ; 0x1400072db
    mov r8, r14  ; 0x1400072de
    mov rdx, rbx  ; 0x1400072e1
    mov rcx, rsi  ; 0x1400072e4
    call 0x140009b20  ; 0x1400072e7
    nop  ; 0x1400072ec
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400072ed
    mov rsi, qword ptr [rsp + 0x38]  ; 0x1400072f2
    mov rdi, qword ptr [rsp + 0x40]  ; 0x1400072f7
    add rsp, 0x20  ; 0x1400072fc
    pop r14  ; 0x140007300
    ret  ; 0x140007302
    call 0x140010040  ; 0x140007303
    nop  ; 0x140007308
    int3   ; 0x140007309
    int3   ; 0x14000730a
    int3   ; 0x14000730b
    mov rax, rsp  ; 0x14000730c
    mov qword ptr [rax + 8], rbx  ; 0x14000730f
    mov qword ptr [rax + 0x18], r8  ; 0x140007313
; Function: func_140007317
func_140007317:
    push rbp  ; 0x140007317
    push rsi  ; 0x140007318
    push rdi  ; 0x140007319
    push r12  ; 0x14000731a
    push r13  ; 0x14000731c
    push r14  ; 0x14000731e
    push r15  ; 0x140007320
    sub rsp, 0x60  ; 0x140007322
    mov r13, qword ptr [rsp + 0xc0]  ; 0x140007326
    mov r15, r9  ; 0x14000732e
    mov r12, rdx  ; 0x140007331
    lea r9, [rax + 0x10]  ; 0x140007334
    mov rbp, rcx  ; 0x140007338
    mov r8, r13  ; 0x14000733b
    mov rdx, r15  ; 0x14000733e
    mov rcx, r12  ; 0x140007341
    call 0x140005c84  ; 0x140007344
    mov r9, qword ptr [rsp + 0xd0]  ; 0x140007349
    mov r14, rax  ; 0x140007351
    mov rsi, qword ptr [rsp + 0xc8]  ; 0x140007354
    test r9, r9  ; 0x14000735c
    je 0x14000736f  ; 0x14000735f
    mov r8, rsi  ; 0x140007361
    mov rdx, rax  ; 0x140007364
    mov rcx, rbp  ; 0x140007367
    call 0x140007188  ; 0x14000736a
    mov rcx, qword ptr [rsp + 0xd8]  ; 0x14000736f
    mov ebx, dword ptr [rcx + 8]  ; 0x140007377
    mov edi, dword ptr [rcx]  ; 0x14000737a
    call 0x140006490  ; 0x14000737c
    movsxd rcx, dword ptr [rsi + 0xc]  ; 0x140007381
    mov r9, r14  ; 0x140007385
    mov r8, qword ptr [rsp + 0xb0]  ; 0x140007388
    add rax, rcx  ; 0x140007390
    mov cl, byte ptr [rsp + 0xf8]  ; 0x140007393
    mov rdx, rbp  ; 0x14000739a
    mov byte ptr [rsp + 0x50], cl  ; 0x14000739d
    mov rcx, r12  ; 0x1400073a1
    mov qword ptr [rsp + 0x48], r15  ; 0x1400073a4
    mov qword ptr [rsp + 0x40], rsi  ; 0x1400073a9
    mov dword ptr [rsp + 0x38], ebx  ; 0x1400073ae
    mov dword ptr [rsp + 0x30], edi  ; 0x1400073b2
    mov qword ptr [rsp + 0x28], r13  ; 0x1400073b6
    mov qword ptr [rsp + 0x20], rax  ; 0x1400073bb
    call 0x140006018  ; 0x1400073c0
    mov rbx, qword ptr [rsp + 0xa0]  ; 0x1400073c5
    add rsp, 0x60  ; 0x1400073cd
    pop r15  ; 0x1400073d1
    pop r14  ; 0x1400073d3
    pop r13  ; 0x1400073d5
    pop r12  ; 0x1400073d7
    pop rdi  ; 0x1400073d9
    pop rsi  ; 0x1400073da
    pop rbp  ; 0x1400073db
    ret  ; 0x1400073dc
    int3   ; 0x1400073dd
    int3   ; 0x1400073de
    int3   ; 0x1400073df
    mov rax, rsp  ; 0x1400073e0
    mov qword ptr [rax + 8], rbx  ; 0x1400073e3
    mov qword ptr [rax + 0x18], r8  ; 0x1400073e7
; Function: func_1400073eb
func_1400073eb:
    push rbp  ; 0x1400073eb
    push rsi  ; 0x1400073ec
    push rdi  ; 0x1400073ed
    push r12  ; 0x1400073ee
    push r13  ; 0x1400073f0
    push r14  ; 0x1400073f2
    push r15  ; 0x1400073f4
    sub rsp, 0x60  ; 0x1400073f6
    mov r13, qword ptr [rsp + 0xc0]  ; 0x1400073fa
    mov r15, r9  ; 0x140007402
    mov r12, rdx  ; 0x140007405
    lea r9, [rax + 0x10]  ; 0x140007408
    mov rbp, rcx  ; 0x14000740c
    mov r8, r13  ; 0x14000740f
    mov rdx, r15  ; 0x140007412
    mov rcx, r12  ; 0x140007415
    call 0x140005d54  ; 0x140007418
    mov r9, qword ptr [rsp + 0xd0]  ; 0x14000741d
    mov r14, rax  ; 0x140007425
    mov rsi, qword ptr [rsp + 0xc8]  ; 0x140007428
    test r9, r9  ; 0x140007430
    je 0x140007443  ; 0x140007433
    mov r8, rsi  ; 0x140007435
    mov rdx, rax  ; 0x140007438
    mov rcx, rbp  ; 0x14000743b
    call 0x140007248  ; 0x14000743e
    mov rcx, qword ptr [rsp + 0xd8]  ; 0x140007443
    mov ebx, dword ptr [rcx + 8]  ; 0x14000744b
    mov edi, dword ptr [rcx]  ; 0x14000744e
    call 0x140006490  ; 0x140007450
    movsxd rcx, dword ptr [rsi + 0x10]  ; 0x140007455
    mov r9, r14  ; 0x140007459
    mov r8, qword ptr [rsp + 0xb0]  ; 0x14000745c
    add rax, rcx  ; 0x140007464
    mov cl, byte ptr [rsp + 0xf8]  ; 0x140007467
    mov rdx, rbp  ; 0x14000746e
    mov byte ptr [rsp + 0x50], cl  ; 0x140007471
    mov rcx, r12  ; 0x140007475
    mov qword ptr [rsp + 0x48], r15  ; 0x140007478
    mov qword ptr [rsp + 0x40], rsi  ; 0x14000747d
    mov dword ptr [rsp + 0x38], ebx  ; 0x140007482
    mov dword ptr [rsp + 0x30], edi  ; 0x140007486
    mov qword ptr [rsp + 0x28], r13  ; 0x14000748a
    mov qword ptr [rsp + 0x20], rax  ; 0x14000748f
    call 0x14000611c  ; 0x140007494
    mov rbx, qword ptr [rsp + 0xa0]  ; 0x140007499
    add rsp, 0x60  ; 0x1400074a1
    pop r15  ; 0x1400074a5
    pop r14  ; 0x1400074a7
    pop r13  ; 0x1400074a9
    pop r12  ; 0x1400074ab
    pop rdi  ; 0x1400074ad
    pop rsi  ; 0x1400074ae
    pop rbp  ; 0x1400074af
    ret  ; 0x1400074b0
    int3   ; 0x1400074b1
    int3   ; 0x1400074b2
    int3   ; 0x1400074b3
; Function: func_1400074b4
func_1400074b4:
    push rbp  ; 0x1400074b4
    push rbx  ; 0x1400074b6
    push rsi  ; 0x1400074b7
    push rdi  ; 0x1400074b8
    push r12  ; 0x1400074b9
    push r13  ; 0x1400074bb
    push r14  ; 0x1400074bd
    push r15  ; 0x1400074bf
    lea rbp, [rsp - 0x28]  ; 0x1400074c1
    sub rsp, 0x128  ; 0x1400074c6
    mov rax, qword ptr [rip + 0x22b2c]  ; 0x1400074cd
    xor rax, rsp  ; 0x1400074d4
    mov qword ptr [rbp + 0x10], rax  ; 0x1400074d7
    mov rdi, qword ptr [rbp + 0x90]  ; 0x1400074db
    mov r12, rdx  ; 0x1400074e2
    mov r13, qword ptr [rbp + 0xa8]  ; 0x1400074e5
    mov r15, r8  ; 0x1400074ec
    mov qword ptr [rsp + 0x68], r8  ; 0x1400074ef
    mov rbx, rcx  ; 0x1400074f4
    mov qword ptr [rbp - 0x80], rdx  ; 0x1400074f7
    mov r8, rdi  ; 0x1400074fb
    mov rcx, r12  ; 0x1400074fe
    mov qword ptr [rbp - 0x68], r13  ; 0x140007501
    mov rdx, r9  ; 0x140007505
    mov byte ptr [rsp + 0x60], 0  ; 0x140007508
    mov rsi, r9  ; 0x14000750d
    call 0x140009874  ; 0x140007510
    mov r14d, eax  ; 0x140007515
    cmp eax, -1  ; 0x140007518
    jl 0x14000797c  ; 0x14000751b
    cmp eax, dword ptr [rdi + 4]  ; 0x140007521
    jge 0x14000797c  ; 0x140007524
    cmp dword ptr [rbx], 0xe06d7363  ; 0x14000752a
    jne 0x1400075ff  ; 0x140007530
    cmp dword ptr [rbx + 0x18], 4  ; 0x140007536
    jne 0x1400075ff  ; 0x14000753a
    mov eax, dword ptr [rbx + 0x20]  ; 0x140007540
    sub eax, 0x19930520  ; 0x140007543
    cmp eax, 2  ; 0x140007548
    ja 0x1400075ff  ; 0x14000754b
    cmp qword ptr [rbx + 0x30], 0  ; 0x140007551
    jne 0x1400075ff  ; 0x140007556
    call 0x140006a38  ; 0x14000755c
    cmp qword ptr [rax + 0x20], 0  ; 0x140007561
    je 0x140007915  ; 0x140007566
    call 0x140006a38  ; 0x14000756c
    mov rbx, qword ptr [rax + 0x20]  ; 0x140007571
    call 0x140006a38  ; 0x140007575
    mov rcx, qword ptr [rbx + 0x38]  ; 0x14000757a
    mov byte ptr [rsp + 0x60], 1  ; 0x14000757e
    mov r15, qword ptr [rax + 0x28]  ; 0x140007583
    mov qword ptr [rsp + 0x68], r15  ; 0x140007587
    call 0x1400064d0  ; 0x14000758c
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140007591
    jne 0x1400075b7  ; 0x140007597
    cmp dword ptr [rbx + 0x18], 4  ; 0x140007599
    jne 0x1400075b7  ; 0x14000759d
    mov eax, dword ptr [rbx + 0x20]  ; 0x14000759f
    sub eax, 0x19930520  ; 0x1400075a2
    cmp eax, 2  ; 0x1400075a7
    ja 0x1400075b7  ; 0x1400075aa
    cmp qword ptr [rbx + 0x30], 0  ; 0x1400075ac
    je 0x14000797c  ; 0x1400075b1
    call 0x140006a38  ; 0x1400075b7
    cmp qword ptr [rax + 0x38], 0  ; 0x1400075bc
    je 0x1400075ff  ; 0x1400075c1
    call 0x140006a38  ; 0x1400075c3
    mov r15, qword ptr [rax + 0x38]  ; 0x1400075c8
    call 0x140006a38  ; 0x1400075cc
    mov rdx, r15  ; 0x1400075d1
    mov rcx, rbx  ; 0x1400075d4
    and qword ptr [rax + 0x38], 0  ; 0x1400075d7
    call 0x14000990c  ; 0x1400075dc
    test al, al  ; 0x1400075e1
    jne 0x1400075fa  ; 0x1400075e3
    mov rcx, r15  ; 0x1400075e5
    call 0x1400099fc  ; 0x1400075e8
    test al, al  ; 0x1400075ed
    je 0x140007959  ; 0x1400075ef
    jmp 0x140007935  ; 0x1400075f5
    mov r15, qword ptr [rsp + 0x68]  ; 0x1400075fa
    mov rax, qword ptr [rsi + 8]  ; 0x1400075ff
    mov qword ptr [rbp - 0x40], rax  ; 0x140007603
    mov qword ptr [rbp - 0x48], rdi  ; 0x140007607
    cmp dword ptr [rbx], 0xe06d7363  ; 0x14000760b
    jne 0x1400078cc  ; 0x140007611
    cmp dword ptr [rbx + 0x18], 4  ; 0x140007617
    jne 0x1400078cc  ; 0x14000761b
    mov eax, dword ptr [rbx + 0x20]  ; 0x140007621
    sub eax, 0x19930520  ; 0x140007624
    cmp eax, 2  ; 0x140007629
    ja 0x1400078cc  ; 0x14000762c
    xor r15d, r15d  ; 0x140007632
    cmp dword ptr [rdi + 0xc], r15d  ; 0x140007635
    jbe 0x1400077fd  ; 0x140007639
    mov eax, dword ptr [rbp + 0xa0]  ; 0x14000763f
    lea rdx, [rbp - 0x48]  ; 0x140007645
    mov dword ptr [rsp + 0x28], eax  ; 0x140007649
    lea rcx, [rbp - 0x28]  ; 0x14000764d
    mov r9, rsi  ; 0x140007651
    mov qword ptr [rsp + 0x20], rdi  ; 0x140007654
    mov r8d, r14d  ; 0x140007659
    call 0x140005d78  ; 0x14000765c
    movups xmm1, xmmword ptr [rbp - 0x28]  ; 0x140007661
    movdqa xmm0, xmm1  ; 0x140007665
    psrldq xmm0, 8  ; 0x140007669
    movd eax, xmm0  ; 0x14000766e
    movdqu xmmword ptr [rbp - 0x38], xmm1  ; 0x140007672
    cmp eax, dword ptr [rbp - 0x10]  ; 0x140007677
    jae 0x1400077fd  ; 0x14000767a
    mov r12d, dword ptr [rbp - 0x30]  ; 0x140007680
    movq r9, xmm1  ; 0x140007684
    mov qword ptr [rsp + 0x78], r9  ; 0x140007689
    mov rax, qword ptr [rbp - 0x38]  ; 0x14000768e
    mov rax, qword ptr [rax]  ; 0x140007692
    movsxd rdx, dword ptr [rax + 0x10]  ; 0x140007695
    mov eax, r12d  ; 0x140007699
    lea rcx, [rax + rax*4]  ; 0x14000769c
    mov rax, qword ptr [r9 + 8]  ; 0x1400076a0
    lea r8, [rdx + rcx*4]  ; 0x1400076a4
    movups xmm0, xmmword ptr [r8 + rax]  ; 0x1400076a8
    movsxd rcx, dword ptr [r8 + rax + 0x10]  ; 0x1400076ad
    mov dword ptr [rbp - 0x50], ecx  ; 0x1400076b2
    movd eax, xmm0  ; 0x1400076b5
    movups xmmword ptr [rbp - 0x60], xmm0  ; 0x1400076b9
    cmp eax, r14d  ; 0x1400076bd
    jg 0x1400077ec  ; 0x1400076c0
    movq rax, xmm0  ; 0x1400076c6
    shr rax, 0x20  ; 0x1400076cb
    cmp r14d, eax  ; 0x1400076cf
    jg 0x1400077ec  ; 0x1400076d2
    add rcx, qword ptr [rsi + 8]  ; 0x1400076d8
    psrldq xmm0, 8  ; 0x1400076dc
    movq r13, xmm0  ; 0x1400076e1
    mov qword ptr [rbp - 0x70], rcx  ; 0x1400076e6
    shr r13, 0x20  ; 0x1400076ea
    test r13d, r13d  ; 0x1400076ee
    je 0x1400077e9  ; 0x1400076f1
    mov eax, r15d  ; 0x1400076f7
    lea rax, [rax + rax*4]  ; 0x1400076fa
    movups xmm0, xmmword ptr [rcx + rax*4]  ; 0x1400076fe
    movups xmmword ptr [rbp - 8], xmm0  ; 0x140007702
    mov eax, dword ptr [rcx + rax*4 + 0x10]  ; 0x140007706
    mov dword ptr [rbp + 8], eax  ; 0x14000770a
    call 0x1400064a4  ; 0x14000770d
    mov rcx, qword ptr [rbx + 0x30]  ; 0x140007712
    add rax, 4  ; 0x140007716
    movsxd rdx, dword ptr [rcx + 0xc]  ; 0x14000771a
    add rax, rdx  ; 0x14000771e
    mov qword ptr [rsp + 0x70], rax  ; 0x140007721
    call 0x1400064a4  ; 0x140007726
    mov rcx, qword ptr [rbx + 0x30]  ; 0x14000772b
    movsxd rdx, dword ptr [rcx + 0xc]  ; 0x14000772f
    mov ecx, dword ptr [rax + rdx]  ; 0x140007733
    mov dword ptr [rsp + 0x64], ecx  ; 0x140007736
    test ecx, ecx  ; 0x14000773a
    jle 0x14000777a  ; 0x14000773c
    call 0x1400064a4  ; 0x14000773e
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140007743
    mov r8, qword ptr [rbx + 0x30]  ; 0x140007748
    movsxd rcx, dword ptr [rcx]  ; 0x14000774c
    add rax, rcx  ; 0x14000774f
    lea rcx, [rbp - 8]  ; 0x140007752
    mov rdx, rax  ; 0x140007756
    mov qword ptr [rbp - 0x78], rax  ; 0x140007759
    call 0x1400083ec  ; 0x14000775d
    test eax, eax  ; 0x140007762
    jne 0x14000778b  ; 0x140007764
    mov eax, dword ptr [rsp + 0x64]  ; 0x140007766
    add qword ptr [rsp + 0x70], 4  ; 0x14000776a
    dec eax  ; 0x140007770
    mov dword ptr [rsp + 0x64], eax  ; 0x140007772
    test eax, eax  ; 0x140007776
    jg 0x14000773e  ; 0x140007778
    inc r15d  ; 0x14000777a
    cmp r15d, r13d  ; 0x14000777d
    je 0x1400077e4  ; 0x140007780
    mov rcx, qword ptr [rbp - 0x70]  ; 0x140007782
    jmp 0x1400076f7  ; 0x140007786
    mov al, byte ptr [rbp + 0x98]  ; 0x14000778b
    mov r9, rsi  ; 0x140007791
    mov r8, qword ptr [rsp + 0x68]  ; 0x140007794
    mov rcx, rbx  ; 0x140007799
    mov rdx, qword ptr [rbp - 0x80]  ; 0x14000779c
    mov byte ptr [rsp + 0x58], al  ; 0x1400077a0
    mov al, byte ptr [rsp + 0x60]  ; 0x1400077a4
    mov byte ptr [rsp + 0x50], al  ; 0x1400077a8
    mov rax, qword ptr [rbp - 0x68]  ; 0x1400077ac
    mov qword ptr [rsp + 0x48], rax  ; 0x1400077b0
    mov eax, dword ptr [rbp + 0xa0]  ; 0x1400077b5
    mov dword ptr [rsp + 0x40], eax  ; 0x1400077bb
    lea rax, [rbp - 0x60]  ; 0x1400077bf
    mov qword ptr [rsp + 0x38], rax  ; 0x1400077c3
    mov rax, qword ptr [rbp - 0x78]  ; 0x1400077c8
    mov qword ptr [rsp + 0x30], rax  ; 0x1400077cc
    lea rax, [rbp - 8]  ; 0x1400077d1
    mov qword ptr [rsp + 0x28], rax  ; 0x1400077d5
    mov qword ptr [rsp + 0x20], rdi  ; 0x1400077da
    call 0x14000730c  ; 0x1400077df
    mov r9, qword ptr [rsp + 0x78]  ; 0x1400077e4
    xor r15d, r15d  ; 0x1400077e9
    inc r12d  ; 0x1400077ec
    cmp r12d, dword ptr [rbp - 0x10]  ; 0x1400077ef
    jb 0x14000768e  ; 0x1400077f3
    mov r12, qword ptr [rbp - 0x80]  ; 0x1400077f9
    mov eax, dword ptr [rdi]  ; 0x1400077fd
    and eax, 0x1fffffff  ; 0x1400077ff
    cmp eax, 0x19930521  ; 0x140007804
    jb 0x140007909  ; 0x140007809
    cmp dword ptr [rdi + 0x20], r15d  ; 0x14000780f
    je 0x140007823  ; 0x140007813
    call 0x140006490  ; 0x140007815
    movsxd rcx, dword ptr [rdi + 0x20]  ; 0x14000781a
    add rax, rcx  ; 0x14000781e
    jne 0x140007844  ; 0x140007821
    mov eax, dword ptr [rdi + 0x24]  ; 0x140007823
    shr eax, 2  ; 0x140007826
    test al, 1  ; 0x140007829
    je 0x140007909  ; 0x14000782b
    mov rdx, rdi  ; 0x140007831
    mov rcx, rsi  ; 0x140007834
    call 0x140005bb8  ; 0x140007837
    test al, al  ; 0x14000783c
    jne 0x140007909  ; 0x14000783e
    mov eax, dword ptr [rdi + 0x24]  ; 0x140007844
    shr eax, 2  ; 0x140007847
    test al, 1  ; 0x14000784a
    jne 0x14000795f  ; 0x14000784c
    cmp dword ptr [rdi + 0x20], r15d  ; 0x140007852
    je 0x140007869  ; 0x140007856
    call 0x140006490  ; 0x140007858
    mov rdx, rax  ; 0x14000785d
    movsxd rax, dword ptr [rdi + 0x20]  ; 0x140007860
    add rdx, rax  ; 0x140007864
    jmp 0x14000786c  ; 0x140007867
    mov rdx, r15  ; 0x140007869
    mov rcx, rbx  ; 0x14000786c
    call 0x14000990c  ; 0x14000786f
    test al, al  ; 0x140007874
    jne 0x140007909  ; 0x140007876
    lea r9, [rbp - 0x78]  ; 0x14000787c
    mov r8, rdi  ; 0x140007880
    mov rdx, rsi  ; 0x140007883
    mov rcx, r12  ; 0x140007886
    call 0x140005c84  ; 0x140007889
    mov cl, byte ptr [rbp + 0x98]  ; 0x14000788e
    mov r9, rax  ; 0x140007894
    mov r8, qword ptr [rsp + 0x68]  ; 0x140007897
    mov rdx, rbx  ; 0x14000789c
    mov byte ptr [rsp + 0x50], cl  ; 0x14000789f
    or ecx, 0xffffffff  ; 0x1400078a3
    mov qword ptr [rsp + 0x48], rsi  ; 0x1400078a6
    mov qword ptr [rsp + 0x40], r15  ; 0x1400078ab
    mov dword ptr [rsp + 0x38], ecx  ; 0x1400078b0
    mov dword ptr [rsp + 0x30], ecx  ; 0x1400078b4
    mov rcx, r12  ; 0x1400078b8
    mov qword ptr [rsp + 0x28], rdi  ; 0x1400078bb
    mov qword ptr [rsp + 0x20], r15  ; 0x1400078c0
    call 0x140006018  ; 0x1400078c5
    jmp 0x140007909  ; 0x1400078ca
    cmp dword ptr [rdi + 0xc], 0  ; 0x1400078cc
    jbe 0x140007909  ; 0x1400078d0
    cmp byte ptr [rbp + 0x98], 0  ; 0x1400078d2
    jne 0x14000797c  ; 0x1400078d9
    mov eax, dword ptr [rbp + 0xa0]  ; 0x1400078df
    mov r9, rsi  ; 0x1400078e5
    mov qword ptr [rsp + 0x38], r13  ; 0x1400078e8
    mov r8, r15  ; 0x1400078ed
    mov dword ptr [rsp + 0x30], eax  ; 0x1400078f0
    mov rdx, r12  ; 0x1400078f4
    mov dword ptr [rsp + 0x28], r14d  ; 0x1400078f7
    mov rcx, rbx  ; 0x1400078fc
    mov qword ptr [rsp + 0x20], rdi  ; 0x1400078ff
    call 0x140007e88  ; 0x140007904
    call 0x140006a38  ; 0x140007909
    cmp qword ptr [rax + 0x38], 0  ; 0x14000790e
    jne 0x14000797c  ; 0x140007913
    mov rcx, qword ptr [rbp + 0x10]  ; 0x140007915
    xor rcx, rsp  ; 0x140007919
    call 0x140004a50  ; 0x14000791c
    add rsp, 0x128  ; 0x140007921
    pop r15  ; 0x140007928
    pop r14  ; 0x14000792a
    pop r13  ; 0x14000792c
    pop r12  ; 0x14000792e
    pop rdi  ; 0x140007930
    pop rsi  ; 0x140007931
    pop rbx  ; 0x140007932
    pop rbp  ; 0x140007933
    ret  ; 0x140007934
    mov dl, 1  ; 0x140007935
    mov rcx, rbx  ; 0x140007937
    call 0x1400068b4  ; 0x14000793a
; Function: func_14000793f
func_14000793f:
    lea rcx, [rbp - 0x60]  ; 0x14000793f
    call 0x140008d3c  ; 0x140007943
    lea rdx, [rip + 0x21591]  ; 0x140007948
    lea rcx, [rbp - 0x60]  ; 0x14000794f
    call 0x1400058d0  ; 0x140007953
    int3   ; 0x140007958
    call 0x14000ffb4  ; 0x140007959
    int3   ; 0x14000795e
    call 0x140006a38  ; 0x14000795f
    mov qword ptr [rax + 0x20], rbx  ; 0x140007964
    call 0x140006a38  ; 0x140007968
    mov rcx, qword ptr [rsp + 0x68]  ; 0x14000796d
    mov qword ptr [rax + 0x28], rcx  ; 0x140007972
    call 0x14000ffb4  ; 0x140007976
    int3   ; 0x14000797b
    call 0x140010040  ; 0x14000797c
    int3   ; 0x140007981
    int3   ; 0x140007982
    int3   ; 0x140007983
    push rbp  ; 0x140007984
    push rbx  ; 0x140007986
    push rsi  ; 0x140007987
    push rdi  ; 0x140007988
    push r12  ; 0x140007989
    push r13  ; 0x14000798b
    push r14  ; 0x14000798d
    push r15  ; 0x14000798f
    lea rbp, [rsp - 0x88]  ; 0x140007991
    sub rsp, 0x188  ; 0x140007999
    mov rax, qword ptr [rip + 0x22659]  ; 0x1400079a0
    xor rax, rsp  ; 0x1400079a7
    mov qword ptr [rbp + 0x70], rax  ; 0x1400079aa
    mov r14, qword ptr [rbp + 0xf0]  ; 0x1400079ae
    mov r15, rdx  ; 0x1400079b5
    mov r12, qword ptr [rbp + 0x108]  ; 0x1400079b8
    mov rbx, rcx  ; 0x1400079bf
    mov qword ptr [rsp + 0x78], rdx  ; 0x1400079c2
    mov rcx, r14  ; 0x1400079c7
    mov rdx, r9  ; 0x1400079ca
    mov qword ptr [rbp - 0x60], r12  ; 0x1400079cd
    mov rsi, r9  ; 0x1400079d1
    mov byte ptr [rsp + 0x60], 0  ; 0x1400079d4
    mov r13, r8  ; 0x1400079d9
    call 0x140006c24  ; 0x1400079dc
    cmp dword ptr [rsi + 0x48], 0  ; 0x1400079e1
    mov edi, eax  ; 0x1400079e5
    je 0x140007a00  ; 0x1400079e7
    call 0x140006a38  ; 0x1400079e9
    cmp dword ptr [rax + 0x78], -2  ; 0x1400079ee
    jne 0x140007e7f  ; 0x1400079f2
    mov edi, dword ptr [rsi + 0x48]  ; 0x1400079f8
    sub edi, 2  ; 0x1400079fb
    jmp 0x140007a1f  ; 0x1400079fe
    call 0x140006a38  ; 0x140007a00
    cmp dword ptr [rax + 0x78], -2  ; 0x140007a05
    je 0x140007a1f  ; 0x140007a09
    call 0x140006a38  ; 0x140007a0b
    mov edi, dword ptr [rax + 0x78]  ; 0x140007a10
    call 0x140006a38  ; 0x140007a13
    mov dword ptr [rax + 0x78], 0xfffffffe  ; 0x140007a18
    cmp edi, -1  ; 0x140007a1f
    jl 0x140007e7f  ; 0x140007a22
    cmp dword ptr [r14 + 8], 0  ; 0x140007a28
    lea r8, [rip - 0x7a34]  ; 0x140007a2d
    je 0x140007a5f  ; 0x140007a34
    movsxd rdx, dword ptr [r14 + 8]  ; 0x140007a36
    add rdx, qword ptr [rsi + 8]  ; 0x140007a3a
    movzx ecx, byte ptr [rdx]  ; 0x140007a3e
    and ecx, 0xf  ; 0x140007a41
    movsx rax, byte ptr [rcx + r8 + 0x1e610]  ; 0x140007a44
    mov cl, byte ptr [rcx + r8 + 0x1e620]  ; 0x140007a4d
    sub rdx, rax  ; 0x140007a55
    mov eax, dword ptr [rdx - 4]  ; 0x140007a58
    shr eax, cl  ; 0x140007a5b
    jmp 0x140007a61  ; 0x140007a5d
    xor eax, eax  ; 0x140007a5f
    cmp edi, eax  ; 0x140007a61
    jge 0x140007e7f  ; 0x140007a63
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140007a69
    jne 0x140007b39  ; 0x140007a6f
    cmp dword ptr [rbx + 0x18], 4  ; 0x140007a75
    jne 0x140007b39  ; 0x140007a79
    mov eax, dword ptr [rbx + 0x20]  ; 0x140007a7f
    sub eax, 0x19930520  ; 0x140007a82
    cmp eax, 2  ; 0x140007a87
    ja 0x140007b39  ; 0x140007a8a
    cmp qword ptr [rbx + 0x30], 0  ; 0x140007a90
    jne 0x140007b39  ; 0x140007a95
    call 0x140006a38  ; 0x140007a9b
    cmp qword ptr [rax + 0x20], 0  ; 0x140007aa0
    je 0x140007e1d  ; 0x140007aa5
    call 0x140006a38  ; 0x140007aab
    mov rbx, qword ptr [rax + 0x20]  ; 0x140007ab0
    call 0x140006a38  ; 0x140007ab4
    mov rcx, qword ptr [rbx + 0x38]  ; 0x140007ab9
    mov byte ptr [rsp + 0x60], 1  ; 0x140007abd
    mov r13, qword ptr [rax + 0x28]  ; 0x140007ac2
    call 0x1400064d0  ; 0x140007ac6
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140007acb
    jne 0x140007af1  ; 0x140007ad1
    cmp dword ptr [rbx + 0x18], 4  ; 0x140007ad3
    jne 0x140007af1  ; 0x140007ad7
    mov eax, dword ptr [rbx + 0x20]  ; 0x140007ad9
    sub eax, 0x19930520  ; 0x140007adc
    cmp eax, 2  ; 0x140007ae1
    ja 0x140007af1  ; 0x140007ae4
    cmp qword ptr [rbx + 0x30], 0  ; 0x140007ae6
    je 0x140007e7f  ; 0x140007aeb
    call 0x140006a38  ; 0x140007af1
    cmp qword ptr [rax + 0x38], 0  ; 0x140007af6
    je 0x140007b39  ; 0x140007afb
    call 0x140006a38  ; 0x140007afd
    mov r15, qword ptr [rax + 0x38]  ; 0x140007b02
    call 0x140006a38  ; 0x140007b06
    mov rdx, r15  ; 0x140007b0b
    mov rcx, rbx  ; 0x140007b0e
    and qword ptr [rax + 0x38], 0  ; 0x140007b11
    call 0x14000990c  ; 0x140007b16
    test al, al  ; 0x140007b1b
    jne 0x140007b34  ; 0x140007b1d
    mov rcx, r15  ; 0x140007b1f
    call 0x1400099fc  ; 0x140007b22
    test al, al  ; 0x140007b27
    je 0x140007e61  ; 0x140007b29
    jmp 0x140007e3d  ; 0x140007b2f
    mov r15, qword ptr [rsp + 0x78]  ; 0x140007b34
    mov r8, qword ptr [rsi + 8]  ; 0x140007b39
    lea rcx, [rbp - 0x10]  ; 0x140007b3d
    mov rdx, r14  ; 0x140007b41
    call 0x140008c1c  ; 0x140007b44
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140007b49
    jne 0x140007dd5  ; 0x140007b4f
    cmp dword ptr [rbx + 0x18], 4  ; 0x140007b55
    jne 0x140007dd5  ; 0x140007b59
    mov eax, dword ptr [rbx + 0x20]  ; 0x140007b5f
    sub eax, 0x19930520  ; 0x140007b62
    cmp eax, 2  ; 0x140007b67
    ja 0x140007dd5  ; 0x140007b6a
    cmp dword ptr [rbp - 0x10], 0  ; 0x140007b70
    jbe 0x140007dba  ; 0x140007b74
    mov eax, dword ptr [rbp + 0x100]  ; 0x140007b7a
    lea rdx, [rbp - 0x10]  ; 0x140007b80
    mov dword ptr [rsp + 0x28], eax  ; 0x140007b84
    lea rcx, [rbp - 0x58]  ; 0x140007b88
    mov r9, rsi  ; 0x140007b8c
    mov qword ptr [rsp + 0x20], r14  ; 0x140007b8f
    mov r8d, edi  ; 0x140007b94
    call 0x140005eac  ; 0x140007b97
    movups xmm1, xmmword ptr [rbp - 0x58]  ; 0x140007b9c
    movdqa xmm0, xmm1  ; 0x140007ba0
    psrldq xmm0, 8  ; 0x140007ba4
    movd eax, xmm0  ; 0x140007ba9
    movdqu xmmword ptr [rbp - 0x78], xmm1  ; 0x140007bad
    cmp eax, dword ptr [rbp - 0x40]  ; 0x140007bb2
    jae 0x140007dba  ; 0x140007bb5
    mov eax, dword ptr [rbp - 0x70]  ; 0x140007bbb
    movq r15, xmm1  ; 0x140007bbe
    mov qword ptr [rbp - 0x80], r15  ; 0x140007bc3
    mov dword ptr [rsp + 0x68], eax  ; 0x140007bc7
    movups xmm0, xmmword ptr [r15 + 0x18]  ; 0x140007bcb
    movq rax, xmm0  ; 0x140007bd0
    movups xmmword ptr [rbp - 0x78], xmm0  ; 0x140007bd5
    cmp eax, edi  ; 0x140007bd9
    jg 0x140007d15  ; 0x140007bdb
    shr rax, 0x20  ; 0x140007be1
    cmp edi, eax  ; 0x140007be5
    jg 0x140007d15  ; 0x140007be7
    mov r9, qword ptr [rsi + 0x10]  ; 0x140007bed
    lea rdx, [rbp - 0x78]  ; 0x140007bf1
    mov r8, qword ptr [rsi + 8]  ; 0x140007bf5
    lea rcx, [rbp + 0x20]  ; 0x140007bf9
    mov r9d, dword ptr [r9]  ; 0x140007bfd
    call 0x140008b98  ; 0x140007c00
    mov eax, dword ptr [rbp + 0x20]  ; 0x140007c05
    xor r12d, r12d  ; 0x140007c08
    mov dword ptr [rsp + 0x64], r12d  ; 0x140007c0b
    mov dword ptr [rsp + 0x6c], eax  ; 0x140007c10
    test eax, eax  ; 0x140007c14
    je 0x140007d15  ; 0x140007c16
    movups xmm0, xmmword ptr [rbp + 0x38]  ; 0x140007c1c
    movups xmm1, xmmword ptr [rbp + 0x48]  ; 0x140007c20
    movups xmmword ptr [rbp - 0x38], xmm0  ; 0x140007c24
    movsd xmm0, qword ptr [rbp + 0x58]  ; 0x140007c28
    movsd qword ptr [rbp - 0x18], xmm0  ; 0x140007c2d
    movups xmmword ptr [rbp - 0x28], xmm1  ; 0x140007c32
    call 0x1400064a4  ; 0x140007c36
    mov rcx, qword ptr [rbx + 0x30]  ; 0x140007c3b
    add rax, 4  ; 0x140007c3f
    movsxd rdx, dword ptr [rcx + 0xc]  ; 0x140007c43
    add rax, rdx  ; 0x140007c47
    mov qword ptr [rsp + 0x70], rax  ; 0x140007c4a
    call 0x1400064a4  ; 0x140007c4f
    mov rcx, qword ptr [rbx + 0x30]  ; 0x140007c54
    movsxd rdx, dword ptr [rcx + 0xc]  ; 0x140007c58
    mov r15d, dword ptr [rax + rdx]  ; 0x140007c5c
    test r15d, r15d  ; 0x140007c60
    jle 0x140007c9f  ; 0x140007c63
    call 0x1400064a4  ; 0x140007c65
    mov r8, qword ptr [rbx + 0x30]  ; 0x140007c6a
    mov r12, rax  ; 0x140007c6e
    mov rax, qword ptr [rsp + 0x70]  ; 0x140007c71
    movsxd rcx, dword ptr [rax]  ; 0x140007c76
    add r12, rcx  ; 0x140007c79
    lea rcx, [rbp - 0x38]  ; 0x140007c7c
    mov rdx, r12  ; 0x140007c80
    call 0x14000852c  ; 0x140007c83
    test eax, eax  ; 0x140007c88
    jne 0x140007cbd  ; 0x140007c8a
    add qword ptr [rsp + 0x70], 4  ; 0x140007c8c
    dec r15d  ; 0x140007c92
    test r15d, r15d  ; 0x140007c95
    jg 0x140007c65  ; 0x140007c98
    mov r12d, dword ptr [rsp + 0x64]  ; 0x140007c9a
    lea rcx, [rbp + 0x20]  ; 0x140007c9f
    call 0x140009198  ; 0x140007ca3
    inc r12d  ; 0x140007ca8
    mov dword ptr [rsp + 0x64], r12d  ; 0x140007cab
    cmp r12d, dword ptr [rsp + 0x6c]  ; 0x140007cb0
    jne 0x140007c1c  ; 0x140007cb5
    jmp 0x140007d11  ; 0x140007cbb
    mov al, byte ptr [rbp + 0xf8]  ; 0x140007cbd
    mov r9, rsi  ; 0x140007cc3
    mov rdx, qword ptr [rsp + 0x78]  ; 0x140007cc6
    mov r8, r13  ; 0x140007ccb
    mov byte ptr [rsp + 0x58], al  ; 0x140007cce
    mov rcx, rbx  ; 0x140007cd2
    mov al, byte ptr [rsp + 0x60]  ; 0x140007cd5
    mov byte ptr [rsp + 0x50], al  ; 0x140007cd9
    mov rax, qword ptr [rbp - 0x60]  ; 0x140007cdd
    mov qword ptr [rsp + 0x48], rax  ; 0x140007ce1
    mov eax, dword ptr [rbp + 0x100]  ; 0x140007ce6
    mov dword ptr [rsp + 0x40], eax  ; 0x140007cec
    lea rax, [rbp - 0x78]  ; 0x140007cf0
    mov qword ptr [rsp + 0x38], rax  ; 0x140007cf4
    lea rax, [rbp - 0x38]  ; 0x140007cf9
    mov qword ptr [rsp + 0x30], r12  ; 0x140007cfd
    mov qword ptr [rsp + 0x28], rax  ; 0x140007d02
    mov qword ptr [rsp + 0x20], r14  ; 0x140007d07
    call 0x1400073e0  ; 0x140007d0c
    mov r15, qword ptr [rbp - 0x80]  ; 0x140007d11
    mov r8, qword ptr [r15 + 8]  ; 0x140007d15
    lea rdx, [rip - 0x7d20]  ; 0x140007d19
    movzx ecx, byte ptr [r8]  ; 0x140007d20
    and ecx, 0xf  ; 0x140007d24
    movsx rax, byte ptr [rcx + rdx + 0x1e610]  ; 0x140007d27
    mov cl, byte ptr [rcx + rdx + 0x1e620]  ; 0x140007d30
    sub r8, rax  ; 0x140007d37
    mov eax, dword ptr [r8 - 4]  ; 0x140007d3a
    shr eax, cl  ; 0x140007d3e
    mov qword ptr [r15 + 8], r8  ; 0x140007d40
    mov dword ptr [r15 + 0x18], eax  ; 0x140007d44
    movzx ecx, byte ptr [r8]  ; 0x140007d48
    and ecx, 0xf  ; 0x140007d4c
    movsx rax, byte ptr [rcx + rdx + 0x1e610]  ; 0x140007d4f
    mov cl, byte ptr [rcx + rdx + 0x1e620]  ; 0x140007d58
    sub r8, rax  ; 0x140007d5f
    mov eax, dword ptr [r8 - 4]  ; 0x140007d62
    shr eax, cl  ; 0x140007d66
    mov qword ptr [r15 + 8], r8  ; 0x140007d68
    mov dword ptr [r15 + 0x1c], eax  ; 0x140007d6c
    movzx ecx, byte ptr [r8]  ; 0x140007d70
    and ecx, 0xf  ; 0x140007d74
    movsx rax, byte ptr [rcx + rdx + 0x1e610]  ; 0x140007d77
    mov cl, byte ptr [rcx + rdx + 0x1e620]  ; 0x140007d80
    sub r8, rax  ; 0x140007d87
    mov eax, dword ptr [r8 - 4]  ; 0x140007d8a
    shr eax, cl  ; 0x140007d8e
    mov ecx, dword ptr [rsp + 0x68]  ; 0x140007d90
    mov dword ptr [r15 + 0x20], eax  ; 0x140007d94
    inc ecx  ; 0x140007d98
    mov qword ptr [r15 + 8], r8  ; 0x140007d9a
    lea rax, [r8 + 4]  ; 0x140007d9e
    mov edx, dword ptr [r8]  ; 0x140007da2
    mov qword ptr [r15 + 8], rax  ; 0x140007da5
    mov dword ptr [r15 + 0x24], edx  ; 0x140007da9
    mov dword ptr [rsp + 0x68], ecx  ; 0x140007dad
    cmp ecx, dword ptr [rbp - 0x40]  ; 0x140007db1
    jb 0x140007bcb  ; 0x140007db4
    test byte ptr [r14], 0x40  ; 0x140007dba
    je 0x140007e11  ; 0x140007dbe
    mov rdx, r14  ; 0x140007dc0
    mov rcx, rsi  ; 0x140007dc3
    call 0x140005be4  ; 0x140007dc6
    test al, al  ; 0x140007dcb
    je 0x140007e67  ; 0x140007dcd
    jmp 0x140007e11  ; 0x140007dd3
    cmp dword ptr [rbp - 0x10], 0  ; 0x140007dd5
    jbe 0x140007e11  ; 0x140007dd9
    cmp byte ptr [rbp + 0xf8], 0  ; 0x140007ddb
    jne 0x140007e7f  ; 0x140007de2
    mov eax, dword ptr [rbp + 0x100]  ; 0x140007de8
    mov r9, rsi  ; 0x140007dee
    mov qword ptr [rsp + 0x38], r12  ; 0x140007df1
    mov r8, r13  ; 0x140007df6
    mov dword ptr [rsp + 0x30], eax  ; 0x140007df9
    mov rdx, r15  ; 0x140007dfd
    mov dword ptr [rsp + 0x28], edi  ; 0x140007e00
    mov rcx, rbx  ; 0x140007e04
    mov qword ptr [rsp + 0x20], r14  ; 0x140007e07
    call 0x1400080f8  ; 0x140007e0c
    call 0x140006a38  ; 0x140007e11
    cmp qword ptr [rax + 0x38], 0  ; 0x140007e16
    jne 0x140007e7f  ; 0x140007e1b
    mov rcx, qword ptr [rbp + 0x70]  ; 0x140007e1d
    xor rcx, rsp  ; 0x140007e21
    call 0x140004a50  ; 0x140007e24
    add rsp, 0x188  ; 0x140007e29
    pop r15  ; 0x140007e30
    pop r14  ; 0x140007e32
    pop r13  ; 0x140007e34
    pop r12  ; 0x140007e36
    pop rdi  ; 0x140007e38
    pop rsi  ; 0x140007e39
    pop rbx  ; 0x140007e3a
    pop rbp  ; 0x140007e3b
    ret  ; 0x140007e3c
    mov dl, 1  ; 0x140007e3d
    mov rcx, rbx  ; 0x140007e3f
    call 0x1400068b4  ; 0x140007e42
; Function: func_140007e47
func_140007e47:
    lea rcx, [rbp - 0x78]  ; 0x140007e47
    call 0x140008d3c  ; 0x140007e4b
    lea rdx, [rip + 0x21089]  ; 0x140007e50
    lea rcx, [rbp - 0x78]  ; 0x140007e57
    call 0x1400058d0  ; 0x140007e5b
    int3   ; 0x140007e60
    call 0x14000ffb4  ; 0x140007e61
    int3   ; 0x140007e66
    call 0x140006a38  ; 0x140007e67
    mov qword ptr [rax + 0x20], rbx  ; 0x140007e6c
    call 0x140006a38  ; 0x140007e70
    mov qword ptr [rax + 0x28], r13  ; 0x140007e75
    call 0x14000ffb4  ; 0x140007e79
    int3   ; 0x140007e7e
    call 0x140010040  ; 0x140007e7f
    int3   ; 0x140007e84
    int3   ; 0x140007e85
    int3   ; 0x140007e86
    int3   ; 0x140007e87
    mov qword ptr [rsp + 0x20], rbx  ; 0x140007e88
    mov qword ptr [rsp + 0x18], r8  ; 0x140007e8d
    mov qword ptr [rsp + 0x10], rdx  ; 0x140007e92
    push rbp  ; 0x140007e97
    push rsi  ; 0x140007e98
    push rdi  ; 0x140007e99
    push r12  ; 0x140007e9a
    push r13  ; 0x140007e9c
    push r14  ; 0x140007e9e
    push r15  ; 0x140007ea0
    sub rsp, 0xc0  ; 0x140007ea2
    cmp dword ptr [rcx], 0x80000003  ; 0x140007ea9
    mov rbp, r9  ; 0x140007eaf
    mov r12, r8  ; 0x140007eb2
    mov r14, rdx  ; 0x140007eb5
    mov rsi, rcx  ; 0x140007eb8
    je 0x1400080d4  ; 0x140007ebb
    call 0x140006a38  ; 0x140007ec1
    mov r13d, dword ptr [rsp + 0x130]  ; 0x140007ec6
    mov r15d, dword ptr [rsp + 0x128]  ; 0x140007ece
    mov rdi, qword ptr [rsp + 0x120]  ; 0x140007ed6
    cmp qword ptr [rax + 0x10], 0  ; 0x140007ede
    je 0x140007f40  ; 0x140007ee3
    xor ecx, ecx  ; 0x140007ee5
    call qword ptr [rip + 0x161cb]  ; 0x140007ee7
    mov rbx, rax  ; 0x140007eed
    call 0x140006a38  ; 0x140007ef0
    cmp qword ptr [rax + 0x10], rbx  ; 0x140007ef5
    je 0x140007f40  ; 0x140007ef9
    cmp dword ptr [rsi], 0xe0434f4d  ; 0x140007efb
    je 0x140007f40  ; 0x140007f01
    cmp dword ptr [rsi], 0xe0434352  ; 0x140007f03
    je 0x140007f40  ; 0x140007f09
    mov rax, qword ptr [rsp + 0x138]  ; 0x140007f0b
    mov r9, rbp  ; 0x140007f13
    mov dword ptr [rsp + 0x38], r15d  ; 0x140007f16
    mov r8, r12  ; 0x140007f1b
    mov qword ptr [rsp + 0x30], rax  ; 0x140007f1e
    mov rdx, r14  ; 0x140007f23
    mov dword ptr [rsp + 0x28], r13d  ; 0x140007f26
    mov rcx, rsi  ; 0x140007f2b
    mov qword ptr [rsp + 0x20], rdi  ; 0x140007f2e
    call 0x140005978  ; 0x140007f33
    test eax, eax  ; 0x140007f38
    jne 0x1400080d4  ; 0x140007f3a
    mov rax, qword ptr [rbp + 8]  ; 0x140007f40
    mov qword ptr [rsp + 0x68], rax  ; 0x140007f44
    mov qword ptr [rsp + 0x60], rdi  ; 0x140007f49
    cmp dword ptr [rdi + 0xc], 0  ; 0x140007f4e
    jbe 0x1400080ef  ; 0x140007f52
    mov dword ptr [rsp + 0x28], r13d  ; 0x140007f58
    lea rdx, [rsp + 0x60]  ; 0x140007f5d
    mov r9, rbp  ; 0x140007f62
    mov qword ptr [rsp + 0x20], rdi  ; 0x140007f65
    mov r8d, r15d  ; 0x140007f6a
    lea rcx, [rsp + 0x98]  ; 0x140007f6d
    call 0x140005d78  ; 0x140007f75
    movups xmm1, xmmword ptr [rsp + 0x98]  ; 0x140007f7a
    movdqa xmm0, xmm1  ; 0x140007f82
    psrldq xmm0, 8  ; 0x140007f86
    movd eax, xmm0  ; 0x140007f8b
    movdqu xmmword ptr [rsp + 0x70], xmm1  ; 0x140007f8f
    cmp eax, dword ptr [rsp + 0xb0]  ; 0x140007f95
    jae 0x1400080d4  ; 0x140007f9c
    mov r14d, dword ptr [rsp + 0x78]  ; 0x140007fa2
    movq r9, xmm1  ; 0x140007fa7
    mov qword ptr [rsp + 0x100], r9  ; 0x140007fac
    mov rax, qword ptr [rsp + 0x70]  ; 0x140007fb4
    mov rax, qword ptr [rax]  ; 0x140007fb9
    movsxd rdx, dword ptr [rax + 0x10]  ; 0x140007fbc
    mov eax, r14d  ; 0x140007fc0
    lea rcx, [rax + rax*4]  ; 0x140007fc3
    mov rax, qword ptr [r9 + 8]  ; 0x140007fc7
    lea r8, [rdx + rcx*4]  ; 0x140007fcb
    movups xmm0, xmmword ptr [r8 + rax]  ; 0x140007fcf
    movsxd rdx, dword ptr [r8 + rax + 0x10]  ; 0x140007fd4
    mov dword ptr [rsp + 0x90], edx  ; 0x140007fd9
    movd eax, xmm0  ; 0x140007fe0
    movups xmmword ptr [rsp + 0x80], xmm0  ; 0x140007fe4
    cmp eax, r15d  ; 0x140007fec
    jg 0x1400080b3  ; 0x140007fef
    movq rax, xmm0  ; 0x140007ff5
    shr rax, 0x20  ; 0x140007ffa
    cmp r15d, eax  ; 0x140007ffe
    jg 0x1400080b3  ; 0x140008001
    mov rbx, qword ptr [rbp + 8]  ; 0x140008007
    add rbx, -0x14  ; 0x14000800b
    psrldq xmm0, 8  ; 0x14000800f
    movq rax, xmm0  ; 0x140008014
    shr rax, 0x20  ; 0x140008019
    lea rcx, [rax + rax*4]  ; 0x14000801d
    lea rdx, [rdx + rcx*4]  ; 0x140008021
    add rbx, rdx  ; 0x140008025
    cmp dword ptr [rbx + 4], 0  ; 0x140008028
    je 0x14000805f  ; 0x14000802c
    movsxd r12, dword ptr [rbx + 4]  ; 0x14000802e
    call 0x140006490  ; 0x140008032
    add rax, r12  ; 0x140008037
    je 0x140008057  ; 0x14000803a
    test r12d, r12d  ; 0x14000803c
    je 0x14000804f  ; 0x14000803f
    call 0x140006490  ; 0x140008041
    movsxd rcx, dword ptr [rbx + 4]  ; 0x140008046
    add rax, rcx  ; 0x14000804a
    jmp 0x140008051  ; 0x14000804d
    xor eax, eax  ; 0x14000804f
    cmp byte ptr [rax + 0x10], 0  ; 0x140008051
    jne 0x1400080b3  ; 0x140008055
    mov r12, qword ptr [rsp + 0x110]  ; 0x140008057
    test byte ptr [rbx], 0x40  ; 0x14000805f
    jne 0x1400080b3  ; 0x140008062
    mov rax, qword ptr [rsp + 0x138]  ; 0x140008064
    mov r9, rbp  ; 0x14000806c
    mov rdx, qword ptr [rsp + 0x108]  ; 0x14000806f
    mov r8, r12  ; 0x140008077
    mov byte ptr [rsp + 0x58], 0  ; 0x14000807a
    mov rcx, rsi  ; 0x14000807f
    mov byte ptr [rsp + 0x50], 1  ; 0x140008082
    mov qword ptr [rsp + 0x48], rax  ; 0x140008087
    lea rax, [rsp + 0x80]  ; 0x14000808c
    mov dword ptr [rsp + 0x40], r13d  ; 0x140008094
    mov qword ptr [rsp + 0x38], rax  ; 0x140008099
    and qword ptr [rsp + 0x30], 0  ; 0x14000809e
    mov qword ptr [rsp + 0x28], rbx  ; 0x1400080a4
    mov qword ptr [rsp + 0x20], rdi  ; 0x1400080a9
    call 0x14000730c  ; 0x1400080ae
    mov r12, qword ptr [rsp + 0x110]  ; 0x1400080b3
    inc r14d  ; 0x1400080bb
    mov r9, qword ptr [rsp + 0x100]  ; 0x1400080be
    cmp r14d, dword ptr [rsp + 0xb0]  ; 0x1400080c6
    jb 0x140007fb4  ; 0x1400080ce
    mov rbx, qword ptr [rsp + 0x118]  ; 0x1400080d4
    add rsp, 0xc0  ; 0x1400080dc
    pop r15  ; 0x1400080e3
    pop r14  ; 0x1400080e5
    pop r13  ; 0x1400080e7
    pop r12  ; 0x1400080e9
    pop rdi  ; 0x1400080eb
    pop rsi  ; 0x1400080ec
    pop rbp  ; 0x1400080ed
    ret  ; 0x1400080ee
    call 0x140010040  ; 0x1400080ef
    int3   ; 0x1400080f4
    int3   ; 0x1400080f5
    int3   ; 0x1400080f6
    int3   ; 0x1400080f7
; Function: func_1400080f8
func_1400080f8:
    push rbp  ; 0x1400080f8
    push rbx  ; 0x1400080fa
    push rsi  ; 0x1400080fb
    push rdi  ; 0x1400080fc
    push r12  ; 0x1400080fd
    push r13  ; 0x1400080ff
    push r14  ; 0x140008101
    push r15  ; 0x140008103
    lea rbp, [rsp - 0x38]  ; 0x140008105
    sub rsp, 0x138  ; 0x14000810a
    mov rax, qword ptr [rip + 0x21ee8]  ; 0x140008111
    xor rax, rsp  ; 0x140008118
    mov qword ptr [rbp + 0x28], rax  ; 0x14000811b
    cmp dword ptr [rcx], 0x80000003  ; 0x14000811f
    mov rdi, r9  ; 0x140008125
    mov rax, qword ptr [rbp + 0xb8]  ; 0x140008128
    mov r13, rdx  ; 0x14000812f
    mov r14, qword ptr [rbp + 0xa0]  ; 0x140008132
    mov rsi, rcx  ; 0x140008139
    mov qword ptr [rsp + 0x70], rax  ; 0x14000813c
    mov qword ptr [rsp + 0x78], r8  ; 0x140008141
    je 0x1400083c6  ; 0x140008146
    call 0x140006a38  ; 0x14000814c
    mov r12d, dword ptr [rbp + 0xb0]  ; 0x140008151
    mov r15d, dword ptr [rbp + 0xa8]  ; 0x140008158
    cmp qword ptr [rax + 0x10], 0  ; 0x14000815f
    je 0x1400081c0  ; 0x140008164
    xor ecx, ecx  ; 0x140008166
    call qword ptr [rip + 0x15f4a]  ; 0x140008168
    mov rbx, rax  ; 0x14000816e
    call 0x140006a38  ; 0x140008171
    cmp qword ptr [rax + 0x10], rbx  ; 0x140008176
    je 0x1400081c0  ; 0x14000817a
    cmp dword ptr [rsi], 0xe0434f4d  ; 0x14000817c
    je 0x1400081c0  ; 0x140008182
    cmp dword ptr [rsi], 0xe0434352  ; 0x140008184
    je 0x1400081c0  ; 0x14000818a
    mov rax, qword ptr [rsp + 0x70]  ; 0x14000818c
    mov r9, rdi  ; 0x140008191
    mov r8, qword ptr [rsp + 0x78]  ; 0x140008194
    mov rdx, r13  ; 0x140008199
    mov dword ptr [rsp + 0x38], r15d  ; 0x14000819c
    mov rcx, rsi  ; 0x1400081a1
    mov qword ptr [rsp + 0x30], rax  ; 0x1400081a4
    mov dword ptr [rsp + 0x28], r12d  ; 0x1400081a9
    mov qword ptr [rsp + 0x20], r14  ; 0x1400081ae
    call 0x1400059cc  ; 0x1400081b3
    test eax, eax  ; 0x1400081b8
    jne 0x1400083c6  ; 0x1400081ba
    mov r8, qword ptr [rdi + 8]  ; 0x1400081c0
    lea rcx, [rbp]  ; 0x1400081c4
    mov rdx, r14  ; 0x1400081c8
    call 0x140008c1c  ; 0x1400081cb
    cmp dword ptr [rbp], 0  ; 0x1400081d0
    jbe 0x1400083e6  ; 0x1400081d4
    mov dword ptr [rsp + 0x28], r12d  ; 0x1400081da
    lea rdx, [rbp]  ; 0x1400081df
    mov r9, rdi  ; 0x1400081e3
    mov qword ptr [rsp + 0x20], r14  ; 0x1400081e6
    mov r8d, r15d  ; 0x1400081eb
    lea rcx, [rbp - 0x70]  ; 0x1400081ee
    call 0x140005eac  ; 0x1400081f2
    movups xmm1, xmmword ptr [rbp - 0x70]  ; 0x1400081f7
    movdqa xmm0, xmm1  ; 0x1400081fb
    psrldq xmm0, 8  ; 0x1400081ff
    movd eax, xmm0  ; 0x140008204
    movdqu xmmword ptr [rbp - 0x80], xmm1  ; 0x140008208
    cmp eax, dword ptr [rbp - 0x58]  ; 0x14000820d
    jae 0x1400083c6  ; 0x140008210
    mov eax, dword ptr [rbp - 0x78]  ; 0x140008216
    lea r9, [rip - 0x8220]  ; 0x140008219
    movq r8, xmm1  ; 0x140008220
    mov dword ptr [rsp + 0x60], eax  ; 0x140008225
    mov qword ptr [rsp + 0x68], r8  ; 0x140008229
    movups xmm0, xmmword ptr [r8 + 0x18]  ; 0x14000822e
    movq rax, xmm0  ; 0x140008233
    movups xmmword ptr [rbp - 0x80], xmm0  ; 0x140008238
    cmp eax, r15d  ; 0x14000823c
    jg 0x14000832c  ; 0x14000823f
    shr rax, 0x20  ; 0x140008245
    cmp r15d, eax  ; 0x140008249
    jg 0x14000832c  ; 0x14000824c
    mov r9, qword ptr [rdi + 0x10]  ; 0x140008252
    lea rdx, [rbp - 0x80]  ; 0x140008256
    mov r8, qword ptr [rdi + 8]  ; 0x14000825a
    lea rcx, [rbp - 0x50]  ; 0x14000825e
    mov r9d, dword ptr [r9]  ; 0x140008262
    call 0x140008b98  ; 0x140008265
    mov rax, qword ptr [rbp - 0x40]  ; 0x14000826a
    lea rcx, [rbp - 0x50]  ; 0x14000826e
    mov qword ptr [rbp - 0x48], rax  ; 0x140008272
    call 0x140009198  ; 0x140008276
    mov rax, qword ptr [rbp - 0x40]  ; 0x14000827b
    lea rcx, [rbp - 0x50]  ; 0x14000827f
    mov ebx, dword ptr [rbp - 0x50]  ; 0x140008283
    mov qword ptr [rbp - 0x48], rax  ; 0x140008286
    call 0x140009198  ; 0x14000828a
    sub ebx, 1  ; 0x14000828f
    je 0x1400082a3  ; 0x140008292
    lea rcx, [rbp - 0x50]  ; 0x140008294
    call 0x140009198  ; 0x140008298
    sub rbx, 1  ; 0x14000829d
    jne 0x140008294  ; 0x1400082a1
    cmp dword ptr [rbp - 0x30], 0  ; 0x1400082a3
    je 0x1400082d1  ; 0x1400082a7
    call 0x140006490  ; 0x1400082a9
    movsxd rdx, dword ptr [rbp - 0x30]  ; 0x1400082ae
    add rax, rdx  ; 0x1400082b2
    je 0x1400082d1  ; 0x1400082b5
    test edx, edx  ; 0x1400082b7
    je 0x1400082c9  ; 0x1400082b9
    call 0x140006490  ; 0x1400082bb
    movsxd rcx, dword ptr [rbp - 0x30]  ; 0x1400082c0
    add rax, rcx  ; 0x1400082c4
    jmp 0x1400082cb  ; 0x1400082c7
    xor eax, eax  ; 0x1400082c9
    cmp byte ptr [rax + 0x10], 0  ; 0x1400082cb
    jne 0x140008320  ; 0x1400082cf
    test byte ptr [rbp - 0x34], 0x40  ; 0x1400082d1
    jne 0x140008320  ; 0x1400082d5
    mov rax, qword ptr [rsp + 0x70]  ; 0x1400082d7
    mov r9, rdi  ; 0x1400082dc
    mov r8, qword ptr [rsp + 0x78]  ; 0x1400082df
    mov rdx, r13  ; 0x1400082e4
    mov byte ptr [rsp + 0x58], 0  ; 0x1400082e7
    mov rcx, rsi  ; 0x1400082ec
    mov byte ptr [rsp + 0x50], 1  ; 0x1400082ef
    mov qword ptr [rsp + 0x48], rax  ; 0x1400082f4
    lea rax, [rbp - 0x80]  ; 0x1400082f9
    mov dword ptr [rsp + 0x40], r12d  ; 0x1400082fd
    mov qword ptr [rsp + 0x38], rax  ; 0x140008302
    lea rax, [rbp - 0x38]  ; 0x140008307
    and qword ptr [rsp + 0x30], 0  ; 0x14000830b
    mov qword ptr [rsp + 0x28], rax  ; 0x140008311
    mov qword ptr [rsp + 0x20], r14  ; 0x140008316
    call 0x1400073e0  ; 0x14000831b
    mov r8, qword ptr [rsp + 0x68]  ; 0x140008320
    lea r9, [rip - 0x832c]  ; 0x140008325
    mov rdx, qword ptr [r8 + 8]  ; 0x14000832c
    movzx ecx, byte ptr [rdx]  ; 0x140008330
    and ecx, 0xf  ; 0x140008333
    movsx rax, byte ptr [rcx + r9 + 0x1e610]  ; 0x140008336
    mov cl, byte ptr [rcx + r9 + 0x1e620]  ; 0x14000833f
    sub rdx, rax  ; 0x140008347
    mov eax, dword ptr [rdx - 4]  ; 0x14000834a
    shr eax, cl  ; 0x14000834d
    mov qword ptr [r8 + 8], rdx  ; 0x14000834f
    mov dword ptr [r8 + 0x18], eax  ; 0x140008353
    movzx ecx, byte ptr [rdx]  ; 0x140008357
    and ecx, 0xf  ; 0x14000835a
    movsx rax, byte ptr [rcx + r9 + 0x1e610]  ; 0x14000835d
    mov cl, byte ptr [rcx + r9 + 0x1e620]  ; 0x140008366
    sub rdx, rax  ; 0x14000836e
    mov eax, dword ptr [rdx - 4]  ; 0x140008371
    shr eax, cl  ; 0x140008374
    mov qword ptr [r8 + 8], rdx  ; 0x140008376
    mov dword ptr [r8 + 0x1c], eax  ; 0x14000837a
    movzx ecx, byte ptr [rdx]  ; 0x14000837e
    and ecx, 0xf  ; 0x140008381
    movsx rax, byte ptr [rcx + r9 + 0x1e610]  ; 0x140008384
    mov cl, byte ptr [rcx + r9 + 0x1e620]  ; 0x14000838d
    sub rdx, rax  ; 0x140008395
    mov eax, dword ptr [rdx - 4]  ; 0x140008398
    shr eax, cl  ; 0x14000839b
    mov dword ptr [r8 + 0x20], eax  ; 0x14000839d
    lea rax, [rdx + 4]  ; 0x1400083a1
    mov qword ptr [r8 + 8], rdx  ; 0x1400083a5
    mov ecx, dword ptr [rdx]  ; 0x1400083a9
    mov dword ptr [r8 + 0x24], ecx  ; 0x1400083ab
    mov ecx, dword ptr [rsp + 0x60]  ; 0x1400083af
    inc ecx  ; 0x1400083b3
    mov qword ptr [r8 + 8], rax  ; 0x1400083b5
    mov dword ptr [rsp + 0x60], ecx  ; 0x1400083b9
    cmp ecx, dword ptr [rbp - 0x58]  ; 0x1400083bd
    jb 0x14000822e  ; 0x1400083c0
    mov rcx, qword ptr [rbp + 0x28]  ; 0x1400083c6
    xor rcx, rsp  ; 0x1400083ca
    call 0x140004a50  ; 0x1400083cd
    add rsp, 0x138  ; 0x1400083d2
    pop r15  ; 0x1400083d9
    pop r14  ; 0x1400083db
    pop r13  ; 0x1400083dd
    pop r12  ; 0x1400083df
    pop rdi  ; 0x1400083e1
    pop rsi  ; 0x1400083e2
    pop rbx  ; 0x1400083e3
    pop rbp  ; 0x1400083e4
    ret  ; 0x1400083e5
    call 0x140010040  ; 0x1400083e6
    int3   ; 0x1400083eb
    mov rax, rsp  ; 0x1400083ec
    mov qword ptr [rax + 8], rbx  ; 0x1400083ef
; Function: func_1400083f3
func_1400083f3:
    mov qword ptr [rax + 0x10], rbp  ; 0x1400083f3
    mov qword ptr [rax + 0x18], rsi  ; 0x1400083f7
    mov qword ptr [rax + 0x20], rdi  ; 0x1400083fb
    push r14  ; 0x1400083ff
    sub rsp, 0x20  ; 0x140008401
    xor ebx, ebx  ; 0x140008405
    mov r14, r8  ; 0x140008407
    mov rbp, rdx  ; 0x14000840a
    mov rdi, rcx  ; 0x14000840d
    cmp dword ptr [rcx + 4], ebx  ; 0x140008410
    je 0x140008509  ; 0x140008413
    movsxd rsi, dword ptr [rcx + 4]  ; 0x140008419
    call 0x140006490  ; 0x14000841d
    mov r9, rax  ; 0x140008422
    add r9, rsi  ; 0x140008425
    je 0x140008509  ; 0x140008428
    test esi, esi  ; 0x14000842e
    je 0x140008441  ; 0x140008430
    movsxd rsi, dword ptr [rdi + 4]  ; 0x140008432
    call 0x140006490  ; 0x140008436
    lea rcx, [rsi + rax]  ; 0x14000843b
    jmp 0x140008446  ; 0x14000843f
    mov rcx, rbx  ; 0x140008441
    mov esi, ebx  ; 0x140008444
    cmp byte ptr [rcx + 0x10], bl  ; 0x140008446
    je 0x140008509  ; 0x140008449
    test byte ptr [rdi], 0x80  ; 0x14000844f
    je 0x14000845e  ; 0x140008452
    test byte ptr [rbp], 0x10  ; 0x140008454
    jne 0x140008509  ; 0x140008458
    test esi, esi  ; 0x14000845e
    je 0x140008473  ; 0x140008460
    call 0x140006490  ; 0x140008462
    mov rsi, rax  ; 0x140008467
    movsxd rax, dword ptr [rdi + 4]  ; 0x14000846a
    add rsi, rax  ; 0x14000846e
    jmp 0x140008476  ; 0x140008471
    mov rsi, rbx  ; 0x140008473
    call 0x1400064a4  ; 0x140008476
    mov rcx, rax  ; 0x14000847b
    movsxd rax, dword ptr [rbp + 4]  ; 0x14000847e
    add rcx, rax  ; 0x140008482
    cmp rsi, rcx  ; 0x140008485
    je 0x1400084d5  ; 0x140008488
    cmp dword ptr [rdi + 4], ebx  ; 0x14000848a
    je 0x1400084a0  ; 0x14000848d
    call 0x140006490  ; 0x14000848f
    mov rsi, rax  ; 0x140008494
    movsxd rax, dword ptr [rdi + 4]  ; 0x140008497
    add rsi, rax  ; 0x14000849b
    jmp 0x1400084a3  ; 0x14000849e
    mov rsi, rbx  ; 0x1400084a0
    call 0x1400064a4  ; 0x1400084a3
    movsxd r8, dword ptr [rbp + 4]  ; 0x1400084a8
    add r8, 0x10  ; 0x1400084ac
    add r8, rax  ; 0x1400084b0
    lea rax, [rsi + 0x10]  ; 0x1400084b3
    sub r8, rax  ; 0x1400084b7
    movzx ecx, byte ptr [rax]  ; 0x1400084ba
    movzx edx, byte ptr [rax + r8]  ; 0x1400084bd
    sub ecx, edx  ; 0x1400084c2
    jne 0x1400084cd  ; 0x1400084c4
    inc rax  ; 0x1400084c6
    test edx, edx  ; 0x1400084c9
    jne 0x1400084ba  ; 0x1400084cb
    test ecx, ecx  ; 0x1400084cd
    je 0x1400084d5  ; 0x1400084cf
    xor eax, eax  ; 0x1400084d1
    jmp 0x14000850e  ; 0x1400084d3
    mov al, 2  ; 0x1400084d5
    test byte ptr [rbp], al  ; 0x1400084d7
    je 0x1400084e1  ; 0x1400084da
    test byte ptr [rdi], 8  ; 0x1400084dc
    je 0x140008505  ; 0x1400084df
    test byte ptr [r14], 1  ; 0x1400084e1
    je 0x1400084ec  ; 0x1400084e5
    test byte ptr [rdi], 1  ; 0x1400084e7
    je 0x140008505  ; 0x1400084ea
    test byte ptr [r14], 4  ; 0x1400084ec
    je 0x1400084f7  ; 0x1400084f0
    test byte ptr [rdi], 4  ; 0x1400084f2
    je 0x140008505  ; 0x1400084f5
    test byte ptr [r14], al  ; 0x1400084f7
    je 0x140008500  ; 0x1400084fa
    test byte ptr [rdi], al  ; 0x1400084fc
    je 0x140008505  ; 0x1400084fe
    mov ebx, 1  ; 0x140008500
    mov eax, ebx  ; 0x140008505
    jmp 0x14000850e  ; 0x140008507
    mov eax, 1  ; 0x140008509
    mov rbx, qword ptr [rsp + 0x30]  ; 0x14000850e
    mov rbp, qword ptr [rsp + 0x38]  ; 0x140008513
    mov rsi, qword ptr [rsp + 0x40]  ; 0x140008518
    mov rdi, qword ptr [rsp + 0x48]  ; 0x14000851d
    add rsp, 0x20  ; 0x140008522
    pop r14  ; 0x140008526
    ret  ; 0x140008528
    int3   ; 0x140008529
    int3   ; 0x14000852a
    int3   ; 0x14000852b
    mov qword ptr [rsp + 8], rbx  ; 0x14000852c
; Function: func_140008531
func_140008531:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140008531
    mov qword ptr [rsp + 0x18], rsi  ; 0x140008536
    push rdi  ; 0x14000853b
    push r14  ; 0x14000853c
    push r15  ; 0x14000853e
    sub rsp, 0x20  ; 0x140008540
    xor ebx, ebx  ; 0x140008544
    mov r15, r8  ; 0x140008546
    mov r14, rdx  ; 0x140008549
    mov rdi, rcx  ; 0x14000854c
    cmp dword ptr [rcx + 8], ebx  ; 0x14000854f
    je 0x140008659  ; 0x140008552
    movsxd rsi, dword ptr [rcx + 8]  ; 0x140008558
    call 0x140006490  ; 0x14000855c
    mov r8, rax  ; 0x140008561
    add r8, rsi  ; 0x140008564
    je 0x140008659  ; 0x140008567
    test esi, esi  ; 0x14000856d
    je 0x140008580  ; 0x14000856f
    movsxd rbp, dword ptr [rdi + 8]  ; 0x140008571
    call 0x140006490  ; 0x140008575
    lea rcx, [rax + rbp]  ; 0x14000857a
    jmp 0x140008585  ; 0x14000857e
    mov rcx, rbx  ; 0x140008580
    mov ebp, ebx  ; 0x140008583
    cmp byte ptr [rcx + 0x10], bl  ; 0x140008585
    je 0x140008659  ; 0x140008588
    lea rsi, [rdi + 4]  ; 0x14000858e
    test byte ptr [rsi], 0x80  ; 0x140008592
    je 0x1400085a1  ; 0x140008595
    test byte ptr [r14], 0x10  ; 0x140008597
    jne 0x140008659  ; 0x14000859b
    test ebp, ebp  ; 0x1400085a1
    je 0x1400085b6  ; 0x1400085a3
    call 0x140006490  ; 0x1400085a5
    mov rbp, rax  ; 0x1400085aa
    movsxd rax, dword ptr [rdi + 8]  ; 0x1400085ad
    add rbp, rax  ; 0x1400085b1
    jmp 0x1400085b9  ; 0x1400085b4
    mov rbp, rbx  ; 0x1400085b6
    call 0x1400064a4  ; 0x1400085b9
    mov rcx, rax  ; 0x1400085be
    movsxd rax, dword ptr [r14 + 4]  ; 0x1400085c1
    add rcx, rax  ; 0x1400085c5
    cmp rbp, rcx  ; 0x1400085c8
    je 0x14000861c  ; 0x1400085cb
    cmp dword ptr [rdi + 8], ebx  ; 0x1400085cd
    je 0x1400085e3  ; 0x1400085d0
    call 0x140006490  ; 0x1400085d2
    mov rsi, rax  ; 0x1400085d7
    movsxd rax, dword ptr [rdi + 8]  ; 0x1400085da
    add rsi, rax  ; 0x1400085de
    jmp 0x1400085e6  ; 0x1400085e1
    mov rsi, rbx  ; 0x1400085e3
    call 0x1400064a4  ; 0x1400085e6
    movsxd r8, dword ptr [r14 + 4]  ; 0x1400085eb
    add r8, 0x10  ; 0x1400085ef
    add r8, rax  ; 0x1400085f3
    lea rax, [rsi + 0x10]  ; 0x1400085f6
    sub r8, rax  ; 0x1400085fa
    movzx ecx, byte ptr [rax]  ; 0x1400085fd
    movzx edx, byte ptr [rax + r8]  ; 0x140008600
    sub ecx, edx  ; 0x140008605
    jne 0x140008610  ; 0x140008607
    inc rax  ; 0x140008609
    test edx, edx  ; 0x14000860c
    jne 0x1400085fd  ; 0x14000860e
    test ecx, ecx  ; 0x140008610
    je 0x140008618  ; 0x140008612
    xor eax, eax  ; 0x140008614
    jmp 0x14000865e  ; 0x140008616
    lea rsi, [rdi + 4]  ; 0x140008618
    mov al, 2  ; 0x14000861c
    test byte ptr [r14], al  ; 0x14000861e
    je 0x14000862e  ; 0x140008621
    test byte ptr [rsi], 8  ; 0x140008623
    je 0x140008655  ; 0x140008626
    add rdi, 4  ; 0x140008628
    jmp 0x140008631  ; 0x14000862c
    mov rdi, rsi  ; 0x14000862e
    test byte ptr [r15], 1  ; 0x140008631
    je 0x14000863c  ; 0x140008635
    test byte ptr [rsi], 1  ; 0x140008637
    je 0x140008655  ; 0x14000863a
    test byte ptr [r15], 4  ; 0x14000863c
    je 0x140008647  ; 0x140008640
    test byte ptr [rsi], 4  ; 0x140008642
    je 0x140008655  ; 0x140008645
    test byte ptr [r15], al  ; 0x140008647
    je 0x140008650  ; 0x14000864a
    test byte ptr [rdi], al  ; 0x14000864c
    je 0x140008655  ; 0x14000864e
    mov ebx, 1  ; 0x140008650
    mov eax, ebx  ; 0x140008655
    jmp 0x14000865e  ; 0x140008657
    mov eax, 1  ; 0x140008659
    mov rbx, qword ptr [rsp + 0x40]  ; 0x14000865e
    mov rbp, qword ptr [rsp + 0x48]  ; 0x140008663
    mov rsi, qword ptr [rsp + 0x50]  ; 0x140008668
    add rsp, 0x20  ; 0x14000866d
    pop r15  ; 0x140008671
    pop r14  ; 0x140008673
    pop rdi  ; 0x140008675
    ret  ; 0x140008676
    int3   ; 0x140008677
    mov rax, rsp  ; 0x140008678
    mov qword ptr [rax + 8], rbx  ; 0x14000867b
; Function: func_14000867f
func_14000867f:
    mov qword ptr [rax + 0x10], rbp  ; 0x14000867f
    mov qword ptr [rax + 0x18], rsi  ; 0x140008683
    mov qword ptr [rax + 0x20], rdi  ; 0x140008687
    push r14  ; 0x14000868b
    sub rsp, 0x50  ; 0x14000868d
    mov rdi, rcx  ; 0x140008691
    mov rsi, r9  ; 0x140008694
    mov rcx, r8  ; 0x140008697
    mov r14, r8  ; 0x14000869a
    mov rbp, rdx  ; 0x14000869d
    call 0x140009d24  ; 0x1400086a0
    call 0x140006a38  ; 0x1400086a5
    mov rbx, qword ptr [rsp + 0x80]  ; 0x1400086aa
    mov ecx, 0x80000029  ; 0x1400086b2
    mov edx, 0x80000026  ; 0x1400086b7
    cmp dword ptr [rax + 0x40], 0  ; 0x1400086bc
    jne 0x1400086fa  ; 0x1400086c0
    cmp dword ptr [rdi], 0xe06d7363  ; 0x1400086c2
    je 0x1400086fa  ; 0x1400086c8
    cmp dword ptr [rdi], ecx  ; 0x1400086ca
    jne 0x1400086de  ; 0x1400086cc
    cmp dword ptr [rdi + 0x18], 0xf  ; 0x1400086ce
    jne 0x1400086e2  ; 0x1400086d2
    cmp qword ptr [rdi + 0x60], 0x19930520  ; 0x1400086d4
    je 0x1400086fa  ; 0x1400086dc
    cmp dword ptr [rdi], edx  ; 0x1400086de
    je 0x1400086fa  ; 0x1400086e0
    mov eax, dword ptr [rbx]  ; 0x1400086e2
    and eax, 0x1fffffff  ; 0x1400086e4
    cmp eax, 0x19930522  ; 0x1400086e9
    jb 0x1400086fa  ; 0x1400086ee
    test byte ptr [rbx + 0x24], 1  ; 0x1400086f0
    jne 0x140008889  ; 0x1400086f4
    test byte ptr [rdi + 4], 0x66  ; 0x1400086fa
    je 0x140008792  ; 0x1400086fe
    cmp dword ptr [rbx + 4], 0  ; 0x140008704
    je 0x140008889  ; 0x140008708
    cmp dword ptr [rsp + 0x88], 0  ; 0x14000870e
    jne 0x140008889  ; 0x140008716
    test byte ptr [rdi + 4], 0x20  ; 0x14000871c
    je 0x14000877f  ; 0x140008720
    cmp dword ptr [rdi], edx  ; 0x140008722
    jne 0x14000875d  ; 0x140008724
    mov r8, qword ptr [rsi + 0x20]  ; 0x140008726
    mov rdx, rsi  ; 0x14000872a
    mov rcx, rbx  ; 0x14000872d
    call 0x140006c2c  ; 0x140008730
    cmp eax, -1  ; 0x140008735
    jl 0x1400088a9  ; 0x140008738
    cmp eax, dword ptr [rbx + 4]  ; 0x14000873e
    jge 0x1400088a9  ; 0x140008741
    mov r9d, eax  ; 0x140008747
    mov rcx, rbp  ; 0x14000874a
    mov rdx, rsi  ; 0x14000874d
    mov r8, rbx  ; 0x140008750
    call 0x1400093e0  ; 0x140008753
    jmp 0x140008889  ; 0x140008758
    cmp dword ptr [rdi], ecx  ; 0x14000875d
    jne 0x14000877f  ; 0x14000875f
    mov r9d, dword ptr [rdi + 0x38]  ; 0x140008761
    cmp r9d, -1  ; 0x140008765
    jl 0x1400088a9  ; 0x140008769
    cmp r9d, dword ptr [rbx + 4]  ; 0x14000876f
    jge 0x1400088a9  ; 0x140008773
    mov rcx, qword ptr [rdi + 0x28]  ; 0x140008779
    jmp 0x14000874d  ; 0x14000877d
    mov r8, rbx  ; 0x14000877f
    mov rdx, rsi  ; 0x140008782
    mov rcx, rbp  ; 0x140008785
    call 0x140005bec  ; 0x140008788
    jmp 0x140008889  ; 0x14000878d
    cmp dword ptr [rbx + 0xc], 0  ; 0x140008792
    jne 0x1400087da  ; 0x140008796
    mov eax, dword ptr [rbx]  ; 0x140008798
    and eax, 0x1fffffff  ; 0x14000879a
    cmp eax, 0x19930521  ; 0x14000879f
    jb 0x1400087ba  ; 0x1400087a4
    cmp dword ptr [rbx + 0x20], 0  ; 0x1400087a6
    je 0x1400087ba  ; 0x1400087aa
    call 0x140006490  ; 0x1400087ac
    movsxd rcx, dword ptr [rbx + 0x20]  ; 0x1400087b1
    add rax, rcx  ; 0x1400087b5
    jne 0x1400087da  ; 0x1400087b8
    mov eax, dword ptr [rbx]  ; 0x1400087ba
    and eax, 0x1fffffff  ; 0x1400087bc
    cmp eax, 0x19930522  ; 0x1400087c1
    jb 0x140008889  ; 0x1400087c6
    mov eax, dword ptr [rbx + 0x24]  ; 0x1400087cc
    shr eax, 2  ; 0x1400087cf
    test al, 1  ; 0x1400087d2
    je 0x140008889  ; 0x1400087d4
    cmp dword ptr [rdi], 0xe06d7363  ; 0x1400087da
    jne 0x140008850  ; 0x1400087e0
    cmp dword ptr [rdi + 0x18], 3  ; 0x1400087e2
    jb 0x140008850  ; 0x1400087e6
    cmp dword ptr [rdi + 0x20], 0x19930522  ; 0x1400087e8
    jbe 0x140008850  ; 0x1400087ef
    mov rax, qword ptr [rdi + 0x30]  ; 0x1400087f1
    cmp dword ptr [rax + 8], 0  ; 0x1400087f5
    je 0x140008850  ; 0x1400087f9
    call 0x1400064a4  ; 0x1400087fb
    mov rcx, qword ptr [rdi + 0x30]  ; 0x140008800
    mov r10, rax  ; 0x140008804
    movsxd rdx, dword ptr [rcx + 8]  ; 0x140008807
    add r10, rdx  ; 0x14000880b
    je 0x140008850  ; 0x14000880e
    movzx ecx, byte ptr [rsp + 0x98]  ; 0x140008810
    mov r9, rsi  ; 0x140008818
    mov eax, dword ptr [rsp + 0x88]  ; 0x14000881b
    mov r8, r14  ; 0x140008822
    mov dword ptr [rsp + 0x38], ecx  ; 0x140008825
    mov rdx, rbp  ; 0x140008829
    mov rcx, qword ptr [rsp + 0x90]  ; 0x14000882c
    mov qword ptr [rsp + 0x30], rcx  ; 0x140008834
    mov rcx, rdi  ; 0x140008839
    mov dword ptr [rsp + 0x28], eax  ; 0x14000883c
    mov rax, r10  ; 0x140008840
    mov qword ptr [rsp + 0x20], rbx  ; 0x140008843
    call qword ptr [rip + 0x15a22]  ; 0x140008848
    jmp 0x14000888e  ; 0x14000884e
    mov rax, qword ptr [rsp + 0x90]  ; 0x140008850
    mov r9, rsi  ; 0x140008858
    mov qword ptr [rsp + 0x38], rax  ; 0x14000885b
    mov r8, r14  ; 0x140008860
    mov eax, dword ptr [rsp + 0x88]  ; 0x140008863
    mov rdx, rbp  ; 0x14000886a
    mov dword ptr [rsp + 0x30], eax  ; 0x14000886d
    mov rcx, rdi  ; 0x140008871
    mov al, byte ptr [rsp + 0x98]  ; 0x140008874
    mov byte ptr [rsp + 0x28], al  ; 0x14000887b
    mov qword ptr [rsp + 0x20], rbx  ; 0x14000887f
    call 0x1400074b4  ; 0x140008884
    mov eax, 1  ; 0x140008889
    mov rbx, qword ptr [rsp + 0x60]  ; 0x14000888e
    mov rbp, qword ptr [rsp + 0x68]  ; 0x140008893
    mov rsi, qword ptr [rsp + 0x70]  ; 0x140008898
    mov rdi, qword ptr [rsp + 0x78]  ; 0x14000889d
    add rsp, 0x50  ; 0x1400088a2
    pop r14  ; 0x1400088a6
    ret  ; 0x1400088a8
    call 0x140010040  ; 0x1400088a9
    int3   ; 0x1400088ae
    int3   ; 0x1400088af
    mov qword ptr [rsp + 8], rbx  ; 0x1400088b0
; Function: func_1400088b5
func_1400088b5:
    mov qword ptr [rsp + 0x10], rbp  ; 0x1400088b5
    mov qword ptr [rsp + 0x18], rsi  ; 0x1400088ba
    push rdi  ; 0x1400088bf
    push r14  ; 0x1400088c0
    push r15  ; 0x1400088c2
    sub rsp, 0x80  ; 0x1400088c4
    mov rbx, rcx  ; 0x1400088cb
    mov rbp, r9  ; 0x1400088ce
    mov rcx, r8  ; 0x1400088d1
    mov r15, r8  ; 0x1400088d4
    mov r14, rdx  ; 0x1400088d7
    call 0x140009d24  ; 0x1400088da
    call 0x140006a38  ; 0x1400088df
    mov rdi, qword ptr [rsp + 0xc0]  ; 0x1400088e4
    xor esi, esi  ; 0x1400088ec
    mov r8d, 0x80000029  ; 0x1400088ee
    mov r9d, 0x80000026  ; 0x1400088f4
    cmp dword ptr [rax + 0x40], esi  ; 0x1400088fa
    jne 0x14000892a  ; 0x1400088fd
    cmp dword ptr [rbx], 0xe06d7363  ; 0x1400088ff
    je 0x14000892a  ; 0x140008905
    cmp dword ptr [rbx], r8d  ; 0x140008907
    jne 0x14000891c  ; 0x14000890a
    cmp dword ptr [rbx + 0x18], 0xf  ; 0x14000890c
    jne 0x140008921  ; 0x140008910
    cmp qword ptr [rbx + 0x60], 0x19930520  ; 0x140008912
    je 0x14000892a  ; 0x14000891a
    cmp dword ptr [rbx], r9d  ; 0x14000891c
    je 0x14000892a  ; 0x14000891f
    test byte ptr [rdi], 0x20  ; 0x140008921
    jne 0x140008b1c  ; 0x140008924
    test byte ptr [rbx + 4], 0x66  ; 0x14000892a
    je 0x140008a4e  ; 0x14000892e
    cmp dword ptr [rdi + 8], esi  ; 0x140008934
    je 0x140008b1c  ; 0x140008937
    movsxd rdx, dword ptr [rdi + 8]  ; 0x14000893d
    lea r15, [rip - 0x8948]  ; 0x140008941
    add rdx, qword ptr [rbp + 8]  ; 0x140008948
    movzx ecx, byte ptr [rdx]  ; 0x14000894c
    and ecx, 0xf  ; 0x14000894f
    movsx rax, byte ptr [rcx + r15 + 0x1e610]  ; 0x140008952
    mov cl, byte ptr [rcx + r15 + 0x1e620]  ; 0x14000895b
    sub rdx, rax  ; 0x140008963
    mov eax, dword ptr [rdx - 4]  ; 0x140008966
    shr eax, cl  ; 0x140008969
    test eax, eax  ; 0x14000896b
    je 0x140008b1c  ; 0x14000896d
    cmp dword ptr [rsp + 0xc8], esi  ; 0x140008973
    jne 0x140008b1c  ; 0x14000897a
    test byte ptr [rbx + 4], 0x20  ; 0x140008980
    je 0x140008a3b  ; 0x140008984
    cmp dword ptr [rbx], r9d  ; 0x14000898a
    jne 0x1400089f2  ; 0x14000898d
    mov r8, qword ptr [rbp + 0x20]  ; 0x14000898f
    mov rdx, rbp  ; 0x140008993
    mov rcx, rdi  ; 0x140008996
    call 0x140006c94  ; 0x140008999
    mov r9d, eax  ; 0x14000899e
    cmp eax, -1  ; 0x1400089a1
    jl 0x140008b3e  ; 0x1400089a4
    cmp dword ptr [rdi + 8], esi  ; 0x1400089aa
    je 0x1400089d6  ; 0x1400089ad
    movsxd rdx, dword ptr [rdi + 8]  ; 0x1400089af
    add rdx, qword ptr [rbp + 8]  ; 0x1400089b3
    movzx ecx, byte ptr [rdx]  ; 0x1400089b7
    and ecx, 0xf  ; 0x1400089ba
    movsx rax, byte ptr [rcx + r15 + 0x1e610]  ; 0x1400089bd
    mov cl, byte ptr [rcx + r15 + 0x1e620]  ; 0x1400089c6
    sub rdx, rax  ; 0x1400089ce
    mov esi, dword ptr [rdx - 4]  ; 0x1400089d1
    shr esi, cl  ; 0x1400089d4
    cmp r9d, esi  ; 0x1400089d6
    jge 0x140008b3e  ; 0x1400089d9
    mov rcx, r14  ; 0x1400089df
    mov rdx, rbp  ; 0x1400089e2
    mov r8, rdi  ; 0x1400089e5
    call 0x14000956c  ; 0x1400089e8
    jmp 0x140008b1c  ; 0x1400089ed
    cmp dword ptr [rbx], r8d  ; 0x1400089f2
    jne 0x140008a3b  ; 0x1400089f5
    mov r9d, dword ptr [rbx + 0x38]  ; 0x1400089f7
    cmp r9d, -1  ; 0x1400089fb
    jl 0x140008b3e  ; 0x1400089ff
    movsxd rdx, dword ptr [rdi + 8]  ; 0x140008a05
    add rdx, qword ptr [rbp + 8]  ; 0x140008a09
    movzx ecx, byte ptr [rdx]  ; 0x140008a0d
    and ecx, 0xf  ; 0x140008a10
    movsx rax, byte ptr [rcx + r15 + 0x1e610]  ; 0x140008a13
    mov cl, byte ptr [rcx + r15 + 0x1e620]  ; 0x140008a1c
    sub rdx, rax  ; 0x140008a24
    mov eax, dword ptr [rdx - 4]  ; 0x140008a27
    shr eax, cl  ; 0x140008a2a
    cmp r9d, eax  ; 0x140008a2c
    jge 0x140008b3e  ; 0x140008a2f
    mov rcx, qword ptr [rbx + 0x28]  ; 0x140008a35
    jmp 0x1400089e2  ; 0x140008a39
    mov r8, rdi  ; 0x140008a3b
    mov rdx, rbp  ; 0x140008a3e
    mov rcx, r14  ; 0x140008a41
    call 0x140005c50  ; 0x140008a44
    jmp 0x140008b1c  ; 0x140008a49
    mov r8, qword ptr [rbp + 8]  ; 0x140008a4e
    lea rcx, [rsp + 0x50]  ; 0x140008a52
    mov rdx, rdi  ; 0x140008a57
    call 0x140008c1c  ; 0x140008a5a
    cmp dword ptr [rsp + 0x50], esi  ; 0x140008a5f
    jne 0x140008a6e  ; 0x140008a63
    test byte ptr [rdi], 0x40  ; 0x140008a65
    je 0x140008b1c  ; 0x140008a68
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140008a6e
    jne 0x140008ae3  ; 0x140008a74
    cmp dword ptr [rbx + 0x18], 3  ; 0x140008a76
    jb 0x140008ae3  ; 0x140008a7a
    cmp dword ptr [rbx + 0x20], 0x19930522  ; 0x140008a7c
    jbe 0x140008ae3  ; 0x140008a83
    mov rax, qword ptr [rbx + 0x30]  ; 0x140008a85
    cmp dword ptr [rax + 8], esi  ; 0x140008a89
    je 0x140008ae3  ; 0x140008a8c
    call 0x1400064a4  ; 0x140008a8e
    mov rcx, qword ptr [rbx + 0x30]  ; 0x140008a93
    mov r10, rax  ; 0x140008a97
    movsxd rdx, dword ptr [rcx + 8]  ; 0x140008a9a
    add r10, rdx  ; 0x140008a9e
    je 0x140008ae3  ; 0x140008aa1
    movzx ecx, byte ptr [rsp + 0xd8]  ; 0x140008aa3
    mov r9, rbp  ; 0x140008aab
    mov eax, dword ptr [rsp + 0xc8]  ; 0x140008aae
    mov r8, r15  ; 0x140008ab5
    mov dword ptr [rsp + 0x38], ecx  ; 0x140008ab8
    mov rdx, r14  ; 0x140008abc
    mov rcx, qword ptr [rsp + 0xd0]  ; 0x140008abf
    mov qword ptr [rsp + 0x30], rcx  ; 0x140008ac7
    mov rcx, rbx  ; 0x140008acc
    mov dword ptr [rsp + 0x28], eax  ; 0x140008acf
    mov rax, r10  ; 0x140008ad3
    mov qword ptr [rsp + 0x20], rdi  ; 0x140008ad6
    call qword ptr [rip + 0x1578f]  ; 0x140008adb
    jmp 0x140008b21  ; 0x140008ae1
    mov rax, qword ptr [rsp + 0xd0]  ; 0x140008ae3
    mov r9, rbp  ; 0x140008aeb
    mov qword ptr [rsp + 0x38], rax  ; 0x140008aee
    mov r8, r15  ; 0x140008af3
    mov eax, dword ptr [rsp + 0xc8]  ; 0x140008af6
    mov rdx, r14  ; 0x140008afd
    mov dword ptr [rsp + 0x30], eax  ; 0x140008b00
    mov rcx, rbx  ; 0x140008b04
    mov al, byte ptr [rsp + 0xd8]  ; 0x140008b07
    mov byte ptr [rsp + 0x28], al  ; 0x140008b0e
    mov qword ptr [rsp + 0x20], rdi  ; 0x140008b12
    call 0x140007984  ; 0x140008b17
    mov eax, 1  ; 0x140008b1c
    lea r11, [rsp + 0x80]  ; 0x140008b21
    mov rbx, qword ptr [r11 + 0x20]  ; 0x140008b29
    mov rbp, qword ptr [r11 + 0x28]  ; 0x140008b2d
    mov rsi, qword ptr [r11 + 0x30]  ; 0x140008b31
    mov rsp, r11  ; 0x140008b35
    pop r15  ; 0x140008b38
    pop r14  ; 0x140008b3a
    pop rdi  ; 0x140008b3c
    ret  ; 0x140008b3d
    call 0x140010040  ; 0x140008b3e
    int3   ; 0x140008b43
    jmp 0x140008678  ; 0x140008b44
    int3   ; 0x140008b49
    int3   ; 0x140008b4a
    int3   ; 0x140008b4b
    push rbx  ; 0x140008b4c
    sub rsp, 0x40  ; 0x140008b4e
    mov al, byte ptr [rsp + 0x88]  ; 0x140008b52
    mov byte ptr [rsp + 0x38], al  ; 0x140008b59
    mov rax, qword ptr [rsp + 0x80]  ; 0x140008b5d
    mov qword ptr [rsp + 0x30], rax  ; 0x140008b65
    mov eax, dword ptr [rsp + 0x78]  ; 0x140008b6a
    mov dword ptr [rsp + 0x28], eax  ; 0x140008b6e
    mov rax, qword ptr [rsp + 0x70]  ; 0x140008b72
    mov qword ptr [rsp + 0x20], rax  ; 0x140008b77
    call 0x1400088b0  ; 0x140008b7c
    mov ebx, eax  ; 0x140008b81
    call 0x140006a38  ; 0x140008b83
    mov dword ptr [rax + 0x78], 0xfffffffe  ; 0x140008b88
    mov eax, ebx  ; 0x140008b8f
    add rsp, 0x40  ; 0x140008b91
    pop rbx  ; 0x140008b95
    ret  ; 0x140008b96
    int3   ; 0x140008b97
    push rbx  ; 0x140008b98
    sub rsp, 0x20  ; 0x140008b9a
    xor eax, eax  ; 0x140008b9e
    xorps xmm0, xmm0  ; 0x140008ba0
    mov qword ptr [rcx + 8], rax  ; 0x140008ba3
    mov rbx, rcx  ; 0x140008ba7
    mov qword ptr [rcx + 0x10], rax  ; 0x140008baa
    mov byte ptr [rcx + 0x18], al  ; 0x140008bae
    mov qword ptr [rcx + 0x1c], rax  ; 0x140008bb1
    mov qword ptr [rcx + 0x24], rax  ; 0x140008bb5
    movups xmmword ptr [rcx + 0x30], xmm0  ; 0x140008bb9
    mov qword ptr [rcx + 0x40], r8  ; 0x140008bbd
    mov dword ptr [rcx + 0x48], r9d  ; 0x140008bc1
    cmp dword ptr [rdx + 0xc], eax  ; 0x140008bc5
    je 0x140008c0f  ; 0x140008bc8
    movsxd rdx, dword ptr [rdx + 0xc]  ; 0x140008bca
    add rdx, r8  ; 0x140008bce
    lea r8, [rip - 0x8bd8]  ; 0x140008bd1
    mov qword ptr [rcx + 8], rdx  ; 0x140008bd8
    movzx ecx, byte ptr [rdx]  ; 0x140008bdc
    and ecx, 0xf  ; 0x140008bdf
    movsx rax, byte ptr [rcx + r8 + 0x1e610]  ; 0x140008be2
    mov cl, byte ptr [rcx + r8 + 0x1e620]  ; 0x140008beb
    sub rdx, rax  ; 0x140008bf3
    mov eax, dword ptr [rdx - 4]  ; 0x140008bf6
    shr eax, cl  ; 0x140008bf9
    mov rcx, rbx  ; 0x140008bfb
    mov dword ptr [rbx], eax  ; 0x140008bfe
    mov qword ptr [rbx + 8], rdx  ; 0x140008c00
    mov qword ptr [rbx + 0x10], rdx  ; 0x140008c04
    call 0x140009198  ; 0x140008c08
    jmp 0x140008c11  ; 0x140008c0d
    mov dword ptr [rcx], eax  ; 0x140008c0f
    mov rax, rbx  ; 0x140008c11
    add rsp, 0x20  ; 0x140008c14
    pop rbx  ; 0x140008c18
    ret  ; 0x140008c19
    int3   ; 0x140008c1a
    int3   ; 0x140008c1b
    xor eax, eax  ; 0x140008c1c
    xorps xmm0, xmm0  ; 0x140008c1e
    mov qword ptr [rcx + 8], rax  ; 0x140008c21
    mov r9, rcx  ; 0x140008c25
    mov qword ptr [rcx + 0x10], rax  ; 0x140008c28
    movups xmmword ptr [rcx + 0x18], xmm0  ; 0x140008c2c
    cmp dword ptr [rdx + 0xc], eax  ; 0x140008c30
    je 0x140008cfa  ; 0x140008c33
    movsxd rdx, dword ptr [rdx + 0xc]  ; 0x140008c39
    add rdx, r8  ; 0x140008c3d
    lea r8, [rip - 0x8c47]  ; 0x140008c40
    mov qword ptr [rcx + 8], rdx  ; 0x140008c47
    movzx ecx, byte ptr [rdx]  ; 0x140008c4b
    and ecx, 0xf  ; 0x140008c4e
    movsx rax, byte ptr [rcx + r8 + 0x1e610]  ; 0x140008c51
    mov cl, byte ptr [rcx + r8 + 0x1e620]  ; 0x140008c5a
    sub rdx, rax  ; 0x140008c62
    mov eax, dword ptr [rdx - 4]  ; 0x140008c65
    shr eax, cl  ; 0x140008c68
    mov qword ptr [r9 + 8], rdx  ; 0x140008c6a
    mov dword ptr [r9], eax  ; 0x140008c6e
    mov qword ptr [r9 + 0x10], rdx  ; 0x140008c71
    movzx ecx, byte ptr [rdx]  ; 0x140008c75
    and ecx, 0xf  ; 0x140008c78
    movsx rax, byte ptr [rcx + r8 + 0x1e610]  ; 0x140008c7b
    mov cl, byte ptr [rcx + r8 + 0x1e620]  ; 0x140008c84
    sub rdx, rax  ; 0x140008c8c
    mov eax, dword ptr [rdx - 4]  ; 0x140008c8f
    shr eax, cl  ; 0x140008c92
    mov qword ptr [r9 + 8], rdx  ; 0x140008c94
    mov dword ptr [r9 + 0x18], eax  ; 0x140008c98
    movzx ecx, byte ptr [rdx]  ; 0x140008c9c
    and ecx, 0xf  ; 0x140008c9f
    movsx rax, byte ptr [rcx + r8 + 0x1e610]  ; 0x140008ca2
    mov cl, byte ptr [rcx + r8 + 0x1e620]  ; 0x140008cab
    sub rdx, rax  ; 0x140008cb3
    mov eax, dword ptr [rdx - 4]  ; 0x140008cb6
    shr eax, cl  ; 0x140008cb9
    mov qword ptr [r9 + 8], rdx  ; 0x140008cbb
    mov dword ptr [r9 + 0x1c], eax  ; 0x140008cbf
    movzx ecx, byte ptr [rdx]  ; 0x140008cc3
    and ecx, 0xf  ; 0x140008cc6
    movsx rax, byte ptr [rcx + r8 + 0x1e610]  ; 0x140008cc9
    mov cl, byte ptr [rcx + r8 + 0x1e620]  ; 0x140008cd2
    sub rdx, rax  ; 0x140008cda
    mov eax, dword ptr [rdx - 4]  ; 0x140008cdd
    shr eax, cl  ; 0x140008ce0
    mov dword ptr [r9 + 0x20], eax  ; 0x140008ce2
    lea rax, [rdx + 4]  ; 0x140008ce6
    mov qword ptr [r9 + 8], rdx  ; 0x140008cea
    mov ecx, dword ptr [rdx]  ; 0x140008cee
    mov qword ptr [r9 + 8], rax  ; 0x140008cf0
    mov dword ptr [r9 + 0x24], ecx  ; 0x140008cf4
    jmp 0x140008cfc  ; 0x140008cf8
    mov dword ptr [rcx], eax  ; 0x140008cfa
    mov rax, r9  ; 0x140008cfc
    ret  ; 0x140008cff
    push rbx  ; 0x140008d00
    sub rsp, 0x20  ; 0x140008d02
    mov rbx, rcx  ; 0x140008d06
    mov rax, rdx  ; 0x140008d09
    lea rcx, [rip + 0x15755]  ; 0x140008d0c
    xorps xmm0, xmm0  ; 0x140008d13
    mov qword ptr [rbx], rcx  ; 0x140008d16
    lea rdx, [rbx + 8]  ; 0x140008d19
    lea rcx, [rax + 8]  ; 0x140008d1d
    movups xmmword ptr [rdx], xmm0  ; 0x140008d21
    call 0x140005810  ; 0x140008d24
    lea rax, [rip + 0x15a48]  ; 0x140008d29
    mov qword ptr [rbx], rax  ; 0x140008d30
    mov rax, rbx  ; 0x140008d33
    add rsp, 0x20  ; 0x140008d36
    pop rbx  ; 0x140008d3a
    ret  ; 0x140008d3b
    and qword ptr [rcx + 0x10], 0  ; 0x140008d3c
    lea rax, [rip + 0x15a40]  ; 0x140008d41
    mov qword ptr [rcx + 8], rax  ; 0x140008d48
    lea rax, [rip + 0x15a25]  ; 0x140008d4c
    mov qword ptr [rcx], rax  ; 0x140008d53
    mov rax, rcx  ; 0x140008d56
    ret  ; 0x140008d59
    int3   ; 0x140008d5a
    int3   ; 0x140008d5b
    push rbx  ; 0x140008d5c
    push rsi  ; 0x140008d5e
    push rdi  ; 0x140008d5f
    push r12  ; 0x140008d60
    push r13  ; 0x140008d62
    push r14  ; 0x140008d64
    push r15  ; 0x140008d66
    sub rsp, 0x70  ; 0x140008d68
    mov rdi, rcx  ; 0x140008d6c
    xor r15d, r15d  ; 0x140008d6f
    mov dword ptr [rsp + 0x20], r15d  ; 0x140008d72
    and dword ptr [rsp + 0xb0], r15d  ; 0x140008d77
    and qword ptr [rsp + 0x28], r15  ; 0x140008d7f
    and qword ptr [rsp + 0xc8], r15  ; 0x140008d84
    call 0x140006a38  ; 0x140008d8c
    mov r13, qword ptr [rax + 0x28]  ; 0x140008d91
    mov qword ptr [rsp + 0x40], r13  ; 0x140008d95
    call 0x140006a38  ; 0x140008d9a
    mov rax, qword ptr [rax + 0x20]  ; 0x140008d9f
    mov qword ptr [rsp + 0xc0], rax  ; 0x140008da3
    mov rsi, qword ptr [rdi + 0x50]  ; 0x140008dab
    mov qword ptr [rsp + 0xb8], rsi  ; 0x140008daf
    mov rax, qword ptr [rdi + 0x48]  ; 0x140008db7
    mov qword ptr [rsp + 0x30], rax  ; 0x140008dbb
    mov rbx, qword ptr [rdi + 0x40]  ; 0x140008dc0
    mov rax, qword ptr [rdi + 0x30]  ; 0x140008dc4
    mov qword ptr [rsp + 0x48], rax  ; 0x140008dc8
    mov r14, qword ptr [rdi + 0x28]  ; 0x140008dcd
    mov qword ptr [rsp + 0x50], r14  ; 0x140008dd1
    mov rcx, rbx  ; 0x140008dd6
    call 0x140009d24  ; 0x140008dd9
    call 0x140006a38  ; 0x140008dde
    mov qword ptr [rax + 0x20], rsi  ; 0x140008de3
    call 0x140006a38  ; 0x140008de7
    mov qword ptr [rax + 0x28], rbx  ; 0x140008dec
    call 0x140006a38  ; 0x140008df0
    mov rdx, qword ptr [rax + 0x20]  ; 0x140008df5
    mov rdx, qword ptr [rdx + 0x28]  ; 0x140008df9
    lea rcx, [rsp + 0x60]  ; 0x140008dfd
    call 0x140006400  ; 0x140008e02
    mov r12, rax  ; 0x140008e07
    mov qword ptr [rsp + 0x38], rax  ; 0x140008e0a
    cmp qword ptr [rdi + 0x58], r15  ; 0x140008e0f
    je 0x140008e31  ; 0x140008e13
    mov dword ptr [rsp + 0xb0], 1  ; 0x140008e15
    call 0x140006a38  ; 0x140008e20
    mov rcx, qword ptr [rax + 0x70]  ; 0x140008e25
    mov qword ptr [rsp + 0xc8], rcx  ; 0x140008e29
    mov r8d, 0x100  ; 0x140008e31
    mov rdx, r14  ; 0x140008e37
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140008e3a
    call 0x14000aec0  ; 0x140008e3f
    mov rbx, rax  ; 0x140008e44
    mov qword ptr [rsp + 0x28], rax  ; 0x140008e47
    mov rdi, qword ptr [rsp + 0xc0]  ; 0x140008e4c
    jmp 0x140008ece  ; 0x140008e54
    mov dword ptr [rsp + 0x20], 1  ; 0x140008e56
    call 0x140006a38  ; 0x140008e5e
    and dword ptr [rax + 0x40], 0  ; 0x140008e63
    mov rsi, qword ptr [rsp + 0xb8]  ; 0x140008e67
    cmp dword ptr [rsp + 0xb0], 0  ; 0x140008e6f
    je 0x140008e9a  ; 0x140008e77
    mov dl, 1  ; 0x140008e79
    mov rcx, rsi  ; 0x140008e7b
    call 0x1400068b4  ; 0x140008e7e
    mov rcx, qword ptr [rsp + 0xc8]  ; 0x140008e83
    lea r9, [rcx + 0x20]  ; 0x140008e8b
    mov r8d, dword ptr [rcx + 0x18]  ; 0x140008e8f
    mov edx, dword ptr [rcx + 4]  ; 0x140008e93
    mov ecx, dword ptr [rcx]  ; 0x140008e96
    jmp 0x140008ea7  ; 0x140008e98
    lea r9, [rsi + 0x20]  ; 0x140008e9a
    mov r8d, dword ptr [rsi + 0x18]  ; 0x140008e9e
    mov edx, dword ptr [rsi + 4]  ; 0x140008ea2
    mov ecx, dword ptr [rsi]  ; 0x140008ea5
    call qword ptr [rip + 0x151eb]  ; 0x140008ea7
    mov r15d, dword ptr [rsp + 0x20]  ; 0x140008ead
    mov rbx, qword ptr [rsp + 0x28]  ; 0x140008eb2
    mov r13, qword ptr [rsp + 0x40]  ; 0x140008eb7
    mov rdi, qword ptr [rsp + 0xc0]  ; 0x140008ebc
    mov r14, qword ptr [rsp + 0x50]  ; 0x140008ec4
    mov r12, qword ptr [rsp + 0x38]  ; 0x140008ec9
    mov rcx, r12  ; 0x140008ece
    call 0x14000643c  ; 0x140008ed1
    test r15d, r15d  ; 0x140008ed6
    jne 0x140008f0d  ; 0x140008ed9
    cmp dword ptr [rsi], 0xe06d7363  ; 0x140008edb
    jne 0x140008f0d  ; 0x140008ee1
    cmp dword ptr [rsi + 0x18], 4  ; 0x140008ee3
    jne 0x140008f0d  ; 0x140008ee7
    mov eax, dword ptr [rsi + 0x20]  ; 0x140008ee9
    sub eax, 0x19930520  ; 0x140008eec
    cmp eax, 2  ; 0x140008ef1
    ja 0x140008f0d  ; 0x140008ef4
    mov rcx, qword ptr [rsi + 0x28]  ; 0x140008ef6
    call 0x140006928  ; 0x140008efa
    test eax, eax  ; 0x140008eff
    je 0x140008f0d  ; 0x140008f01
    mov dl, 1  ; 0x140008f03
    mov rcx, rsi  ; 0x140008f05
    call 0x1400068b4  ; 0x140008f08
    call 0x140006a38  ; 0x140008f0d
    mov qword ptr [rax + 0x20], rdi  ; 0x140008f12
    call 0x140006a38  ; 0x140008f16
    mov qword ptr [rax + 0x28], r13  ; 0x140008f1b
    mov rax, qword ptr [rsp + 0x30]  ; 0x140008f1f
    movsxd rcx, dword ptr [rax + 0x1c]  ; 0x140008f24
    mov rax, qword ptr [r14]  ; 0x140008f28
    mov qword ptr [rcx + rax], 0xfffffffffffffffe  ; 0x140008f2b
    mov rax, rbx  ; 0x140008f33
    add rsp, 0x70  ; 0x140008f36
    pop r15  ; 0x140008f3a
    pop r14  ; 0x140008f3c
    pop r13  ; 0x140008f3e
    pop r12  ; 0x140008f40
    pop rdi  ; 0x140008f42
    pop rsi  ; 0x140008f43
    pop rbx  ; 0x140008f44
    ret  ; 0x140008f45
    int3   ; 0x140008f46
    int3   ; 0x140008f47
    mov rax, rsp  ; 0x140008f48
    push rbx  ; 0x140008f4b
    push rsi  ; 0x140008f4c
    push rdi  ; 0x140008f4d
    push r12  ; 0x140008f4e
    push r13  ; 0x140008f50
    push r15  ; 0x140008f52
    sub rsp, 0xa8  ; 0x140008f54
    mov rdi, rcx  ; 0x140008f5b
    xor r12d, r12d  ; 0x140008f5e
    mov dword ptr [rsp + 0x20], r12d  ; 0x140008f61
    and dword ptr [rsp + 0xf0], r12d  ; 0x140008f66
    and qword ptr [rsp + 0x28], r12  ; 0x140008f6e
    and qword ptr [rsp + 0x40], r12  ; 0x140008f73
    mov byte ptr [rax - 0x80], r12b  ; 0x140008f78
    and dword ptr [rax - 0x7c], r12d  ; 0x140008f7c
    and dword ptr [rax - 0x78], r12d  ; 0x140008f80
    and dword ptr [rax - 0x74], r12d  ; 0x140008f84
    and dword ptr [rax - 0x70], r12d  ; 0x140008f88
    and dword ptr [rax - 0x6c], r12d  ; 0x140008f8c
    call 0x140006a38  ; 0x140008f90
    mov rax, qword ptr [rax + 0x28]  ; 0x140008f95
    mov qword ptr [rsp + 0x38], rax  ; 0x140008f99
    call 0x140006a38  ; 0x140008f9e
    mov rax, qword ptr [rax + 0x20]  ; 0x140008fa3
    mov qword ptr [rsp + 0x30], rax  ; 0x140008fa7
    mov rsi, qword ptr [rdi + 0x50]  ; 0x140008fac
    mov qword ptr [rsp + 0xf8], rsi  ; 0x140008fb0
    mov rbx, qword ptr [rdi + 0x40]  ; 0x140008fb8
    mov rax, qword ptr [rdi + 0x30]  ; 0x140008fbc
    mov qword ptr [rsp + 0x50], rax  ; 0x140008fc0
    mov r15, qword ptr [rdi + 0x28]  ; 0x140008fc5
    mov rax, qword ptr [rdi + 0x48]  ; 0x140008fc9
    mov qword ptr [rsp + 0x70], rax  ; 0x140008fcd
    mov rax, qword ptr [rdi + 0x68]  ; 0x140008fd2
    mov qword ptr [rsp + 0x78], rax  ; 0x140008fd6
    mov eax, dword ptr [rdi + 0x78]  ; 0x140008fdb
    mov dword ptr [rsp + 0xe8], eax  ; 0x140008fde
    mov eax, dword ptr [rdi + 0x38]  ; 0x140008fe5
    mov dword ptr [rsp + 0xe0], eax  ; 0x140008fe8
    mov rcx, rbx  ; 0x140008fef
    call 0x140009d24  ; 0x140008ff2
    call 0x140006a38  ; 0x140008ff7
    mov qword ptr [rax + 0x20], rsi  ; 0x140008ffc
    call 0x140006a38  ; 0x140009000
    mov qword ptr [rax + 0x28], rbx  ; 0x140009005
    call 0x140006a38  ; 0x140009009
    mov rdx, qword ptr [rax + 0x20]  ; 0x14000900e
    mov rdx, qword ptr [rdx + 0x28]  ; 0x140009012
    lea rcx, [rsp + 0x88]  ; 0x140009016
    call 0x140006400  ; 0x14000901e
    mov r13, rax  ; 0x140009023
    mov qword ptr [rsp + 0x48], rax  ; 0x140009026
    cmp qword ptr [rdi + 0x58], r12  ; 0x14000902b
    je 0x14000904a  ; 0x14000902f
    mov dword ptr [rsp + 0xf0], 1  ; 0x140009031
    call 0x140006a38  ; 0x14000903c
    mov rcx, qword ptr [rax + 0x70]  ; 0x140009041
    mov qword ptr [rsp + 0x40], rcx  ; 0x140009045
    mov r8d, 0x100  ; 0x14000904a
    mov rdx, r15  ; 0x140009050
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140009053
    call 0x14000af00  ; 0x140009058
    mov rbx, rax  ; 0x14000905d
    mov qword ptr [rsp + 0x28], rax  ; 0x140009060
    cmp rax, 2  ; 0x140009065
    jge 0x14000907e  ; 0x140009069
    mov rbx, qword ptr [rsp + rax*8 + 0x70]  ; 0x14000906b
    test rbx, rbx  ; 0x140009070
    je 0x140009191  ; 0x140009073
    mov qword ptr [rsp + 0x28], rbx  ; 0x140009079
    mov rdx, r15  ; 0x14000907e
    mov rcx, rbx  ; 0x140009081
    call 0x14000af30  ; 0x140009084
    mov rdi, qword ptr [rsp + 0x38]  ; 0x140009089
    mov r15, qword ptr [rsp + 0x30]  ; 0x14000908e
    jmp 0x140009111  ; 0x140009093
    mov dword ptr [rsp + 0x20], 1  ; 0x140009095
    call 0x140006a38  ; 0x14000909d
    and dword ptr [rax + 0x40], 0  ; 0x1400090a2
    call 0x140006a38  ; 0x1400090a6
    mov ecx, dword ptr [rsp + 0xe8]  ; 0x1400090ab
    mov dword ptr [rax + 0x78], ecx  ; 0x1400090b2
    mov rsi, qword ptr [rsp + 0xf8]  ; 0x1400090b5
    cmp dword ptr [rsp + 0xf0], 0  ; 0x1400090bd
    je 0x1400090e5  ; 0x1400090c5
    mov dl, 1  ; 0x1400090c7
    mov rcx, rsi  ; 0x1400090c9
    call 0x1400068b4  ; 0x1400090cc
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400090d1
    lea r9, [rcx + 0x20]  ; 0x1400090d6
    mov r8d, dword ptr [rcx + 0x18]  ; 0x1400090da
    mov edx, dword ptr [rcx + 4]  ; 0x1400090de
    mov ecx, dword ptr [rcx]  ; 0x1400090e1
    jmp 0x1400090f2  ; 0x1400090e3
    lea r9, [rsi + 0x20]  ; 0x1400090e5
    mov r8d, dword ptr [rsi + 0x18]  ; 0x1400090e9
    mov edx, dword ptr [rsi + 4]  ; 0x1400090ed
    mov ecx, dword ptr [rsi]  ; 0x1400090f0
    call qword ptr [rip + 0x14fa0]  ; 0x1400090f2
    mov r12d, dword ptr [rsp + 0x20]  ; 0x1400090f8
    mov rbx, qword ptr [rsp + 0x28]  ; 0x1400090fd
    mov rdi, qword ptr [rsp + 0x38]  ; 0x140009102
    mov r15, qword ptr [rsp + 0x30]  ; 0x140009107
    mov r13, qword ptr [rsp + 0x48]  ; 0x14000910c
    mov rcx, r13  ; 0x140009111
    call 0x14000643c  ; 0x140009114
    test r12d, r12d  ; 0x140009119
    jne 0x140009150  ; 0x14000911c
    cmp dword ptr [rsi], 0xe06d7363  ; 0x14000911e
    jne 0x140009150  ; 0x140009124
    cmp dword ptr [rsi + 0x18], 4  ; 0x140009126
    jne 0x140009150  ; 0x14000912a
    mov eax, dword ptr [rsi + 0x20]  ; 0x14000912c
    sub eax, 0x19930520  ; 0x14000912f
    cmp eax, 2  ; 0x140009134
    ja 0x140009150  ; 0x140009137
    mov rcx, qword ptr [rsi + 0x28]  ; 0x140009139
    call 0x140006928  ; 0x14000913d
    test eax, eax  ; 0x140009142
    je 0x140009150  ; 0x140009144
    mov dl, 1  ; 0x140009146
    mov rcx, rsi  ; 0x140009148
    call 0x1400068b4  ; 0x14000914b
    call 0x140006a38  ; 0x140009150
    mov qword ptr [rax + 0x20], r15  ; 0x140009155
    call 0x140006a38  ; 0x140009159
    mov qword ptr [rax + 0x28], rdi  ; 0x14000915e
    call 0x140006a38  ; 0x140009162
    mov ecx, dword ptr [rsp + 0xe0]  ; 0x140009167
    mov dword ptr [rax + 0x78], ecx  ; 0x14000916e
    call 0x140006a38  ; 0x140009171
    mov dword ptr [rax + 0x78], 0xfffffffe  ; 0x140009176
    mov rax, rbx  ; 0x14000917d
    add rsp, 0xa8  ; 0x140009180
    pop r15  ; 0x140009187
    pop r13  ; 0x140009189
    pop r12  ; 0x14000918b
    pop rdi  ; 0x14000918d
    pop rsi  ; 0x14000918e
    pop rbx  ; 0x14000918f
    ret  ; 0x140009190
    call 0x140010040  ; 0x140009191
    nop  ; 0x140009196
    int3   ; 0x140009197
    xor eax, eax  ; 0x140009198
    lea r11, [rip - 0x91a1]  ; 0x14000919a
    mov byte ptr [rcx + 0x18], al  ; 0x1400091a1
    xorps xmm0, xmm0  ; 0x1400091a4
    mov qword ptr [rcx + 0x1c], rax  ; 0x1400091a7
    mov r8, rcx  ; 0x1400091ab
    mov qword ptr [rcx + 0x24], rax  ; 0x1400091ae
    movups xmmword ptr [rcx + 0x30], xmm0  ; 0x1400091b2
    mov rax, qword ptr [rcx + 8]  ; 0x1400091b6
    mov r9b, byte ptr [rax]  ; 0x1400091ba
    lea rdx, [rax + 1]  ; 0x1400091bd
    mov byte ptr [rcx + 0x18], r9b  ; 0x1400091c1
    mov qword ptr [rcx + 8], rdx  ; 0x1400091c5
    test r9b, 1  ; 0x1400091c9
    je 0x1400091f6  ; 0x1400091cd
    movzx ecx, byte ptr [rdx]  ; 0x1400091cf
    and ecx, 0xf  ; 0x1400091d2
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x1400091d5
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x1400091de
    sub rdx, rax  ; 0x1400091e6
    mov eax, dword ptr [rdx - 4]  ; 0x1400091e9
    shr eax, cl  ; 0x1400091ec
    mov dword ptr [r8 + 0x1c], eax  ; 0x1400091ee
    mov qword ptr [r8 + 8], rdx  ; 0x1400091f2
    test r9b, 2  ; 0x1400091f6
    je 0x14000920a  ; 0x1400091fa
    mov eax, dword ptr [rdx]  ; 0x1400091fc
    add rdx, 4  ; 0x1400091fe
    mov qword ptr [r8 + 8], rdx  ; 0x140009202
    mov dword ptr [r8 + 0x20], eax  ; 0x140009206
    test r9b, 4  ; 0x14000920a
    je 0x140009237  ; 0x14000920e
    movzx ecx, byte ptr [rdx]  ; 0x140009210
    and ecx, 0xf  ; 0x140009213
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x140009216
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x14000921f
    sub rdx, rax  ; 0x140009227
    mov eax, dword ptr [rdx - 4]  ; 0x14000922a
    shr eax, cl  ; 0x14000922d
    mov dword ptr [r8 + 0x24], eax  ; 0x14000922f
    mov qword ptr [r8 + 8], rdx  ; 0x140009233
    mov eax, dword ptr [rdx]  ; 0x140009237
    lea r10, [rdx + 4]  ; 0x140009239
    mov dword ptr [r8 + 0x28], eax  ; 0x14000923d
    mov cl, 0x30  ; 0x140009241
    mov al, r9b  ; 0x140009243
    mov qword ptr [r8 + 8], r10  ; 0x140009246
    and al, cl  ; 0x14000924a
    test r9b, 8  ; 0x14000924c
    je 0x140009292  ; 0x140009250
    cmp al, 0x10  ; 0x140009252
    jne 0x140009266  ; 0x140009254
    movsxd rcx, dword ptr [r10]  ; 0x140009256
    lea rax, [r10 + 4]  ; 0x140009259
    mov qword ptr [r8 + 8], rax  ; 0x14000925d
    mov qword ptr [r8 + 0x30], rcx  ; 0x140009261
    ret  ; 0x140009265
    and r9b, cl  ; 0x140009266
    cmp r9b, 0x20  ; 0x140009269
    jne 0x14000932b  ; 0x14000926d
    movsxd rax, dword ptr [r10]  ; 0x140009273
    lea rdx, [r10 + 4]  ; 0x140009276
    mov qword ptr [r8 + 8], rdx  ; 0x14000927a
    mov qword ptr [r8 + 0x30], rax  ; 0x14000927e
    lea rax, [rdx + 4]  ; 0x140009282
    movsxd rcx, dword ptr [rdx]  ; 0x140009286
    mov qword ptr [r8 + 8], rax  ; 0x140009289
    jmp 0x140009327  ; 0x14000928d
    cmp al, 0x10  ; 0x140009292
    jne 0x1400092c6  ; 0x140009294
    movzx ecx, byte ptr [r10]  ; 0x140009296
    and ecx, 0xf  ; 0x14000929a
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x14000929d
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x1400092a6
    sub r10, rax  ; 0x1400092ae
    mov eax, dword ptr [r8 + 0x48]  ; 0x1400092b1
    mov edx, dword ptr [r10 - 4]  ; 0x1400092b5
    shr edx, cl  ; 0x1400092b9
    add eax, edx  ; 0x1400092bb
    mov qword ptr [r8 + 8], r10  ; 0x1400092bd
    mov qword ptr [r8 + 0x30], rax  ; 0x1400092c1
    ret  ; 0x1400092c5
    and r9b, cl  ; 0x1400092c6
    cmp r9b, 0x20  ; 0x1400092c9
    jne 0x14000932b  ; 0x1400092cd
    movzx ecx, byte ptr [r10]  ; 0x1400092cf
    mov edx, dword ptr [r8 + 0x48]  ; 0x1400092d3
    and ecx, 0xf  ; 0x1400092d7
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x1400092da
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x1400092e3
    sub r10, rax  ; 0x1400092eb
    mov eax, dword ptr [r10 - 4]  ; 0x1400092ee
    shr eax, cl  ; 0x1400092f2
    mov qword ptr [r8 + 8], r10  ; 0x1400092f4
    lea ecx, [rdx + rax]  ; 0x1400092f8
    mov qword ptr [r8 + 0x30], rcx  ; 0x1400092fb
    movzx ecx, byte ptr [r10]  ; 0x1400092ff
    and ecx, 0xf  ; 0x140009303
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x140009306
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x14000930f
    sub r10, rax  ; 0x140009317
    mov eax, dword ptr [r10 - 4]  ; 0x14000931a
    shr eax, cl  ; 0x14000931e
    mov qword ptr [r8 + 8], r10  ; 0x140009320
    lea ecx, [rdx + rax]  ; 0x140009324
    mov qword ptr [r8 + 0x38], rcx  ; 0x140009327
    ret  ; 0x14000932b
    push rbx  ; 0x14000932c
    sub rsp, 0x20  ; 0x14000932e
    mov r9, qword ptr [rcx]  ; 0x140009332
    mov rbx, r8  ; 0x140009335
    and dword ptr [r8], 0  ; 0x140009338
    mov ecx, 0xe06d7363  ; 0x14000933c
    cmp dword ptr [r9], ecx  ; 0x140009341
    jne 0x1400093a7  ; 0x140009344
    cmp dword ptr [r9 + 0x18], 4  ; 0x140009346
    mov r8d, 0x19930520  ; 0x14000934b
    jne 0x14000936f  ; 0x140009351
    mov eax, dword ptr [r9 + 0x20]  ; 0x140009353
    sub eax, r8d  ; 0x140009357
    cmp eax, 2  ; 0x14000935a
    ja 0x14000936f  ; 0x14000935d
    mov rax, qword ptr [rdx + 0x28]  ; 0x14000935f
    cmp qword ptr [r9 + 0x28], rax  ; 0x140009363
    jne 0x14000936f  ; 0x140009367
    mov dword ptr [rbx], 1  ; 0x140009369
    cmp dword ptr [r9], ecx  ; 0x14000936f
    jne 0x1400093a7  ; 0x140009372
    cmp dword ptr [r9 + 0x18], 4  ; 0x140009374
    jne 0x1400093a7  ; 0x140009379
    mov ecx, dword ptr [r9 + 0x20]  ; 0x14000937b
    sub ecx, r8d  ; 0x14000937f
    cmp ecx, 2  ; 0x140009382
    ja 0x1400093a7  ; 0x140009385
    cmp qword ptr [r9 + 0x30], 0  ; 0x140009387
    jne 0x1400093a7  ; 0x14000938c
    call 0x140006a38  ; 0x14000938e
    mov dword ptr [rax + 0x40], 1  ; 0x140009393
    mov eax, 1  ; 0x14000939a
    mov dword ptr [rbx], 1  ; 0x14000939f
    jmp 0x1400093a9  ; 0x1400093a5
    xor eax, eax  ; 0x1400093a7
    add rsp, 0x20  ; 0x1400093a9
    pop rbx  ; 0x1400093ad
    ret  ; 0x1400093ae
    int3   ; 0x1400093af
    mov qword ptr [rsp + 8], rbx  ; 0x1400093b0
    push rdi  ; 0x1400093b5
    sub rsp, 0x20  ; 0x1400093b6
    mov edi, r8d  ; 0x1400093ba
    mov r8, r9  ; 0x1400093bd
    call 0x14000932c  ; 0x1400093c0
    mov ebx, eax  ; 0x1400093c5
    test eax, eax  ; 0x1400093c7
    jne 0x1400093d3  ; 0x1400093c9
    call 0x140006a38  ; 0x1400093cb
    mov dword ptr [rax + 0x78], edi  ; 0x1400093d0
    mov eax, ebx  ; 0x1400093d3
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400093d5
    add rsp, 0x20  ; 0x1400093da
    pop rdi  ; 0x1400093de
    ret  ; 0x1400093df
    mov dword ptr [rsp + 0x20], r9d  ; 0x1400093e0
    mov qword ptr [rsp + 0x18], r8  ; 0x1400093e5
    mov qword ptr [rsp + 8], rcx  ; 0x1400093ea
    push rbx  ; 0x1400093ef
    push rsi  ; 0x1400093f0
    push rdi  ; 0x1400093f1
    push r12  ; 0x1400093f2
    push r13  ; 0x1400093f4
    push r14  ; 0x1400093f6
    push r15  ; 0x1400093f8
    sub rsp, 0x30  ; 0x1400093fa
    mov r12d, r9d  ; 0x1400093fe
    mov rsi, r8  ; 0x140009401
    mov rbx, rdx  ; 0x140009404
    mov r15, rcx  ; 0x140009407
    call 0x140006490  ; 0x14000940a
    mov r13, rax  ; 0x14000940f
    mov qword ptr [rsp + 0x28], rax  ; 0x140009412
    mov r8, rsi  ; 0x140009417
    mov rdx, rbx  ; 0x14000941a
    mov rcx, r15  ; 0x14000941d
    call 0x140006b80  ; 0x140009420
    mov edi, eax  ; 0x140009425
    call 0x140006a38  ; 0x140009427
    inc dword ptr [rax + 0x30]  ; 0x14000942c
    cmp edi, -1  ; 0x14000942f
    je 0x140009523  ; 0x140009432
    cmp edi, r12d  ; 0x140009438
    jle 0x140009523  ; 0x14000943b
    cmp edi, -1  ; 0x140009441
    jle 0x14000955e  ; 0x140009444
    cmp edi, dword ptr [rsi + 4]  ; 0x14000944a
    jge 0x14000955e  ; 0x14000944d
    movsxd r14, edi  ; 0x140009453
    call 0x140006490  ; 0x140009456
    movsxd rcx, dword ptr [rsi + 8]  ; 0x14000945b
    lea rax, [rax + r14*8]  ; 0x14000945f
    mov edi, dword ptr [rcx + rax]  ; 0x140009463
    mov dword ptr [rsp + 0x20], edi  ; 0x140009466
    call 0x140006490  ; 0x14000946a
    movsxd rcx, dword ptr [rsi + 8]  ; 0x14000946f
    lea rax, [rax + r14*8]  ; 0x140009473
    cmp dword ptr [rcx + rax + 4], 0  ; 0x140009477
    je 0x14000949a  ; 0x14000947c
    call 0x140006490  ; 0x14000947e
    movsxd rcx, dword ptr [rsi + 8]  ; 0x140009483
    lea rax, [rax + r14*8]  ; 0x140009487
    movsxd rbx, dword ptr [rcx + rax + 4]  ; 0x14000948b
    call 0x140006490  ; 0x140009490
    add rax, rbx  ; 0x140009495
    jmp 0x14000949c  ; 0x140009498
    xor eax, eax  ; 0x14000949a
    test rax, rax  ; 0x14000949c
    je 0x1400094fa  ; 0x14000949f
    mov r8d, edi  ; 0x1400094a1
    mov rdx, rsi  ; 0x1400094a4
    mov rcx, r15  ; 0x1400094a7
    call 0x140006bd4  ; 0x1400094aa
    call 0x140006490  ; 0x1400094af
    movsxd rcx, dword ptr [rsi + 8]  ; 0x1400094b4
    lea rax, [rax + r14*8]  ; 0x1400094b8
    cmp dword ptr [rcx + rax + 4], 0  ; 0x1400094bc
    je 0x1400094df  ; 0x1400094c1
    call 0x140006490  ; 0x1400094c3
    movsxd rcx, dword ptr [rsi + 8]  ; 0x1400094c8
    lea rax, [rax + r14*8]  ; 0x1400094cc
    movsxd rbx, dword ptr [rcx + rax + 4]  ; 0x1400094d0
    call 0x140006490  ; 0x1400094d5
    add rax, rbx  ; 0x1400094da
    jmp 0x1400094e1  ; 0x1400094dd
    xor eax, eax  ; 0x1400094df
    mov r8d, 0x103  ; 0x1400094e1
    mov rdx, r15  ; 0x1400094e7
    mov rcx, rax  ; 0x1400094ea
    call 0x14000aec0  ; 0x1400094ed
    mov rcx, r13  ; 0x1400094f2
    call 0x1400064b8  ; 0x1400094f5
    jmp 0x14000951a  ; 0x1400094fa
    mov r12d, dword ptr [rsp + 0x88]  ; 0x1400094fc
    mov rsi, qword ptr [rsp + 0x80]  ; 0x140009504
    mov r15, qword ptr [rsp + 0x70]  ; 0x14000950c
    mov r13, qword ptr [rsp + 0x28]  ; 0x140009511
    mov edi, dword ptr [rsp + 0x20]  ; 0x140009516
    mov dword ptr [rsp + 0x24], edi  ; 0x14000951a
    jmp 0x14000942f  ; 0x14000951e
    call 0x140006a38  ; 0x140009523
    cmp dword ptr [rax + 0x30], 0  ; 0x140009528
    jle 0x140009536  ; 0x14000952c
    call 0x140006a38  ; 0x14000952e
    dec dword ptr [rax + 0x30]  ; 0x140009533
    cmp edi, -1  ; 0x140009536
    je 0x140009540  ; 0x140009539
    cmp edi, r12d  ; 0x14000953b
    jg 0x140009564  ; 0x14000953e
    mov r8d, edi  ; 0x140009540
    mov rdx, rsi  ; 0x140009543
    mov rcx, r15  ; 0x140009546
    call 0x140006bd4  ; 0x140009549
    add rsp, 0x30  ; 0x14000954e
    pop r15  ; 0x140009552
    pop r14  ; 0x140009554
    pop r13  ; 0x140009556
    pop r12  ; 0x140009558
    pop rdi  ; 0x14000955a
    pop rsi  ; 0x14000955b
    pop rbx  ; 0x14000955c
    ret  ; 0x14000955d
    call 0x140010040  ; 0x14000955e
    nop  ; 0x140009563
    call 0x140010040  ; 0x140009564
    nop  ; 0x140009569
    int3   ; 0x14000956a
    int3   ; 0x14000956b
    mov rax, rsp  ; 0x14000956c
    push rbx  ; 0x14000956f
    push rsi  ; 0x140009570
    push rdi  ; 0x140009571
    push r12  ; 0x140009572
    push r13  ; 0x140009574
    push r14  ; 0x140009576
    push r15  ; 0x140009578
    sub rsp, 0x100  ; 0x14000957a
    movaps xmmword ptr [rax - 0x48], xmm6  ; 0x140009581
    mov rax, qword ptr [rip + 0x20a74]  ; 0x140009585
    xor rax, rsp  ; 0x14000958c
    mov qword ptr [rsp + 0xe0], rax  ; 0x14000958f
    mov r13d, r9d  ; 0x140009597
    mov rbx, r8  ; 0x14000959a
    mov rsi, rdx  ; 0x14000959d
    mov r12, rcx  ; 0x1400095a0
    mov qword ptr [rsp + 0x70], rcx  ; 0x1400095a3
    mov qword ptr [rsp + 0x60], rcx  ; 0x1400095a8
    mov dword ptr [rsp + 0x48], r9d  ; 0x1400095ad
    call 0x140006490  ; 0x1400095b2
    mov qword ptr [rsp + 0x68], rax  ; 0x1400095b7
    mov rdx, rsi  ; 0x1400095bc
    mov rcx, rbx  ; 0x1400095bf
    call 0x140006c24  ; 0x1400095c2
    mov edi, eax  ; 0x1400095c7
    lea r14, [rsi + 0x48]  ; 0x1400095c9
    mov qword ptr [rsp + 0x78], r14  ; 0x1400095cd
    cmp dword ptr [r14], 0  ; 0x1400095d2
    je 0x1400095ef  ; 0x1400095d6
    call 0x140006a38  ; 0x1400095d8
    cmp dword ptr [rax + 0x78], -2  ; 0x1400095dd
    jne 0x14000986d  ; 0x1400095e1
    mov edi, dword ptr [r14]  ; 0x1400095e7
    sub edi, 2  ; 0x1400095ea
    jmp 0x14000960e  ; 0x1400095ed
    call 0x140006a38  ; 0x1400095ef
    cmp dword ptr [rax + 0x78], -2  ; 0x1400095f4
    je 0x14000960e  ; 0x1400095f8
    call 0x140006a38  ; 0x1400095fa
    mov edi, dword ptr [rax + 0x78]  ; 0x1400095ff
    call 0x140006a38  ; 0x140009602
    mov dword ptr [rax + 0x78], 0xfffffffe  ; 0x140009607
    call 0x140006a38  ; 0x14000960e
    inc dword ptr [rax + 0x30]  ; 0x140009613
    add rsi, 8  ; 0x140009616
    mov qword ptr [rsp + 0x80], rsi  ; 0x14000961a
    xor edx, edx  ; 0x140009622
    mov qword ptr [rsp + 0xc8], rdx  ; 0x140009624
    xorps xmm0, xmm0  ; 0x14000962c
    movups xmmword ptr [rsp + 0xd0], xmm0  ; 0x14000962f
    cmp dword ptr [rbx + 8], edx  ; 0x140009637
    je 0x14000967b  ; 0x14000963a
    movsxd rdx, dword ptr [rbx + 8]  ; 0x14000963c
    add rdx, qword ptr [rsi]  ; 0x140009640
    movzx ecx, byte ptr [rdx]  ; 0x140009643
    and ecx, 0xf  ; 0x140009646
    lea r8, [rip - 0x9650]  ; 0x140009649
    movsx rax, byte ptr [rcx + r8 + 0x1e610]  ; 0x140009650
    movzx ecx, byte ptr [rcx + r8 + 0x1e620]  ; 0x140009659
    sub rdx, rax  ; 0x140009662
    mov eax, dword ptr [rdx - 4]  ; 0x140009665
    shr eax, cl  ; 0x140009668
    mov dword ptr [rsp + 0xc0], eax  ; 0x14000966a
    mov qword ptr [rsp + 0xc8], rdx  ; 0x140009671
    jmp 0x140009682  ; 0x140009679
    and dword ptr [rsp + 0xc0], edx  ; 0x14000967b
    lea rax, [rsp + 0xc0]  ; 0x140009682
    mov qword ptr [rsp + 0x30], rax  ; 0x14000968a
    mov qword ptr [rsp + 0x38], rdx  ; 0x14000968f
    lea rax, [rsp + 0xc0]  ; 0x140009694
    mov qword ptr [rsp + 0x50], rax  ; 0x14000969c
    mov qword ptr [rsp + 0x58], rdx  ; 0x1400096a1
    lea rax, [rsp + 0x50]  ; 0x1400096a6
    mov qword ptr [rsp + 0x20], rax  ; 0x1400096ab
    lea r9, [rsp + 0x30]  ; 0x1400096b0
    mov r8d, r13d  ; 0x1400096b5
    mov edx, edi  ; 0x1400096b8
    lea rcx, [rsp + 0xc0]  ; 0x1400096ba
    call 0x140009b3c  ; 0x1400096c2
    nop  ; 0x1400096c7
    lea rax, [rsp + 0xc0]  ; 0x1400096c8
    mov qword ptr [rsp + 0x88], rax  ; 0x1400096d0
    mov rax, qword ptr [rsp + 0xc8]  ; 0x1400096d8
    mov qword ptr [rsp + 0x90], rax  ; 0x1400096e0
    mov r15, qword ptr [rsp + 0x38]  ; 0x1400096e8
    cmp r15, rax  ; 0x1400096ed
    jb 0x14000982f  ; 0x1400096f0
    cmp r15, qword ptr [rsp + 0x58]  ; 0x1400096f6
    jbe 0x14000982f  ; 0x1400096fb
    lea rdx, [rsp + 0x38]  ; 0x140009701
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140009706
    call 0x140009a84  ; 0x14000970b
    mov qword ptr [rsp + 0x38], r15  ; 0x140009710
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140009715
    movups xmm6, xmmword ptr [rbx + 0x10]  ; 0x14000971a
    movups xmmword ptr [rsp + 0xb0], xmm6  ; 0x14000971e
    movaps xmm0, xmmword ptr [rsp + 0x30]  ; 0x140009726
    movdqa xmmword ptr [rsp + 0xa0], xmm0  ; 0x14000972b
    lea rdx, [rsp + 0x38]  ; 0x140009734
    mov rcx, rbx  ; 0x140009739
    call 0x140009a84  ; 0x14000973c
    mov eax, dword ptr [rbx + 0x10]  ; 0x140009741
    sub r15, rax  ; 0x140009744
    mov qword ptr [rsp + 0x38], r15  ; 0x140009747
    lea rax, [rsp + 0x30]  ; 0x14000974c
    mov qword ptr [rsp + 0x20], rax  ; 0x140009751
    mov r9d, edi  ; 0x140009756
    lea r8, [rsp + 0xa0]  ; 0x140009759
    mov edx, r13d  ; 0x140009761
    lea rcx, [rsp + 0x50]  ; 0x140009764
    call 0x140009c0c  ; 0x140009769
    mov edi, eax  ; 0x14000976e
    mov dword ptr [rsp + 0x44], eax  ; 0x140009770
    and dword ptr [rsp + 0x40], 0  ; 0x140009774
    xor r9d, r9d  ; 0x140009779
    movdqa xmm0, xmm6  ; 0x14000977c
    psrldq xmm0, 8  ; 0x140009780
    movd eax, xmm0  ; 0x140009785
    movdqa xmm1, xmm6  ; 0x140009789
    psrldq xmm1, 4  ; 0x14000978d
    movd ecx, xmm1  ; 0x140009792
    test ecx, ecx  ; 0x140009796
    cmovne r9d, eax  ; 0x140009798
    mov dword ptr [rsp + 0x40], r9d  ; 0x14000979c
    test r9d, r9d  ; 0x1400097a1
    je 0x14000982a  ; 0x1400097a4
    lea eax, [rdi + 2]  ; 0x1400097aa
    mov dword ptr [r14], eax  ; 0x1400097ad
    lea eax, [rcx - 1]  ; 0x1400097b0
    cmp eax, 1  ; 0x1400097b3
    jbe 0x1400097ce  ; 0x1400097b6
    movsxd rcx, r9d  ; 0x1400097b8
    add rcx, qword ptr [rsi]  ; 0x1400097bb
    mov r8d, 0x103  ; 0x1400097be
    mov rdx, r12  ; 0x1400097c4
    call 0x14000aec0  ; 0x1400097c7
    jmp 0x140009803  ; 0x1400097cc
    mov rax, qword ptr [rsp + 0x60]  ; 0x1400097ce
    mov rdx, qword ptr [rax]  ; 0x1400097d3
    psrldq xmm6, 0xc  ; 0x1400097d6
    cmp ecx, 2  ; 0x1400097db
    jne 0x1400097ea  ; 0x1400097de
    movd eax, xmm6  ; 0x1400097e0
    mov r8, qword ptr [rax + rdx]  ; 0x1400097e4
    jmp 0x1400097f2  ; 0x1400097e8
    movd r8d, xmm6  ; 0x1400097ea
    add r8, rdx  ; 0x1400097ef
    movsxd rcx, r9d  ; 0x1400097f2
    add rcx, qword ptr [rsi]  ; 0x1400097f5
    mov r9d, 0x103  ; 0x1400097f8
    call 0x14000af60  ; 0x1400097fe
    mov rcx, qword ptr [rsp + 0x68]  ; 0x140009803
    call 0x1400064b8  ; 0x140009808
    jmp 0x14000982a  ; 0x14000980d
    mov edi, dword ptr [rsp + 0x44]  ; 0x14000980f
    mov r12, qword ptr [rsp + 0x70]  ; 0x140009813
    mov r14, qword ptr [rsp + 0x78]  ; 0x140009818
    mov rsi, qword ptr [rsp + 0x80]  ; 0x14000981d
    mov r13d, dword ptr [rsp + 0x48]  ; 0x140009825
    jmp 0x1400096c8  ; 0x14000982a
    call 0x140006a38  ; 0x14000982f
    cmp dword ptr [rax + 0x30], 0  ; 0x140009834
    jle 0x140009842  ; 0x140009838
    call 0x140006a38  ; 0x14000983a
    dec dword ptr [rax + 0x30]  ; 0x14000983f
    mov rcx, qword ptr [rsp + 0xe0]  ; 0x140009842
    xor rcx, rsp  ; 0x14000984a
    call 0x140004a50  ; 0x14000984d
    movaps xmm6, xmmword ptr [rsp + 0xf0]  ; 0x140009852
    add rsp, 0x100  ; 0x14000985a
    pop r15  ; 0x140009861
    pop r14  ; 0x140009863
    pop r13  ; 0x140009865
    pop r12  ; 0x140009867
    pop rdi  ; 0x140009869
    pop rsi  ; 0x14000986a
    pop rbx  ; 0x14000986b
    ret  ; 0x14000986c
    call 0x140010040  ; 0x14000986d
    nop  ; 0x140009872
    int3   ; 0x140009873
    mov qword ptr [rsp + 8], rbx  ; 0x140009874
; Function: func_140009879
func_140009879:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140009879
    mov qword ptr [rsp + 0x18], rsi  ; 0x14000987e
    push rdi  ; 0x140009883
    sub rsp, 0x20  ; 0x140009884
    mov rbp, rcx  ; 0x140009888
    mov rdi, r8  ; 0x14000988b
    mov rcx, r8  ; 0x14000988e
    mov rsi, rdx  ; 0x140009891
    call 0x140006c1c  ; 0x140009894
    lea r9, [rsp + 0x48]  ; 0x140009899
    mov r8, rdi  ; 0x14000989e
    mov rdx, rsi  ; 0x1400098a1
    mov rcx, rbp  ; 0x1400098a4
    mov ebx, eax  ; 0x1400098a7
    call 0x140005c84  ; 0x1400098a9
    mov r8, rdi  ; 0x1400098ae
    mov rdx, rsi  ; 0x1400098b1
    mov rcx, rbp  ; 0x1400098b4
    call 0x140006ba8  ; 0x1400098b7
    cmp ebx, eax  ; 0x1400098bc
    jle 0x1400098e3  ; 0x1400098be
    mov r8d, ebx  ; 0x1400098c0
    lea rcx, [rsp + 0x48]  ; 0x1400098c3
    mov rdx, rdi  ; 0x1400098c8
    call 0x140006bd4  ; 0x1400098cb
    mov r9d, ebx  ; 0x1400098d0
    mov r8, rdi  ; 0x1400098d3
    mov rdx, rsi  ; 0x1400098d6
    mov rcx, rbp  ; 0x1400098d9
    call 0x140006be0  ; 0x1400098dc
    jmp 0x1400098f3  ; 0x1400098e1
    mov r8, rdi  ; 0x1400098e3
    mov rdx, rsi  ; 0x1400098e6
    mov rcx, rbp  ; 0x1400098e9
    call 0x140006ba8  ; 0x1400098ec
    mov ebx, eax  ; 0x1400098f1
    mov rbp, qword ptr [rsp + 0x38]  ; 0x1400098f3
    mov eax, ebx  ; 0x1400098f8
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400098fa
    mov rsi, qword ptr [rsp + 0x40]  ; 0x1400098ff
    add rsp, 0x20  ; 0x140009904
    pop rdi  ; 0x140009908
    ret  ; 0x140009909
    int3   ; 0x14000990a
    int3   ; 0x14000990b
    mov qword ptr [rsp + 8], rbx  ; 0x14000990c
; Function: func_140009911
func_140009911:
    mov qword ptr [rsp + 0x18], rbp  ; 0x140009911
    mov qword ptr [rsp + 0x20], rsi  ; 0x140009916
    push rdi  ; 0x14000991b
    push r12  ; 0x14000991c
    push r13  ; 0x14000991e
    push r14  ; 0x140009920
    push r15  ; 0x140009922
    sub rsp, 0x20  ; 0x140009924
    mov rbp, rdx  ; 0x140009928
    mov r13, rcx  ; 0x14000992b
    test rdx, rdx  ; 0x14000992e
    je 0x1400099f3  ; 0x140009931
    xor r15b, r15b  ; 0x140009937
    xor esi, esi  ; 0x14000993a
    cmp dword ptr [rdx], esi  ; 0x14000993c
    jle 0x1400099d3  ; 0x14000993e
    call 0x1400064a4  ; 0x140009944
    mov rdx, rax  ; 0x140009949
    mov rax, qword ptr [r13 + 0x30]  ; 0x14000994c
    movsxd r12, dword ptr [rax + 0xc]  ; 0x140009950
    add r12, 4  ; 0x140009954
    add r12, rdx  ; 0x140009958
    call 0x1400064a4  ; 0x14000995b
    mov rdx, rax  ; 0x140009960
    mov rax, qword ptr [r13 + 0x30]  ; 0x140009963
    movsxd rcx, dword ptr [rax + 0xc]  ; 0x140009967
    mov r14d, dword ptr [rdx + rcx]  ; 0x14000996b
    test r14d, r14d  ; 0x14000996f
    jle 0x1400099c8  ; 0x140009972
    movsxd rax, esi  ; 0x140009974
    lea rax, [rax + rax*4]  ; 0x140009977
    mov qword ptr [rsp + 0x58], rax  ; 0x14000997b
    call 0x1400064a4  ; 0x140009980
    mov rbx, qword ptr [r13 + 0x30]  ; 0x140009985
    mov rdi, rax  ; 0x140009989
    movsxd rax, dword ptr [r12]  ; 0x14000998c
    add rdi, rax  ; 0x140009990
    call 0x140006490  ; 0x140009993
    mov rdx, qword ptr [rsp + 0x58]  ; 0x140009998
    mov r8, rbx  ; 0x14000999d
    movsxd rcx, dword ptr [rbp + 4]  ; 0x1400099a0
    lea rax, [rax + rdx*4]  ; 0x1400099a4
    mov rdx, rdi  ; 0x1400099a8
    add rcx, rax  ; 0x1400099ab
    call 0x1400083ec  ; 0x1400099ae
    test eax, eax  ; 0x1400099b3
    jne 0x1400099c5  ; 0x1400099b5
    dec r14d  ; 0x1400099b7
    add r12, 4  ; 0x1400099ba
    test r14d, r14d  ; 0x1400099be
    jg 0x140009980  ; 0x1400099c1
    jmp 0x1400099c8  ; 0x1400099c3
    mov r15b, 1  ; 0x1400099c5
    inc esi  ; 0x1400099c8
    cmp esi, dword ptr [rbp]  ; 0x1400099ca
    jl 0x140009944  ; 0x1400099cd
    mov rbx, qword ptr [rsp + 0x50]  ; 0x1400099d3
    mov al, r15b  ; 0x1400099d8
    mov rbp, qword ptr [rsp + 0x60]  ; 0x1400099db
    mov rsi, qword ptr [rsp + 0x68]  ; 0x1400099e0
    add rsp, 0x20  ; 0x1400099e5
    pop r15  ; 0x1400099e9
    pop r14  ; 0x1400099eb
    pop r13  ; 0x1400099ed
    pop r12  ; 0x1400099ef
    pop rdi  ; 0x1400099f1
    ret  ; 0x1400099f2
    call 0x140010040  ; 0x1400099f3
    int3   ; 0x1400099f8
    int3   ; 0x1400099f9
    int3   ; 0x1400099fa
    int3   ; 0x1400099fb
    mov qword ptr [rsp + 8], rbx  ; 0x1400099fc
; Function: func_140009a01
func_140009a01:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140009a01
    mov qword ptr [rsp + 0x18], rsi  ; 0x140009a06
    push rdi  ; 0x140009a0b
    sub rsp, 0x20  ; 0x140009a0c
    xor ebp, ebp  ; 0x140009a10
    mov rdi, rcx  ; 0x140009a12
    cmp dword ptr [rcx], ebp  ; 0x140009a15
    jle 0x140009a69  ; 0x140009a17
    xor esi, esi  ; 0x140009a19
    call 0x140006490  ; 0x140009a1b
    movsxd rcx, dword ptr [rdi + 4]  ; 0x140009a20
    add rax, rsi  ; 0x140009a24
    cmp dword ptr [rcx + rax + 4], 0  ; 0x140009a27
    je 0x140009a49  ; 0x140009a2c
    call 0x140006490  ; 0x140009a2e
    movsxd rcx, dword ptr [rdi + 4]  ; 0x140009a33
    add rax, rsi  ; 0x140009a37
    movsxd rbx, dword ptr [rcx + rax + 4]  ; 0x140009a3a
    call 0x140006490  ; 0x140009a3f
    add rax, rbx  ; 0x140009a44
    jmp 0x140009a4b  ; 0x140009a47
    xor eax, eax  ; 0x140009a49
    lea rcx, [rax + 8]  ; 0x140009a4b
    lea rdx, [rip + 0x21182]  ; 0x140009a4f
    call 0x14000688c  ; 0x140009a56
    test eax, eax  ; 0x140009a5b
    je 0x140009a80  ; 0x140009a5d
    inc ebp  ; 0x140009a5f
    add rsi, 0x14  ; 0x140009a61
    cmp ebp, dword ptr [rdi]  ; 0x140009a65
    jl 0x140009a1b  ; 0x140009a67
    xor al, al  ; 0x140009a69
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140009a6b
    mov rbp, qword ptr [rsp + 0x38]  ; 0x140009a70
    mov rsi, qword ptr [rsp + 0x40]  ; 0x140009a75
    add rsp, 0x20  ; 0x140009a7a
    pop rdi  ; 0x140009a7e
    ret  ; 0x140009a7f
    mov al, 1  ; 0x140009a80
    jmp 0x140009a6b  ; 0x140009a82
    mov r8, qword ptr [rdx]  ; 0x140009a84
    lea r11, [rip - 0x9a8e]  ; 0x140009a87
    mov r10, rcx  ; 0x140009a8e
    mov r9, rdx  ; 0x140009a91
    movzx ecx, byte ptr [r8]  ; 0x140009a94
    and ecx, 0xf  ; 0x140009a98
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x140009a9b
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x140009aa4
    sub r8, rax  ; 0x140009aac
    mov eax, dword ptr [r8 - 4]  ; 0x140009aaf
    shr eax, cl  ; 0x140009ab3
    mov ecx, eax  ; 0x140009ab5
    mov qword ptr [rdx], r8  ; 0x140009ab7
    and ecx, 3  ; 0x140009aba
    shr eax, 2  ; 0x140009abd
    mov dword ptr [r10 + 0x10], eax  ; 0x140009ac0
    mov dword ptr [r10 + 0x14], ecx  ; 0x140009ac4
    lea eax, [rcx - 1]  ; 0x140009ac8
    cmp eax, 1  ; 0x140009acb
    jbe 0x140009ae6  ; 0x140009ace
    cmp ecx, 3  ; 0x140009ad0
    jne 0x140009b1f  ; 0x140009ad3
    mov rax, qword ptr [rdx]  ; 0x140009ad5
    mov ecx, dword ptr [rax]  ; 0x140009ad8
    add rax, 4  ; 0x140009ada
    mov qword ptr [rdx], rax  ; 0x140009ade
    mov dword ptr [r10 + 0x18], ecx  ; 0x140009ae1
    ret  ; 0x140009ae5
    mov rax, qword ptr [rdx]  ; 0x140009ae6
    mov ecx, dword ptr [rax]  ; 0x140009ae9
    add rax, 4  ; 0x140009aeb
    mov qword ptr [rdx], rax  ; 0x140009aef
    mov dword ptr [r10 + 0x18], ecx  ; 0x140009af2
    mov rdx, qword ptr [rdx]  ; 0x140009af6
    movzx ecx, byte ptr [rdx]  ; 0x140009af9
    and ecx, 0xf  ; 0x140009afc
    movsx rax, byte ptr [rcx + r11 + 0x1e610]  ; 0x140009aff
    mov cl, byte ptr [rcx + r11 + 0x1e620]  ; 0x140009b08
    sub rdx, rax  ; 0x140009b10
    mov eax, dword ptr [rdx - 4]  ; 0x140009b13
    shr eax, cl  ; 0x140009b16
    mov qword ptr [r9], rdx  ; 0x140009b18
    mov dword ptr [r10 + 0x1c], eax  ; 0x140009b1b
    ret  ; 0x140009b1f
    mov rax, rdx  ; 0x140009b20
    mov rdx, r8  ; 0x140009b23
    jmp rax  ; 0x140009b26
    int3   ; 0x140009b29
    int3   ; 0x140009b2a
    int3   ; 0x140009b2b
    mov rax, r8  ; 0x140009b2c
    mov r10, rdx  ; 0x140009b2f
    mov rdx, rax  ; 0x140009b32
    mov r8d, r9d  ; 0x140009b35
    jmp r10  ; 0x140009b38
    int3   ; 0x140009b3b
    mov r11, rsp  ; 0x140009b3c
    mov qword ptr [r11 + 0x18], rbx  ; 0x140009b3f
    mov qword ptr [r11 + 0x20], r9  ; 0x140009b43
    mov dword ptr [rsp + 0x10], edx  ; 0x140009b47
; Function: func_140009b4b
func_140009b4b:
    push rbp  ; 0x140009b4b
    push rsi  ; 0x140009b4c
    push rdi  ; 0x140009b4d
    push r12  ; 0x140009b4e
    push r13  ; 0x140009b50
    push r14  ; 0x140009b52
    push r15  ; 0x140009b54
    sub rsp, 0x20  ; 0x140009b56
    mov rax, qword ptr [rcx + 8]  ; 0x140009b5a
    xor bpl, bpl  ; 0x140009b5e
    xor r14b, r14b  ; 0x140009b61
    mov qword ptr [r11 + 8], rax  ; 0x140009b64
    xor edi, edi  ; 0x140009b68
    mov r12, r9  ; 0x140009b6a
    mov r13d, r8d  ; 0x140009b6d
    mov rbx, rcx  ; 0x140009b70
    lea rsi, [rax - 1]  ; 0x140009b73
    mov r15, rsi  ; 0x140009b77
    cmp dword ptr [rcx], edi  ; 0x140009b7a
    jle 0x140009bc1  ; 0x140009b7c
    mov r12d, dword ptr [r11 + 0x10]  ; 0x140009b7e
    cmp edi, r12d  ; 0x140009b82
    jne 0x140009b8d  ; 0x140009b85
    mov rsi, rax  ; 0x140009b87
    mov bpl, 1  ; 0x140009b8a
    cmp edi, r13d  ; 0x140009b8d
    jne 0x140009b98  ; 0x140009b90
    mov r15, rax  ; 0x140009b92
    mov r14b, 1  ; 0x140009b95
    test bpl, bpl  ; 0x140009b98
    je 0x140009ba2  ; 0x140009b9b
    test r14b, r14b  ; 0x140009b9d
    jne 0x140009bbc  ; 0x140009ba0
    lea rdx, [rsp + 0x60]  ; 0x140009ba2
    mov rcx, rbx  ; 0x140009ba7
    call 0x140009a84  ; 0x140009baa
    inc edi  ; 0x140009baf
    cmp edi, dword ptr [rbx]  ; 0x140009bb1
    jge 0x140009bbc  ; 0x140009bb3
    mov rax, qword ptr [rsp + 0x60]  ; 0x140009bb5
    jmp 0x140009b82  ; 0x140009bba
    mov r12, qword ptr [rsp + 0x78]  ; 0x140009bbc
    mov rax, qword ptr [r12]  ; 0x140009bc1
    mov qword ptr [r12 + 8], rsi  ; 0x140009bc5
    movups xmm0, xmmword ptr [rbx]  ; 0x140009bca
    movups xmmword ptr [rax], xmm0  ; 0x140009bcd
    movups xmm1, xmmword ptr [rbx + 0x10]  ; 0x140009bd0
    movups xmmword ptr [rax + 0x10], xmm1  ; 0x140009bd4
    mov rax, qword ptr [rsp + 0x80]  ; 0x140009bd8
    mov rcx, qword ptr [rax]  ; 0x140009be0
    mov qword ptr [rax + 8], r15  ; 0x140009be3
    movups xmm0, xmmword ptr [rbx]  ; 0x140009be7
    movups xmmword ptr [rcx], xmm0  ; 0x140009bea
    movups xmm1, xmmword ptr [rbx + 0x10]  ; 0x140009bed
    mov rbx, qword ptr [rsp + 0x70]  ; 0x140009bf1
    movups xmmword ptr [rcx + 0x10], xmm1  ; 0x140009bf6
    add rsp, 0x20  ; 0x140009bfa
    pop r15  ; 0x140009bfe
    pop r14  ; 0x140009c00
    pop r13  ; 0x140009c02
    pop r12  ; 0x140009c04
    pop rdi  ; 0x140009c06
    pop rsi  ; 0x140009c07
    pop rbp  ; 0x140009c08
    ret  ; 0x140009c09
    int3   ; 0x140009c0a
    int3   ; 0x140009c0b
    mov qword ptr [rsp + 8], rbx  ; 0x140009c0c
    mov qword ptr [rsp + 0x10], rsi  ; 0x140009c11
    push rdi  ; 0x140009c16
    sub rsp, 0x30  ; 0x140009c17
    mov rdi, qword ptr [rsp + 0x60]  ; 0x140009c1b
    mov ebx, edx  ; 0x140009c20
    mov rsi, r8  ; 0x140009c22
    mov r10, rcx  ; 0x140009c25
    mov rdx, qword ptr [rdi + 8]  ; 0x140009c28
    cmp rdx, qword ptr [r8 + 8]  ; 0x140009c2c
    ja 0x140009ca9  ; 0x140009c30
    cmp qword ptr [rcx + 8], rdx  ; 0x140009c32
    ja 0x140009ca9  ; 0x140009c36
    mov rax, qword ptr [r8 + 8]  ; 0x140009c38
    mov rcx, rdx  ; 0x140009c3c
    sub rcx, qword ptr [r10 + 8]  ; 0x140009c3f
    sub rax, rdx  ; 0x140009c43
    cmp rcx, rax  ; 0x140009c46
    jge 0x140009c78  ; 0x140009c49
    movups xmm0, xmmword ptr [r10]  ; 0x140009c4b
    movups xmmword ptr [rsp + 0x20], xmm0  ; 0x140009c4f
    cmp rdx, qword ptr [r10 + 8]  ; 0x140009c54
    jbe 0x140009ca5  ; 0x140009c58
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140009c5a
    lea rdx, [rsp + 0x28]  ; 0x140009c5f
    call 0x140009a84  ; 0x140009c64
    mov rax, qword ptr [rsp + 0x28]  ; 0x140009c69
    inc ebx  ; 0x140009c6e
    cmp qword ptr [rdi + 8], rax  ; 0x140009c70
    ja 0x140009c5a  ; 0x140009c74
    jmp 0x140009ca5  ; 0x140009c76
    mov ebx, r9d  ; 0x140009c78
    movups xmm0, xmmword ptr [rdi]  ; 0x140009c7b
    movups xmmword ptr [rsp + 0x20], xmm0  ; 0x140009c7e
    cmp qword ptr [r8 + 8], rdx  ; 0x140009c83
    jbe 0x140009ca5  ; 0x140009c87
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140009c89
    lea rdx, [rsp + 0x28]  ; 0x140009c8e
    call 0x140009a84  ; 0x140009c93
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140009c98
    dec ebx  ; 0x140009c9d
    cmp qword ptr [rsi + 8], rcx  ; 0x140009c9f
    ja 0x140009c89  ; 0x140009ca3
    mov eax, ebx  ; 0x140009ca5
    jmp 0x140009cac  ; 0x140009ca7
    or eax, 0xffffffff  ; 0x140009ca9
    mov rbx, qword ptr [rsp + 0x40]  ; 0x140009cac
    mov rsi, qword ptr [rsp + 0x48]  ; 0x140009cb1
    add rsp, 0x30  ; 0x140009cb6
    pop rdi  ; 0x140009cba
    ret  ; 0x140009cbb
    int3   ; 0x140009cbc
    int3   ; 0x140009cbd
    int3   ; 0x140009cbe
    int3   ; 0x140009cbf
    int3   ; 0x140009cc0
    int3   ; 0x140009cc1
    int3   ; 0x140009cc2
    int3   ; 0x140009cc3
    int3   ; 0x140009cc4
    int3   ; 0x140009cc5
    nop  ; 0x140009cc6
    int3   ; 0x140009cd0
    int3   ; 0x140009cd1
    int3   ; 0x140009cd2
    int3   ; 0x140009cd3
    int3   ; 0x140009cd4
    int3   ; 0x140009cd5
    nop  ; 0x140009cd6
    int3   ; 0x140009ce0
    int3   ; 0x140009ce1
    int3   ; 0x140009ce2
    int3   ; 0x140009ce3
    int3   ; 0x140009ce4
    int3   ; 0x140009ce5
    nop  ; 0x140009ce6
    mov qword ptr [rsp + 8], rcx  ; 0x140009cf0
    mov qword ptr [rsp + 0x18], rdx  ; 0x140009cf5
    mov dword ptr [rsp + 0x10], r8d  ; 0x140009cfa
    mov r9, 0x19930520  ; 0x140009cff
    jmp 0x140009d10  ; 0x140009d06
    int3   ; 0x140009d0b
    int3   ; 0x140009d0c
    int3   ; 0x140009d0d
    int3   ; 0x140009d0e
    int3   ; 0x140009d0f
    ret  ; 0x140009d10
    int3   ; 0x140009d11
    int3   ; 0x140009d12
    int3   ; 0x140009d13
    int3   ; 0x140009d14
    int3   ; 0x140009d15
    int3   ; 0x140009d16
; ... (truncated for size)

start:
    ; Entry point at 0x140004d78
    ; Jump to main program logic
    jmp 0x140004d78

end start