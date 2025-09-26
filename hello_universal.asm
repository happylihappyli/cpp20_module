; Universal Disassembler Output
; Source: hello.exe
; Architecture: x64
; Image Base: 0x140000000
; Entry Point: 0x140003630
; Total Instructions: 26525
; Total Functions: 112

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
    str_14001dda8 db "__restrict", 0
    str_14001ddb8 db "__unaligned", 0
    str_14001ddc8 db "restrict(", 0
    str_14001ddd4 db " new", 0
    str_14001dde0 db " delete", 0
    str_14001de08 db "operator", 0
    str_14001de90 db "`vftable'", 0
    str_14001dea0 db "`vbtable'", 0
    str_14001deb0 db "`vcall'", 0
    str_14001deb8 db "`typeof'", 0
    str_14001dec8 db "`local static guard'", 0
    str_14001dee0 db "`string'", 0
    str_14001def0 db "`vbase destructor'", 0
    str_14001df08 db "`vector deleting destructor'", 0
    str_14001df28 db "`default constructor closure'", 0
    str_14001df48 db "`scalar deleting destructor'", 0
    str_14001df68 db "`vector constructor iterator'", 0
    str_14001df88 db "`vector destructor iterator'", 0
    str_14001dfa8 db "`vector vbase constructor iterator'", 0
    str_14001dfd0 db "`virtual displacement map'", 0
    str_14001dff0 db "`eh vector constructor iterator'", 0
    str_14001e018 db "`eh vector destructor iterator'", 0
    str_14001e038 db "`eh vector vbase constructor iterator'", 0
    str_14001e060 db "`copy constructor closure'", 0
    str_14001e080 db "`udt returning'", 0
    str_14001e094 db "`RTTI", 0
    str_14001e0a0 db "`local vftable'", 0
    str_14001e0b0 db "`local vftable constructor closure'", 0
    str_14001e0d4 db " new[]", 0
    str_14001e0e0 db " delete[]", 0
    str_14001e0f0 db "`omni callsig'", 0
    str_14001e100 db "`placement delete closure'", 0
    str_14001e120 db "`placement delete[] closure'", 0
    str_14001e140 db "`managed vector constructor iterator'", 0
    str_14001e168 db "`managed vector destructor iterator'", 0
    str_14001e190 db "`eh vector copy constructor iterator'", 0
    str_14001e1b8 db "`eh vector vbase copy constructor iterator'", 0
    str_14001e1e8 db "`dynamic initializer for '", 0
    str_14001e208 db "`dynamic atexit destructor for '", 0
    str_14001e230 db "`vector copy constructor iterator'", 0
    str_14001e258 db "`vector vbase copy constructor iterator'", 0
    str_14001e288 db "`managed vector copy constructor iterator'", 0
    str_14001e2b8 db "`local static thread guard'", 0
    str_14001e2d8 db "operator \x22\x22 ", 0
    str_14001e2e8 db "operator co_await", 0
    str_14001e300 db "operator<=>", 0
    str_14001e310 db " Type Descriptor'", 0
    str_14001e328 db " Base Class Descriptor at (", 0
    str_14001e348 db " Base Class Array'", 0
    str_14001e360 db " Class Hierarchy Descriptor'", 0
    str_14001e380 db " Complete Object Locator'", 0
    str_14001e3a0 db "`anonymous namespace'", 0
    str_14001e480 db "FlsAlloc", 0
    str_14001e498 db "FlsFree", 0
    str_14001e4a8 db "FlsGetValue", 0
    str_14001e4c0 db "FlsSetValue", 0
    str_14001e4d8 db "InitializeCriticalSectionEx", 0
    str_14001e710 db "(null)", 0
    str_14001e888 db "CorExitProcess", 0
    str_14001ec9c db "Sunday", 0
    str_14001eca4 db "Monday", 0
    str_14001ecb0 db "Tuesday", 0
    str_14001ecb8 db "Wednesday", 0
    str_14001ecc8 db "Thursday", 0
    str_14001ecd4 db "Friday", 0
    str_14001ece0 db "Saturday", 0
    str_14001ed20 db "January", 0
    str_14001ed28 db "February", 0
    str_14001ed34 db "March", 0
    str_14001ed3c db "April", 0
    str_14001ed44 db "June", 0
    str_14001ed4c db "July", 0
    str_14001ed54 db "August", 0
    str_14001ed60 db "September", 0
    str_14001ed70 db "October", 0
    str_14001ed78 db "November", 0
    str_14001ed88 db "December", 0
    str_14001eda0 db "MM/dd/yy", 0
    str_14001edb0 db "dddd, MMMM dd, yyyy", 0
    str_14001edc8 db "HH:mm:ss", 0
    str_14001f710 db "AreFileApisANSI", 0
    str_14001f728 db "CompareStringEx", 0
    str_14001f748 db "LCMapStringEx", 0
    str_14001f760 db "LocaleNameToLCID", 0
    str_14001f778 db "AppPolicyGetProcessTerminationMethod", 0
    str_14001f830 db "NAN(SNAN)", 0
    str_14001f840 db "nan(snan)", 0
    str_14001f850 db "NAN(IND)", 0
    str_14001f860 db "nan(ind)", 0
    str_14001f86c db "e+000", 0
    str_14001fc80 db " !\x22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\]^_`abcdefghijklmnopqrstuvwxyz{|}~", 0
    str_14001fe00 db " !\x22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~", 0
    str_140023330 db "d8L2", 0
    str_14002335c db "[aOni*{", 0
    str_1400233ba db "\x22RP(", 0
    str_140023433 db "eLK(w", 0
    str_1400234a0 db "FEMh", 0
    str_1400234ae db "h0'D", 0
    str_140023500 db "owM&", 0
    str_14002353d db "~ $s%r", 0
    str_14002354c db "@b;zO]", 0
    str_14002358b db "$qE}", 0
    str_1400235c9 db ";*xh", 0
    str_140023664 db "iu+-,", 0
    str_1400236ca db "\lo}", 0
    str_1400236d5 db "obwQ4", 0
    str_1400236ef db "&Sgw", 0
    str_140023787 db "?nz(", 0
    str_14002383a db "=87M", 0
    str_140023927 db "v2!L.2", 0
    str_1400239a9 db "X/4B", 0
    str_140023a47 db "k=yI", 0
    str_140023aaa db "^<V7w", 0
    str_140023afd db "W&|.", 0
    str_140023be0 db "1#INF", 0
    str_140023be8 db "1#QNAN", 0
    str_140023bf0 db "1#SNAN", 0
    str_140023bf8 db "1#IND", 0
    str_140023d50 db "UUUUUU", 0
    str_140023d80 db "UUUUUU", 0
    str_140023e01 db "TUUUU", 0
    str_140023e24 db "#Ib?", 0
    str_14002469f db "=imb;D", 0
    str_1400246a7 db "=W>6", 0
    str_14002478f db ">[^j", 0
    str_140024797 db ">Kb|", 0
    str_1400247d6 db "+>De", 0
    str_140024849 db "11Y@", 0
    str_14002484e db "/>58d%", 0
    str_140024864 db "MJ$>", 0
    str_14002487f db ">cQ6", 0
    str_140024886 db "!>6'Y", 0
    str_140024897 db ">jtm}S", 0
    str_1400248ee db ")>6{1n", 0
    str_1400248fc db "Vr.>T", 0
    str_14002490c db "+f)>0'", 0
    str_14002495b db "Lj[;>", 0
    str_14002497e db "3>fvw", 0
    str_14002498c db ";H9>&X", 0
    str_1400249b2 db "*StO9>T", 0
    str_1400249de db ".>Tu", 0
    str_1400249fc db "n03>Pu", 0
    str_140024a7d db "S9>H", 0
    str_140024ac4 db "x.&>", 0
    str_140024ad2 db "K~Je#>!", 0
    str_140024af6 db "(>aI", 0
    str_140024aff db "=cQ6", 0
    str_140024b0b db "+M<7>", 0
    str_140024b1e db "*>f[", 0
    str_140024b2c db "o ->", 0
    str_140024b4c db "l(>>", 0
    str_140024b55 db "c(>\,", 0
    str_140024b64 db "ET5>", 0
    str_140024b6e db ";>9l", 0
    str_140024b84 db "mG4>", 0
    str_140024bab db "bp(=>?g", 0
    str_140024c0d db "37>k", 0
    str_140024c3c db "~X3>", 0
    str_140024c4e db "6>J`", 0
    str_140024c56 db "?>!T", 0
    str_140024c6c db "BC?>6t9^", 0
    str_140024cb1 db "'._M", 0
    str_140024cc5 db "BF>^G", 0
    str_140024cd5 db "K&>.yC", 0
    str_140024ce4 db " 'L>[", 0
    str_140024cec db ".xJ>Hf", 0
    str_140024cf3 db "y\PD>!", 0
    str_140024d02 db "|b=})>", 0
    str_140024d13 db "c [1>H'", 0
    str_140024d24 db "dL?>", 0
    str_140024d52 db "uzKs@>", 0
    str_140024d6e db "3>N;kU", 0
    str_140024d9d db "kE>fvw", 0
    str_140024db5 db "eF>t", 0
    str_140024dc6 db "L>ev", 0
    str_140024dde db "A>pP&", 0
    str_140024de4 db "V6E>`\x22(5", 0
    str_140024e2d db ",=>B", 0
    str_140024e36 db "\x22>}t", 0
    str_140024e5c db "0iN>/", 0
    str_140024e6c db "+h->|", 0
    str_140024e7e db "@>%>b", 0
    str_140024ebf db "?qBJ", 0
    str_140025002 db "l@6 ", 0
    str_140025077 db "?-hk", 0
    str_140025149 db "OZQ%", 0
    str_140025239 db "-)4d", 0
    str_14002527f db "?:kP<", 0
    str_14002528f db "?UUUUUU", 0
    str_140025317 db "?f`Y4", 0
    str_140025347 db "?QY^&", 0
    str_140025387 db "?U)#", 0
    str_14002553f db "?ysB", 0
    str_140025567 db "?$G4", 0
    str_140025677 db "?7zQ6$", 0
    str_1400256a0 db "log10", 0
    str_140025fd8 db ".text$mn", 0
    str_140025fec db ".text$mn$00", 0
    str_140026000 db ".text$mn$21", 0
    str_140026014 db ".text$x", 0
    str_140026024 db ".idata$5", 0
    str_140026038 db ".00cfg", 0
    str_140026048 db ".CRT$XCA", 0
    str_14002605c db ".CRT$XCAA", 0
    str_140026070 db ".CRT$XCZ", 0
    str_140026084 db ".CRT$XIA", 0
    str_140026098 db ".CRT$XIAA", 0
    str_1400260ac db ".CRT$XIAC", 0
    str_1400260c0 db ".CRT$XIC", 0
    str_1400260d4 db ".CRT$XIZ", 0
    str_1400260e8 db ".CRT$XPA", 0
    str_1400260fc db ".CRT$XPX", 0
    str_140026110 db ".CRT$XPXA", 0
    str_140026124 db ".CRT$XPZ", 0
    str_140026138 db ".CRT$XTA", 0
    str_14002614c db ".CRT$XTZ", 0
    str_140026160 db ".rdata", 0
    str_140026170 db ".rdata$00", 0
    str_140026184 db ".rdata$r", 0
    str_140026198 db ".rdata$voltmd", 0
    str_1400261b0 db ".rdata$zzzdbg", 0
    str_1400261c8 db ".rtc$IAA", 0
    str_1400261dc db ".rtc$IZZ", 0
    str_1400261f0 db ".rtc$TAA", 0
    str_140026204 db ".rtc$TZZ", 0
    str_140026218 db ".xdata", 0
    str_140026228 db ".xdata$x", 0
    str_14002623c db ".idata$2", 0
    str_140026250 db ".idata$3", 0
    str_140026264 db ".idata$4", 0
    str_140026278 db ".idata$6", 0
    str_14002628c db ".data", 0
    str_14002629c db ".data$r", 0
    str_1400262ac db ".data$rs", 0
    str_1400262c0 db ".bss", 0
    str_1400262d0 db ".pdata", 0
    str_1400262e0 db "_RDATA", 0
    str_140027c12 db "SetConsoleOutputCP", 0
    str_140027c28 db "RtlCaptureContext", 0
    str_140027c3c db "RtlLookupFunctionEntry", 0
    str_140027c56 db "RtlVirtualUnwind", 0
    str_140027c6a db "UnhandledExceptionFilter", 0
    str_140027c86 db "SetUnhandledExceptionFilter", 0
    str_140027ca4 db "GetCurrentProcess", 0
    str_140027cb8 db "TerminateProcess", 0
    str_140027ccc db "IsProcessorFeaturePresent", 0
    str_140027ce8 db "QueryPerformanceCounter", 0
    str_140027d02 db "GetCurrentProcessId", 0
    str_140027d18 db "GetCurrentThreadId", 0
    str_140027d2e db "GetSystemTimeAsFileTime", 0
    str_140027d48 db "InitializeSListHead", 0
    str_140027d5e db "IsDebuggerPresent", 0
    str_140027d72 db "GetStartupInfoW", 0
    str_140027d84 db "GetModuleHandleW", 0
    str_140027d96 db "KERNEL32.dll", 0
    str_140027da6 db "RtlPcToFileHeader", 0
    str_140027dba db "RaiseException", 0
    str_140027dcc db "RtlUnwindEx", 0
    str_140027dda db "GetLastError", 0
    str_140027dea db "SetLastError", 0
    str_140027dfa db "EncodePointer", 0
    str_140027e0a db "EnterCriticalSection", 0
    str_140027e22 db "LeaveCriticalSection", 0
    str_140027e3a db "DeleteCriticalSection", 0
    str_140027e52 db "InitializeCriticalSectionAndSpinCount", 0
    str_140027e7a db "TlsAlloc", 0
    str_140027e86 db "TlsGetValue", 0
    str_140027e94 db "TlsSetValue", 0
    str_140027ea2 db "TlsFree", 0
    str_140027eac db "FreeLibrary", 0
    str_140027eba db "GetProcAddress", 0
    str_140027ecc db "LoadLibraryExW", 0
    str_140027ede db "GetStdHandle", 0
    str_140027eee db "WriteFile", 0
    str_140027efa db "GetModuleFileNameW", 0
    str_140027f10 db "ExitProcess", 0
    str_140027f1e db "GetModuleHandleExW", 0
    str_140027f34 db "GetCommandLineA", 0
    str_140027f46 db "GetCommandLineW", 0
    str_140027f58 db "HeapAlloc", 0
    str_140027f64 db "HeapFree", 0
    str_140027f70 db "FlsAlloc", 0
    str_140027f7c db "FlsGetValue", 0
    str_140027f8a db "FlsSetValue", 0
    str_140027f98 db "FlsFree", 0
    str_140027fa2 db "CompareStringW", 0
    str_140027fb4 db "LCMapStringW", 0
    str_140027fc4 db "GetFileType", 0
    str_140027fd2 db "FindClose", 0
    str_140027fde db "FindFirstFileExW", 0
    str_140027ff2 db "FindNextFileW", 0
    str_140028002 db "IsValidCodePage", 0
    str_140028014 db "GetACP", 0
    str_14002801e db "GetOEMCP", 0
    str_14002802a db "GetCPInfo", 0
    str_140028036 db "MultiByteToWideChar", 0
    str_14002804c db "WideCharToMultiByte", 0
    str_140028062 db "GetEnvironmentStringsW", 0
    str_14002807c db "FreeEnvironmentStringsW", 0
    str_140028096 db "SetEnvironmentVariableW", 0
    str_1400280b0 db "SetStdHandle", 0
    str_1400280c0 db "GetStringTypeW", 0
    str_1400280d2 db "GetProcessHeap", 0
    str_1400280e4 db "FlushFileBuffers", 0
    str_1400280f8 db "GetConsoleOutputCP", 0
    str_14002810e db "GetConsoleMode", 0
    str_140028120 db "GetFileSizeEx", 0
    str_140028130 db "SetFilePointerEx", 0
    str_140028144 db "HeapSize", 0
    str_140028150 db "HeapReAlloc", 0
    str_14002815e db "CloseHandle", 0
    str_14002816c db "CreateFileW", 0
    str_14002817a db "WriteConsoleW", 0
    str_1400294ca db "abcdefghijklmnopqrstuvwxyz", 0
    str_1400294ea db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0
    str_1400296f1 db "abcdefghijklmnopqrstuvwxyz", 0
    str_140029711 db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0
    str_140029a90 db ".?AVbad_array_new_length@std@@", 0
    str_140029ac0 db ".?AVbad_alloc@std@@", 0
    str_140029ae8 db ".?AVexception@std@@", 0
    str_140029b10 db ".?AVlogic_error@std@@", 0
    str_140029b38 db ".?AVlength_error@std@@", 0
    str_140029b60 db ".?AVbad_exception@std@@", 0
    str_140029b88 db ".?AVtype_info@@", 0
    newline db 13, 10, 0
    bytes_written dd ?

.code

; Section: .text

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
    nop  ; 0x140001617
    mov rcx, qword ptr [rsp + 0x48]  ; 0x140001618
    call 0x140001d00  ; 0x14000161d
    mov rcx, rax  ; 0x140001622
    call 0x140001420  ; 0x140001625
    mov r8, rax  ; 0x14000162a
    mov rdx, qword ptr [rsp + 0x48]  ; 0x14000162d
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001632
    call 0x140001230  ; 0x140001637
    nop  ; 0x14000163c
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
    jmp 0x140001c5a  ; 0x140001c49
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001c4b
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140001c50
    movzx ecx, byte ptr [rcx]  ; 0x140001c55
    mov byte ptr [rax], cl  ; 0x140001c58
    add rsp, 0x28  ; 0x140001c5a
    ret  ; 0x140001c5e
    int3   ; 0x140001c5f
    mov qword ptr [rsp + 0x18], r8  ; 0x140001c60
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001c65
    mov qword ptr [rsp + 8], rcx  ; 0x140001c6a
    sub rsp, 0x38  ; 0x140001c6f
    call 0x140001cf0  ; 0x140001c73
    movzx eax, al  ; 0x140001c78
    test eax, eax  ; 0x140001c7b
    je 0x140001cd1  ; 0x140001c7d
    mov qword ptr [rsp + 0x20], 0  ; 0x140001c7f
    jmp 0x140001c97  ; 0x140001c88
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001c8a
    inc rax  ; 0x140001c8f
    mov qword ptr [rsp + 0x20], rax  ; 0x140001c92
    mov rax, qword ptr [rsp + 0x50]  ; 0x140001c97
    cmp qword ptr [rsp + 0x20], rax  ; 0x140001c9c
    je 0x140001cca  ; 0x140001ca1
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001ca3
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001ca8
    add rcx, rax  ; 0x140001cad
    mov rax, rcx  ; 0x140001cb0
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140001cb3
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140001cb8
    add rdx, rcx  ; 0x140001cbd
    mov rcx, rdx  ; 0x140001cc0
    movzx ecx, byte ptr [rcx]  ; 0x140001cc3
    mov byte ptr [rax], cl  ; 0x140001cc6
    jmp 0x140001c8a  ; 0x140001cc8
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001cca
    jmp 0x140001cea  ; 0x140001ccf
    mov r8, qword ptr [rsp + 0x50]  ; 0x140001cd1
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140001cd6
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001cdb
    call 0x14001af90  ; 0x140001ce0
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001ce5
    add rsp, 0x38  ; 0x140001cea
    ret  ; 0x140001cee
    int3   ; 0x140001cef
    xor al, al  ; 0x140001cf0
    ret  ; 0x140001cf2
    int3   ; 0x140001cf3
    int3   ; 0x140001cf4
    int3   ; 0x140001cf5
    int3   ; 0x140001cf6
    int3   ; 0x140001cf7
    int3   ; 0x140001cf8
    int3   ; 0x140001cf9
    int3   ; 0x140001cfa
    int3   ; 0x140001cfb
    int3   ; 0x140001cfc
    int3   ; 0x140001cfd
    int3   ; 0x140001cfe
    int3   ; 0x140001cff
    mov qword ptr [rsp + 8], rcx  ; 0x140001d00
    sub rsp, 0x18  ; 0x140001d05
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001d09
    mov qword ptr [rsp + 8], rax  ; 0x140001d0e
    mov qword ptr [rsp], 0xffffffffffffffff  ; 0x140001d13
    inc qword ptr [rsp]  ; 0x140001d1b
    mov rax, qword ptr [rsp + 8]  ; 0x140001d1f
    mov rcx, qword ptr [rsp]  ; 0x140001d24
    cmp byte ptr [rax + rcx], 0  ; 0x140001d28
    jne 0x140001d1b  ; 0x140001d2c
    mov rax, qword ptr [rsp]  ; 0x140001d2e
    add rsp, 0x18  ; 0x140001d32
    ret  ; 0x140001d36
    int3   ; 0x140001d37
    int3   ; 0x140001d38
    int3   ; 0x140001d39
    int3   ; 0x140001d3a
    int3   ; 0x140001d3b
    int3   ; 0x140001d3c
    int3   ; 0x140001d3d
    int3   ; 0x140001d3e
    int3   ; 0x140001d3f
    movabs rax, 0x7fffffffffffffff  ; 0x140001d40
    ret  ; 0x140001d4a
    int3   ; 0x140001d4b
    int3   ; 0x140001d4c
    int3   ; 0x140001d4d
    int3   ; 0x140001d4e
    int3   ; 0x140001d4f
    mov qword ptr [rsp + 8], rcx  ; 0x140001d50
    mov rax, 0xffffffffffffffff  ; 0x140001d55
    ret  ; 0x140001d5c
    int3   ; 0x140001d5d
    int3   ; 0x140001d5e
    int3   ; 0x140001d5f
    mov qword ptr [rsp + 8], rcx  ; 0x140001d60
    sub rsp, 0x58  ; 0x140001d65
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140001d69
    call 0x140001b30  ; 0x140001d6e
    mov rcx, rax  ; 0x140001d73
    call 0x140001d50  ; 0x140001d76
    mov qword ptr [rsp + 0x28], rax  ; 0x140001d7b
    mov qword ptr [rsp + 0x20], 0x10  ; 0x140001d80
    lea rdx, [rsp + 0x20]  ; 0x140001d89
    lea rcx, [rsp + 0x28]  ; 0x140001d8e
    call 0x140001510  ; 0x140001d93
    mov rax, qword ptr [rax]  ; 0x140001d98
    mov qword ptr [rsp + 0x30], rax  ; 0x140001d9b
    mov rax, qword ptr [rsp + 0x30]  ; 0x140001da0
    dec rax  ; 0x140001da5
    mov qword ptr [rsp + 0x38], rax  ; 0x140001da8
    call 0x140001d40  ; 0x140001dad
    mov qword ptr [rsp + 0x40], rax  ; 0x140001db2
    lea rdx, [rsp + 0x38]  ; 0x140001db7
    lea rcx, [rsp + 0x40]  ; 0x140001dbc
    call 0x140001560  ; 0x140001dc1
    mov rax, qword ptr [rax]  ; 0x140001dc6
    add rsp, 0x58  ; 0x140001dc9
    ret  ; 0x140001dcd
    int3   ; 0x140001dce
    int3   ; 0x140001dcf
    mov qword ptr [rsp + 8], rcx  ; 0x140001dd0
    sub rsp, 0x18  ; 0x140001dd5
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001dd9
    cmp qword ptr [rax + 8], 0  ; 0x140001dde
    je 0x140001df4  ; 0x140001de3
    mov rax, qword ptr [rsp + 0x20]  ; 0x140001de5
    mov rax, qword ptr [rax + 8]  ; 0x140001dea
    mov qword ptr [rsp], rax  ; 0x140001dee
    jmp 0x140001dff  ; 0x140001df2
    lea rax, [rip + 0x1b5ad]  ; 0x140001df4
    mov qword ptr [rsp], rax  ; 0x140001dfb
    mov rax, qword ptr [rsp]  ; 0x140001dff
    add rsp, 0x18  ; 0x140001e03
    ret  ; 0x140001e07
    int3   ; 0x140001e08
    int3   ; 0x140001e09
    int3   ; 0x140001e0a
    int3   ; 0x140001e0b
    int3   ; 0x140001e0c
    int3   ; 0x140001e0d
    int3   ; 0x140001e0e
    int3   ; 0x140001e0f
    mov qword ptr [rsp + 8], rcx  ; 0x140001e10
    sub rsp, 0x28  ; 0x140001e15
    movzx eax, byte ptr [rip + 0x27d88]  ; 0x140001e19
    test eax, eax  ; 0x140001e20
    jne 0x140001e36  ; 0x140001e22
    mov ecx, 0xfde9  ; 0x140001e24
    call qword ptr [rip + 0x1b1d1]  ; 0x140001e29
    mov byte ptr [rip + 0x27d72], 1  ; 0x140001e2f
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001e36
    call 0x140002cf0  ; 0x140001e3b
    mov rdx, rax  ; 0x140001e40
    lea rcx, [rip + 0x1b58e]  ; 0x140001e43
    call 0x140003080  ; 0x140001e4a
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140001e4f
    call 0x1400028f0  ; 0x140001e54
    add rsp, 0x28  ; 0x140001e59
    ret  ; 0x140001e5d
    int3   ; 0x140001e5e
    int3   ; 0x140001e5f
    int3   ; 0x140001e60
    int3   ; 0x140001e61
    int3   ; 0x140001e62
    int3   ; 0x140001e63
    int3   ; 0x140001e64
    int3   ; 0x140001e65
    int3   ; 0x140001e66
    int3   ; 0x140001e67
    int3   ; 0x140001e68
    int3   ; 0x140001e69
    int3   ; 0x140001e6a
    int3   ; 0x140001e6b
    int3   ; 0x140001e6c
    int3   ; 0x140001e6d
    int3   ; 0x140001e6e
    int3   ; 0x140001e6f
    mov dword ptr [rsp + 0x10], edx  ; 0x140001e70
    mov qword ptr [rsp + 8], rcx  ; 0x140001e74
    sub rsp, 0x38  ; 0x140001e79
    mov dword ptr [rsp + 0x20], 0  ; 0x140001e7d
    mov edx, dword ptr [rsp + 0x48]  ; 0x140001e85
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001e89
    call 0x140002d50  ; 0x140001e8e
    mov eax, dword ptr [rsp + 0x20]  ; 0x140001e93
    or eax, 1  ; 0x140001e97
    mov dword ptr [rsp + 0x20], eax  ; 0x140001e9a
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001e9e
    add rsp, 0x38  ; 0x140001ea3
    ret  ; 0x140001ea7
    int3   ; 0x140001ea8
    int3   ; 0x140001ea9
    int3   ; 0x140001eaa
    int3   ; 0x140001eab
    int3   ; 0x140001eac
    int3   ; 0x140001ead
    int3   ; 0x140001eae
    int3   ; 0x140001eaf
    movsd qword ptr [rsp + 0x10], xmm1  ; 0x140001eb0
    mov qword ptr [rsp + 8], rcx  ; 0x140001eb6
    sub rsp, 0x38  ; 0x140001ebb
    mov dword ptr [rsp + 0x20], 0  ; 0x140001ebf
    movsd xmm1, qword ptr [rsp + 0x48]  ; 0x140001ec7
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001ecd
    call 0x140002dd0  ; 0x140001ed2
    mov eax, dword ptr [rsp + 0x20]  ; 0x140001ed7
    or eax, 1  ; 0x140001edb
    mov dword ptr [rsp + 0x20], eax  ; 0x140001ede
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001ee2
    add rsp, 0x38  ; 0x140001ee7
    ret  ; 0x140001eeb
    int3   ; 0x140001eec
    int3   ; 0x140001eed
    int3   ; 0x140001eee
    int3   ; 0x140001eef
    int3   ; 0x140001ef0
    int3   ; 0x140001ef1
    int3   ; 0x140001ef2
    int3   ; 0x140001ef3
    int3   ; 0x140001ef4
    int3   ; 0x140001ef5
    int3   ; 0x140001ef6
    int3   ; 0x140001ef7
    int3   ; 0x140001ef8
    int3   ; 0x140001ef9
    int3   ; 0x140001efa
    int3   ; 0x140001efb
    int3   ; 0x140001efc
    int3   ; 0x140001efd
    int3   ; 0x140001efe
    int3   ; 0x140001eff
    movss dword ptr [rsp + 0x10], xmm1  ; 0x140001f00
    mov qword ptr [rsp + 8], rcx  ; 0x140001f06
    sub rsp, 0x38  ; 0x140001f0b
    mov dword ptr [rsp + 0x20], 0  ; 0x140001f0f
    movss xmm1, dword ptr [rsp + 0x48]  ; 0x140001f17
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001f1d
    call 0x140002d90  ; 0x140001f22
    mov eax, dword ptr [rsp + 0x20]  ; 0x140001f27
    or eax, 1  ; 0x140001f2b
    mov dword ptr [rsp + 0x20], eax  ; 0x140001f2e
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001f32
    add rsp, 0x38  ; 0x140001f37
    ret  ; 0x140001f3b
    int3   ; 0x140001f3c
    int3   ; 0x140001f3d
    int3   ; 0x140001f3e
    int3   ; 0x140001f3f
    int3   ; 0x140001f40
    int3   ; 0x140001f41
    int3   ; 0x140001f42
    int3   ; 0x140001f43
    int3   ; 0x140001f44
    int3   ; 0x140001f45
    int3   ; 0x140001f46
    int3   ; 0x140001f47
    int3   ; 0x140001f48
    int3   ; 0x140001f49
    int3   ; 0x140001f4a
    int3   ; 0x140001f4b
    int3   ; 0x140001f4c
    int3   ; 0x140001f4d
    int3   ; 0x140001f4e
    int3   ; 0x140001f4f
    mov dword ptr [rsp + 0x10], edx  ; 0x140001f50
    mov qword ptr [rsp + 8], rcx  ; 0x140001f54
    sub rsp, 0x38  ; 0x140001f59
    mov dword ptr [rsp + 0x20], 0  ; 0x140001f5d
    mov edx, dword ptr [rsp + 0x48]  ; 0x140001f65
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001f69
    call 0x140002d50  ; 0x140001f6e
    mov eax, dword ptr [rsp + 0x20]  ; 0x140001f73
    or eax, 1  ; 0x140001f77
    mov dword ptr [rsp + 0x20], eax  ; 0x140001f7a
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001f7e
    add rsp, 0x38  ; 0x140001f83
    ret  ; 0x140001f87
    int3   ; 0x140001f88
    int3   ; 0x140001f89
    int3   ; 0x140001f8a
    int3   ; 0x140001f8b
    int3   ; 0x140001f8c
    int3   ; 0x140001f8d
    int3   ; 0x140001f8e
    int3   ; 0x140001f8f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001f90
    mov qword ptr [rsp + 8], rcx  ; 0x140001f95
    sub rsp, 0x38  ; 0x140001f9a
    mov dword ptr [rsp + 0x20], 0  ; 0x140001f9e
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140001fa6
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001fab
    call 0x140002e70  ; 0x140001fb0
    mov eax, dword ptr [rsp + 0x20]  ; 0x140001fb5
    or eax, 1  ; 0x140001fb9
    mov dword ptr [rsp + 0x20], eax  ; 0x140001fbc
    mov rax, qword ptr [rsp + 0x40]  ; 0x140001fc0
    add rsp, 0x38  ; 0x140001fc5
    ret  ; 0x140001fc9
    int3   ; 0x140001fca
    int3   ; 0x140001fcb
    int3   ; 0x140001fcc
    int3   ; 0x140001fcd
    int3   ; 0x140001fce
    int3   ; 0x140001fcf
    mov qword ptr [rsp + 0x10], rdx  ; 0x140001fd0
    mov qword ptr [rsp + 8], rcx  ; 0x140001fd5
    sub rsp, 0x38  ; 0x140001fda
    mov dword ptr [rsp + 0x20], 0  ; 0x140001fde
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140001fe6
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140001feb
    call 0x140002eb0  ; 0x140001ff0
    mov eax, dword ptr [rsp + 0x20]  ; 0x140001ff5
    or eax, 1  ; 0x140001ff9
    mov dword ptr [rsp + 0x20], eax  ; 0x140001ffc
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002000
    add rsp, 0x38  ; 0x140002005
    ret  ; 0x140002009
    int3   ; 0x14000200a
    int3   ; 0x14000200b
    int3   ; 0x14000200c
    int3   ; 0x14000200d
    int3   ; 0x14000200e
    int3   ; 0x14000200f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002010
    mov qword ptr [rsp + 8], rcx  ; 0x140002015
    sub rsp, 0x38  ; 0x14000201a
    mov dword ptr [rsp + 0x20], 0  ; 0x14000201e
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140002026
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000202b
    call 0x1400015f0  ; 0x140002030
    mov eax, dword ptr [rsp + 0x20]  ; 0x140002035
    or eax, 1  ; 0x140002039
    mov dword ptr [rsp + 0x20], eax  ; 0x14000203c
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002040
    add rsp, 0x38  ; 0x140002045
    ret  ; 0x140002049
    int3   ; 0x14000204a
    int3   ; 0x14000204b
    int3   ; 0x14000204c
    int3   ; 0x14000204d
    int3   ; 0x14000204e
    int3   ; 0x14000204f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002050
    mov qword ptr [rsp + 8], rcx  ; 0x140002055
    sub rsp, 0x38  ; 0x14000205a
    mov dword ptr [rsp + 0x20], 0  ; 0x14000205e
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140002066
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000206b
    call 0x140002800  ; 0x140002070
    mov eax, dword ptr [rsp + 0x20]  ; 0x140002075
    or eax, 1  ; 0x140002079
    mov dword ptr [rsp + 0x20], eax  ; 0x14000207c
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002080
    add rsp, 0x38  ; 0x140002085
    ret  ; 0x140002089
    int3   ; 0x14000208a
    int3   ; 0x14000208b
    int3   ; 0x14000208c
    int3   ; 0x14000208d
    int3   ; 0x14000208e
    int3   ; 0x14000208f
    mov qword ptr [rsp + 0x18], r8  ; 0x140002090
    mov byte ptr [rsp + 0x10], dl  ; 0x140002095
    mov qword ptr [rsp + 8], rcx  ; 0x140002099
    sub rsp, 0x28  ; 0x14000209e
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400020a2
    mov rcx, rax  ; 0x1400020a7
    call 0x1400015b0  ; 0x1400020aa
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400020af
    add rsp, 0x28  ; 0x1400020b4
    ret  ; 0x1400020b8
    int3   ; 0x1400020b9
    int3   ; 0x1400020ba
    int3   ; 0x1400020bb
    int3   ; 0x1400020bc
    int3   ; 0x1400020bd
    int3   ; 0x1400020be
    int3   ; 0x1400020bf
    mov qword ptr [rsp + 0x20], r9  ; 0x1400020c0
    mov qword ptr [rsp + 0x18], r8  ; 0x1400020c5
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400020ca
    mov qword ptr [rsp + 8], rcx  ; 0x1400020cf
    sub rsp, 0x48  ; 0x1400020d4
    mov rax, qword ptr [rsp + 0x50]  ; 0x1400020d8
    mov qword ptr [rsp + 0x38], rax  ; 0x1400020dd
    mov r8, qword ptr [rsp + 0x68]  ; 0x1400020e2
    movzx edx, byte ptr [rsp + 0x20]  ; 0x1400020e7
    mov rcx, qword ptr [rsp + 0x38]  ; 0x1400020ec
    call 0x140002090  ; 0x1400020f1
    nop  ; 0x1400020f6
    lea rdx, [rsp + 0x60]  ; 0x1400020f7
    lea rcx, [rsp + 0x58]  ; 0x1400020fc
    call 0x140002180  ; 0x140002101
    lea rcx, [rsp + 0x58]  ; 0x140002106
    call 0x1400024d0  ; 0x14000210b
    mov qword ptr [rsp + 0x28], rax  ; 0x140002110
    lea rcx, [rsp + 0x60]  ; 0x140002115
    call 0x1400024d0  ; 0x14000211a
    mov qword ptr [rsp + 0x30], rax  ; 0x14000211f
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002124
    cmp qword ptr [rsp + 0x28], rax  ; 0x140002129
    jne 0x14000213c  ; 0x14000212e
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002130
    call 0x1400029a0  ; 0x140002135
    jmp 0x140002167  ; 0x14000213a
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000213c
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002141
    sub rcx, rax  ; 0x140002146
    mov rax, rcx  ; 0x140002149
    mov rcx, rax  ; 0x14000214c
    call 0x140001420  ; 0x14000214f
    mov r8, rax  ; 0x140002154
    mov rdx, qword ptr [rsp + 0x28]  ; 0x140002157
    mov rcx, qword ptr [rsp + 0x50]  ; 0x14000215c
    call 0x140001230  ; 0x140002161
    nop  ; 0x140002166
    mov rax, qword ptr [rsp + 0x50]  ; 0x140002167
    add rsp, 0x48  ; 0x14000216c
    ret  ; 0x140002170
    int3   ; 0x140002171
    int3   ; 0x140002172
    int3   ; 0x140002173
    int3   ; 0x140002174
    int3   ; 0x140002175
    int3   ; 0x140002176
    int3   ; 0x140002177
    int3   ; 0x140002178
    int3   ; 0x140002179
    int3   ; 0x14000217a
    int3   ; 0x14000217b
    int3   ; 0x14000217c
    int3   ; 0x14000217d
    int3   ; 0x14000217e
    int3   ; 0x14000217f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002180
    mov qword ptr [rsp + 8], rcx  ; 0x140002185
    ret  ; 0x14000218a
    int3   ; 0x14000218b
    int3   ; 0x14000218c
    int3   ; 0x14000218d
    int3   ; 0x14000218e
    int3   ; 0x14000218f
    mov qword ptr [rsp + 0x18], r8  ; 0x140002190
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002195
    mov qword ptr [rsp + 8], rcx  ; 0x14000219a
    sub rsp, 0x68  ; 0x14000219f
    mov rax, qword ptr [rsp + 0x70]  ; 0x1400021a3
    mov qword ptr [rsp + 0x28], rax  ; 0x1400021a8
    mov rcx, qword ptr [rsp + 0x70]  ; 0x1400021ad
    call 0x140001d60  ; 0x1400021b2
    cmp qword ptr [rsp + 0x80], rax  ; 0x1400021b7
    jbe 0x1400021c6  ; 0x1400021bf
    call 0x140001b80  ; 0x1400021c1
    mov rcx, qword ptr [rsp + 0x70]  ; 0x1400021c6
    call 0x140001b30  ; 0x1400021cb
    mov qword ptr [rsp + 0x48], rax  ; 0x1400021d0
    lea rax, [rip + 0x1b171]  ; 0x1400021d5
    mov qword ptr [rsp + 0x40], rax  ; 0x1400021dc
    mov r8, qword ptr [rsp + 0x28]  ; 0x1400021e1
    mov rdx, qword ptr [rsp + 0x40]  ; 0x1400021e6
    lea rcx, [rsp + 0x20]  ; 0x1400021eb
    call 0x140001670  ; 0x1400021f0
    cmp qword ptr [rsp + 0x80], 0xf  ; 0x1400021f5
    ja 0x140002245  ; 0x1400021fe
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002200
    mov rcx, qword ptr [rsp + 0x80]  ; 0x140002205
    mov qword ptr [rax + 0x10], rcx  ; 0x14000220d
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002211
    mov qword ptr [rax + 0x18], 0xf  ; 0x140002216
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000221e
    mov r8d, 0x10  ; 0x140002223
    mov rdx, qword ptr [rsp + 0x78]  ; 0x140002229
    mov rcx, rax  ; 0x14000222e
    call 0x140001c60  ; 0x140002231
    lea rcx, [rsp + 0x20]  ; 0x140002236
    call 0x140001880  ; 0x14000223b
    jmp 0x1400022e7  ; 0x140002240
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140002245
    call 0x140001d60  ; 0x14000224a
    mov r8, rax  ; 0x14000224f
    mov edx, 0xf  ; 0x140002252
    mov rcx, qword ptr [rsp + 0x80]  ; 0x140002257
    call 0x140001a90  ; 0x14000225f
    mov qword ptr [rsp + 0x30], rax  ; 0x140002264
    lea rdx, [rsp + 0x30]  ; 0x140002269
    mov rcx, qword ptr [rsp + 0x48]  ; 0x14000226e
    call 0x1400010f0  ; 0x140002273
    mov qword ptr [rsp + 0x38], rax  ; 0x140002278
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000227d
    lea rdx, [rsp + 0x38]  ; 0x140002282
    mov rcx, rax  ; 0x140002287
    call 0x1400013b0  ; 0x14000228a
    mov rax, qword ptr [rsp + 0x28]  ; 0x14000228f
    mov rcx, qword ptr [rsp + 0x80]  ; 0x140002294
    mov qword ptr [rax + 0x10], rcx  ; 0x14000229c
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400022a0
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400022a5
    mov qword ptr [rax + 0x18], rcx  ; 0x1400022aa
    mov rax, qword ptr [rsp + 0x80]  ; 0x1400022ae
    inc rax  ; 0x1400022b6
    mov qword ptr [rsp + 0x50], rax  ; 0x1400022b9
    mov rcx, qword ptr [rsp + 0x38]  ; 0x1400022be
    call 0x140001420  ; 0x1400022c3
    mov rcx, qword ptr [rsp + 0x50]  ; 0x1400022c8
    mov r8, rcx  ; 0x1400022cd
    mov rdx, qword ptr [rsp + 0x78]  ; 0x1400022d0
    mov rcx, rax  ; 0x1400022d5
    call 0x140001c60  ; 0x1400022d8
    lea rcx, [rsp + 0x20]  ; 0x1400022dd
    call 0x140001880  ; 0x1400022e2
    add rsp, 0x68  ; 0x1400022e7
    ret  ; 0x1400022eb
    int3   ; 0x1400022ec
    int3   ; 0x1400022ed
    int3   ; 0x1400022ee
    int3   ; 0x1400022ef
    mov qword ptr [rsp + 0x18], r8  ; 0x1400022f0
    mov byte ptr [rsp + 0x10], dl  ; 0x1400022f5
    mov qword ptr [rsp + 8], rcx  ; 0x1400022f9
    sub rsp, 0x58  ; 0x1400022fe
    mov rax, qword ptr [rsp + 0x60]  ; 0x140002302
    mov qword ptr [rsp + 0x28], rax  ; 0x140002307
    mov rcx, qword ptr [rsp + 0x60]  ; 0x14000230c
    call 0x140001d60  ; 0x140002311
    cmp qword ptr [rsp + 0x70], rax  ; 0x140002316
    jbe 0x140002322  ; 0x14000231b
    call 0x140001b80  ; 0x14000231d
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140002322
    call 0x140001b30  ; 0x140002327
    mov qword ptr [rsp + 0x48], rax  ; 0x14000232c
    lea rax, [rip + 0x1b015]  ; 0x140002331
    mov qword ptr [rsp + 0x40], rax  ; 0x140002338
    mov r8, qword ptr [rsp + 0x28]  ; 0x14000233d
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140002342
    lea rcx, [rsp + 0x20]  ; 0x140002347
    call 0x140001670  ; 0x14000234c
    cmp qword ptr [rsp + 0x70], 0xf  ; 0x140002351
    ja 0x1400023bd  ; 0x140002357
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002359
    mov rcx, qword ptr [rsp + 0x70]  ; 0x14000235e
    mov qword ptr [rax + 0x10], rcx  ; 0x140002363
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002367
    mov qword ptr [rax + 0x18], 0xf  ; 0x14000236c
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002374
    movzx r8d, byte ptr [rsp + 0x68]  ; 0x140002379
    mov rdx, qword ptr [rsp + 0x70]  ; 0x14000237f
    mov rcx, rax  ; 0x140002384
    call 0x140002c90  ; 0x140002387
    mov byte ptr [rsp + 0x21], 0  ; 0x14000238c
    mov rax, qword ptr [rsp + 0x70]  ; 0x140002391
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002396
    add rcx, rax  ; 0x14000239b
    mov rax, rcx  ; 0x14000239e
    lea rdx, [rsp + 0x21]  ; 0x1400023a1
    mov rcx, rax  ; 0x1400023a6
    call 0x140001c20  ; 0x1400023a9
    lea rcx, [rsp + 0x20]  ; 0x1400023ae
    call 0x140001880  ; 0x1400023b3
    jmp 0x140002468  ; 0x1400023b8
    mov rcx, qword ptr [rsp + 0x60]  ; 0x1400023bd
    call 0x140001d60  ; 0x1400023c2
    mov r8, rax  ; 0x1400023c7
    mov edx, 0xf  ; 0x1400023ca
    mov rcx, qword ptr [rsp + 0x70]  ; 0x1400023cf
    call 0x140001a90  ; 0x1400023d4
    mov qword ptr [rsp + 0x38], rax  ; 0x1400023d9
    lea rdx, [rsp + 0x38]  ; 0x1400023de
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400023e3
    call 0x1400010f0  ; 0x1400023e8
    mov qword ptr [rsp + 0x30], rax  ; 0x1400023ed
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400023f2
    lea rdx, [rsp + 0x30]  ; 0x1400023f7
    mov rcx, rax  ; 0x1400023fc
    call 0x1400013b0  ; 0x1400023ff
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002404
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140002409
    mov qword ptr [rax + 0x10], rcx  ; 0x14000240e
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002412
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002417
    mov qword ptr [rax + 0x18], rcx  ; 0x14000241c
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002420
    call 0x140001420  ; 0x140002425
    movzx r8d, byte ptr [rsp + 0x68]  ; 0x14000242a
    mov rdx, qword ptr [rsp + 0x70]  ; 0x140002430
    mov rcx, rax  ; 0x140002435
    call 0x140002c90  ; 0x140002438
    mov byte ptr [rsp + 0x22], 0  ; 0x14000243d
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002442
    call 0x140001420  ; 0x140002447
    add rax, qword ptr [rsp + 0x70]  ; 0x14000244c
    lea rdx, [rsp + 0x22]  ; 0x140002451
    mov rcx, rax  ; 0x140002456
    call 0x140001c20  ; 0x140002459
    lea rcx, [rsp + 0x20]  ; 0x14000245e
    call 0x140001880  ; 0x140002463
    add rsp, 0x58  ; 0x140002468
    ret  ; 0x14000246c
    int3   ; 0x14000246d
    int3   ; 0x14000246e
    int3   ; 0x14000246f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002470
    mov qword ptr [rsp + 8], rcx  ; 0x140002475
    sub rsp, 0x28  ; 0x14000247a
    call 0x140001cf0  ; 0x14000247e
    movzx eax, al  ; 0x140002483
    test eax, eax  ; 0x140002486
    je 0x140002496  ; 0x140002488
    mov rcx, qword ptr [rsp + 0x30]  ; 0x14000248a
    call 0x140003318  ; 0x14000248f
    jmp 0x1400024c0  ; 0x140002494
    cmp qword ptr [rsp + 0x38], 0x1000  ; 0x140002496
    jb 0x1400024b0  ; 0x14000249f
    lea rdx, [rsp + 0x38]  ; 0x1400024a1
    lea rcx, [rsp + 0x30]  ; 0x1400024a6
    call 0x1400019d0  ; 0x1400024ab
    mov rdx, qword ptr [rsp + 0x38]  ; 0x1400024b0
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400024b5
    call 0x1400032e4  ; 0x1400024ba
    nop  ; 0x1400024bf
    add rsp, 0x28  ; 0x1400024c0
    ret  ; 0x1400024c4
    int3   ; 0x1400024c5
    int3   ; 0x1400024c6
    int3   ; 0x1400024c7
    int3   ; 0x1400024c8
    int3   ; 0x1400024c9
    int3   ; 0x1400024ca
    int3   ; 0x1400024cb
    int3   ; 0x1400024cc
    int3   ; 0x1400024cd
    int3   ; 0x1400024ce
    int3   ; 0x1400024cf
    mov qword ptr [rsp + 8], rcx  ; 0x1400024d0
    mov rax, qword ptr [rsp + 8]  ; 0x1400024d5
    mov rax, qword ptr [rax]  ; 0x1400024da
    ret  ; 0x1400024dd
    int3   ; 0x1400024de
    int3   ; 0x1400024df
    mov dword ptr [rsp + 0x10], edx  ; 0x1400024e0
    mov qword ptr [rsp + 8], rcx  ; 0x1400024e4
    sub rsp, 0x68  ; 0x1400024e9
    mov rax, qword ptr [rip + 0x26b0c]  ; 0x1400024ed
    xor rax, rsp  ; 0x1400024f4
    mov qword ptr [rsp + 0x58], rax  ; 0x1400024f7
    mov dword ptr [rsp + 0x30], 0  ; 0x1400024fc
    lea rcx, [rsp + 0x40]  ; 0x140002504
    call 0x1400027f0  ; 0x140002509
    mov qword ptr [rsp + 0x38], rax  ; 0x14000250e
    mov rax, qword ptr [rsp + 0x38]  ; 0x140002513
    mov qword ptr [rsp + 0x20], rax  ; 0x140002518
    mov eax, dword ptr [rsp + 0x78]  ; 0x14000251d
    mov dword ptr [rsp + 0x2c], eax  ; 0x140002521
    cmp dword ptr [rsp + 0x78], 0  ; 0x140002525
    jge 0x14000255a  ; 0x14000252a
    xor eax, eax  ; 0x14000252c
    sub eax, dword ptr [rsp + 0x2c]  ; 0x14000252e
    mov edx, eax  ; 0x140002532
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140002534
    call 0x140002690  ; 0x140002539
    mov qword ptr [rsp + 0x20], rax  ; 0x14000253e
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002543
    dec rax  ; 0x140002548
    mov qword ptr [rsp + 0x20], rax  ; 0x14000254b
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002550
    mov byte ptr [rax], 0x2d  ; 0x140002555
    jmp 0x14000256d  ; 0x140002558
    mov edx, dword ptr [rsp + 0x2c]  ; 0x14000255a
    mov rcx, qword ptr [rsp + 0x20]  ; 0x14000255e
    call 0x140002690  ; 0x140002563
    mov qword ptr [rsp + 0x20], rax  ; 0x140002568
    lea rcx, [rsp + 0x28]  ; 0x14000256d
    call 0x140001420  ; 0x140002572
    mov r9, rax  ; 0x140002577
    mov r8, qword ptr [rsp + 0x38]  ; 0x14000257a
    mov rdx, qword ptr [rsp + 0x20]  ; 0x14000257f
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140002584
    call 0x1400020c0  ; 0x140002589
    mov eax, dword ptr [rsp + 0x30]  ; 0x14000258e
    or eax, 1  ; 0x140002592
    mov dword ptr [rsp + 0x30], eax  ; 0x140002595
    mov rax, qword ptr [rsp + 0x70]  ; 0x140002599
    mov rcx, qword ptr [rsp + 0x58]  ; 0x14000259e
    xor rcx, rsp  ; 0x1400025a3
    call 0x1400033b0  ; 0x1400025a6
    add rsp, 0x68  ; 0x1400025ab
    ret  ; 0x1400025af
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400025b0
    mov qword ptr [rsp + 8], rcx  ; 0x1400025b5
    sub rsp, 0x68  ; 0x1400025ba
    mov rax, qword ptr [rip + 0x26a3b]  ; 0x1400025be
    xor rax, rsp  ; 0x1400025c5
    mov qword ptr [rsp + 0x58], rax  ; 0x1400025c8
    mov dword ptr [rsp + 0x2c], 0  ; 0x1400025cd
    lea rcx, [rsp + 0x40]  ; 0x1400025d5
    call 0x1400027f0  ; 0x1400025da
    mov qword ptr [rsp + 0x38], rax  ; 0x1400025df
    mov rax, qword ptr [rsp + 0x38]  ; 0x1400025e4
    mov qword ptr [rsp + 0x20], rax  ; 0x1400025e9
    mov rax, qword ptr [rsp + 0x78]  ; 0x1400025ee
    mov qword ptr [rsp + 0x30], rax  ; 0x1400025f3
    cmp qword ptr [rsp + 0x78], 0  ; 0x1400025f8
    jge 0x140002630  ; 0x1400025fe
    xor eax, eax  ; 0x140002600
    sub rax, qword ptr [rsp + 0x30]  ; 0x140002602
    mov rdx, rax  ; 0x140002607
    mov rcx, qword ptr [rsp + 0x20]  ; 0x14000260a
    call 0x1400026f0  ; 0x14000260f
    mov qword ptr [rsp + 0x20], rax  ; 0x140002614
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002619
    dec rax  ; 0x14000261e
    mov qword ptr [rsp + 0x20], rax  ; 0x140002621
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002626
    mov byte ptr [rax], 0x2d  ; 0x14000262b
    jmp 0x140002644  ; 0x14000262e
    mov rdx, qword ptr [rsp + 0x30]  ; 0x140002630
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140002635
    call 0x1400026f0  ; 0x14000263a
    mov qword ptr [rsp + 0x20], rax  ; 0x14000263f
    lea rcx, [rsp + 0x28]  ; 0x140002644
    call 0x140001420  ; 0x140002649
    mov r9, rax  ; 0x14000264e
    mov r8, qword ptr [rsp + 0x38]  ; 0x140002651
    mov rdx, qword ptr [rsp + 0x20]  ; 0x140002656
    mov rcx, qword ptr [rsp + 0x70]  ; 0x14000265b
    call 0x1400020c0  ; 0x140002660
    mov eax, dword ptr [rsp + 0x2c]  ; 0x140002665
    or eax, 1  ; 0x140002669
    mov dword ptr [rsp + 0x2c], eax  ; 0x14000266c
    mov rax, qword ptr [rsp + 0x70]  ; 0x140002670
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140002675
    xor rcx, rsp  ; 0x14000267a
    call 0x1400033b0  ; 0x14000267d
    add rsp, 0x68  ; 0x140002682
    ret  ; 0x140002686
    int3   ; 0x140002687
    int3   ; 0x140002688
    int3   ; 0x140002689
    int3   ; 0x14000268a
    int3   ; 0x14000268b
    int3   ; 0x14000268c
    int3   ; 0x14000268d
    int3   ; 0x14000268e
    int3   ; 0x14000268f
    mov dword ptr [rsp + 0x10], edx  ; 0x140002690
    mov qword ptr [rsp + 8], rcx  ; 0x140002694
    sub rsp, 0x18  ; 0x140002699
    mov eax, dword ptr [rsp + 0x28]  ; 0x14000269d
    mov dword ptr [rsp], eax  ; 0x1400026a1
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400026a4
    dec rax  ; 0x1400026a9
    mov qword ptr [rsp + 0x20], rax  ; 0x1400026ac
    xor edx, edx  ; 0x1400026b1
    mov eax, dword ptr [rsp]  ; 0x1400026b3
    mov ecx, 0xa  ; 0x1400026b6
    div ecx  ; 0x1400026bb
    mov eax, edx  ; 0x1400026bd
    add eax, 0x30  ; 0x1400026bf
    mov rcx, qword ptr [rsp + 0x20]  ; 0x1400026c2
    mov byte ptr [rcx], al  ; 0x1400026c7
    xor edx, edx  ; 0x1400026c9
    mov eax, dword ptr [rsp]  ; 0x1400026cb
    mov ecx, 0xa  ; 0x1400026ce
    div ecx  ; 0x1400026d3
    mov dword ptr [rsp], eax  ; 0x1400026d5
    cmp dword ptr [rsp], 0  ; 0x1400026d8
    jne 0x1400026a4  ; 0x1400026dc
    mov rax, qword ptr [rsp + 0x20]  ; 0x1400026de
    add rsp, 0x18  ; 0x1400026e3
    ret  ; 0x1400026e7
    int3   ; 0x1400026e8
    int3   ; 0x1400026e9
    int3   ; 0x1400026ea
    int3   ; 0x1400026eb
    int3   ; 0x1400026ec
    int3   ; 0x1400026ed
    int3   ; 0x1400026ee
    int3   ; 0x1400026ef
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400026f0
    mov qword ptr [rsp + 8], rcx  ; 0x1400026f5
    sub rsp, 0x18  ; 0x1400026fa
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400026fe
    mov qword ptr [rsp], rax  ; 0x140002703
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002707
    dec rax  ; 0x14000270c
    mov qword ptr [rsp + 0x20], rax  ; 0x14000270f
    xor edx, edx  ; 0x140002714
    mov rax, qword ptr [rsp]  ; 0x140002716
    mov ecx, 0xa  ; 0x14000271a
    div rcx  ; 0x14000271f
    mov rax, rdx  ; 0x140002722
    add rax, 0x30  ; 0x140002725
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140002729
    mov byte ptr [rcx], al  ; 0x14000272e
    xor edx, edx  ; 0x140002730
    mov rax, qword ptr [rsp]  ; 0x140002732
    mov ecx, 0xa  ; 0x140002736
    div rcx  ; 0x14000273b
    mov qword ptr [rsp], rax  ; 0x14000273e
    cmp qword ptr [rsp], 0  ; 0x140002742
    jne 0x140002707  ; 0x140002747
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002749
    add rsp, 0x18  ; 0x14000274e
    ret  ; 0x140002752
    int3   ; 0x140002753
    int3   ; 0x140002754
    int3   ; 0x140002755
    int3   ; 0x140002756
    int3   ; 0x140002757
    int3   ; 0x140002758
    int3   ; 0x140002759
    int3   ; 0x14000275a
    int3   ; 0x14000275b
    int3   ; 0x14000275c
    int3   ; 0x14000275d
    int3   ; 0x14000275e
    int3   ; 0x14000275f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002760
    mov qword ptr [rsp + 8], rcx  ; 0x140002765
    sub rsp, 0x68  ; 0x14000276a
    mov rax, qword ptr [rip + 0x2688b]  ; 0x14000276e
    xor rax, rsp  ; 0x140002775
    mov qword ptr [rsp + 0x50], rax  ; 0x140002778
    mov dword ptr [rsp + 0x24], 0  ; 0x14000277d
    lea rcx, [rsp + 0x38]  ; 0x140002785
    call 0x1400027f0  ; 0x14000278a
    mov qword ptr [rsp + 0x28], rax  ; 0x14000278f
    mov rdx, qword ptr [rsp + 0x78]  ; 0x140002794
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002799
    call 0x1400026f0  ; 0x14000279e
    mov qword ptr [rsp + 0x30], rax  ; 0x1400027a3
    lea rcx, [rsp + 0x20]  ; 0x1400027a8
    call 0x140001420  ; 0x1400027ad
    mov r9, rax  ; 0x1400027b2
    mov r8, qword ptr [rsp + 0x28]  ; 0x1400027b5
    mov rdx, qword ptr [rsp + 0x30]  ; 0x1400027ba
    mov rcx, qword ptr [rsp + 0x70]  ; 0x1400027bf
    call 0x1400020c0  ; 0x1400027c4
    mov eax, dword ptr [rsp + 0x24]  ; 0x1400027c9
    or eax, 1  ; 0x1400027cd
    mov dword ptr [rsp + 0x24], eax  ; 0x1400027d0
    mov rax, qword ptr [rsp + 0x70]  ; 0x1400027d4
    mov rcx, qword ptr [rsp + 0x50]  ; 0x1400027d9
    xor rcx, rsp  ; 0x1400027de
    call 0x1400033b0  ; 0x1400027e1
    add rsp, 0x68  ; 0x1400027e6
    ret  ; 0x1400027ea
    int3   ; 0x1400027eb
    int3   ; 0x1400027ec
    int3   ; 0x1400027ed
    int3   ; 0x1400027ee
    int3   ; 0x1400027ef
    mov qword ptr [rsp + 8], rcx  ; 0x1400027f0
    mov rax, qword ptr [rsp + 8]  ; 0x1400027f5
    add rax, 0x15  ; 0x1400027fa
    ret  ; 0x1400027fe
    int3   ; 0x1400027ff
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002800
    mov qword ptr [rsp + 8], rcx  ; 0x140002805
    sub rsp, 0x58  ; 0x14000280a
    mov rax, qword ptr [rsp + 0x60]  ; 0x14000280e
    mov qword ptr [rsp + 0x30], rax  ; 0x140002813
    mov rcx, qword ptr [rsp + 0x68]  ; 0x140002818
    call 0x140001b30  ; 0x14000281d
    mov rdx, rax  ; 0x140002822
    lea rcx, [rsp + 0x21]  ; 0x140002825
    call 0x140002d40  ; 0x14000282a
    mov qword ptr [rsp + 0x28], rax  ; 0x14000282f
    movzx eax, byte ptr [rsp + 0x22]  ; 0x140002834
    mov byte ptr [rsp + 0x20], al  ; 0x140002839
    mov r8, qword ptr [rsp + 0x28]  ; 0x14000283d
    movzx edx, byte ptr [rsp + 0x20]  ; 0x140002842
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002847
    call 0x140002090  ; 0x14000284c
    nop  ; 0x140002851
    mov rax, qword ptr [rsp + 0x68]  ; 0x140002852
    mov rax, qword ptr [rax + 0x10]  ; 0x140002857
    mov qword ptr [rsp + 0x38], rax  ; 0x14000285b
    mov rax, qword ptr [rsp + 0x68]  ; 0x140002860
    mov rcx, rax  ; 0x140002865
    call 0x140002a90  ; 0x140002868
    mov qword ptr [rsp + 0x40], rax  ; 0x14000286d
    mov r8, qword ptr [rsp + 0x38]  ; 0x140002872
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140002877
    mov rcx, qword ptr [rsp + 0x60]  ; 0x14000287c
    call 0x140002190  ; 0x140002881
    nop  ; 0x140002886
    mov rax, qword ptr [rsp + 0x60]  ; 0x140002887
    add rsp, 0x58  ; 0x14000288c
    ret  ; 0x140002890
    int3   ; 0x140002891
    int3   ; 0x140002892
    int3   ; 0x140002893
    int3   ; 0x140002894
    int3   ; 0x140002895
    int3   ; 0x140002896
    int3   ; 0x140002897
    int3   ; 0x140002898
    int3   ; 0x140002899
    int3   ; 0x14000289a
    int3   ; 0x14000289b
    int3   ; 0x14000289c
    int3   ; 0x14000289d
    int3   ; 0x14000289e
    int3   ; 0x14000289f
    mov byte ptr [rsp + 0x18], r8b  ; 0x1400028a0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400028a5
    mov qword ptr [rsp + 8], rcx  ; 0x1400028aa
    sub rsp, 0x38  ; 0x1400028af
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400028b3
    mov qword ptr [rsp + 0x28], rax  ; 0x1400028b8
    movzx edx, byte ptr [rsp + 0x20]  ; 0x1400028bd
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400028c2
    call 0x140001040  ; 0x1400028c7
    nop  ; 0x1400028cc
    mov r8, qword ptr [rsp + 0x48]  ; 0x1400028cd
    movzx edx, byte ptr [rsp + 0x50]  ; 0x1400028d2
    mov rcx, qword ptr [rsp + 0x40]  ; 0x1400028d7
    call 0x1400022f0  ; 0x1400028dc
    nop  ; 0x1400028e1
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400028e2
    add rsp, 0x38  ; 0x1400028e7
    ret  ; 0x1400028eb
    int3   ; 0x1400028ec
    int3   ; 0x1400028ed
    int3   ; 0x1400028ee
    int3   ; 0x1400028ef
    mov qword ptr [rsp + 8], rcx  ; 0x1400028f0
    sub rsp, 0x28  ; 0x1400028f5
    mov rcx, qword ptr [rsp + 0x30]  ; 0x1400028f9
    call 0x140002b30  ; 0x1400028fe
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002903
    mov rcx, rax  ; 0x140002908
    call 0x140001840  ; 0x14000290b
    add rsp, 0x28  ; 0x140002910
    ret  ; 0x140002914
    int3   ; 0x140002915
    int3   ; 0x140002916
    int3   ; 0x140002917
    int3   ; 0x140002918
    int3   ; 0x140002919
    int3   ; 0x14000291a
    int3   ; 0x14000291b
    int3   ; 0x14000291c
    int3   ; 0x14000291d
    int3   ; 0x14000291e
    int3   ; 0x14000291f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002920
    mov qword ptr [rsp + 8], rcx  ; 0x140002925
    sub rsp, 0x28  ; 0x14000292a
    mov rax, qword ptr [rsp + 0x30]  ; 0x14000292e
    mov rcx, rax  ; 0x140002933
    call 0x140002a90  ; 0x140002936
    add rax, qword ptr [rsp + 0x38]  ; 0x14000293b
    add rsp, 0x28  ; 0x140002940
    ret  ; 0x140002944
    int3   ; 0x140002945
    int3   ; 0x140002946
    int3   ; 0x140002947
    int3   ; 0x140002948
    int3   ; 0x140002949
    int3   ; 0x14000294a
    int3   ; 0x14000294b
    int3   ; 0x14000294c
    int3   ; 0x14000294d
    int3   ; 0x14000294e
    int3   ; 0x14000294f
    mov qword ptr [rsp + 8], rcx  ; 0x140002950
    sub rsp, 0x38  ; 0x140002955
    call 0x140001cf0  ; 0x140002959
    movzx eax, al  ; 0x14000295e
    test eax, eax  ; 0x140002961
    je 0x14000299a  ; 0x140002963
    mov qword ptr [rsp + 0x20], 0  ; 0x140002965
    jmp 0x14000297d  ; 0x14000296e
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002970
    inc rax  ; 0x140002975
    mov qword ptr [rsp + 0x20], rax  ; 0x140002978
    cmp qword ptr [rsp + 0x20], 0x10  ; 0x14000297d
    jae 0x14000299a  ; 0x140002983
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002985
    mov rcx, qword ptr [rsp + 0x40]  ; 0x14000298a
    add rcx, rax  ; 0x14000298f
    mov rax, rcx  ; 0x140002992
    mov byte ptr [rax], 0  ; 0x140002995
    jmp 0x140002970  ; 0x140002998
    add rsp, 0x38  ; 0x14000299a
    ret  ; 0x14000299e
    int3   ; 0x14000299f
    mov qword ptr [rsp + 8], rcx  ; 0x1400029a0
    sub rsp, 0x38  ; 0x1400029a5
    mov rax, qword ptr [rsp + 0x40]  ; 0x1400029a9
    mov qword ptr [rsp + 0x28], rax  ; 0x1400029ae
    lea rdx, [rip + 0x1a993]  ; 0x1400029b3
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400029ba
    call 0x140002180  ; 0x1400029bf
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400029c4
    mov qword ptr [rax + 0x10], 0  ; 0x1400029c9
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400029d1
    mov qword ptr [rax + 0x18], 0xf  ; 0x1400029d6
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400029de
    call 0x140002950  ; 0x1400029e3
    mov byte ptr [rsp + 0x20], 0  ; 0x1400029e8
    mov eax, 1  ; 0x1400029ed
    imul rax, rax, 0  ; 0x1400029f2
    mov rcx, qword ptr [rsp + 0x28]  ; 0x1400029f6
    add rcx, rax  ; 0x1400029fb
    mov rax, rcx  ; 0x1400029fe
    lea rdx, [rsp + 0x20]  ; 0x140002a01
    mov rcx, rax  ; 0x140002a06
    call 0x140001c20  ; 0x140002a09
    add rsp, 0x38  ; 0x140002a0e
    ret  ; 0x140002a12
    int3   ; 0x140002a13
    int3   ; 0x140002a14
    int3   ; 0x140002a15
    int3   ; 0x140002a16
    int3   ; 0x140002a17
    int3   ; 0x140002a18
    int3   ; 0x140002a19
    int3   ; 0x140002a1a
    int3   ; 0x140002a1b
    int3   ; 0x140002a1c
    int3   ; 0x140002a1d
    int3   ; 0x140002a1e
    int3   ; 0x140002a1f
    mov qword ptr [rsp + 0x18], r8  ; 0x140002a20
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002a25
    mov qword ptr [rsp + 8], rcx  ; 0x140002a2a
    sub rsp, 0x28  ; 0x140002a2f
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002a33
    inc rax  ; 0x140002a38
    mov r8, rax  ; 0x140002a3b
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140002a3e
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002a43
    call 0x140002d10  ; 0x140002a48
    nop  ; 0x140002a4d
    add rsp, 0x28  ; 0x140002a4e
    ret  ; 0x140002a52
    int3   ; 0x140002a53
    int3   ; 0x140002a54
    int3   ; 0x140002a55
    int3   ; 0x140002a56
    int3   ; 0x140002a57
    int3   ; 0x140002a58
    int3   ; 0x140002a59
    int3   ; 0x140002a5a
    int3   ; 0x140002a5b
    int3   ; 0x140002a5c
    int3   ; 0x140002a5d
    int3   ; 0x140002a5e
    int3   ; 0x140002a5f
    mov qword ptr [rsp + 8], rcx  ; 0x140002a60
    sub rsp, 0x18  ; 0x140002a65
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002a69
    cmp qword ptr [rax + 0x18], 0xf  ; 0x140002a6e
    jbe 0x140002a7e  ; 0x140002a73
    mov dword ptr [rsp], 1  ; 0x140002a75
    jmp 0x140002a85  ; 0x140002a7c
    mov dword ptr [rsp], 0  ; 0x140002a7e
    movzx eax, byte ptr [rsp]  ; 0x140002a85
    add rsp, 0x18  ; 0x140002a89
    ret  ; 0x140002a8d
    int3   ; 0x140002a8e
    int3   ; 0x140002a8f
    mov qword ptr [rsp + 8], rcx  ; 0x140002a90
    sub rsp, 0x38  ; 0x140002a95
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002a99
    mov qword ptr [rsp + 0x20], rax  ; 0x140002a9e
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002aa3
    call 0x140002a60  ; 0x140002aa8
    movzx eax, al  ; 0x140002aad
    test eax, eax  ; 0x140002ab0
    je 0x140002ac6  ; 0x140002ab2
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002ab4
    mov rcx, qword ptr [rax]  ; 0x140002ab9
    call 0x140001420  ; 0x140002abc
    mov qword ptr [rsp + 0x20], rax  ; 0x140002ac1
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002ac6
    add rsp, 0x38  ; 0x140002acb
    ret  ; 0x140002acf
    mov qword ptr [rsp + 8], rcx  ; 0x140002ad0
    sub rsp, 0x38  ; 0x140002ad5
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002ad9
    mov rcx, rax  ; 0x140002ade
    call 0x140001880  ; 0x140002ae1
    call 0x140001cf0  ; 0x140002ae6
    movzx eax, al  ; 0x140002aeb
    test eax, eax  ; 0x140002aee
    je 0x140002b27  ; 0x140002af0
    mov qword ptr [rsp + 0x20], 0  ; 0x140002af2
    jmp 0x140002b0a  ; 0x140002afb
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002afd
    inc rax  ; 0x140002b02
    mov qword ptr [rsp + 0x20], rax  ; 0x140002b05
    cmp qword ptr [rsp + 0x20], 0x10  ; 0x140002b0a
    jae 0x140002b27  ; 0x140002b10
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002b12
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002b17
    add rcx, rax  ; 0x140002b1c
    mov rax, rcx  ; 0x140002b1f
    mov byte ptr [rax], 0  ; 0x140002b22
    jmp 0x140002afd  ; 0x140002b25
    add rsp, 0x38  ; 0x140002b27
    ret  ; 0x140002b2b
    int3   ; 0x140002b2c
    int3   ; 0x140002b2d
    int3   ; 0x140002b2e
    int3   ; 0x140002b2f
    mov qword ptr [rsp + 8], rcx  ; 0x140002b30
    sub rsp, 0x48  ; 0x140002b35
    mov rax, qword ptr [rsp + 0x50]  ; 0x140002b39
    mov qword ptr [rsp + 0x28], rax  ; 0x140002b3e
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002b43
    call 0x140001880  ; 0x140002b48
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002b4d
    call 0x140002a60  ; 0x140002b52
    movzx eax, al  ; 0x140002b57
    test eax, eax  ; 0x140002b5a
    je 0x140002b95  ; 0x140002b5c
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002b5e
    call 0x140001b30  ; 0x140002b63
    mov qword ptr [rsp + 0x30], rax  ; 0x140002b68
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b6d
    mov r8, qword ptr [rax + 0x18]  ; 0x140002b72
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b76
    mov rdx, qword ptr [rax]  ; 0x140002b7b
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002b7e
    call 0x140002a20  ; 0x140002b83
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b88
    mov rcx, rax  ; 0x140002b8d
    call 0x140002ad0  ; 0x140002b90
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002b95
    mov qword ptr [rax + 0x10], 0  ; 0x140002b9a
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002ba2
    mov qword ptr [rax + 0x18], 0xf  ; 0x140002ba7
    mov byte ptr [rsp + 0x20], 0  ; 0x140002baf
    mov eax, 1  ; 0x140002bb4
    imul rax, rax, 0  ; 0x140002bb9
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140002bbd
    add rcx, rax  ; 0x140002bc2
    mov rax, rcx  ; 0x140002bc5
    lea rdx, [rsp + 0x20]  ; 0x140002bc8
    mov rcx, rax  ; 0x140002bcd
    call 0x140001c20  ; 0x140002bd0
    add rsp, 0x48  ; 0x140002bd5
    ret  ; 0x140002bd9
    int3   ; 0x140002bda
    int3   ; 0x140002bdb
    int3   ; 0x140002bdc
    int3   ; 0x140002bdd
    int3   ; 0x140002bde
    int3   ; 0x140002bdf
    mov byte ptr [rsp + 0x18], r8b  ; 0x140002be0
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002be5
    mov qword ptr [rsp + 8], rcx  ; 0x140002bea
    sub rsp, 0x38  ; 0x140002bef
    call 0x140001cf0  ; 0x140002bf3
    movzx eax, al  ; 0x140002bf8
    test eax, eax  ; 0x140002bfb
    je 0x140002c40  ; 0x140002bfd
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002bff
    mov qword ptr [rsp + 0x20], rax  ; 0x140002c04
    jmp 0x140002c25  ; 0x140002c09
    mov rax, qword ptr [rsp + 0x48]  ; 0x140002c0b
    dec rax  ; 0x140002c10
    mov qword ptr [rsp + 0x48], rax  ; 0x140002c13
    mov rax, qword ptr [rsp + 0x20]  ; 0x140002c18
    inc rax  ; 0x140002c1d
    mov qword ptr [rsp + 0x20], rax  ; 0x140002c20
    cmp qword ptr [rsp + 0x48], 0  ; 0x140002c25
    jbe 0x140002c3e  ; 0x140002c2b
    lea rdx, [rsp + 0x50]  ; 0x140002c2d
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140002c32
    call 0x140001490  ; 0x140002c37
    jmp 0x140002c0b  ; 0x140002c3c
    jmp 0x140002c7c  ; 0x140002c3e
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002c40
    mov qword ptr [rsp + 0x28], rax  ; 0x140002c45
    jmp 0x140002c66  ; 0x140002c4a
    mov rax, qword ptr [rsp + 0x48]  ; 0x140002c4c
    dec rax  ; 0x140002c51
    mov qword ptr [rsp + 0x48], rax  ; 0x140002c54
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002c59
    inc rax  ; 0x140002c5e
    mov qword ptr [rsp + 0x28], rax  ; 0x140002c61
    cmp qword ptr [rsp + 0x48], 0  ; 0x140002c66
    jbe 0x140002c7c  ; 0x140002c6c
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002c6e
    movzx ecx, byte ptr [rsp + 0x50]  ; 0x140002c73
    mov byte ptr [rax], cl  ; 0x140002c78
    jmp 0x140002c4c  ; 0x140002c7a
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002c7c
    add rsp, 0x38  ; 0x140002c81
    ret  ; 0x140002c85
    int3   ; 0x140002c86
    int3   ; 0x140002c87
    int3   ; 0x140002c88
    int3   ; 0x140002c89
    int3   ; 0x140002c8a
    int3   ; 0x140002c8b
    int3   ; 0x140002c8c
    int3   ; 0x140002c8d
    int3   ; 0x140002c8e
    int3   ; 0x140002c8f
    mov byte ptr [rsp + 0x18], r8b  ; 0x140002c90
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002c95
    mov qword ptr [rsp + 8], rcx  ; 0x140002c9a
    sub rsp, 0x28  ; 0x140002c9f
    call 0x140001cf0  ; 0x140002ca3
    movzx eax, al  ; 0x140002ca8
    test eax, eax  ; 0x140002cab
    je 0x140002cc6  ; 0x140002cad
    movzx r8d, byte ptr [rsp + 0x40]  ; 0x140002caf
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140002cb5
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002cba
    call 0x140002be0  ; 0x140002cbf
    jmp 0x140002cdc  ; 0x140002cc4
    movsx eax, byte ptr [rsp + 0x40]  ; 0x140002cc6
    mov r8, qword ptr [rsp + 0x38]  ; 0x140002ccb
    mov edx, eax  ; 0x140002cd0
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002cd2
    call 0x14001b630  ; 0x140002cd7
    add rsp, 0x28  ; 0x140002cdc
    ret  ; 0x140002ce0
    int3   ; 0x140002ce1
    int3   ; 0x140002ce2
    int3   ; 0x140002ce3
    int3   ; 0x140002ce4
    int3   ; 0x140002ce5
    int3   ; 0x140002ce6
    int3   ; 0x140002ce7
    int3   ; 0x140002ce8
    int3   ; 0x140002ce9
    int3   ; 0x140002cea
    int3   ; 0x140002ceb
    int3   ; 0x140002cec
    int3   ; 0x140002ced
    int3   ; 0x140002cee
    int3   ; 0x140002cef
    mov qword ptr [rsp + 8], rcx  ; 0x140002cf0
    sub rsp, 0x28  ; 0x140002cf5
    mov rax, qword ptr [rsp + 0x30]  ; 0x140002cf9
    mov rcx, rax  ; 0x140002cfe
    call 0x140002a90  ; 0x140002d01
    add rsp, 0x28  ; 0x140002d06
    ret  ; 0x140002d0a
    int3   ; 0x140002d0b
    int3   ; 0x140002d0c
    int3   ; 0x140002d0d
    int3   ; 0x140002d0e
    int3   ; 0x140002d0f
    mov qword ptr [rsp + 0x18], r8  ; 0x140002d10
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002d15
    mov qword ptr [rsp + 8], rcx  ; 0x140002d1a
    sub rsp, 0x28  ; 0x140002d1f
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140002d23
    mov rcx, qword ptr [rsp + 0x38]  ; 0x140002d28
    call 0x140002470  ; 0x140002d2d
    add rsp, 0x28  ; 0x140002d32
    ret  ; 0x140002d36
    int3   ; 0x140002d37
    int3   ; 0x140002d38
    int3   ; 0x140002d39
    int3   ; 0x140002d3a
    int3   ; 0x140002d3b
    int3   ; 0x140002d3c
    int3   ; 0x140002d3d
    int3   ; 0x140002d3e
    int3   ; 0x140002d3f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002d40
    mov qword ptr [rsp + 8], rcx  ; 0x140002d45
    mov rax, qword ptr [rsp + 8]  ; 0x140002d4a
    ret  ; 0x140002d4f
    mov dword ptr [rsp + 0x10], edx  ; 0x140002d50
    mov qword ptr [rsp + 8], rcx  ; 0x140002d54
    sub rsp, 0x38  ; 0x140002d59
    mov dword ptr [rsp + 0x20], 0  ; 0x140002d5d
    mov edx, dword ptr [rsp + 0x48]  ; 0x140002d65
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002d69
    call 0x1400024e0  ; 0x140002d6e
    mov eax, dword ptr [rsp + 0x20]  ; 0x140002d73
    or eax, 1  ; 0x140002d77
    mov dword ptr [rsp + 0x20], eax  ; 0x140002d7a
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002d7e
    add rsp, 0x38  ; 0x140002d83
    ret  ; 0x140002d87
    int3   ; 0x140002d88
    int3   ; 0x140002d89
    int3   ; 0x140002d8a
    int3   ; 0x140002d8b
    int3   ; 0x140002d8c
    int3   ; 0x140002d8d
    int3   ; 0x140002d8e
    int3   ; 0x140002d8f
    movss dword ptr [rsp + 0x10], xmm1  ; 0x140002d90
    mov qword ptr [rsp + 8], rcx  ; 0x140002d96
    sub rsp, 0x38  ; 0x140002d9b
    mov dword ptr [rsp + 0x20], 0  ; 0x140002d9f
    cvtss2sd xmm0, dword ptr [rsp + 0x48]  ; 0x140002da7
    movaps xmm1, xmm0  ; 0x140002dad
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002db0
    call 0x140002dd0  ; 0x140002db5
    mov eax, dword ptr [rsp + 0x20]  ; 0x140002dba
    or eax, 1  ; 0x140002dbe
    mov dword ptr [rsp + 0x20], eax  ; 0x140002dc1
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002dc5
    add rsp, 0x38  ; 0x140002dca
    ret  ; 0x140002dce
    int3   ; 0x140002dcf
    movsd qword ptr [rsp + 0x10], xmm1  ; 0x140002dd0
    mov qword ptr [rsp + 8], rcx  ; 0x140002dd6
    sub rsp, 0x48  ; 0x140002ddb
    mov dword ptr [rsp + 0x20], 0  ; 0x140002ddf
    movsd xmm1, qword ptr [rsp + 0x58]  ; 0x140002de7
    movq rdx, xmm1  ; 0x140002ded
    lea rcx, [rip + 0x1a5e3]  ; 0x140002df2
    call 0x140002f00  ; 0x140002df9
    cdqe   ; 0x140002dfe
    mov qword ptr [rsp + 0x28], rax  ; 0x140002e00
    xor r8d, r8d  ; 0x140002e05
    mov rdx, qword ptr [rsp + 0x28]  ; 0x140002e08
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002e0d
    call 0x1400028a0  ; 0x140002e12
    mov qword ptr [rsp + 0x38], rax  ; 0x140002e17
    mov eax, dword ptr [rsp + 0x20]  ; 0x140002e1c
    or eax, 1  ; 0x140002e20
    mov dword ptr [rsp + 0x20], eax  ; 0x140002e23
    mov rax, qword ptr [rsp + 0x28]  ; 0x140002e27
    inc rax  ; 0x140002e2c
    mov qword ptr [rsp + 0x30], rax  ; 0x140002e2f
    xor edx, edx  ; 0x140002e34
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140002e36
    call 0x140002920  ; 0x140002e3b
    movsd xmm3, qword ptr [rsp + 0x58]  ; 0x140002e40
    movq r9, xmm3  ; 0x140002e46
    lea r8, [rip + 0x1a58a]  ; 0x140002e4b
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140002e52
    mov rdx, rcx  ; 0x140002e57
    mov rcx, rax  ; 0x140002e5a
    call 0x1400030f0  ; 0x140002e5d
    mov rax, qword ptr [rsp + 0x50]  ; 0x140002e62
    add rsp, 0x48  ; 0x140002e67
    ret  ; 0x140002e6b
    int3   ; 0x140002e6c
    int3   ; 0x140002e6d
    int3   ; 0x140002e6e
    int3   ; 0x140002e6f
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002e70
    mov qword ptr [rsp + 8], rcx  ; 0x140002e75
    sub rsp, 0x38  ; 0x140002e7a
    mov dword ptr [rsp + 0x20], 0  ; 0x140002e7e
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140002e86
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002e8b
    call 0x1400025b0  ; 0x140002e90
    mov eax, dword ptr [rsp + 0x20]  ; 0x140002e95
    or eax, 1  ; 0x140002e99
    mov dword ptr [rsp + 0x20], eax  ; 0x140002e9c
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002ea0
    add rsp, 0x38  ; 0x140002ea5
    ret  ; 0x140002ea9
    int3   ; 0x140002eaa
    int3   ; 0x140002eab
    int3   ; 0x140002eac
    int3   ; 0x140002ead
    int3   ; 0x140002eae
    int3   ; 0x140002eaf
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002eb0
    mov qword ptr [rsp + 8], rcx  ; 0x140002eb5
    sub rsp, 0x38  ; 0x140002eba
    mov dword ptr [rsp + 0x20], 0  ; 0x140002ebe
    mov rdx, qword ptr [rsp + 0x48]  ; 0x140002ec6
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002ecb
    call 0x140002760  ; 0x140002ed0
    mov eax, dword ptr [rsp + 0x20]  ; 0x140002ed5
    or eax, 1  ; 0x140002ed9
    mov dword ptr [rsp + 0x20], eax  ; 0x140002edc
    mov rax, qword ptr [rsp + 0x40]  ; 0x140002ee0
    add rsp, 0x38  ; 0x140002ee5
    ret  ; 0x140002ee9
    int3   ; 0x140002eea
    int3   ; 0x140002eeb
    int3   ; 0x140002eec
    int3   ; 0x140002eed
    int3   ; 0x140002eee
    int3   ; 0x140002eef
    lea rax, [rip + 0x26ca9]  ; 0x140002ef0
    ret  ; 0x140002ef7
    int3   ; 0x140002ef8
    int3   ; 0x140002ef9
    int3   ; 0x140002efa
    int3   ; 0x140002efb
    int3   ; 0x140002efc
    int3   ; 0x140002efd
    int3   ; 0x140002efe
    int3   ; 0x140002eff
    mov qword ptr [rsp + 8], rcx  ; 0x140002f00
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002f05
    mov qword ptr [rsp + 0x18], r8  ; 0x140002f0a
    mov qword ptr [rsp + 0x20], r9  ; 0x140002f0f
    sub rsp, 0x38  ; 0x140002f14
    lea rax, [rsp + 0x48]  ; 0x140002f18
    mov qword ptr [rsp + 0x28], rax  ; 0x140002f1d
    mov r8, qword ptr [rsp + 0x28]  ; 0x140002f22
    xor edx, edx  ; 0x140002f27
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140002f29
    call 0x140002fa0  ; 0x140002f2e
    mov dword ptr [rsp + 0x20], eax  ; 0x140002f33
    mov qword ptr [rsp + 0x28], 0  ; 0x140002f37
    mov eax, dword ptr [rsp + 0x20]  ; 0x140002f40
    add rsp, 0x38  ; 0x140002f44
    ret  ; 0x140002f48
    int3   ; 0x140002f49
    int3   ; 0x140002f4a
    int3   ; 0x140002f4b
    int3   ; 0x140002f4c
    int3   ; 0x140002f4d
    int3   ; 0x140002f4e
    int3   ; 0x140002f4f
    mov qword ptr [rsp + 0x20], r9  ; 0x140002f50
    mov qword ptr [rsp + 0x18], r8  ; 0x140002f55
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002f5a
    mov qword ptr [rsp + 8], rcx  ; 0x140002f5f
    sub rsp, 0x38  ; 0x140002f64
    call 0x140002ef0  ; 0x140002f68
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140002f6d
    mov qword ptr [rsp + 0x20], rcx  ; 0x140002f72
    mov r9, qword ptr [rsp + 0x50]  ; 0x140002f77
    mov r8, qword ptr [rsp + 0x48]  ; 0x140002f7c
    mov rdx, qword ptr [rsp + 0x40]  ; 0x140002f81
    mov rcx, qword ptr [rax]  ; 0x140002f86
    call 0x14000cec4  ; 0x140002f89
    add rsp, 0x38  ; 0x140002f8e
    ret  ; 0x140002f92
    int3   ; 0x140002f93
    int3   ; 0x140002f94
    int3   ; 0x140002f95
    int3   ; 0x140002f96
    int3   ; 0x140002f97
    int3   ; 0x140002f98
    int3   ; 0x140002f99
    int3   ; 0x140002f9a
    int3   ; 0x140002f9b
    int3   ; 0x140002f9c
    int3   ; 0x140002f9d
    int3   ; 0x140002f9e
    int3   ; 0x140002f9f
    mov qword ptr [rsp + 0x18], r8  ; 0x140002fa0
    mov qword ptr [rsp + 0x10], rdx  ; 0x140002fa5
    mov qword ptr [rsp + 8], rcx  ; 0x140002faa
    sub rsp, 0x48  ; 0x140002faf
    call 0x140002ef0  ; 0x140002fb3
    mov rax, qword ptr [rax]  ; 0x140002fb8
    or rax, 2  ; 0x140002fbb
    mov rcx, qword ptr [rsp + 0x60]  ; 0x140002fbf
    mov qword ptr [rsp + 0x28], rcx  ; 0x140002fc4
    mov rcx, qword ptr [rsp + 0x58]  ; 0x140002fc9
    mov qword ptr [rsp + 0x20], rcx  ; 0x140002fce
    mov r9, qword ptr [rsp + 0x50]  ; 0x140002fd3
    xor r8d, r8d  ; 0x140002fd8
    xor edx, edx  ; 0x140002fdb
    mov rcx, rax  ; 0x140002fdd
    call 0x14000cfe8  ; 0x140002fe0
    mov dword ptr [rsp + 0x30], eax  ; 0x140002fe5
    cmp dword ptr [rsp + 0x30], 0  ; 0x140002fe9
    jge 0x140002ffa  ; 0x140002fee
    mov dword ptr [rsp + 0x34], 0xffffffff  ; 0x140002ff0
    jmp 0x140003002  ; 0x140002ff8
    mov eax, dword ptr [rsp + 0x30]  ; 0x140002ffa
    mov dword ptr [rsp + 0x34], eax  ; 0x140002ffe
    mov eax, dword ptr [rsp + 0x34]  ; 0x140003002
    add rsp, 0x48  ; 0x140003006
    ret  ; 0x14000300a
    int3   ; 0x14000300b
    int3   ; 0x14000300c
    int3   ; 0x14000300d
    int3   ; 0x14000300e
    int3   ; 0x14000300f
    mov qword ptr [rsp + 0x20], r9  ; 0x140003010
    mov qword ptr [rsp + 0x18], r8  ; 0x140003015
    mov qword ptr [rsp + 0x10], rdx  ; 0x14000301a
    mov qword ptr [rsp + 8], rcx  ; 0x14000301f
    sub rsp, 0x48  ; 0x140003024
    call 0x140002ef0  ; 0x140003028
    mov rcx, qword ptr [rsp + 0x70]  ; 0x14000302d
    mov qword ptr [rsp + 0x28], rcx  ; 0x140003032
    mov rcx, qword ptr [rsp + 0x68]  ; 0x140003037
    mov qword ptr [rsp + 0x20], rcx  ; 0x14000303c
    mov r9, qword ptr [rsp + 0x60]  ; 0x140003041
    mov r8, qword ptr [rsp + 0x58]  ; 0x140003046
    mov rdx, qword ptr [rsp + 0x50]  ; 0x14000304b
    mov rcx, qword ptr [rax]  ; 0x140003050
    call 0x14000d23c  ; 0x140003053
    mov dword ptr [rsp + 0x30], eax  ; 0x140003058
    cmp dword ptr [rsp + 0x30], 0  ; 0x14000305c
    jge 0x14000306d  ; 0x140003061
    mov dword ptr [rsp + 0x34], 0xffffffff  ; 0x140003063
    jmp 0x140003075  ; 0x14000306b
    mov eax, dword ptr [rsp + 0x30]  ; 0x14000306d
    mov dword ptr [rsp + 0x34], eax  ; 0x140003071
    mov eax, dword ptr [rsp + 0x34]  ; 0x140003075
    add rsp, 0x48  ; 0x140003079
    ret  ; 0x14000307d
    int3   ; 0x14000307e
    int3   ; 0x14000307f
    mov qword ptr [rsp + 8], rcx  ; 0x140003080
    mov qword ptr [rsp + 0x10], rdx  ; 0x140003085
    mov qword ptr [rsp + 0x18], r8  ; 0x14000308a
    mov qword ptr [rsp + 0x20], r9  ; 0x14000308f
    sub rsp, 0x48  ; 0x140003094
    lea rax, [rsp + 0x58]  ; 0x140003098
    mov qword ptr [rsp + 0x28], rax  ; 0x14000309d
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400030a2
    mov qword ptr [rsp + 0x30], rax  ; 0x1400030a7
    mov ecx, 1  ; 0x1400030ac
    call 0x14000a024  ; 0x1400030b1
    mov qword ptr [rsp + 0x38], rax  ; 0x1400030b6
    mov r9, qword ptr [rsp + 0x30]  ; 0x1400030bb
    xor r8d, r8d  ; 0x1400030c0
    mov rdx, qword ptr [rsp + 0x50]  ; 0x1400030c3
    mov rcx, qword ptr [rsp + 0x38]  ; 0x1400030c8
    call 0x140002f50  ; 0x1400030cd
    mov dword ptr [rsp + 0x20], eax  ; 0x1400030d2
    mov qword ptr [rsp + 0x28], 0  ; 0x1400030d6
    mov eax, dword ptr [rsp + 0x20]  ; 0x1400030df
    add rsp, 0x48  ; 0x1400030e3
    ret  ; 0x1400030e7
    int3   ; 0x1400030e8
    int3   ; 0x1400030e9
    int3   ; 0x1400030ea
    int3   ; 0x1400030eb
    int3   ; 0x1400030ec
    int3   ; 0x1400030ed
    int3   ; 0x1400030ee
    int3   ; 0x1400030ef
    mov qword ptr [rsp + 0x18], r8  ; 0x1400030f0
    mov qword ptr [rsp + 0x10], rdx  ; 0x1400030f5
    mov qword ptr [rsp + 8], rcx  ; 0x1400030fa
    mov qword ptr [rsp + 0x20], r9  ; 0x1400030ff
    sub rsp, 0x48  ; 0x140003104
    lea rax, [rsp + 0x68]  ; 0x140003108
    mov qword ptr [rsp + 0x38], rax  ; 0x14000310d
    mov rax, qword ptr [rsp + 0x38]  ; 0x140003112
    mov qword ptr [rsp + 0x20], rax  ; 0x140003117
    xor r9d, r9d  ; 0x14000311c
    mov r8, qword ptr [rsp + 0x60]  ; 0x14000311f
    mov rdx, qword ptr [rsp + 0x58]  ; 0x140003124
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140003129
    call 0x140003010  ; 0x14000312e
    mov dword ptr [rsp + 0x30], eax  ; 0x140003133
    mov qword ptr [rsp + 0x38], 0  ; 0x140003137
    mov eax, dword ptr [rsp + 0x30]  ; 0x140003140
    add rsp, 0x48  ; 0x140003144
    ret  ; 0x140003148
    int3   ; 0x140003149
    int3   ; 0x14000314a
    int3   ; 0x14000314b
    and qword ptr [rcx + 0x10], 0  ; 0x14000314c
    lea rax, [rip + 0x1a288]  ; 0x140003151
    mov qword ptr [rcx + 8], rax  ; 0x140003158
    lea rax, [rip + 0x1a21d]  ; 0x14000315c
    mov qword ptr [rcx], rax  ; 0x140003163
    mov rax, rcx  ; 0x140003166
    ret  ; 0x140003169
    int3   ; 0x14000316a
    int3   ; 0x14000316b
    push rbx  ; 0x14000316c
    sub rsp, 0x20  ; 0x14000316e
    mov rbx, rcx  ; 0x140003172
    mov rax, rdx  ; 0x140003175
    lea rcx, [rip + 0x1a1e9]  ; 0x140003178
    xorps xmm0, xmm0  ; 0x14000317f
    mov qword ptr [rbx], rcx  ; 0x140003182
    lea rdx, [rbx + 8]  ; 0x140003185
    lea rcx, [rax + 8]  ; 0x140003189
    movups xmmword ptr [rdx], xmm0  ; 0x14000318d
    call 0x1400040c0  ; 0x140003190
    lea rax, [rip + 0x1a274]  ; 0x140003195
    mov qword ptr [rbx], rax  ; 0x14000319c
    mov rax, rbx  ; 0x14000319f
    add rsp, 0x20  ; 0x1400031a2
    pop rbx  ; 0x1400031a6
    ret  ; 0x1400031a7
    push rbx  ; 0x1400031a8
    sub rsp, 0x30  ; 0x1400031aa
    mov rbx, rcx  ; 0x1400031ae
    mov byte ptr [rsp + 0x28], 1  ; 0x1400031b1
    mov rax, rdx  ; 0x1400031b6
    lea rcx, [rip + 0x1a1a8]  ; 0x1400031b9
    xorps xmm0, xmm0  ; 0x1400031c0
    mov qword ptr [rsp + 0x20], rax  ; 0x1400031c3
    mov qword ptr [rbx], rcx  ; 0x1400031c8
    lea rdx, [rbx + 8]  ; 0x1400031cb
    lea rcx, [rsp + 0x20]  ; 0x1400031cf
    movups xmmword ptr [rdx], xmm0  ; 0x1400031d4
    call 0x1400040c0  ; 0x1400031d7
    lea rax, [rip + 0x1a22d]  ; 0x1400031dc
    mov qword ptr [rbx], rax  ; 0x1400031e3
    mov rax, rbx  ; 0x1400031e6
    add rsp, 0x30  ; 0x1400031e9
    pop rbx  ; 0x1400031ed
    ret  ; 0x1400031ee
    int3   ; 0x1400031ef
    push rbx  ; 0x1400031f0
    sub rsp, 0x20  ; 0x1400031f2
    mov rbx, rcx  ; 0x1400031f6
    mov rax, rdx  ; 0x1400031f9
    lea rcx, [rip + 0x1a165]  ; 0x1400031fc
    xorps xmm0, xmm0  ; 0x140003203
    mov qword ptr [rbx], rcx  ; 0x140003206
    lea rdx, [rbx + 8]  ; 0x140003209
    lea rcx, [rax + 8]  ; 0x14000320d
    movups xmmword ptr [rdx], xmm0  ; 0x140003211
    call 0x1400040c0  ; 0x140003214
    lea rax, [rip + 0x1a1d8]  ; 0x140003219
    mov qword ptr [rbx], rax  ; 0x140003220
    mov rax, rbx  ; 0x140003223
    add rsp, 0x20  ; 0x140003226
    pop rbx  ; 0x14000322a
    ret  ; 0x14000322b
    lea rax, [rip + 0x1a135]  ; 0x14000322c
    mov qword ptr [rcx], rax  ; 0x140003233
    add rcx, 8  ; 0x140003236
    jmp 0x140004150  ; 0x14000323a
    int3   ; 0x14000323f
    mov qword ptr [rsp + 8], rbx  ; 0x140003240
    push rdi  ; 0x140003245
    sub rsp, 0x20  ; 0x140003246
    lea rax, [rip + 0x1a117]  ; 0x14000324a
    mov rdi, rcx  ; 0x140003251
    mov qword ptr [rcx], rax  ; 0x140003254
    mov ebx, edx  ; 0x140003257
    add rcx, 8  ; 0x140003259
    call 0x140004150  ; 0x14000325d
    test bl, 1  ; 0x140003262
    je 0x140003274  ; 0x140003265
    mov edx, 0x18  ; 0x140003267
    mov rcx, rdi  ; 0x14000326c
    call 0x1400032e4  ; 0x14000326f
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140003274
    mov rax, rdi  ; 0x140003279
    add rsp, 0x20  ; 0x14000327c
    pop rdi  ; 0x140003280
    ret  ; 0x140003281
    int3   ; 0x140003282
    int3   ; 0x140003283
    sub rsp, 0x48  ; 0x140003284
    mov rdx, rcx  ; 0x140003288
    lea rcx, [rsp + 0x20]  ; 0x14000328b
    call 0x1400031a8  ; 0x140003290
    lea rdx, [rip + 0x24624]  ; 0x140003295
    lea rcx, [rsp + 0x20]  ; 0x14000329c
    call 0x140004178  ; 0x1400032a1
    int3   ; 0x1400032a6
    int3   ; 0x1400032a7
    push rbx  ; 0x1400032a8
    sub rsp, 0x20  ; 0x1400032aa
    mov rbx, rcx  ; 0x1400032ae
    jmp 0x1400032c2  ; 0x1400032b1
    mov rcx, rbx  ; 0x1400032b3
    call 0x14000d358  ; 0x1400032b6
    test eax, eax  ; 0x1400032bb
    je 0x1400032d2  ; 0x1400032bd
    mov rcx, rbx  ; 0x1400032bf
    call 0x14000d3d0  ; 0x1400032c2
    test rax, rax  ; 0x1400032c7
    je 0x1400032b3  ; 0x1400032ca
    add rsp, 0x20  ; 0x1400032cc
    pop rbx  ; 0x1400032d0
    ret  ; 0x1400032d1
    cmp rbx, -1  ; 0x1400032d2
    je 0x1400032de  ; 0x1400032d6
    call 0x140003644  ; 0x1400032d8
    int3   ; 0x1400032dd
    call 0x140003664  ; 0x1400032de
    int3   ; 0x1400032e3
    jmp 0x140003318  ; 0x1400032e4
    int3   ; 0x1400032e9
    int3   ; 0x1400032ea
    int3   ; 0x1400032eb
    push rbx  ; 0x1400032ec
    sub rsp, 0x20  ; 0x1400032ee
    lea rax, [rip + 0x1a12f]  ; 0x1400032f2
    mov rbx, rcx  ; 0x1400032f9
    mov qword ptr [rcx], rax  ; 0x1400032fc
    test dl, 1  ; 0x1400032ff
    je 0x14000330e  ; 0x140003302
    mov edx, 0x18  ; 0x140003304
    call 0x1400032e4  ; 0x140003309
    mov rax, rbx  ; 0x14000330e
    add rsp, 0x20  ; 0x140003311
    pop rbx  ; 0x140003315
    ret  ; 0x140003316
    int3   ; 0x140003317
    jmp 0x14000d3d8  ; 0x140003318
    int3   ; 0x14000331d
    int3   ; 0x14000331e
    int3   ; 0x14000331f
    sub rsp, 0x28  ; 0x140003320
    mov r8, qword ptr [r9 + 0x38]  ; 0x140003324
    mov rcx, rdx  ; 0x140003328
    mov rdx, r9  ; 0x14000332b
    call 0x140003340  ; 0x14000332e
    mov eax, 1  ; 0x140003333
    add rsp, 0x28  ; 0x140003338
    ret  ; 0x14000333c
    int3   ; 0x14000333d
    int3   ; 0x14000333e
    int3   ; 0x14000333f
    push rbx  ; 0x140003340
    mov r11d, dword ptr [r8]  ; 0x140003342
    mov rbx, rdx  ; 0x140003345
    and r11d, 0xfffffff8  ; 0x140003348
    mov r9, rcx  ; 0x14000334c
    test byte ptr [r8], 4  ; 0x14000334f
    mov r10, rcx  ; 0x140003353
    je 0x14000336b  ; 0x140003356
    mov eax, dword ptr [r8 + 8]  ; 0x140003358
    movsxd r10, dword ptr [r8 + 4]  ; 0x14000335c
    neg eax  ; 0x140003360
    add r10, rcx  ; 0x140003362
    movsxd rcx, eax  ; 0x140003365
    and r10, rcx  ; 0x140003368
    movsxd rax, r11d  ; 0x14000336b
    mov rdx, qword ptr [rax + r10]  ; 0x14000336e
    mov rax, qword ptr [rbx + 0x10]  ; 0x140003372
    mov ecx, dword ptr [rax + 8]  ; 0x140003376
    mov rax, qword ptr [rbx + 8]  ; 0x140003379
    test byte ptr [rcx + rax + 3], 0xf  ; 0x14000337d
    je 0x14000338f  ; 0x140003382
    movzx eax, byte ptr [rcx + rax + 3]  ; 0x140003384
    and eax, 0xfffffff0  ; 0x140003389
    add r9, rax  ; 0x14000338c
    xor r9, rdx  ; 0x14000338f
    mov rcx, r9  ; 0x140003392
    pop rbx  ; 0x140003395
    jmp 0x1400033b0  ; 0x140003396
    int3   ; 0x14000339b
    int3   ; 0x14000339c
    int3   ; 0x14000339d
    int3   ; 0x14000339e
    int3   ; 0x14000339f
    int3   ; 0x1400033a0
    int3   ; 0x1400033a1
    int3   ; 0x1400033a2
    int3   ; 0x1400033a3
    int3   ; 0x1400033a4
    int3   ; 0x1400033a5
    nop  ; 0x1400033a6
    cmp rcx, qword ptr [rip + 0x25c49]  ; 0x1400033b0
    jne 0x1400033c9  ; 0x1400033b7
    rol rcx, 0x10  ; 0x1400033b9
    test cx, 0xffff  ; 0x1400033bd
    jne 0x1400033c5  ; 0x1400033c2
    ret  ; 0x1400033c4
    ror rcx, 0x10  ; 0x1400033c5
    jmp 0x1400036b8  ; 0x1400033c9
    int3   ; 0x1400033ce
    int3   ; 0x1400033cf
    push rbx  ; 0x1400033d0
    sub rsp, 0x20  ; 0x1400033d2
    mov ecx, 1  ; 0x1400033d6
    call 0x14000d578  ; 0x1400033db
    call 0x140003c18  ; 0x1400033e0
    mov ecx, eax  ; 0x1400033e5
    call 0x14000e114  ; 0x1400033e7
    call 0x140003c0c  ; 0x1400033ec
    mov ebx, eax  ; 0x1400033f1
    call 0x14000e2d8  ; 0x1400033f3
    mov ecx, 1  ; 0x1400033f8
    mov dword ptr [rax], ebx  ; 0x1400033fd
    call 0x140003998  ; 0x1400033ff
    test al, al  ; 0x140003404
    je 0x14000347b  ; 0x140003406
    call 0x140003e90  ; 0x140003408
    lea rcx, [rip + 0xab8]  ; 0x14000340d
    call 0x140003b48  ; 0x140003414
    call 0x140003c10  ; 0x140003419
    mov ecx, eax  ; 0x14000341e
    call 0x14000d834  ; 0x140003420
    test eax, eax  ; 0x140003425
    jne 0x14000347b  ; 0x140003427
    call 0x140003c20  ; 0x140003429
    call 0x140003c5c  ; 0x14000342e
    test eax, eax  ; 0x140003433
    je 0x140003443  ; 0x140003435
    lea rcx, [rip + 0x7ce]  ; 0x140003437
    call 0x14000d5e4  ; 0x14000343e
    call 0x140003c34  ; 0x140003443
    call 0x140003c34  ; 0x140003448
    call 0x140003c0c  ; 0x14000344d
    mov ecx, eax  ; 0x140003452
    call 0x14000e238  ; 0x140003454
    call 0x140003c30  ; 0x140003459
    test al, al  ; 0x14000345e
    je 0x140003467  ; 0x140003460
    call 0x14000dd6c  ; 0x140003462
    call 0x140003c0c  ; 0x140003467
    call 0x140003dc8  ; 0x14000346c
    test eax, eax  ; 0x140003471
    jne 0x14000347b  ; 0x140003473
    add rsp, 0x20  ; 0x140003475
    pop rbx  ; 0x140003479
    ret  ; 0x14000347a
    mov ecx, 7  ; 0x14000347b
    call 0x140003c80  ; 0x140003480
    int3   ; 0x140003485
    int3   ; 0x140003486
    int3   ; 0x140003487
    sub rsp, 0x28  ; 0x140003488
    call 0x140003c40  ; 0x14000348c
    xor eax, eax  ; 0x140003491
    add rsp, 0x28  ; 0x140003493
    ret  ; 0x140003497
    sub rsp, 0x28  ; 0x140003498
    call 0x140003e24  ; 0x14000349c
    call 0x140003c0c  ; 0x1400034a1
    mov ecx, eax  ; 0x1400034a6
    add rsp, 0x28  ; 0x1400034a8
    jmp 0x14000e2ac  ; 0x1400034ac
    int3   ; 0x1400034b1
    int3   ; 0x1400034b2
    int3   ; 0x1400034b3
    mov qword ptr [rsp + 8], rbx  ; 0x1400034b4
    mov qword ptr [rsp + 0x10], rsi  ; 0x1400034b9
    push rdi  ; 0x1400034be
    sub rsp, 0x30  ; 0x1400034bf
    mov ecx, 1  ; 0x1400034c3
    call 0x14000395c  ; 0x1400034c8
    test al, al  ; 0x1400034cd
    je 0x14000360b  ; 0x1400034cf
    xor sil, sil  ; 0x1400034d5
    mov byte ptr [rsp + 0x20], sil  ; 0x1400034d8
    call 0x140003920  ; 0x1400034dd
    mov bl, al  ; 0x1400034e2
    mov ecx, dword ptr [rip + 0x26c36]  ; 0x1400034e4
    cmp ecx, 1  ; 0x1400034ea
    je 0x140003616  ; 0x1400034ed
    test ecx, ecx  ; 0x1400034f3
    jne 0x140003541  ; 0x1400034f5
    mov dword ptr [rip + 0x26c1f], 1  ; 0x1400034f7
    lea rdx, [rip + 0x19de0]  ; 0x140003501
    lea rcx, [rip + 0x19da1]  ; 0x140003508
    call 0x14000ddb8  ; 0x14000350f
    test eax, eax  ; 0x140003514
    je 0x140003522  ; 0x140003516
    mov eax, 0xff  ; 0x140003518
    jmp 0x1400035fb  ; 0x14000351d
    lea rdx, [rip + 0x19d7f]  ; 0x140003522
    lea rcx, [rip + 0x19d68]  ; 0x140003529
    call 0x14000dd74  ; 0x140003530
    mov dword ptr [rip + 0x26be1], 2  ; 0x140003535
    jmp 0x140003549  ; 0x14000353f
    mov sil, 1  ; 0x140003541
    mov byte ptr [rsp + 0x20], sil  ; 0x140003544
    mov cl, bl  ; 0x140003549
    call 0x140003abc  ; 0x14000354b
    call 0x140003c68  ; 0x140003550
    mov rbx, rax  ; 0x140003555
    cmp qword ptr [rax], 0  ; 0x140003558
    je 0x14000357c  ; 0x14000355c
    mov rcx, rax  ; 0x14000355e
    call 0x140003a24  ; 0x140003561
    test al, al  ; 0x140003566
    je 0x14000357c  ; 0x140003568
    xor r8d, r8d  ; 0x14000356a
    lea edx, [r8 + 2]  ; 0x14000356d
    xor ecx, ecx  ; 0x140003571
    mov rax, qword ptr [rbx]  ; 0x140003573
    call qword ptr [rip + 0x19cf4]  ; 0x140003576
    call 0x140003c70  ; 0x14000357c
    mov rbx, rax  ; 0x140003581
    cmp qword ptr [rax], 0  ; 0x140003584
    je 0x14000359e  ; 0x140003588
    mov rcx, rax  ; 0x14000358a
    call 0x140003a24  ; 0x14000358d
    test al, al  ; 0x140003592
    je 0x14000359e  ; 0x140003594
    mov rcx, qword ptr [rbx]  ; 0x140003596
    call 0x14000e0c8  ; 0x140003599
    call 0x14000dd1c  ; 0x14000359e
    mov rdi, rax  ; 0x1400035a3
    call 0x14000e184  ; 0x1400035a6
    mov rbx, qword ptr [rax]  ; 0x1400035ab
    call 0x14000e17c  ; 0x1400035ae
    mov r8, rdi  ; 0x1400035b3
    mov rdx, rbx  ; 0x1400035b6
    mov ecx, dword ptr [rax]  ; 0x1400035b9
    call 0x140001000  ; 0x1400035bb
    mov ebx, eax  ; 0x1400035c0
    call 0x140003dd0  ; 0x1400035c2
    test al, al  ; 0x1400035c7
    je 0x140003620  ; 0x1400035c9
    test sil, sil  ; 0x1400035cb
    jne 0x1400035d5  ; 0x1400035ce
    call 0x14000e0ac  ; 0x1400035d0
    xor edx, edx  ; 0x1400035d5
    mov cl, 1  ; 0x1400035d7
    call 0x140003ae0  ; 0x1400035d9
    mov eax, ebx  ; 0x1400035de
    jmp 0x1400035fb  ; 0x1400035e0
    mov ebx, eax  ; 0x1400035e2
    call 0x140003dd0  ; 0x1400035e4
    test al, al  ; 0x1400035e9
    je 0x140003628  ; 0x1400035eb
    cmp byte ptr [rsp + 0x20], 0  ; 0x1400035ed
    jne 0x1400035f9  ; 0x1400035f2
    call 0x14000e09c  ; 0x1400035f4
    mov eax, ebx  ; 0x1400035f9
    mov rbx, qword ptr [rsp + 0x40]  ; 0x1400035fb
    mov rsi, qword ptr [rsp + 0x48]  ; 0x140003600
    add rsp, 0x30  ; 0x140003605
    pop rdi  ; 0x140003609
    ret  ; 0x14000360a
    mov ecx, 7  ; 0x14000360b
    call 0x140003c80  ; 0x140003610
    nop  ; 0x140003615
    mov ecx, 7  ; 0x140003616
    call 0x140003c80  ; 0x14000361b
    mov ecx, ebx  ; 0x140003620
    call 0x14000e108  ; 0x140003622
    nop  ; 0x140003627
    mov ecx, ebx  ; 0x140003628
    call 0x14000e0bc  ; 0x14000362a
    nop  ; 0x14000362f
    sub rsp, 0x28  ; 0x140003630
    call 0x140003b60  ; 0x140003634
    add rsp, 0x28  ; 0x140003639
    jmp 0x1400034b4  ; 0x14000363d
    int3   ; 0x140003642
    int3   ; 0x140003643
    sub rsp, 0x48  ; 0x140003644
    lea rcx, [rsp + 0x20]  ; 0x140003648
    call 0x14000314c  ; 0x14000364d
    lea rdx, [rip + 0x24207]  ; 0x140003652
    lea rcx, [rsp + 0x20]  ; 0x140003659
    call 0x140004178  ; 0x14000365e
    int3   ; 0x140003663
    sub rsp, 0x48  ; 0x140003664
    lea rcx, [rsp + 0x20]  ; 0x140003668
    call 0x140001750  ; 0x14000366d
    lea rdx, [rip + 0x2412f]  ; 0x140003672
    lea rcx, [rsp + 0x20]  ; 0x140003679
    call 0x140004178  ; 0x14000367e
    int3   ; 0x140003683
    push rbx  ; 0x140003684
    sub rsp, 0x20  ; 0x140003686
    mov rbx, rcx  ; 0x14000368a
    xor ecx, ecx  ; 0x14000368d
    call qword ptr [rip + 0x19993]  ; 0x14000368f
    mov rcx, rbx  ; 0x140003695
    call qword ptr [rip + 0x19982]  ; 0x140003698
    call qword ptr [rip + 0x1998c]  ; 0x14000369e
    mov rcx, rax  ; 0x1400036a4
    mov edx, 0xc0000409  ; 0x1400036a7
    add rsp, 0x20  ; 0x1400036ac
    pop rbx  ; 0x1400036b0
    jmp qword ptr [rip + 0x19980]  ; 0x1400036b1
    mov qword ptr [rsp + 8], rcx  ; 0x1400036b8
    sub rsp, 0x38  ; 0x1400036bd
    mov ecx, 0x17  ; 0x1400036c1
    call qword ptr [rip + 0x19974]  ; 0x1400036c6
    test eax, eax  ; 0x1400036cc
    je 0x1400036d7  ; 0x1400036ce
    mov ecx, 2  ; 0x1400036d0
    int 0x29  ; 0x1400036d5
    lea rcx, [rip + 0x26572]  ; 0x1400036d7
    call 0x1400038ac  ; 0x1400036de
    mov rax, qword ptr [rsp + 0x38]  ; 0x1400036e3
    mov qword ptr [rip + 0x26659], rax  ; 0x1400036e8
    lea rax, [rsp + 0x38]  ; 0x1400036ef
    add rax, 8  ; 0x1400036f4
    mov qword ptr [rip + 0x265e9], rax  ; 0x1400036f8
    mov rax, qword ptr [rip + 0x26642]  ; 0x1400036ff
    mov qword ptr [rip + 0x264b3], rax  ; 0x140003706
    mov rax, qword ptr [rsp + 0x40]  ; 0x14000370d
    mov qword ptr [rip + 0x265b7], rax  ; 0x140003712
    mov dword ptr [rip + 0x2648d], 0xc0000409  ; 0x140003719
    mov dword ptr [rip + 0x26487], 1  ; 0x140003723
    mov dword ptr [rip + 0x26491], 1  ; 0x14000372d
    mov eax, 8  ; 0x140003737
    imul rax, rax, 0  ; 0x14000373c
    lea rcx, [rip + 0x26489]  ; 0x140003740
    mov qword ptr [rcx + rax], 2  ; 0x140003747
    mov eax, 8  ; 0x14000374f
    imul rax, rax, 0  ; 0x140003754
    mov rcx, qword ptr [rip + 0x258a1]  ; 0x140003758
    mov qword ptr [rsp + rax + 0x20], rcx  ; 0x14000375f
    mov eax, 8  ; 0x140003764
    imul rax, rax, 1  ; 0x140003769
    mov rcx, qword ptr [rip + 0x258cc]  ; 0x14000376d
    mov qword ptr [rsp + rax + 0x20], rcx  ; 0x140003774
    lea rcx, [rip + 0x19cb0]  ; 0x140003779
    call 0x140003684  ; 0x140003780
    add rsp, 0x38  ; 0x140003785
    ret  ; 0x140003789
    int3   ; 0x14000378a
    int3   ; 0x14000378b
    sub rsp, 0x28  ; 0x14000378c
    mov ecx, 8  ; 0x140003790
    call 0x1400037a0  ; 0x140003795
    add rsp, 0x28  ; 0x14000379a
    ret  ; 0x14000379e
    int3   ; 0x14000379f
    mov dword ptr [rsp + 8], ecx  ; 0x1400037a0
    sub rsp, 0x28  ; 0x1400037a4
    mov ecx, 0x17  ; 0x1400037a8
    call qword ptr [rip + 0x1988d]  ; 0x1400037ad
    test eax, eax  ; 0x1400037b3
    je 0x1400037bf  ; 0x1400037b5
    mov eax, dword ptr [rsp + 0x30]  ; 0x1400037b7
    mov ecx, eax  ; 0x1400037bb
    int 0x29  ; 0x1400037bd
    lea rcx, [rip + 0x2648a]  ; 0x1400037bf
    call 0x14000383c  ; 0x1400037c6
    mov rax, qword ptr [rsp + 0x28]  ; 0x1400037cb
    mov qword ptr [rip + 0x26571], rax  ; 0x1400037d0
    lea rax, [rsp + 0x28]  ; 0x1400037d7
    add rax, 8  ; 0x1400037dc
    mov qword ptr [rip + 0x26501], rax  ; 0x1400037e0
    mov rax, qword ptr [rip + 0x2655a]  ; 0x1400037e7
    mov qword ptr [rip + 0x263cb], rax  ; 0x1400037ee
    mov dword ptr [rip + 0x263b1], 0xc0000409  ; 0x1400037f5
    mov dword ptr [rip + 0x263ab], 1  ; 0x1400037ff
    mov dword ptr [rip + 0x263b5], 1  ; 0x140003809
    mov eax, 8  ; 0x140003813
    imul rax, rax, 0  ; 0x140003818
    lea rcx, [rip + 0x263ad]  ; 0x14000381c
    mov edx, dword ptr [rsp + 0x30]  ; 0x140003823
    mov qword ptr [rcx + rax], rdx  ; 0x140003827
    lea rcx, [rip + 0x19bfe]  ; 0x14000382b
    call 0x140003684  ; 0x140003832
    add rsp, 0x28  ; 0x140003837
    ret  ; 0x14000383b
    mov qword ptr [rsp + 0x20], rbx  ; 0x14000383c
    push rdi  ; 0x140003841
    sub rsp, 0x40  ; 0x140003842
    mov rbx, rcx  ; 0x140003846
    call qword ptr [rip + 0x197b9]  ; 0x140003849
    mov rdi, qword ptr [rbx + 0xf8]  ; 0x14000384f
    lea rdx, [rsp + 0x50]  ; 0x140003856
    mov rcx, rdi  ; 0x14000385b
    xor r8d, r8d  ; 0x14000385e
    call qword ptr [rip + 0x197a9]  ; 0x140003861
    test rax, rax  ; 0x140003867
    je 0x14000389e  ; 0x14000386a
    and qword ptr [rsp + 0x38], 0  ; 0x14000386c
    lea rcx, [rsp + 0x58]  ; 0x140003872
    mov rdx, qword ptr [rsp + 0x50]  ; 0x140003877
    mov r9, rax  ; 0x14000387c
    mov qword ptr [rsp + 0x30], rcx  ; 0x14000387f
    mov r8, rdi  ; 0x140003884
    lea rcx, [rsp + 0x60]  ; 0x140003887
    mov qword ptr [rsp + 0x28], rcx  ; 0x14000388c
    xor ecx, ecx  ; 0x140003891
    mov qword ptr [rsp + 0x20], rbx  ; 0x140003893
    call qword ptr [rip + 0x1977a]  ; 0x140003898
    mov rbx, qword ptr [rsp + 0x68]  ; 0x14000389e
    add rsp, 0x40  ; 0x1400038a3
    pop rdi  ; 0x1400038a7
    ret  ; 0x1400038a8
    int3   ; 0x1400038a9
    int3   ; 0x1400038aa
    int3   ; 0x1400038ab
    push rbx  ; 0x1400038ac
    push rsi  ; 0x1400038ae
    push rdi  ; 0x1400038af
    sub rsp, 0x40  ; 0x1400038b0
    mov rbx, rcx  ; 0x1400038b4
    call qword ptr [rip + 0x1974b]  ; 0x1400038b7
    mov rsi, qword ptr [rbx + 0xf8]  ; 0x1400038bd
    xor edi, edi  ; 0x1400038c4
    xor r8d, r8d  ; 0x1400038c6
    lea rdx, [rsp + 0x60]  ; 0x1400038c9
    mov rcx, rsi  ; 0x1400038ce
    call qword ptr [rip + 0x19739]  ; 0x1400038d1
    test rax, rax  ; 0x1400038d7
    je 0x140003915  ; 0x1400038da
    and qword ptr [rsp + 0x38], 0  ; 0x1400038dc
    lea rcx, [rsp + 0x68]  ; 0x1400038e2
    mov rdx, qword ptr [rsp + 0x60]  ; 0x1400038e7
    mov r9, rax  ; 0x1400038ec
    mov qword ptr [rsp + 0x30], rcx  ; 0x1400038ef
    mov r8, rsi  ; 0x1400038f4
    lea rcx, [rsp + 0x70]  ; 0x1400038f7
    mov qword ptr [rsp + 0x28], rcx  ; 0x1400038fc
    xor ecx, ecx  ; 0x140003901
    mov qword ptr [rsp + 0x20], rbx  ; 0x140003903
    call qword ptr [rip + 0x1970a]  ; 0x140003908
    inc edi  ; 0x14000390e
    cmp edi, 2  ; 0x140003910
    jl 0x1400038c6  ; 0x140003913
    add rsp, 0x40  ; 0x140003915
    pop rdi  ; 0x140003919
    pop rsi  ; 0x14000391a
    pop rbx  ; 0x14000391b
    ret  ; 0x14000391c
    int3   ; 0x14000391d
    int3   ; 0x14000391e
    int3   ; 0x14000391f
    sub rsp, 0x28  ; 0x140003920
    call 0x1400040b4  ; 0x140003924
    test eax, eax  ; 0x140003929
    je 0x14000394e  ; 0x14000392b
    mov rax, qword ptr gs:[0x30]  ; 0x14000392d
    mov rcx, qword ptr [rax + 8]  ; 0x140003936
    jmp 0x140003941  ; 0x14000393a
    cmp rcx, rax  ; 0x14000393c
    je 0x140003955  ; 0x14000393f
    xor eax, eax  ; 0x140003941
    lock cmpxchg qword ptr [rip + 0x267dc], rcx  ; 0x140003943
    jne 0x14000393c  ; 0x14000394c
    xor al, al  ; 0x14000394e
    add rsp, 0x28  ; 0x140003950
    ret  ; 0x140003954
    mov al, 1  ; 0x140003955
    jmp 0x140003950  ; 0x140003957
    int3   ; 0x140003959
    int3   ; 0x14000395a
    int3   ; 0x14000395b
    sub rsp, 0x28  ; 0x14000395c
    test ecx, ecx  ; 0x140003960
    jne 0x14000396b  ; 0x140003962
    mov byte ptr [rip + 0x267c5], 1  ; 0x140003964
    call 0x140003f08  ; 0x14000396b
    call 0x1400050f8  ; 0x140003970
    test al, al  ; 0x140003975
    jne 0x14000397d  ; 0x140003977
    xor al, al  ; 0x140003979
    jmp 0x140003991  ; 0x14000397b
    call 0x14000e818  ; 0x14000397d
    test al, al  ; 0x140003982
    jne 0x14000398f  ; 0x140003984
    xor ecx, ecx  ; 0x140003986
    call 0x140005120  ; 0x140003988
    jmp 0x140003979  ; 0x14000398d
    mov al, 1  ; 0x14000398f
    add rsp, 0x28  ; 0x140003991
    ret  ; 0x140003995
    int3   ; 0x140003996
    int3   ; 0x140003997
    push rbx  ; 0x140003998
    sub rsp, 0x20  ; 0x14000399a
    cmp byte ptr [rip + 0x2678c], 0  ; 0x14000399e
    mov ebx, ecx  ; 0x1400039a5
    jne 0x140003a10  ; 0x1400039a7
    cmp ecx, 1  ; 0x1400039a9
    ja 0x140003a18  ; 0x1400039ac
    call 0x1400040b4  ; 0x1400039ae
    test eax, eax  ; 0x1400039b3
    je 0x1400039df  ; 0x1400039b5
    test ebx, ebx  ; 0x1400039b7
    jne 0x1400039df  ; 0x1400039b9
    lea rcx, [rip + 0x26776]  ; 0x1400039bb
    call 0x14000e67c  ; 0x1400039c2
    test eax, eax  ; 0x1400039c7
    jne 0x1400039db  ; 0x1400039c9
    lea rcx, [rip + 0x2677e]  ; 0x1400039cb
    call 0x14000e67c  ; 0x1400039d2
    test eax, eax  ; 0x1400039d7
    je 0x140003a09  ; 0x1400039d9
    xor al, al  ; 0x1400039db
    jmp 0x140003a12  ; 0x1400039dd
    movdqa xmm0, xmmword ptr [rip + 0x19a59]  ; 0x1400039df
    or rax, 0xffffffffffffffff  ; 0x1400039e7
    movdqu xmmword ptr [rip + 0x26745], xmm0  ; 0x1400039eb
    mov qword ptr [rip + 0x2674e], rax  ; 0x1400039f3
    movdqu xmmword ptr [rip + 0x2674e], xmm0  ; 0x1400039fa
    mov qword ptr [rip + 0x26757], rax  ; 0x140003a02
    mov byte ptr [rip + 0x26721], 1  ; 0x140003a09
    mov al, 1  ; 0x140003a10
    add rsp, 0x20  ; 0x140003a12
    pop rbx  ; 0x140003a16
    ret  ; 0x140003a17
    mov ecx, 5  ; 0x140003a18
    call 0x140003c80  ; 0x140003a1d
    int3   ; 0x140003a22
    int3   ; 0x140003a23
    sub rsp, 0x18  ; 0x140003a24
    mov r8, rcx  ; 0x140003a28
    mov eax, 0x5a4d  ; 0x140003a2b
    cmp word ptr [rip - 0x3a37], ax  ; 0x140003a30
    jne 0x140003ab1  ; 0x140003a37
    movsxd rcx, dword ptr [rip - 0x3a04]  ; 0x140003a39
    lea rdx, [rip - 0x3a47]  ; 0x140003a40
    add rcx, rdx  ; 0x140003a47
    cmp dword ptr [rcx], 0x4550  ; 0x140003a4a
    jne 0x140003ab1  ; 0x140003a50
    mov eax, 0x20b  ; 0x140003a52
    cmp word ptr [rcx + 0x18], ax  ; 0x140003a57
    jne 0x140003ab1  ; 0x140003a5b
    sub r8, rdx  ; 0x140003a5d
    movzx edx, word ptr [rcx + 0x14]  ; 0x140003a60
    add rdx, 0x18  ; 0x140003a64
    add rdx, rcx  ; 0x140003a68
    movzx eax, word ptr [rcx + 6]  ; 0x140003a6b
    lea rcx, [rax + rax*4]  ; 0x140003a6f
    lea r9, [rdx + rcx*8]  ; 0x140003a73
    mov qword ptr [rsp], rdx  ; 0x140003a77
    cmp rdx, r9  ; 0x140003a7b
    je 0x140003a98  ; 0x140003a7e
    mov ecx, dword ptr [rdx + 0xc]  ; 0x140003a80
    cmp r8, rcx  ; 0x140003a83
    jb 0x140003a92  ; 0x140003a86
    mov eax, dword ptr [rdx + 8]  ; 0x140003a88
    add eax, ecx  ; 0x140003a8b
    cmp r8, rax  ; 0x140003a8d
    jb 0x140003a9a  ; 0x140003a90
    add rdx, 0x28  ; 0x140003a92
    jmp 0x140003a77  ; 0x140003a96
    xor edx, edx  ; 0x140003a98
    test rdx, rdx  ; 0x140003a9a
    jne 0x140003aa3  ; 0x140003a9d
    xor al, al  ; 0x140003a9f
    jmp 0x140003ab7  ; 0x140003aa1
    cmp dword ptr [rdx + 0x24], 0  ; 0x140003aa3
    jge 0x140003aad  ; 0x140003aa7
    xor al, al  ; 0x140003aa9
    jmp 0x140003ab7  ; 0x140003aab
    mov al, 1  ; 0x140003aad
    jmp 0x140003ab7  ; 0x140003aaf
    xor al, al  ; 0x140003ab1
    jmp 0x140003ab7  ; 0x140003ab3
    xor al, al  ; 0x140003ab5
    add rsp, 0x18  ; 0x140003ab7
    ret  ; 0x140003abb
    push rbx  ; 0x140003abc
    sub rsp, 0x20  ; 0x140003abe
    mov bl, cl  ; 0x140003ac2
    call 0x1400040b4  ; 0x140003ac4
    xor edx, edx  ; 0x140003ac9
    test eax, eax  ; 0x140003acb
    je 0x140003ada  ; 0x140003acd
    test bl, bl  ; 0x140003acf
    jne 0x140003ada  ; 0x140003ad1
    xchg qword ptr [rip + 0x2664e], rdx  ; 0x140003ad3
    add rsp, 0x20  ; 0x140003ada
    pop rbx  ; 0x140003ade
    ret  ; 0x140003adf
    push rbx  ; 0x140003ae0
    sub rsp, 0x20  ; 0x140003ae2
    cmp byte ptr [rip + 0x26643], 0  ; 0x140003ae6
    mov bl, cl  ; 0x140003aed
    je 0x140003af5  ; 0x140003aef
    test dl, dl  ; 0x140003af1
    jne 0x140003b01  ; 0x140003af3
    call 0x14000e82c  ; 0x140003af5
    mov cl, bl  ; 0x140003afa
    call 0x140005120  ; 0x140003afc
    mov al, 1  ; 0x140003b01
    add rsp, 0x20  ; 0x140003b03
    pop rbx  ; 0x140003b07
    ret  ; 0x140003b08
    int3   ; 0x140003b09
    int3   ; 0x140003b0a
    int3   ; 0x140003b0b
    push rbx  ; 0x140003b0c
    sub rsp, 0x20  ; 0x140003b0e
    cmp qword ptr [rip + 0x2661e], -1  ; 0x140003b12
    mov rbx, rcx  ; 0x140003b1a
    jne 0x140003b26  ; 0x140003b1d
    call 0x14000e628  ; 0x140003b1f
    jmp 0x140003b35  ; 0x140003b24
    mov rdx, rbx  ; 0x140003b26
    lea rcx, [rip + 0x26608]  ; 0x140003b29
    call 0x14000e6a4  ; 0x140003b30
    xor edx, edx  ; 0x140003b35
    test eax, eax  ; 0x140003b37
    cmove rdx, rbx  ; 0x140003b39
    mov rax, rdx  ; 0x140003b3d
    add rsp, 0x20  ; 0x140003b40
    pop rbx  ; 0x140003b44
    ret  ; 0x140003b45
    int3   ; 0x140003b46
    int3   ; 0x140003b47
    sub rsp, 0x28  ; 0x140003b48
    call 0x140003b0c  ; 0x140003b4c
    neg rax  ; 0x140003b51
    sbb eax, eax  ; 0x140003b54
    neg eax  ; 0x140003b56
    dec eax  ; 0x140003b58
    add rsp, 0x28  ; 0x140003b5a
    ret  ; 0x140003b5e
    int3   ; 0x140003b5f
    mov qword ptr [rsp + 0x18], rbx  ; 0x140003b60
; Function: func_140003b65
func_140003b65:
    push rbp  ; 0x140003b65
    mov rbp, rsp  ; 0x140003b66
    sub rsp, 0x30  ; 0x140003b69
    mov rax, qword ptr [rip + 0x2548c]  ; 0x140003b6d
    movabs rbx, 0x2b992ddfa232  ; 0x140003b74
    cmp rax, rbx  ; 0x140003b7e
    jne 0x140003bf7  ; 0x140003b81
    and qword ptr [rbp + 0x10], 0  ; 0x140003b83
    lea rcx, [rbp + 0x10]  ; 0x140003b88
    call qword ptr [rip + 0x194ce]  ; 0x140003b8c
    mov rax, qword ptr [rbp + 0x10]  ; 0x140003b92
    mov qword ptr [rbp - 0x10], rax  ; 0x140003b96
    call qword ptr [rip + 0x194b8]  ; 0x140003b9a
    mov eax, eax  ; 0x140003ba0
    xor qword ptr [rbp - 0x10], rax  ; 0x140003ba2
    call qword ptr [rip + 0x194a4]  ; 0x140003ba6
    mov eax, eax  ; 0x140003bac
    lea rcx, [rbp + 0x18]  ; 0x140003bae
    xor qword ptr [rbp - 0x10], rax  ; 0x140003bb2
    call qword ptr [rip + 0x1948c]  ; 0x140003bb6
    mov eax, dword ptr [rbp + 0x18]  ; 0x140003bbc
    lea rcx, [rbp - 0x10]  ; 0x140003bbf
    shl rax, 0x20  ; 0x140003bc3
    xor rax, qword ptr [rbp + 0x18]  ; 0x140003bc7
    xor rax, qword ptr [rbp - 0x10]  ; 0x140003bcb
    xor rax, rcx  ; 0x140003bcf
    movabs rcx, 0xffffffffffff  ; 0x140003bd2
    and rax, rcx  ; 0x140003bdc
    movabs rcx, 0x2b992ddfa233  ; 0x140003bdf
    cmp rax, rbx  ; 0x140003be9
    cmove rax, rcx  ; 0x140003bec
    mov qword ptr [rip + 0x25409], rax  ; 0x140003bf0
    mov rbx, qword ptr [rsp + 0x50]  ; 0x140003bf7
    not rax  ; 0x140003bfc
    mov qword ptr [rip + 0x2543a], rax  ; 0x140003bff
    add rsp, 0x30  ; 0x140003c06
    pop rbp  ; 0x140003c0a
    ret  ; 0x140003c0b
    xor eax, eax  ; 0x140003c0c
    ret  ; 0x140003c0e
    int3   ; 0x140003c0f
    mov eax, 1  ; 0x140003c10
    ret  ; 0x140003c15
    int3   ; 0x140003c16
    int3   ; 0x140003c17
    mov eax, 0x4000  ; 0x140003c18
    ret  ; 0x140003c1d
    int3   ; 0x140003c1e
    int3   ; 0x140003c1f
    lea rcx, [rip + 0x26549]  ; 0x140003c20
    jmp qword ptr [rip + 0x1943a]  ; 0x140003c27
    int3   ; 0x140003c2e
    int3   ; 0x140003c2f
    mov al, 1  ; 0x140003c30
    ret  ; 0x140003c32
    int3   ; 0x140003c33
    ret  ; 0x140003c34
    int3   ; 0x140003c37
    lea rax, [rip + 0x26541]  ; 0x140003c38
    ret  ; 0x140003c3f
    sub rsp, 0x28  ; 0x140003c40
    call 0x140002ef0  ; 0x140003c44
    or qword ptr [rax], 0x24  ; 0x140003c49
    call 0x140003c38  ; 0x140003c4d
    or qword ptr [rax], 2  ; 0x140003c52
    add rsp, 0x28  ; 0x140003c56
    ret  ; 0x140003c5a
    int3   ; 0x140003c5b
    xor eax, eax  ; 0x140003c5c
    cmp dword ptr [rip + 0x253ec], eax  ; 0x140003c5e
    sete al  ; 0x140003c64
    ret  ; 0x140003c67
    lea rax, [rip + 0x27121]  ; 0x140003c68
    ret  ; 0x140003c6f
    lea rax, [rip + 0x27111]  ; 0x140003c70
    ret  ; 0x140003c77
    and dword ptr [rip + 0x26509], 0  ; 0x140003c78
    ret  ; 0x140003c7f
    mov qword ptr [rsp + 8], rbx  ; 0x140003c80
; Function: func_140003c85
func_140003c85:
    push rbp  ; 0x140003c85
    lea rbp, [rsp - 0x4c0]  ; 0x140003c86
    sub rsp, 0x5c0  ; 0x140003c8e
    mov ebx, ecx  ; 0x140003c95
    mov ecx, 0x17  ; 0x140003c97
    call qword ptr [rip + 0x1939e]  ; 0x140003c9c
    test eax, eax  ; 0x140003ca2
    je 0x140003caa  ; 0x140003ca4
    mov ecx, ebx  ; 0x140003ca6
    int 0x29  ; 0x140003ca8
    mov ecx, 3  ; 0x140003caa
    call 0x140003c78  ; 0x140003caf
    xor edx, edx  ; 0x140003cb4
    lea rcx, [rbp - 0x10]  ; 0x140003cb6
    mov r8d, 0x4d0  ; 0x140003cba
    call 0x14001b630  ; 0x140003cc0
    lea rcx, [rbp - 0x10]  ; 0x140003cc5
    call qword ptr [rip + 0x19339]  ; 0x140003cc9
    mov rbx, qword ptr [rbp + 0xe8]  ; 0x140003ccf
    lea rdx, [rbp + 0x4d8]  ; 0x140003cd6
    mov rcx, rbx  ; 0x140003cdd
    xor r8d, r8d  ; 0x140003ce0
    call qword ptr [rip + 0x19327]  ; 0x140003ce3
    test rax, rax  ; 0x140003ce9
    je 0x140003d2a  ; 0x140003cec
    and qword ptr [rsp + 0x38], 0  ; 0x140003cee
    lea rcx, [rbp + 0x4e0]  ; 0x140003cf4
    mov rdx, qword ptr [rbp + 0x4d8]  ; 0x140003cfb
    mov r9, rax  ; 0x140003d02
    mov qword ptr [rsp + 0x30], rcx  ; 0x140003d05
    mov r8, rbx  ; 0x140003d0a
    lea rcx, [rbp + 0x4e8]  ; 0x140003d0d
    mov qword ptr [rsp + 0x28], rcx  ; 0x140003d14
    lea rcx, [rbp - 0x10]  ; 0x140003d19
    mov qword ptr [rsp + 0x20], rcx  ; 0x140003d1d
    xor ecx, ecx  ; 0x140003d22
    call qword ptr [rip + 0x192ee]  ; 0x140003d24
    mov rax, qword ptr [rbp + 0x4c8]  ; 0x140003d2a
    lea rcx, [rsp + 0x50]  ; 0x140003d31
    mov qword ptr [rbp + 0xe8], rax  ; 0x140003d36
    xor edx, edx  ; 0x140003d3d
    lea rax, [rbp + 0x4c8]  ; 0x140003d3f
    mov r8d, 0x98  ; 0x140003d46
    add rax, 8  ; 0x140003d4c
    mov qword ptr [rbp + 0x88], rax  ; 0x140003d50
    call 0x14001b630  ; 0x140003d57
    mov rax, qword ptr [rbp + 0x4c8]  ; 0x140003d5c
    mov qword ptr [rsp + 0x60], rax  ; 0x140003d63
    mov dword ptr [rsp + 0x50], 0x40000015  ; 0x140003d68
    mov dword ptr [rsp + 0x54], 1  ; 0x140003d70
    call qword ptr [rip + 0x192f2]  ; 0x140003d78
    mov ebx, eax  ; 0x140003d7e
    xor ecx, ecx  ; 0x140003d80
    lea rax, [rsp + 0x50]  ; 0x140003d82
    mov qword ptr [rsp + 0x40], rax  ; 0x140003d87
    lea rax, [rbp - 0x10]  ; 0x140003d8c
    mov qword ptr [rsp + 0x48], rax  ; 0x140003d90
    call qword ptr [rip + 0x1928d]  ; 0x140003d95
    lea rcx, [rsp + 0x40]  ; 0x140003d9b
    call qword ptr [rip + 0x1927a]  ; 0x140003da0
    test eax, eax  ; 0x140003da6
    jne 0x140003db7  ; 0x140003da8
    cmp ebx, 1  ; 0x140003daa
    je 0x140003db7  ; 0x140003dad
    lea ecx, [rax + 3]  ; 0x140003daf
    call 0x140003c78  ; 0x140003db2
    mov rbx, qword ptr [rsp + 0x5d0]  ; 0x140003db7
    add rsp, 0x5c0  ; 0x140003dbf
    pop rbp  ; 0x140003dc6
    ret  ; 0x140003dc7
    jmp 0x140003c0c  ; 0x140003dc8
    int3   ; 0x140003dcd
    int3   ; 0x140003dce
    int3   ; 0x140003dcf
    sub rsp, 0x28  ; 0x140003dd0
    xor ecx, ecx  ; 0x140003dd4
    call qword ptr [rip + 0x192a4]  ; 0x140003dd6
    test rax, rax  ; 0x140003ddc
    je 0x140003e1a  ; 0x140003ddf
    mov ecx, 0x5a4d  ; 0x140003de1
    cmp word ptr [rax], cx  ; 0x140003de6
    jne 0x140003e1a  ; 0x140003de9
    movsxd rcx, dword ptr [rax + 0x3c]  ; 0x140003deb
    add rcx, rax  ; 0x140003def
    cmp dword ptr [rcx], 0x4550  ; 0x140003df2
    jne 0x140003e1a  ; 0x140003df8
    mov eax, 0x20b  ; 0x140003dfa
    cmp word ptr [rcx + 0x18], ax  ; 0x140003dff
    jne 0x140003e1a  ; 0x140003e03
    cmp dword ptr [rcx + 0x84], 0xe  ; 0x140003e05
    jbe 0x140003e1a  ; 0x140003e0c
    cmp dword ptr [rcx + 0xf8], 0  ; 0x140003e0e
    setne al  ; 0x140003e15
    jmp 0x140003e1c  ; 0x140003e18
    xor al, al  ; 0x140003e1a
    add rsp, 0x28  ; 0x140003e1c
    ret  ; 0x140003e20
    int3   ; 0x140003e21
    int3   ; 0x140003e22
    int3   ; 0x140003e23
    lea rcx, [rip + 9]  ; 0x140003e24
    jmp qword ptr [rip + 0x191f6]  ; 0x140003e2b
    int3   ; 0x140003e32
    int3   ; 0x140003e33
    mov qword ptr [rsp + 8], rbx  ; 0x140003e34
    push rdi  ; 0x140003e39
    sub rsp, 0x20  ; 0x140003e3a
    mov rbx, qword ptr [rcx]  ; 0x140003e3e
    mov rdi, rcx  ; 0x140003e41
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140003e44
    jne 0x140003e68  ; 0x140003e4a
    cmp dword ptr [rbx + 0x18], 4  ; 0x140003e4c
    jne 0x140003e68  ; 0x140003e50
    mov edx, dword ptr [rbx + 0x20]  ; 0x140003e52
    lea eax, [rdx - 0x19930520]  ; 0x140003e55
    cmp eax, 2  ; 0x140003e5b
    jbe 0x140003e75  ; 0x140003e5e
    cmp edx, 0x1994000  ; 0x140003e60
    je 0x140003e75  ; 0x140003e66
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140003e68
    xor eax, eax  ; 0x140003e6d
    add rsp, 0x20  ; 0x140003e6f
    pop rdi  ; 0x140003e73
    ret  ; 0x140003e74
    call 0x140005294  ; 0x140003e75
    mov qword ptr [rax], rbx  ; 0x140003e7a
    mov rbx, qword ptr [rdi + 8]  ; 0x140003e7d
    call 0x1400052a8  ; 0x140003e81
    mov qword ptr [rax], rbx  ; 0x140003e86
    call 0x14000e864  ; 0x140003e89
    int3   ; 0x140003e8e
    int3   ; 0x140003e8f
    mov qword ptr [rsp + 8], rbx  ; 0x140003e90
    push rdi  ; 0x140003e95
    sub rsp, 0x20  ; 0x140003e96
    lea rbx, [rip + 0x22477]  ; 0x140003e9a
    lea rdi, [rip + 0x22470]  ; 0x140003ea1
    jmp 0x140003ebc  ; 0x140003ea8
    mov rax, qword ptr [rbx]  ; 0x140003eaa
    test rax, rax  ; 0x140003ead
    je 0x140003eb8  ; 0x140003eb0
    call qword ptr [rip + 0x193b8]  ; 0x140003eb2
    add rbx, 8  ; 0x140003eb8
    cmp rbx, rdi  ; 0x140003ebc
    jb 0x140003eaa  ; 0x140003ebf
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140003ec1
    add rsp, 0x20  ; 0x140003ec6
    pop rdi  ; 0x140003eca
    ret  ; 0x140003ecb
    mov qword ptr [rsp + 8], rbx  ; 0x140003ecc
    push rdi  ; 0x140003ed1
    sub rsp, 0x20  ; 0x140003ed2
    lea rbx, [rip + 0x2244b]  ; 0x140003ed6
    lea rdi, [rip + 0x22444]  ; 0x140003edd
    jmp 0x140003ef8  ; 0x140003ee4
    mov rax, qword ptr [rbx]  ; 0x140003ee6
    test rax, rax  ; 0x140003ee9
    je 0x140003ef4  ; 0x140003eec
    call qword ptr [rip + 0x1937c]  ; 0x140003eee
    add rbx, 8  ; 0x140003ef4
    cmp rbx, rdi  ; 0x140003ef8
    jb 0x140003ee6  ; 0x140003efb
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140003efd
    add rsp, 0x20  ; 0x140003f02
    pop rdi  ; 0x140003f06
    ret  ; 0x140003f07
    mov qword ptr [rsp + 0x10], rbx  ; 0x140003f08
    mov qword ptr [rsp + 0x18], rsi  ; 0x140003f0d
    push rdi  ; 0x140003f12
    sub rsp, 0x10  ; 0x140003f13
    xor eax, eax  ; 0x140003f17
    xor ecx, ecx  ; 0x140003f19
    cpuid   ; 0x140003f1b
    mov r8d, ecx  ; 0x140003f1d
    xor r11d, r11d  ; 0x140003f20
    mov r10d, edx  ; 0x140003f23
    xor r8d, 0x6c65746e  ; 0x140003f26
    xor r10d, 0x49656e69  ; 0x140003f2d
    mov r9d, ebx  ; 0x140003f34
    mov esi, eax  ; 0x140003f37
    xor ecx, ecx  ; 0x140003f39
    lea eax, [r11 + 1]  ; 0x140003f3b
    or r10d, r8d  ; 0x140003f3f
    cpuid   ; 0x140003f42
    xor r9d, 0x756e6547  ; 0x140003f44
    mov dword ptr [rsp], eax  ; 0x140003f4b
    or r10d, r9d  ; 0x140003f4e
    mov dword ptr [rsp + 4], ebx  ; 0x140003f51
    mov edi, ecx  ; 0x140003f55
    mov dword ptr [rsp + 8], ecx  ; 0x140003f57
    mov dword ptr [rsp + 0xc], edx  ; 0x140003f5b
    jne 0x140003fbc  ; 0x140003f5f
    or qword ptr [rip + 0x250ff], 0xffffffffffffffff  ; 0x140003f61
    and eax, 0xfff3ff0  ; 0x140003f69
    mov qword ptr [rip + 0x250e7], 0x8000  ; 0x140003f6e
    cmp eax, 0x106c0  ; 0x140003f79
    je 0x140003fa8  ; 0x140003f7e
    cmp eax, 0x20660  ; 0x140003f80
    je 0x140003fa8  ; 0x140003f85
    cmp eax, 0x20670  ; 0x140003f87
    je 0x140003fa8  ; 0x140003f8c
    add eax, 0xfffcf9b0  ; 0x140003f8e
    cmp eax, 0x20  ; 0x140003f93
    ja 0x140003fbc  ; 0x140003f96
    movabs rcx, 0x100010001  ; 0x140003f98
    bt rcx, rax  ; 0x140003fa2
    jae 0x140003fbc  ; 0x140003fa6
    mov r8d, dword ptr [rip + 0x261dd]  ; 0x140003fa8
    or r8d, 1  ; 0x140003faf
    mov dword ptr [rip + 0x261d2], r8d  ; 0x140003fb3
    jmp 0x140003fc3  ; 0x140003fba
    mov r8d, dword ptr [rip + 0x261c9]  ; 0x140003fbc
    mov eax, 7  ; 0x140003fc3
    lea r9d, [rax - 5]  ; 0x140003fc8
    cmp esi, eax  ; 0x140003fcc
    jl 0x140003ff6  ; 0x140003fce
    xor ecx, ecx  ; 0x140003fd0
    cpuid   ; 0x140003fd2
    mov dword ptr [rsp], eax  ; 0x140003fd4
    mov r11d, ebx  ; 0x140003fd7
    mov dword ptr [rsp + 4], ebx  ; 0x140003fda
    mov dword ptr [rsp + 8], ecx  ; 0x140003fde
    mov dword ptr [rsp + 0xc], edx  ; 0x140003fe2
    bt ebx, 9  ; 0x140003fe6
    jae 0x140003ff6  ; 0x140003fea
    or r8d, r9d  ; 0x140003fec
    mov dword ptr [rip + 0x26196], r8d  ; 0x140003fef
    mov dword ptr [rip + 0x25058], 1  ; 0x140003ff6
    mov dword ptr [rip + 0x25055], r9d  ; 0x140004000
    bt edi, 0x14  ; 0x140004007
    jae 0x1400040a2  ; 0x14000400b
    mov dword ptr [rip + 0x25040], r9d  ; 0x140004011
    mov ebx, 6  ; 0x140004018
    mov dword ptr [rip + 0x25039], ebx  ; 0x14000401d
    bt edi, 0x1b  ; 0x140004023
    jae 0x1400040a2  ; 0x140004027
    bt edi, 0x1c  ; 0x140004029
    jae 0x1400040a2  ; 0x14000402d
    xor ecx, ecx  ; 0x14000402f
    xgetbv   ; 0x140004031
    shl rdx, 0x20  ; 0x140004034
    or rdx, rax  ; 0x140004038
    mov qword ptr [rsp + 0x20], rdx  ; 0x14000403b
    mov rax, qword ptr [rsp + 0x20]  ; 0x140004040
    and al, bl  ; 0x140004045
    cmp al, bl  ; 0x140004047
    jne 0x1400040a2  ; 0x140004049
    mov eax, dword ptr [rip + 0x2500b]  ; 0x14000404b
    or eax, 8  ; 0x140004051
    mov dword ptr [rip + 0x24ffa], 3  ; 0x140004054
    mov dword ptr [rip + 0x24ff8], eax  ; 0x14000405e
    test r11b, 0x20  ; 0x140004064
    je 0x1400040a2  ; 0x140004068
    or eax, 0x20  ; 0x14000406a
    mov dword ptr [rip + 0x24fe1], 5  ; 0x14000406d
    mov dword ptr [rip + 0x24fdf], eax  ; 0x140004077
    mov eax, 0xd0030000  ; 0x14000407d
    and r11d, eax  ; 0x140004082
    cmp r11d, eax  ; 0x140004085
    jne 0x1400040a2  ; 0x140004088
    mov rax, qword ptr [rsp + 0x20]  ; 0x14000408a
    and al, 0xe0  ; 0x14000408f
    cmp al, 0xe0  ; 0x140004091
    jne 0x1400040a2  ; 0x140004093
    or dword ptr [rip + 0x24fc0], 0x40  ; 0x140004095
    mov dword ptr [rip + 0x24fb6], ebx  ; 0x14000409c
    mov rbx, qword ptr [rsp + 0x28]  ; 0x1400040a2
    xor eax, eax  ; 0x1400040a7
    mov rsi, qword ptr [rsp + 0x30]  ; 0x1400040a9
    add rsp, 0x10  ; 0x1400040ae
    pop rdi  ; 0x1400040b2
    ret  ; 0x1400040b3
    xor eax, eax  ; 0x1400040b4
    cmp dword ptr [rip + 0x26cc4], eax  ; 0x1400040b6
    setne al  ; 0x1400040bc
    ret  ; 0x1400040bf
    mov qword ptr [rsp + 8], rbx  ; 0x1400040c0
    mov qword ptr [rsp + 0x10], rsi  ; 0x1400040c5
    mov qword ptr [rsp + 0x18], rdi  ; 0x1400040ca
    push r14  ; 0x1400040cf
    sub rsp, 0x20  ; 0x1400040d1
    cmp byte ptr [rcx + 8], 0  ; 0x1400040d5
    mov r14, rdx  ; 0x1400040d9
    mov rsi, rcx  ; 0x1400040dc
    je 0x14000412d  ; 0x1400040df
    mov rax, qword ptr [rcx]  ; 0x1400040e1
    test rax, rax  ; 0x1400040e4
    je 0x14000412d  ; 0x1400040e7
    or rdi, 0xffffffffffffffff  ; 0x1400040e9
    inc rdi  ; 0x1400040ed
    cmp byte ptr [rax + rdi], 0  ; 0x1400040f0
    jne 0x1400040ed  ; 0x1400040f4
    lea rcx, [rdi + 1]  ; 0x1400040f6
    call 0x14000d3d0  ; 0x1400040fa
    mov rbx, rax  ; 0x1400040ff
    test rax, rax  ; 0x140004102
    je 0x140004123  ; 0x140004105
    mov r8, qword ptr [rsi]  ; 0x140004107
    lea rdx, [rdi + 1]  ; 0x14000410a
    mov rcx, rax  ; 0x14000410e
    call 0x14000e890  ; 0x140004111
    mov rax, rbx  ; 0x140004116
    mov byte ptr [r14 + 8], 1  ; 0x140004119
    mov qword ptr [r14], rax  ; 0x14000411e
    xor ebx, ebx  ; 0x140004121
    mov rcx, rbx  ; 0x140004123
    call 0x14000d3d8  ; 0x140004126
    jmp 0x140004137  ; 0x14000412b
    mov rax, qword ptr [rcx]  ; 0x14000412d
    mov qword ptr [rdx], rax  ; 0x140004130
    mov byte ptr [rdx + 8], 0  ; 0x140004133
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140004137
    mov rsi, qword ptr [rsp + 0x38]  ; 0x14000413c
    mov rdi, qword ptr [rsp + 0x40]  ; 0x140004141
    add rsp, 0x20  ; 0x140004146
    pop r14  ; 0x14000414a
    ret  ; 0x14000414c
    int3   ; 0x14000414d
    int3   ; 0x14000414e
    int3   ; 0x14000414f
    push rbx  ; 0x140004150
    sub rsp, 0x20  ; 0x140004152
    cmp byte ptr [rcx + 8], 0  ; 0x140004156
    mov rbx, rcx  ; 0x14000415a
    je 0x140004167  ; 0x14000415d
    mov rcx, qword ptr [rcx]  ; 0x14000415f
    call 0x14000d3d8  ; 0x140004162
    and qword ptr [rbx], 0  ; 0x140004167
    mov byte ptr [rbx + 8], 0  ; 0x14000416b
    add rsp, 0x20  ; 0x14000416f
    pop rbx  ; 0x140004173
    ret  ; 0x140004174
    int3   ; 0x140004175
    int3   ; 0x140004176
    int3   ; 0x140004177
    mov qword ptr [rsp + 0x18], rbx  ; 0x140004178
    mov qword ptr [rsp + 0x20], rsi  ; 0x14000417d
    push rdi  ; 0x140004182
    sub rsp, 0x50  ; 0x140004183
    mov rbx, rdx  ; 0x140004187
    mov rsi, rcx  ; 0x14000418a
    mov edi, 0x19930520  ; 0x14000418d
    test rdx, rdx  ; 0x140004192
    je 0x1400041b4  ; 0x140004195
    test byte ptr [rdx], 0x10  ; 0x140004197
    je 0x1400041b4  ; 0x14000419a
    mov rcx, qword ptr [rcx]  ; 0x14000419c
    sub rcx, 8  ; 0x14000419f
    mov rax, qword ptr [rcx]  ; 0x1400041a3
    mov rbx, qword ptr [rax + 0x30]  ; 0x1400041a6
    mov rax, qword ptr [rax + 0x40]  ; 0x1400041aa
    call qword ptr [rip + 0x190bc]  ; 0x1400041ae
    xor eax, eax  ; 0x1400041b4
    mov qword ptr [rsp + 0x20], rax  ; 0x1400041b6
    test rbx, rbx  ; 0x1400041bb
    je 0x1400041e2  ; 0x1400041be
    lea rdx, [rsp + 0x20]  ; 0x1400041c0
    mov rcx, rbx  ; 0x1400041c5
    call qword ptr [rip + 0x18ec2]  ; 0x1400041c8
    mov qword ptr [rsp + 0x20], rax  ; 0x1400041ce
    test byte ptr [rbx], 8  ; 0x1400041d3
    jne 0x1400041dd  ; 0x1400041d6
    test rax, rax  ; 0x1400041d8
    jne 0x1400041e2  ; 0x1400041db
    mov edi, 0x1994000  ; 0x1400041dd
    mov edx, 1  ; 0x1400041e2
    mov qword ptr [rsp + 0x28], rdi  ; 0x1400041e7
    lea r9, [rsp + 0x28]  ; 0x1400041ec
    mov qword ptr [rsp + 0x30], rsi  ; 0x1400041f1
    mov ecx, 0xe06d7363  ; 0x1400041f6
    mov qword ptr [rsp + 0x38], rbx  ; 0x1400041fb
    mov qword ptr [rsp + 0x40], rax  ; 0x140004200
    lea r8d, [rdx + 3]  ; 0x140004205
    call qword ptr [rip + 0x18e89]  ; 0x140004209
    mov rbx, qword ptr [rsp + 0x70]  ; 0x14000420f
    mov rsi, qword ptr [rsp + 0x78]  ; 0x140004214
    add rsp, 0x50  ; 0x140004219
    pop rdi  ; 0x14000421d
    ret  ; 0x14000421e
    int3   ; 0x14000421f
    mov rax, rsp  ; 0x140004220
    mov qword ptr [rax + 0x20], r9  ; 0x140004223
    mov qword ptr [rax + 0x18], r8  ; 0x140004227
    mov qword ptr [rax + 0x10], rdx  ; 0x14000422b
    mov qword ptr [rax + 8], rcx  ; 0x14000422f
    push rbx  ; 0x140004233
    sub rsp, 0x70  ; 0x140004234
    mov rbx, rcx  ; 0x140004238
    and dword ptr [rax - 0x38], 0  ; 0x14000423b
    mov qword ptr [rax - 0x20], rcx  ; 0x14000423f
    mov qword ptr [rax - 0x18], r8  ; 0x140004243
    call 0x1400052e8  ; 0x140004247
    lea rdx, [rsp + 0x58]  ; 0x14000424c
    mov ecx, dword ptr [rbx]  ; 0x140004251
    mov rax, qword ptr [rax + 0x10]  ; 0x140004253
    call qword ptr [rip + 0x19013]  ; 0x140004257
    mov dword ptr [rsp + 0x40], 0  ; 0x14000425d
    jmp 0x140004267  ; 0x140004265
    mov eax, dword ptr [rsp + 0x40]  ; 0x140004267
    add rsp, 0x70  ; 0x14000426b
    pop rbx  ; 0x14000426f
    ret  ; 0x140004270
    int3   ; 0x140004271
    int3   ; 0x140004272
    int3   ; 0x140004273
    mov rax, rsp  ; 0x140004274
    mov qword ptr [rax + 0x20], r9  ; 0x140004277
    mov qword ptr [rax + 0x18], r8  ; 0x14000427b
    mov qword ptr [rax + 0x10], rdx  ; 0x14000427f
    mov qword ptr [rax + 8], rcx  ; 0x140004283
    push rbx  ; 0x140004287
    sub rsp, 0x70  ; 0x140004288
    mov rbx, rcx  ; 0x14000428c
    and dword ptr [rax - 0x38], 0  ; 0x14000428f
    mov qword ptr [rax - 0x20], rcx  ; 0x140004293
    mov qword ptr [rax - 0x18], r8  ; 0x140004297
    call 0x1400052e8  ; 0x14000429b
    lea rdx, [rsp + 0x58]  ; 0x1400042a0
    mov ecx, dword ptr [rbx]  ; 0x1400042a5
    mov rax, qword ptr [rax + 0x10]  ; 0x1400042a7
    call qword ptr [rip + 0x18fbf]  ; 0x1400042ab
    mov dword ptr [rsp + 0x40], 0  ; 0x1400042b1
    jmp 0x1400042bb  ; 0x1400042b9
    mov eax, dword ptr [rsp + 0x40]  ; 0x1400042bb
    add rsp, 0x70  ; 0x1400042bf
    pop rbx  ; 0x1400042c3
    ret  ; 0x1400042c4
    int3   ; 0x1400042c5
    int3   ; 0x1400042c6
    int3   ; 0x1400042c7
    mov qword ptr [rsp + 8], rbx  ; 0x1400042c8
; Function: func_1400042cd
func_1400042cd:
    mov qword ptr [rsp + 0x10], rbp  ; 0x1400042cd
    mov qword ptr [rsp + 0x18], rsi  ; 0x1400042d2
    push rdi  ; 0x1400042d7
    sub rsp, 0x20  ; 0x1400042d8
    mov edi, dword ptr [rcx + 0xc]  ; 0x1400042dc
    mov esi, edx  ; 0x1400042df
    mov rbp, rcx  ; 0x1400042e1
    test edi, edi  ; 0x1400042e4
    je 0x140004313  ; 0x1400042e6
    lea ebx, [rdi - 1]  ; 0x1400042e8
    mov edi, ebx  ; 0x1400042eb
    call 0x1400052e8  ; 0x1400042ed
    lea rdx, [rbx + rbx*4]  ; 0x1400042f2
    mov rax, qword ptr [rax + 0x60]  ; 0x1400042f6
    lea rcx, [rax + rdx*4]  ; 0x1400042fa
    movsxd rax, dword ptr [rbp + 0x10]  ; 0x1400042fe
    add rax, rcx  ; 0x140004302
    cmp esi, dword ptr [rax + 4]  ; 0x140004305
    jle 0x14000430f  ; 0x140004308
    cmp esi, dword ptr [rax + 8]  ; 0x14000430a
    jle 0x140004315  ; 0x14000430d
    test ebx, ebx  ; 0x14000430f
    jne 0x1400042e8  ; 0x140004311
    xor eax, eax  ; 0x140004313
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140004315
    mov rbp, qword ptr [rsp + 0x38]  ; 0x14000431a
    mov rsi, qword ptr [rsp + 0x40]  ; 0x14000431f
    add rsp, 0x20  ; 0x140004324
    pop rdi  ; 0x140004328
    ret  ; 0x140004329
    int3   ; 0x14000432a
    int3   ; 0x14000432b
    mov rax, rsp  ; 0x14000432c
    mov qword ptr [rax + 8], rbx  ; 0x14000432f
; Function: func_140004333
func_140004333:
    mov qword ptr [rax + 0x10], rbp  ; 0x140004333
    mov qword ptr [rax + 0x18], rsi  ; 0x140004337
    mov qword ptr [rax + 0x20], rdi  ; 0x14000433b
    push r14  ; 0x14000433f
    mov bl, byte ptr [rcx]  ; 0x140004341
    lea r10, [rcx + 1]  ; 0x140004343
    mov byte ptr [rdx], bl  ; 0x140004347
    mov esi, r9d  ; 0x140004349
    lea r14, [rip - 0x4353]  ; 0x14000434c
    mov rbp, r8  ; 0x140004353
    mov r11, rdx  ; 0x140004356
    mov rdi, rcx  ; 0x140004359
    test bl, 4  ; 0x14000435c
    je 0x140004385  ; 0x14000435f
    movzx ecx, byte ptr [r10]  ; 0x140004361
    and ecx, 0xf  ; 0x140004365
    movsx rax, byte ptr [rcx + r14 + 0x1d450]  ; 0x140004368
    mov cl, byte ptr [rcx + r14 + 0x1d460]  ; 0x140004371
    sub r10, rax  ; 0x140004379
    mov eax, dword ptr [r10 - 4]  ; 0x14000437c
    shr eax, cl  ; 0x140004380
    mov dword ptr [rdx + 4], eax  ; 0x140004382
    test bl, 8  ; 0x140004385
    je 0x140004394  ; 0x140004388
    mov eax, dword ptr [r10]  ; 0x14000438a
    add r10, 4  ; 0x14000438d
    mov dword ptr [rdx + 8], eax  ; 0x140004391
    test bl, 0x10  ; 0x140004394
    je 0x1400043a3  ; 0x140004397
    mov eax, dword ptr [r10]  ; 0x140004399
    add r10, 4  ; 0x14000439c
    mov dword ptr [rdx + 0xc], eax  ; 0x1400043a0
    xor r9d, r9d  ; 0x1400043a3
    lea r8, [r10 + 4]  ; 0x1400043a6
    cmp byte ptr [rsp + 0x30], r9b  ; 0x1400043aa
    jne 0x140004411  ; 0x1400043af
    test bl, 2  ; 0x1400043b1
    je 0x140004411  ; 0x1400043b4
    mov dword ptr [rdx + 0x10], r9d  ; 0x1400043b6
    cmp dword ptr [r10], r9d  ; 0x1400043ba
    je 0x140004408  ; 0x1400043bd
    movsxd rdx, dword ptr [r10]  ; 0x1400043bf
    add rdx, rbp  ; 0x1400043c2
    movzx ecx, byte ptr [rdx]  ; 0x1400043c5
    and ecx, 0xf  ; 0x1400043c8
    movsx rax, byte ptr [rcx + r14 + 0x1d450]  ; 0x1400043cb
    mov cl, byte ptr [rcx + r14 + 0x1d460]  ; 0x1400043d4
    sub rdx, rax  ; 0x1400043dc
    mov r10d, dword ptr [rdx - 4]  ; 0x1400043df
    shr r10d, cl  ; 0x1400043e3
    test r10d, r10d  ; 0x1400043e6
    je 0x140004417  ; 0x1400043e9
    mov eax, dword ptr [rdx]  ; 0x1400043eb
    mov ecx, dword ptr [rdx + 4]  ; 0x1400043ed
    lea rdx, [rdx + 8]  ; 0x1400043f0
    cmp eax, esi  ; 0x1400043f4
    je 0x140004402  ; 0x1400043f6
    inc r9d  ; 0x1400043f8
    cmp r9d, r10d  ; 0x1400043fb
    jb 0x1400043eb  ; 0x1400043fe
    jmp 0x140004417  ; 0x140004400
    mov dword ptr [r11 + 0x10], ecx  ; 0x140004402
    jmp 0x140004417  ; 0x140004406
    mov ecx, 7  ; 0x140004408
    int 0x29  ; 0x14000440d
    jmp 0x140004417  ; 0x14000440f
    mov eax, dword ptr [r10]  ; 0x140004411
    mov dword ptr [rdx + 0x10], eax  ; 0x140004414
    test bl, 1  ; 0x140004417
    je 0x140004441  ; 0x14000441a
    movzx ecx, byte ptr [r8]  ; 0x14000441c
    and ecx, 0xf  ; 0x140004420
    movsx rdx, byte ptr [rcx + r14 + 0x1d450]  ; 0x140004423
    mov cl, byte ptr [rcx + r14 + 0x1d460]  ; 0x14000442c
    sub r8, rdx  ; 0x140004434
    mov edx, dword ptr [r8 - 4]  ; 0x140004437
    shr edx, cl  ; 0x14000443b
    mov dword ptr [r11 + 0x14], edx  ; 0x14000443d
    mov rbx, qword ptr [rsp + 0x10]  ; 0x140004441
    sub r8, rdi  ; 0x140004446
    mov rbp, qword ptr [rsp + 0x18]  ; 0x140004449
    mov rax, r8  ; 0x14000444e
    mov rsi, qword ptr [rsp + 0x20]  ; 0x140004451
    mov rdi, qword ptr [rsp + 0x28]  ; 0x140004456
    pop r14  ; 0x14000445b
    ret  ; 0x14000445d
    int3   ; 0x14000445e
    int3   ; 0x14000445f
    push rbx  ; 0x140004460
    sub rsp, 0x20  ; 0x140004462
    mov rbx, rdx  ; 0x140004466
    mov rdx, rcx  ; 0x140004469
    mov rcx, rbx  ; 0x14000446c
    call 0x1400054cc  ; 0x14000446f
    mov edx, eax  ; 0x140004474
    mov rcx, rbx  ; 0x140004476
    call 0x1400042c8  ; 0x140004479
    test rax, rax  ; 0x14000447e
    setne al  ; 0x140004481
    add rsp, 0x20  ; 0x140004484
    pop rbx  ; 0x140004488
    ret  ; 0x140004489
    int3   ; 0x14000448a
    int3   ; 0x14000448b
    mov al, byte ptr [rdx]  ; 0x14000448c
    and al, 1  ; 0x14000448e
    ret  ; 0x140004490
    int3   ; 0x140004491
    int3   ; 0x140004492
    int3   ; 0x140004493
    mov qword ptr [rsp + 8], rbx  ; 0x140004494
    mov qword ptr [rsp + 0x10], rsi  ; 0x140004499
    push rdi  ; 0x14000449e
    sub rsp, 0x20  ; 0x14000449f
    lea r9, [rsp + 0x48]  ; 0x1400044a3
    mov rbx, r8  ; 0x1400044a8
    mov rdi, rdx  ; 0x1400044ab
    call 0x14000452c  ; 0x1400044ae
    mov rdx, rdi  ; 0x1400044b3
    mov rcx, rbx  ; 0x1400044b6
    mov rsi, rax  ; 0x1400044b9
    call 0x1400054cc  ; 0x1400044bc
    mov edx, eax  ; 0x1400044c1
    mov rcx, rbx  ; 0x1400044c3
    call 0x1400042c8  ; 0x1400044c6
    test rax, rax  ; 0x1400044cb
    jne 0x1400044d6  ; 0x1400044ce
    or r9d, 0xffffffff  ; 0x1400044d0
    jmp 0x1400044da  ; 0x1400044d4
    mov r9d, dword ptr [rax + 4]  ; 0x1400044d6
    mov r8, rbx  ; 0x1400044da
    mov rdx, rdi  ; 0x1400044dd
    mov rcx, rsi  ; 0x1400044e0
    call 0x140007c90  ; 0x1400044e3
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400044e8
    mov rsi, qword ptr [rsp + 0x38]  ; 0x1400044ed
    add rsp, 0x20  ; 0x1400044f2
    pop rdi  ; 0x1400044f6
    ret  ; 0x1400044f7
    sub rsp, 0x28  ; 0x1400044f8
    test byte ptr [r8], 1  ; 0x1400044fc
    mov rcx, qword ptr [rcx]  ; 0x140004500
    mov qword ptr [rsp + 0x30], rcx  ; 0x140004503
    je 0x140004517  ; 0x140004508
    mov eax, dword ptr [r8 + 0x14]  ; 0x14000450a
    mov rcx, qword ptr [rax + rcx]  ; 0x14000450e
    mov qword ptr [rsp + 0x30], rcx  ; 0x140004512
    or r9d, 0xffffffff  ; 0x140004517
    lea rcx, [rsp + 0x30]  ; 0x14000451b
    call 0x140007e1c  ; 0x140004520
    add rsp, 0x28  ; 0x140004525
    ret  ; 0x140004529
    int3   ; 0x14000452a
    int3   ; 0x14000452b
    mov qword ptr [rsp + 0x10], rbx  ; 0x14000452c
; Function: func_140004531
func_140004531:
    mov qword ptr [rsp + 0x18], rbp  ; 0x140004531
    push rsi  ; 0x140004536
    push rdi  ; 0x140004537
    push r12  ; 0x140004538
    push r14  ; 0x14000453a
    push r15  ; 0x14000453c
    sub rsp, 0x20  ; 0x14000453e
    mov esi, dword ptr [r8 + 0xc]  ; 0x140004542
    mov r12, rcx  ; 0x140004546
    mov rcx, r8  ; 0x140004549
    mov rdi, r9  ; 0x14000454c
    mov r14, r8  ; 0x14000454f
    mov r15, rdx  ; 0x140004552
    call 0x1400054cc  ; 0x140004555
    mov r10, qword ptr [r12]  ; 0x14000455a
    mov ebp, eax  ; 0x14000455e
    mov qword ptr [rdi], r10  ; 0x140004560
    jmp 0x1400045c8  ; 0x140004563
    movsxd rax, dword ptr [r14 + 0x10]  ; 0x140004565
    lea ecx, [rsi - 1]  ; 0x140004569
    mov esi, ecx  ; 0x14000456c
    lea rcx, [rcx + rcx*4]  ; 0x14000456e
    lea rbx, [rax + rcx*4]  ; 0x140004572
    add rbx, qword ptr [r15 + 8]  ; 0x140004576
    cmp ebp, dword ptr [rbx + 4]  ; 0x14000457a
    jle 0x1400045c8  ; 0x14000457d
    cmp ebp, dword ptr [rbx + 8]  ; 0x14000457f
    jg 0x1400045c8  ; 0x140004582
    mov rcx, qword ptr [r15]  ; 0x140004584
    lea rdx, [rsp + 0x50]  ; 0x140004587
    xor r8d, r8d  ; 0x14000458c
    call qword ptr [rip + 0x18a7b]  ; 0x14000458f
    movsxd r8, dword ptr [rbx + 0x10]  ; 0x140004595
    xor ecx, ecx  ; 0x140004599
    add r8, qword ptr [rsp + 0x50]  ; 0x14000459b
    mov r9d, dword ptr [rbx + 0xc]  ; 0x1400045a0
    mov r10d, dword ptr [rax]  ; 0x1400045a4
    test r9d, r9d  ; 0x1400045a7
    je 0x1400045c3  ; 0x1400045aa
    lea rdx, [r8 + 0xc]  ; 0x1400045ac
    movsxd rax, dword ptr [rdx]  ; 0x1400045b0
    cmp rax, r10  ; 0x1400045b3
    je 0x1400045c3  ; 0x1400045b6
    inc ecx  ; 0x1400045b8
    add rdx, 0x14  ; 0x1400045ba
    cmp ecx, r9d  ; 0x1400045be
    jb 0x1400045b0  ; 0x1400045c1
    cmp ecx, r9d  ; 0x1400045c3
    jb 0x1400045ce  ; 0x1400045c6
    test esi, esi  ; 0x1400045c8
    jne 0x140004565  ; 0x1400045ca
    jmp 0x1400045e2  ; 0x1400045cc
    mov rax, qword ptr [r12]  ; 0x1400045ce
    lea rcx, [rcx + rcx*4]  ; 0x1400045d2
    movsxd rcx, dword ptr [r8 + rcx*4 + 0x10]  ; 0x1400045d6
    mov rcx, qword ptr [rcx + rax]  ; 0x1400045db
    mov qword ptr [rdi], rcx  ; 0x1400045df
    mov rbx, qword ptr [rsp + 0x58]  ; 0x1400045e2
    mov rax, rdi  ; 0x1400045e7
    mov rbp, qword ptr [rsp + 0x60]  ; 0x1400045ea
    add rsp, 0x20  ; 0x1400045ef
    pop r15  ; 0x1400045f3
    pop r14  ; 0x1400045f5
    pop r12  ; 0x1400045f7
    pop rdi  ; 0x1400045f9
    pop rsi  ; 0x1400045fa
    ret  ; 0x1400045fb
    mov rax, qword ptr [rcx]  ; 0x1400045fc
    mov rdx, rcx  ; 0x1400045ff
    mov qword ptr [r9], rax  ; 0x140004602
    test byte ptr [r8], 1  ; 0x140004605
    je 0x140004619  ; 0x140004609
    mov ecx, dword ptr [r8 + 0x14]  ; 0x14000460b
    mov rax, qword ptr [rdx]  ; 0x14000460f
    mov rcx, qword ptr [rcx + rax]  ; 0x140004612
    mov qword ptr [r9], rcx  ; 0x140004616
    mov rax, r9  ; 0x140004619
    ret  ; 0x14000461c
    int3   ; 0x14000461d
    int3   ; 0x14000461e
    int3   ; 0x14000461f
    mov qword ptr [rsp + 8], rbx  ; 0x140004620
; Function: func_140004625
func_140004625:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140004625
    mov qword ptr [rsp + 0x18], rsi  ; 0x14000462a
    push rdi  ; 0x14000462f
    push r12  ; 0x140004630
    push r13  ; 0x140004632
    push r14  ; 0x140004634
    push r15  ; 0x140004636
    sub rsp, 0x40  ; 0x140004638
    mov rbx, qword ptr [rsp + 0x90]  ; 0x14000463c
    mov r15, rdx  ; 0x140004644
    mov rsi, rcx  ; 0x140004647
    mov rdx, r9  ; 0x14000464a
    mov rcx, rbx  ; 0x14000464d
    mov rdi, r9  ; 0x140004650
    mov r14d, r8d  ; 0x140004653
    mov ebp, dword ptr [rbx + 0xc]  ; 0x140004656
    call 0x1400054cc  ; 0x140004659
    xor r10d, r10d  ; 0x14000465e
    mov r9d, eax  ; 0x140004661
    test ebp, ebp  ; 0x140004664
    je 0x14000474b  ; 0x140004666
    mov r11, qword ptr [rdi + 8]  ; 0x14000466c
    or r12d, 0xffffffff  ; 0x140004670
    movsxd rbx, dword ptr [rbx + 0x10]  ; 0x140004674
    mov r8d, r12d  ; 0x140004678
    mov r13d, r12d  ; 0x14000467b
    mov edx, ebp  ; 0x14000467e
    lea edi, [rdx - 1]  ; 0x140004680
    lea rcx, [rdi + rdi*4]  ; 0x140004683
    lea rax, [r11 + rcx*4]  ; 0x140004687
    cmp r9d, dword ptr [rax + rbx + 4]  ; 0x14000468b
    jle 0x140004699  ; 0x140004690
    cmp r9d, dword ptr [rax + rbx + 8]  ; 0x140004692
    jle 0x14000469f  ; 0x140004697
    mov edx, edi  ; 0x140004699
    test edi, edi  ; 0x14000469b
    jne 0x140004680  ; 0x14000469d
    test edx, edx  ; 0x14000469f
    je 0x1400046b3  ; 0x1400046a1
    lea eax, [rdx - 1]  ; 0x1400046a3
    lea rax, [rax + rax*4]  ; 0x1400046a6
    lea r9, [r11 + rax*4]  ; 0x1400046aa
    add r9, rbx  ; 0x1400046ae
    jmp 0x1400046b6  ; 0x1400046b1
    mov r9, r10  ; 0x1400046b3
    mov edx, r10d  ; 0x1400046b6
    lea rcx, [r11 + rbx]  ; 0x1400046b9
    test r9, r9  ; 0x1400046bd
    je 0x1400046d3  ; 0x1400046c0
    mov eax, dword ptr [r9 + 4]  ; 0x1400046c2
    cmp dword ptr [rcx], eax  ; 0x1400046c6
    jle 0x1400046e8  ; 0x1400046c8
    mov eax, dword ptr [r9 + 8]  ; 0x1400046ca
    cmp dword ptr [rcx + 4], eax  ; 0x1400046ce
    jg 0x1400046e8  ; 0x1400046d1
    cmp r14d, dword ptr [rcx]  ; 0x1400046d3
    jl 0x1400046e8  ; 0x1400046d6
    cmp r14d, dword ptr [rcx + 4]  ; 0x1400046d8
    jg 0x1400046e8  ; 0x1400046dc
    cmp r8d, r12d  ; 0x1400046de
    mov r13d, edx  ; 0x1400046e1
    cmove r8d, edx  ; 0x1400046e4
    inc edx  ; 0x1400046e8
    add rcx, 0x14  ; 0x1400046ea
    cmp edx, ebp  ; 0x1400046ee
    jb 0x1400046bd  ; 0x1400046f0
    mov eax, r10d  ; 0x1400046f2
    mov qword ptr [rsp + 0x20], r15  ; 0x1400046f5
    lea r11, [rsp + 0x40]  ; 0x1400046fa
    mov qword ptr [rsp + 0x30], r15  ; 0x1400046ff
    mov rbx, qword ptr [r11 + 0x30]  ; 0x140004704
    cmp r8d, r12d  ; 0x140004708
    mov rbp, qword ptr [r11 + 0x38]  ; 0x14000470b
    cmovne eax, r8d  ; 0x14000470f
    mov dword ptr [rsp + 0x28], eax  ; 0x140004713
    lea eax, [r13 + 1]  ; 0x140004717
    movups xmm0, xmmword ptr [rsp + 0x20]  ; 0x14000471b
    cmovne r10d, eax  ; 0x140004720
    mov rax, rsi  ; 0x140004724
    mov dword ptr [rsp + 0x38], r10d  ; 0x140004727
    movups xmm1, xmmword ptr [rsp + 0x30]  ; 0x14000472c
    movdqu xmmword ptr [rsi], xmm0  ; 0x140004731
    movdqu xmmword ptr [rsi + 0x10], xmm1  ; 0x140004735
    mov rsi, qword ptr [r11 + 0x40]  ; 0x14000473a
    mov rsp, r11  ; 0x14000473e
    pop r15  ; 0x140004741
    pop r14  ; 0x140004743
    pop r13  ; 0x140004745
    pop r12  ; 0x140004747
    pop rdi  ; 0x140004749
    ret  ; 0x14000474a
    call 0x14000e8f0  ; 0x14000474b
    int3   ; 0x140004750
    int3   ; 0x140004751
    int3   ; 0x140004752
    int3   ; 0x140004753
    mov rax, rsp  ; 0x140004754
    mov qword ptr [rax + 8], rbx  ; 0x140004757
; Function: func_14000475b
func_14000475b:
    mov qword ptr [rax + 0x10], rbp  ; 0x14000475b
    mov qword ptr [rax + 0x18], rsi  ; 0x14000475f
    mov qword ptr [rax + 0x20], rdi  ; 0x140004763
    push r14  ; 0x140004767
    sub rsp, 0x60  ; 0x140004769
    mov qword ptr [rsp + 0x20], rdx  ; 0x14000476d
    mov rdi, rdx  ; 0x140004772
    movaps xmmword ptr [rax - 0x18], xmm6  ; 0x140004775
    mov rbp, rcx  ; 0x140004779
    mov qword ptr [rsp + 0x30], rdx  ; 0x14000477c
    xor ebx, ebx  ; 0x140004781
    mov dword ptr [rsp + 0x28], ebx  ; 0x140004783
    lea rdx, [rax - 0x28]  ; 0x140004787
    movaps xmm6, xmmword ptr [rsp + 0x20]  ; 0x14000478b
    mov rcx, rdi  ; 0x140004790
    movdqa xmmword ptr [rax - 0x28], xmm6  ; 0x140004793
    mov r14d, r8d  ; 0x140004798
    xor esi, esi  ; 0x14000479b
    call 0x140004ae4  ; 0x14000479d
    mov r9d, dword ptr [rdi]  ; 0x1400047a2
    xor edx, edx  ; 0x1400047a5
    test r9d, r9d  ; 0x1400047a7
    je 0x140004872  ; 0x1400047aa
    mov r8, qword ptr [rdi + 8]  ; 0x1400047b0
    lea r10, [rip - 0x47bb]  ; 0x1400047b4
    mov rax, qword ptr [rdi + 0x18]  ; 0x1400047bb
    mov ecx, ebx  ; 0x1400047bf
    cmp r14d, eax  ; 0x1400047c1
    jl 0x1400047e1  ; 0x1400047c4
    shr rax, 0x20  ; 0x1400047c6
    cmp r14d, eax  ; 0x1400047ca
    jg 0x1400047e1  ; 0x1400047cd
    test ecx, ecx  ; 0x1400047cf
    mov ebx, edx  ; 0x1400047d1
    mov esi, edx  ; 0x1400047d3
    cmove ebx, ecx  ; 0x1400047d5
    mov dword ptr [rsp + 0x28], ebx  ; 0x1400047d8
    movaps xmm6, xmmword ptr [rsp + 0x20]  ; 0x1400047dc
    movzx ecx, byte ptr [r8]  ; 0x1400047e1
    inc edx  ; 0x1400047e5
    and ecx, 0xf  ; 0x1400047e7
    movsx rax, byte ptr [rcx + r10 + 0x1d450]  ; 0x1400047ea
    mov cl, byte ptr [rcx + r10 + 0x1d460]  ; 0x1400047f3
    sub r8, rax  ; 0x1400047fb
    mov eax, dword ptr [r8 - 4]  ; 0x1400047fe
    shr eax, cl  ; 0x140004802
    mov qword ptr [rdi + 8], r8  ; 0x140004804
    mov dword ptr [rdi + 0x18], eax  ; 0x140004808
    movzx ecx, byte ptr [r8]  ; 0x14000480b
    and ecx, 0xf  ; 0x14000480f
    movsx rax, byte ptr [rcx + r10 + 0x1d450]  ; 0x140004812
    mov cl, byte ptr [rcx + r10 + 0x1d460]  ; 0x14000481b
    sub r8, rax  ; 0x140004823
    mov eax, dword ptr [r8 - 4]  ; 0x140004826
    shr eax, cl  ; 0x14000482a
    mov qword ptr [rdi + 8], r8  ; 0x14000482c
    mov dword ptr [rdi + 0x1c], eax  ; 0x140004830
    movzx ecx, byte ptr [r8]  ; 0x140004833
    and ecx, 0xf  ; 0x140004837
    movsx rax, byte ptr [rcx + r10 + 0x1d450]  ; 0x14000483a
    mov cl, byte ptr [rcx + r10 + 0x1d460]  ; 0x140004843
    sub r8, rax  ; 0x14000484b
    mov eax, dword ptr [r8 - 4]  ; 0x14000484e
    shr eax, cl  ; 0x140004852
    mov qword ptr [rdi + 8], r8  ; 0x140004854
    mov dword ptr [rdi + 0x20], eax  ; 0x140004858
    mov eax, dword ptr [r8]  ; 0x14000485b
    add r8, 4  ; 0x14000485e
    mov qword ptr [rdi + 8], r8  ; 0x140004862
    mov dword ptr [rdi + 0x24], eax  ; 0x140004866
    cmp edx, r9d  ; 0x140004869
    jne 0x1400047bb  ; 0x14000486c
    inc esi  ; 0x140004872
    movdqa xmmword ptr [rsp + 0x40], xmm6  ; 0x140004874
    lea rdx, [rsp + 0x40]  ; 0x14000487a
    mov dword ptr [rsp + 0x38], esi  ; 0x14000487f
    mov rcx, rdi  ; 0x140004883
    call 0x140004ae4  ; 0x140004886
    movups xmm0, xmmword ptr [rsp + 0x30]  ; 0x14000488b
    lea r11, [rsp + 0x60]  ; 0x140004890
    mov rax, rbp  ; 0x140004895
    mov rbx, qword ptr [r11 + 0x10]  ; 0x140004898
    mov rsi, qword ptr [r11 + 0x20]  ; 0x14000489c
    mov rdi, qword ptr [r11 + 0x28]  ; 0x1400048a0
    movdqu xmmword ptr [rbp], xmm6  ; 0x1400048a4
    movaps xmm6, xmmword ptr [rsp + 0x50]  ; 0x1400048a9
    movdqu xmmword ptr [rbp + 0x10], xmm0  ; 0x1400048ae
    mov rbp, qword ptr [r11 + 0x18]  ; 0x1400048b3
    mov rsp, r11  ; 0x1400048b7
    pop r14  ; 0x1400048ba
    ret  ; 0x1400048bc
    int3   ; 0x1400048bd
    int3   ; 0x1400048be
    int3   ; 0x1400048bf
; Function: func_1400048c0
func_1400048c0:
    push rbp  ; 0x1400048c0
    lea rbp, [rsp - 0x1f]  ; 0x1400048c2
    sub rsp, 0xe0  ; 0x1400048c7
    mov rax, qword ptr [rip + 0x2472b]  ; 0x1400048ce
    xor rax, rsp  ; 0x1400048d5
    mov qword ptr [rbp + 0xf], rax  ; 0x1400048d8
    mov r10, qword ptr [rbp + 0x77]  ; 0x1400048dc
    lea rax, [rip + 0x18c29]  ; 0x1400048e0
    movups xmm0, xmmword ptr [rax]  ; 0x1400048e7
    mov r11, rcx  ; 0x1400048ea
    lea rcx, [rsp + 0x30]  ; 0x1400048ed
    movups xmm1, xmmword ptr [rax + 0x10]  ; 0x1400048f2
    movups xmmword ptr [rcx], xmm0  ; 0x1400048f6
    movups xmm0, xmmword ptr [rax + 0x20]  ; 0x1400048f9
    movups xmmword ptr [rcx + 0x10], xmm1  ; 0x1400048fd
    movups xmm1, xmmword ptr [rax + 0x30]  ; 0x140004901
    movups xmmword ptr [rcx + 0x20], xmm0  ; 0x140004905
    movups xmm0, xmmword ptr [rax + 0x40]  ; 0x140004909
    movups xmmword ptr [rcx + 0x30], xmm1  ; 0x14000490d
    movups xmm1, xmmword ptr [rax + 0x50]  ; 0x140004911
    movups xmmword ptr [rcx + 0x40], xmm0  ; 0x140004915
    movups xmm0, xmmword ptr [rax + 0x60]  ; 0x140004919
    movups xmmword ptr [rcx + 0x50], xmm1  ; 0x14000491d
    movups xmm1, xmmword ptr [rax + 0x80]  ; 0x140004921
    movups xmmword ptr [rcx + 0x60], xmm0  ; 0x140004928
    movups xmm0, xmmword ptr [rax + 0x70]  ; 0x14000492c
    mov rax, qword ptr [rax + 0x90]  ; 0x140004930
    movups xmmword ptr [rcx + 0x70], xmm0  ; 0x140004937
    movups xmmword ptr [rcx + 0x80], xmm1  ; 0x14000493b
    mov qword ptr [rcx + 0x90], rax  ; 0x140004942
    lea rax, [rip + 0x2cbc]  ; 0x140004949
    mov rcx, qword ptr [r11]  ; 0x140004950
    mov qword ptr [rbp - 0x71], rax  ; 0x140004953
    mov rax, qword ptr [rbp + 0x4f]  ; 0x140004957
    mov qword ptr [rbp - 0x61], rax  ; 0x14000495b
    movsxd rax, dword ptr [rbp + 0x5f]  ; 0x14000495f
    mov qword ptr [rbp - 0x59], rax  ; 0x140004963
    mov rax, qword ptr [rbp + 0x57]  ; 0x140004967
    mov qword ptr [rbp - 0x49], rax  ; 0x14000496b
    movzx eax, byte ptr [rbp + 0x7f]  ; 0x14000496f
    mov qword ptr [rbp - 0x39], rax  ; 0x140004973
    mov rax, qword ptr [r10 + 0x40]  ; 0x140004977
    mov qword ptr [rsp + 0x28], rax  ; 0x14000497b
    mov rax, qword ptr [r10 + 0x28]  ; 0x140004980
    mov qword ptr [rbp - 0x69], r9  ; 0x140004984
    xor r9d, r9d  ; 0x140004988
    mov qword ptr [rbp - 0x51], r8  ; 0x14000498b
    lea r8, [rsp + 0x30]  ; 0x14000498f
    mov qword ptr [rbp - 0x41], rdx  ; 0x140004994
    mov rdx, qword ptr [r10]  ; 0x140004998
    mov qword ptr [rsp + 0x20], rax  ; 0x14000499b
    mov qword ptr [rbp - 0x31], 0x19930520  ; 0x1400049a0
    call qword ptr [rip + 0x186f2]  ; 0x1400049a8
    mov rcx, qword ptr [rbp + 0xf]  ; 0x1400049ae
    xor rcx, rsp  ; 0x1400049b2
    call 0x1400033b0  ; 0x1400049b5
    add rsp, 0xe0  ; 0x1400049ba
    pop rbp  ; 0x1400049c1
    ret  ; 0x1400049c2
    int3   ; 0x1400049c3
; Function: func_1400049c4
func_1400049c4:
    push rbp  ; 0x1400049c4
    lea rbp, [rsp - 0x1f]  ; 0x1400049c6
    sub rsp, 0xe0  ; 0x1400049cb
    mov rax, qword ptr [rip + 0x24627]  ; 0x1400049d2
    xor rax, rsp  ; 0x1400049d9
    mov qword ptr [rbp + 0xf], rax  ; 0x1400049dc
    mov r10, qword ptr [rbp + 0x77]  ; 0x1400049e0
    lea rax, [rip + 0x18a85]  ; 0x1400049e4
    movups xmm0, xmmword ptr [rax]  ; 0x1400049eb
    mov r11, rcx  ; 0x1400049ee
    lea rcx, [rsp + 0x30]  ; 0x1400049f1
    movups xmm1, xmmword ptr [rax + 0x10]  ; 0x1400049f6
    movups xmmword ptr [rcx], xmm0  ; 0x1400049fa
    movups xmm0, xmmword ptr [rax + 0x20]  ; 0x1400049fd
    movups xmmword ptr [rcx + 0x10], xmm1  ; 0x140004a01
    movups xmm1, xmmword ptr [rax + 0x30]  ; 0x140004a05
    movups xmmword ptr [rcx + 0x20], xmm0  ; 0x140004a09
    movups xmm0, xmmword ptr [rax + 0x40]  ; 0x140004a0d
    movups xmmword ptr [rcx + 0x30], xmm1  ; 0x140004a11
    movups xmm1, xmmword ptr [rax + 0x50]  ; 0x140004a15
    movups xmmword ptr [rcx + 0x40], xmm0  ; 0x140004a19
    movups xmm0, xmmword ptr [rax + 0x60]  ; 0x140004a1d
    movups xmmword ptr [rcx + 0x50], xmm1  ; 0x140004a21
    movups xmm1, xmmword ptr [rax + 0x80]  ; 0x140004a25
    movups xmmword ptr [rcx + 0x60], xmm0  ; 0x140004a2c
    movups xmm0, xmmword ptr [rax + 0x70]  ; 0x140004a30
    mov rax, qword ptr [rax + 0x90]  ; 0x140004a34
    movups xmmword ptr [rcx + 0x70], xmm0  ; 0x140004a3b
    movups xmmword ptr [rcx + 0x80], xmm1  ; 0x140004a3f
    mov qword ptr [rcx + 0x90], rax  ; 0x140004a46
    lea rax, [rip + 0x2da4]  ; 0x140004a4d
    mov qword ptr [rbp - 0x71], rax  ; 0x140004a54
    mov rax, qword ptr [rbp + 0x4f]  ; 0x140004a58
    mov qword ptr [rbp - 0x61], rax  ; 0x140004a5c
    movsxd rax, dword ptr [rbp + 0x5f]  ; 0x140004a60
    mov qword ptr [rbp - 0x51], r8  ; 0x140004a64
    mov r8, qword ptr [rbp + 0x6f]  ; 0x140004a68
    mov qword ptr [rbp - 0x59], rax  ; 0x140004a6c
    movzx eax, byte ptr [rbp + 0x7f]  ; 0x140004a70
    mov qword ptr [rbp - 0x39], rax  ; 0x140004a74
    mov rcx, qword ptr [r8 + 0x18]  ; 0x140004a78
    mov r8, qword ptr [r8 + 0x20]  ; 0x140004a7c
    add rcx, qword ptr [r10 + 8]  ; 0x140004a80
    add r8, qword ptr [r10 + 8]  ; 0x140004a84
    movsxd rax, dword ptr [rbp + 0x67]  ; 0x140004a88
    mov qword ptr [rbp - 0x19], rax  ; 0x140004a8c
    mov rax, qword ptr [r10 + 0x40]  ; 0x140004a90
    mov qword ptr [rsp + 0x28], rax  ; 0x140004a94
    mov rax, qword ptr [r10 + 0x28]  ; 0x140004a99
    mov qword ptr [rbp - 0x69], r9  ; 0x140004a9d
    xor r9d, r9d  ; 0x140004aa1
    mov qword ptr [rbp - 0x49], rcx  ; 0x140004aa4
    mov rcx, qword ptr [r11]  ; 0x140004aa8
    mov qword ptr [rbp - 0x41], rdx  ; 0x140004aab
    mov rdx, qword ptr [r10]  ; 0x140004aaf
    mov qword ptr [rbp - 0x29], r8  ; 0x140004ab2
    lea r8, [rsp + 0x30]  ; 0x140004ab6
    mov qword ptr [rsp + 0x20], rax  ; 0x140004abb
    mov qword ptr [rbp - 0x31], 0x19930520  ; 0x140004ac0
    call qword ptr [rip + 0x185d2]  ; 0x140004ac8
    mov rcx, qword ptr [rbp + 0xf]  ; 0x140004ace
    xor rcx, rsp  ; 0x140004ad2
    call 0x1400033b0  ; 0x140004ad5
    add rsp, 0xe0  ; 0x140004ada
    pop rbp  ; 0x140004ae1
    ret  ; 0x140004ae2
    int3   ; 0x140004ae3
    mov r8, qword ptr [rcx + 0x10]  ; 0x140004ae4
    lea r11, [rip - 0x4aef]  ; 0x140004ae8
    mov qword ptr [rcx + 8], r8  ; 0x140004aef
    mov r9, rcx  ; 0x140004af3
    movzx ecx, byte ptr [r8]  ; 0x140004af6
    and ecx, 0xf  ; 0x140004afa
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140004afd
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140004b06
    sub r8, rax  ; 0x140004b0e
    mov eax, dword ptr [r8 - 4]  ; 0x140004b11
    shr eax, cl  ; 0x140004b15
    mov qword ptr [r9 + 8], r8  ; 0x140004b17
    mov dword ptr [r9 + 0x18], eax  ; 0x140004b1b
    movzx ecx, byte ptr [r8]  ; 0x140004b1f
    and ecx, 0xf  ; 0x140004b23
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140004b26
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140004b2f
    sub r8, rax  ; 0x140004b37
    mov eax, dword ptr [r8 - 4]  ; 0x140004b3a
    mov qword ptr [r9 + 8], r8  ; 0x140004b3e
    shr eax, cl  ; 0x140004b42
    mov dword ptr [r9 + 0x1c], eax  ; 0x140004b44
    movzx ecx, byte ptr [r8]  ; 0x140004b48
    and ecx, 0xf  ; 0x140004b4c
    movsx rax, byte ptr [r11 + rcx + 0x1d450]  ; 0x140004b4f
    mov cl, byte ptr [r11 + rcx + 0x1d460]  ; 0x140004b58
    sub r8, rax  ; 0x140004b60
    mov eax, dword ptr [r8 - 4]  ; 0x140004b63
    mov qword ptr [r9 + 8], r8  ; 0x140004b67
    shr eax, cl  ; 0x140004b6b
    mov dword ptr [r9 + 0x20], eax  ; 0x140004b6d
    mov eax, dword ptr [r8]  ; 0x140004b71
    add r8, 4  ; 0x140004b74
    cmp dword ptr [rdx + 8], 0  ; 0x140004b78
    mov qword ptr [r9 + 8], r8  ; 0x140004b7c
    mov dword ptr [r9 + 0x24], eax  ; 0x140004b80
    je 0x140004ca5  ; 0x140004b84
    mov r10d, dword ptr [rdx + 8]  ; 0x140004b8a
    movzx ecx, byte ptr [r8]  ; 0x140004b8e
    and ecx, 0xf  ; 0x140004b92
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140004b95
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140004b9e
    sub r8, rax  ; 0x140004ba6
    mov eax, dword ptr [r8 - 4]  ; 0x140004ba9
    mov qword ptr [r9 + 8], r8  ; 0x140004bad
    shr eax, cl  ; 0x140004bb1
    mov dword ptr [r9 + 0x18], eax  ; 0x140004bb3
    movzx ecx, byte ptr [r8]  ; 0x140004bb7
    and ecx, 0xf  ; 0x140004bbb
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140004bbe
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140004bc7
    sub r8, rax  ; 0x140004bcf
    mov eax, dword ptr [r8 - 4]  ; 0x140004bd2
    mov qword ptr [r9 + 8], r8  ; 0x140004bd6
    shr eax, cl  ; 0x140004bda
    mov dword ptr [r9 + 0x1c], eax  ; 0x140004bdc
    movzx ecx, byte ptr [r8]  ; 0x140004be0
    and ecx, 0xf  ; 0x140004be4
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140004be7
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140004bf0
    sub r8, rax  ; 0x140004bf8
    mov eax, dword ptr [r8 - 4]  ; 0x140004bfb
    lea rdx, [r8 + 4]  ; 0x140004bff
    mov qword ptr [r9 + 8], r8  ; 0x140004c03
    shr eax, cl  ; 0x140004c07
    mov dword ptr [r9 + 0x20], eax  ; 0x140004c09
    mov eax, dword ptr [r8]  ; 0x140004c0d
    mov qword ptr [r9 + 8], rdx  ; 0x140004c10
    mov dword ptr [r9 + 0x24], eax  ; 0x140004c14
    movzx ecx, byte ptr [rdx]  ; 0x140004c18
    and ecx, 0xf  ; 0x140004c1b
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140004c1e
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140004c27
    sub rdx, rax  ; 0x140004c2f
    mov eax, dword ptr [rdx - 4]  ; 0x140004c32
    shr eax, cl  ; 0x140004c35
    mov qword ptr [r9 + 8], rdx  ; 0x140004c37
    mov dword ptr [r9 + 0x18], eax  ; 0x140004c3b
    movzx ecx, byte ptr [rdx]  ; 0x140004c3f
    and ecx, 0xf  ; 0x140004c42
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140004c45
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140004c4e
    sub rdx, rax  ; 0x140004c56
    mov eax, dword ptr [rdx - 4]  ; 0x140004c59
    shr eax, cl  ; 0x140004c5c
    mov qword ptr [r9 + 8], rdx  ; 0x140004c5e
    mov dword ptr [r9 + 0x1c], eax  ; 0x140004c62
    movzx ecx, byte ptr [rdx]  ; 0x140004c66
    and ecx, 0xf  ; 0x140004c69
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140004c6c
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140004c75
    sub rdx, rax  ; 0x140004c7d
    mov eax, dword ptr [rdx - 4]  ; 0x140004c80
    lea r8, [rdx + 4]  ; 0x140004c83
    shr eax, cl  ; 0x140004c87
    mov qword ptr [r9 + 8], rdx  ; 0x140004c89
    mov dword ptr [r9 + 0x20], eax  ; 0x140004c8d
    mov eax, dword ptr [rdx]  ; 0x140004c91
    mov qword ptr [r9 + 8], r8  ; 0x140004c93
    mov dword ptr [r9 + 0x24], eax  ; 0x140004c97
    sub r10, 1  ; 0x140004c9b
    jne 0x140004b8e  ; 0x140004c9f
    ret  ; 0x140004ca5
    int3   ; 0x140004ca6
    int3   ; 0x140004ca7
    push rbx  ; 0x140004ca8
    sub rsp, 0x20  ; 0x140004caa
    mov rbx, rcx  ; 0x140004cae
    mov qword ptr [rcx], rdx  ; 0x140004cb1
    call 0x1400052e8  ; 0x140004cb4
    cmp rbx, qword ptr [rax + 0x58]  ; 0x140004cb9
    jae 0x140004cca  ; 0x140004cbd
    call 0x1400052e8  ; 0x140004cbf
    mov rcx, qword ptr [rax + 0x58]  ; 0x140004cc4
    jmp 0x140004ccc  ; 0x140004cc8
    xor ecx, ecx  ; 0x140004cca
    mov qword ptr [rbx + 8], rcx  ; 0x140004ccc
    call 0x1400052e8  ; 0x140004cd0
    mov qword ptr [rax + 0x58], rbx  ; 0x140004cd5
    mov rax, rbx  ; 0x140004cd9
    add rsp, 0x20  ; 0x140004cdc
    pop rbx  ; 0x140004ce0
    ret  ; 0x140004ce1
    int3   ; 0x140004ce2
    int3   ; 0x140004ce3
    mov qword ptr [rsp + 8], rbx  ; 0x140004ce4
    push rdi  ; 0x140004ce9
    sub rsp, 0x20  ; 0x140004cea
    mov rdi, rcx  ; 0x140004cee
    call 0x1400052e8  ; 0x140004cf1
    cmp rdi, qword ptr [rax + 0x58]  ; 0x140004cf6
    jne 0x140004d31  ; 0x140004cfa
    call 0x1400052e8  ; 0x140004cfc
    mov rdx, qword ptr [rax + 0x58]  ; 0x140004d01
    test rdx, rdx  ; 0x140004d05
    je 0x140004d31  ; 0x140004d08
    mov rbx, qword ptr [rdx + 8]  ; 0x140004d0a
    cmp rdi, rdx  ; 0x140004d0e
    je 0x140004d1d  ; 0x140004d11
    mov rdx, rbx  ; 0x140004d13
    test rbx, rbx  ; 0x140004d16
    je 0x140004d31  ; 0x140004d19
    jmp 0x140004d0a  ; 0x140004d1b
    call 0x1400052e8  ; 0x140004d1d
    mov qword ptr [rax + 0x58], rbx  ; 0x140004d22
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140004d26
    add rsp, 0x20  ; 0x140004d2b
    pop rdi  ; 0x140004d2f
    ret  ; 0x140004d30
    call 0x14000e8f0  ; 0x140004d31
    int3   ; 0x140004d36
    int3   ; 0x140004d37
    sub rsp, 0x28  ; 0x140004d38
    call 0x1400052e8  ; 0x140004d3c
    mov rax, qword ptr [rax + 0x60]  ; 0x140004d41
    add rsp, 0x28  ; 0x140004d45
    ret  ; 0x140004d49
    int3   ; 0x140004d4a
    int3   ; 0x140004d4b
    sub rsp, 0x28  ; 0x140004d4c
    call 0x1400052e8  ; 0x140004d50
    mov rax, qword ptr [rax + 0x68]  ; 0x140004d55
    add rsp, 0x28  ; 0x140004d59
    ret  ; 0x140004d5d
    int3   ; 0x140004d5e
    int3   ; 0x140004d5f
    push rbx  ; 0x140004d60
    sub rsp, 0x20  ; 0x140004d62
    mov rbx, rcx  ; 0x140004d66
    call 0x1400052e8  ; 0x140004d69
    mov qword ptr [rax + 0x60], rbx  ; 0x140004d6e
    add rsp, 0x20  ; 0x140004d72
    pop rbx  ; 0x140004d76
    ret  ; 0x140004d77
    push rbx  ; 0x140004d78
    sub rsp, 0x20  ; 0x140004d7a
    mov rbx, rcx  ; 0x140004d7e
    call 0x1400052e8  ; 0x140004d81
    mov qword ptr [rax + 0x68], rbx  ; 0x140004d86
    add rsp, 0x20  ; 0x140004d8a
    pop rbx  ; 0x140004d8e
    ret  ; 0x140004d8f
    mov rax, rsp  ; 0x140004d90
    mov qword ptr [rax + 0x10], rbx  ; 0x140004d93
; Function: func_140004d97
func_140004d97:
    mov qword ptr [rax + 0x18], rbp  ; 0x140004d97
    mov qword ptr [rax + 0x20], rsi  ; 0x140004d9b
    push rdi  ; 0x140004d9f
    sub rsp, 0x40  ; 0x140004da0
    mov rbx, qword ptr [r9 + 8]  ; 0x140004da4
    mov rdi, r9  ; 0x140004da8
    mov rsi, r8  ; 0x140004dab
    mov qword ptr [rax + 8], rdx  ; 0x140004dae
    mov rbp, rcx  ; 0x140004db2
    call 0x1400052e8  ; 0x140004db5
    mov qword ptr [rax + 0x60], rbx  ; 0x140004dba
    mov rbx, qword ptr [rbp + 0x38]  ; 0x140004dbe
    call 0x1400052e8  ; 0x140004dc2
    mov qword ptr [rax + 0x68], rbx  ; 0x140004dc7
    call 0x1400052e8  ; 0x140004dcb
    mov rcx, qword ptr [rdi + 0x38]  ; 0x140004dd0
    mov r9, rdi  ; 0x140004dd4
    mov r8, rsi  ; 0x140004dd7
    mov edx, dword ptr [rcx]  ; 0x140004dda
    mov rcx, rbp  ; 0x140004ddc
    add rdx, qword ptr [rax + 0x60]  ; 0x140004ddf
    xor eax, eax  ; 0x140004de3
    mov byte ptr [rsp + 0x38], al  ; 0x140004de5
    mov qword ptr [rsp + 0x30], rax  ; 0x140004de9
    mov dword ptr [rsp + 0x28], eax  ; 0x140004dee
    mov qword ptr [rsp + 0x20], rdx  ; 0x140004df2
    lea rdx, [rsp + 0x50]  ; 0x140004df7
    call 0x1400073f4  ; 0x140004dfc
    mov rbx, qword ptr [rsp + 0x58]  ; 0x140004e01
    mov rbp, qword ptr [rsp + 0x60]  ; 0x140004e06
    mov rsi, qword ptr [rsp + 0x68]  ; 0x140004e0b
    add rsp, 0x40  ; 0x140004e10
    pop rdi  ; 0x140004e14
    ret  ; 0x140004e15
    int3   ; 0x140004e16
    int3   ; 0x140004e17
    mov rax, rsp  ; 0x140004e18
    mov qword ptr [rax + 0x10], rbx  ; 0x140004e1b
; Function: func_140004e1f
func_140004e1f:
    mov qword ptr [rax + 0x18], rbp  ; 0x140004e1f
    mov qword ptr [rax + 0x20], rsi  ; 0x140004e23
    push rdi  ; 0x140004e27
    sub rsp, 0x60  ; 0x140004e28
    and dword ptr [rax - 0x24], 0  ; 0x140004e2c
    mov rdi, r9  ; 0x140004e30
    and dword ptr [rax - 0x20], 0  ; 0x140004e33
    mov rsi, r8  ; 0x140004e37
    and dword ptr [rax - 0x1c], 0  ; 0x140004e3a
    mov rbp, rcx  ; 0x140004e3e
    and dword ptr [rax - 0x18], 0  ; 0x140004e41
    and dword ptr [rax - 0x14], 0  ; 0x140004e45
    mov rbx, qword ptr [r9 + 8]  ; 0x140004e49
    mov byte ptr [rax - 0x28], 0  ; 0x140004e4d
    mov qword ptr [rax + 8], rdx  ; 0x140004e51
    call 0x1400052e8  ; 0x140004e55
    mov qword ptr [rax + 0x60], rbx  ; 0x140004e5a
    mov rbx, qword ptr [rbp + 0x38]  ; 0x140004e5e
    call 0x1400052e8  ; 0x140004e62
    mov qword ptr [rax + 0x68], rbx  ; 0x140004e67
    call 0x1400052e8  ; 0x140004e6b
    mov rcx, qword ptr [rdi + 0x38]  ; 0x140004e70
    lea rdx, [rsp + 0x40]  ; 0x140004e74
    mov r9, qword ptr [rdi + 0x10]  ; 0x140004e79
    mov r8, qword ptr [rdi + 8]  ; 0x140004e7d
    mov byte ptr [rsp + 0x20], 0  ; 0x140004e81
    mov ecx, dword ptr [rcx]  ; 0x140004e86
    add rcx, qword ptr [rax + 0x60]  ; 0x140004e88
    mov r9d, dword ptr [r9]  ; 0x140004e8c
    call 0x14000432c  ; 0x140004e8f
    mov byte ptr [rsp + 0x38], 0  ; 0x140004e94
    lea rax, [rsp + 0x40]  ; 0x140004e99
    and qword ptr [rsp + 0x30], 0  ; 0x140004e9e
    lea rdx, [rsp + 0x70]  ; 0x140004ea4
    and dword ptr [rsp + 0x28], 0  ; 0x140004ea9
    mov r9, rdi  ; 0x140004eae
    mov r8, rsi  ; 0x140004eb1
    mov qword ptr [rsp + 0x20], rax  ; 0x140004eb4
    mov rcx, rbp  ; 0x140004eb9
    call 0x1400073fc  ; 0x140004ebc
    lea r11, [rsp + 0x60]  ; 0x140004ec1
    mov rbx, qword ptr [r11 + 0x18]  ; 0x140004ec6
    mov rbp, qword ptr [r11 + 0x20]  ; 0x140004eca
    mov rsi, qword ptr [r11 + 0x28]  ; 0x140004ece
    mov rsp, r11  ; 0x140004ed2
    pop rdi  ; 0x140004ed5
    ret  ; 0x140004ed6
    int3   ; 0x140004ed7
    int3   ; 0x140004ed8
    int3   ; 0x140004ed9
    int3   ; 0x140004eda
    int3   ; 0x140004edb
    int3   ; 0x140004edc
    int3   ; 0x140004edd
    int3   ; 0x140004ede
    int3   ; 0x140004edf
    mov qword ptr [rsp + 8], rbx  ; 0x140004ee0
; Function: func_140004ee5
func_140004ee5:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140004ee5
    mov qword ptr [rsp + 0x18], rsi  ; 0x140004eea
    push rdi  ; 0x140004eef
    push r12  ; 0x140004ef0
    push r13  ; 0x140004ef2
    push r14  ; 0x140004ef4
    push r15  ; 0x140004ef6
    sub rsp, 0x40  ; 0x140004ef8
    mov rsi, rcx  ; 0x140004efc
    mov r15, r9  ; 0x140004eff
    mov rcx, r8  ; 0x140004f02
    mov rbp, r8  ; 0x140004f05
    mov r13, rdx  ; 0x140004f08
    call 0x1400085d4  ; 0x140004f0b
    mov r12, qword ptr [r15 + 8]  ; 0x140004f10
    mov r14, qword ptr [r15]  ; 0x140004f14
    mov rbx, qword ptr [r15 + 0x38]  ; 0x140004f17
    sub r14, r12  ; 0x140004f1b
    test byte ptr [rsi + 4], 0x66  ; 0x140004f1e
    mov edi, dword ptr [r15 + 0x48]  ; 0x140004f22
    jne 0x14000501d  ; 0x140004f26
    mov qword ptr [rsp + 0x30], rsi  ; 0x140004f2c
    mov qword ptr [rsp + 0x38], rbp  ; 0x140004f31
    jmp 0x140005009  ; 0x140004f36
    mov ecx, edi  ; 0x140004f3b
    add rcx, rcx  ; 0x140004f3d
    mov ebp, edi  ; 0x140004f40
    mov eax, dword ptr [rbx + rcx*8 + 4]  ; 0x140004f42
    cmp r14, rax  ; 0x140004f46
    jb 0x140005007  ; 0x140004f49
    mov eax, dword ptr [rbx + rcx*8 + 8]  ; 0x140004f4f
    cmp r14, rax  ; 0x140004f53
    jae 0x140005007  ; 0x140004f56
    cmp dword ptr [rbx + rcx*8 + 0x10], 0  ; 0x140004f5c
    je 0x140005007  ; 0x140004f61
    cmp dword ptr [rbx + rcx*8 + 0xc], 1  ; 0x140004f67
    je 0x140004f89  ; 0x140004f6c
    mov eax, dword ptr [rbx + rcx*8 + 0xc]  ; 0x140004f6e
    mov rdx, r13  ; 0x140004f72
    add rax, r12  ; 0x140004f75
    lea rcx, [rsp + 0x30]  ; 0x140004f78
    call rax  ; 0x140004f7d
    test eax, eax  ; 0x140004f7f
    js 0x140005016  ; 0x140004f81
    jle 0x140005007  ; 0x140004f87
    cmp dword ptr [rsi], 0xe06d7363  ; 0x140004f89
    jne 0x140004fb9  ; 0x140004f8f
    cmp qword ptr [rip + 0x1860f], 0  ; 0x140004f91
    je 0x140004fb9  ; 0x140004f99
    lea rcx, [rip + 0x18606]  ; 0x140004f9b
    call 0x14001ab20  ; 0x140004fa2
    test eax, eax  ; 0x140004fa7
    je 0x140004fb9  ; 0x140004fa9
    mov edx, 1  ; 0x140004fab
    mov rcx, rsi  ; 0x140004fb0
    call qword ptr [rip + 0x185ef]  ; 0x140004fb3
    lea rax, [rbp + 1]  ; 0x140004fb9
    mov r8d, 1  ; 0x140004fbd
    add rax, rax  ; 0x140004fc3
    mov rdx, r13  ; 0x140004fc6
    mov ecx, dword ptr [rbx + rax*8]  ; 0x140004fc9
    add rcx, r12  ; 0x140004fcc
    call 0x1400085a0  ; 0x140004fcf
    mov r9d, dword ptr [rsi]  ; 0x140004fd4
    lea rax, [rbp + 1]  ; 0x140004fd7
    add rax, rax  ; 0x140004fdb
    mov r8, rsi  ; 0x140004fde
    mov rcx, r13  ; 0x140004fe1
    mov edx, dword ptr [rbx + rax*8]  ; 0x140004fe4
    mov rax, qword ptr [r15 + 0x40]  ; 0x140004fe7
    add rdx, r12  ; 0x140004feb
    mov qword ptr [rsp + 0x28], rax  ; 0x140004fee
    mov rax, qword ptr [r15 + 0x28]  ; 0x140004ff3
    mov qword ptr [rsp + 0x20], rax  ; 0x140004ff7
    call qword ptr [rip + 0x1809e]  ; 0x140004ffc
    call 0x1400085d0  ; 0x140005002
    inc edi  ; 0x140005007
    cmp edi, dword ptr [rbx]  ; 0x140005009
    jb 0x140004f3b  ; 0x14000500b
    jmp 0x1400050d4  ; 0x140005011
    xor eax, eax  ; 0x140005016
    jmp 0x1400050d9  ; 0x140005018
    mov rbp, qword ptr [r15 + 0x20]  ; 0x14000501d
    sub rbp, r12  ; 0x140005021
    jmp 0x1400050c8  ; 0x140005024
    mov r9d, edi  ; 0x140005029
    add r9, r9  ; 0x14000502c
    mov eax, dword ptr [rbx + r9*8 + 4]  ; 0x14000502f
    cmp r14, rax  ; 0x140005034
    jb 0x1400050c6  ; 0x140005037
    mov eax, dword ptr [rbx + r9*8 + 8]  ; 0x14000503d
    cmp r14, rax  ; 0x140005042
    jae 0x1400050c6  ; 0x140005045
    test byte ptr [rsi + 4], 0x20  ; 0x140005047
    je 0x14000508c  ; 0x14000504b
    xor edx, edx  ; 0x14000504d
    test r8d, r8d  ; 0x14000504f
    je 0x140005088  ; 0x140005052
    mov ecx, edx  ; 0x140005054
    add rcx, rcx  ; 0x140005056
    mov eax, dword ptr [rbx + rcx*8 + 4]  ; 0x140005059
    cmp rbp, rax  ; 0x14000505d
    jb 0x140005081  ; 0x140005060
    mov eax, dword ptr [rbx + rcx*8 + 8]  ; 0x140005062
    cmp rbp, rax  ; 0x140005066
    jae 0x140005081  ; 0x140005069
    mov eax, dword ptr [rbx + r9*8 + 0x10]  ; 0x14000506b
    cmp dword ptr [rbx + rcx*8 + 0x10], eax  ; 0x140005070
    jne 0x140005081  ; 0x140005074
    mov eax, dword ptr [rbx + r9*8 + 0xc]  ; 0x140005076
    cmp dword ptr [rbx + rcx*8 + 0xc], eax  ; 0x14000507b
    je 0x140005088  ; 0x14000507f
    inc edx  ; 0x140005081
    cmp edx, r8d  ; 0x140005083
    jb 0x140005054  ; 0x140005086
    cmp edx, dword ptr [rbx]  ; 0x140005088
    jne 0x1400050d4  ; 0x14000508a
    mov eax, edi  ; 0x14000508c
    inc rax  ; 0x14000508e
    mov ecx, edi  ; 0x140005091
    add rax, rax  ; 0x140005093
    add rcx, rcx  ; 0x140005096
    cmp dword ptr [rbx + rax*8], 0  ; 0x140005099
    je 0x1400050af  ; 0x14000509d
    mov eax, dword ptr [rbx + rax*8]  ; 0x14000509f
    cmp rbp, rax  ; 0x1400050a2
    jne 0x1400050c6  ; 0x1400050a5
    test byte ptr [rsi + 4], 0x20  ; 0x1400050a7
    jne 0x1400050d4  ; 0x1400050ab
    jmp 0x1400050c6  ; 0x1400050ad
    lea eax, [rdi + 1]  ; 0x1400050af
    mov rdx, r13  ; 0x1400050b2
    mov dword ptr [r15 + 0x48], eax  ; 0x1400050b5
    mov r8d, dword ptr [rbx + rcx*8 + 0xc]  ; 0x1400050b9
    mov cl, 1  ; 0x1400050be
    add r8, r12  ; 0x1400050c0
    call r8  ; 0x1400050c3
    inc edi  ; 0x1400050c6
    mov r8d, dword ptr [rbx]  ; 0x1400050c8
    cmp edi, r8d  ; 0x1400050cb
    jb 0x140005029  ; 0x1400050ce
    mov eax, 1  ; 0x1400050d4
    lea r11, [rsp + 0x40]  ; 0x1400050d9
    mov rbx, qword ptr [r11 + 0x30]  ; 0x1400050de
    mov rbp, qword ptr [r11 + 0x38]  ; 0x1400050e2
    mov rsi, qword ptr [r11 + 0x40]  ; 0x1400050e6
    mov rsp, r11  ; 0x1400050ea
    pop r15  ; 0x1400050ed
    pop r14  ; 0x1400050ef
    pop r13  ; 0x1400050f1
    pop r12  ; 0x1400050f3
    pop rdi  ; 0x1400050f5
    ret  ; 0x1400050f6
    int3   ; 0x1400050f7
    sub rsp, 0x28  ; 0x1400050f8
    call 0x14000860c  ; 0x1400050fc
    test al, al  ; 0x140005101
    jne 0x140005109  ; 0x140005103
    xor al, al  ; 0x140005105
    jmp 0x14000511b  ; 0x140005107
    call 0x1400053c4  ; 0x140005109
    test al, al  ; 0x14000510e
    jne 0x140005119  ; 0x140005110
    call 0x140008654  ; 0x140005112
    jmp 0x140005105  ; 0x140005117
    mov al, 1  ; 0x140005119
    add rsp, 0x28  ; 0x14000511b
    ret  ; 0x14000511f
    sub rsp, 0x28  ; 0x140005120
    test cl, cl  ; 0x140005124
    jne 0x140005132  ; 0x140005126
    call 0x14000540c  ; 0x140005128
    call 0x140008654  ; 0x14000512d
    mov al, 1  ; 0x140005132
    add rsp, 0x28  ; 0x140005134
    ret  ; 0x140005138
    int3   ; 0x140005139
    int3   ; 0x14000513a
    int3   ; 0x14000513b
    cmp rcx, rdx  ; 0x14000513c
    je 0x14000515a  ; 0x14000513f
    add rdx, 9  ; 0x140005141
    lea rax, [rcx + 9]  ; 0x140005145
    sub rdx, rax  ; 0x140005149
    mov cl, byte ptr [rax]  ; 0x14000514c
    cmp cl, byte ptr [rax + rdx]  ; 0x14000514e
    jne 0x14000515d  ; 0x140005151
    inc rax  ; 0x140005153
    test cl, cl  ; 0x140005156
    jne 0x14000514c  ; 0x140005158
    xor eax, eax  ; 0x14000515a
    ret  ; 0x14000515c
    sbb eax, eax  ; 0x14000515d
    or eax, 1  ; 0x14000515f
    ret  ; 0x140005162
    int3   ; 0x140005163
    test rcx, rcx  ; 0x140005164
    je 0x1400051d0  ; 0x140005167
    mov byte ptr [rsp + 0x10], dl  ; 0x140005169
    sub rsp, 0x48  ; 0x14000516d
    cmp dword ptr [rcx], 0xe06d7363  ; 0x140005171
    jne 0x1400051cc  ; 0x140005177
    cmp dword ptr [rcx + 0x18], 4  ; 0x140005179
    jne 0x1400051cc  ; 0x14000517d
    mov eax, dword ptr [rcx + 0x20]  ; 0x14000517f
    sub eax, 0x19930520  ; 0x140005182
    cmp eax, 2  ; 0x140005187
    ja 0x1400051cc  ; 0x14000518a
    mov rax, qword ptr [rcx + 0x30]  ; 0x14000518c
    test rax, rax  ; 0x140005190
    je 0x1400051cc  ; 0x140005193
    movsxd rdx, dword ptr [rax + 4]  ; 0x140005195
    test edx, edx  ; 0x140005199
    je 0x1400051ae  ; 0x14000519b
    add rdx, qword ptr [rcx + 0x38]  ; 0x14000519d
    mov rcx, qword ptr [rcx + 0x28]  ; 0x1400051a1
    call 0x1400051d4  ; 0x1400051a5
    jmp 0x1400051cc  ; 0x1400051aa
    jmp 0x1400051cc  ; 0x1400051ac
    test byte ptr [rax], 0x10  ; 0x1400051ae
    je 0x1400051cc  ; 0x1400051b1
    mov rax, qword ptr [rcx + 0x28]  ; 0x1400051b3
    mov rcx, qword ptr [rax]  ; 0x1400051b7
    test rcx, rcx  ; 0x1400051ba
    je 0x1400051cc  ; 0x1400051bd
    mov rax, qword ptr [rcx]  ; 0x1400051bf
    mov rax, qword ptr [rax + 0x10]  ; 0x1400051c2
    call qword ptr [rip + 0x180a4]  ; 0x1400051c6
    add rsp, 0x48  ; 0x1400051cc
    ret  ; 0x1400051d0
    int3   ; 0x1400051d1
    int3   ; 0x1400051d2
    int3   ; 0x1400051d3
    jmp rdx  ; 0x1400051d4
    int3   ; 0x1400051d7
    push rbx  ; 0x1400051d8
    sub rsp, 0x20  ; 0x1400051da
    mov rbx, rcx  ; 0x1400051de
    call 0x1400052e8  ; 0x1400051e1
    mov rdx, qword ptr [rax + 0x58]  ; 0x1400051e6
    jmp 0x1400051f5  ; 0x1400051ea
    cmp qword ptr [rdx], rbx  ; 0x1400051ec
    je 0x140005203  ; 0x1400051ef
    mov rdx, qword ptr [rdx + 8]  ; 0x1400051f1
    test rdx, rdx  ; 0x1400051f5
    jne 0x1400051ec  ; 0x1400051f8
    lea eax, [rdx + 1]  ; 0x1400051fa
    add rsp, 0x20  ; 0x1400051fd
    pop rbx  ; 0x140005201
    ret  ; 0x140005202
    xor eax, eax  ; 0x140005203
    jmp 0x1400051fd  ; 0x140005205
    int3   ; 0x140005207
    movsxd rax, dword ptr [rdx]  ; 0x140005208
    add rax, rcx  ; 0x14000520b
    cmp dword ptr [rdx + 4], 0  ; 0x14000520e
    jl 0x14000522a  ; 0x140005212
    movsxd r9, dword ptr [rdx + 4]  ; 0x140005214
    movsxd rdx, dword ptr [rdx + 8]  ; 0x140005218
    mov rcx, qword ptr [r9 + rcx]  ; 0x14000521c
    movsxd r8, dword ptr [rdx + rcx]  ; 0x140005220
    add r8, r9  ; 0x140005224
    add rax, r8  ; 0x140005227
    ret  ; 0x14000522a
    int3   ; 0x14000522b
    mov qword ptr [rsp + 8], rbx  ; 0x14000522c
    push rdi  ; 0x140005231
    sub rsp, 0x20  ; 0x140005232
    mov rdi, qword ptr [rcx]  ; 0x140005236
    mov rbx, rcx  ; 0x140005239
    cmp dword ptr [rdi], 0xe0434352  ; 0x14000523c
    je 0x140005256  ; 0x140005242
    cmp dword ptr [rdi], 0xe0434f4d  ; 0x140005244
    je 0x140005256  ; 0x14000524a
    cmp dword ptr [rdi], 0xe06d7363  ; 0x14000524c
    je 0x140005276  ; 0x140005252
    jmp 0x140005269  ; 0x140005254
    call 0x1400052e8  ; 0x140005256
    cmp dword ptr [rax + 0x30], 0  ; 0x14000525b
    jle 0x140005269  ; 0x14000525f
    call 0x1400052e8  ; 0x140005261
    dec dword ptr [rax + 0x30]  ; 0x140005266
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140005269
    xor eax, eax  ; 0x14000526e
    add rsp, 0x20  ; 0x140005270
    pop rdi  ; 0x140005274
    ret  ; 0x140005275
    call 0x1400052e8  ; 0x140005276
    mov qword ptr [rax + 0x20], rdi  ; 0x14000527b
    mov rbx, qword ptr [rbx + 8]  ; 0x14000527f
    call 0x1400052e8  ; 0x140005283
    mov qword ptr [rax + 0x28], rbx  ; 0x140005288
    call 0x14000e864  ; 0x14000528c
    int3   ; 0x140005291
    int3   ; 0x140005292
    int3   ; 0x140005293
    sub rsp, 0x28  ; 0x140005294
    call 0x1400052e8  ; 0x140005298
    add rax, 0x20  ; 0x14000529d
    add rsp, 0x28  ; 0x1400052a1
    ret  ; 0x1400052a5
    int3   ; 0x1400052a6
    int3   ; 0x1400052a7
    sub rsp, 0x28  ; 0x1400052a8
    call 0x1400052e8  ; 0x1400052ac
    add rax, 0x28  ; 0x1400052b1
    add rsp, 0x28  ; 0x1400052b5
    ret  ; 0x1400052b9
    int3   ; 0x1400052ba
    int3   ; 0x1400052bb
    sub rsp, 0x28  ; 0x1400052bc
    call 0x14000e864  ; 0x1400052c0
    int3   ; 0x1400052c5
    int3   ; 0x1400052c6
    int3   ; 0x1400052c7
    sub rsp, 0x28  ; 0x1400052c8
    test rcx, rcx  ; 0x1400052cc
    je 0x1400052e2  ; 0x1400052cf
    lea rax, [rip + 0x24ec8]  ; 0x1400052d1
    cmp rcx, rax  ; 0x1400052d8
    je 0x1400052e2  ; 0x1400052db
    call 0x14000d3d8  ; 0x1400052dd
    add rsp, 0x28  ; 0x1400052e2
    ret  ; 0x1400052e6
    int3   ; 0x1400052e7
    sub rsp, 0x28  ; 0x1400052e8
    call 0x140005304  ; 0x1400052ec
    test rax, rax  ; 0x1400052f1
    je 0x1400052fb  ; 0x1400052f4
    add rsp, 0x28  ; 0x1400052f6
    ret  ; 0x1400052fa
    call 0x14000e8f0  ; 0x1400052fb
    int3   ; 0x140005300
    int3   ; 0x140005301
    int3   ; 0x140005302
    int3   ; 0x140005303
    mov qword ptr [rsp + 8], rbx  ; 0x140005304
    mov qword ptr [rsp + 0x10], rsi  ; 0x140005309
    push rdi  ; 0x14000530e
    sub rsp, 0x20  ; 0x14000530f
    cmp dword ptr [rip + 0x23d56], -1  ; 0x140005313
    jne 0x140005323  ; 0x14000531a
    xor eax, eax  ; 0x14000531c
    jmp 0x1400053b3  ; 0x14000531e
    call qword ptr [rip + 0x17d7f]  ; 0x140005323
    mov ecx, dword ptr [rip + 0x23d41]  ; 0x140005329
    mov edi, eax  ; 0x14000532f
    call 0x140009628  ; 0x140005331
    or rdx, 0xffffffffffffffff  ; 0x140005336
    xor esi, esi  ; 0x14000533a
    cmp rax, rdx  ; 0x14000533c
    je 0x1400053a8  ; 0x14000533f
    test rax, rax  ; 0x140005341
    je 0x14000534b  ; 0x140005344
    mov rsi, rax  ; 0x140005346
    jmp 0x1400053a8  ; 0x140005349
    mov ecx, dword ptr [rip + 0x23d1f]  ; 0x14000534b
    call 0x140009670  ; 0x140005351
    test eax, eax  ; 0x140005356
    je 0x1400053a8  ; 0x140005358
    mov edx, 0x80  ; 0x14000535a
    lea ecx, [rdx - 0x7f]  ; 0x14000535f
    call 0x14000e948  ; 0x140005362
    mov ecx, dword ptr [rip + 0x23d03]  ; 0x140005367
    mov rbx, rax  ; 0x14000536d
    test rax, rax  ; 0x140005370
    je 0x140005399  ; 0x140005373
    mov rdx, rax  ; 0x140005375
    call 0x140009670  ; 0x140005378
    test eax, eax  ; 0x14000537d
    je 0x140005393  ; 0x14000537f
    mov rax, rbx  ; 0x140005381
    mov dword ptr [rbx + 0x78], 0xfffffffe  ; 0x140005384
    mov rbx, rsi  ; 0x14000538b
    mov rsi, rax  ; 0x14000538e
    jmp 0x1400053a0  ; 0x140005391
    mov ecx, dword ptr [rip + 0x23cd7]  ; 0x140005393
    xor edx, edx  ; 0x140005399
    call 0x140009670  ; 0x14000539b
    mov rcx, rbx  ; 0x1400053a0
    call 0x14000d3d8  ; 0x1400053a3
    mov ecx, edi  ; 0x1400053a8
    call qword ptr [rip + 0x17d00]  ; 0x1400053aa
    mov rax, rsi  ; 0x1400053b0
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400053b3
    mov rsi, qword ptr [rsp + 0x38]  ; 0x1400053b8
    add rsp, 0x20  ; 0x1400053bd
    pop rdi  ; 0x1400053c1
    ret  ; 0x1400053c2
    int3   ; 0x1400053c3
    sub rsp, 0x28  ; 0x1400053c4
    lea rcx, [rip - 0x107]  ; 0x1400053c8
    call 0x140009598  ; 0x1400053cf
    mov dword ptr [rip + 0x23c96], eax  ; 0x1400053d4
    cmp eax, -1  ; 0x1400053da
    je 0x140005404  ; 0x1400053dd
    lea rdx, [rip + 0x24dba]  ; 0x1400053df
    mov ecx, eax  ; 0x1400053e6
    call 0x140009670  ; 0x1400053e8
    test eax, eax  ; 0x1400053ed
    je 0x1400053ff  ; 0x1400053ef
    mov dword ptr [rip + 0x24e1d], 0xfffffffe  ; 0x1400053f1
    mov al, 1  ; 0x1400053fb
    jmp 0x140005406  ; 0x1400053fd
    call 0x14000540c  ; 0x1400053ff
    xor al, al  ; 0x140005404
    add rsp, 0x28  ; 0x140005406
    ret  ; 0x14000540a
    int3   ; 0x14000540b
    sub rsp, 0x28  ; 0x14000540c
    mov ecx, dword ptr [rip + 0x23c5a]  ; 0x140005410
    cmp ecx, -1  ; 0x140005416
    je 0x140005427  ; 0x140005419
    call 0x1400095e0  ; 0x14000541b
    or dword ptr [rip + 0x23c49], 0xffffffff  ; 0x140005420
    mov al, 1  ; 0x140005427
    add rsp, 0x28  ; 0x140005429
    ret  ; 0x14000542d
    int3   ; 0x14000542e
    int3   ; 0x14000542f
    sub rsp, 0x28  ; 0x140005430
    movsxd r9, dword ptr [r8 + 0x1c]  ; 0x140005434
    mov r10, r8  ; 0x140005438
    mov rax, qword ptr [rcx]  ; 0x14000543b
    mov eax, dword ptr [r9 + rax]  ; 0x14000543e
    cmp eax, -2  ; 0x140005442
    jne 0x140005452  ; 0x140005445
    mov r8, qword ptr [rdx]  ; 0x140005447
    mov rcx, r10  ; 0x14000544a
    call 0x1400054dc  ; 0x14000544d
    add rsp, 0x28  ; 0x140005452
    ret  ; 0x140005456
    int3   ; 0x140005457
    push rbx  ; 0x140005458
    sub rsp, 0x20  ; 0x14000545a
    lea r9, [rsp + 0x40]  ; 0x14000545e
    mov rbx, r8  ; 0x140005463
    call 0x14000452c  ; 0x140005466
    mov rcx, qword ptr [rax]  ; 0x14000546b
    movsxd rax, dword ptr [rbx + 0x1c]  ; 0x14000546e
    mov qword ptr [rsp + 0x40], rcx  ; 0x140005472
    mov eax, dword ptr [rax + rcx + 4]  ; 0x140005477
    add rsp, 0x20  ; 0x14000547b
    pop rbx  ; 0x14000547f
    ret  ; 0x140005480
    int3   ; 0x140005481
    int3   ; 0x140005482
    int3   ; 0x140005483
    movsxd rdx, dword ptr [rdx + 0x1c]  ; 0x140005484
    mov rax, qword ptr [rcx]  ; 0x140005488
    mov dword ptr [rdx + rax], r8d  ; 0x14000548b
    ret  ; 0x14000548f
    mov qword ptr [rsp + 8], rbx  ; 0x140005490
    push rdi  ; 0x140005495
    sub rsp, 0x20  ; 0x140005496
    mov edi, r9d  ; 0x14000549a
    mov rbx, r8  ; 0x14000549d
    lea r9, [rsp + 0x40]  ; 0x1400054a0
    call 0x14000452c  ; 0x1400054a5
    mov rcx, qword ptr [rax]  ; 0x1400054aa
    movsxd rax, dword ptr [rbx + 0x1c]  ; 0x1400054ad
    mov qword ptr [rsp + 0x40], rcx  ; 0x1400054b1
    cmp edi, dword ptr [rax + rcx + 4]  ; 0x1400054b6
    jle 0x1400054c0  ; 0x1400054ba
    mov dword ptr [rax + rcx + 4], edi  ; 0x1400054bc
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400054c0
    add rsp, 0x20  ; 0x1400054c5
    pop rdi  ; 0x1400054c9
    ret  ; 0x1400054ca
    int3   ; 0x1400054cb
    mov r8, qword ptr [rdx]  ; 0x1400054cc
    jmp 0x1400054dc  ; 0x1400054cf
    mov r8, qword ptr [rdx]  ; 0x1400054d4
    jmp 0x140005544  ; 0x1400054d7
    push rbx  ; 0x1400054dc
    sub rsp, 0x20  ; 0x1400054de
    mov rbx, r8  ; 0x1400054e2
    test rcx, rcx  ; 0x1400054e5
    je 0x14000553c  ; 0x1400054e8
    movsxd r11, dword ptr [rcx + 0x18]  ; 0x1400054ea
    mov r10, qword ptr [rdx + 8]  ; 0x1400054ee
    lea rax, [r10 + r11]  ; 0x1400054f2
    test rax, rax  ; 0x1400054f6
    je 0x14000553c  ; 0x1400054f9
    mov r8d, dword ptr [rcx + 0x14]  ; 0x1400054fb
    xor r9d, r9d  ; 0x1400054ff
    test r8d, r8d  ; 0x140005502
    je 0x140005537  ; 0x140005505
    lea rcx, [r11 + r9*8]  ; 0x140005507
    movsxd rdx, dword ptr [rcx + r10]  ; 0x14000550b
    add rdx, r10  ; 0x14000550f
    cmp rbx, rdx  ; 0x140005512
    jb 0x14000551f  ; 0x140005515
    inc r9d  ; 0x140005517
    cmp r9d, r8d  ; 0x14000551a
    jb 0x140005507  ; 0x14000551d
    test r9d, r9d  ; 0x14000551f
    je 0x140005537  ; 0x140005522
    lea ecx, [r9 - 1]  ; 0x140005524
    lea rax, [r10 + rcx*8]  ; 0x140005528
    mov eax, dword ptr [rax + r11 + 4]  ; 0x14000552c
    add rsp, 0x20  ; 0x140005531
    pop rbx  ; 0x140005535
    ret  ; 0x140005536
    or eax, 0xffffffff  ; 0x140005537
    jmp 0x140005531  ; 0x14000553a
    call 0x14000e8f0  ; 0x14000553c
    int3   ; 0x140005541
    int3   ; 0x140005542
    int3   ; 0x140005543
    mov rax, rsp  ; 0x140005544
    mov qword ptr [rax + 8], rbx  ; 0x140005547
; Function: func_14000554b
func_14000554b:
    mov qword ptr [rax + 0x10], rbp  ; 0x14000554b
    mov qword ptr [rax + 0x18], rsi  ; 0x14000554f
    mov qword ptr [rax + 0x20], rdi  ; 0x140005553
    push r14  ; 0x140005557
    or ebp, 0xffffffff  ; 0x140005559
    mov rbx, r8  ; 0x14000555c
    cmp dword ptr [rcx + 0x10], 0  ; 0x14000555f
    mov r10, rdx  ; 0x140005563
    je 0x140005618  ; 0x140005566
    movsxd r9, dword ptr [rcx + 0x10]  ; 0x14000556c
    lea r14, [rip - 0x5577]  ; 0x140005570
    mov rdi, qword ptr [rdx + 8]  ; 0x140005577
    xor esi, esi  ; 0x14000557b
    add r9, rdi  ; 0x14000557d
    xor r8d, r8d  ; 0x140005580
    mov edx, ebp  ; 0x140005583
    movzx ecx, byte ptr [r9]  ; 0x140005585
    and ecx, 0xf  ; 0x140005589
    movsx rax, byte ptr [rcx + r14 + 0x1d450]  ; 0x14000558c
    mov cl, byte ptr [rcx + r14 + 0x1d460]  ; 0x140005595
    sub r9, rax  ; 0x14000559d
    mov r11d, dword ptr [r9 - 4]  ; 0x1400055a0
    shr r11d, cl  ; 0x1400055a4
    test r11d, r11d  ; 0x1400055a7
    je 0x140005618  ; 0x1400055aa
    mov rax, qword ptr [r10 + 0x10]  ; 0x1400055ac
    mov r10d, dword ptr [rax]  ; 0x1400055b0
    movzx ecx, byte ptr [r9]  ; 0x1400055b3
    and ecx, 0xf  ; 0x1400055b7
    movsx rax, byte ptr [rcx + r14 + 0x1d450]  ; 0x1400055ba
    mov cl, byte ptr [rcx + r14 + 0x1d460]  ; 0x1400055c3
    sub r9, rax  ; 0x1400055cb
    mov eax, dword ptr [r9 - 4]  ; 0x1400055ce
    shr eax, cl  ; 0x1400055d2
    add esi, eax  ; 0x1400055d4
    mov eax, esi  ; 0x1400055d6
    add rax, r10  ; 0x1400055d8
    add rax, rdi  ; 0x1400055db
    cmp rbx, rax  ; 0x1400055de
    jb 0x14000560e  ; 0x1400055e1
    movzx ecx, byte ptr [r9]  ; 0x1400055e3
    inc r8d  ; 0x1400055e7
    and ecx, 0xf  ; 0x1400055ea
    movsx rax, byte ptr [rcx + r14 + 0x1d450]  ; 0x1400055ed
    mov cl, byte ptr [rcx + r14 + 0x1d460]  ; 0x1400055f6
    sub r9, rax  ; 0x1400055fe
    mov edx, dword ptr [r9 - 4]  ; 0x140005601
    shr edx, cl  ; 0x140005605
    dec edx  ; 0x140005607
    cmp r8d, r11d  ; 0x140005609
    jb 0x1400055b3  ; 0x14000560c
    test r8d, r8d  ; 0x14000560e
    cmove edx, ebp  ; 0x140005611
    mov eax, edx  ; 0x140005614
    jmp 0x14000561a  ; 0x140005616
    mov eax, ebp  ; 0x140005618
    mov rbx, qword ptr [rsp + 0x10]  ; 0x14000561a
    mov rbp, qword ptr [rsp + 0x18]  ; 0x14000561f
    mov rsi, qword ptr [rsp + 0x20]  ; 0x140005624
    mov rdi, qword ptr [rsp + 0x28]  ; 0x140005629
    pop r14  ; 0x14000562e
    ret  ; 0x140005630
    int3   ; 0x140005631
    int3   ; 0x140005632
    int3   ; 0x140005633
    mov qword ptr [rsp + 8], rbx  ; 0x140005634
    mov qword ptr [rsp + 0x10], rsi  ; 0x140005639
    mov qword ptr [rsp + 0x18], rdi  ; 0x14000563e
    push r13  ; 0x140005643
    push r14  ; 0x140005645
    push r15  ; 0x140005647
    sub rsp, 0x30  ; 0x140005649
    mov r14, r9  ; 0x14000564d
    mov rbx, r8  ; 0x140005650
    mov rsi, rdx  ; 0x140005653
    mov r13, rcx  ; 0x140005656
    xor edi, edi  ; 0x140005659
    cmp dword ptr [r8 + 4], edi  ; 0x14000565b
    je 0x140005670  ; 0x14000565f
    movsxd r15, dword ptr [r8 + 4]  ; 0x140005661
    call 0x140004d38  ; 0x140005665
    lea rdx, [r15 + rax]  ; 0x14000566a
    jmp 0x140005676  ; 0x14000566e
    mov rdx, rdi  ; 0x140005670
    mov r15d, edi  ; 0x140005673
    test rdx, rdx  ; 0x140005676
    je 0x1400057f6  ; 0x140005679
    test r15d, r15d  ; 0x14000567f
    je 0x140005695  ; 0x140005682
    call 0x140004d38  ; 0x140005684
    mov rcx, rax  ; 0x140005689
    movsxd rax, dword ptr [rbx + 4]  ; 0x14000568c
    add rcx, rax  ; 0x140005690
    jmp 0x140005698  ; 0x140005693
    mov rcx, rdi  ; 0x140005695
    cmp byte ptr [rcx + 0x10], dil  ; 0x140005698
    je 0x1400057f6  ; 0x14000569c
    cmp dword ptr [rbx + 8], edi  ; 0x1400056a2
    jne 0x1400056af  ; 0x1400056a5
    cmp dword ptr [rbx], edi  ; 0x1400056a7
    jge 0x1400057f6  ; 0x1400056a9
    cmp dword ptr [rbx], edi  ; 0x1400056af
    jl 0x1400056bd  ; 0x1400056b1
    movsxd rax, dword ptr [rbx + 8]  ; 0x1400056b3
    add rax, qword ptr [rsi]  ; 0x1400056b7
    mov rsi, rax  ; 0x1400056ba
    test byte ptr [rbx], 0x80  ; 0x1400056bd
    je 0x1400056f4  ; 0x1400056c0
    test byte ptr [r14], 0x10  ; 0x1400056c2
    je 0x1400056f4  ; 0x1400056c6
    mov rax, qword ptr [rip + 0x24ac1]  ; 0x1400056c8
    test rax, rax  ; 0x1400056cf
    je 0x1400056f4  ; 0x1400056d2
    call qword ptr [rip + 0x17b96]  ; 0x1400056d4
    test rax, rax  ; 0x1400056da
    je 0x140005812  ; 0x1400056dd
    test rsi, rsi  ; 0x1400056e3
    je 0x140005812  ; 0x1400056e6
    mov qword ptr [rsi], rax  ; 0x1400056ec
    mov rcx, rax  ; 0x1400056ef
    jmp 0x140005753  ; 0x1400056f2
    test byte ptr [rbx], 8  ; 0x1400056f4
    je 0x140005714  ; 0x1400056f7
    mov rcx, qword ptr [r13 + 0x28]  ; 0x1400056f9
    test rcx, rcx  ; 0x1400056fd
    je 0x140005817  ; 0x140005700
    test rsi, rsi  ; 0x140005706
    je 0x140005817  ; 0x140005709
    mov qword ptr [rsi], rcx  ; 0x14000570f
    jmp 0x140005753  ; 0x140005712
    test byte ptr [r14], 1  ; 0x140005714
    je 0x140005764  ; 0x140005718
    mov rdx, qword ptr [r13 + 0x28]  ; 0x14000571a
    test rdx, rdx  ; 0x14000571e
    je 0x14000581c  ; 0x140005721
    test rsi, rsi  ; 0x140005727
    je 0x14000581c  ; 0x14000572a
    movsxd r8, dword ptr [r14 + 0x14]  ; 0x140005730
    mov rcx, rsi  ; 0x140005734
    call 0x14001af90  ; 0x140005737
    cmp dword ptr [r14 + 0x14], 8  ; 0x14000573c
    jne 0x1400057f2  ; 0x140005741
    cmp qword ptr [rsi], rdi  ; 0x140005747
    je 0x1400057f2  ; 0x14000574a
    mov rcx, qword ptr [rsi]  ; 0x140005750
    lea rdx, [r14 + 8]  ; 0x140005753
    call 0x140005208  ; 0x140005757
    mov qword ptr [rsi], rax  ; 0x14000575c
    jmp 0x1400057f2  ; 0x14000575f
    cmp dword ptr [r14 + 0x18], edi  ; 0x140005764
    je 0x140005779  ; 0x140005768
    movsxd rbx, dword ptr [r14 + 0x18]  ; 0x14000576a
    call 0x140004d4c  ; 0x14000576e
    lea rcx, [rbx + rax]  ; 0x140005773
    jmp 0x14000577e  ; 0x140005777
    mov rcx, rdi  ; 0x140005779
    mov ebx, edi  ; 0x14000577c
    test rcx, rcx  ; 0x14000577e
    jne 0x1400057b7  ; 0x140005781
    cmp qword ptr [r13 + 0x28], rdi  ; 0x140005783
    je 0x140005821  ; 0x140005787
    test rsi, rsi  ; 0x14000578d
    je 0x140005821  ; 0x140005790
    movsxd rbx, dword ptr [r14 + 0x14]  ; 0x140005796
    lea rdx, [r14 + 8]  ; 0x14000579a
    mov rcx, qword ptr [r13 + 0x28]  ; 0x14000579e
    call 0x140005208  ; 0x1400057a2
    mov rdx, rax  ; 0x1400057a7
    mov r8, rbx  ; 0x1400057aa
    mov rcx, rsi  ; 0x1400057ad
    call 0x14001af90  ; 0x1400057b0
    jmp 0x1400057f2  ; 0x1400057b5
    cmp qword ptr [r13 + 0x28], rdi  ; 0x1400057b7
    je 0x140005826  ; 0x1400057bb
    test rsi, rsi  ; 0x1400057bd
    je 0x140005826  ; 0x1400057c0
    test ebx, ebx  ; 0x1400057c2
    je 0x1400057d7  ; 0x1400057c4
    call 0x140004d4c  ; 0x1400057c6
    mov rcx, rax  ; 0x1400057cb
    movsxd rax, dword ptr [r14 + 0x18]  ; 0x1400057ce
    add rcx, rax  ; 0x1400057d2
    jmp 0x1400057da  ; 0x1400057d5
    mov rcx, rdi  ; 0x1400057d7
    test rcx, rcx  ; 0x1400057da
    je 0x140005826  ; 0x1400057dd
    mov al, byte ptr [r14]  ; 0x1400057df
    and al, 4  ; 0x1400057e2
    neg al  ; 0x1400057e4
    sbb ecx, ecx  ; 0x1400057e6
    neg ecx  ; 0x1400057e8
    inc ecx  ; 0x1400057ea
    mov edi, ecx  ; 0x1400057ec
    mov dword ptr [rsp + 0x20], ecx  ; 0x1400057ee
    mov eax, edi  ; 0x1400057f2
    jmp 0x1400057f8  ; 0x1400057f4
    xor eax, eax  ; 0x1400057f6
    mov rbx, qword ptr [rsp + 0x50]  ; 0x1400057f8
    mov rsi, qword ptr [rsp + 0x58]  ; 0x1400057fd
    mov rdi, qword ptr [rsp + 0x60]  ; 0x140005802
    add rsp, 0x30  ; 0x140005807
    pop r15  ; 0x14000580b
    pop r14  ; 0x14000580d
    pop r13  ; 0x14000580f
    ret  ; 0x140005811
    call 0x14000e8f0  ; 0x140005812
    call 0x14000e8f0  ; 0x140005817
    call 0x14000e8f0  ; 0x14000581c
    call 0x14000e8f0  ; 0x140005821
    call 0x14000e8f0  ; 0x140005826
    nop  ; 0x14000582b
    call 0x14000e8f0  ; 0x14000582c
    nop  ; 0x140005831
    int3   ; 0x140005832
    int3   ; 0x140005833
    mov qword ptr [rsp + 8], rbx  ; 0x140005834
    mov qword ptr [rsp + 0x10], rsi  ; 0x140005839
    mov qword ptr [rsp + 0x18], rdi  ; 0x14000583e
    push r13  ; 0x140005843
    push r14  ; 0x140005845
    push r15  ; 0x140005847
    sub rsp, 0x30  ; 0x140005849
    mov r14, r9  ; 0x14000584d
    mov rbx, r8  ; 0x140005850
    mov rsi, rdx  ; 0x140005853
    mov r13, rcx  ; 0x140005856
    xor edi, edi  ; 0x140005859
    cmp dword ptr [r8 + 8], edi  ; 0x14000585b
    je 0x140005870  ; 0x14000585f
    movsxd r15, dword ptr [r8 + 8]  ; 0x140005861
    call 0x140004d38  ; 0x140005865
    lea rdx, [r15 + rax]  ; 0x14000586a
    jmp 0x140005876  ; 0x14000586e
    mov rdx, rdi  ; 0x140005870
    mov r15d, edi  ; 0x140005873
    test rdx, rdx  ; 0x140005876
    je 0x1400059f9  ; 0x140005879
    test r15d, r15d  ; 0x14000587f
    je 0x140005895  ; 0x140005882
    call 0x140004d38  ; 0x140005884
    mov rcx, rax  ; 0x140005889
    movsxd rax, dword ptr [rbx + 8]  ; 0x14000588c
    add rcx, rax  ; 0x140005890
    jmp 0x140005898  ; 0x140005893
    mov rcx, rdi  ; 0x140005895
    cmp byte ptr [rcx + 0x10], dil  ; 0x140005898
    je 0x1400059f9  ; 0x14000589c
    cmp dword ptr [rbx + 0xc], edi  ; 0x1400058a2
    jne 0x1400058b0  ; 0x1400058a5
    cmp dword ptr [rbx + 4], edi  ; 0x1400058a7
    jge 0x1400059f9  ; 0x1400058aa
    cmp dword ptr [rbx + 4], edi  ; 0x1400058b0
    jl 0x1400058be  ; 0x1400058b3
    mov eax, dword ptr [rbx + 0xc]  ; 0x1400058b5
    add rax, qword ptr [rsi]  ; 0x1400058b8
    mov rsi, rax  ; 0x1400058bb
    test byte ptr [rbx + 4], 0x80  ; 0x1400058be
    je 0x1400058f6  ; 0x1400058c2
    test byte ptr [r14], 0x10  ; 0x1400058c4
    je 0x1400058f6  ; 0x1400058c8
    mov rax, qword ptr [rip + 0x248bf]  ; 0x1400058ca
    test rax, rax  ; 0x1400058d1
    je 0x1400058f6  ; 0x1400058d4
    call qword ptr [rip + 0x17994]  ; 0x1400058d6
    test rax, rax  ; 0x1400058dc
    je 0x140005a15  ; 0x1400058df
    test rsi, rsi  ; 0x1400058e5
    je 0x140005a15  ; 0x1400058e8
    mov qword ptr [rsi], rax  ; 0x1400058ee
    mov rcx, rax  ; 0x1400058f1
    jmp 0x140005956  ; 0x1400058f4
    test byte ptr [rbx + 4], 8  ; 0x1400058f6
    je 0x140005917  ; 0x1400058fa
    mov rcx, qword ptr [r13 + 0x28]  ; 0x1400058fc
    test rcx, rcx  ; 0x140005900
    je 0x140005a1a  ; 0x140005903
    test rsi, rsi  ; 0x140005909
    je 0x140005a1a  ; 0x14000590c
    mov qword ptr [rsi], rcx  ; 0x140005912
    jmp 0x140005956  ; 0x140005915
    test byte ptr [r14], 1  ; 0x140005917
    je 0x140005967  ; 0x14000591b
    mov rdx, qword ptr [r13 + 0x28]  ; 0x14000591d
    test rdx, rdx  ; 0x140005921
    je 0x140005a1f  ; 0x140005924
    test rsi, rsi  ; 0x14000592a
    je 0x140005a1f  ; 0x14000592d
    movsxd r8, dword ptr [r14 + 0x14]  ; 0x140005933
    mov rcx, rsi  ; 0x140005937
    call 0x14001af90  ; 0x14000593a
    cmp dword ptr [r14 + 0x14], 8  ; 0x14000593f
    jne 0x1400059f5  ; 0x140005944
    cmp qword ptr [rsi], rdi  ; 0x14000594a
    je 0x1400059f5  ; 0x14000594d
    mov rcx, qword ptr [rsi]  ; 0x140005953
    lea rdx, [r14 + 8]  ; 0x140005956
    call 0x140005208  ; 0x14000595a
    mov qword ptr [rsi], rax  ; 0x14000595f
    jmp 0x1400059f5  ; 0x140005962
    cmp dword ptr [r14 + 0x18], edi  ; 0x140005967
    je 0x14000597c  ; 0x14000596b
    movsxd rbx, dword ptr [r14 + 0x18]  ; 0x14000596d
    call 0x140004d4c  ; 0x140005971
    lea rcx, [rbx + rax]  ; 0x140005976
    jmp 0x140005981  ; 0x14000597a
    mov rcx, rdi  ; 0x14000597c
    mov ebx, edi  ; 0x14000597f
    test rcx, rcx  ; 0x140005981
    jne 0x1400059ba  ; 0x140005984
    cmp qword ptr [r13 + 0x28], rdi  ; 0x140005986
    je 0x140005a24  ; 0x14000598a
    test rsi, rsi  ; 0x140005990
    je 0x140005a24  ; 0x140005993
    movsxd rbx, dword ptr [r14 + 0x14]  ; 0x140005999
    lea rdx, [r14 + 8]  ; 0x14000599d
    mov rcx, qword ptr [r13 + 0x28]  ; 0x1400059a1
    call 0x140005208  ; 0x1400059a5
    mov rdx, rax  ; 0x1400059aa
    mov r8, rbx  ; 0x1400059ad
    mov rcx, rsi  ; 0x1400059b0
    call 0x14001af90  ; 0x1400059b3
    jmp 0x1400059f5  ; 0x1400059b8
    cmp qword ptr [r13 + 0x28], rdi  ; 0x1400059ba
    je 0x140005a29  ; 0x1400059be
    test rsi, rsi  ; 0x1400059c0
    je 0x140005a29  ; 0x1400059c3
    test ebx, ebx  ; 0x1400059c5
    je 0x1400059da  ; 0x1400059c7
    call 0x140004d4c  ; 0x1400059c9
    mov rcx, rax  ; 0x1400059ce
    movsxd rax, dword ptr [r14 + 0x18]  ; 0x1400059d1
    add rcx, rax  ; 0x1400059d5
    jmp 0x1400059dd  ; 0x1400059d8
    mov rcx, rdi  ; 0x1400059da
    test rcx, rcx  ; 0x1400059dd
    je 0x140005a29  ; 0x1400059e0
    mov al, byte ptr [r14]  ; 0x1400059e2
    and al, 4  ; 0x1400059e5
    neg al  ; 0x1400059e7
    sbb ecx, ecx  ; 0x1400059e9
    neg ecx  ; 0x1400059eb
    inc ecx  ; 0x1400059ed
    mov edi, ecx  ; 0x1400059ef
    mov dword ptr [rsp + 0x20], ecx  ; 0x1400059f1
    mov eax, edi  ; 0x1400059f5
    jmp 0x1400059fb  ; 0x1400059f7
    xor eax, eax  ; 0x1400059f9
    mov rbx, qword ptr [rsp + 0x50]  ; 0x1400059fb
    mov rsi, qword ptr [rsp + 0x58]  ; 0x140005a00
    mov rdi, qword ptr [rsp + 0x60]  ; 0x140005a05
    add rsp, 0x30  ; 0x140005a0a
    pop r15  ; 0x140005a0e
    pop r14  ; 0x140005a10
    pop r13  ; 0x140005a12
    ret  ; 0x140005a14
    call 0x14000e8f0  ; 0x140005a15
    call 0x14000e8f0  ; 0x140005a1a
    call 0x14000e8f0  ; 0x140005a1f
    call 0x14000e8f0  ; 0x140005a24
    call 0x14000e8f0  ; 0x140005a29
    nop  ; 0x140005a2e
    call 0x14000e8f0  ; 0x140005a2f
    nop  ; 0x140005a34
    int3   ; 0x140005a35
    int3   ; 0x140005a36
    int3   ; 0x140005a37
    mov qword ptr [rsp + 8], rbx  ; 0x140005a38
    mov qword ptr [rsp + 0x10], rsi  ; 0x140005a3d
    mov qword ptr [rsp + 0x18], rdi  ; 0x140005a42
    push r14  ; 0x140005a47
    sub rsp, 0x20  ; 0x140005a49
    mov rdi, r9  ; 0x140005a4d
    mov r14, rcx  ; 0x140005a50
    xor ebx, ebx  ; 0x140005a53
    cmp dword ptr [r8], ebx  ; 0x140005a55
    jge 0x140005a5f  ; 0x140005a58
    mov rsi, rdx  ; 0x140005a5a
    jmp 0x140005a66  ; 0x140005a5d
    movsxd rsi, dword ptr [r8 + 8]  ; 0x140005a5f
    add rsi, qword ptr [rdx]  ; 0x140005a63
    call 0x140005634  ; 0x140005a66
    sub eax, 1  ; 0x140005a6b
    je 0x140005aac  ; 0x140005a6e
    cmp eax, 1  ; 0x140005a70
    jne 0x140005adc  ; 0x140005a73
    lea rdx, [rdi + 8]  ; 0x140005a75
    mov rcx, qword ptr [r14 + 0x28]  ; 0x140005a79
    call 0x140005208  ; 0x140005a7d
    mov r14, rax  ; 0x140005a82
    cmp dword ptr [rdi + 0x18], ebx  ; 0x140005a85
    je 0x140005a96  ; 0x140005a88
    call 0x140004d4c  ; 0x140005a8a
    movsxd rbx, dword ptr [rdi + 0x18]  ; 0x140005a8f
    add rbx, rax  ; 0x140005a93
    mov r9d, 1  ; 0x140005a96
    mov r8, r14  ; 0x140005a9c
    mov rdx, rbx  ; 0x140005a9f
    mov rcx, rsi  ; 0x140005aa2
    call 0x1400083dc  ; 0x140005aa5
    jmp 0x140005adc  ; 0x140005aaa
    lea rdx, [rdi + 8]  ; 0x140005aac
    mov rcx, qword ptr [r14 + 0x28]  ; 0x140005ab0
    call 0x140005208  ; 0x140005ab4
    mov r14, rax  ; 0x140005ab9
    cmp dword ptr [rdi + 0x18], ebx  ; 0x140005abc
    je 0x140005acd  ; 0x140005abf
    call 0x140004d4c  ; 0x140005ac1
    movsxd rbx, dword ptr [rdi + 0x18]  ; 0x140005ac6
    add rbx, rax  ; 0x140005aca
    mov r8, r14  ; 0x140005acd
    mov rdx, rbx  ; 0x140005ad0
    mov rcx, rsi  ; 0x140005ad3
    call 0x1400083d0  ; 0x140005ad6
    nop  ; 0x140005adb
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140005adc
    mov rsi, qword ptr [rsp + 0x38]  ; 0x140005ae1
    mov rdi, qword ptr [rsp + 0x40]  ; 0x140005ae6
    add rsp, 0x20  ; 0x140005aeb
    pop r14  ; 0x140005aef
    ret  ; 0x140005af1
    call 0x14000e8f0  ; 0x140005af2
    nop  ; 0x140005af7
    mov qword ptr [rsp + 8], rbx  ; 0x140005af8
    mov qword ptr [rsp + 0x10], rsi  ; 0x140005afd
    mov qword ptr [rsp + 0x18], rdi  ; 0x140005b02
    push r14  ; 0x140005b07
    sub rsp, 0x20  ; 0x140005b09
    mov rdi, r9  ; 0x140005b0d
    mov r14, rcx  ; 0x140005b10
    xor ebx, ebx  ; 0x140005b13
    cmp dword ptr [r8 + 4], ebx  ; 0x140005b15
    jge 0x140005b20  ; 0x140005b19
    mov rsi, rdx  ; 0x140005b1b
    jmp 0x140005b27  ; 0x140005b1e
    mov esi, dword ptr [r8 + 0xc]  ; 0x140005b20
    add rsi, qword ptr [rdx]  ; 0x140005b24
    call 0x140005834  ; 0x140005b27
    sub eax, 1  ; 0x140005b2c
    je 0x140005b6d  ; 0x140005b2f
    cmp eax, 1  ; 0x140005b31
    jne 0x140005b9d  ; 0x140005b34
    lea rdx, [rdi + 8]  ; 0x140005b36
    mov rcx, qword ptr [r14 + 0x28]  ; 0x140005b3a
    call 0x140005208  ; 0x140005b3e
    mov r14, rax  ; 0x140005b43
    cmp dword ptr [rdi + 0x18], ebx  ; 0x140005b46
    je 0x140005b57  ; 0x140005b49
    call 0x140004d4c  ; 0x140005b4b
    movsxd rbx, dword ptr [rdi + 0x18]  ; 0x140005b50
    add rbx, rax  ; 0x140005b54
    mov r9d, 1  ; 0x140005b57
    mov r8, r14  ; 0x140005b5d
    mov rdx, rbx  ; 0x140005b60
    mov rcx, rsi  ; 0x140005b63
    call 0x1400083dc  ; 0x140005b66
    jmp 0x140005b9d  ; 0x140005b6b
    lea rdx, [rdi + 8]  ; 0x140005b6d
    mov rcx, qword ptr [r14 + 0x28]  ; 0x140005b71
    call 0x140005208  ; 0x140005b75
    mov r14, rax  ; 0x140005b7a
    cmp dword ptr [rdi + 0x18], ebx  ; 0x140005b7d
    je 0x140005b8e  ; 0x140005b80
    call 0x140004d4c  ; 0x140005b82
    movsxd rbx, dword ptr [rdi + 0x18]  ; 0x140005b87
    add rbx, rax  ; 0x140005b8b
    mov r8, r14  ; 0x140005b8e
    mov rdx, rbx  ; 0x140005b91
    mov rcx, rsi  ; 0x140005b94
    call 0x1400083d0  ; 0x140005b97
    nop  ; 0x140005b9c
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140005b9d
    mov rsi, qword ptr [rsp + 0x38]  ; 0x140005ba2
    mov rdi, qword ptr [rsp + 0x40]  ; 0x140005ba7
    add rsp, 0x20  ; 0x140005bac
    pop r14  ; 0x140005bb0
    ret  ; 0x140005bb2
    call 0x14000e8f0  ; 0x140005bb3
    nop  ; 0x140005bb8
    int3   ; 0x140005bb9
    int3   ; 0x140005bba
    int3   ; 0x140005bbb
    mov rax, rsp  ; 0x140005bbc
    mov qword ptr [rax + 8], rbx  ; 0x140005bbf
    mov qword ptr [rax + 0x18], r8  ; 0x140005bc3
; Function: func_140005bc7
func_140005bc7:
    push rbp  ; 0x140005bc7
    push rsi  ; 0x140005bc8
    push rdi  ; 0x140005bc9
    push r12  ; 0x140005bca
    push r13  ; 0x140005bcc
    push r14  ; 0x140005bce
    push r15  ; 0x140005bd0
    sub rsp, 0x60  ; 0x140005bd2
    mov r13, qword ptr [rsp + 0xc0]  ; 0x140005bd6
    mov r15, r9  ; 0x140005bde
    mov r12, rdx  ; 0x140005be1
    lea r9, [rax + 0x10]  ; 0x140005be4
    mov rbp, rcx  ; 0x140005be8
    mov r8, r13  ; 0x140005beb
    mov rdx, r15  ; 0x140005bee
    mov rcx, r12  ; 0x140005bf1
    call 0x14000452c  ; 0x140005bf4
    mov r9, qword ptr [rsp + 0xd0]  ; 0x140005bf9
    mov r14, rax  ; 0x140005c01
    mov rsi, qword ptr [rsp + 0xc8]  ; 0x140005c04
    test r9, r9  ; 0x140005c0c
    je 0x140005c1f  ; 0x140005c0f
    mov r8, rsi  ; 0x140005c11
    mov rdx, rax  ; 0x140005c14
    mov rcx, rbp  ; 0x140005c17
    call 0x140005a38  ; 0x140005c1a
    mov rcx, qword ptr [rsp + 0xd8]  ; 0x140005c1f
    mov ebx, dword ptr [rcx + 8]  ; 0x140005c27
    mov edi, dword ptr [rcx]  ; 0x140005c2a
    call 0x140004d38  ; 0x140005c2c
    movsxd rcx, dword ptr [rsi + 0xc]  ; 0x140005c31
    mov r9, r14  ; 0x140005c35
    mov r8, qword ptr [rsp + 0xb0]  ; 0x140005c38
    add rax, rcx  ; 0x140005c40
    mov cl, byte ptr [rsp + 0xf8]  ; 0x140005c43
    mov rdx, rbp  ; 0x140005c4a
    mov byte ptr [rsp + 0x50], cl  ; 0x140005c4d
    mov rcx, r12  ; 0x140005c51
    mov qword ptr [rsp + 0x48], r15  ; 0x140005c54
    mov qword ptr [rsp + 0x40], rsi  ; 0x140005c59
    mov dword ptr [rsp + 0x38], ebx  ; 0x140005c5e
    mov dword ptr [rsp + 0x30], edi  ; 0x140005c62
    mov qword ptr [rsp + 0x28], r13  ; 0x140005c66
    mov qword ptr [rsp + 0x20], rax  ; 0x140005c6b
    call 0x1400048c0  ; 0x140005c70
    mov rbx, qword ptr [rsp + 0xa0]  ; 0x140005c75
    add rsp, 0x60  ; 0x140005c7d
    pop r15  ; 0x140005c81
    pop r14  ; 0x140005c83
    pop r13  ; 0x140005c85
    pop r12  ; 0x140005c87
    pop rdi  ; 0x140005c89
    pop rsi  ; 0x140005c8a
    pop rbp  ; 0x140005c8b
    ret  ; 0x140005c8c
    int3   ; 0x140005c8d
    int3   ; 0x140005c8e
    int3   ; 0x140005c8f
    mov rax, rsp  ; 0x140005c90
    mov qword ptr [rax + 8], rbx  ; 0x140005c93
    mov qword ptr [rax + 0x18], r8  ; 0x140005c97
; Function: func_140005c9b
func_140005c9b:
    push rbp  ; 0x140005c9b
    push rsi  ; 0x140005c9c
    push rdi  ; 0x140005c9d
    push r12  ; 0x140005c9e
    push r13  ; 0x140005ca0
    push r14  ; 0x140005ca2
    push r15  ; 0x140005ca4
    sub rsp, 0x60  ; 0x140005ca6
    mov r13, qword ptr [rsp + 0xc0]  ; 0x140005caa
    mov r15, r9  ; 0x140005cb2
    mov r12, rdx  ; 0x140005cb5
    lea r9, [rax + 0x10]  ; 0x140005cb8
    mov rbp, rcx  ; 0x140005cbc
    mov r8, r13  ; 0x140005cbf
    mov rdx, r15  ; 0x140005cc2
    mov rcx, r12  ; 0x140005cc5
    call 0x1400045fc  ; 0x140005cc8
    mov r9, qword ptr [rsp + 0xd0]  ; 0x140005ccd
    mov r14, rax  ; 0x140005cd5
    mov rsi, qword ptr [rsp + 0xc8]  ; 0x140005cd8
    test r9, r9  ; 0x140005ce0
    je 0x140005cf3  ; 0x140005ce3
    mov r8, rsi  ; 0x140005ce5
    mov rdx, rax  ; 0x140005ce8
    mov rcx, rbp  ; 0x140005ceb
    call 0x140005af8  ; 0x140005cee
    mov rcx, qword ptr [rsp + 0xd8]  ; 0x140005cf3
    mov ebx, dword ptr [rcx + 8]  ; 0x140005cfb
    mov edi, dword ptr [rcx]  ; 0x140005cfe
    call 0x140004d38  ; 0x140005d00
    movsxd rcx, dword ptr [rsi + 0x10]  ; 0x140005d05
    mov r9, r14  ; 0x140005d09
    mov r8, qword ptr [rsp + 0xb0]  ; 0x140005d0c
    add rax, rcx  ; 0x140005d14
    mov cl, byte ptr [rsp + 0xf8]  ; 0x140005d17
    mov rdx, rbp  ; 0x140005d1e
    mov byte ptr [rsp + 0x50], cl  ; 0x140005d21
    mov rcx, r12  ; 0x140005d25
    mov qword ptr [rsp + 0x48], r15  ; 0x140005d28
    mov qword ptr [rsp + 0x40], rsi  ; 0x140005d2d
    mov dword ptr [rsp + 0x38], ebx  ; 0x140005d32
    mov dword ptr [rsp + 0x30], edi  ; 0x140005d36
    mov qword ptr [rsp + 0x28], r13  ; 0x140005d3a
    mov qword ptr [rsp + 0x20], rax  ; 0x140005d3f
    call 0x1400049c4  ; 0x140005d44
    mov rbx, qword ptr [rsp + 0xa0]  ; 0x140005d49
    add rsp, 0x60  ; 0x140005d51
    pop r15  ; 0x140005d55
    pop r14  ; 0x140005d57
    pop r13  ; 0x140005d59
    pop r12  ; 0x140005d5b
    pop rdi  ; 0x140005d5d
    pop rsi  ; 0x140005d5e
    pop rbp  ; 0x140005d5f
    ret  ; 0x140005d60
    int3   ; 0x140005d61
    int3   ; 0x140005d62
    int3   ; 0x140005d63
; Function: func_140005d64
func_140005d64:
    push rbp  ; 0x140005d64
    push rbx  ; 0x140005d66
    push rsi  ; 0x140005d67
    push rdi  ; 0x140005d68
    push r12  ; 0x140005d69
    push r13  ; 0x140005d6b
    push r14  ; 0x140005d6d
    push r15  ; 0x140005d6f
    lea rbp, [rsp - 0x28]  ; 0x140005d71
    sub rsp, 0x128  ; 0x140005d76
    mov rax, qword ptr [rip + 0x2327c]  ; 0x140005d7d
    xor rax, rsp  ; 0x140005d84
    mov qword ptr [rbp + 0x10], rax  ; 0x140005d87
    mov rdi, qword ptr [rbp + 0x90]  ; 0x140005d8b
    mov r12, rdx  ; 0x140005d92
    mov r13, qword ptr [rbp + 0xa8]  ; 0x140005d95
    mov r15, r8  ; 0x140005d9c
    mov qword ptr [rsp + 0x68], r8  ; 0x140005d9f
    mov rbx, rcx  ; 0x140005da4
    mov qword ptr [rbp - 0x80], rdx  ; 0x140005da7
    mov r8, rdi  ; 0x140005dab
    mov rcx, r12  ; 0x140005dae
    mov qword ptr [rbp - 0x68], r13  ; 0x140005db1
    mov rdx, r9  ; 0x140005db5
    mov byte ptr [rsp + 0x60], 0  ; 0x140005db8
    mov rsi, r9  ; 0x140005dbd
    call 0x140008124  ; 0x140005dc0
    mov r14d, eax  ; 0x140005dc5
    cmp eax, -1  ; 0x140005dc8
    jl 0x14000622c  ; 0x140005dcb
    cmp eax, dword ptr [rdi + 4]  ; 0x140005dd1
    jge 0x14000622c  ; 0x140005dd4
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140005dda
    jne 0x140005eaf  ; 0x140005de0
    cmp dword ptr [rbx + 0x18], 4  ; 0x140005de6
    jne 0x140005eaf  ; 0x140005dea
    mov eax, dword ptr [rbx + 0x20]  ; 0x140005df0
    sub eax, 0x19930520  ; 0x140005df3
    cmp eax, 2  ; 0x140005df8
    ja 0x140005eaf  ; 0x140005dfb
    cmp qword ptr [rbx + 0x30], 0  ; 0x140005e01
    jne 0x140005eaf  ; 0x140005e06
    call 0x1400052e8  ; 0x140005e0c
    cmp qword ptr [rax + 0x20], 0  ; 0x140005e11
    je 0x1400061c5  ; 0x140005e16
    call 0x1400052e8  ; 0x140005e1c
    mov rbx, qword ptr [rax + 0x20]  ; 0x140005e21
    call 0x1400052e8  ; 0x140005e25
    mov rcx, qword ptr [rbx + 0x38]  ; 0x140005e2a
    mov byte ptr [rsp + 0x60], 1  ; 0x140005e2e
    mov r15, qword ptr [rax + 0x28]  ; 0x140005e33
    mov qword ptr [rsp + 0x68], r15  ; 0x140005e37
    call 0x140004d78  ; 0x140005e3c
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140005e41
    jne 0x140005e67  ; 0x140005e47
    cmp dword ptr [rbx + 0x18], 4  ; 0x140005e49
    jne 0x140005e67  ; 0x140005e4d
    mov eax, dword ptr [rbx + 0x20]  ; 0x140005e4f
    sub eax, 0x19930520  ; 0x140005e52
    cmp eax, 2  ; 0x140005e57
    ja 0x140005e67  ; 0x140005e5a
    cmp qword ptr [rbx + 0x30], 0  ; 0x140005e5c
    je 0x14000622c  ; 0x140005e61
    call 0x1400052e8  ; 0x140005e67
    cmp qword ptr [rax + 0x38], 0  ; 0x140005e6c
    je 0x140005eaf  ; 0x140005e71
    call 0x1400052e8  ; 0x140005e73
    mov r15, qword ptr [rax + 0x38]  ; 0x140005e78
    call 0x1400052e8  ; 0x140005e7c
    mov rdx, r15  ; 0x140005e81
    mov rcx, rbx  ; 0x140005e84
    and qword ptr [rax + 0x38], 0  ; 0x140005e87
    call 0x1400081bc  ; 0x140005e8c
    test al, al  ; 0x140005e91
    jne 0x140005eaa  ; 0x140005e93
    mov rcx, r15  ; 0x140005e95
    call 0x1400082ac  ; 0x140005e98
    test al, al  ; 0x140005e9d
    je 0x140006209  ; 0x140005e9f
    jmp 0x1400061e5  ; 0x140005ea5
    mov r15, qword ptr [rsp + 0x68]  ; 0x140005eaa
    mov rax, qword ptr [rsi + 8]  ; 0x140005eaf
    mov qword ptr [rbp - 0x40], rax  ; 0x140005eb3
    mov qword ptr [rbp - 0x48], rdi  ; 0x140005eb7
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140005ebb
    jne 0x14000617c  ; 0x140005ec1
    cmp dword ptr [rbx + 0x18], 4  ; 0x140005ec7
    jne 0x14000617c  ; 0x140005ecb
    mov eax, dword ptr [rbx + 0x20]  ; 0x140005ed1
    sub eax, 0x19930520  ; 0x140005ed4
    cmp eax, 2  ; 0x140005ed9
    ja 0x14000617c  ; 0x140005edc
    xor r15d, r15d  ; 0x140005ee2
    cmp dword ptr [rdi + 0xc], r15d  ; 0x140005ee5
    jbe 0x1400060ad  ; 0x140005ee9
    mov eax, dword ptr [rbp + 0xa0]  ; 0x140005eef
    lea rdx, [rbp - 0x48]  ; 0x140005ef5
    mov dword ptr [rsp + 0x28], eax  ; 0x140005ef9
    lea rcx, [rbp - 0x28]  ; 0x140005efd
    mov r9, rsi  ; 0x140005f01
    mov qword ptr [rsp + 0x20], rdi  ; 0x140005f04
    mov r8d, r14d  ; 0x140005f09
    call 0x140004620  ; 0x140005f0c
    movups xmm1, xmmword ptr [rbp - 0x28]  ; 0x140005f11
    movdqa xmm0, xmm1  ; 0x140005f15
    psrldq xmm0, 8  ; 0x140005f19
    movd eax, xmm0  ; 0x140005f1e
    movdqu xmmword ptr [rbp - 0x38], xmm1  ; 0x140005f22
    cmp eax, dword ptr [rbp - 0x10]  ; 0x140005f27
    jae 0x1400060ad  ; 0x140005f2a
    mov r12d, dword ptr [rbp - 0x30]  ; 0x140005f30
    movq r9, xmm1  ; 0x140005f34
    mov qword ptr [rsp + 0x78], r9  ; 0x140005f39
    mov rax, qword ptr [rbp - 0x38]  ; 0x140005f3e
    mov rax, qword ptr [rax]  ; 0x140005f42
    movsxd rdx, dword ptr [rax + 0x10]  ; 0x140005f45
    mov eax, r12d  ; 0x140005f49
    lea rcx, [rax + rax*4]  ; 0x140005f4c
    mov rax, qword ptr [r9 + 8]  ; 0x140005f50
    lea r8, [rdx + rcx*4]  ; 0x140005f54
    movups xmm0, xmmword ptr [r8 + rax]  ; 0x140005f58
    movsxd rcx, dword ptr [r8 + rax + 0x10]  ; 0x140005f5d
    mov dword ptr [rbp - 0x50], ecx  ; 0x140005f62
    movd eax, xmm0  ; 0x140005f65
    movups xmmword ptr [rbp - 0x60], xmm0  ; 0x140005f69
    cmp eax, r14d  ; 0x140005f6d
    jg 0x14000609c  ; 0x140005f70
    movq rax, xmm0  ; 0x140005f76
    shr rax, 0x20  ; 0x140005f7b
    cmp r14d, eax  ; 0x140005f7f
    jg 0x14000609c  ; 0x140005f82
    add rcx, qword ptr [rsi + 8]  ; 0x140005f88
    psrldq xmm0, 8  ; 0x140005f8c
    movq r13, xmm0  ; 0x140005f91
    mov qword ptr [rbp - 0x70], rcx  ; 0x140005f96
    shr r13, 0x20  ; 0x140005f9a
    test r13d, r13d  ; 0x140005f9e
    je 0x140006099  ; 0x140005fa1
    mov eax, r15d  ; 0x140005fa7
    lea rax, [rax + rax*4]  ; 0x140005faa
    movups xmm0, xmmword ptr [rcx + rax*4]  ; 0x140005fae
    movups xmmword ptr [rbp - 8], xmm0  ; 0x140005fb2
    mov eax, dword ptr [rcx + rax*4 + 0x10]  ; 0x140005fb6
    mov dword ptr [rbp + 8], eax  ; 0x140005fba
    call 0x140004d4c  ; 0x140005fbd
    mov rcx, qword ptr [rbx + 0x30]  ; 0x140005fc2
    add rax, 4  ; 0x140005fc6
    movsxd rdx, dword ptr [rcx + 0xc]  ; 0x140005fca
    add rax, rdx  ; 0x140005fce
    mov qword ptr [rsp + 0x70], rax  ; 0x140005fd1
    call 0x140004d4c  ; 0x140005fd6
    mov rcx, qword ptr [rbx + 0x30]  ; 0x140005fdb
    movsxd rdx, dword ptr [rcx + 0xc]  ; 0x140005fdf
    mov ecx, dword ptr [rax + rdx]  ; 0x140005fe3
    mov dword ptr [rsp + 0x64], ecx  ; 0x140005fe6
    test ecx, ecx  ; 0x140005fea
    jle 0x14000602a  ; 0x140005fec
    call 0x140004d4c  ; 0x140005fee
    mov rcx, qword ptr [rsp + 0x70]  ; 0x140005ff3
    mov r8, qword ptr [rbx + 0x30]  ; 0x140005ff8
    movsxd rcx, dword ptr [rcx]  ; 0x140005ffc
    add rax, rcx  ; 0x140005fff
    lea rcx, [rbp - 8]  ; 0x140006002
    mov rdx, rax  ; 0x140006006
    mov qword ptr [rbp - 0x78], rax  ; 0x140006009
    call 0x140006c9c  ; 0x14000600d
    test eax, eax  ; 0x140006012
    jne 0x14000603b  ; 0x140006014
    mov eax, dword ptr [rsp + 0x64]  ; 0x140006016
    add qword ptr [rsp + 0x70], 4  ; 0x14000601a
    dec eax  ; 0x140006020
    mov dword ptr [rsp + 0x64], eax  ; 0x140006022
    test eax, eax  ; 0x140006026
    jg 0x140005fee  ; 0x140006028
    inc r15d  ; 0x14000602a
    cmp r15d, r13d  ; 0x14000602d
    je 0x140006094  ; 0x140006030
    mov rcx, qword ptr [rbp - 0x70]  ; 0x140006032
    jmp 0x140005fa7  ; 0x140006036
    mov al, byte ptr [rbp + 0x98]  ; 0x14000603b
    mov r9, rsi  ; 0x140006041
    mov r8, qword ptr [rsp + 0x68]  ; 0x140006044
    mov rcx, rbx  ; 0x140006049
    mov rdx, qword ptr [rbp - 0x80]  ; 0x14000604c
    mov byte ptr [rsp + 0x58], al  ; 0x140006050
    mov al, byte ptr [rsp + 0x60]  ; 0x140006054
    mov byte ptr [rsp + 0x50], al  ; 0x140006058
    mov rax, qword ptr [rbp - 0x68]  ; 0x14000605c
    mov qword ptr [rsp + 0x48], rax  ; 0x140006060
    mov eax, dword ptr [rbp + 0xa0]  ; 0x140006065
    mov dword ptr [rsp + 0x40], eax  ; 0x14000606b
    lea rax, [rbp - 0x60]  ; 0x14000606f
    mov qword ptr [rsp + 0x38], rax  ; 0x140006073
    mov rax, qword ptr [rbp - 0x78]  ; 0x140006078
    mov qword ptr [rsp + 0x30], rax  ; 0x14000607c
    lea rax, [rbp - 8]  ; 0x140006081
    mov qword ptr [rsp + 0x28], rax  ; 0x140006085
    mov qword ptr [rsp + 0x20], rdi  ; 0x14000608a
    call 0x140005bbc  ; 0x14000608f
    mov r9, qword ptr [rsp + 0x78]  ; 0x140006094
    xor r15d, r15d  ; 0x140006099
    inc r12d  ; 0x14000609c
    cmp r12d, dword ptr [rbp - 0x10]  ; 0x14000609f
    jb 0x140005f3e  ; 0x1400060a3
    mov r12, qword ptr [rbp - 0x80]  ; 0x1400060a9
    mov eax, dword ptr [rdi]  ; 0x1400060ad
    and eax, 0x1fffffff  ; 0x1400060af
    cmp eax, 0x19930521  ; 0x1400060b4
    jb 0x1400061b9  ; 0x1400060b9
    cmp dword ptr [rdi + 0x20], r15d  ; 0x1400060bf
    je 0x1400060d3  ; 0x1400060c3
    call 0x140004d38  ; 0x1400060c5
    movsxd rcx, dword ptr [rdi + 0x20]  ; 0x1400060ca
    add rax, rcx  ; 0x1400060ce
    jne 0x1400060f4  ; 0x1400060d1
    mov eax, dword ptr [rdi + 0x24]  ; 0x1400060d3
    shr eax, 2  ; 0x1400060d6
    test al, 1  ; 0x1400060d9
    je 0x1400061b9  ; 0x1400060db
    mov rdx, rdi  ; 0x1400060e1
    mov rcx, rsi  ; 0x1400060e4
    call 0x140004460  ; 0x1400060e7
    test al, al  ; 0x1400060ec
    jne 0x1400061b9  ; 0x1400060ee
    mov eax, dword ptr [rdi + 0x24]  ; 0x1400060f4
    shr eax, 2  ; 0x1400060f7
    test al, 1  ; 0x1400060fa
    jne 0x14000620f  ; 0x1400060fc
    cmp dword ptr [rdi + 0x20], r15d  ; 0x140006102
    je 0x140006119  ; 0x140006106
    call 0x140004d38  ; 0x140006108
    mov rdx, rax  ; 0x14000610d
    movsxd rax, dword ptr [rdi + 0x20]  ; 0x140006110
    add rdx, rax  ; 0x140006114
    jmp 0x14000611c  ; 0x140006117
    mov rdx, r15  ; 0x140006119
    mov rcx, rbx  ; 0x14000611c
    call 0x1400081bc  ; 0x14000611f
    test al, al  ; 0x140006124
    jne 0x1400061b9  ; 0x140006126
    lea r9, [rbp - 0x78]  ; 0x14000612c
    mov r8, rdi  ; 0x140006130
    mov rdx, rsi  ; 0x140006133
    mov rcx, r12  ; 0x140006136
    call 0x14000452c  ; 0x140006139
    mov cl, byte ptr [rbp + 0x98]  ; 0x14000613e
    mov r9, rax  ; 0x140006144
    mov r8, qword ptr [rsp + 0x68]  ; 0x140006147
    mov rdx, rbx  ; 0x14000614c
    mov byte ptr [rsp + 0x50], cl  ; 0x14000614f
    or ecx, 0xffffffff  ; 0x140006153
    mov qword ptr [rsp + 0x48], rsi  ; 0x140006156
    mov qword ptr [rsp + 0x40], r15  ; 0x14000615b
    mov dword ptr [rsp + 0x38], ecx  ; 0x140006160
    mov dword ptr [rsp + 0x30], ecx  ; 0x140006164
    mov rcx, r12  ; 0x140006168
    mov qword ptr [rsp + 0x28], rdi  ; 0x14000616b
    mov qword ptr [rsp + 0x20], r15  ; 0x140006170
    call 0x1400048c0  ; 0x140006175
    jmp 0x1400061b9  ; 0x14000617a
    cmp dword ptr [rdi + 0xc], 0  ; 0x14000617c
    jbe 0x1400061b9  ; 0x140006180
    cmp byte ptr [rbp + 0x98], 0  ; 0x140006182
    jne 0x14000622c  ; 0x140006189
    mov eax, dword ptr [rbp + 0xa0]  ; 0x14000618f
    mov r9, rsi  ; 0x140006195
    mov qword ptr [rsp + 0x38], r13  ; 0x140006198
    mov r8, r15  ; 0x14000619d
    mov dword ptr [rsp + 0x30], eax  ; 0x1400061a0
    mov rdx, r12  ; 0x1400061a4
    mov dword ptr [rsp + 0x28], r14d  ; 0x1400061a7
    mov rcx, rbx  ; 0x1400061ac
    mov qword ptr [rsp + 0x20], rdi  ; 0x1400061af
    call 0x140006738  ; 0x1400061b4
    call 0x1400052e8  ; 0x1400061b9
    cmp qword ptr [rax + 0x38], 0  ; 0x1400061be
    jne 0x14000622c  ; 0x1400061c3
    mov rcx, qword ptr [rbp + 0x10]  ; 0x1400061c5
    xor rcx, rsp  ; 0x1400061c9
    call 0x1400033b0  ; 0x1400061cc
    add rsp, 0x128  ; 0x1400061d1
    pop r15  ; 0x1400061d8
    pop r14  ; 0x1400061da
    pop r13  ; 0x1400061dc
    pop r12  ; 0x1400061de
    pop rdi  ; 0x1400061e0
    pop rsi  ; 0x1400061e1
    pop rbx  ; 0x1400061e2
    pop rbp  ; 0x1400061e3
    ret  ; 0x1400061e4
    mov dl, 1  ; 0x1400061e5
    mov rcx, rbx  ; 0x1400061e7
    call 0x140005164  ; 0x1400061ea
; Function: func_1400061ef
func_1400061ef:
    lea rcx, [rbp - 0x60]  ; 0x1400061ef
    call 0x1400075ec  ; 0x1400061f3
    lea rdx, [rip + 0x21729]  ; 0x1400061f8
    lea rcx, [rbp - 0x60]  ; 0x1400061ff
    call 0x140004178  ; 0x140006203
    int3   ; 0x140006208
    call 0x14000e864  ; 0x140006209
    int3   ; 0x14000620e
    call 0x1400052e8  ; 0x14000620f
    mov qword ptr [rax + 0x20], rbx  ; 0x140006214
    call 0x1400052e8  ; 0x140006218
    mov rcx, qword ptr [rsp + 0x68]  ; 0x14000621d
    mov qword ptr [rax + 0x28], rcx  ; 0x140006222
    call 0x14000e864  ; 0x140006226
    int3   ; 0x14000622b
    call 0x14000e8f0  ; 0x14000622c
    int3   ; 0x140006231
    int3   ; 0x140006232
    int3   ; 0x140006233
    push rbp  ; 0x140006234
    push rbx  ; 0x140006236
    push rsi  ; 0x140006237
    push rdi  ; 0x140006238
    push r12  ; 0x140006239
    push r13  ; 0x14000623b
    push r14  ; 0x14000623d
    push r15  ; 0x14000623f
    lea rbp, [rsp - 0x88]  ; 0x140006241
    sub rsp, 0x188  ; 0x140006249
    mov rax, qword ptr [rip + 0x22da9]  ; 0x140006250
    xor rax, rsp  ; 0x140006257
    mov qword ptr [rbp + 0x70], rax  ; 0x14000625a
    mov r14, qword ptr [rbp + 0xf0]  ; 0x14000625e
    mov r15, rdx  ; 0x140006265
    mov r12, qword ptr [rbp + 0x108]  ; 0x140006268
    mov rbx, rcx  ; 0x14000626f
    mov qword ptr [rsp + 0x78], rdx  ; 0x140006272
    mov rcx, r14  ; 0x140006277
    mov rdx, r9  ; 0x14000627a
    mov qword ptr [rbp - 0x60], r12  ; 0x14000627d
    mov rsi, r9  ; 0x140006281
    mov byte ptr [rsp + 0x60], 0  ; 0x140006284
    mov r13, r8  ; 0x140006289
    call 0x1400054d4  ; 0x14000628c
    cmp dword ptr [rsi + 0x48], 0  ; 0x140006291
    mov edi, eax  ; 0x140006295
    je 0x1400062b0  ; 0x140006297
    call 0x1400052e8  ; 0x140006299
    cmp dword ptr [rax + 0x78], -2  ; 0x14000629e
    jne 0x14000672f  ; 0x1400062a2
    mov edi, dword ptr [rsi + 0x48]  ; 0x1400062a8
    sub edi, 2  ; 0x1400062ab
    jmp 0x1400062cf  ; 0x1400062ae
    call 0x1400052e8  ; 0x1400062b0
    cmp dword ptr [rax + 0x78], -2  ; 0x1400062b5
    je 0x1400062cf  ; 0x1400062b9
    call 0x1400052e8  ; 0x1400062bb
    mov edi, dword ptr [rax + 0x78]  ; 0x1400062c0
    call 0x1400052e8  ; 0x1400062c3
    mov dword ptr [rax + 0x78], 0xfffffffe  ; 0x1400062c8
    cmp edi, -1  ; 0x1400062cf
    jl 0x14000672f  ; 0x1400062d2
    cmp dword ptr [r14 + 8], 0  ; 0x1400062d8
    lea r8, [rip - 0x62e4]  ; 0x1400062dd
    je 0x14000630f  ; 0x1400062e4
    movsxd rdx, dword ptr [r14 + 8]  ; 0x1400062e6
    add rdx, qword ptr [rsi + 8]  ; 0x1400062ea
    movzx ecx, byte ptr [rdx]  ; 0x1400062ee
    and ecx, 0xf  ; 0x1400062f1
    movsx rax, byte ptr [rcx + r8 + 0x1d450]  ; 0x1400062f4
    mov cl, byte ptr [rcx + r8 + 0x1d460]  ; 0x1400062fd
    sub rdx, rax  ; 0x140006305
    mov eax, dword ptr [rdx - 4]  ; 0x140006308
    shr eax, cl  ; 0x14000630b
    jmp 0x140006311  ; 0x14000630d
    xor eax, eax  ; 0x14000630f
    cmp edi, eax  ; 0x140006311
    jge 0x14000672f  ; 0x140006313
    cmp dword ptr [rbx], 0xe06d7363  ; 0x140006319
    jne 0x1400063e9  ; 0x14000631f
    cmp dword ptr [rbx + 0x18], 4  ; 0x140006325
    jne 0x1400063e9  ; 0x140006329
    mov eax, dword ptr [rbx + 0x20]  ; 0x14000632f
    sub eax, 0x19930520  ; 0x140006332
    cmp eax, 2  ; 0x140006337
    ja 0x1400063e9  ; 0x14000633a
    cmp qword ptr [rbx + 0x30], 0  ; 0x140006340
    jne 0x1400063e9  ; 0x140006345
    call 0x1400052e8  ; 0x14000634b
    cmp qword ptr [rax + 0x20], 0  ; 0x140006350
    je 0x1400066cd  ; 0x140006355
    call 0x1400052e8  ; 0x14000635b
    mov rbx, qword ptr [rax + 0x20]  ; 0x140006360
    call 0x1400052e8  ; 0x140006364
    mov rcx, qword ptr [rbx + 0x38]  ; 0x140006369
    mov byte ptr [rsp + 0x60], 1  ; 0x14000636d
    mov r13, qword ptr [rax + 0x28]  ; 0x140006372
    call 0x140004d78  ; 0x140006376
    cmp dword ptr [rbx], 0xe06d7363  ; 0x14000637b
    jne 0x1400063a1  ; 0x140006381
    cmp dword ptr [rbx + 0x18], 4  ; 0x140006383
    jne 0x1400063a1  ; 0x140006387
    mov eax, dword ptr [rbx + 0x20]  ; 0x140006389
    sub eax, 0x19930520  ; 0x14000638c
    cmp eax, 2  ; 0x140006391
    ja 0x1400063a1  ; 0x140006394
    cmp qword ptr [rbx + 0x30], 0  ; 0x140006396
    je 0x14000672f  ; 0x14000639b
    call 0x1400052e8  ; 0x1400063a1
    cmp qword ptr [rax + 0x38], 0  ; 0x1400063a6
    je 0x1400063e9  ; 0x1400063ab
    call 0x1400052e8  ; 0x1400063ad
    mov r15, qword ptr [rax + 0x38]  ; 0x1400063b2
    call 0x1400052e8  ; 0x1400063b6
    mov rdx, r15  ; 0x1400063bb
    mov rcx, rbx  ; 0x1400063be
    and qword ptr [rax + 0x38], 0  ; 0x1400063c1
    call 0x1400081bc  ; 0x1400063c6
    test al, al  ; 0x1400063cb
    jne 0x1400063e4  ; 0x1400063cd
    mov rcx, r15  ; 0x1400063cf
    call 0x1400082ac  ; 0x1400063d2
    test al, al  ; 0x1400063d7
    je 0x140006711  ; 0x1400063d9
    jmp 0x1400066ed  ; 0x1400063df
    mov r15, qword ptr [rsp + 0x78]  ; 0x1400063e4
    mov r8, qword ptr [rsi + 8]  ; 0x1400063e9
    lea rcx, [rbp - 0x10]  ; 0x1400063ed
    mov rdx, r14  ; 0x1400063f1
    call 0x1400074cc  ; 0x1400063f4
    cmp dword ptr [rbx], 0xe06d7363  ; 0x1400063f9
    jne 0x140006685  ; 0x1400063ff
    cmp dword ptr [rbx + 0x18], 4  ; 0x140006405
    jne 0x140006685  ; 0x140006409
    mov eax, dword ptr [rbx + 0x20]  ; 0x14000640f
    sub eax, 0x19930520  ; 0x140006412
    cmp eax, 2  ; 0x140006417
    ja 0x140006685  ; 0x14000641a
    cmp dword ptr [rbp - 0x10], 0  ; 0x140006420
    jbe 0x14000666a  ; 0x140006424
    mov eax, dword ptr [rbp + 0x100]  ; 0x14000642a
    lea rdx, [rbp - 0x10]  ; 0x140006430
    mov dword ptr [rsp + 0x28], eax  ; 0x140006434
    lea rcx, [rbp - 0x58]  ; 0x140006438
    mov r9, rsi  ; 0x14000643c
    mov qword ptr [rsp + 0x20], r14  ; 0x14000643f
    mov r8d, edi  ; 0x140006444
    call 0x140004754  ; 0x140006447
    movups xmm1, xmmword ptr [rbp - 0x58]  ; 0x14000644c
    movdqa xmm0, xmm1  ; 0x140006450
    psrldq xmm0, 8  ; 0x140006454
    movd eax, xmm0  ; 0x140006459
    movdqu xmmword ptr [rbp - 0x78], xmm1  ; 0x14000645d
    cmp eax, dword ptr [rbp - 0x40]  ; 0x140006462
    jae 0x14000666a  ; 0x140006465
    mov eax, dword ptr [rbp - 0x70]  ; 0x14000646b
    movq r15, xmm1  ; 0x14000646e
    mov qword ptr [rbp - 0x80], r15  ; 0x140006473
    mov dword ptr [rsp + 0x68], eax  ; 0x140006477
    movups xmm0, xmmword ptr [r15 + 0x18]  ; 0x14000647b
    movq rax, xmm0  ; 0x140006480
    movups xmmword ptr [rbp - 0x78], xmm0  ; 0x140006485
    cmp eax, edi  ; 0x140006489
    jg 0x1400065c5  ; 0x14000648b
    shr rax, 0x20  ; 0x140006491
    cmp edi, eax  ; 0x140006495
    jg 0x1400065c5  ; 0x140006497
    mov r9, qword ptr [rsi + 0x10]  ; 0x14000649d
    lea rdx, [rbp - 0x78]  ; 0x1400064a1
    mov r8, qword ptr [rsi + 8]  ; 0x1400064a5
    lea rcx, [rbp + 0x20]  ; 0x1400064a9
    mov r9d, dword ptr [r9]  ; 0x1400064ad
    call 0x140007448  ; 0x1400064b0
    mov eax, dword ptr [rbp + 0x20]  ; 0x1400064b5
    xor r12d, r12d  ; 0x1400064b8
    mov dword ptr [rsp + 0x64], r12d  ; 0x1400064bb
    mov dword ptr [rsp + 0x6c], eax  ; 0x1400064c0
    test eax, eax  ; 0x1400064c4
    je 0x1400065c5  ; 0x1400064c6
    movups xmm0, xmmword ptr [rbp + 0x38]  ; 0x1400064cc
    movups xmm1, xmmword ptr [rbp + 0x48]  ; 0x1400064d0
    movups xmmword ptr [rbp - 0x38], xmm0  ; 0x1400064d4
    movsd xmm0, qword ptr [rbp + 0x58]  ; 0x1400064d8
    movsd qword ptr [rbp - 0x18], xmm0  ; 0x1400064dd
    movups xmmword ptr [rbp - 0x28], xmm1  ; 0x1400064e2
    call 0x140004d4c  ; 0x1400064e6
    mov rcx, qword ptr [rbx + 0x30]  ; 0x1400064eb
    add rax, 4  ; 0x1400064ef
    movsxd rdx, dword ptr [rcx + 0xc]  ; 0x1400064f3
    add rax, rdx  ; 0x1400064f7
    mov qword ptr [rsp + 0x70], rax  ; 0x1400064fa
    call 0x140004d4c  ; 0x1400064ff
    mov rcx, qword ptr [rbx + 0x30]  ; 0x140006504
    movsxd rdx, dword ptr [rcx + 0xc]  ; 0x140006508
    mov r15d, dword ptr [rax + rdx]  ; 0x14000650c
    test r15d, r15d  ; 0x140006510
    jle 0x14000654f  ; 0x140006513
    call 0x140004d4c  ; 0x140006515
    mov r8, qword ptr [rbx + 0x30]  ; 0x14000651a
    mov r12, rax  ; 0x14000651e
    mov rax, qword ptr [rsp + 0x70]  ; 0x140006521
    movsxd rcx, dword ptr [rax]  ; 0x140006526
    add r12, rcx  ; 0x140006529
    lea rcx, [rbp - 0x38]  ; 0x14000652c
    mov rdx, r12  ; 0x140006530
    call 0x140006ddc  ; 0x140006533
    test eax, eax  ; 0x140006538
    jne 0x14000656d  ; 0x14000653a
    add qword ptr [rsp + 0x70], 4  ; 0x14000653c
    dec r15d  ; 0x140006542
    test r15d, r15d  ; 0x140006545
    jg 0x140006515  ; 0x140006548
    mov r12d, dword ptr [rsp + 0x64]  ; 0x14000654a
    lea rcx, [rbp + 0x20]  ; 0x14000654f
    call 0x140007a48  ; 0x140006553
    inc r12d  ; 0x140006558
    mov dword ptr [rsp + 0x64], r12d  ; 0x14000655b
    cmp r12d, dword ptr [rsp + 0x6c]  ; 0x140006560
    jne 0x1400064cc  ; 0x140006565
    jmp 0x1400065c1  ; 0x14000656b
    mov al, byte ptr [rbp + 0xf8]  ; 0x14000656d
    mov r9, rsi  ; 0x140006573
    mov rdx, qword ptr [rsp + 0x78]  ; 0x140006576
    mov r8, r13  ; 0x14000657b
    mov byte ptr [rsp + 0x58], al  ; 0x14000657e
    mov rcx, rbx  ; 0x140006582
    mov al, byte ptr [rsp + 0x60]  ; 0x140006585
    mov byte ptr [rsp + 0x50], al  ; 0x140006589
    mov rax, qword ptr [rbp - 0x60]  ; 0x14000658d
    mov qword ptr [rsp + 0x48], rax  ; 0x140006591
    mov eax, dword ptr [rbp + 0x100]  ; 0x140006596
    mov dword ptr [rsp + 0x40], eax  ; 0x14000659c
    lea rax, [rbp - 0x78]  ; 0x1400065a0
    mov qword ptr [rsp + 0x38], rax  ; 0x1400065a4
    lea rax, [rbp - 0x38]  ; 0x1400065a9
    mov qword ptr [rsp + 0x30], r12  ; 0x1400065ad
    mov qword ptr [rsp + 0x28], rax  ; 0x1400065b2
    mov qword ptr [rsp + 0x20], r14  ; 0x1400065b7
    call 0x140005c90  ; 0x1400065bc
    mov r15, qword ptr [rbp - 0x80]  ; 0x1400065c1
    mov r8, qword ptr [r15 + 8]  ; 0x1400065c5
    lea rdx, [rip - 0x65d0]  ; 0x1400065c9
    movzx ecx, byte ptr [r8]  ; 0x1400065d0
    and ecx, 0xf  ; 0x1400065d4
    movsx rax, byte ptr [rcx + rdx + 0x1d450]  ; 0x1400065d7
    mov cl, byte ptr [rcx + rdx + 0x1d460]  ; 0x1400065e0
    sub r8, rax  ; 0x1400065e7
    mov eax, dword ptr [r8 - 4]  ; 0x1400065ea
    shr eax, cl  ; 0x1400065ee
    mov qword ptr [r15 + 8], r8  ; 0x1400065f0
    mov dword ptr [r15 + 0x18], eax  ; 0x1400065f4
    movzx ecx, byte ptr [r8]  ; 0x1400065f8
    and ecx, 0xf  ; 0x1400065fc
    movsx rax, byte ptr [rcx + rdx + 0x1d450]  ; 0x1400065ff
    mov cl, byte ptr [rcx + rdx + 0x1d460]  ; 0x140006608
    sub r8, rax  ; 0x14000660f
    mov eax, dword ptr [r8 - 4]  ; 0x140006612
    shr eax, cl  ; 0x140006616
    mov qword ptr [r15 + 8], r8  ; 0x140006618
    mov dword ptr [r15 + 0x1c], eax  ; 0x14000661c
    movzx ecx, byte ptr [r8]  ; 0x140006620
    and ecx, 0xf  ; 0x140006624
    movsx rax, byte ptr [rcx + rdx + 0x1d450]  ; 0x140006627
    mov cl, byte ptr [rcx + rdx + 0x1d460]  ; 0x140006630
    sub r8, rax  ; 0x140006637
    mov eax, dword ptr [r8 - 4]  ; 0x14000663a
    shr eax, cl  ; 0x14000663e
    mov ecx, dword ptr [rsp + 0x68]  ; 0x140006640
    mov dword ptr [r15 + 0x20], eax  ; 0x140006644
    inc ecx  ; 0x140006648
    mov qword ptr [r15 + 8], r8  ; 0x14000664a
    lea rax, [r8 + 4]  ; 0x14000664e
    mov edx, dword ptr [r8]  ; 0x140006652
    mov qword ptr [r15 + 8], rax  ; 0x140006655
    mov dword ptr [r15 + 0x24], edx  ; 0x140006659
    mov dword ptr [rsp + 0x68], ecx  ; 0x14000665d
    cmp ecx, dword ptr [rbp - 0x40]  ; 0x140006661
    jb 0x14000647b  ; 0x140006664
    test byte ptr [r14], 0x40  ; 0x14000666a
    je 0x1400066c1  ; 0x14000666e
    mov rdx, r14  ; 0x140006670
    mov rcx, rsi  ; 0x140006673
    call 0x14000448c  ; 0x140006676
    test al, al  ; 0x14000667b
    je 0x140006717  ; 0x14000667d
    jmp 0x1400066c1  ; 0x140006683
    cmp dword ptr [rbp - 0x10], 0  ; 0x140006685
    jbe 0x1400066c1  ; 0x140006689
    cmp byte ptr [rbp + 0xf8], 0  ; 0x14000668b
    jne 0x14000672f  ; 0x140006692
    mov eax, dword ptr [rbp + 0x100]  ; 0x140006698
    mov r9, rsi  ; 0x14000669e
    mov qword ptr [rsp + 0x38], r12  ; 0x1400066a1
    mov r8, r13  ; 0x1400066a6
    mov dword ptr [rsp + 0x30], eax  ; 0x1400066a9
    mov rdx, r15  ; 0x1400066ad
    mov dword ptr [rsp + 0x28], edi  ; 0x1400066b0
    mov rcx, rbx  ; 0x1400066b4
    mov qword ptr [rsp + 0x20], r14  ; 0x1400066b7
    call 0x1400069a8  ; 0x1400066bc
    call 0x1400052e8  ; 0x1400066c1
    cmp qword ptr [rax + 0x38], 0  ; 0x1400066c6
    jne 0x14000672f  ; 0x1400066cb
    mov rcx, qword ptr [rbp + 0x70]  ; 0x1400066cd
    xor rcx, rsp  ; 0x1400066d1
    call 0x1400033b0  ; 0x1400066d4
    add rsp, 0x188  ; 0x1400066d9
    pop r15  ; 0x1400066e0
    pop r14  ; 0x1400066e2
    pop r13  ; 0x1400066e4
    pop r12  ; 0x1400066e6
    pop rdi  ; 0x1400066e8
    pop rsi  ; 0x1400066e9
    pop rbx  ; 0x1400066ea
    pop rbp  ; 0x1400066eb
    ret  ; 0x1400066ec
    mov dl, 1  ; 0x1400066ed
    mov rcx, rbx  ; 0x1400066ef
    call 0x140005164  ; 0x1400066f2
; Function: func_1400066f7
func_1400066f7:
    lea rcx, [rbp - 0x78]  ; 0x1400066f7
    call 0x1400075ec  ; 0x1400066fb
    lea rdx, [rip + 0x21221]  ; 0x140006700
    lea rcx, [rbp - 0x78]  ; 0x140006707
    call 0x140004178  ; 0x14000670b
    int3   ; 0x140006710
    call 0x14000e864  ; 0x140006711
    int3   ; 0x140006716
    call 0x1400052e8  ; 0x140006717
    mov qword ptr [rax + 0x20], rbx  ; 0x14000671c
    call 0x1400052e8  ; 0x140006720
    mov qword ptr [rax + 0x28], r13  ; 0x140006725
    call 0x14000e864  ; 0x140006729
    int3   ; 0x14000672e
    call 0x14000e8f0  ; 0x14000672f
    int3   ; 0x140006734
    int3   ; 0x140006735
    int3   ; 0x140006736
    int3   ; 0x140006737
    mov qword ptr [rsp + 0x20], rbx  ; 0x140006738
    mov qword ptr [rsp + 0x18], r8  ; 0x14000673d
    mov qword ptr [rsp + 0x10], rdx  ; 0x140006742
    push rbp  ; 0x140006747
    push rsi  ; 0x140006748
    push rdi  ; 0x140006749
    push r12  ; 0x14000674a
    push r13  ; 0x14000674c
    push r14  ; 0x14000674e
    push r15  ; 0x140006750
    sub rsp, 0xc0  ; 0x140006752
    cmp dword ptr [rcx], 0x80000003  ; 0x140006759
    mov rbp, r9  ; 0x14000675f
    mov r12, r8  ; 0x140006762
    mov r14, rdx  ; 0x140006765
    mov rsi, rcx  ; 0x140006768
    je 0x140006984  ; 0x14000676b
    call 0x1400052e8  ; 0x140006771
    mov r13d, dword ptr [rsp + 0x130]  ; 0x140006776
    mov r15d, dword ptr [rsp + 0x128]  ; 0x14000677e
    mov rdi, qword ptr [rsp + 0x120]  ; 0x140006786
    cmp qword ptr [rax + 0x10], 0  ; 0x14000678e
    je 0x1400067f0  ; 0x140006793
    xor ecx, ecx  ; 0x140006795
    call qword ptr [rip + 0x1691b]  ; 0x140006797
    mov rbx, rax  ; 0x14000679d
    call 0x1400052e8  ; 0x1400067a0
    cmp qword ptr [rax + 0x10], rbx  ; 0x1400067a5
    je 0x1400067f0  ; 0x1400067a9
    cmp dword ptr [rsi], 0xe0434f4d  ; 0x1400067ab
    je 0x1400067f0  ; 0x1400067b1
    cmp dword ptr [rsi], 0xe0434352  ; 0x1400067b3
    je 0x1400067f0  ; 0x1400067b9
    mov rax, qword ptr [rsp + 0x138]  ; 0x1400067bb
    mov r9, rbp  ; 0x1400067c3
    mov dword ptr [rsp + 0x38], r15d  ; 0x1400067c6
    mov r8, r12  ; 0x1400067cb
    mov qword ptr [rsp + 0x30], rax  ; 0x1400067ce
    mov rdx, r14  ; 0x1400067d3
    mov dword ptr [rsp + 0x28], r13d  ; 0x1400067d6
    mov rcx, rsi  ; 0x1400067db
    mov qword ptr [rsp + 0x20], rdi  ; 0x1400067de
    call 0x140004220  ; 0x1400067e3
    test eax, eax  ; 0x1400067e8
    jne 0x140006984  ; 0x1400067ea
    mov rax, qword ptr [rbp + 8]  ; 0x1400067f0
    mov qword ptr [rsp + 0x68], rax  ; 0x1400067f4
    mov qword ptr [rsp + 0x60], rdi  ; 0x1400067f9
    cmp dword ptr [rdi + 0xc], 0  ; 0x1400067fe
    jbe 0x14000699f  ; 0x140006802
    mov dword ptr [rsp + 0x28], r13d  ; 0x140006808
    lea rdx, [rsp + 0x60]  ; 0x14000680d
    mov r9, rbp  ; 0x140006812
    mov qword ptr [rsp + 0x20], rdi  ; 0x140006815
    mov r8d, r15d  ; 0x14000681a
    lea rcx, [rsp + 0x98]  ; 0x14000681d
    call 0x140004620  ; 0x140006825
    movups xmm1, xmmword ptr [rsp + 0x98]  ; 0x14000682a
    movdqa xmm0, xmm1  ; 0x140006832
    psrldq xmm0, 8  ; 0x140006836
    movd eax, xmm0  ; 0x14000683b
    movdqu xmmword ptr [rsp + 0x70], xmm1  ; 0x14000683f
    cmp eax, dword ptr [rsp + 0xb0]  ; 0x140006845
    jae 0x140006984  ; 0x14000684c
    mov r14d, dword ptr [rsp + 0x78]  ; 0x140006852
    movq r9, xmm1  ; 0x140006857
    mov qword ptr [rsp + 0x100], r9  ; 0x14000685c
    mov rax, qword ptr [rsp + 0x70]  ; 0x140006864
    mov rax, qword ptr [rax]  ; 0x140006869
    movsxd rdx, dword ptr [rax + 0x10]  ; 0x14000686c
    mov eax, r14d  ; 0x140006870
    lea rcx, [rax + rax*4]  ; 0x140006873
    mov rax, qword ptr [r9 + 8]  ; 0x140006877
    lea r8, [rdx + rcx*4]  ; 0x14000687b
    movups xmm0, xmmword ptr [r8 + rax]  ; 0x14000687f
    movsxd rdx, dword ptr [r8 + rax + 0x10]  ; 0x140006884
    mov dword ptr [rsp + 0x90], edx  ; 0x140006889
    movd eax, xmm0  ; 0x140006890
    movups xmmword ptr [rsp + 0x80], xmm0  ; 0x140006894
    cmp eax, r15d  ; 0x14000689c
    jg 0x140006963  ; 0x14000689f
    movq rax, xmm0  ; 0x1400068a5
    shr rax, 0x20  ; 0x1400068aa
    cmp r15d, eax  ; 0x1400068ae
    jg 0x140006963  ; 0x1400068b1
    mov rbx, qword ptr [rbp + 8]  ; 0x1400068b7
    add rbx, -0x14  ; 0x1400068bb
    psrldq xmm0, 8  ; 0x1400068bf
    movq rax, xmm0  ; 0x1400068c4
    shr rax, 0x20  ; 0x1400068c9
    lea rcx, [rax + rax*4]  ; 0x1400068cd
    lea rdx, [rdx + rcx*4]  ; 0x1400068d1
    add rbx, rdx  ; 0x1400068d5
    cmp dword ptr [rbx + 4], 0  ; 0x1400068d8
    je 0x14000690f  ; 0x1400068dc
    movsxd r12, dword ptr [rbx + 4]  ; 0x1400068de
    call 0x140004d38  ; 0x1400068e2
    add rax, r12  ; 0x1400068e7
    je 0x140006907  ; 0x1400068ea
    test r12d, r12d  ; 0x1400068ec
    je 0x1400068ff  ; 0x1400068ef
    call 0x140004d38  ; 0x1400068f1
    movsxd rcx, dword ptr [rbx + 4]  ; 0x1400068f6
    add rax, rcx  ; 0x1400068fa
    jmp 0x140006901  ; 0x1400068fd
    xor eax, eax  ; 0x1400068ff
    cmp byte ptr [rax + 0x10], 0  ; 0x140006901
    jne 0x140006963  ; 0x140006905
    mov r12, qword ptr [rsp + 0x110]  ; 0x140006907
    test byte ptr [rbx], 0x40  ; 0x14000690f
    jne 0x140006963  ; 0x140006912
    mov rax, qword ptr [rsp + 0x138]  ; 0x140006914
    mov r9, rbp  ; 0x14000691c
    mov rdx, qword ptr [rsp + 0x108]  ; 0x14000691f
    mov r8, r12  ; 0x140006927
    mov byte ptr [rsp + 0x58], 0  ; 0x14000692a
    mov rcx, rsi  ; 0x14000692f
    mov byte ptr [rsp + 0x50], 1  ; 0x140006932
    mov qword ptr [rsp + 0x48], rax  ; 0x140006937
    lea rax, [rsp + 0x80]  ; 0x14000693c
    mov dword ptr [rsp + 0x40], r13d  ; 0x140006944
    mov qword ptr [rsp + 0x38], rax  ; 0x140006949
    and qword ptr [rsp + 0x30], 0  ; 0x14000694e
    mov qword ptr [rsp + 0x28], rbx  ; 0x140006954
    mov qword ptr [rsp + 0x20], rdi  ; 0x140006959
    call 0x140005bbc  ; 0x14000695e
    mov r12, qword ptr [rsp + 0x110]  ; 0x140006963
    inc r14d  ; 0x14000696b
    mov r9, qword ptr [rsp + 0x100]  ; 0x14000696e
    cmp r14d, dword ptr [rsp + 0xb0]  ; 0x140006976
    jb 0x140006864  ; 0x14000697e
    mov rbx, qword ptr [rsp + 0x118]  ; 0x140006984
    add rsp, 0xc0  ; 0x14000698c
    pop r15  ; 0x140006993
    pop r14  ; 0x140006995
    pop r13  ; 0x140006997
    pop r12  ; 0x140006999
    pop rdi  ; 0x14000699b
    pop rsi  ; 0x14000699c
    pop rbp  ; 0x14000699d
    ret  ; 0x14000699e
    call 0x14000e8f0  ; 0x14000699f
    int3   ; 0x1400069a4
    int3   ; 0x1400069a5
    int3   ; 0x1400069a6
    int3   ; 0x1400069a7
; Function: func_1400069a8
func_1400069a8:
    push rbp  ; 0x1400069a8
    push rbx  ; 0x1400069aa
    push rsi  ; 0x1400069ab
    push rdi  ; 0x1400069ac
    push r12  ; 0x1400069ad
    push r13  ; 0x1400069af
    push r14  ; 0x1400069b1
    push r15  ; 0x1400069b3
    lea rbp, [rsp - 0x38]  ; 0x1400069b5
    sub rsp, 0x138  ; 0x1400069ba
    mov rax, qword ptr [rip + 0x22638]  ; 0x1400069c1
    xor rax, rsp  ; 0x1400069c8
    mov qword ptr [rbp + 0x28], rax  ; 0x1400069cb
    cmp dword ptr [rcx], 0x80000003  ; 0x1400069cf
    mov rdi, r9  ; 0x1400069d5
    mov rax, qword ptr [rbp + 0xb8]  ; 0x1400069d8
    mov r13, rdx  ; 0x1400069df
    mov r14, qword ptr [rbp + 0xa0]  ; 0x1400069e2
    mov rsi, rcx  ; 0x1400069e9
    mov qword ptr [rsp + 0x70], rax  ; 0x1400069ec
    mov qword ptr [rsp + 0x78], r8  ; 0x1400069f1
    je 0x140006c76  ; 0x1400069f6
    call 0x1400052e8  ; 0x1400069fc
    mov r12d, dword ptr [rbp + 0xb0]  ; 0x140006a01
    mov r15d, dword ptr [rbp + 0xa8]  ; 0x140006a08
    cmp qword ptr [rax + 0x10], 0  ; 0x140006a0f
    je 0x140006a70  ; 0x140006a14
    xor ecx, ecx  ; 0x140006a16
    call qword ptr [rip + 0x1669a]  ; 0x140006a18
    mov rbx, rax  ; 0x140006a1e
    call 0x1400052e8  ; 0x140006a21
    cmp qword ptr [rax + 0x10], rbx  ; 0x140006a26
    je 0x140006a70  ; 0x140006a2a
    cmp dword ptr [rsi], 0xe0434f4d  ; 0x140006a2c
    je 0x140006a70  ; 0x140006a32
    cmp dword ptr [rsi], 0xe0434352  ; 0x140006a34
    je 0x140006a70  ; 0x140006a3a
    mov rax, qword ptr [rsp + 0x70]  ; 0x140006a3c
    mov r9, rdi  ; 0x140006a41
    mov r8, qword ptr [rsp + 0x78]  ; 0x140006a44
    mov rdx, r13  ; 0x140006a49
    mov dword ptr [rsp + 0x38], r15d  ; 0x140006a4c
    mov rcx, rsi  ; 0x140006a51
    mov qword ptr [rsp + 0x30], rax  ; 0x140006a54
    mov dword ptr [rsp + 0x28], r12d  ; 0x140006a59
    mov qword ptr [rsp + 0x20], r14  ; 0x140006a5e
    call 0x140004274  ; 0x140006a63
    test eax, eax  ; 0x140006a68
    jne 0x140006c76  ; 0x140006a6a
    mov r8, qword ptr [rdi + 8]  ; 0x140006a70
    lea rcx, [rbp]  ; 0x140006a74
    mov rdx, r14  ; 0x140006a78
    call 0x1400074cc  ; 0x140006a7b
    cmp dword ptr [rbp], 0  ; 0x140006a80
    jbe 0x140006c96  ; 0x140006a84
    mov dword ptr [rsp + 0x28], r12d  ; 0x140006a8a
    lea rdx, [rbp]  ; 0x140006a8f
    mov r9, rdi  ; 0x140006a93
    mov qword ptr [rsp + 0x20], r14  ; 0x140006a96
    mov r8d, r15d  ; 0x140006a9b
    lea rcx, [rbp - 0x70]  ; 0x140006a9e
    call 0x140004754  ; 0x140006aa2
    movups xmm1, xmmword ptr [rbp - 0x70]  ; 0x140006aa7
    movdqa xmm0, xmm1  ; 0x140006aab
    psrldq xmm0, 8  ; 0x140006aaf
    movd eax, xmm0  ; 0x140006ab4
    movdqu xmmword ptr [rbp - 0x80], xmm1  ; 0x140006ab8
    cmp eax, dword ptr [rbp - 0x58]  ; 0x140006abd
    jae 0x140006c76  ; 0x140006ac0
    mov eax, dword ptr [rbp - 0x78]  ; 0x140006ac6
    lea r9, [rip - 0x6ad0]  ; 0x140006ac9
    movq r8, xmm1  ; 0x140006ad0
    mov dword ptr [rsp + 0x60], eax  ; 0x140006ad5
    mov qword ptr [rsp + 0x68], r8  ; 0x140006ad9
    movups xmm0, xmmword ptr [r8 + 0x18]  ; 0x140006ade
    movq rax, xmm0  ; 0x140006ae3
    movups xmmword ptr [rbp - 0x80], xmm0  ; 0x140006ae8
    cmp eax, r15d  ; 0x140006aec
    jg 0x140006bdc  ; 0x140006aef
    shr rax, 0x20  ; 0x140006af5
    cmp r15d, eax  ; 0x140006af9
    jg 0x140006bdc  ; 0x140006afc
    mov r9, qword ptr [rdi + 0x10]  ; 0x140006b02
    lea rdx, [rbp - 0x80]  ; 0x140006b06
    mov r8, qword ptr [rdi + 8]  ; 0x140006b0a
    lea rcx, [rbp - 0x50]  ; 0x140006b0e
    mov r9d, dword ptr [r9]  ; 0x140006b12
    call 0x140007448  ; 0x140006b15
    mov rax, qword ptr [rbp - 0x40]  ; 0x140006b1a
    lea rcx, [rbp - 0x50]  ; 0x140006b1e
    mov qword ptr [rbp - 0x48], rax  ; 0x140006b22
    call 0x140007a48  ; 0x140006b26
    mov rax, qword ptr [rbp - 0x40]  ; 0x140006b2b
    lea rcx, [rbp - 0x50]  ; 0x140006b2f
    mov ebx, dword ptr [rbp - 0x50]  ; 0x140006b33
    mov qword ptr [rbp - 0x48], rax  ; 0x140006b36
    call 0x140007a48  ; 0x140006b3a
    sub ebx, 1  ; 0x140006b3f
    je 0x140006b53  ; 0x140006b42
    lea rcx, [rbp - 0x50]  ; 0x140006b44
    call 0x140007a48  ; 0x140006b48
    sub rbx, 1  ; 0x140006b4d
    jne 0x140006b44  ; 0x140006b51
    cmp dword ptr [rbp - 0x30], 0  ; 0x140006b53
    je 0x140006b81  ; 0x140006b57
    call 0x140004d38  ; 0x140006b59
    movsxd rdx, dword ptr [rbp - 0x30]  ; 0x140006b5e
    add rax, rdx  ; 0x140006b62
    je 0x140006b81  ; 0x140006b65
    test edx, edx  ; 0x140006b67
    je 0x140006b79  ; 0x140006b69
    call 0x140004d38  ; 0x140006b6b
    movsxd rcx, dword ptr [rbp - 0x30]  ; 0x140006b70
    add rax, rcx  ; 0x140006b74
    jmp 0x140006b7b  ; 0x140006b77
    xor eax, eax  ; 0x140006b79
    cmp byte ptr [rax + 0x10], 0  ; 0x140006b7b
    jne 0x140006bd0  ; 0x140006b7f
    test byte ptr [rbp - 0x34], 0x40  ; 0x140006b81
    jne 0x140006bd0  ; 0x140006b85
    mov rax, qword ptr [rsp + 0x70]  ; 0x140006b87
    mov r9, rdi  ; 0x140006b8c
    mov r8, qword ptr [rsp + 0x78]  ; 0x140006b8f
    mov rdx, r13  ; 0x140006b94
    mov byte ptr [rsp + 0x58], 0  ; 0x140006b97
    mov rcx, rsi  ; 0x140006b9c
    mov byte ptr [rsp + 0x50], 1  ; 0x140006b9f
    mov qword ptr [rsp + 0x48], rax  ; 0x140006ba4
    lea rax, [rbp - 0x80]  ; 0x140006ba9
    mov dword ptr [rsp + 0x40], r12d  ; 0x140006bad
    mov qword ptr [rsp + 0x38], rax  ; 0x140006bb2
    lea rax, [rbp - 0x38]  ; 0x140006bb7
    and qword ptr [rsp + 0x30], 0  ; 0x140006bbb
    mov qword ptr [rsp + 0x28], rax  ; 0x140006bc1
    mov qword ptr [rsp + 0x20], r14  ; 0x140006bc6
    call 0x140005c90  ; 0x140006bcb
    mov r8, qword ptr [rsp + 0x68]  ; 0x140006bd0
    lea r9, [rip - 0x6bdc]  ; 0x140006bd5
    mov rdx, qword ptr [r8 + 8]  ; 0x140006bdc
    movzx ecx, byte ptr [rdx]  ; 0x140006be0
    and ecx, 0xf  ; 0x140006be3
    movsx rax, byte ptr [rcx + r9 + 0x1d450]  ; 0x140006be6
    mov cl, byte ptr [rcx + r9 + 0x1d460]  ; 0x140006bef
    sub rdx, rax  ; 0x140006bf7
    mov eax, dword ptr [rdx - 4]  ; 0x140006bfa
    shr eax, cl  ; 0x140006bfd
    mov qword ptr [r8 + 8], rdx  ; 0x140006bff
    mov dword ptr [r8 + 0x18], eax  ; 0x140006c03
    movzx ecx, byte ptr [rdx]  ; 0x140006c07
    and ecx, 0xf  ; 0x140006c0a
    movsx rax, byte ptr [rcx + r9 + 0x1d450]  ; 0x140006c0d
    mov cl, byte ptr [rcx + r9 + 0x1d460]  ; 0x140006c16
    sub rdx, rax  ; 0x140006c1e
    mov eax, dword ptr [rdx - 4]  ; 0x140006c21
    shr eax, cl  ; 0x140006c24
    mov qword ptr [r8 + 8], rdx  ; 0x140006c26
    mov dword ptr [r8 + 0x1c], eax  ; 0x140006c2a
    movzx ecx, byte ptr [rdx]  ; 0x140006c2e
    and ecx, 0xf  ; 0x140006c31
    movsx rax, byte ptr [rcx + r9 + 0x1d450]  ; 0x140006c34
    mov cl, byte ptr [rcx + r9 + 0x1d460]  ; 0x140006c3d
    sub rdx, rax  ; 0x140006c45
    mov eax, dword ptr [rdx - 4]  ; 0x140006c48
    shr eax, cl  ; 0x140006c4b
    mov dword ptr [r8 + 0x20], eax  ; 0x140006c4d
    lea rax, [rdx + 4]  ; 0x140006c51
    mov qword ptr [r8 + 8], rdx  ; 0x140006c55
    mov ecx, dword ptr [rdx]  ; 0x140006c59
    mov dword ptr [r8 + 0x24], ecx  ; 0x140006c5b
    mov ecx, dword ptr [rsp + 0x60]  ; 0x140006c5f
    inc ecx  ; 0x140006c63
    mov qword ptr [r8 + 8], rax  ; 0x140006c65
    mov dword ptr [rsp + 0x60], ecx  ; 0x140006c69
    cmp ecx, dword ptr [rbp - 0x58]  ; 0x140006c6d
    jb 0x140006ade  ; 0x140006c70
    mov rcx, qword ptr [rbp + 0x28]  ; 0x140006c76
    xor rcx, rsp  ; 0x140006c7a
    call 0x1400033b0  ; 0x140006c7d
    add rsp, 0x138  ; 0x140006c82
    pop r15  ; 0x140006c89
    pop r14  ; 0x140006c8b
    pop r13  ; 0x140006c8d
    pop r12  ; 0x140006c8f
    pop rdi  ; 0x140006c91
    pop rsi  ; 0x140006c92
    pop rbx  ; 0x140006c93
    pop rbp  ; 0x140006c94
    ret  ; 0x140006c95
    call 0x14000e8f0  ; 0x140006c96
    int3   ; 0x140006c9b
    mov rax, rsp  ; 0x140006c9c
    mov qword ptr [rax + 8], rbx  ; 0x140006c9f
; Function: func_140006ca3
func_140006ca3:
    mov qword ptr [rax + 0x10], rbp  ; 0x140006ca3
    mov qword ptr [rax + 0x18], rsi  ; 0x140006ca7
    mov qword ptr [rax + 0x20], rdi  ; 0x140006cab
    push r14  ; 0x140006caf
    sub rsp, 0x20  ; 0x140006cb1
    xor ebx, ebx  ; 0x140006cb5
    mov r14, r8  ; 0x140006cb7
    mov rbp, rdx  ; 0x140006cba
    mov rdi, rcx  ; 0x140006cbd
    cmp dword ptr [rcx + 4], ebx  ; 0x140006cc0
    je 0x140006db9  ; 0x140006cc3
    movsxd rsi, dword ptr [rcx + 4]  ; 0x140006cc9
    call 0x140004d38  ; 0x140006ccd
    mov r9, rax  ; 0x140006cd2
    add r9, rsi  ; 0x140006cd5
    je 0x140006db9  ; 0x140006cd8
    test esi, esi  ; 0x140006cde
    je 0x140006cf1  ; 0x140006ce0
    movsxd rsi, dword ptr [rdi + 4]  ; 0x140006ce2
    call 0x140004d38  ; 0x140006ce6
    lea rcx, [rsi + rax]  ; 0x140006ceb
    jmp 0x140006cf6  ; 0x140006cef
    mov rcx, rbx  ; 0x140006cf1
    mov esi, ebx  ; 0x140006cf4
    cmp byte ptr [rcx + 0x10], bl  ; 0x140006cf6
    je 0x140006db9  ; 0x140006cf9
    test byte ptr [rdi], 0x80  ; 0x140006cff
    je 0x140006d0e  ; 0x140006d02
    test byte ptr [rbp], 0x10  ; 0x140006d04
    jne 0x140006db9  ; 0x140006d08
    test esi, esi  ; 0x140006d0e
    je 0x140006d23  ; 0x140006d10
    call 0x140004d38  ; 0x140006d12
    mov rsi, rax  ; 0x140006d17
    movsxd rax, dword ptr [rdi + 4]  ; 0x140006d1a
    add rsi, rax  ; 0x140006d1e
    jmp 0x140006d26  ; 0x140006d21
    mov rsi, rbx  ; 0x140006d23
    call 0x140004d4c  ; 0x140006d26
    mov rcx, rax  ; 0x140006d2b
    movsxd rax, dword ptr [rbp + 4]  ; 0x140006d2e
    add rcx, rax  ; 0x140006d32
    cmp rsi, rcx  ; 0x140006d35
    je 0x140006d85  ; 0x140006d38
    cmp dword ptr [rdi + 4], ebx  ; 0x140006d3a
    je 0x140006d50  ; 0x140006d3d
    call 0x140004d38  ; 0x140006d3f
    mov rsi, rax  ; 0x140006d44
    movsxd rax, dword ptr [rdi + 4]  ; 0x140006d47
    add rsi, rax  ; 0x140006d4b
    jmp 0x140006d53  ; 0x140006d4e
    mov rsi, rbx  ; 0x140006d50
    call 0x140004d4c  ; 0x140006d53
    movsxd r8, dword ptr [rbp + 4]  ; 0x140006d58
    add r8, 0x10  ; 0x140006d5c
    add r8, rax  ; 0x140006d60
    lea rax, [rsi + 0x10]  ; 0x140006d63
    sub r8, rax  ; 0x140006d67
    movzx ecx, byte ptr [rax]  ; 0x140006d6a
    movzx edx, byte ptr [rax + r8]  ; 0x140006d6d
    sub ecx, edx  ; 0x140006d72
    jne 0x140006d7d  ; 0x140006d74
    inc rax  ; 0x140006d76
    test edx, edx  ; 0x140006d79
    jne 0x140006d6a  ; 0x140006d7b
    test ecx, ecx  ; 0x140006d7d
    je 0x140006d85  ; 0x140006d7f
    xor eax, eax  ; 0x140006d81
    jmp 0x140006dbe  ; 0x140006d83
    mov al, 2  ; 0x140006d85
    test byte ptr [rbp], al  ; 0x140006d87
    je 0x140006d91  ; 0x140006d8a
    test byte ptr [rdi], 8  ; 0x140006d8c
    je 0x140006db5  ; 0x140006d8f
    test byte ptr [r14], 1  ; 0x140006d91
    je 0x140006d9c  ; 0x140006d95
    test byte ptr [rdi], 1  ; 0x140006d97
    je 0x140006db5  ; 0x140006d9a
    test byte ptr [r14], 4  ; 0x140006d9c
    je 0x140006da7  ; 0x140006da0
    test byte ptr [rdi], 4  ; 0x140006da2
    je 0x140006db5  ; 0x140006da5
    test byte ptr [r14], al  ; 0x140006da7
    je 0x140006db0  ; 0x140006daa
    test byte ptr [rdi], al  ; 0x140006dac
    je 0x140006db5  ; 0x140006dae
    mov ebx, 1  ; 0x140006db0
    mov eax, ebx  ; 0x140006db5
    jmp 0x140006dbe  ; 0x140006db7
    mov eax, 1  ; 0x140006db9
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140006dbe
    mov rbp, qword ptr [rsp + 0x38]  ; 0x140006dc3
    mov rsi, qword ptr [rsp + 0x40]  ; 0x140006dc8
    mov rdi, qword ptr [rsp + 0x48]  ; 0x140006dcd
    add rsp, 0x20  ; 0x140006dd2
    pop r14  ; 0x140006dd6
    ret  ; 0x140006dd8
    int3   ; 0x140006dd9
    int3   ; 0x140006dda
    int3   ; 0x140006ddb
    mov qword ptr [rsp + 8], rbx  ; 0x140006ddc
; Function: func_140006de1
func_140006de1:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140006de1
    mov qword ptr [rsp + 0x18], rsi  ; 0x140006de6
    push rdi  ; 0x140006deb
    push r14  ; 0x140006dec
    push r15  ; 0x140006dee
    sub rsp, 0x20  ; 0x140006df0
    xor ebx, ebx  ; 0x140006df4
    mov r15, r8  ; 0x140006df6
    mov r14, rdx  ; 0x140006df9
    mov rdi, rcx  ; 0x140006dfc
    cmp dword ptr [rcx + 8], ebx  ; 0x140006dff
    je 0x140006f09  ; 0x140006e02
    movsxd rsi, dword ptr [rcx + 8]  ; 0x140006e08
    call 0x140004d38  ; 0x140006e0c
    mov r8, rax  ; 0x140006e11
    add r8, rsi  ; 0x140006e14
    je 0x140006f09  ; 0x140006e17
    test esi, esi  ; 0x140006e1d
    je 0x140006e30  ; 0x140006e1f
    movsxd rbp, dword ptr [rdi + 8]  ; 0x140006e21
    call 0x140004d38  ; 0x140006e25
    lea rcx, [rax + rbp]  ; 0x140006e2a
    jmp 0x140006e35  ; 0x140006e2e
    mov rcx, rbx  ; 0x140006e30
    mov ebp, ebx  ; 0x140006e33
    cmp byte ptr [rcx + 0x10], bl  ; 0x140006e35
    je 0x140006f09  ; 0x140006e38
    lea rsi, [rdi + 4]  ; 0x140006e3e
    test byte ptr [rsi], 0x80  ; 0x140006e42
    je 0x140006e51  ; 0x140006e45
    test byte ptr [r14], 0x10  ; 0x140006e47
    jne 0x140006f09  ; 0x140006e4b
    test ebp, ebp  ; 0x140006e51
    je 0x140006e66  ; 0x140006e53
    call 0x140004d38  ; 0x140006e55
    mov rbp, rax  ; 0x140006e5a
    movsxd rax, dword ptr [rdi + 8]  ; 0x140006e5d
    add rbp, rax  ; 0x140006e61
    jmp 0x140006e69  ; 0x140006e64
    mov rbp, rbx  ; 0x140006e66
    call 0x140004d4c  ; 0x140006e69
    mov rcx, rax  ; 0x140006e6e
    movsxd rax, dword ptr [r14 + 4]  ; 0x140006e71
    add rcx, rax  ; 0x140006e75
    cmp rbp, rcx  ; 0x140006e78
    je 0x140006ecc  ; 0x140006e7b
    cmp dword ptr [rdi + 8], ebx  ; 0x140006e7d
    je 0x140006e93  ; 0x140006e80
    call 0x140004d38  ; 0x140006e82
    mov rsi, rax  ; 0x140006e87
    movsxd rax, dword ptr [rdi + 8]  ; 0x140006e8a
    add rsi, rax  ; 0x140006e8e
    jmp 0x140006e96  ; 0x140006e91
    mov rsi, rbx  ; 0x140006e93
    call 0x140004d4c  ; 0x140006e96
    movsxd r8, dword ptr [r14 + 4]  ; 0x140006e9b
    add r8, 0x10  ; 0x140006e9f
    add r8, rax  ; 0x140006ea3
    lea rax, [rsi + 0x10]  ; 0x140006ea6
    sub r8, rax  ; 0x140006eaa
    movzx ecx, byte ptr [rax]  ; 0x140006ead
    movzx edx, byte ptr [rax + r8]  ; 0x140006eb0
    sub ecx, edx  ; 0x140006eb5
    jne 0x140006ec0  ; 0x140006eb7
    inc rax  ; 0x140006eb9
    test edx, edx  ; 0x140006ebc
    jne 0x140006ead  ; 0x140006ebe
    test ecx, ecx  ; 0x140006ec0
    je 0x140006ec8  ; 0x140006ec2
    xor eax, eax  ; 0x140006ec4
    jmp 0x140006f0e  ; 0x140006ec6
    lea rsi, [rdi + 4]  ; 0x140006ec8
    mov al, 2  ; 0x140006ecc
    test byte ptr [r14], al  ; 0x140006ece
    je 0x140006ede  ; 0x140006ed1
    test byte ptr [rsi], 8  ; 0x140006ed3
    je 0x140006f05  ; 0x140006ed6
    add rdi, 4  ; 0x140006ed8
    jmp 0x140006ee1  ; 0x140006edc
    mov rdi, rsi  ; 0x140006ede
    test byte ptr [r15], 1  ; 0x140006ee1
    je 0x140006eec  ; 0x140006ee5
    test byte ptr [rsi], 1  ; 0x140006ee7
    je 0x140006f05  ; 0x140006eea
    test byte ptr [r15], 4  ; 0x140006eec
    je 0x140006ef7  ; 0x140006ef0
    test byte ptr [rsi], 4  ; 0x140006ef2
    je 0x140006f05  ; 0x140006ef5
    test byte ptr [r15], al  ; 0x140006ef7
    je 0x140006f00  ; 0x140006efa
    test byte ptr [rdi], al  ; 0x140006efc
    je 0x140006f05  ; 0x140006efe
    mov ebx, 1  ; 0x140006f00
    mov eax, ebx  ; 0x140006f05
    jmp 0x140006f0e  ; 0x140006f07
    mov eax, 1  ; 0x140006f09
    mov rbx, qword ptr [rsp + 0x40]  ; 0x140006f0e
    mov rbp, qword ptr [rsp + 0x48]  ; 0x140006f13
    mov rsi, qword ptr [rsp + 0x50]  ; 0x140006f18
    add rsp, 0x20  ; 0x140006f1d
    pop r15  ; 0x140006f21
    pop r14  ; 0x140006f23
    pop rdi  ; 0x140006f25
    ret  ; 0x140006f26
    int3   ; 0x140006f27
    mov rax, rsp  ; 0x140006f28
    mov qword ptr [rax + 8], rbx  ; 0x140006f2b
; Function: func_140006f2f
func_140006f2f:
    mov qword ptr [rax + 0x10], rbp  ; 0x140006f2f
    mov qword ptr [rax + 0x18], rsi  ; 0x140006f33
    mov qword ptr [rax + 0x20], rdi  ; 0x140006f37
    push r14  ; 0x140006f3b
    sub rsp, 0x50  ; 0x140006f3d
    mov rdi, rcx  ; 0x140006f41
    mov rsi, r9  ; 0x140006f44
    mov rcx, r8  ; 0x140006f47
    mov r14, r8  ; 0x140006f4a
    mov rbp, rdx  ; 0x140006f4d
    call 0x1400085d4  ; 0x140006f50
    call 0x1400052e8  ; 0x140006f55
    mov rbx, qword ptr [rsp + 0x80]  ; 0x140006f5a
    mov ecx, 0x80000029  ; 0x140006f62
    mov edx, 0x80000026  ; 0x140006f67
    cmp dword ptr [rax + 0x40], 0  ; 0x140006f6c
    jne 0x140006faa  ; 0x140006f70
    cmp dword ptr [rdi], 0xe06d7363  ; 0x140006f72
    je 0x140006faa  ; 0x140006f78
    cmp dword ptr [rdi], ecx  ; 0x140006f7a
    jne 0x140006f8e  ; 0x140006f7c
    cmp dword ptr [rdi + 0x18], 0xf  ; 0x140006f7e
    jne 0x140006f92  ; 0x140006f82
    cmp qword ptr [rdi + 0x60], 0x19930520  ; 0x140006f84
    je 0x140006faa  ; 0x140006f8c
    cmp dword ptr [rdi], edx  ; 0x140006f8e
    je 0x140006faa  ; 0x140006f90
    mov eax, dword ptr [rbx]  ; 0x140006f92
    and eax, 0x1fffffff  ; 0x140006f94
    cmp eax, 0x19930522  ; 0x140006f99
    jb 0x140006faa  ; 0x140006f9e
    test byte ptr [rbx + 0x24], 1  ; 0x140006fa0
    jne 0x140007139  ; 0x140006fa4
    test byte ptr [rdi + 4], 0x66  ; 0x140006faa
    je 0x140007042  ; 0x140006fae
    cmp dword ptr [rbx + 4], 0  ; 0x140006fb4
    je 0x140007139  ; 0x140006fb8
    cmp dword ptr [rsp + 0x88], 0  ; 0x140006fbe
    jne 0x140007139  ; 0x140006fc6
    test byte ptr [rdi + 4], 0x20  ; 0x140006fcc
    je 0x14000702f  ; 0x140006fd0
    cmp dword ptr [rdi], edx  ; 0x140006fd2
    jne 0x14000700d  ; 0x140006fd4
    mov r8, qword ptr [rsi + 0x20]  ; 0x140006fd6
    mov rdx, rsi  ; 0x140006fda
    mov rcx, rbx  ; 0x140006fdd
    call 0x1400054dc  ; 0x140006fe0
    cmp eax, -1  ; 0x140006fe5
    jl 0x140007159  ; 0x140006fe8
    cmp eax, dword ptr [rbx + 4]  ; 0x140006fee
    jge 0x140007159  ; 0x140006ff1
    mov r9d, eax  ; 0x140006ff7
    mov rcx, rbp  ; 0x140006ffa
    mov rdx, rsi  ; 0x140006ffd
    mov r8, rbx  ; 0x140007000
    call 0x140007c90  ; 0x140007003
    jmp 0x140007139  ; 0x140007008
    cmp dword ptr [rdi], ecx  ; 0x14000700d
    jne 0x14000702f  ; 0x14000700f
    mov r9d, dword ptr [rdi + 0x38]  ; 0x140007011
    cmp r9d, -1  ; 0x140007015
    jl 0x140007159  ; 0x140007019
    cmp r9d, dword ptr [rbx + 4]  ; 0x14000701f
    jge 0x140007159  ; 0x140007023
    mov rcx, qword ptr [rdi + 0x28]  ; 0x140007029
    jmp 0x140006ffd  ; 0x14000702d
    mov r8, rbx  ; 0x14000702f
    mov rdx, rsi  ; 0x140007032
    mov rcx, rbp  ; 0x140007035
    call 0x140004494  ; 0x140007038
    jmp 0x140007139  ; 0x14000703d
    cmp dword ptr [rbx + 0xc], 0  ; 0x140007042
    jne 0x14000708a  ; 0x140007046
    mov eax, dword ptr [rbx]  ; 0x140007048
    and eax, 0x1fffffff  ; 0x14000704a
    cmp eax, 0x19930521  ; 0x14000704f
    jb 0x14000706a  ; 0x140007054
    cmp dword ptr [rbx + 0x20], 0  ; 0x140007056
    je 0x14000706a  ; 0x14000705a
    call 0x140004d38  ; 0x14000705c
    movsxd rcx, dword ptr [rbx + 0x20]  ; 0x140007061
    add rax, rcx  ; 0x140007065
    jne 0x14000708a  ; 0x140007068
    mov eax, dword ptr [rbx]  ; 0x14000706a
    and eax, 0x1fffffff  ; 0x14000706c
    cmp eax, 0x19930522  ; 0x140007071
    jb 0x140007139  ; 0x140007076
    mov eax, dword ptr [rbx + 0x24]  ; 0x14000707c
    shr eax, 2  ; 0x14000707f
    test al, 1  ; 0x140007082
    je 0x140007139  ; 0x140007084
    cmp dword ptr [rdi], 0xe06d7363  ; 0x14000708a
    jne 0x140007100  ; 0x140007090
    cmp dword ptr [rdi + 0x18], 3  ; 0x140007092
    jb 0x140007100  ; 0x140007096
    cmp dword ptr [rdi + 0x20], 0x19930522  ; 0x140007098
    jbe 0x140007100  ; 0x14000709f
    mov rax, qword ptr [rdi + 0x30]  ; 0x1400070a1
    cmp dword ptr [rax + 8], 0  ; 0x1400070a5
    je 0x140007100  ; 0x1400070a9
    call 0x140004d4c  ; 0x1400070ab
    mov rcx, qword ptr [rdi + 0x30]  ; 0x1400070b0
    mov r10, rax  ; 0x1400070b4
    movsxd rdx, dword ptr [rcx + 8]  ; 0x1400070b7
    add r10, rdx  ; 0x1400070bb
    je 0x140007100  ; 0x1400070be
    movzx ecx, byte ptr [rsp + 0x98]  ; 0x1400070c0
    mov r9, rsi  ; 0x1400070c8
    mov eax, dword ptr [rsp + 0x88]  ; 0x1400070cb
    mov r8, r14  ; 0x1400070d2
    mov dword ptr [rsp + 0x38], ecx  ; 0x1400070d5
    mov rdx, rbp  ; 0x1400070d9
    mov rcx, qword ptr [rsp + 0x90]  ; 0x1400070dc
    mov qword ptr [rsp + 0x30], rcx  ; 0x1400070e4
    mov rcx, rdi  ; 0x1400070e9
    mov dword ptr [rsp + 0x28], eax  ; 0x1400070ec
    mov rax, r10  ; 0x1400070f0
    mov qword ptr [rsp + 0x20], rbx  ; 0x1400070f3
    call qword ptr [rip + 0x16172]  ; 0x1400070f8
    jmp 0x14000713e  ; 0x1400070fe
    mov rax, qword ptr [rsp + 0x90]  ; 0x140007100
    mov r9, rsi  ; 0x140007108
    mov qword ptr [rsp + 0x38], rax  ; 0x14000710b
    mov r8, r14  ; 0x140007110
    mov eax, dword ptr [rsp + 0x88]  ; 0x140007113
    mov rdx, rbp  ; 0x14000711a
    mov dword ptr [rsp + 0x30], eax  ; 0x14000711d
    mov rcx, rdi  ; 0x140007121
    mov al, byte ptr [rsp + 0x98]  ; 0x140007124
    mov byte ptr [rsp + 0x28], al  ; 0x14000712b
    mov qword ptr [rsp + 0x20], rbx  ; 0x14000712f
    call 0x140005d64  ; 0x140007134
    mov eax, 1  ; 0x140007139
    mov rbx, qword ptr [rsp + 0x60]  ; 0x14000713e
    mov rbp, qword ptr [rsp + 0x68]  ; 0x140007143
    mov rsi, qword ptr [rsp + 0x70]  ; 0x140007148
    mov rdi, qword ptr [rsp + 0x78]  ; 0x14000714d
    add rsp, 0x50  ; 0x140007152
    pop r14  ; 0x140007156
    ret  ; 0x140007158
    call 0x14000e8f0  ; 0x140007159
    int3   ; 0x14000715e
    int3   ; 0x14000715f
    mov qword ptr [rsp + 8], rbx  ; 0x140007160
; Function: func_140007165
func_140007165:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140007165
    mov qword ptr [rsp + 0x18], rsi  ; 0x14000716a
    push rdi  ; 0x14000716f
    push r14  ; 0x140007170
    push r15  ; 0x140007172
    sub rsp, 0x80  ; 0x140007174
    mov rbx, rcx  ; 0x14000717b
    mov rbp, r9  ; 0x14000717e
    mov rcx, r8  ; 0x140007181
    mov r15, r8  ; 0x140007184
    mov r14, rdx  ; 0x140007187
    call 0x1400085d4  ; 0x14000718a
    call 0x1400052e8  ; 0x14000718f
    mov rdi, qword ptr [rsp + 0xc0]  ; 0x140007194
    xor esi, esi  ; 0x14000719c
    mov r8d, 0x80000029  ; 0x14000719e
    mov r9d, 0x80000026  ; 0x1400071a4
    cmp dword ptr [rax + 0x40], esi  ; 0x1400071aa
    jne 0x1400071da  ; 0x1400071ad
    cmp dword ptr [rbx], 0xe06d7363  ; 0x1400071af
    je 0x1400071da  ; 0x1400071b5
    cmp dword ptr [rbx], r8d  ; 0x1400071b7
    jne 0x1400071cc  ; 0x1400071ba
    cmp dword ptr [rbx + 0x18], 0xf  ; 0x1400071bc
    jne 0x1400071d1  ; 0x1400071c0
    cmp qword ptr [rbx + 0x60], 0x19930520  ; 0x1400071c2
    je 0x1400071da  ; 0x1400071ca
    cmp dword ptr [rbx], r9d  ; 0x1400071cc
    je 0x1400071da  ; 0x1400071cf
    test byte ptr [rdi], 0x20  ; 0x1400071d1
    jne 0x1400073cc  ; 0x1400071d4
    test byte ptr [rbx + 4], 0x66  ; 0x1400071da
    je 0x1400072fe  ; 0x1400071de
    cmp dword ptr [rdi + 8], esi  ; 0x1400071e4
    je 0x1400073cc  ; 0x1400071e7
    movsxd rdx, dword ptr [rdi + 8]  ; 0x1400071ed
    lea r15, [rip - 0x71f8]  ; 0x1400071f1
    add rdx, qword ptr [rbp + 8]  ; 0x1400071f8
    movzx ecx, byte ptr [rdx]  ; 0x1400071fc
    and ecx, 0xf  ; 0x1400071ff
    movsx rax, byte ptr [rcx + r15 + 0x1d450]  ; 0x140007202
    mov cl, byte ptr [rcx + r15 + 0x1d460]  ; 0x14000720b
    sub rdx, rax  ; 0x140007213
    mov eax, dword ptr [rdx - 4]  ; 0x140007216
    shr eax, cl  ; 0x140007219
    test eax, eax  ; 0x14000721b
    je 0x1400073cc  ; 0x14000721d
    cmp dword ptr [rsp + 0xc8], esi  ; 0x140007223
    jne 0x1400073cc  ; 0x14000722a
    test byte ptr [rbx + 4], 0x20  ; 0x140007230
    je 0x1400072eb  ; 0x140007234
    cmp dword ptr [rbx], r9d  ; 0x14000723a
    jne 0x1400072a2  ; 0x14000723d
    mov r8, qword ptr [rbp + 0x20]  ; 0x14000723f
    mov rdx, rbp  ; 0x140007243
    mov rcx, rdi  ; 0x140007246
    call 0x140005544  ; 0x140007249
    mov r9d, eax  ; 0x14000724e
    cmp eax, -1  ; 0x140007251
    jl 0x1400073ee  ; 0x140007254
    cmp dword ptr [rdi + 8], esi  ; 0x14000725a
    je 0x140007286  ; 0x14000725d
    movsxd rdx, dword ptr [rdi + 8]  ; 0x14000725f
    add rdx, qword ptr [rbp + 8]  ; 0x140007263
    movzx ecx, byte ptr [rdx]  ; 0x140007267
    and ecx, 0xf  ; 0x14000726a
    movsx rax, byte ptr [rcx + r15 + 0x1d450]  ; 0x14000726d
    mov cl, byte ptr [rcx + r15 + 0x1d460]  ; 0x140007276
    sub rdx, rax  ; 0x14000727e
    mov esi, dword ptr [rdx - 4]  ; 0x140007281
    shr esi, cl  ; 0x140007284
    cmp r9d, esi  ; 0x140007286
    jge 0x1400073ee  ; 0x140007289
    mov rcx, r14  ; 0x14000728f
    mov rdx, rbp  ; 0x140007292
    mov r8, rdi  ; 0x140007295
    call 0x140007e1c  ; 0x140007298
    jmp 0x1400073cc  ; 0x14000729d
    cmp dword ptr [rbx], r8d  ; 0x1400072a2
    jne 0x1400072eb  ; 0x1400072a5
    mov r9d, dword ptr [rbx + 0x38]  ; 0x1400072a7
    cmp r9d, -1  ; 0x1400072ab
    jl 0x1400073ee  ; 0x1400072af
    movsxd rdx, dword ptr [rdi + 8]  ; 0x1400072b5
    add rdx, qword ptr [rbp + 8]  ; 0x1400072b9
    movzx ecx, byte ptr [rdx]  ; 0x1400072bd
    and ecx, 0xf  ; 0x1400072c0
    movsx rax, byte ptr [rcx + r15 + 0x1d450]  ; 0x1400072c3
    mov cl, byte ptr [rcx + r15 + 0x1d460]  ; 0x1400072cc
    sub rdx, rax  ; 0x1400072d4
    mov eax, dword ptr [rdx - 4]  ; 0x1400072d7
    shr eax, cl  ; 0x1400072da
    cmp r9d, eax  ; 0x1400072dc
    jge 0x1400073ee  ; 0x1400072df
    mov rcx, qword ptr [rbx + 0x28]  ; 0x1400072e5
    jmp 0x140007292  ; 0x1400072e9
    mov r8, rdi  ; 0x1400072eb
    mov rdx, rbp  ; 0x1400072ee
    mov rcx, r14  ; 0x1400072f1
    call 0x1400044f8  ; 0x1400072f4
    jmp 0x1400073cc  ; 0x1400072f9
    mov r8, qword ptr [rbp + 8]  ; 0x1400072fe
    lea rcx, [rsp + 0x50]  ; 0x140007302
    mov rdx, rdi  ; 0x140007307
    call 0x1400074cc  ; 0x14000730a
    cmp dword ptr [rsp + 0x50], esi  ; 0x14000730f
    jne 0x14000731e  ; 0x140007313
    test byte ptr [rdi], 0x40  ; 0x140007315
    je 0x1400073cc  ; 0x140007318
    cmp dword ptr [rbx], 0xe06d7363  ; 0x14000731e
    jne 0x140007393  ; 0x140007324
    cmp dword ptr [rbx + 0x18], 3  ; 0x140007326
    jb 0x140007393  ; 0x14000732a
    cmp dword ptr [rbx + 0x20], 0x19930522  ; 0x14000732c
    jbe 0x140007393  ; 0x140007333
    mov rax, qword ptr [rbx + 0x30]  ; 0x140007335
    cmp dword ptr [rax + 8], esi  ; 0x140007339
    je 0x140007393  ; 0x14000733c
    call 0x140004d4c  ; 0x14000733e
    mov rcx, qword ptr [rbx + 0x30]  ; 0x140007343
    mov r10, rax  ; 0x140007347
    movsxd rdx, dword ptr [rcx + 8]  ; 0x14000734a
    add r10, rdx  ; 0x14000734e
    je 0x140007393  ; 0x140007351
    movzx ecx, byte ptr [rsp + 0xd8]  ; 0x140007353
    mov r9, rbp  ; 0x14000735b
    mov eax, dword ptr [rsp + 0xc8]  ; 0x14000735e
    mov r8, r15  ; 0x140007365
    mov dword ptr [rsp + 0x38], ecx  ; 0x140007368
    mov rdx, r14  ; 0x14000736c
    mov rcx, qword ptr [rsp + 0xd0]  ; 0x14000736f
    mov qword ptr [rsp + 0x30], rcx  ; 0x140007377
    mov rcx, rbx  ; 0x14000737c
    mov dword ptr [rsp + 0x28], eax  ; 0x14000737f
    mov rax, r10  ; 0x140007383
    mov qword ptr [rsp + 0x20], rdi  ; 0x140007386
    call qword ptr [rip + 0x15edf]  ; 0x14000738b
    jmp 0x1400073d1  ; 0x140007391
    mov rax, qword ptr [rsp + 0xd0]  ; 0x140007393
    mov r9, rbp  ; 0x14000739b
    mov qword ptr [rsp + 0x38], rax  ; 0x14000739e
    mov r8, r15  ; 0x1400073a3
    mov eax, dword ptr [rsp + 0xc8]  ; 0x1400073a6
    mov rdx, r14  ; 0x1400073ad
    mov dword ptr [rsp + 0x30], eax  ; 0x1400073b0
    mov rcx, rbx  ; 0x1400073b4
    mov al, byte ptr [rsp + 0xd8]  ; 0x1400073b7
    mov byte ptr [rsp + 0x28], al  ; 0x1400073be
    mov qword ptr [rsp + 0x20], rdi  ; 0x1400073c2
    call 0x140006234  ; 0x1400073c7
    mov eax, 1  ; 0x1400073cc
    lea r11, [rsp + 0x80]  ; 0x1400073d1
    mov rbx, qword ptr [r11 + 0x20]  ; 0x1400073d9
    mov rbp, qword ptr [r11 + 0x28]  ; 0x1400073dd
    mov rsi, qword ptr [r11 + 0x30]  ; 0x1400073e1
    mov rsp, r11  ; 0x1400073e5
    pop r15  ; 0x1400073e8
    pop r14  ; 0x1400073ea
    pop rdi  ; 0x1400073ec
    ret  ; 0x1400073ed
    call 0x14000e8f0  ; 0x1400073ee
    int3   ; 0x1400073f3
    jmp 0x140006f28  ; 0x1400073f4
    int3   ; 0x1400073f9
    int3   ; 0x1400073fa
    int3   ; 0x1400073fb
    push rbx  ; 0x1400073fc
    sub rsp, 0x40  ; 0x1400073fe
    mov al, byte ptr [rsp + 0x88]  ; 0x140007402
    mov byte ptr [rsp + 0x38], al  ; 0x140007409
    mov rax, qword ptr [rsp + 0x80]  ; 0x14000740d
    mov qword ptr [rsp + 0x30], rax  ; 0x140007415
    mov eax, dword ptr [rsp + 0x78]  ; 0x14000741a
    mov dword ptr [rsp + 0x28], eax  ; 0x14000741e
    mov rax, qword ptr [rsp + 0x70]  ; 0x140007422
    mov qword ptr [rsp + 0x20], rax  ; 0x140007427
    call 0x140007160  ; 0x14000742c
    mov ebx, eax  ; 0x140007431
    call 0x1400052e8  ; 0x140007433
    mov dword ptr [rax + 0x78], 0xfffffffe  ; 0x140007438
    mov eax, ebx  ; 0x14000743f
    add rsp, 0x40  ; 0x140007441
    pop rbx  ; 0x140007445
    ret  ; 0x140007446
    int3   ; 0x140007447
    push rbx  ; 0x140007448
    sub rsp, 0x20  ; 0x14000744a
    xor eax, eax  ; 0x14000744e
    xorps xmm0, xmm0  ; 0x140007450
    mov qword ptr [rcx + 8], rax  ; 0x140007453
    mov rbx, rcx  ; 0x140007457
    mov qword ptr [rcx + 0x10], rax  ; 0x14000745a
    mov byte ptr [rcx + 0x18], al  ; 0x14000745e
    mov qword ptr [rcx + 0x1c], rax  ; 0x140007461
    mov qword ptr [rcx + 0x24], rax  ; 0x140007465
    movups xmmword ptr [rcx + 0x30], xmm0  ; 0x140007469
    mov qword ptr [rcx + 0x40], r8  ; 0x14000746d
    mov dword ptr [rcx + 0x48], r9d  ; 0x140007471
    cmp dword ptr [rdx + 0xc], eax  ; 0x140007475
    je 0x1400074bf  ; 0x140007478
    movsxd rdx, dword ptr [rdx + 0xc]  ; 0x14000747a
    add rdx, r8  ; 0x14000747e
    lea r8, [rip - 0x7488]  ; 0x140007481
    mov qword ptr [rcx + 8], rdx  ; 0x140007488
    movzx ecx, byte ptr [rdx]  ; 0x14000748c
    and ecx, 0xf  ; 0x14000748f
    movsx rax, byte ptr [rcx + r8 + 0x1d450]  ; 0x140007492
    mov cl, byte ptr [rcx + r8 + 0x1d460]  ; 0x14000749b
    sub rdx, rax  ; 0x1400074a3
    mov eax, dword ptr [rdx - 4]  ; 0x1400074a6
    shr eax, cl  ; 0x1400074a9
    mov rcx, rbx  ; 0x1400074ab
    mov dword ptr [rbx], eax  ; 0x1400074ae
    mov qword ptr [rbx + 8], rdx  ; 0x1400074b0
    mov qword ptr [rbx + 0x10], rdx  ; 0x1400074b4
    call 0x140007a48  ; 0x1400074b8
    jmp 0x1400074c1  ; 0x1400074bd
    mov dword ptr [rcx], eax  ; 0x1400074bf
    mov rax, rbx  ; 0x1400074c1
    add rsp, 0x20  ; 0x1400074c4
    pop rbx  ; 0x1400074c8
    ret  ; 0x1400074c9
    int3   ; 0x1400074ca
    int3   ; 0x1400074cb
    xor eax, eax  ; 0x1400074cc
    xorps xmm0, xmm0  ; 0x1400074ce
    mov qword ptr [rcx + 8], rax  ; 0x1400074d1
    mov r9, rcx  ; 0x1400074d5
    mov qword ptr [rcx + 0x10], rax  ; 0x1400074d8
    movups xmmword ptr [rcx + 0x18], xmm0  ; 0x1400074dc
    cmp dword ptr [rdx + 0xc], eax  ; 0x1400074e0
    je 0x1400075aa  ; 0x1400074e3
    movsxd rdx, dword ptr [rdx + 0xc]  ; 0x1400074e9
    add rdx, r8  ; 0x1400074ed
    lea r8, [rip - 0x74f7]  ; 0x1400074f0
    mov qword ptr [rcx + 8], rdx  ; 0x1400074f7
    movzx ecx, byte ptr [rdx]  ; 0x1400074fb
    and ecx, 0xf  ; 0x1400074fe
    movsx rax, byte ptr [rcx + r8 + 0x1d450]  ; 0x140007501
    mov cl, byte ptr [rcx + r8 + 0x1d460]  ; 0x14000750a
    sub rdx, rax  ; 0x140007512
    mov eax, dword ptr [rdx - 4]  ; 0x140007515
    shr eax, cl  ; 0x140007518
    mov qword ptr [r9 + 8], rdx  ; 0x14000751a
    mov dword ptr [r9], eax  ; 0x14000751e
    mov qword ptr [r9 + 0x10], rdx  ; 0x140007521
    movzx ecx, byte ptr [rdx]  ; 0x140007525
    and ecx, 0xf  ; 0x140007528
    movsx rax, byte ptr [rcx + r8 + 0x1d450]  ; 0x14000752b
    mov cl, byte ptr [rcx + r8 + 0x1d460]  ; 0x140007534
    sub rdx, rax  ; 0x14000753c
    mov eax, dword ptr [rdx - 4]  ; 0x14000753f
    shr eax, cl  ; 0x140007542
    mov qword ptr [r9 + 8], rdx  ; 0x140007544
    mov dword ptr [r9 + 0x18], eax  ; 0x140007548
    movzx ecx, byte ptr [rdx]  ; 0x14000754c
    and ecx, 0xf  ; 0x14000754f
    movsx rax, byte ptr [rcx + r8 + 0x1d450]  ; 0x140007552
    mov cl, byte ptr [rcx + r8 + 0x1d460]  ; 0x14000755b
    sub rdx, rax  ; 0x140007563
    mov eax, dword ptr [rdx - 4]  ; 0x140007566
    shr eax, cl  ; 0x140007569
    mov qword ptr [r9 + 8], rdx  ; 0x14000756b
    mov dword ptr [r9 + 0x1c], eax  ; 0x14000756f
    movzx ecx, byte ptr [rdx]  ; 0x140007573
    and ecx, 0xf  ; 0x140007576
    movsx rax, byte ptr [rcx + r8 + 0x1d450]  ; 0x140007579
    mov cl, byte ptr [rcx + r8 + 0x1d460]  ; 0x140007582
    sub rdx, rax  ; 0x14000758a
    mov eax, dword ptr [rdx - 4]  ; 0x14000758d
    shr eax, cl  ; 0x140007590
    mov dword ptr [r9 + 0x20], eax  ; 0x140007592
    lea rax, [rdx + 4]  ; 0x140007596
    mov qword ptr [r9 + 8], rdx  ; 0x14000759a
    mov ecx, dword ptr [rdx]  ; 0x14000759e
    mov qword ptr [r9 + 8], rax  ; 0x1400075a0
    mov dword ptr [r9 + 0x24], ecx  ; 0x1400075a4
    jmp 0x1400075ac  ; 0x1400075a8
    mov dword ptr [rcx], eax  ; 0x1400075aa
    mov rax, r9  ; 0x1400075ac
    ret  ; 0x1400075af
    push rbx  ; 0x1400075b0
    sub rsp, 0x20  ; 0x1400075b2
    mov rbx, rcx  ; 0x1400075b6
    mov rax, rdx  ; 0x1400075b9
    lea rcx, [rip + 0x15da5]  ; 0x1400075bc
    xorps xmm0, xmm0  ; 0x1400075c3
    mov qword ptr [rbx], rcx  ; 0x1400075c6
    lea rdx, [rbx + 8]  ; 0x1400075c9
    lea rcx, [rax + 8]  ; 0x1400075cd
    movups xmmword ptr [rdx], xmm0  ; 0x1400075d1
    call 0x1400040c0  ; 0x1400075d4
    lea rax, [rip + 0x15fd8]  ; 0x1400075d9
    mov qword ptr [rbx], rax  ; 0x1400075e0
    mov rax, rbx  ; 0x1400075e3
    add rsp, 0x20  ; 0x1400075e6
    pop rbx  ; 0x1400075ea
    ret  ; 0x1400075eb
    and qword ptr [rcx + 0x10], 0  ; 0x1400075ec
    lea rax, [rip + 0x15fd0]  ; 0x1400075f1
    mov qword ptr [rcx + 8], rax  ; 0x1400075f8
    lea rax, [rip + 0x15fb5]  ; 0x1400075fc
    mov qword ptr [rcx], rax  ; 0x140007603
    mov rax, rcx  ; 0x140007606
    ret  ; 0x140007609
    int3   ; 0x14000760a
    int3   ; 0x14000760b
    push rbx  ; 0x14000760c
    push rsi  ; 0x14000760e
    push rdi  ; 0x14000760f
    push r12  ; 0x140007610
    push r13  ; 0x140007612
    push r14  ; 0x140007614
    push r15  ; 0x140007616
    sub rsp, 0x70  ; 0x140007618
    mov rdi, rcx  ; 0x14000761c
    xor r15d, r15d  ; 0x14000761f
    mov dword ptr [rsp + 0x20], r15d  ; 0x140007622
    and dword ptr [rsp + 0xb0], r15d  ; 0x140007627
    and qword ptr [rsp + 0x28], r15  ; 0x14000762f
    and qword ptr [rsp + 0xc8], r15  ; 0x140007634
    call 0x1400052e8  ; 0x14000763c
    mov r13, qword ptr [rax + 0x28]  ; 0x140007641
    mov qword ptr [rsp + 0x40], r13  ; 0x140007645
    call 0x1400052e8  ; 0x14000764a
    mov rax, qword ptr [rax + 0x20]  ; 0x14000764f
    mov qword ptr [rsp + 0xc0], rax  ; 0x140007653
    mov rsi, qword ptr [rdi + 0x50]  ; 0x14000765b
    mov qword ptr [rsp + 0xb8], rsi  ; 0x14000765f
    mov rax, qword ptr [rdi + 0x48]  ; 0x140007667
    mov qword ptr [rsp + 0x30], rax  ; 0x14000766b
    mov rbx, qword ptr [rdi + 0x40]  ; 0x140007670
    mov rax, qword ptr [rdi + 0x30]  ; 0x140007674
    mov qword ptr [rsp + 0x48], rax  ; 0x140007678
    mov r14, qword ptr [rdi + 0x28]  ; 0x14000767d
    mov qword ptr [rsp + 0x50], r14  ; 0x140007681
    mov rcx, rbx  ; 0x140007686
    call 0x1400085d4  ; 0x140007689
    call 0x1400052e8  ; 0x14000768e
    mov qword ptr [rax + 0x20], rsi  ; 0x140007693
    call 0x1400052e8  ; 0x140007697
    mov qword ptr [rax + 0x28], rbx  ; 0x14000769c
    call 0x1400052e8  ; 0x1400076a0
    mov rdx, qword ptr [rax + 0x20]  ; 0x1400076a5
    mov rdx, qword ptr [rdx + 0x28]  ; 0x1400076a9
    lea rcx, [rsp + 0x60]  ; 0x1400076ad
    call 0x140004ca8  ; 0x1400076b2
    mov r12, rax  ; 0x1400076b7
    mov qword ptr [rsp + 0x38], rax  ; 0x1400076ba
    cmp qword ptr [rdi + 0x58], r15  ; 0x1400076bf
    je 0x1400076e1  ; 0x1400076c3
    mov dword ptr [rsp + 0xb0], 1  ; 0x1400076c5
    call 0x1400052e8  ; 0x1400076d0
    mov rcx, qword ptr [rax + 0x70]  ; 0x1400076d5
    mov qword ptr [rsp + 0xc8], rcx  ; 0x1400076d9
    mov r8d, 0x100  ; 0x1400076e1
    mov rdx, r14  ; 0x1400076e7
    mov rcx, qword ptr [rsp + 0x48]  ; 0x1400076ea
    call 0x140009770  ; 0x1400076ef
    mov rbx, rax  ; 0x1400076f4
    mov qword ptr [rsp + 0x28], rax  ; 0x1400076f7
    mov rdi, qword ptr [rsp + 0xc0]  ; 0x1400076fc
    jmp 0x14000777e  ; 0x140007704
    mov dword ptr [rsp + 0x20], 1  ; 0x140007706
    call 0x1400052e8  ; 0x14000770e
    and dword ptr [rax + 0x40], 0  ; 0x140007713
    mov rsi, qword ptr [rsp + 0xb8]  ; 0x140007717
    cmp dword ptr [rsp + 0xb0], 0  ; 0x14000771f
    je 0x14000774a  ; 0x140007727
    mov dl, 1  ; 0x140007729
    mov rcx, rsi  ; 0x14000772b
    call 0x140005164  ; 0x14000772e
    mov rcx, qword ptr [rsp + 0xc8]  ; 0x140007733
    lea r9, [rcx + 0x20]  ; 0x14000773b
    mov r8d, dword ptr [rcx + 0x18]  ; 0x14000773f
    mov edx, dword ptr [rcx + 4]  ; 0x140007743
    mov ecx, dword ptr [rcx]  ; 0x140007746
    jmp 0x140007757  ; 0x140007748
    lea r9, [rsi + 0x20]  ; 0x14000774a
    mov r8d, dword ptr [rsi + 0x18]  ; 0x14000774e
    mov edx, dword ptr [rsi + 4]  ; 0x140007752
    mov ecx, dword ptr [rsi]  ; 0x140007755
    call qword ptr [rip + 0x1593b]  ; 0x140007757
    mov r15d, dword ptr [rsp + 0x20]  ; 0x14000775d
    mov rbx, qword ptr [rsp + 0x28]  ; 0x140007762
    mov r13, qword ptr [rsp + 0x40]  ; 0x140007767
    mov rdi, qword ptr [rsp + 0xc0]  ; 0x14000776c
    mov r14, qword ptr [rsp + 0x50]  ; 0x140007774
    mov r12, qword ptr [rsp + 0x38]  ; 0x140007779
    mov rcx, r12  ; 0x14000777e
    call 0x140004ce4  ; 0x140007781
    test r15d, r15d  ; 0x140007786
    jne 0x1400077bd  ; 0x140007789
    cmp dword ptr [rsi], 0xe06d7363  ; 0x14000778b
    jne 0x1400077bd  ; 0x140007791
    cmp dword ptr [rsi + 0x18], 4  ; 0x140007793
    jne 0x1400077bd  ; 0x140007797
    mov eax, dword ptr [rsi + 0x20]  ; 0x140007799
    sub eax, 0x19930520  ; 0x14000779c
    cmp eax, 2  ; 0x1400077a1
    ja 0x1400077bd  ; 0x1400077a4
    mov rcx, qword ptr [rsi + 0x28]  ; 0x1400077a6
    call 0x1400051d8  ; 0x1400077aa
    test eax, eax  ; 0x1400077af
    je 0x1400077bd  ; 0x1400077b1
    mov dl, 1  ; 0x1400077b3
    mov rcx, rsi  ; 0x1400077b5
    call 0x140005164  ; 0x1400077b8
    call 0x1400052e8  ; 0x1400077bd
    mov qword ptr [rax + 0x20], rdi  ; 0x1400077c2
    call 0x1400052e8  ; 0x1400077c6
    mov qword ptr [rax + 0x28], r13  ; 0x1400077cb
    mov rax, qword ptr [rsp + 0x30]  ; 0x1400077cf
    movsxd rcx, dword ptr [rax + 0x1c]  ; 0x1400077d4
    mov rax, qword ptr [r14]  ; 0x1400077d8
    mov qword ptr [rcx + rax], 0xfffffffffffffffe  ; 0x1400077db
    mov rax, rbx  ; 0x1400077e3
    add rsp, 0x70  ; 0x1400077e6
    pop r15  ; 0x1400077ea
    pop r14  ; 0x1400077ec
    pop r13  ; 0x1400077ee
    pop r12  ; 0x1400077f0
    pop rdi  ; 0x1400077f2
    pop rsi  ; 0x1400077f3
    pop rbx  ; 0x1400077f4
    ret  ; 0x1400077f5
    int3   ; 0x1400077f6
    int3   ; 0x1400077f7
    mov rax, rsp  ; 0x1400077f8
    push rbx  ; 0x1400077fb
    push rsi  ; 0x1400077fc
    push rdi  ; 0x1400077fd
    push r12  ; 0x1400077fe
    push r13  ; 0x140007800
    push r15  ; 0x140007802
    sub rsp, 0xa8  ; 0x140007804
    mov rdi, rcx  ; 0x14000780b
    xor r12d, r12d  ; 0x14000780e
    mov dword ptr [rsp + 0x20], r12d  ; 0x140007811
    and dword ptr [rsp + 0xf0], r12d  ; 0x140007816
    and qword ptr [rsp + 0x28], r12  ; 0x14000781e
    and qword ptr [rsp + 0x40], r12  ; 0x140007823
    mov byte ptr [rax - 0x80], r12b  ; 0x140007828
    and dword ptr [rax - 0x7c], r12d  ; 0x14000782c
    and dword ptr [rax - 0x78], r12d  ; 0x140007830
    and dword ptr [rax - 0x74], r12d  ; 0x140007834
    and dword ptr [rax - 0x70], r12d  ; 0x140007838
    and dword ptr [rax - 0x6c], r12d  ; 0x14000783c
    call 0x1400052e8  ; 0x140007840
    mov rax, qword ptr [rax + 0x28]  ; 0x140007845
    mov qword ptr [rsp + 0x38], rax  ; 0x140007849
    call 0x1400052e8  ; 0x14000784e
    mov rax, qword ptr [rax + 0x20]  ; 0x140007853
    mov qword ptr [rsp + 0x30], rax  ; 0x140007857
    mov rsi, qword ptr [rdi + 0x50]  ; 0x14000785c
    mov qword ptr [rsp + 0xf8], rsi  ; 0x140007860
    mov rbx, qword ptr [rdi + 0x40]  ; 0x140007868
    mov rax, qword ptr [rdi + 0x30]  ; 0x14000786c
    mov qword ptr [rsp + 0x50], rax  ; 0x140007870
    mov r15, qword ptr [rdi + 0x28]  ; 0x140007875
    mov rax, qword ptr [rdi + 0x48]  ; 0x140007879
    mov qword ptr [rsp + 0x70], rax  ; 0x14000787d
    mov rax, qword ptr [rdi + 0x68]  ; 0x140007882
    mov qword ptr [rsp + 0x78], rax  ; 0x140007886
    mov eax, dword ptr [rdi + 0x78]  ; 0x14000788b
    mov dword ptr [rsp + 0xe8], eax  ; 0x14000788e
    mov eax, dword ptr [rdi + 0x38]  ; 0x140007895
    mov dword ptr [rsp + 0xe0], eax  ; 0x140007898
    mov rcx, rbx  ; 0x14000789f
    call 0x1400085d4  ; 0x1400078a2
    call 0x1400052e8  ; 0x1400078a7
    mov qword ptr [rax + 0x20], rsi  ; 0x1400078ac
    call 0x1400052e8  ; 0x1400078b0
    mov qword ptr [rax + 0x28], rbx  ; 0x1400078b5
    call 0x1400052e8  ; 0x1400078b9
    mov rdx, qword ptr [rax + 0x20]  ; 0x1400078be
    mov rdx, qword ptr [rdx + 0x28]  ; 0x1400078c2
    lea rcx, [rsp + 0x88]  ; 0x1400078c6
    call 0x140004ca8  ; 0x1400078ce
    mov r13, rax  ; 0x1400078d3
    mov qword ptr [rsp + 0x48], rax  ; 0x1400078d6
    cmp qword ptr [rdi + 0x58], r12  ; 0x1400078db
    je 0x1400078fa  ; 0x1400078df
    mov dword ptr [rsp + 0xf0], 1  ; 0x1400078e1
    call 0x1400052e8  ; 0x1400078ec
    mov rcx, qword ptr [rax + 0x70]  ; 0x1400078f1
    mov qword ptr [rsp + 0x40], rcx  ; 0x1400078f5
    mov r8d, 0x100  ; 0x1400078fa
    mov rdx, r15  ; 0x140007900
    mov rcx, qword ptr [rsp + 0x50]  ; 0x140007903
    call 0x1400097b0  ; 0x140007908
    mov rbx, rax  ; 0x14000790d
    mov qword ptr [rsp + 0x28], rax  ; 0x140007910
    cmp rax, 2  ; 0x140007915
    jge 0x14000792e  ; 0x140007919
    mov rbx, qword ptr [rsp + rax*8 + 0x70]  ; 0x14000791b
    test rbx, rbx  ; 0x140007920
    je 0x140007a41  ; 0x140007923
    mov qword ptr [rsp + 0x28], rbx  ; 0x140007929
    mov rdx, r15  ; 0x14000792e
    mov rcx, rbx  ; 0x140007931
    call 0x1400097e0  ; 0x140007934
    mov rdi, qword ptr [rsp + 0x38]  ; 0x140007939
    mov r15, qword ptr [rsp + 0x30]  ; 0x14000793e
    jmp 0x1400079c1  ; 0x140007943
    mov dword ptr [rsp + 0x20], 1  ; 0x140007945
    call 0x1400052e8  ; 0x14000794d
    and dword ptr [rax + 0x40], 0  ; 0x140007952
    call 0x1400052e8  ; 0x140007956
    mov ecx, dword ptr [rsp + 0xe8]  ; 0x14000795b
    mov dword ptr [rax + 0x78], ecx  ; 0x140007962
    mov rsi, qword ptr [rsp + 0xf8]  ; 0x140007965
    cmp dword ptr [rsp + 0xf0], 0  ; 0x14000796d
    je 0x140007995  ; 0x140007975
    mov dl, 1  ; 0x140007977
    mov rcx, rsi  ; 0x140007979
    call 0x140005164  ; 0x14000797c
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140007981
    lea r9, [rcx + 0x20]  ; 0x140007986
    mov r8d, dword ptr [rcx + 0x18]  ; 0x14000798a
    mov edx, dword ptr [rcx + 4]  ; 0x14000798e
    mov ecx, dword ptr [rcx]  ; 0x140007991
    jmp 0x1400079a2  ; 0x140007993
    lea r9, [rsi + 0x20]  ; 0x140007995
    mov r8d, dword ptr [rsi + 0x18]  ; 0x140007999
    mov edx, dword ptr [rsi + 4]  ; 0x14000799d
    mov ecx, dword ptr [rsi]  ; 0x1400079a0
    call qword ptr [rip + 0x156f0]  ; 0x1400079a2
    mov r12d, dword ptr [rsp + 0x20]  ; 0x1400079a8
    mov rbx, qword ptr [rsp + 0x28]  ; 0x1400079ad
    mov rdi, qword ptr [rsp + 0x38]  ; 0x1400079b2
    mov r15, qword ptr [rsp + 0x30]  ; 0x1400079b7
    mov r13, qword ptr [rsp + 0x48]  ; 0x1400079bc
    mov rcx, r13  ; 0x1400079c1
    call 0x140004ce4  ; 0x1400079c4
    test r12d, r12d  ; 0x1400079c9
    jne 0x140007a00  ; 0x1400079cc
    cmp dword ptr [rsi], 0xe06d7363  ; 0x1400079ce
    jne 0x140007a00  ; 0x1400079d4
    cmp dword ptr [rsi + 0x18], 4  ; 0x1400079d6
    jne 0x140007a00  ; 0x1400079da
    mov eax, dword ptr [rsi + 0x20]  ; 0x1400079dc
    sub eax, 0x19930520  ; 0x1400079df
    cmp eax, 2  ; 0x1400079e4
    ja 0x140007a00  ; 0x1400079e7
    mov rcx, qword ptr [rsi + 0x28]  ; 0x1400079e9
    call 0x1400051d8  ; 0x1400079ed
    test eax, eax  ; 0x1400079f2
    je 0x140007a00  ; 0x1400079f4
    mov dl, 1  ; 0x1400079f6
    mov rcx, rsi  ; 0x1400079f8
    call 0x140005164  ; 0x1400079fb
    call 0x1400052e8  ; 0x140007a00
    mov qword ptr [rax + 0x20], r15  ; 0x140007a05
    call 0x1400052e8  ; 0x140007a09
    mov qword ptr [rax + 0x28], rdi  ; 0x140007a0e
    call 0x1400052e8  ; 0x140007a12
    mov ecx, dword ptr [rsp + 0xe0]  ; 0x140007a17
    mov dword ptr [rax + 0x78], ecx  ; 0x140007a1e
    call 0x1400052e8  ; 0x140007a21
    mov dword ptr [rax + 0x78], 0xfffffffe  ; 0x140007a26
    mov rax, rbx  ; 0x140007a2d
    add rsp, 0xa8  ; 0x140007a30
    pop r15  ; 0x140007a37
    pop r13  ; 0x140007a39
    pop r12  ; 0x140007a3b
    pop rdi  ; 0x140007a3d
    pop rsi  ; 0x140007a3e
    pop rbx  ; 0x140007a3f
    ret  ; 0x140007a40
    call 0x14000e8f0  ; 0x140007a41
    nop  ; 0x140007a46
    int3   ; 0x140007a47
    xor eax, eax  ; 0x140007a48
    lea r11, [rip - 0x7a51]  ; 0x140007a4a
    mov byte ptr [rcx + 0x18], al  ; 0x140007a51
    xorps xmm0, xmm0  ; 0x140007a54
    mov qword ptr [rcx + 0x1c], rax  ; 0x140007a57
    mov r8, rcx  ; 0x140007a5b
    mov qword ptr [rcx + 0x24], rax  ; 0x140007a5e
    movups xmmword ptr [rcx + 0x30], xmm0  ; 0x140007a62
    mov rax, qword ptr [rcx + 8]  ; 0x140007a66
    mov r9b, byte ptr [rax]  ; 0x140007a6a
    lea rdx, [rax + 1]  ; 0x140007a6d
    mov byte ptr [rcx + 0x18], r9b  ; 0x140007a71
    mov qword ptr [rcx + 8], rdx  ; 0x140007a75
    test r9b, 1  ; 0x140007a79
    je 0x140007aa6  ; 0x140007a7d
    movzx ecx, byte ptr [rdx]  ; 0x140007a7f
    and ecx, 0xf  ; 0x140007a82
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140007a85
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140007a8e
    sub rdx, rax  ; 0x140007a96
    mov eax, dword ptr [rdx - 4]  ; 0x140007a99
    shr eax, cl  ; 0x140007a9c
    mov dword ptr [r8 + 0x1c], eax  ; 0x140007a9e
    mov qword ptr [r8 + 8], rdx  ; 0x140007aa2
    test r9b, 2  ; 0x140007aa6
    je 0x140007aba  ; 0x140007aaa
    mov eax, dword ptr [rdx]  ; 0x140007aac
    add rdx, 4  ; 0x140007aae
    mov qword ptr [r8 + 8], rdx  ; 0x140007ab2
    mov dword ptr [r8 + 0x20], eax  ; 0x140007ab6
    test r9b, 4  ; 0x140007aba
    je 0x140007ae7  ; 0x140007abe
    movzx ecx, byte ptr [rdx]  ; 0x140007ac0
    and ecx, 0xf  ; 0x140007ac3
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140007ac6
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140007acf
    sub rdx, rax  ; 0x140007ad7
    mov eax, dword ptr [rdx - 4]  ; 0x140007ada
    shr eax, cl  ; 0x140007add
    mov dword ptr [r8 + 0x24], eax  ; 0x140007adf
    mov qword ptr [r8 + 8], rdx  ; 0x140007ae3
    mov eax, dword ptr [rdx]  ; 0x140007ae7
    lea r10, [rdx + 4]  ; 0x140007ae9
    mov dword ptr [r8 + 0x28], eax  ; 0x140007aed
    mov cl, 0x30  ; 0x140007af1
    mov al, r9b  ; 0x140007af3
    mov qword ptr [r8 + 8], r10  ; 0x140007af6
    and al, cl  ; 0x140007afa
    test r9b, 8  ; 0x140007afc
    je 0x140007b42  ; 0x140007b00
    cmp al, 0x10  ; 0x140007b02
    jne 0x140007b16  ; 0x140007b04
    movsxd rcx, dword ptr [r10]  ; 0x140007b06
    lea rax, [r10 + 4]  ; 0x140007b09
    mov qword ptr [r8 + 8], rax  ; 0x140007b0d
    mov qword ptr [r8 + 0x30], rcx  ; 0x140007b11
    ret  ; 0x140007b15
    and r9b, cl  ; 0x140007b16
    cmp r9b, 0x20  ; 0x140007b19
    jne 0x140007bdb  ; 0x140007b1d
    movsxd rax, dword ptr [r10]  ; 0x140007b23
    lea rdx, [r10 + 4]  ; 0x140007b26
    mov qword ptr [r8 + 8], rdx  ; 0x140007b2a
    mov qword ptr [r8 + 0x30], rax  ; 0x140007b2e
    lea rax, [rdx + 4]  ; 0x140007b32
    movsxd rcx, dword ptr [rdx]  ; 0x140007b36
    mov qword ptr [r8 + 8], rax  ; 0x140007b39
    jmp 0x140007bd7  ; 0x140007b3d
    cmp al, 0x10  ; 0x140007b42
    jne 0x140007b76  ; 0x140007b44
    movzx ecx, byte ptr [r10]  ; 0x140007b46
    and ecx, 0xf  ; 0x140007b4a
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140007b4d
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140007b56
    sub r10, rax  ; 0x140007b5e
    mov eax, dword ptr [r8 + 0x48]  ; 0x140007b61
    mov edx, dword ptr [r10 - 4]  ; 0x140007b65
    shr edx, cl  ; 0x140007b69
    add eax, edx  ; 0x140007b6b
    mov qword ptr [r8 + 8], r10  ; 0x140007b6d
    mov qword ptr [r8 + 0x30], rax  ; 0x140007b71
    ret  ; 0x140007b75
    and r9b, cl  ; 0x140007b76
    cmp r9b, 0x20  ; 0x140007b79
    jne 0x140007bdb  ; 0x140007b7d
    movzx ecx, byte ptr [r10]  ; 0x140007b7f
    mov edx, dword ptr [r8 + 0x48]  ; 0x140007b83
    and ecx, 0xf  ; 0x140007b87
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140007b8a
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140007b93
    sub r10, rax  ; 0x140007b9b
    mov eax, dword ptr [r10 - 4]  ; 0x140007b9e
    shr eax, cl  ; 0x140007ba2
    mov qword ptr [r8 + 8], r10  ; 0x140007ba4
    lea ecx, [rdx + rax]  ; 0x140007ba8
    mov qword ptr [r8 + 0x30], rcx  ; 0x140007bab
    movzx ecx, byte ptr [r10]  ; 0x140007baf
    and ecx, 0xf  ; 0x140007bb3
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x140007bb6
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140007bbf
    sub r10, rax  ; 0x140007bc7
    mov eax, dword ptr [r10 - 4]  ; 0x140007bca
    shr eax, cl  ; 0x140007bce
    mov qword ptr [r8 + 8], r10  ; 0x140007bd0
    lea ecx, [rdx + rax]  ; 0x140007bd4
    mov qword ptr [r8 + 0x38], rcx  ; 0x140007bd7
    ret  ; 0x140007bdb
    push rbx  ; 0x140007bdc
    sub rsp, 0x20  ; 0x140007bde
    mov r9, qword ptr [rcx]  ; 0x140007be2
    mov rbx, r8  ; 0x140007be5
    and dword ptr [r8], 0  ; 0x140007be8
    mov ecx, 0xe06d7363  ; 0x140007bec
    cmp dword ptr [r9], ecx  ; 0x140007bf1
    jne 0x140007c57  ; 0x140007bf4
    cmp dword ptr [r9 + 0x18], 4  ; 0x140007bf6
    mov r8d, 0x19930520  ; 0x140007bfb
    jne 0x140007c1f  ; 0x140007c01
    mov eax, dword ptr [r9 + 0x20]  ; 0x140007c03
    sub eax, r8d  ; 0x140007c07
    cmp eax, 2  ; 0x140007c0a
    ja 0x140007c1f  ; 0x140007c0d
    mov rax, qword ptr [rdx + 0x28]  ; 0x140007c0f
    cmp qword ptr [r9 + 0x28], rax  ; 0x140007c13
    jne 0x140007c1f  ; 0x140007c17
    mov dword ptr [rbx], 1  ; 0x140007c19
    cmp dword ptr [r9], ecx  ; 0x140007c1f
    jne 0x140007c57  ; 0x140007c22
    cmp dword ptr [r9 + 0x18], 4  ; 0x140007c24
    jne 0x140007c57  ; 0x140007c29
    mov ecx, dword ptr [r9 + 0x20]  ; 0x140007c2b
    sub ecx, r8d  ; 0x140007c2f
    cmp ecx, 2  ; 0x140007c32
    ja 0x140007c57  ; 0x140007c35
    cmp qword ptr [r9 + 0x30], 0  ; 0x140007c37
    jne 0x140007c57  ; 0x140007c3c
    call 0x1400052e8  ; 0x140007c3e
    mov dword ptr [rax + 0x40], 1  ; 0x140007c43
    mov eax, 1  ; 0x140007c4a
    mov dword ptr [rbx], 1  ; 0x140007c4f
    jmp 0x140007c59  ; 0x140007c55
    xor eax, eax  ; 0x140007c57
    add rsp, 0x20  ; 0x140007c59
    pop rbx  ; 0x140007c5d
    ret  ; 0x140007c5e
    int3   ; 0x140007c5f
    mov qword ptr [rsp + 8], rbx  ; 0x140007c60
    push rdi  ; 0x140007c65
    sub rsp, 0x20  ; 0x140007c66
    mov edi, r8d  ; 0x140007c6a
    mov r8, r9  ; 0x140007c6d
    call 0x140007bdc  ; 0x140007c70
    mov ebx, eax  ; 0x140007c75
    test eax, eax  ; 0x140007c77
    jne 0x140007c83  ; 0x140007c79
    call 0x1400052e8  ; 0x140007c7b
    mov dword ptr [rax + 0x78], edi  ; 0x140007c80
    mov eax, ebx  ; 0x140007c83
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140007c85
    add rsp, 0x20  ; 0x140007c8a
    pop rdi  ; 0x140007c8e
    ret  ; 0x140007c8f
    mov dword ptr [rsp + 0x20], r9d  ; 0x140007c90
    mov qword ptr [rsp + 0x18], r8  ; 0x140007c95
    mov qword ptr [rsp + 8], rcx  ; 0x140007c9a
    push rbx  ; 0x140007c9f
    push rsi  ; 0x140007ca0
    push rdi  ; 0x140007ca1
    push r12  ; 0x140007ca2
    push r13  ; 0x140007ca4
    push r14  ; 0x140007ca6
    push r15  ; 0x140007ca8
    sub rsp, 0x30  ; 0x140007caa
    mov r12d, r9d  ; 0x140007cae
    mov rsi, r8  ; 0x140007cb1
    mov rbx, rdx  ; 0x140007cb4
    mov r15, rcx  ; 0x140007cb7
    call 0x140004d38  ; 0x140007cba
    mov r13, rax  ; 0x140007cbf
    mov qword ptr [rsp + 0x28], rax  ; 0x140007cc2
    mov r8, rsi  ; 0x140007cc7
    mov rdx, rbx  ; 0x140007cca
    mov rcx, r15  ; 0x140007ccd
    call 0x140005430  ; 0x140007cd0
    mov edi, eax  ; 0x140007cd5
    call 0x1400052e8  ; 0x140007cd7
    inc dword ptr [rax + 0x30]  ; 0x140007cdc
    cmp edi, -1  ; 0x140007cdf
    je 0x140007dd3  ; 0x140007ce2
    cmp edi, r12d  ; 0x140007ce8
    jle 0x140007dd3  ; 0x140007ceb
    cmp edi, -1  ; 0x140007cf1
    jle 0x140007e0e  ; 0x140007cf4
    cmp edi, dword ptr [rsi + 4]  ; 0x140007cfa
    jge 0x140007e0e  ; 0x140007cfd
    movsxd r14, edi  ; 0x140007d03
    call 0x140004d38  ; 0x140007d06
    movsxd rcx, dword ptr [rsi + 8]  ; 0x140007d0b
    lea rax, [rax + r14*8]  ; 0x140007d0f
    mov edi, dword ptr [rcx + rax]  ; 0x140007d13
    mov dword ptr [rsp + 0x20], edi  ; 0x140007d16
    call 0x140004d38  ; 0x140007d1a
    movsxd rcx, dword ptr [rsi + 8]  ; 0x140007d1f
    lea rax, [rax + r14*8]  ; 0x140007d23
    cmp dword ptr [rcx + rax + 4], 0  ; 0x140007d27
    je 0x140007d4a  ; 0x140007d2c
    call 0x140004d38  ; 0x140007d2e
    movsxd rcx, dword ptr [rsi + 8]  ; 0x140007d33
    lea rax, [rax + r14*8]  ; 0x140007d37
    movsxd rbx, dword ptr [rcx + rax + 4]  ; 0x140007d3b
    call 0x140004d38  ; 0x140007d40
    add rax, rbx  ; 0x140007d45
    jmp 0x140007d4c  ; 0x140007d48
    xor eax, eax  ; 0x140007d4a
    test rax, rax  ; 0x140007d4c
    je 0x140007daa  ; 0x140007d4f
    mov r8d, edi  ; 0x140007d51
    mov rdx, rsi  ; 0x140007d54
    mov rcx, r15  ; 0x140007d57
    call 0x140005484  ; 0x140007d5a
    call 0x140004d38  ; 0x140007d5f
    movsxd rcx, dword ptr [rsi + 8]  ; 0x140007d64
    lea rax, [rax + r14*8]  ; 0x140007d68
    cmp dword ptr [rcx + rax + 4], 0  ; 0x140007d6c
    je 0x140007d8f  ; 0x140007d71
    call 0x140004d38  ; 0x140007d73
    movsxd rcx, dword ptr [rsi + 8]  ; 0x140007d78
    lea rax, [rax + r14*8]  ; 0x140007d7c
    movsxd rbx, dword ptr [rcx + rax + 4]  ; 0x140007d80
    call 0x140004d38  ; 0x140007d85
    add rax, rbx  ; 0x140007d8a
    jmp 0x140007d91  ; 0x140007d8d
    xor eax, eax  ; 0x140007d8f
    mov r8d, 0x103  ; 0x140007d91
    mov rdx, r15  ; 0x140007d97
    mov rcx, rax  ; 0x140007d9a
    call 0x140009770  ; 0x140007d9d
    mov rcx, r13  ; 0x140007da2
    call 0x140004d60  ; 0x140007da5
    jmp 0x140007dca  ; 0x140007daa
    mov r12d, dword ptr [rsp + 0x88]  ; 0x140007dac
    mov rsi, qword ptr [rsp + 0x80]  ; 0x140007db4
    mov r15, qword ptr [rsp + 0x70]  ; 0x140007dbc
    mov r13, qword ptr [rsp + 0x28]  ; 0x140007dc1
    mov edi, dword ptr [rsp + 0x20]  ; 0x140007dc6
    mov dword ptr [rsp + 0x24], edi  ; 0x140007dca
    jmp 0x140007cdf  ; 0x140007dce
    call 0x1400052e8  ; 0x140007dd3
    cmp dword ptr [rax + 0x30], 0  ; 0x140007dd8
    jle 0x140007de6  ; 0x140007ddc
    call 0x1400052e8  ; 0x140007dde
    dec dword ptr [rax + 0x30]  ; 0x140007de3
    cmp edi, -1  ; 0x140007de6
    je 0x140007df0  ; 0x140007de9
    cmp edi, r12d  ; 0x140007deb
    jg 0x140007e14  ; 0x140007dee
    mov r8d, edi  ; 0x140007df0
    mov rdx, rsi  ; 0x140007df3
    mov rcx, r15  ; 0x140007df6
    call 0x140005484  ; 0x140007df9
    add rsp, 0x30  ; 0x140007dfe
    pop r15  ; 0x140007e02
    pop r14  ; 0x140007e04
    pop r13  ; 0x140007e06
    pop r12  ; 0x140007e08
    pop rdi  ; 0x140007e0a
    pop rsi  ; 0x140007e0b
    pop rbx  ; 0x140007e0c
    ret  ; 0x140007e0d
    call 0x14000e8f0  ; 0x140007e0e
    nop  ; 0x140007e13
    call 0x14000e8f0  ; 0x140007e14
    nop  ; 0x140007e19
    int3   ; 0x140007e1a
    int3   ; 0x140007e1b
    mov rax, rsp  ; 0x140007e1c
    push rbx  ; 0x140007e1f
    push rsi  ; 0x140007e20
    push rdi  ; 0x140007e21
    push r12  ; 0x140007e22
    push r13  ; 0x140007e24
    push r14  ; 0x140007e26
    push r15  ; 0x140007e28
    sub rsp, 0x100  ; 0x140007e2a
    movaps xmmword ptr [rax - 0x48], xmm6  ; 0x140007e31
    mov rax, qword ptr [rip + 0x211c4]  ; 0x140007e35
    xor rax, rsp  ; 0x140007e3c
    mov qword ptr [rsp + 0xe0], rax  ; 0x140007e3f
    mov r13d, r9d  ; 0x140007e47
    mov rbx, r8  ; 0x140007e4a
    mov rsi, rdx  ; 0x140007e4d
    mov r12, rcx  ; 0x140007e50
    mov qword ptr [rsp + 0x70], rcx  ; 0x140007e53
    mov qword ptr [rsp + 0x60], rcx  ; 0x140007e58
    mov dword ptr [rsp + 0x48], r9d  ; 0x140007e5d
    call 0x140004d38  ; 0x140007e62
    mov qword ptr [rsp + 0x68], rax  ; 0x140007e67
    mov rdx, rsi  ; 0x140007e6c
    mov rcx, rbx  ; 0x140007e6f
    call 0x1400054d4  ; 0x140007e72
    mov edi, eax  ; 0x140007e77
    lea r14, [rsi + 0x48]  ; 0x140007e79
    mov qword ptr [rsp + 0x78], r14  ; 0x140007e7d
    cmp dword ptr [r14], 0  ; 0x140007e82
    je 0x140007e9f  ; 0x140007e86
    call 0x1400052e8  ; 0x140007e88
    cmp dword ptr [rax + 0x78], -2  ; 0x140007e8d
    jne 0x14000811d  ; 0x140007e91
    mov edi, dword ptr [r14]  ; 0x140007e97
    sub edi, 2  ; 0x140007e9a
    jmp 0x140007ebe  ; 0x140007e9d
    call 0x1400052e8  ; 0x140007e9f
    cmp dword ptr [rax + 0x78], -2  ; 0x140007ea4
    je 0x140007ebe  ; 0x140007ea8
    call 0x1400052e8  ; 0x140007eaa
    mov edi, dword ptr [rax + 0x78]  ; 0x140007eaf
    call 0x1400052e8  ; 0x140007eb2
    mov dword ptr [rax + 0x78], 0xfffffffe  ; 0x140007eb7
    call 0x1400052e8  ; 0x140007ebe
    inc dword ptr [rax + 0x30]  ; 0x140007ec3
    add rsi, 8  ; 0x140007ec6
    mov qword ptr [rsp + 0x80], rsi  ; 0x140007eca
    xor edx, edx  ; 0x140007ed2
    mov qword ptr [rsp + 0xc8], rdx  ; 0x140007ed4
    xorps xmm0, xmm0  ; 0x140007edc
    movups xmmword ptr [rsp + 0xd0], xmm0  ; 0x140007edf
    cmp dword ptr [rbx + 8], edx  ; 0x140007ee7
    je 0x140007f2b  ; 0x140007eea
    movsxd rdx, dword ptr [rbx + 8]  ; 0x140007eec
    add rdx, qword ptr [rsi]  ; 0x140007ef0
    movzx ecx, byte ptr [rdx]  ; 0x140007ef3
    and ecx, 0xf  ; 0x140007ef6
    lea r8, [rip - 0x7f00]  ; 0x140007ef9
    movsx rax, byte ptr [rcx + r8 + 0x1d450]  ; 0x140007f00
    movzx ecx, byte ptr [rcx + r8 + 0x1d460]  ; 0x140007f09
    sub rdx, rax  ; 0x140007f12
    mov eax, dword ptr [rdx - 4]  ; 0x140007f15
    shr eax, cl  ; 0x140007f18
    mov dword ptr [rsp + 0xc0], eax  ; 0x140007f1a
    mov qword ptr [rsp + 0xc8], rdx  ; 0x140007f21
    jmp 0x140007f32  ; 0x140007f29
    and dword ptr [rsp + 0xc0], edx  ; 0x140007f2b
    lea rax, [rsp + 0xc0]  ; 0x140007f32
    mov qword ptr [rsp + 0x30], rax  ; 0x140007f3a
    mov qword ptr [rsp + 0x38], rdx  ; 0x140007f3f
    lea rax, [rsp + 0xc0]  ; 0x140007f44
    mov qword ptr [rsp + 0x50], rax  ; 0x140007f4c
    mov qword ptr [rsp + 0x58], rdx  ; 0x140007f51
    lea rax, [rsp + 0x50]  ; 0x140007f56
    mov qword ptr [rsp + 0x20], rax  ; 0x140007f5b
    lea r9, [rsp + 0x30]  ; 0x140007f60
    mov r8d, r13d  ; 0x140007f65
    mov edx, edi  ; 0x140007f68
    lea rcx, [rsp + 0xc0]  ; 0x140007f6a
    call 0x1400083ec  ; 0x140007f72
    nop  ; 0x140007f77
    lea rax, [rsp + 0xc0]  ; 0x140007f78
    mov qword ptr [rsp + 0x88], rax  ; 0x140007f80
    mov rax, qword ptr [rsp + 0xc8]  ; 0x140007f88
    mov qword ptr [rsp + 0x90], rax  ; 0x140007f90
    mov r15, qword ptr [rsp + 0x38]  ; 0x140007f98
    cmp r15, rax  ; 0x140007f9d
    jb 0x1400080df  ; 0x140007fa0
    cmp r15, qword ptr [rsp + 0x58]  ; 0x140007fa6
    jbe 0x1400080df  ; 0x140007fab
    lea rdx, [rsp + 0x38]  ; 0x140007fb1
    mov rcx, qword ptr [rsp + 0x30]  ; 0x140007fb6
    call 0x140008334  ; 0x140007fbb
    mov qword ptr [rsp + 0x38], r15  ; 0x140007fc0
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140007fc5
    movups xmm6, xmmword ptr [rbx + 0x10]  ; 0x140007fca
    movups xmmword ptr [rsp + 0xb0], xmm6  ; 0x140007fce
    movaps xmm0, xmmword ptr [rsp + 0x30]  ; 0x140007fd6
    movdqa xmmword ptr [rsp + 0xa0], xmm0  ; 0x140007fdb
    lea rdx, [rsp + 0x38]  ; 0x140007fe4
    mov rcx, rbx  ; 0x140007fe9
    call 0x140008334  ; 0x140007fec
    mov eax, dword ptr [rbx + 0x10]  ; 0x140007ff1
    sub r15, rax  ; 0x140007ff4
    mov qword ptr [rsp + 0x38], r15  ; 0x140007ff7
    lea rax, [rsp + 0x30]  ; 0x140007ffc
    mov qword ptr [rsp + 0x20], rax  ; 0x140008001
    mov r9d, edi  ; 0x140008006
    lea r8, [rsp + 0xa0]  ; 0x140008009
    mov edx, r13d  ; 0x140008011
    lea rcx, [rsp + 0x50]  ; 0x140008014
    call 0x1400084bc  ; 0x140008019
    mov edi, eax  ; 0x14000801e
    mov dword ptr [rsp + 0x44], eax  ; 0x140008020
    and dword ptr [rsp + 0x40], 0  ; 0x140008024
    xor r9d, r9d  ; 0x140008029
    movdqa xmm0, xmm6  ; 0x14000802c
    psrldq xmm0, 8  ; 0x140008030
    movd eax, xmm0  ; 0x140008035
    movdqa xmm1, xmm6  ; 0x140008039
    psrldq xmm1, 4  ; 0x14000803d
    movd ecx, xmm1  ; 0x140008042
    test ecx, ecx  ; 0x140008046
    cmovne r9d, eax  ; 0x140008048
    mov dword ptr [rsp + 0x40], r9d  ; 0x14000804c
    test r9d, r9d  ; 0x140008051
    je 0x1400080da  ; 0x140008054
    lea eax, [rdi + 2]  ; 0x14000805a
    mov dword ptr [r14], eax  ; 0x14000805d
    lea eax, [rcx - 1]  ; 0x140008060
    cmp eax, 1  ; 0x140008063
    jbe 0x14000807e  ; 0x140008066
    movsxd rcx, r9d  ; 0x140008068
    add rcx, qword ptr [rsi]  ; 0x14000806b
    mov r8d, 0x103  ; 0x14000806e
    mov rdx, r12  ; 0x140008074
    call 0x140009770  ; 0x140008077
    jmp 0x1400080b3  ; 0x14000807c
    mov rax, qword ptr [rsp + 0x60]  ; 0x14000807e
    mov rdx, qword ptr [rax]  ; 0x140008083
    psrldq xmm6, 0xc  ; 0x140008086
    cmp ecx, 2  ; 0x14000808b
    jne 0x14000809a  ; 0x14000808e
    movd eax, xmm6  ; 0x140008090
    mov r8, qword ptr [rax + rdx]  ; 0x140008094
    jmp 0x1400080a2  ; 0x140008098
    movd r8d, xmm6  ; 0x14000809a
    add r8, rdx  ; 0x14000809f
    movsxd rcx, r9d  ; 0x1400080a2
    add rcx, qword ptr [rsi]  ; 0x1400080a5
    mov r9d, 0x103  ; 0x1400080a8
    call 0x140009810  ; 0x1400080ae
    mov rcx, qword ptr [rsp + 0x68]  ; 0x1400080b3
    call 0x140004d60  ; 0x1400080b8
    jmp 0x1400080da  ; 0x1400080bd
    mov edi, dword ptr [rsp + 0x44]  ; 0x1400080bf
    mov r12, qword ptr [rsp + 0x70]  ; 0x1400080c3
    mov r14, qword ptr [rsp + 0x78]  ; 0x1400080c8
    mov rsi, qword ptr [rsp + 0x80]  ; 0x1400080cd
    mov r13d, dword ptr [rsp + 0x48]  ; 0x1400080d5
    jmp 0x140007f78  ; 0x1400080da
    call 0x1400052e8  ; 0x1400080df
    cmp dword ptr [rax + 0x30], 0  ; 0x1400080e4
    jle 0x1400080f2  ; 0x1400080e8
    call 0x1400052e8  ; 0x1400080ea
    dec dword ptr [rax + 0x30]  ; 0x1400080ef
    mov rcx, qword ptr [rsp + 0xe0]  ; 0x1400080f2
    xor rcx, rsp  ; 0x1400080fa
    call 0x1400033b0  ; 0x1400080fd
    movaps xmm6, xmmword ptr [rsp + 0xf0]  ; 0x140008102
    add rsp, 0x100  ; 0x14000810a
    pop r15  ; 0x140008111
    pop r14  ; 0x140008113
    pop r13  ; 0x140008115
    pop r12  ; 0x140008117
    pop rdi  ; 0x140008119
    pop rsi  ; 0x14000811a
    pop rbx  ; 0x14000811b
    ret  ; 0x14000811c
    call 0x14000e8f0  ; 0x14000811d
    nop  ; 0x140008122
    int3   ; 0x140008123
    mov qword ptr [rsp + 8], rbx  ; 0x140008124
; Function: func_140008129
func_140008129:
    mov qword ptr [rsp + 0x10], rbp  ; 0x140008129
    mov qword ptr [rsp + 0x18], rsi  ; 0x14000812e
    push rdi  ; 0x140008133
    sub rsp, 0x20  ; 0x140008134
    mov rbp, rcx  ; 0x140008138
    mov rdi, r8  ; 0x14000813b
    mov rcx, r8  ; 0x14000813e
    mov rsi, rdx  ; 0x140008141
    call 0x1400054cc  ; 0x140008144
    lea r9, [rsp + 0x48]  ; 0x140008149
    mov r8, rdi  ; 0x14000814e
    mov rdx, rsi  ; 0x140008151
    mov rcx, rbp  ; 0x140008154
    mov ebx, eax  ; 0x140008157
    call 0x14000452c  ; 0x140008159
    mov r8, rdi  ; 0x14000815e
    mov rdx, rsi  ; 0x140008161
    mov rcx, rbp  ; 0x140008164
    call 0x140005458  ; 0x140008167
    cmp ebx, eax  ; 0x14000816c
    jle 0x140008193  ; 0x14000816e
    mov r8d, ebx  ; 0x140008170
    lea rcx, [rsp + 0x48]  ; 0x140008173
    mov rdx, rdi  ; 0x140008178
    call 0x140005484  ; 0x14000817b
    mov r9d, ebx  ; 0x140008180
    mov r8, rdi  ; 0x140008183
    mov rdx, rsi  ; 0x140008186
    mov rcx, rbp  ; 0x140008189
    call 0x140005490  ; 0x14000818c
    jmp 0x1400081a3  ; 0x140008191
    mov r8, rdi  ; 0x140008193
    mov rdx, rsi  ; 0x140008196
    mov rcx, rbp  ; 0x140008199
    call 0x140005458  ; 0x14000819c
    mov ebx, eax  ; 0x1400081a1
    mov rbp, qword ptr [rsp + 0x38]  ; 0x1400081a3
    mov eax, ebx  ; 0x1400081a8
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400081aa
    mov rsi, qword ptr [rsp + 0x40]  ; 0x1400081af
    add rsp, 0x20  ; 0x1400081b4
    pop rdi  ; 0x1400081b8
    ret  ; 0x1400081b9
    int3   ; 0x1400081ba
    int3   ; 0x1400081bb
    mov qword ptr [rsp + 8], rbx  ; 0x1400081bc
; Function: func_1400081c1
func_1400081c1:
    mov qword ptr [rsp + 0x18], rbp  ; 0x1400081c1
    mov qword ptr [rsp + 0x20], rsi  ; 0x1400081c6
    push rdi  ; 0x1400081cb
    push r12  ; 0x1400081cc
    push r13  ; 0x1400081ce
    push r14  ; 0x1400081d0
    push r15  ; 0x1400081d2
    sub rsp, 0x20  ; 0x1400081d4
    mov rbp, rdx  ; 0x1400081d8
    mov r13, rcx  ; 0x1400081db
    test rdx, rdx  ; 0x1400081de
    je 0x1400082a3  ; 0x1400081e1
    xor r15b, r15b  ; 0x1400081e7
    xor esi, esi  ; 0x1400081ea
    cmp dword ptr [rdx], esi  ; 0x1400081ec
    jle 0x140008283  ; 0x1400081ee
    call 0x140004d4c  ; 0x1400081f4
    mov rdx, rax  ; 0x1400081f9
    mov rax, qword ptr [r13 + 0x30]  ; 0x1400081fc
    movsxd r12, dword ptr [rax + 0xc]  ; 0x140008200
    add r12, 4  ; 0x140008204
    add r12, rdx  ; 0x140008208
    call 0x140004d4c  ; 0x14000820b
    mov rdx, rax  ; 0x140008210
    mov rax, qword ptr [r13 + 0x30]  ; 0x140008213
    movsxd rcx, dword ptr [rax + 0xc]  ; 0x140008217
    mov r14d, dword ptr [rdx + rcx]  ; 0x14000821b
    test r14d, r14d  ; 0x14000821f
    jle 0x140008278  ; 0x140008222
    movsxd rax, esi  ; 0x140008224
    lea rax, [rax + rax*4]  ; 0x140008227
    mov qword ptr [rsp + 0x58], rax  ; 0x14000822b
    call 0x140004d4c  ; 0x140008230
    mov rbx, qword ptr [r13 + 0x30]  ; 0x140008235
    mov rdi, rax  ; 0x140008239
    movsxd rax, dword ptr [r12]  ; 0x14000823c
    add rdi, rax  ; 0x140008240
    call 0x140004d38  ; 0x140008243
    mov rdx, qword ptr [rsp + 0x58]  ; 0x140008248
    mov r8, rbx  ; 0x14000824d
    movsxd rcx, dword ptr [rbp + 4]  ; 0x140008250
    lea rax, [rax + rdx*4]  ; 0x140008254
    mov rdx, rdi  ; 0x140008258
    add rcx, rax  ; 0x14000825b
    call 0x140006c9c  ; 0x14000825e
    test eax, eax  ; 0x140008263
    jne 0x140008275  ; 0x140008265
    dec r14d  ; 0x140008267
    add r12, 4  ; 0x14000826a
    test r14d, r14d  ; 0x14000826e
    jg 0x140008230  ; 0x140008271
    jmp 0x140008278  ; 0x140008273
    mov r15b, 1  ; 0x140008275
    inc esi  ; 0x140008278
    cmp esi, dword ptr [rbp]  ; 0x14000827a
    jl 0x1400081f4  ; 0x14000827d
    mov rbx, qword ptr [rsp + 0x50]  ; 0x140008283
    mov al, r15b  ; 0x140008288
    mov rbp, qword ptr [rsp + 0x60]  ; 0x14000828b
    mov rsi, qword ptr [rsp + 0x68]  ; 0x140008290
    add rsp, 0x20  ; 0x140008295
    pop r15  ; 0x140008299
    pop r14  ; 0x14000829b
    pop r13  ; 0x14000829d
    pop r12  ; 0x14000829f
    pop rdi  ; 0x1400082a1
    ret  ; 0x1400082a2
    call 0x14000e8f0  ; 0x1400082a3
    int3   ; 0x1400082a8
    int3   ; 0x1400082a9
    int3   ; 0x1400082aa
    int3   ; 0x1400082ab
    mov qword ptr [rsp + 8], rbx  ; 0x1400082ac
; Function: func_1400082b1
func_1400082b1:
    mov qword ptr [rsp + 0x10], rbp  ; 0x1400082b1
    mov qword ptr [rsp + 0x18], rsi  ; 0x1400082b6
    push rdi  ; 0x1400082bb
    sub rsp, 0x20  ; 0x1400082bc
    xor ebp, ebp  ; 0x1400082c0
    mov rdi, rcx  ; 0x1400082c2
    cmp dword ptr [rcx], ebp  ; 0x1400082c5
    jle 0x140008319  ; 0x1400082c7
    xor esi, esi  ; 0x1400082c9
    call 0x140004d38  ; 0x1400082cb
    movsxd rcx, dword ptr [rdi + 4]  ; 0x1400082d0
    add rax, rsi  ; 0x1400082d4
    cmp dword ptr [rcx + rax + 4], 0  ; 0x1400082d7
    je 0x1400082f9  ; 0x1400082dc
    call 0x140004d38  ; 0x1400082de
    movsxd rcx, dword ptr [rdi + 4]  ; 0x1400082e3
    add rax, rsi  ; 0x1400082e7
    movsxd rbx, dword ptr [rcx + rax + 4]  ; 0x1400082ea
    call 0x140004d38  ; 0x1400082ef
    add rax, rbx  ; 0x1400082f4
    jmp 0x1400082fb  ; 0x1400082f7
    xor eax, eax  ; 0x1400082f9
    lea rcx, [rax + 8]  ; 0x1400082fb
    lea rdx, [rip + 0x21852]  ; 0x1400082ff
    call 0x14000513c  ; 0x140008306
    test eax, eax  ; 0x14000830b
    je 0x140008330  ; 0x14000830d
    inc ebp  ; 0x14000830f
    add rsi, 0x14  ; 0x140008311
    cmp ebp, dword ptr [rdi]  ; 0x140008315
    jl 0x1400082cb  ; 0x140008317
    xor al, al  ; 0x140008319
    mov rbx, qword ptr [rsp + 0x30]  ; 0x14000831b
    mov rbp, qword ptr [rsp + 0x38]  ; 0x140008320
    mov rsi, qword ptr [rsp + 0x40]  ; 0x140008325
    add rsp, 0x20  ; 0x14000832a
    pop rdi  ; 0x14000832e
    ret  ; 0x14000832f
    mov al, 1  ; 0x140008330
    jmp 0x14000831b  ; 0x140008332
    mov r8, qword ptr [rdx]  ; 0x140008334
    lea r11, [rip - 0x833e]  ; 0x140008337
    mov r10, rcx  ; 0x14000833e
    mov r9, rdx  ; 0x140008341
    movzx ecx, byte ptr [r8]  ; 0x140008344
    and ecx, 0xf  ; 0x140008348
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x14000834b
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x140008354
    sub r8, rax  ; 0x14000835c
    mov eax, dword ptr [r8 - 4]  ; 0x14000835f
    shr eax, cl  ; 0x140008363
    mov ecx, eax  ; 0x140008365
    mov qword ptr [rdx], r8  ; 0x140008367
    and ecx, 3  ; 0x14000836a
    shr eax, 2  ; 0x14000836d
    mov dword ptr [r10 + 0x10], eax  ; 0x140008370
    mov dword ptr [r10 + 0x14], ecx  ; 0x140008374
    lea eax, [rcx - 1]  ; 0x140008378
    cmp eax, 1  ; 0x14000837b
    jbe 0x140008396  ; 0x14000837e
    cmp ecx, 3  ; 0x140008380
    jne 0x1400083cf  ; 0x140008383
    mov rax, qword ptr [rdx]  ; 0x140008385
    mov ecx, dword ptr [rax]  ; 0x140008388
    add rax, 4  ; 0x14000838a
    mov qword ptr [rdx], rax  ; 0x14000838e
    mov dword ptr [r10 + 0x18], ecx  ; 0x140008391
    ret  ; 0x140008395
    mov rax, qword ptr [rdx]  ; 0x140008396
    mov ecx, dword ptr [rax]  ; 0x140008399
    add rax, 4  ; 0x14000839b
    mov qword ptr [rdx], rax  ; 0x14000839f
    mov dword ptr [r10 + 0x18], ecx  ; 0x1400083a2
    mov rdx, qword ptr [rdx]  ; 0x1400083a6
    movzx ecx, byte ptr [rdx]  ; 0x1400083a9
    and ecx, 0xf  ; 0x1400083ac
    movsx rax, byte ptr [rcx + r11 + 0x1d450]  ; 0x1400083af
    mov cl, byte ptr [rcx + r11 + 0x1d460]  ; 0x1400083b8
    sub rdx, rax  ; 0x1400083c0
    mov eax, dword ptr [rdx - 4]  ; 0x1400083c3
    shr eax, cl  ; 0x1400083c6
    mov qword ptr [r9], rdx  ; 0x1400083c8
    mov dword ptr [r10 + 0x1c], eax  ; 0x1400083cb
    ret  ; 0x1400083cf
    mov rax, rdx  ; 0x1400083d0
    mov rdx, r8  ; 0x1400083d3
    jmp rax  ; 0x1400083d6
    int3   ; 0x1400083d9
    int3   ; 0x1400083da
    int3   ; 0x1400083db
    mov rax, r8  ; 0x1400083dc
    mov r10, rdx  ; 0x1400083df
    mov rdx, rax  ; 0x1400083e2
    mov r8d, r9d  ; 0x1400083e5
    jmp r10  ; 0x1400083e8
    int3   ; 0x1400083eb
    mov r11, rsp  ; 0x1400083ec
    mov qword ptr [r11 + 0x18], rbx  ; 0x1400083ef
    mov qword ptr [r11 + 0x20], r9  ; 0x1400083f3
    mov dword ptr [rsp + 0x10], edx  ; 0x1400083f7
; Function: func_1400083fb
func_1400083fb:
    push rbp  ; 0x1400083fb
    push rsi  ; 0x1400083fc
    push rdi  ; 0x1400083fd
    push r12  ; 0x1400083fe
    push r13  ; 0x140008400
    push r14  ; 0x140008402
    push r15  ; 0x140008404
    sub rsp, 0x20  ; 0x140008406
    mov rax, qword ptr [rcx + 8]  ; 0x14000840a
    xor bpl, bpl  ; 0x14000840e
    xor r14b, r14b  ; 0x140008411
    mov qword ptr [r11 + 8], rax  ; 0x140008414
    xor edi, edi  ; 0x140008418
    mov r12, r9  ; 0x14000841a
    mov r13d, r8d  ; 0x14000841d
    mov rbx, rcx  ; 0x140008420
    lea rsi, [rax - 1]  ; 0x140008423
    mov r15, rsi  ; 0x140008427
    cmp dword ptr [rcx], edi  ; 0x14000842a
    jle 0x140008471  ; 0x14000842c
    mov r12d, dword ptr [r11 + 0x10]  ; 0x14000842e
    cmp edi, r12d  ; 0x140008432
    jne 0x14000843d  ; 0x140008435
    mov rsi, rax  ; 0x140008437
    mov bpl, 1  ; 0x14000843a
    cmp edi, r13d  ; 0x14000843d
    jne 0x140008448  ; 0x140008440
    mov r15, rax  ; 0x140008442
    mov r14b, 1  ; 0x140008445
    test bpl, bpl  ; 0x140008448
    je 0x140008452  ; 0x14000844b
    test r14b, r14b  ; 0x14000844d
    jne 0x14000846c  ; 0x140008450
    lea rdx, [rsp + 0x60]  ; 0x140008452
    mov rcx, rbx  ; 0x140008457
    call 0x140008334  ; 0x14000845a
    inc edi  ; 0x14000845f
    cmp edi, dword ptr [rbx]  ; 0x140008461
    jge 0x14000846c  ; 0x140008463
    mov rax, qword ptr [rsp + 0x60]  ; 0x140008465
    jmp 0x140008432  ; 0x14000846a
    mov r12, qword ptr [rsp + 0x78]  ; 0x14000846c
    mov rax, qword ptr [r12]  ; 0x140008471
    mov qword ptr [r12 + 8], rsi  ; 0x140008475
    movups xmm0, xmmword ptr [rbx]  ; 0x14000847a
    movups xmmword ptr [rax], xmm0  ; 0x14000847d
    movups xmm1, xmmword ptr [rbx + 0x10]  ; 0x140008480
    movups xmmword ptr [rax + 0x10], xmm1  ; 0x140008484
    mov rax, qword ptr [rsp + 0x80]  ; 0x140008488
    mov rcx, qword ptr [rax]  ; 0x140008490
    mov qword ptr [rax + 8], r15  ; 0x140008493
    movups xmm0, xmmword ptr [rbx]  ; 0x140008497
    movups xmmword ptr [rcx], xmm0  ; 0x14000849a
    movups xmm1, xmmword ptr [rbx + 0x10]  ; 0x14000849d
    mov rbx, qword ptr [rsp + 0x70]  ; 0x1400084a1
    movups xmmword ptr [rcx + 0x10], xmm1  ; 0x1400084a6
    add rsp, 0x20  ; 0x1400084aa
    pop r15  ; 0x1400084ae
    pop r14  ; 0x1400084b0
    pop r13  ; 0x1400084b2
    pop r12  ; 0x1400084b4
    pop rdi  ; 0x1400084b6
    pop rsi  ; 0x1400084b7
    pop rbp  ; 0x1400084b8
    ret  ; 0x1400084b9
    int3   ; 0x1400084ba
    int3   ; 0x1400084bb
    mov qword ptr [rsp + 8], rbx  ; 0x1400084bc
    mov qword ptr [rsp + 0x10], rsi  ; 0x1400084c1
    push rdi  ; 0x1400084c6
    sub rsp, 0x30  ; 0x1400084c7
    mov rdi, qword ptr [rsp + 0x60]  ; 0x1400084cb
    mov ebx, edx  ; 0x1400084d0
    mov rsi, r8  ; 0x1400084d2
    mov r10, rcx  ; 0x1400084d5
    mov rdx, qword ptr [rdi + 8]  ; 0x1400084d8
    cmp rdx, qword ptr [r8 + 8]  ; 0x1400084dc
    ja 0x140008559  ; 0x1400084e0
    cmp qword ptr [rcx + 8], rdx  ; 0x1400084e2
    ja 0x140008559  ; 0x1400084e6
    mov rax, qword ptr [r8 + 8]  ; 0x1400084e8
    mov rcx, rdx  ; 0x1400084ec
    sub rcx, qword ptr [r10 + 8]  ; 0x1400084ef
    sub rax, rdx  ; 0x1400084f3
    cmp rcx, rax  ; 0x1400084f6
    jge 0x140008528  ; 0x1400084f9
    movups xmm0, xmmword ptr [r10]  ; 0x1400084fb
    movups xmmword ptr [rsp + 0x20], xmm0  ; 0x1400084ff
    cmp rdx, qword ptr [r10 + 8]  ; 0x140008504
    jbe 0x140008555  ; 0x140008508
    mov rcx, qword ptr [rsp + 0x20]  ; 0x14000850a
    lea rdx, [rsp + 0x28]  ; 0x14000850f
    call 0x140008334  ; 0x140008514
    mov rax, qword ptr [rsp + 0x28]  ; 0x140008519
    inc ebx  ; 0x14000851e
    cmp qword ptr [rdi + 8], rax  ; 0x140008520
    ja 0x14000850a  ; 0x140008524
    jmp 0x140008555  ; 0x140008526
    mov ebx, r9d  ; 0x140008528
    movups xmm0, xmmword ptr [rdi]  ; 0x14000852b
    movups xmmword ptr [rsp + 0x20], xmm0  ; 0x14000852e
    cmp qword ptr [r8 + 8], rdx  ; 0x140008533
    jbe 0x140008555  ; 0x140008537
    mov rcx, qword ptr [rsp + 0x20]  ; 0x140008539
    lea rdx, [rsp + 0x28]  ; 0x14000853e
    call 0x140008334  ; 0x140008543
    mov rcx, qword ptr [rsp + 0x28]  ; 0x140008548
    dec ebx  ; 0x14000854d
    cmp qword ptr [rsi + 8], rcx  ; 0x14000854f
    ja 0x140008539  ; 0x140008553
    mov eax, ebx  ; 0x140008555
    jmp 0x14000855c  ; 0x140008557
    or eax, 0xffffffff  ; 0x140008559
    mov rbx, qword ptr [rsp + 0x40]  ; 0x14000855c
    mov rsi, qword ptr [rsp + 0x48]  ; 0x140008561
    add rsp, 0x30  ; 0x140008566
    pop rdi  ; 0x14000856a
    ret  ; 0x14000856b
    int3   ; 0x14000856c
    int3   ; 0x14000856d
    int3   ; 0x14000856e
    int3   ; 0x14000856f
    int3   ; 0x140008570
    int3   ; 0x140008571
    int3   ; 0x140008572
    int3   ; 0x140008573
    int3   ; 0x140008574
    int3   ; 0x140008575
    nop  ; 0x140008576
    int3   ; 0x140008580
    int3   ; 0x140008581
    int3   ; 0x140008582
    int3   ; 0x140008583
    int3   ; 0x140008584
    int3   ; 0x140008585
    nop  ; 0x140008586
    int3   ; 0x140008590
    int3   ; 0x140008591
    int3   ; 0x140008592
    int3   ; 0x140008593
    int3   ; 0x140008594
    int3   ; 0x140008595
    nop  ; 0x140008596
    mov qword ptr [rsp + 8], rcx  ; 0x1400085a0
    mov qword ptr [rsp + 0x18], rdx  ; 0x1400085a5
    mov dword ptr [rsp + 0x10], r8d  ; 0x1400085aa
    mov r9, 0x19930520  ; 0x1400085af
    jmp 0x1400085c0  ; 0x1400085b6
    int3   ; 0x1400085bb
    int3   ; 0x1400085bc
    int3   ; 0x1400085bd
    int3   ; 0x1400085be
    int3   ; 0x1400085bf
    ret  ; 0x1400085c0
    int3   ; 0x1400085c1
    int3   ; 0x1400085c2
    int3   ; 0x1400085c3
    int3   ; 0x1400085c4
    int3   ; 0x1400085c5
    int3   ; 0x1400085c6
    int3   ; 0x1400085c7
    int3   ; 0x1400085c8
    int3   ; 0x1400085c9
    int3   ; 0x1400085ca
    int3   ; 0x1400085cb
    int3   ; 0x1400085cc
    int3   ; 0x1400085cd
    int3   ; 0x1400085ce
    int3   ; 0x1400085cf
    ret  ; 0x1400085d0
    int3   ; 0x1400085d1
    int3   ; 0x1400085d2
    int3   ; 0x1400085d3
    mov rax, qword ptr [rip + 0x14c85]  ; 0x1400085d4
    lea rdx, [rip - 0x49ae]  ; 0x1400085db
    cmp rax, rdx  ; 0x1400085e2
    je 0x14000860a  ; 0x1400085e5
    mov rax, qword ptr gs:[0x30]  ; 0x1400085e7
    mov rcx, qword ptr [rcx + 0x98]  ; 0x1400085f0
    cmp rcx, qword ptr [rax + 0x10]  ; 0x1400085f7
    jb 0x140008603  ; 0x1400085fb
    cmp rcx, qword ptr [rax + 8]  ; 0x1400085fd
    jbe 0x14000860a  ; 0x140008601
    mov ecx, 0xd  ; 0x140008603
    int 0x29  ; 0x140008608
    ret  ; 0x14000860a
    int3   ; 0x14000860b
    push rbx  ; 0x14000860c
    sub rsp, 0x20  ; 0x14000860e
    xor ebx, ebx  ; 0x140008612
    lea rdx, [rip + 0x21c05]  ; 0x140008614
    xor r8d, r8d  ; 0x14000861b
    lea rcx, [rbx + rbx*4]  ; 0x14000861e
    lea rcx, [rdx + rcx*8]  ; 0x140008622
    mov edx, 0xfa0  ; 0x140008626
    call 0x1400096c4  ; 0x14000862b
    test eax, eax  ; 0x140008630
    je 0x140008645  ; 0x140008632
    inc dword ptr [rip + 0x21c0e]  ; 0x140008634
    inc ebx  ; 0x14000863a
    cmp ebx, 1  ; 0x14000863c
    jb 0x140008614  ; 0x14000863f
    mov al, 1  ; 0x140008641
    jmp 0x14000864c  ; 0x140008643
    call 0x140008654  ; 0x140008645
    xor al, al  ; 0x14000864a
    add rsp, 0x20  ; 0x14000864c
    pop rbx  ; 0x140008650
    ret  ; 0x140008651
    int3   ; 0x140008652
    int3   ; 0x140008653
    push rbx  ; 0x140008654
    sub rsp, 0x20  ; 0x140008656
    mov ebx, dword ptr [rip + 0x21be8]  ; 0x14000865a
    jmp 0x14000867f  ; 0x140008660
    lea rax, [rip + 0x21bb7]  ; 0x140008662
    dec ebx  ; 0x140008669
    lea rcx, [rbx + rbx*4]  ; 0x14000866b
    lea rcx, [rax + rcx*8]  ; 0x14000866f
    call qword ptr [rip + 0x14a57]  ; 0x140008673
    dec dword ptr [rip + 0x21bc9]  ; 0x140008679
    test ebx, ebx  ; 0x14000867f
    jne 0x140008662  ; 0x140008681
    mov al, 1  ; 0x140008683
    add rsp, 0x20  ; 0x140008685
    pop rbx  ; 0x140008689
    ret  ; 0x14000868a
    int3   ; 0x14000868b
    int3   ; 0x14000868c
    int3   ; 0x14000868d
    int3   ; 0x14000868e
    int3   ; 0x14000868f
    int3   ; 0x140008690
    int3   ; 0x140008691
    int3   ; 0x140008692
    int3   ; 0x140008693
    int3   ; 0x140008694
    int3   ; 0x140008695
    nop  ; 0x140008696
    mov rax, rcx  ; 0x1400086a0
    lea r10, [rip - 0x86aa]  ; 0x1400086a3
    cmp r8, 0xf  ; 0x1400086aa
    ja 0x1400087c0  ; 0x1400086ae
    nop  ; 0x1400086b4
    mov r9d, dword ptr [r10 + r8*4 + 0x2d000]  ; 0x1400086c0
    add r9, r10  ; 0x1400086c8
    jmp r9  ; 0x1400086cb
    ret  ; 0x1400086ce
    nop  ; 0x1400086cf
    mov r8, qword ptr [rdx]  ; 0x1400086d0
    mov ecx, dword ptr [rdx + 8]  ; 0x1400086d3
    movzx r9d, word ptr [rdx + 0xc]  ; 0x1400086d6
    movzx r10d, byte ptr [rdx + 0xe]  ; 0x1400086db
    mov qword ptr [rax], r8  ; 0x1400086e0
    mov dword ptr [rax + 8], ecx  ; 0x1400086e3
    mov word ptr [rax + 0xc], r9w  ; 0x1400086e6
    mov byte ptr [rax + 0xe], r10b  ; 0x1400086eb
    ret  ; 0x1400086ef
    mov r8, qword ptr [rdx]  ; 0x1400086f0
    movzx ecx, word ptr [rdx + 8]  ; 0x1400086f3
    movzx r9d, byte ptr [rdx + 0xa]  ; 0x1400086f7
    mov qword ptr [rax], r8  ; 0x1400086fc
    mov word ptr [rax + 8], cx  ; 0x1400086ff
    mov byte ptr [rax + 0xa], r9b  ; 0x140008703
    ret  ; 0x140008707
    movzx ecx, word ptr [rdx]  ; 0x140008708
    mov word ptr [rax], cx  ; 0x14000870b
    ret  ; 0x14000870e
    nop  ; 0x14000870f
    mov ecx, dword ptr [rdx]  ; 0x140008710
    movzx r8d, word ptr [rdx + 4]  ; 0x140008712
    movzx r9d, byte ptr [rdx + 6]  ; 0x140008717
    mov dword ptr [rax], ecx  ; 0x14000871c
    mov word ptr [rax + 4], r8w  ; 0x14000871e
    mov byte ptr [rax + 6], r9b  ; 0x140008723
    ret  ; 0x140008727
    mov r8, qword ptr [rdx]  ; 0x140008728
    mov ecx, dword ptr [rdx + 8]  ; 0x14000872b
    movzx r9d, word ptr [rdx + 0xc]  ; 0x14000872e
    mov qword ptr [rax], r8  ; 0x140008733
    mov dword ptr [rax + 8], ecx  ; 0x140008736
    mov word ptr [rax + 0xc], r9w  ; 0x140008739
    ret  ; 0x14000873e
    movzx ecx, word ptr [rdx]  ; 0x14000873f
    movzx r8d, byte ptr [rdx + 2]  ; 0x140008742
    mov word ptr [rax], cx  ; 0x140008747
    mov byte ptr [rax + 2], r8b  ; 0x14000874a
    ret  ; 0x14000874e
    nop  ; 0x14000874f
    mov r8, qword ptr [rdx]  ; 0x140008750
    mov ecx, dword ptr [rdx + 8]  ; 0x140008753
    movzx r9d, byte ptr [rdx + 0xc]  ; 0x140008756
    mov qword ptr [rax], r8  ; 0x14000875b
    mov dword ptr [rax + 8], ecx  ; 0x14000875e
    mov byte ptr [rax + 0xc], r9b  ; 0x140008761
    ret  ; 0x140008765
    mov r8, qword ptr [rdx]  ; 0x140008766
    movzx ecx, word ptr [rdx + 8]  ; 0x140008769
    mov qword ptr [rax], r8  ; 0x14000876d
    mov word ptr [rax + 8], cx  ; 0x140008770
    ret  ; 0x140008774
    mov r8, qword ptr [rdx]  ; 0x140008775
    movzx ecx, byte ptr [rdx + 8]  ; 0x140008778
    mov qword ptr [rax], r8  ; 0x14000877c
    mov byte ptr [rax + 8], cl  ; 0x14000877f
    ret  ; 0x140008782
    mov r8, qword ptr [rdx]  ; 0x140008783
    mov ecx, dword ptr [rdx + 8]  ; 0x140008786
    mov qword ptr [rax], r8  ; 0x140008789
    mov dword ptr [rax + 8], ecx  ; 0x14000878c
    ret  ; 0x14000878f
    mov ecx, dword ptr [rdx]  ; 0x140008790
    movzx r8d, word ptr [rdx + 4]  ; 0x140008792
    mov dword ptr [rax], ecx  ; 0x140008797
    mov word ptr [rax + 4], r8w  ; 0x140008799
    ret  ; 0x14000879e
    mov ecx, dword ptr [rdx]  ; 0x14000879f
    movzx r8d, byte ptr [rdx + 4]  ; 0x1400087a1
    mov dword ptr [rax], ecx  ; 0x1400087a6
    mov byte ptr [rax + 4], r8b  ; 0x1400087a8
    ret  ; 0x1400087ac
    mov rcx, qword ptr [rdx]  ; 0x1400087ad
    mov qword ptr [rax], rcx  ; 0x1400087b0
    ret  ; 0x1400087b3
    movzx ecx, byte ptr [rdx]  ; 0x1400087b4
    mov byte ptr [rax], cl  ; 0x1400087b7
    ret  ; 0x1400087b9
    mov ecx, dword ptr [rdx]  ; 0x1400087ba
    mov dword ptr [rax], ecx  ; 0x1400087bc
    ret  ; 0x1400087be
    nop  ; 0x1400087bf
    cmp r8, 0x20  ; 0x1400087c0
    ja 0x1400087dd  ; 0x1400087c4
    movdqu xmm1, xmmword ptr [rdx]  ; 0x1400087c6
    movdqu xmm2, xmmword ptr [rdx + r8 - 0x10]  ; 0x1400087ca
    movdqu xmmword ptr [rcx], xmm1  ; 0x1400087d1
    movdqu xmmword ptr [rcx + r8 - 0x10], xmm2  ; 0x1400087d5
    ret  ; 0x1400087dc
    lea r9, [rdx + r8]  ; 0x1400087dd
    cmp rcx, rdx  ; 0x1400087e1
    cmovbe r9, rcx  ; 0x1400087e4
    cmp rcx, r9  ; 0x1400087e8
    jb 0x140009890  ; 0x1400087eb
    cmp r8, 0x180000  ; 0x1400087f1
    jae 0x140008807  ; 0x1400087f8
    cmp r8, 0x2000  ; 0x1400087fa
    jae 0x140009870  ; 0x140008801
    vmovdqu ymm0, ymmword ptr [rdx]  ; 0x140008807
    vmovdqu ymm5, ymmword ptr [rdx + r8 - 0x20]  ; 0x14000880b
    cmp r8, 0x100  ; 0x140008812
    jbe 0x1400088d8  ; 0x140008819
    mov r9, rcx  ; 0x14000881f
    and r9, 0x1f  ; 0x140008822
    sub r9, 0x20  ; 0x140008826
    sub rcx, r9  ; 0x14000882a
    sub rdx, r9  ; 0x14000882d
    add r8, r9  ; 0x140008830
    cmp r8, 0x100  ; 0x140008833
    jbe 0x1400088d8  ; 0x14000883a
    cmp r8, 0x180000  ; 0x140008840
    ja 0x140008980  ; 0x140008847
    nop  ; 0x14000884d
    vmovdqu ymm1, ymmword ptr [rdx]  ; 0x140008850
    vmovdqu ymm2, ymmword ptr [rdx + 0x20]  ; 0x140008854
    vmovdqu ymm3, ymmword ptr [rdx + 0x40]  ; 0x140008859
    vmovdqu ymm4, ymmword ptr [rdx + 0x60]  ; 0x14000885e
    vmovdqa ymmword ptr [rcx], ymm1  ; 0x140008863
    vmovdqa ymmword ptr [rcx + 0x20], ymm2  ; 0x140008867
    vmovdqa ymmword ptr [rcx + 0x40], ymm3  ; 0x14000886c
    vmovdqa ymmword ptr [rcx + 0x60], ymm4  ; 0x140008871
    vmovdqu ymm1, ymmword ptr [rdx + 0x80]  ; 0x140008876
    vmovdqu ymm2, ymmword ptr [rdx + 0xa0]  ; 0x14000887e
    vmovdqu ymm3, ymmword ptr [rdx + 0xc0]  ; 0x140008886
    vmovdqu ymm4, ymmword ptr [rdx + 0xe0]  ; 0x14000888e
    vmovdqa ymmword ptr [rcx + 0x80], ymm1  ; 0x140008896
    vmovdqa ymmword ptr [rcx + 0xa0], ymm2  ; 0x14000889e
    vmovdqa ymmword ptr [rcx + 0xc0], ymm3  ; 0x1400088a6
    vmovdqa ymmword ptr [rcx + 0xe0], ymm4  ; 0x1400088ae
    add rcx, 0x100  ; 0x1400088b6
    add rdx, 0x100  ; 0x1400088bd
    sub r8, 0x100  ; 0x1400088c4
    cmp r8, 0x100  ; 0x1400088cb
    jae 0x140008850  ; 0x1400088d2
    lea r9, [r8 + 0x1f]  ; 0x1400088d8
    and r9, 0xffffffffffffffe0  ; 0x1400088dc
    mov r11, r9  ; 0x1400088e0
    shr r11, 5  ; 0x1400088e3
    mov r11d, dword ptr [r10 + r11*4 + 0x2d040]  ; 0x1400088e7
    add r11, r10  ; 0x1400088ef
    jmp r11  ; 0x1400088f2
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x100]  ; 0x1400088f5
    vmovdqu ymmword ptr [rcx + r9 - 0x100], ymm1  ; 0x1400088ff
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xe0]  ; 0x140008909
    vmovdqu ymmword ptr [rcx + r9 - 0xe0], ymm1  ; 0x140008913
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xc0]  ; 0x14000891d
    vmovdqu ymmword ptr [rcx + r9 - 0xc0], ymm1  ; 0x140008927
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xa0]  ; 0x140008931
    vmovdqu ymmword ptr [rcx + r9 - 0xa0], ymm1  ; 0x14000893b
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x80]  ; 0x140008945
    vmovdqu ymmword ptr [rcx + r9 - 0x80], ymm1  ; 0x14000894c
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x60]  ; 0x140008953
    vmovdqu ymmword ptr [rcx + r9 - 0x60], ymm1  ; 0x14000895a
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x40]  ; 0x140008961
    vmovdqu ymmword ptr [rcx + r9 - 0x40], ymm1  ; 0x140008968
    vmovdqu ymmword ptr [rcx + r8 - 0x20], ymm5  ; 0x14000896f
    vmovdqu ymmword ptr [rax], ymm0  ; 0x140008976
    vzeroupper   ; 0x14000897a
    ret  ; 0x14000897d
    nop  ; 0x14000897e
    vmovdqu ymm1, ymmword ptr [rdx]  ; 0x140008980
    vmovdqu ymm2, ymmword ptr [rdx + 0x20]  ; 0x140008984
    vmovdqu ymm3, ymmword ptr [rdx + 0x40]  ; 0x140008989
    vmovdqu ymm4, ymmword ptr [rdx + 0x60]  ; 0x14000898e
    vmovntdq ymmword ptr [rcx], ymm1  ; 0x140008993
    vmovntdq ymmword ptr [rcx + 0x20], ymm2  ; 0x140008997
    vmovntdq ymmword ptr [rcx + 0x40], ymm3  ; 0x14000899c
    vmovntdq ymmword ptr [rcx + 0x60], ymm4  ; 0x1400089a1
    vmovdqu ymm1, ymmword ptr [rdx + 0x80]  ; 0x1400089a6
    vmovdqu ymm2, ymmword ptr [rdx + 0xa0]  ; 0x1400089ae
    vmovdqu ymm3, ymmword ptr [rdx + 0xc0]  ; 0x1400089b6
    vmovdqu ymm4, ymmword ptr [rdx + 0xe0]  ; 0x1400089be
    vmovntdq ymmword ptr [rcx + 0x80], ymm1  ; 0x1400089c6
    vmovntdq ymmword ptr [rcx + 0xa0], ymm2  ; 0x1400089ce
    vmovntdq ymmword ptr [rcx + 0xc0], ymm3  ; 0x1400089d6
    vmovntdq ymmword ptr [rcx + 0xe0], ymm4  ; 0x1400089de
    add rcx, 0x100  ; 0x1400089e6
    add rdx, 0x100  ; 0x1400089ed
    sub r8, 0x100  ; 0x1400089f4
    cmp r8, 0x100  ; 0x1400089fb
    jae 0x140008980  ; 0x140008a02
    lea r9, [r8 + 0x1f]  ; 0x140008a08
    and r9, 0xffffffffffffffe0  ; 0x140008a0c
    mov r11, r9  ; 0x140008a10
    shr r11, 5  ; 0x140008a13
    mov r11d, dword ptr [r10 + r11*4 + 0x2d064]  ; 0x140008a17
    add r11, r10  ; 0x140008a1f
    jmp r11  ; 0x140008a22
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x100]  ; 0x140008a25
    vmovntdq ymmword ptr [rcx + r9 - 0x100], ymm1  ; 0x140008a2f
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xe0]  ; 0x140008a39
    vmovntdq ymmword ptr [rcx + r9 - 0xe0], ymm1  ; 0x140008a43
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xc0]  ; 0x140008a4d
    vmovntdq ymmword ptr [rcx + r9 - 0xc0], ymm1  ; 0x140008a57
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xa0]  ; 0x140008a61
    vmovntdq ymmword ptr [rcx + r9 - 0xa0], ymm1  ; 0x140008a6b
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x80]  ; 0x140008a75
    vmovntdq ymmword ptr [rcx + r9 - 0x80], ymm1  ; 0x140008a7c
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x60]  ; 0x140008a83
    vmovntdq ymmword ptr [rcx + r9 - 0x60], ymm1  ; 0x140008a8a
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x40]  ; 0x140008a91
    vmovntdq ymmword ptr [rcx + r9 - 0x40], ymm1  ; 0x140008a98
    vmovdqu ymmword ptr [rcx + r8 - 0x20], ymm5  ; 0x140008a9f
    vmovdqu ymmword ptr [rax], ymm0  ; 0x140008aa6
    sfence   ; 0x140008aaa
    vzeroupper   ; 0x140008aad
    ret  ; 0x140008ab0
    int3   ; 0x140008ab1
    int3   ; 0x140008ab2
    int3   ; 0x140008ab3
    int3   ; 0x140008ab4
    int3   ; 0x140008ab5
    int3   ; 0x140008ab6
    int3   ; 0x140008ab7
    int3   ; 0x140008ab8
    int3   ; 0x140008ab9
    int3   ; 0x140008aba
    int3   ; 0x140008abb
    int3   ; 0x140008abc
    int3   ; 0x140008abd
    int3   ; 0x140008abe
    int3   ; 0x140008abf
    int3   ; 0x140008ac0
    int3   ; 0x140008ac1
    int3   ; 0x140008ac2
    int3   ; 0x140008ac3
    int3   ; 0x140008ac4
    int3   ; 0x140008ac5
    nop  ; 0x140008ac6
    mov rax, rcx  ; 0x140008ad0
    lea r10, [rip - 0x8ada]  ; 0x140008ad3
    cmp r8, 0xf  ; 0x140008ada
    ja 0x140008bf0  ; 0x140008ade
    nop  ; 0x140008ae4
    mov r9d, dword ptr [r10 + r8*4 + 0x2d090]  ; 0x140008af0
    add r9, r10  ; 0x140008af8
    jmp r9  ; 0x140008afb
    ret  ; 0x140008afe
    nop  ; 0x140008aff
    mov r8, qword ptr [rdx]  ; 0x140008b00
    mov ecx, dword ptr [rdx + 8]  ; 0x140008b03
    movzx r9d, word ptr [rdx + 0xc]  ; 0x140008b06
    movzx r10d, byte ptr [rdx + 0xe]  ; 0x140008b0b
    mov qword ptr [rax], r8  ; 0x140008b10
    mov dword ptr [rax + 8], ecx  ; 0x140008b13
    mov word ptr [rax + 0xc], r9w  ; 0x140008b16
    mov byte ptr [rax + 0xe], r10b  ; 0x140008b1b
    ret  ; 0x140008b1f
    mov r8, qword ptr [rdx]  ; 0x140008b20
    movzx ecx, word ptr [rdx + 8]  ; 0x140008b23
    movzx r9d, byte ptr [rdx + 0xa]  ; 0x140008b27
    mov qword ptr [rax], r8  ; 0x140008b2c
    mov word ptr [rax + 8], cx  ; 0x140008b2f
    mov byte ptr [rax + 0xa], r9b  ; 0x140008b33
    ret  ; 0x140008b37
    movzx ecx, word ptr [rdx]  ; 0x140008b38
    mov word ptr [rax], cx  ; 0x140008b3b
    ret  ; 0x140008b3e
    nop  ; 0x140008b3f
    mov ecx, dword ptr [rdx]  ; 0x140008b40
    movzx r8d, word ptr [rdx + 4]  ; 0x140008b42
    movzx r9d, byte ptr [rdx + 6]  ; 0x140008b47
    mov dword ptr [rax], ecx  ; 0x140008b4c
    mov word ptr [rax + 4], r8w  ; 0x140008b4e
    mov byte ptr [rax + 6], r9b  ; 0x140008b53
    ret  ; 0x140008b57
    mov r8, qword ptr [rdx]  ; 0x140008b58
    mov ecx, dword ptr [rdx + 8]  ; 0x140008b5b
    movzx r9d, word ptr [rdx + 0xc]  ; 0x140008b5e
    mov qword ptr [rax], r8  ; 0x140008b63
    mov dword ptr [rax + 8], ecx  ; 0x140008b66
    mov word ptr [rax + 0xc], r9w  ; 0x140008b69
    ret  ; 0x140008b6e
    movzx ecx, word ptr [rdx]  ; 0x140008b6f
    movzx r8d, byte ptr [rdx + 2]  ; 0x140008b72
    mov word ptr [rax], cx  ; 0x140008b77
    mov byte ptr [rax + 2], r8b  ; 0x140008b7a
    ret  ; 0x140008b7e
    nop  ; 0x140008b7f
    mov r8, qword ptr [rdx]  ; 0x140008b80
    mov ecx, dword ptr [rdx + 8]  ; 0x140008b83
    movzx r9d, byte ptr [rdx + 0xc]  ; 0x140008b86
    mov qword ptr [rax], r8  ; 0x140008b8b
    mov dword ptr [rax + 8], ecx  ; 0x140008b8e
    mov byte ptr [rax + 0xc], r9b  ; 0x140008b91
    ret  ; 0x140008b95
    mov r8, qword ptr [rdx]  ; 0x140008b96
    movzx ecx, word ptr [rdx + 8]  ; 0x140008b99
    mov qword ptr [rax], r8  ; 0x140008b9d
    mov word ptr [rax + 8], cx  ; 0x140008ba0
    ret  ; 0x140008ba4
    mov r8, qword ptr [rdx]  ; 0x140008ba5
    movzx ecx, byte ptr [rdx + 8]  ; 0x140008ba8
    mov qword ptr [rax], r8  ; 0x140008bac
    mov byte ptr [rax + 8], cl  ; 0x140008baf
    ret  ; 0x140008bb2
    mov r8, qword ptr [rdx]  ; 0x140008bb3
    mov ecx, dword ptr [rdx + 8]  ; 0x140008bb6
    mov qword ptr [rax], r8  ; 0x140008bb9
    mov dword ptr [rax + 8], ecx  ; 0x140008bbc
    ret  ; 0x140008bbf
    mov ecx, dword ptr [rdx]  ; 0x140008bc0
    movzx r8d, word ptr [rdx + 4]  ; 0x140008bc2
    mov dword ptr [rax], ecx  ; 0x140008bc7
    mov word ptr [rax + 4], r8w  ; 0x140008bc9
    ret  ; 0x140008bce
    mov ecx, dword ptr [rdx]  ; 0x140008bcf
    movzx r8d, byte ptr [rdx + 4]  ; 0x140008bd1
    mov dword ptr [rax], ecx  ; 0x140008bd6
    mov byte ptr [rax + 4], r8b  ; 0x140008bd8
    ret  ; 0x140008bdc
    mov rcx, qword ptr [rdx]  ; 0x140008bdd
    mov qword ptr [rax], rcx  ; 0x140008be0
    ret  ; 0x140008be3
    movzx ecx, byte ptr [rdx]  ; 0x140008be4
    mov byte ptr [rax], cl  ; 0x140008be7
    ret  ; 0x140008be9
    mov ecx, dword ptr [rdx]  ; 0x140008bea
    mov dword ptr [rax], ecx  ; 0x140008bec
    ret  ; 0x140008bee
    nop  ; 0x140008bef
    cmp r8, 0x20  ; 0x140008bf0
    ja 0x140008c0d  ; 0x140008bf4
    movdqu xmm1, xmmword ptr [rdx]  ; 0x140008bf6
    movdqu xmm2, xmmword ptr [rdx + r8 - 0x10]  ; 0x140008bfa
    movdqu xmmword ptr [rcx], xmm1  ; 0x140008c01
    movdqu xmmword ptr [rcx + r8 - 0x10], xmm2  ; 0x140008c05
    ret  ; 0x140008c0c
    lea r9, [rdx + r8]  ; 0x140008c0d
    cmp rcx, rdx  ; 0x140008c11
    cmovbe r9, rcx  ; 0x140008c14
    cmp rcx, r9  ; 0x140008c18
    jb 0x1400099a0  ; 0x140008c1b
    cmp r8, 0x180000  ; 0x140008c21
    jae 0x140008c37  ; 0x140008c28
    cmp r8, 0x2000  ; 0x140008c2a
    jae 0x140009980  ; 0x140008c31
    vmovdqu ymm0, ymmword ptr [rdx]  ; 0x140008c37
    vmovdqu ymm5, ymmword ptr [rdx + r8 - 0x20]  ; 0x140008c3b
    cmp r8, 0x100  ; 0x140008c42
    jbe 0x140008d08  ; 0x140008c49
    mov r9, rcx  ; 0x140008c4f
    and r9, 0x1f  ; 0x140008c52
    sub r9, 0x20  ; 0x140008c56
    sub rcx, r9  ; 0x140008c5a
    sub rdx, r9  ; 0x140008c5d
    add r8, r9  ; 0x140008c60
    cmp r8, 0x100  ; 0x140008c63
    jbe 0x140008d08  ; 0x140008c6a
    cmp r8, 0x180000  ; 0x140008c70
    ja 0x140008db0  ; 0x140008c77
    nop  ; 0x140008c7d
    vmovdqu ymm1, ymmword ptr [rdx]  ; 0x140008c80
    vmovdqu ymm2, ymmword ptr [rdx + 0x20]  ; 0x140008c84
    vmovdqu ymm3, ymmword ptr [rdx + 0x40]  ; 0x140008c89
    vmovdqu ymm4, ymmword ptr [rdx + 0x60]  ; 0x140008c8e
    vmovdqa ymmword ptr [rcx], ymm1  ; 0x140008c93
    vmovdqa ymmword ptr [rcx + 0x20], ymm2  ; 0x140008c97
    vmovdqa ymmword ptr [rcx + 0x40], ymm3  ; 0x140008c9c
    vmovdqa ymmword ptr [rcx + 0x60], ymm4  ; 0x140008ca1
    vmovdqu ymm1, ymmword ptr [rdx + 0x80]  ; 0x140008ca6
    vmovdqu ymm2, ymmword ptr [rdx + 0xa0]  ; 0x140008cae
    vmovdqu ymm3, ymmword ptr [rdx + 0xc0]  ; 0x140008cb6
    vmovdqu ymm4, ymmword ptr [rdx + 0xe0]  ; 0x140008cbe
    vmovdqa ymmword ptr [rcx + 0x80], ymm1  ; 0x140008cc6
    vmovdqa ymmword ptr [rcx + 0xa0], ymm2  ; 0x140008cce
    vmovdqa ymmword ptr [rcx + 0xc0], ymm3  ; 0x140008cd6
    vmovdqa ymmword ptr [rcx + 0xe0], ymm4  ; 0x140008cde
    add rcx, 0x100  ; 0x140008ce6
    add rdx, 0x100  ; 0x140008ced
    sub r8, 0x100  ; 0x140008cf4
    cmp r8, 0x100  ; 0x140008cfb
    jae 0x140008c80  ; 0x140008d02
    lea r9, [r8 + 0x1f]  ; 0x140008d08
    and r9, 0xffffffffffffffe0  ; 0x140008d0c
    mov r11, r9  ; 0x140008d10
    shr r11, 5  ; 0x140008d13
    mov r11d, dword ptr [r10 + r11*4 + 0x2d0d0]  ; 0x140008d17
    add r11, r10  ; 0x140008d1f
    jmp r11  ; 0x140008d22
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x100]  ; 0x140008d25
    vmovdqu ymmword ptr [rcx + r9 - 0x100], ymm1  ; 0x140008d2f
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xe0]  ; 0x140008d39
    vmovdqu ymmword ptr [rcx + r9 - 0xe0], ymm1  ; 0x140008d43
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xc0]  ; 0x140008d4d
    vmovdqu ymmword ptr [rcx + r9 - 0xc0], ymm1  ; 0x140008d57
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xa0]  ; 0x140008d61
    vmovdqu ymmword ptr [rcx + r9 - 0xa0], ymm1  ; 0x140008d6b
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x80]  ; 0x140008d75
    vmovdqu ymmword ptr [rcx + r9 - 0x80], ymm1  ; 0x140008d7c
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x60]  ; 0x140008d83
    vmovdqu ymmword ptr [rcx + r9 - 0x60], ymm1  ; 0x140008d8a
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x40]  ; 0x140008d91
    vmovdqu ymmword ptr [rcx + r9 - 0x40], ymm1  ; 0x140008d98
    vmovdqu ymmword ptr [rcx + r8 - 0x20], ymm5  ; 0x140008d9f
    vmovdqu ymmword ptr [rax], ymm0  ; 0x140008da6
    vzeroupper   ; 0x140008daa
    ret  ; 0x140008dad
    nop  ; 0x140008dae
    vmovdqu ymm1, ymmword ptr [rdx]  ; 0x140008db0
    vmovdqu ymm2, ymmword ptr [rdx + 0x20]  ; 0x140008db4
    vmovdqu ymm3, ymmword ptr [rdx + 0x40]  ; 0x140008db9
    vmovdqu ymm4, ymmword ptr [rdx + 0x60]  ; 0x140008dbe
    vmovntdq ymmword ptr [rcx], ymm1  ; 0x140008dc3
    vmovntdq ymmword ptr [rcx + 0x20], ymm2  ; 0x140008dc7
    vmovntdq ymmword ptr [rcx + 0x40], ymm3  ; 0x140008dcc
    vmovntdq ymmword ptr [rcx + 0x60], ymm4  ; 0x140008dd1
    vmovdqu ymm1, ymmword ptr [rdx + 0x80]  ; 0x140008dd6
    vmovdqu ymm2, ymmword ptr [rdx + 0xa0]  ; 0x140008dde
    vmovdqu ymm3, ymmword ptr [rdx + 0xc0]  ; 0x140008de6
    vmovdqu ymm4, ymmword ptr [rdx + 0xe0]  ; 0x140008dee
    vmovntdq ymmword ptr [rcx + 0x80], ymm1  ; 0x140008df6
    vmovntdq ymmword ptr [rcx + 0xa0], ymm2  ; 0x140008dfe
    vmovntdq ymmword ptr [rcx + 0xc0], ymm3  ; 0x140008e06
    vmovntdq ymmword ptr [rcx + 0xe0], ymm4  ; 0x140008e0e
    add rcx, 0x100  ; 0x140008e16
    add rdx, 0x100  ; 0x140008e1d
    sub r8, 0x100  ; 0x140008e24
    cmp r8, 0x100  ; 0x140008e2b
    jae 0x140008db0  ; 0x140008e32
    lea r9, [r8 + 0x1f]  ; 0x140008e38
    and r9, 0xffffffffffffffe0  ; 0x140008e3c
    mov r11, r9  ; 0x140008e40
    shr r11, 5  ; 0x140008e43
    mov r11d, dword ptr [r10 + r11*4 + 0x2d0f4]  ; 0x140008e47
    add r11, r10  ; 0x140008e4f
    jmp r11  ; 0x140008e52
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x100]  ; 0x140008e55
    vmovntdq ymmword ptr [rcx + r9 - 0x100], ymm1  ; 0x140008e5f
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xe0]  ; 0x140008e69
    vmovntdq ymmword ptr [rcx + r9 - 0xe0], ymm1  ; 0x140008e73
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xc0]  ; 0x140008e7d
    vmovntdq ymmword ptr [rcx + r9 - 0xc0], ymm1  ; 0x140008e87
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0xa0]  ; 0x140008e91
    vmovntdq ymmword ptr [rcx + r9 - 0xa0], ymm1  ; 0x140008e9b
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x80]  ; 0x140008ea5
    vmovntdq ymmword ptr [rcx + r9 - 0x80], ymm1  ; 0x140008eac
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x60]  ; 0x140008eb3
    vmovntdq ymmword ptr [rcx + r9 - 0x60], ymm1  ; 0x140008eba
    vmovdqu ymm1, ymmword ptr [rdx + r9 - 0x40]  ; 0x140008ec1
    vmovntdq ymmword ptr [rcx + r9 - 0x40], ymm1  ; 0x140008ec8
    vmovdqu ymmword ptr [rcx + r8 - 0x20], ymm5  ; 0x140008ecf
    vmovdqu ymmword ptr [rax], ymm0  ; 0x140008ed6
    sfence   ; 0x140008eda
    vzeroupper   ; 0x140008edd
    ret  ; 0x140008ee0
    int3   ; 0x140008ee1
    int3   ; 0x140008ee2
    int3   ; 0x140008ee3
    int3   ; 0x140008ee4
    int3   ; 0x140008ee5
    int3   ; 0x140008ee6
    int3   ; 0x140008ee7
    int3   ; 0x140008ee8
    int3   ; 0x140008ee9
    int3   ; 0x140008eea
    int3   ; 0x140008eeb
    int3   ; 0x140008eec
    int3   ; 0x140008eed
    int3   ; 0x140008eee
    int3   ; 0x140008eef
    int3   ; 0x140008ef0
    int3   ; 0x140008ef1
    int3   ; 0x140008ef2
    int3   ; 0x140008ef3
    int3   ; 0x140008ef4
    int3   ; 0x140008ef5
    nop  ; 0x140008ef6
    mov rax, rcx  ; 0x140008f00
    lea r10, [rip - 0x8f0a]  ; 0x140008f03
    cmp r8, 0xf  ; 0x140008f0a
    ja 0x140009020  ; 0x140008f0e
    nop  ; 0x140008f14
    mov r9d, dword ptr [r10 + r8*4 + 0x2d120]  ; 0x140008f20
    add r9, r10  ; 0x140008f28
    jmp r9  ; 0x140008f2b
    ret  ; 0x140008f2e
    nop  ; 0x140008f2f
    mov r8, qword ptr [rdx]  ; 0x140008f30
    mov ecx, dword ptr [rdx + 8]  ; 0x140008f33
    movzx r9d, word ptr [rdx + 0xc]  ; 0x140008f36
    movzx r10d, byte ptr [rdx + 0xe]  ; 0x140008f3b
    mov qword ptr [rax], r8  ; 0x140008f40
    mov dword ptr [rax + 8], ecx  ; 0x140008f43
    mov word ptr [rax + 0xc], r9w  ; 0x140008f46
    mov byte ptr [rax + 0xe], r10b  ; 0x140008f4b
    ret  ; 0x140008f4f
    mov r8, qword ptr [rdx]  ; 0x140008f50
    movzx ecx, word ptr [rdx + 8]  ; 0x140008f53
    movzx r9d, byte ptr [rdx + 0xa]  ; 0x140008f57
    mov qword ptr [rax], r8  ; 0x140008f5c
    mov word ptr [rax + 8], cx  ; 0x140008f5f
    mov byte ptr [rax + 0xa], r9b  ; 0x140008f63
    ret  ; 0x140008f67
    movzx ecx, word ptr [rdx]  ; 0x140008f68
    mov word ptr [rax], cx  ; 0x140008f6b
    ret  ; 0x140008f6e
    nop  ; 0x140008f6f
    mov ecx, dword ptr [rdx]  ; 0x140008f70
    movzx r8d, word ptr [rdx + 4]  ; 0x140008f72
    movzx r9d, byte ptr [rdx + 6]  ; 0x140008f77
    mov dword ptr [rax], ecx  ; 0x140008f7c
    mov word ptr [rax + 4], r8w  ; 0x140008f7e
    mov byte ptr [rax + 6], r9b  ; 0x140008f83
    ret  ; 0x140008f87
    mov r8, qword ptr [rdx]  ; 0x140008f88
    mov ecx, dword ptr [rdx + 8]  ; 0x140008f8b
    movzx r9d, word ptr [rdx + 0xc]  ; 0x140008f8e
    mov qword ptr [rax], r8  ; 0x140008f93
    mov dword ptr [rax + 8], ecx  ; 0x140008f96
    mov word ptr [rax + 0xc], r9w  ; 0x140008f99
    ret  ; 0x140008f9e
    movzx ecx, word ptr [rdx]  ; 0x140008f9f
    movzx r8d, byte ptr [rdx + 2]  ; 0x140008fa2
    mov word ptr [rax], cx  ; 0x140008fa7
    mov byte ptr [rax + 2], r8b  ; 0x140008faa
    ret  ; 0x140008fae
    nop  ; 0x140008faf
    mov r8, qword ptr [rdx]  ; 0x140008fb0
    mov ecx, dword ptr [rdx + 8]  ; 0x140008fb3
    movzx r9d, byte ptr [rdx + 0xc]  ; 0x140008fb6
    mov qword ptr [rax], r8  ; 0x140008fbb
    mov dword ptr [rax + 8], ecx  ; 0x140008fbe
    mov byte ptr [rax + 0xc], r9b  ; 0x140008fc1
    ret  ; 0x140008fc5
    mov r8, qword ptr [rdx]  ; 0x140008fc6
    movzx ecx, word ptr [rdx + 8]  ; 0x140008fc9
    mov qword ptr [rax], r8  ; 0x140008fcd
    mov word ptr [rax + 8], cx  ; 0x140008fd0
    ret  ; 0x140008fd4
    mov r8, qword ptr [rdx]  ; 0x140008fd5
    movzx ecx, byte ptr [rdx + 8]  ; 0x140008fd8
    mov qword ptr [rax], r8  ; 0x140008fdc
    mov byte ptr [rax + 8], cl  ; 0x140008fdf
    ret  ; 0x140008fe2
    mov r8, qword ptr [rdx]  ; 0x140008fe3
    mov ecx, dword ptr [rdx + 8]  ; 0x140008fe6
    mov qword ptr [rax], r8  ; 0x140008fe9
    mov dword ptr [rax + 8], ecx  ; 0x140008fec
    ret  ; 0x140008fef
    mov ecx, dword ptr [rdx]  ; 0x140008ff0
    movzx r8d, word ptr [rdx + 4]  ; 0x140008ff2
    mov dword ptr [rax], ecx  ; 0x140008ff7
    mov word ptr [rax + 4], r8w  ; 0x140008ff9
    ret  ; 0x140008ffe
    mov ecx, dword ptr [rdx]  ; 0x140008fff
    movzx r8d, byte ptr [rdx + 4]  ; 0x140009001
    mov dword ptr [rax], ecx  ; 0x140009006
    mov byte ptr [rax + 4], r8b  ; 0x140009008
    ret  ; 0x14000900c
    mov rcx, qword ptr [rdx]  ; 0x14000900d
    mov qword ptr [rax], rcx  ; 0x140009010
    ret  ; 0x140009013
    movzx ecx, byte ptr [rdx]  ; 0x140009014
    mov byte ptr [rax], cl  ; 0x140009017
    ret  ; 0x140009019
    mov ecx, dword ptr [rdx]  ; 0x14000901a
    mov dword ptr [rax], ecx  ; 0x14000901c
    ret  ; 0x14000901e
    nop  ; 0x14000901f
    cmp r8, 0x20  ; 0x140009020
    ja 0x14000903d  ; 0x140009024
    movdqu xmm1, xmmword ptr [rdx]  ; 0x140009026
    movdqu xmm2, xmmword ptr [rdx + r8 - 0x10]  ; 0x14000902a
    movdqu xmmword ptr [rcx], xmm1  ; 0x140009031
    movdqu xmmword ptr [rcx + r8 - 0x10], xmm2  ; 0x140009035
    ret  ; 0x14000903c
    lea r9, [rdx + r8]  ; 0x14000903d
    cmp rcx, rdx  ; 0x140009041
    cmovbe r9, rcx  ; 0x140009044
    cmp rcx, r9  ; 0x140009048
    jb 0x140009890  ; 0x14000904b
    cmp r8, 0x800  ; 0x140009051
    jae 0x140009870  ; 0x140009058
    movdqu xmm0, xmmword ptr [rdx]  ; 0x14000905e
    movdqu xmm5, xmmword ptr [rdx + r8 - 0x10]  ; 0x140009062
    cmp r8, 0x80  ; 0x140009069
    jbe 0x14000910c  ; 0x140009070
    mov r9, rcx  ; 0x140009076
    and r9, 0xf  ; 0x140009079
    sub r9, 0x10  ; 0x14000907d
    sub rcx, r9  ; 0x140009081
    sub rdx, r9  ; 0x140009084
    add r8, r9  ; 0x140009087
    cmp r8, 0x80  ; 0x14000908a
    jbe 0x14000910c  ; 0x140009091
    nop  ; 0x140009093
    movdqu xmm1, xmmword ptr [rdx]  ; 0x1400090a0
    movdqu xmm2, xmmword ptr [rdx + 0x10]  ; 0x1400090a4
    movdqu xmm3, xmmword ptr [rdx + 0x20]  ; 0x1400090a9
    movdqu xmm4, xmmword ptr [rdx + 0x30]  ; 0x1400090ae
    movdqa xmmword ptr [rcx], xmm1  ; 0x1400090b3
    movdqa xmmword ptr [rcx + 0x10], xmm2  ; 0x1400090b7
    movdqa xmmword ptr [rcx + 0x20], xmm3  ; 0x1400090bc
    movdqa xmmword ptr [rcx + 0x30], xmm4  ; 0x1400090c1
    movdqu xmm1, xmmword ptr [rdx + 0x40]  ; 0x1400090c6
    movdqu xmm2, xmmword ptr [rdx + 0x50]  ; 0x1400090cb
    movdqu xmm3, xmmword ptr [rdx + 0x60]  ; 0x1400090d0
    movdqu xmm4, xmmword ptr [rdx + 0x70]  ; 0x1400090d5
    movdqa xmmword ptr [rcx + 0x40], xmm1  ; 0x1400090da
    movdqa xmmword ptr [rcx + 0x50], xmm2  ; 0x1400090df
    movdqa xmmword ptr [rcx + 0x60], xmm3  ; 0x1400090e4
    movdqa xmmword ptr [rcx + 0x70], xmm4  ; 0x1400090e9
    add rcx, 0x80  ; 0x1400090ee
    add rdx, 0x80  ; 0x1400090f5
    sub r8, 0x80  ; 0x1400090fc
    cmp r8, 0x80  ; 0x140009103
    jae 0x1400090a0  ; 0x14000910a
    lea r9, [r8 + 0xf]  ; 0x14000910c
    and r9, 0xfffffffffffffff0  ; 0x140009110
    mov r11, r9  ; 0x140009114
    shr r11, 4  ; 0x140009117
    mov r11d, dword ptr [r10 + r11*4 + 0x2d160]  ; 0x14000911b
    add r11, r10  ; 0x140009123
    jmp r11  ; 0x140009126
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x80]  ; 0x140009129
    movdqu xmmword ptr [rcx + r9 - 0x80], xmm1  ; 0x140009130
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x70]  ; 0x140009137
    movdqu xmmword ptr [rcx + r9 - 0x70], xmm1  ; 0x14000913e
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x60]  ; 0x140009145
    movdqu xmmword ptr [rcx + r9 - 0x60], xmm1  ; 0x14000914c
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x50]  ; 0x140009153
    movdqu xmmword ptr [rcx + r9 - 0x50], xmm1  ; 0x14000915a
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x40]  ; 0x140009161
    movdqu xmmword ptr [rcx + r9 - 0x40], xmm1  ; 0x140009168
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x30]  ; 0x14000916f
    movdqu xmmword ptr [rcx + r9 - 0x30], xmm1  ; 0x140009176
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x20]  ; 0x14000917d
    movdqu xmmword ptr [rcx + r9 - 0x20], xmm1  ; 0x140009184
    movdqu xmmword ptr [rcx + r8 - 0x10], xmm5  ; 0x14000918b
    movdqu xmmword ptr [rax], xmm0  ; 0x140009192
    ret  ; 0x140009196
    int3   ; 0x140009197
    int3   ; 0x140009198
    int3   ; 0x140009199
    int3   ; 0x14000919a
    int3   ; 0x14000919b
    int3   ; 0x14000919c
    int3   ; 0x14000919d
    int3   ; 0x14000919e
    int3   ; 0x14000919f
    int3   ; 0x1400091a0
    int3   ; 0x1400091a1
    int3   ; 0x1400091a2
    int3   ; 0x1400091a3
    int3   ; 0x1400091a4
    int3   ; 0x1400091a5
    nop  ; 0x1400091a6
    mov rax, rcx  ; 0x1400091b0
    lea r10, [rip - 0x91ba]  ; 0x1400091b3
    cmp r8, 0xf  ; 0x1400091ba
    ja 0x1400092d0  ; 0x1400091be
    nop  ; 0x1400091c4
    mov r9d, dword ptr [r10 + r8*4 + 0x2d190]  ; 0x1400091d0
    add r9, r10  ; 0x1400091d8
    jmp r9  ; 0x1400091db
    ret  ; 0x1400091de
    nop  ; 0x1400091df
    mov r8, qword ptr [rdx]  ; 0x1400091e0
    mov ecx, dword ptr [rdx + 8]  ; 0x1400091e3
    movzx r9d, word ptr [rdx + 0xc]  ; 0x1400091e6
    movzx r10d, byte ptr [rdx + 0xe]  ; 0x1400091eb
    mov qword ptr [rax], r8  ; 0x1400091f0
    mov dword ptr [rax + 8], ecx  ; 0x1400091f3
    mov word ptr [rax + 0xc], r9w  ; 0x1400091f6
    mov byte ptr [rax + 0xe], r10b  ; 0x1400091fb
    ret  ; 0x1400091ff
    mov r8, qword ptr [rdx]  ; 0x140009200
    movzx ecx, word ptr [rdx + 8]  ; 0x140009203
    movzx r9d, byte ptr [rdx + 0xa]  ; 0x140009207
    mov qword ptr [rax], r8  ; 0x14000920c
    mov word ptr [rax + 8], cx  ; 0x14000920f
    mov byte ptr [rax + 0xa], r9b  ; 0x140009213
    ret  ; 0x140009217
    movzx ecx, word ptr [rdx]  ; 0x140009218
    mov word ptr [rax], cx  ; 0x14000921b
    ret  ; 0x14000921e
    nop  ; 0x14000921f
    mov ecx, dword ptr [rdx]  ; 0x140009220
    movzx r8d, word ptr [rdx + 4]  ; 0x140009222
    movzx r9d, byte ptr [rdx + 6]  ; 0x140009227
    mov dword ptr [rax], ecx  ; 0x14000922c
    mov word ptr [rax + 4], r8w  ; 0x14000922e
    mov byte ptr [rax + 6], r9b  ; 0x140009233
    ret  ; 0x140009237
    mov r8, qword ptr [rdx]  ; 0x140009238
    mov ecx, dword ptr [rdx + 8]  ; 0x14000923b
    movzx r9d, word ptr [rdx + 0xc]  ; 0x14000923e
    mov qword ptr [rax], r8  ; 0x140009243
    mov dword ptr [rax + 8], ecx  ; 0x140009246
    mov word ptr [rax + 0xc], r9w  ; 0x140009249
    ret  ; 0x14000924e
    movzx ecx, word ptr [rdx]  ; 0x14000924f
    movzx r8d, byte ptr [rdx + 2]  ; 0x140009252
    mov word ptr [rax], cx  ; 0x140009257
    mov byte ptr [rax + 2], r8b  ; 0x14000925a
    ret  ; 0x14000925e
    nop  ; 0x14000925f
    mov r8, qword ptr [rdx]  ; 0x140009260
    mov ecx, dword ptr [rdx + 8]  ; 0x140009263
    movzx r9d, byte ptr [rdx + 0xc]  ; 0x140009266
    mov qword ptr [rax], r8  ; 0x14000926b
    mov dword ptr [rax + 8], ecx  ; 0x14000926e
    mov byte ptr [rax + 0xc], r9b  ; 0x140009271
    ret  ; 0x140009275
    mov r8, qword ptr [rdx]  ; 0x140009276
    movzx ecx, word ptr [rdx + 8]  ; 0x140009279
    mov qword ptr [rax], r8  ; 0x14000927d
    mov word ptr [rax + 8], cx  ; 0x140009280
    ret  ; 0x140009284
    mov r8, qword ptr [rdx]  ; 0x140009285
    movzx ecx, byte ptr [rdx + 8]  ; 0x140009288
    mov qword ptr [rax], r8  ; 0x14000928c
    mov byte ptr [rax + 8], cl  ; 0x14000928f
    ret  ; 0x140009292
    mov r8, qword ptr [rdx]  ; 0x140009293
    mov ecx, dword ptr [rdx + 8]  ; 0x140009296
    mov qword ptr [rax], r8  ; 0x140009299
    mov dword ptr [rax + 8], ecx  ; 0x14000929c
    ret  ; 0x14000929f
    mov ecx, dword ptr [rdx]  ; 0x1400092a0
    movzx r8d, word ptr [rdx + 4]  ; 0x1400092a2
    mov dword ptr [rax], ecx  ; 0x1400092a7
    mov word ptr [rax + 4], r8w  ; 0x1400092a9
    ret  ; 0x1400092ae
    mov ecx, dword ptr [rdx]  ; 0x1400092af
    movzx r8d, byte ptr [rdx + 4]  ; 0x1400092b1
    mov dword ptr [rax], ecx  ; 0x1400092b6
    mov byte ptr [rax + 4], r8b  ; 0x1400092b8
    ret  ; 0x1400092bc
    mov rcx, qword ptr [rdx]  ; 0x1400092bd
    mov qword ptr [rax], rcx  ; 0x1400092c0
    ret  ; 0x1400092c3
    movzx ecx, byte ptr [rdx]  ; 0x1400092c4
    mov byte ptr [rax], cl  ; 0x1400092c7
    ret  ; 0x1400092c9
    mov ecx, dword ptr [rdx]  ; 0x1400092ca
    mov dword ptr [rax], ecx  ; 0x1400092cc
    ret  ; 0x1400092ce
    nop  ; 0x1400092cf
    cmp r8, 0x20  ; 0x1400092d0
    ja 0x1400092ed  ; 0x1400092d4
    movdqu xmm1, xmmword ptr [rdx]  ; 0x1400092d6
    movdqu xmm2, xmmword ptr [rdx + r8 - 0x10]  ; 0x1400092da
    movdqu xmmword ptr [rcx], xmm1  ; 0x1400092e1
    movdqu xmmword ptr [rcx + r8 - 0x10], xmm2  ; 0x1400092e5
    ret  ; 0x1400092ec
    lea r9, [rdx + r8]  ; 0x1400092ed
    cmp rcx, rdx  ; 0x1400092f1
    cmovbe r9, rcx  ; 0x1400092f4
    cmp rcx, r9  ; 0x1400092f8
    jb 0x1400099a0  ; 0x1400092fb
    cmp r8, 0x800  ; 0x140009301
    jae 0x140009980  ; 0x140009308
    movdqu xmm0, xmmword ptr [rdx]  ; 0x14000930e
    movdqu xmm5, xmmword ptr [rdx + r8 - 0x10]  ; 0x140009312
    cmp r8, 0x80  ; 0x140009319
    jbe 0x1400093bc  ; 0x140009320
    mov r9, rcx  ; 0x140009326
    and r9, 0xf  ; 0x140009329
    sub r9, 0x10  ; 0x14000932d
    sub rcx, r9  ; 0x140009331
    sub rdx, r9  ; 0x140009334
    add r8, r9  ; 0x140009337
    cmp r8, 0x80  ; 0x14000933a
    jbe 0x1400093bc  ; 0x140009341
    nop  ; 0x140009343
    movdqu xmm1, xmmword ptr [rdx]  ; 0x140009350
    movdqu xmm2, xmmword ptr [rdx + 0x10]  ; 0x140009354
    movdqu xmm3, xmmword ptr [rdx + 0x20]  ; 0x140009359
    movdqu xmm4, xmmword ptr [rdx + 0x30]  ; 0x14000935e
    movdqa xmmword ptr [rcx], xmm1  ; 0x140009363
    movdqa xmmword ptr [rcx + 0x10], xmm2  ; 0x140009367
    movdqa xmmword ptr [rcx + 0x20], xmm3  ; 0x14000936c
    movdqa xmmword ptr [rcx + 0x30], xmm4  ; 0x140009371
    movdqu xmm1, xmmword ptr [rdx + 0x40]  ; 0x140009376
    movdqu xmm2, xmmword ptr [rdx + 0x50]  ; 0x14000937b
    movdqu xmm3, xmmword ptr [rdx + 0x60]  ; 0x140009380
    movdqu xmm4, xmmword ptr [rdx + 0x70]  ; 0x140009385
    movdqa xmmword ptr [rcx + 0x40], xmm1  ; 0x14000938a
    movdqa xmmword ptr [rcx + 0x50], xmm2  ; 0x14000938f
    movdqa xmmword ptr [rcx + 0x60], xmm3  ; 0x140009394
    movdqa xmmword ptr [rcx + 0x70], xmm4  ; 0x140009399
    add rcx, 0x80  ; 0x14000939e
    add rdx, 0x80  ; 0x1400093a5
    sub r8, 0x80  ; 0x1400093ac
    cmp r8, 0x80  ; 0x1400093b3
    jae 0x140009350  ; 0x1400093ba
    lea r9, [r8 + 0xf]  ; 0x1400093bc
    and r9, 0xfffffffffffffff0  ; 0x1400093c0
    mov r11, r9  ; 0x1400093c4
    shr r11, 4  ; 0x1400093c7
    mov r11d, dword ptr [r10 + r11*4 + 0x2d1d0]  ; 0x1400093cb
    add r11, r10  ; 0x1400093d3
    jmp r11  ; 0x1400093d6
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x80]  ; 0x1400093d9
    movdqu xmmword ptr [rcx + r9 - 0x80], xmm1  ; 0x1400093e0
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x70]  ; 0x1400093e7
    movdqu xmmword ptr [rcx + r9 - 0x70], xmm1  ; 0x1400093ee
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x60]  ; 0x1400093f5
    movdqu xmmword ptr [rcx + r9 - 0x60], xmm1  ; 0x1400093fc
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x50]  ; 0x140009403
    movdqu xmmword ptr [rcx + r9 - 0x50], xmm1  ; 0x14000940a
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x40]  ; 0x140009411
    movdqu xmmword ptr [rcx + r9 - 0x40], xmm1  ; 0x140009418
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x30]  ; 0x14000941f
    movdqu xmmword ptr [rcx + r9 - 0x30], xmm1  ; 0x140009426
    movdqu xmm1, xmmword ptr [rdx + r9 - 0x20]  ; 0x14000942d
    movdqu xmmword ptr [rcx + r9 - 0x20], xmm1  ; 0x140009434
    movdqu xmmword ptr [rcx + r8 - 0x10], xmm5  ; 0x14000943b
    movdqu xmmword ptr [rax], xmm0  ; 0x140009442
    ret  ; 0x140009446
    int3   ; 0x140009447
    mov qword ptr [rsp + 8], rbx  ; 0x140009448
; Function: func_14000944d
func_14000944d:
    mov qword ptr [rsp + 0x10], rbp  ; 0x14000944d
    mov qword ptr [rsp + 0x18], rsi  ; 0x140009452
    push rdi  ; 0x140009457
    push r12  ; 0x140009458
    push r13  ; 0x14000945a
    push r14  ; 0x14000945c
    push r15  ; 0x14000945e
    sub rsp, 0x20  ; 0x140009460
    mov edi, ecx  ; 0x140009464
    lea r15, [rip - 0x946d]  ; 0x140009466
    or r14, 0xffffffffffffffff  ; 0x14000946d
    mov r12, r9  ; 0x140009471
    mov rbp, r8  ; 0x140009474
    mov r13, rdx  ; 0x140009477
    mov rax, qword ptr [r15 + rdi*8 + 0x2a2d0]  ; 0x14000947a
    nop  ; 0x140009482
    cmp rax, r14  ; 0x140009483
    je 0x14000953a  ; 0x140009486
    test rax, rax  ; 0x14000948c
    jne 0x14000953c  ; 0x14000948f
    cmp r8, r9  ; 0x140009495
    je 0x140009532  ; 0x140009498
    mov esi, dword ptr [rbp]  ; 0x14000949e
    mov rbx, qword ptr [r15 + rsi*8 + 0x2a2b8]  ; 0x1400094a1
    nop  ; 0x1400094a9
    test rbx, rbx  ; 0x1400094aa
    je 0x1400094ba  ; 0x1400094ad
    cmp rbx, r14  ; 0x1400094af
    jne 0x140009579  ; 0x1400094b2
    jmp 0x140009525  ; 0x1400094b8
    mov r15, qword ptr [r15 + rsi*8 + 0x1e3b8]  ; 0x1400094ba
    xor edx, edx  ; 0x1400094c2
    mov rcx, r15  ; 0x1400094c4
    mov r8d, 0x800  ; 0x1400094c7
    call qword ptr [rip + 0x13c3d]  ; 0x1400094cd
    mov rbx, rax  ; 0x1400094d3
    test rax, rax  ; 0x1400094d6
    jne 0x140009559  ; 0x1400094d9
    call qword ptr [rip + 0x13bc7]  ; 0x1400094db
    cmp eax, 0x57  ; 0x1400094e1
    jne 0x140009513  ; 0x1400094e4
    lea r8d, [rbx + 7]  ; 0x1400094e6
    mov rcx, r15  ; 0x1400094ea
    lea rdx, [rip + 0x14f74]  ; 0x1400094ed
    call 0x14000e9e0  ; 0x1400094f4
    test eax, eax  ; 0x1400094f9
    je 0x140009513  ; 0x1400094fb
    xor r8d, r8d  ; 0x1400094fd
    xor edx, edx  ; 0x140009500
    mov rcx, r15  ; 0x140009502
    call qword ptr [rip + 0x13c05]  ; 0x140009505
    mov rbx, rax  ; 0x14000950b
    test rax, rax  ; 0x14000950e
    jne 0x140009559  ; 0x140009511
    mov rax, r14  ; 0x140009513
    lea r15, [rip - 0x951d]  ; 0x140009516
    xchg qword ptr [r15 + rsi*8 + 0x2a2b8], rax  ; 0x14000951d
    add rbp, 4  ; 0x140009525
    cmp rbp, r12  ; 0x140009529
    jne 0x14000949e  ; 0x14000952c
    xchg qword ptr [r15 + rdi*8 + 0x2a2d0], r14  ; 0x140009532
    xor eax, eax  ; 0x14000953a
    mov rbx, qword ptr [rsp + 0x50]  ; 0x14000953c
    mov rbp, qword ptr [rsp + 0x58]  ; 0x140009541
    mov rsi, qword ptr [rsp + 0x60]  ; 0x140009546
    add rsp, 0x20  ; 0x14000954b
    pop r15  ; 0x14000954f
    pop r14  ; 0x140009551
    pop r13  ; 0x140009553
    pop r12  ; 0x140009555
    pop rdi  ; 0x140009557
    ret  ; 0x140009558
    mov rax, rbx  ; 0x140009559
    lea r15, [rip - 0x9563]  ; 0x14000955c
    xchg qword ptr [r15 + rsi*8 + 0x2a2b8], rax  ; 0x140009563
    test rax, rax  ; 0x14000956b
    je 0x140009579  ; 0x14000956e
    mov rcx, rbx  ; 0x140009570
    call qword ptr [rip + 0x13b87]  ; 0x140009573
    mov rdx, r13  ; 0x140009579
    mov rcx, rbx  ; 0x14000957c
    call qword ptr [rip + 0x13b83]  ; 0x14000957f
    test rax, rax  ; 0x140009585
    je 0x140009532  ; 0x140009588
    mov rcx, rax  ; 0x14000958a
    xchg qword ptr [r15 + rdi*8 + 0x2a2d0], rcx  ; 0x14000958d
    jmp 0x14000953c  ; 0x140009595
    int3   ; 0x140009597
    push rbx  ; 0x140009598
    sub rsp, 0x20  ; 0x14000959a
    mov rbx, rcx  ; 0x14000959e
    lea r9, [rip + 0x14ed8]  ; 0x1400095a1
    xor ecx, ecx  ; 0x1400095a8
    lea r8, [rip + 0x14ec7]  ; 0x1400095aa
    lea rdx, [rip + 0x14ec8]  ; 0x1400095b1
    call 0x140009448  ; 0x1400095b8
    test rax, rax  ; 0x1400095bd
    je 0x1400095d1  ; 0x1400095c0
    mov rcx, rbx  ; 0x1400095c2
    add rsp, 0x20  ; 0x1400095c5
    pop rbx  ; 0x1400095c9
    jmp qword ptr [rip + 0x13c9f]  ; 0x1400095ca
    add rsp, 0x20  ; 0x1400095d1
    pop rbx  ; 0x1400095d5
    jmp qword ptr [rip + 0x13b03]  ; 0x1400095d6
    int3   ; 0x1400095dd
    int3   ; 0x1400095de
    int3   ; 0x1400095df
    push rbx  ; 0x1400095e0
    sub rsp, 0x20  ; 0x1400095e2
    mov ebx, ecx  ; 0x1400095e6
    lea r9, [rip + 0x14ea9]  ; 0x1400095e8
    mov ecx, 1  ; 0x1400095ef
    lea r8, [rip + 0x14e95]  ; 0x1400095f4
    lea rdx, [rip + 0x14e96]  ; 0x1400095fb
    call 0x140009448  ; 0x140009602
    mov ecx, ebx  ; 0x140009607
    test rax, rax  ; 0x140009609
    je 0x14000961a  ; 0x14000960c
    add rsp, 0x20  ; 0x14000960e
    pop rbx  ; 0x140009612
    jmp qword ptr [rip + 0x13c56]  ; 0x140009613
    add rsp, 0x20  ; 0x14000961a
    pop rbx  ; 0x14000961e
    jmp qword ptr [rip + 0x13ad2]  ; 0x14000961f
    int3   ; 0x140009626
    int3   ; 0x140009627
    push rbx  ; 0x140009628
    sub rsp, 0x20  ; 0x14000962a
    mov ebx, ecx  ; 0x14000962e
    lea r9, [rip + 0x14e71]  ; 0x140009630
    mov ecx, 2  ; 0x140009637
    lea r8, [rip + 0x14e5d]  ; 0x14000963c
    lea rdx, [rip + 0x14e5e]  ; 0x140009643
    call 0x140009448  ; 0x14000964a
    mov ecx, ebx  ; 0x14000964f
    test rax, rax  ; 0x140009651
    je 0x140009662  ; 0x140009654
    add rsp, 0x20  ; 0x140009656
    pop rbx  ; 0x14000965a
    jmp qword ptr [rip + 0x13c0e]  ; 0x14000965b
    add rsp, 0x20  ; 0x140009662
    pop rbx  ; 0x140009666
    jmp qword ptr [rip + 0x13a7a]  ; 0x140009667
    int3   ; 0x14000966e
    int3   ; 0x14000966f
    mov qword ptr [rsp + 8], rbx  ; 0x140009670
    push rdi  ; 0x140009675
    sub rsp, 0x20  ; 0x140009676
    mov rbx, rdx  ; 0x14000967a
    lea r9, [rip + 0x14e3c]  ; 0x14000967d
    mov edi, ecx  ; 0x140009684
    lea rdx, [rip + 0x14e33]  ; 0x140009686
    mov ecx, 3  ; 0x14000968d
    lea r8, [rip + 0x14e1f]  ; 0x140009692
    call 0x140009448  ; 0x140009699
    mov rdx, rbx  ; 0x14000969e
    mov ecx, edi  ; 0x1400096a1
    test rax, rax  ; 0x1400096a3
    je 0x1400096b0  ; 0x1400096a6
    call qword ptr [rip + 0x13bc2]  ; 0x1400096a8
    jmp 0x1400096b6  ; 0x1400096ae
    call qword ptr [rip + 0x13a3a]  ; 0x1400096b0
    mov rbx, qword ptr [rsp + 0x30]  ; 0x1400096b6
    add rsp, 0x20  ; 0x1400096bb
    pop rdi  ; 0x1400096bf
    ret  ; 0x1400096c0
    int3   ; 0x1400096c1
    int3   ; 0x1400096c2
    int3   ; 0x1400096c3
    mov qword ptr [rsp + 8], rbx  ; 0x1400096c4
    mov qword ptr [rsp + 0x10], rsi  ; 0x1400096c9
    push rdi  ; 0x1400096ce
    sub rsp, 0x20  ; 0x1400096cf
    mov esi, r8d  ; 0x1400096d3
    lea r9, [rip + 0x14dfb]  ; 0x1400096d6
    mov ebx, edx  ; 0x1400096dd
    lea r8, [rip + 0x14dea]  ; 0x1400096df
    mov rdi, rcx  ; 0x1400096e6
    lea rdx, [rip + 0x14de8]  ; 0x1400096e9
    mov ecx, 4  ; 0x1400096f0
    call 0x140009448  ; 0x1400096f5
    mov edx, ebx  ; 0x1400096fa
    mov rcx, rdi  ; 0x1400096fc
    test rax, rax  ; 0x1400096ff
    je 0x14000970f  ; 0x140009702
    mov r8d, esi  ; 0x140009704
    call qword ptr [rip + 0x13b63]  ; 0x140009707
    jmp 0x140009715  ; 0x14000970d
    call qword ptr [rip + 0x139c3]  ; 0x14000970f
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140009715
    mov rsi, qword ptr [rsp + 0x38]  ; 0x14000971a
    add rsp, 0x20  ; 0x14000971f
    pop rdi  ; 0x140009723
    ret  ; 0x140009724
    int3   ; 0x140009725
    int3   ; 0x140009726
    int3   ; 0x140009727
    int3   ; 0x140009728
    int3   ; 0x140009729
    int3   ; 0x14000972a
    int3   ; 0x14000972b
    int3   ; 0x14000972c
    int3   ; 0x14000972d
    int3   ; 0x14000972e
    int3   ; 0x14000972f
    int3   ; 0x140009730
    int3   ; 0x140009731
    int3   ; 0x140009732
    int3   ; 0x140009733
    int3   ; 0x140009734
    int3   ; 0x140009735
    nop  ; 0x140009736
    int3   ; 0x140009740
    int3   ; 0x140009741
    int3   ; 0x140009742
    int3   ; 0x140009743
    int3   ; 0x140009744
    int3   ; 0x140009745
    nop  ; 0x140009746
    int3   ; 0x140009750
    int3   ; 0x140009751
    int3   ; 0x140009752
    int3   ; 0x140009753
    int3   ; 0x140009754
    int3   ; 0x140009755
    nop  ; 0x140009756
    int3   ; 0x140009760
    int3   ; 0x140009761
    int3   ; 0x140009762
    int3   ; 0x140009763
    int3   ; 0x140009764
    int3   ; 0x140009765
    nop  ; 0x140009766
    sub rsp, 0x28  ; 0x140009770
    mov qword ptr [rsp + 0x30], rcx  ; 0x140009774
    mov qword ptr [rsp + 0x38], rdx  ; 0x140009779
    mov dword ptr [rsp + 0x40], r8d  ; 0x14000977e
    mov rdx, qword ptr [rdx]  ; 0x140009783
    mov rax, rcx  ; 0x140009786
    call 0x1400085a0  ; 0x140009789
    call rax  ; 0x14000978e
    call 0x1400085d0  ; 0x140009790
    mov rcx, rax  ; 0x140009795
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140009798
    mov rdx, qword ptr [rdx]  ; 0x14000979d
    mov r8d, 2  ; 0x1400097a0
    call 0x1400085a0  ; 0x1400097a6
    add rsp, 0x28  ; 0x1400097ab
    ret  ; 0x1400097af
    sub rsp, 0x28  ; 0x1400097b0
    mov qword ptr [rsp + 0x30], rcx  ; 0x1400097b4
    mov qword ptr [rsp + 0x38], rdx  ; 0x1400097b9
    mov dword ptr [rsp + 0x40], r8d  ; 0x1400097be
    mov rdx, qword ptr [rdx]  ; 0x1400097c3
    mov rax, rcx  ; 0x1400097c6
    call 0x1400085a0  ; 0x1400097c9
    call rax  ; 0x1400097ce
    call 0x1400085d0  ; 0x1400097d0
    add rsp, 0x28  ; 0x1400097d5
    ret  ; 0x1400097d9
    int3   ; 0x1400097da
    int3   ; 0x1400097db
    int3   ; 0x1400097dc
    int3   ; 0x1400097dd
    int3   ; 0x1400097de
    int3   ; 0x1400097df
    sub rsp, 0x28  ; 0x1400097e0
    mov qword ptr [rsp + 0x30], rcx  ; 0x1400097e4
    mov qword ptr [rsp + 0x38], rdx  ; 0x1400097e9
    mov rdx, qword ptr [rsp + 0x38]  ; 0x1400097ee
    mov rdx, qword ptr [rdx]  ; 0x1400097f3
    mov r8d, 2  ; 0x1400097f6
    call 0x1400085a0  ; 0x1400097fc
    add rsp, 0x28  ; 0x140009801
    ret  ; 0x140009805
    int3   ; 0x140009806
    int3   ; 0x140009807
    int3   ; 0x140009808
    int3   ; 0x140009809
    int3   ; 0x14000980a
    int3   ; 0x14000980b
    int3   ; 0x14000980c
    int3   ; 0x14000980d
    int3   ; 0x14000980e
    int3   ; 0x14000980f
    sub rsp, 0x28  ; 0x140009810
    mov qword ptr [rsp + 0x30], rcx  ; 0x140009814
    mov qword ptr [rsp + 0x38], rdx  ; 0x140009819
    mov qword ptr [rsp + 0x40], r8  ; 0x14000981e
    mov dword ptr [rsp + 0x48], r9d  ; 0x140009823
    mov r8d, r9d  ; 0x140009828
    mov rax, rcx  ; 0x14000982b
    call 0x1400085a0  ; 0x14000982e
    mov rcx, qword ptr [rsp + 0x40]  ; 0x140009833
    call rax  ; 0x140009838
    call 0x1400085d0  ; 0x14000983a
    mov rcx, rax  ; 0x14000983f
    mov rdx, qword ptr [rsp + 0x38]  ; 0x140009842
    mov r8d, 2  ; 0x140009847
    call 0x1400085a0  ; 0x14000984d
    add rsp, 0x28  ; 0x140009852
    ret  ; 0x140009856
    int3   ; 0x140009857
    int3   ; 0x140009858
    int3   ; 0x140009859
    int3   ; 0x14000985a
    int3   ; 0x14000985b
    int3   ; 0x14000985c
    int3   ; 0x14000985d
    int3   ; 0x14000985e
    int3   ; 0x14000985f
    int3   ; 0x140009860
    int3   ; 0x140009861
    int3   ; 0x140009862
    int3   ; 0x140009863
    int3   ; 0x140009864
    int3   ; 0x140009865
    nop  ; 0x140009866
    push rdi  ; 0x140009870
    push rsi  ; 0x140009871
    mov rdi, rcx  ; 0x140009872
    mov rsi, rdx  ; 0x140009875
    mov rcx, r8  ; 0x140009878
    rep movsb byte ptr [rdi], byte ptr [rsi]  ; 0x14000987b
    pop rsi  ; 0x14000987d
    pop rdi  ; 0x14000987e
    ret  ; 0x14000987f
    int3   ; 0x140009880
    int3   ; 0x140009881
    int3   ; 0x140009882
    int3   ; 0x140009883
    int3   ; 0x140009884
    int3   ; 0x140009885
    nop  ; 0x140009886
    movups xmm2, xmmword ptr [rdx]  ; 0x140009890
    sub rdx, rcx  ; 0x140009893
    add rcx, r8  ; 0x140009896
    movups xmm0, xmmword ptr [rcx + rdx - 0x10]  ; 0x140009899
    sub rcx, 0x10  ; 0x14000989e
    sub r8, 0x10  ; 0x1400098a2
    test cl, 0xf  ; 0x1400098a6
    je 0x1400098c3  ; 0x1400098a9
    mov r9, rcx  ; 0x1400098ab
    and rcx, 0xfffffffffffffff0  ; 0x1400098ae
    movups xmm1, xmm0  ; 0x1400098b2
    movups xmm0, xmmword ptr [rcx + rdx]  ; 0x1400098b5
    movups xmmword ptr [r9], xmm1  ; 0x1400098b9
    mov r8, rcx  ; 0x1400098bd
    sub r8, rax  ; 0x1400098c0
    mov r9, r8  ; 0x1400098c3
    shr r9, 7  ; 0x1400098c6
    je 0x14000993d  ; 0x1400098ca
    movaps xmmword ptr [rcx], xmm0  ; 0x1400098cc
    jmp 0x1400098e7  ; 0x1400098cf
    nop  ; 0x1400098d1
    movaps xmmword ptr [rcx + 0x10], xmm0  ; 0x1400098e0
    movaps xmmword ptr [rcx], xmm1  ; 0x1400098e4
    movups xmm0, xmmword ptr [rcx + rdx - 0x10]  ; 0x1400098e7
    movups xmm1, xmmword ptr [rcx + rdx - 0x20]  ; 0x1400098ec
    sub rcx, 0x80  ; 0x1400098f1
    movaps xmmword ptr [rcx + 0x70], xmm0  ; 0x1400098f8
    movaps xmmword ptr [rcx + 0x60], xmm1  ; 0x1400098fc
    movups xmm0, xmmword ptr [rcx + rdx + 0x50]  ; 0x140009900
    movups xmm1, xmmword ptr [rcx + rdx + 0x40]  ; 0x140009905
    dec r9  ; 0x14000990a
    movaps xmmword ptr [rcx + 0x50], xmm0  ; 0x14000990d
    movaps xmmword ptr [rcx + 0x40], xmm1  ; 0x140009911
    movups xmm0, xmmword ptr [rcx + rdx + 0x30]  ; 0x140009915
    movups xmm1, xmmword ptr [rcx + rdx + 0x20]  ; 0x14000991a
    movaps xmmword ptr [rcx + 0x30], xmm0  ; 0x14000991f
    movaps xmmword ptr [rcx + 0x20], xmm1  ; 0x140009923
    movups xmm0, xmmword ptr [rcx + rdx + 0x10]  ; 0x140009927
    movups xmm1, xmmword ptr [rcx + rdx]  ; 0x14000992c
    jne 0x1400098e0  ; 0x140009930
    movaps xmmword ptr [rcx + 0x10], xmm0  ; 0x140009932
    and r8, 0x7f  ; 0x140009936
    movaps xmm0, xmm1  ; 0x14000993a
    mov r9, r8  ; 0x14000993d
    shr r9, 4  ; 0x140009940
    je 0x140009960  ; 0x140009944
    nop  ; 0x140009946
    movups xmmword ptr [rcx], xmm0  ; 0x140009950
    sub rcx, 0x10  ; 0x140009953
    movups xmm0, xmmword ptr [rcx + rdx]  ; 0x140009957
    dec r9  ; 0x14000995b
    jne 0x140009950  ; 0x14000995e
    and r8, 0xf  ; 0x140009960
    je 0x140009969  ; 0x140009964
    movups xmmword ptr [rax], xmm2  ; 0x140009966
    movups xmmword ptr [rcx], xmm0  ; 0x140009969
    ret  ; 0x14000996c
    int3   ; 0x14000996d
    int3   ; 0x14000996e
    int3   ; 0x14000996f
    int3   ; 0x140009970
    int3   ; 0x140009971
    int3   ; 0x140009972
    int3   ; 0x140009973
    int3   ; 0x140009974
    int3   ; 0x140009975
    nop  ; 0x140009976
    push rdi  ; 0x140009980
    push rsi  ; 0x140009981
    mov rdi, rcx  ; 0x140009982
    mov rsi, rdx  ; 0x140009985
    mov rcx, r8  ; 0x140009988
    rep movsb byte ptr [rdi], byte ptr [rsi]  ; 0x14000998b
    pop rsi  ; 0x14000998d
    pop rdi  ; 0x14000998e
    ret  ; 0x14000998f
    int3   ; 0x140009990
    int3   ; 0x140009991
    int3   ; 0x140009992
    int3   ; 0x140009993
    int3   ; 0x140009994
    int3   ; 0x140009995
    nop  ; 0x140009996
    movups xmm2, xmmword ptr [rdx]  ; 0x1400099a0
    sub rdx, rcx  ; 0x1400099a3
    add rcx, r8  ; 0x1400099a6
    movups xmm0, xmmword ptr [rcx + rdx - 0x10]  ; 0x1400099a9
    sub rcx, 0x10  ; 0x1400099ae
    sub r8, 0x10  ; 0x1400099b2
    test cl, 0xf  ; 0x1400099b6
    je 0x1400099d3  ; 0x1400099b9
    mov r9, rcx  ; 0x1400099bb
    and rcx, 0xfffffffffffffff0  ; 0x1400099be
    movups xmm1, xmm0  ; 0x1400099c2
    movups xmm0, xmmword ptr [rcx + rdx]  ; 0x1400099c5
    movups xmmword ptr [r9], xmm1  ; 0x1400099c9
    mov r8, rcx  ; 0x1400099cd
    sub r8, rax  ; 0x1400099d0
    mov r9, r8  ; 0x1400099d3
    shr r9, 7  ; 0x1400099d6
    je 0x140009a4d  ; 0x1400099da
    movaps xmmword ptr [rcx], xmm0  ; 0x1400099dc
    jmp 0x1400099f7  ; 0x1400099df
    nop  ; 0x1400099e1
    movaps xmmword ptr [rcx + 0x10], xmm0  ; 0x1400099f0
    movaps xmmword ptr [rcx], xmm1  ; 0x1400099f4
    movups xmm0, xmmword ptr [rcx + rdx - 0x10]  ; 0x1400099f7
    movups xmm1, xmmword ptr [rcx + rdx - 0x20]  ; 0x1400099fc
    sub rcx, 0x80  ; 0x140009a01
    movaps xmmword ptr [rcx + 0x70], xmm0  ; 0x140009a08
    movaps xmmword ptr [rcx + 0x60], xmm1  ; 0x140009a0c
    movups xmm0, xmmword ptr [rcx + rdx + 0x50]  ; 0x140009a10
    movups xmm1, xmmword ptr [rcx + rdx + 0x40]  ; 0x140009a15
    dec r9  ; 0x140009a1a
    movaps xmmword ptr [rcx + 0x50], xmm0  ; 0x140009a1d
    movaps xmmword ptr [rcx + 0x40], xmm1  ; 0x140009a21
    movups xmm0, xmmword ptr [rcx + rdx + 0x30]  ; 0x140009a25
    movups xmm1, xmmword ptr [rcx + rdx + 0x20]  ; 0x140009a2a
    movaps xmmword ptr [rcx + 0x30], xmm0  ; 0x140009a2f
    movaps xmmword ptr [rcx + 0x20], xmm1  ; 0x140009a33
    movups xmm0, xmmword ptr [rcx + rdx + 0x10]  ; 0x140009a37
    movups xmm1, xmmword ptr [rcx + rdx]  ; 0x140009a3c
    jne 0x1400099f0  ; 0x140009a40
    movaps xmmword ptr [rcx + 0x10], xmm0  ; 0x140009a42
    and r8, 0x7f  ; 0x140009a46
    movaps xmm0, xmm1  ; 0x140009a4a
    mov r9, r8  ; 0x140009a4d
    shr r9, 4  ; 0x140009a50
    je 0x140009a70  ; 0x140009a54
    nop  ; 0x140009a56
    movups xmmword ptr [rcx], xmm0  ; 0x140009a60
    sub rcx, 0x10  ; 0x140009a63
    movups xmm0, xmmword ptr [rcx + rdx]  ; 0x140009a67
    dec r9  ; 0x140009a6b
    jne 0x140009a60  ; 0x140009a6e
    and r8, 0xf  ; 0x140009a70
    je 0x140009a79  ; 0x140009a74
    movups xmmword ptr [rax], xmm2  ; 0x140009a76
    movups xmmword ptr [rcx], xmm0  ; 0x140009a79
    ret  ; 0x140009a7c
    int3   ; 0x140009a7d
    int3   ; 0x140009a7e
    int3   ; 0x140009a7f
    mov qword ptr [rsp + 0x10], rbx  ; 0x140009a80
    push rdi  ; 0x140009a85
    sub rsp, 0x20  ; 0x140009a86
    cmp qword ptr [rcx], 0  ; 0x140009a8a
    mov rdi, rcx  ; 0x140009a8e
    jne 0x140009ad3  ; 0x140009a91
    call qword ptr [rip + 0x1360f]  ; 0x140009a93
    cmp byte ptr [rdi + 0x10], 0  ; 0x140009a99
    mov dword ptr [rsp + 0x30], eax  ; 0x140009a9d
    jne 0x140009ab0  ; 0x140009aa1
    and qword ptr [rdi + 8], 0  ; 0x140009aa3
    xor edx, edx  ; 0x140009aa8
    mov byte ptr [rdi + 0x10], 1  ; 0x140009aaa
    jmp 0x140009ab4  ; 0x140009aae
    mov rdx, qword ptr [rdi + 8]  ; 0x140009ab0
    lea rcx, [rsp + 0x30]  ; 0x140009ab4
    call 0x14000efc4  ; 0x140009ab9
    mov ecx, dword ptr [rsp + 0x30]  ; 0x140009abe
    mov rbx, rax  ; 0x140009ac2
    mov qword ptr [rdi], rax  ; 0x140009ac5
    call qword ptr [rip + 0x135e2]  ; 0x140009ac8
    test rbx, rbx  ; 0x140009ace
    je 0x140009ae1  ; 0x140009ad1
    mov rax, qword ptr [rdi]  ; 0x140009ad3
    mov rbx, qword ptr [rsp + 0x38]  ; 0x140009ad6
    add rsp, 0x20  ; 0x140009adb
    pop rdi  ; 0x140009adf
    ret  ; 0x140009ae0
    call 0x14000e8f0  ; 0x140009ae1
    int3   ; 0x140009ae6
    int3   ; 0x140009ae7
    mov qword ptr [rsp + 0x10], rbx  ; 0x140009ae8
    mov qword ptr [rsp + 0x18], rsi  ; 0x140009aed
    push rdi  ; 0x140009af2
    sub rsp, 0x20  ; 0x140009af3
    mov rsi, qword ptr [rcx]  ; 0x140009af7
    xor edi, edi  ; 0x140009afa
    mov rbx, rcx  ; 0x140009afc
    test rsi, rsi  ; 0x140009aff
    jne 0x140009b3f  ; 0x140009b02
    call qword ptr [rip + 0x1359e]  ; 0x140009b04
    mov dword ptr [rsp + 0x30], eax  ; 0x140009b0a
    cmp byte ptr [rbx + 0x10], dil  ; 0x140009b0e
    jne 0x140009b1e  ; 0x140009b12
    mov qword ptr [rbx + 8], rdi  ; 0x140009b14
    mov byte ptr [rbx + 0x10], 1  ; 0x140009b18
    jmp 0x140009b22  ; 0x140009b1c
    mov rdi, qword ptr [rbx + 8]  ; 0x140009b1e
    mov rdx, rdi  ; 0x140009b22
    lea rcx, [rsp + 0x30]  ; 0x140009b25
    call 0x14000efc4  ; 0x140009b2a
    mov ecx, dword ptr [rsp + 0x30]  ; 0x140009b2f
    mov rsi, rax  ; 0x140009b33
    mov qword ptr [rbx], rax  ; 0x140009b36
    call qword ptr [rip + 0x13571]  ; 0x140009b39
    mov rbx, qword ptr [rsp + 0x38]  ; 0x140009b3f
    mov rax, rsi  ; 0x140009b44
    mov rsi, qword ptr [rsp + 0x40]  ; 0x140009b47
    add rsp, 0x20  ; 0x140009b4c
    pop rdi  ; 0x140009b50
    ret  ; 0x140009b51
    int3   ; 0x140009b52
    int3   ; 0x140009b53
    mov qword ptr [rsp + 8], rbx  ; 0x140009b54
    mov qword ptr [rsp + 0x10], rsi  ; 0x140009b59
    push rdi  ; 0x140009b5e
    sub rsp, 0x20  ; 0x140009b5f
    xor ebx, ebx  ; 0x140009b63
    mov rdi, rdx  ; 0x140009b65
    mov rsi, rcx  ; 0x140009b68
    cmp byte ptr [rdx + 0x10], bl  ; 0x140009b6b
    jne 0x140009b88  ; 0x140009b6e
    call qword ptr [rip + 0x13532]  ; 0x140009b70
    mov ecx, eax  ; 0x140009b76
    mov qword ptr [rdi + 8], rbx  ; 0x140009b78
    mov byte ptr [rdi + 0x10], 1  ; 0x140009b7c
    call qword ptr [rip + 0x1352a]  ; 0x140009b80
    jmp 0x140009b8c  ; 0x140009b86
    mov rbx, qword ptr [rdx + 8]  ; 0x140009b88
    lea rax, [rsi + rbx*8]  ; 0x140009b8c
    mov rbx, qword ptr [rsp + 0x30]  ; 0x140009b90
    mov rsi, qword ptr [rsp + 0x38]  ; 0x140009b95
    add rsp, 0x20  ; 0x140009b9a
    pop rdi  ; 0x140009b9e
    ret  ; 0x140009b9f
    mov qword ptr [rsp + 0x10], rbx  ; 0x140009ba0
    mov qword ptr [rsp + 0x18], rsi  ; 0x140009ba5
; Function: func_140009baa
func_140009baa:
    push rbp  ; 0x140009baa
    push rdi  ; 0x140009bab
    push r14  ; 0x140009bac
    lea rbp, [rsp - 0x4f0]  ; 0x140009bae
    sub rsp, 0x5f0  ; 0x140009bb6
    mov rax, qword ptr [rip + 0x1f43c]  ; 0x140009bbd
    xor rax, rsp  ; 0x140009bc4
    mov qword ptr [rbp + 0x4e0], rax  ; 0x140009bc7
    mov edi, r8d  ; 0x140009bce
    mov esi, edx  ; 0x140009bd1
    mov ebx, ecx  ; 0x140009bd3
    cmp ecx, -1  ; 0x140009bd5
    je 0x140009bdf  ; 0x140009bd8
    call 0x140003c78  ; 0x140009bda
    xor edx, edx  ; 0x140009bdf
    lea rcx, [rsp + 0x70]  ; 0x140009be1
    mov r8d, 0x98  ; 0x140009be6
    call 0x14001b630  ; 0x140009bec
    xor edx, edx  ; 0x140009bf1
    lea rcx, [rbp + 0x10]  ; 0x140009bf3
    mov r8d, 0x4d0  ; 0x140009bf7
    call 0x14001b630  ; 0x140009bfd
; ... (truncated for size)

start:
    ; Entry point at 0x140003630
    ; Jump to main program logic
    jmp 0x140003630

end start