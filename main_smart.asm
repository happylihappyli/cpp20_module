; Smart converted assembly from EXE
; Original program logic reconstructed

.model flat, stdcall
.stack 4096

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
    str_14001e330 db " === C++20 Test v1.1 ==== ", 0
    str_14001e350 db "Basic math operation test:", 0
    str_14001e370 db "10 + 5 = ", 0
    str_14001e380 db "10 - 5 = ", 0
    str_14001e390 db "10 * 5 = ", 0
    str_14001e3a0 db "10 / 5 = ", 0
    str_14001e3b0 db "Caught exception: ", 0
    str_14001e3c8 db "Advanced math function test:", 0
    str_14001e3e8 db "5! = ", 0
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
    str_14001f498 db "operator "" ", 0
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
    str_140020e40 db " !"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~", 0
    str_140020fc0 db " !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~", 0
    str_1400244f0 db "d8L2", 0
    str_14002451c db "[aOni*{", 0
    str_140024546 db "@2&@", 0
    str_14002457a db ""RP(", 0
    str_1400245f3 db "eLK(w", 0
    str_140024660 db "FEMh", 0
    str_14002466e db "h0'D", 0
    str_1400246c0 db "owM&", 0
    str_1400246fd db "~ $s%r", 0
    str_14002470c db "@b;zO]", 0
    str_14002474b db "$qE}", 0
    str_140024789 db ";*xh", 0
    str_1400247f3 db "["93", 0
    str_140024824 db "iu+-,", 0
    str_14002488a db "\\lo}", 0
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
    str_140025a7f db ">77:", 0
    str_140025a9e db ")>6{1n", 0
    str_140025aac db "Vr.>T", 0
    str_140025abc db "+f)>0'", 0
    str_140025b0b db "Lj[;>", 0
    str_140025b2e db "3>fvw", 0
    str_140025b3c db ";H9>&X", 0
    str_140025b62 db "*StO9>T", 0
    str_140025b8e db ".>Tu", 0
    str_140025b94 db ".(!>", 0
    str_140025bac db "n03>Pu", 0
    str_140025c2d db "S9>H", 0
    str_140025c74 db "x.&>", 0
    str_140025c82 db "K~Je#>!", 0
    str_140025c94 db "-/!>", 0
    str_140025ca6 db "(>aI", 0
    str_140025caf db "=cQ6", 0
    str_140025cbb db "+M<7>", 0
    str_140025cce db "*>f[", 0
    str_140025cdc db "o ->", 0
    str_140025cfc db "l(>>", 0
    str_140025d05 db "c(>\\,", 0
    str_140025d14 db "ET5>", 0
    str_140025d1e db ";>9l", 0
    str_140025d34 db "mG4>", 0
    str_140025d5b db "bp(=>?g", 0
    str_140025d6c db "36,>", 0
    str_140025dbd db "37>k", 0
    str_140025dec db "~X3>", 0
    str_140025dfe db "6>J`", 0
    str_140025e06 db "?>!T", 0
    str_140025e1c db "BC?>6t9^", 0
    str_140025e3d db "8'>0", 0
    str_140025e61 db "'._M", 0
    str_140025e6f db "=4<,", 0
    str_140025e75 db "BF>^G", 0
    str_140025e85 db "K&>.yC", 0
    str_140025e94 db " 'L>[", 0
    str_140025e9c db ".xJ>Hf", 0
    str_140025ea3 db "y\\PD>!", 0
    str_140025eb2 db "|b=})>", 0
    str_140025ec3 db "c [1>H'", 0
    str_140025ed4 db "dL?>", 0
    str_140025f02 db "uzKs@>", 0
    str_140025f1e db "3>N;kU", 0
    str_140025f4d db "kE>fvw", 0
    str_140025f65 db "eF>t", 0
    str_140025f76 db "L>ev", 0
    str_140025f8e db "A>pP&", 0
    str_140025f94 db "V6E>`"(5", 0
    str_140025fdd db ",=>B", 0
    str_140025fe6 db "">}t", 0
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
    str_14002672f db "?30]", 0
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
    str_14002a3ea db "                          ", 0
    str_14002a4ca db "abcdefghijklmnopqrstuvwxyz", 0
    str_14002a4ea db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0
    str_14002a602 db "                          ", 0
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

.code
start:
    ; Reconstructed main function logic
    ; Math operations detected:
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x48
    ; sub rsp, 0x48
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x38
    ; add rax, 8
    ; imul rax, rax, 0
    ; imul rax, rax, 0
    ; imul rax, rax, 1
    ; add rsp, 0x38
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rax, 8
    ; imul rax, rax, 0
    ; add rsp, 0x28
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x18
    ; add rcx, rdx
    ; sub r8, rdx
    ; add rdx, 0x18
    ; add rdx, rcx
    ; add eax, ecx
    ; add rdx, 0x28
    ; add rsp, 0x18
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x5c0
    ; add rax, 8
    ; add rsp, 0x5c0
    ; sub rsp, 0x28
    ; add rcx, rax
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rbx, 8
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rbx, 8
    ; add rsp, 0x20
    ; sub rsp, 0x10
    ; add eax, 0xfffcf9b0
    ; add rsp, 0x10
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x50
    ; sub rcx, 8
    ; add rsp, 0x50
    ; sub rsp, 0x70
    ; add rsp, 0x70
    ; sub rsp, 0x70
    ; add rsp, 0x70
    ; sub rsp, 0x20
    ; add rax, rcx
    ; add rsp, 0x20
    ; sub r10, rax
    ; add r10, 4
    ; add r10, 4
    ; add rdx, rbp
    ; sub rdx, rax
    ; sub r8, rdx
    ; sub r8, rdi
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rbx, qword ptr [r15 + 8]
    ; add r8, qword ptr [rsp + 0x50]
    ; add rdx, 0x14
    ; add rsp, 0x20
    ; sub rsp, 0x40
    ; add r9, rbx
    ; add rcx, 0x14
    ; sub rsp, 0x60
    ; sub r8, rax
    ; sub r8, rax
    ; sub r8, rax
    ; add r8, 4
    ; sub rsp, 0xe0
    ; add rsp, 0xe0
    ; sub rsp, 0xe0
    ; add rcx, qword ptr [r10 + 8]
    ; add r8, qword ptr [r10 + 8]
    ; add rsp, 0xe0
    ; sub r8, rax
    ; sub r8, rax
    ; sub r8, rax
    ; add r8, 4
    ; sub r8, rax
    ; sub r8, rax
    ; sub r8, rax
    ; sub rdx, rax
    ; sub rdx, rax
    ; sub rdx, rax
    ; sub r10, 1
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x40
    ; add rdx, qword ptr [rax + 0x60]
    ; add rsp, 0x40
    ; sub rsp, 0x60
    ; add rcx, qword ptr [rax + 0x60]
    ; sub rsp, 0x40
    ; sub r14, r12
    ; add rcx, rcx
    ; add rax, r12
    ; add rax, rax
    ; add rcx, r12
    ; add rax, rax
    ; add rdx, r12
    ; sub rbp, r12
    ; add r9, r9
    ; add rcx, rcx
    ; add rax, rax
    ; add rcx, rcx
    ; add r8, r12
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; add rdx, 9
    ; sub rdx, rax
    ; sub rsp, 0x48
    ; sub eax, 0x19930520
    ; add rdx, qword ptr [rcx + 0x38]
    ; add rsp, 0x48
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; add rax, rcx
    ; add r8, r9
    ; add rax, r8
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rax, 0x20
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rax, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rdx, r10
    ; add rsp, 0x20
    ; add r9, rdi
    ; sub r9, rax
    ; sub r9, rax
    ; add esi, eax
    ; add rax, r10
    ; add rax, rdi
    ; sub r9, rax
    ; sub rsp, 0x30
    ; add rcx, rax
    ; add rax, qword ptr [rsi]
    ; add rcx, rax
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; add rcx, rax
    ; add rax, qword ptr [rsi]
    ; add rcx, rax
    ; add rsp, 0x30
    ; sub rsp, 0x20
    ; add rsi, qword ptr [rdx]
    ; sub eax, 1
    ; add rbx, rax
    ; add rbx, rax
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsi, qword ptr [rdx]
    ; sub eax, 1
    ; add rbx, rax
    ; add rbx, rax
    ; add rsp, 0x20
    ; sub rsp, 0x60
    ; add rax, rcx
    ; add rsp, 0x60
    ; sub rsp, 0x60
    ; add rax, rcx
    ; add rsp, 0x60
    ; sub rsp, 0x128
    ; sub eax, 0x19930520
    ; sub eax, 0x19930520
    ; sub eax, 0x19930520
    ; add rcx, qword ptr [rsi + 8]
    ; add rax, 4
    ; add rax, rdx
    ; add rax, rcx
    ; add qword ptr [rsp + 0x70], 4
    ; add rax, rcx
    ; add rdx, rax
    ; add rsp, 0x128
    ; sub rsp, 0x188
    ; sub edi, 2
    ; add rdx, qword ptr [rsi + 8]
    ; sub rdx, rax
    ; sub eax, 0x19930520
    ; sub eax, 0x19930520
    ; sub eax, 0x19930520
    ; add rax, 4
    ; add rax, rdx
    ; add r12, rcx
    ; add qword ptr [rsp + 0x70], 4
    ; sub r8, rax
    ; sub r8, rax
    ; sub r8, rax
    ; add rsp, 0x188
    ; sub rsp, 0xc0
    ; add rbx, -0x14
    ; add rbx, rdx
    ; add rax, r12
    ; add rax, rcx
    ; add rsp, 0xc0
    ; sub rsp, 0x138
    ; sub ebx, 1
    ; sub rbx, 1
    ; add rax, rdx
    ; add rax, rcx
    ; sub rdx, rax
    ; sub rdx, rax
    ; sub rdx, rax
    ; add rsp, 0x138
    ; sub rsp, 0x20
    ; add r9, rsi
    ; add rsi, rax
    ; add rcx, rax
    ; add rsi, rax
    ; add r8, 0x10
    ; add r8, rax
    ; sub r8, rax
    ; sub ecx, edx
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add r8, rsi
    ; add rbp, rax
    ; add rcx, rax
    ; add rsi, rax
    ; add r8, 0x10
    ; add r8, rax
    ; sub r8, rax
    ; sub ecx, edx
    ; add rdi, 4
    ; add rsp, 0x20
    ; sub rsp, 0x50
    ; add rax, rcx
    ; add r10, rdx
    ; add rsp, 0x50
    ; sub rsp, 0x80
    ; add rdx, qword ptr [rbp + 8]
    ; sub rdx, rax
    ; add rdx, qword ptr [rbp + 8]
    ; sub rdx, rax
    ; add rdx, qword ptr [rbp + 8]
    ; sub rdx, rax
    ; add r10, rdx
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x20
    ; add rdx, r8
    ; sub rdx, rax
    ; add rsp, 0x20
    ; add rdx, r8
    ; sub rdx, rax
    ; sub rdx, rax
    ; sub rdx, rax
    ; sub rdx, rax
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x70
    ; sub eax, 0x19930520
    ; add rsp, 0x70
    ; sub rsp, 0xa8
    ; sub eax, 0x19930520
    ; add rsp, 0xa8
    ; sub rdx, rax
    ; add rdx, 4
    ; sub rdx, rax
    ; sub r10, rax
    ; add eax, edx
    ; sub r10, rax
    ; sub r10, rax
    ; sub rsp, 0x20
    ; sub eax, r8d
    ; sub ecx, r8d
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add rax, rbx
    ; add rax, rbx
    ; add rsp, 0x30
    ; sub rsp, 0x100
    ; sub edi, 2
    ; add rsi, 8
    ; add rdx, qword ptr [rsi]
    ; sub rdx, rax
    ; sub r15, rax
    ; add rcx, qword ptr [rsi]
    ; add r8, rdx
    ; add rcx, qword ptr [rsi]
    ; add rsp, 0x100
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add r12, 4
    ; add r12, rdx
    ; add rdi, rax
    ; add rcx, rax
    ; add r12, 4
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rax, rsi
    ; add rax, rsi
    ; add rax, rbx
    ; add rsi, 0x14
    ; add rsp, 0x20
    ; sub r8, rax
    ; add rax, 4
    ; add rax, 4
    ; sub rdx, rax
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; sub rcx, qword ptr [r10 + 8]
    ; sub rax, rdx
    ; add rsp, 0x30
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; add r9, r10
    ; sub r9, 0x20
    ; sub rcx, r9
    ; sub rdx, r9
    ; add r8, r9
    ; add rcx, 0x100
    ; add rdx, 0x100
    ; sub r8, 0x100
    ; add r11, r10
    ; add rcx, 0x100
    ; add rdx, 0x100
    ; sub r8, 0x100
    ; add r11, r10
    ; add r9, r10
    ; sub r9, 0x20
    ; sub rcx, r9
    ; sub rdx, r9
    ; add r8, r9
    ; add rcx, 0x100
    ; add rdx, 0x100
    ; sub r8, 0x100
    ; add r11, r10
    ; add rcx, 0x100
    ; add rdx, 0x100
    ; sub r8, 0x100
    ; add r11, r10
    ; add r9, r10
    ; sub r9, 0x10
    ; sub rcx, r9
    ; sub rdx, r9
    ; add r8, r9
    ; add rcx, 0x80
    ; add rdx, 0x80
    ; sub r8, 0x80
    ; add r11, r10
    ; add r9, r10
    ; sub r9, 0x10
    ; sub rcx, r9
    ; sub rdx, r9
    ; add r8, r9
    ; add rcx, 0x80
    ; add rdx, 0x80
    ; sub r8, 0x80
    ; add r11, r10
    ; sub rsp, 0x20
    ; add rbp, 4
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rdx, rcx
    ; add rcx, r8
    ; sub rcx, 0x10
    ; sub r8, 0x10
    ; sub r8, rax
    ; sub rcx, 0x80
    ; sub rcx, 0x10
    ; sub rdx, rcx
    ; add rcx, r8
    ; sub rcx, 0x10
    ; sub r8, 0x10
    ; sub r8, rax
    ; sub rcx, 0x80
    ; sub rcx, 0x10
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x5f0
    ; add rax, 8
    ; sub rsp, 0x70
    ; add rsp, 0x70
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x38
    ; add rsp, 0x38
    ; sub rsp, 0x38
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rcx, 2
    ; add r14, 0x58
    ; add rbx, 8
    ; add rsi, 0x58
    ; sub rdi, 1
    ; add rsp, 0x20
    ; imul rax, rax, 0x58
    ; add rax, rcx
    ; sub rsp, 0x20
    ; add rcx, 0x30
    ; add rbx, 8
    ; add rsp, 0x20
    ; add rcx, 0x30
    ; add rcx, 0x30
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x4d0
    ; add rsp, 0x4d0
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add eax, -0x30
    ; add eax, -0x57
    ; add eax, -0x37
    ; div ebp
    ; add ecx, -0x30
    ; add ecx, -0x57
    ; add ecx, -0x37
    ; imul eax, ebp
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; sub r8d, 1
    ; sub r8d, 1
    ; sub r8d, 1
    ; sub r8d, 6
    ; sub r8d, 1
    ; sub r8d, 2
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; sub r8d, 1
    ; sub r8d, 1
    ; sub r8d, 1
    ; sub r8d, 6
    ; sub r8d, 1
    ; sub r8d, 2
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; sub r8d, 1
    ; sub r8d, 1
    ; sub r8d, 1
    ; sub r8d, 6
    ; sub r8d, 1
    ; sub r8d, 2
    ; add rsp, 0x30
    ; add rdx, rax
    ; add al, 0x30
    ; sub edx, dword ptr [rcx + 0x40]
    ; add rcx, 0x50
    ; add r8, rax
    ; mul r11d
    ; add cl, cl
    ; sub r11b, cl
    ; add r11b, 0x30
    ; add al, 7
    ; add al, cl
    ; sub r8d, dword ptr [r9 + 0x40]
    ; add rdx, rax
    ; add al, 0x30
    ; add al, 7
    ; add al, r9b
    ; sub edx, dword ptr [rcx + 0x40]
    ; add rdx, rax
    ; add al, 0x30
    ; sub edx, dword ptr [rcx + 0x40]
    ; add rcx, 0x50
    ; add r8, rax
    ; mul r11
    ; add cl, cl
    ; sub r11b, cl
    ; add r11b, 0x30
    ; add al, 7
    ; add al, cl
    ; sub r8d, dword ptr [r9 + 0x40]
    ; add rdx, rax
    ; add al, 0x30
    ; add al, 7
    ; add al, r9b
    ; sub edx, dword ptr [rcx + 0x40]
    ; sub rsp, 0x4a0
    ; sub al, 0x45
    ; sub r8, rdx
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; sub rax, 0x20
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; sub rax, 0x20
    ; add rcx, rax
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; sub rax, 0x20
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 1
    ; add rsp, 0x30
    ; sub rsp, 0x38
    ; add rsp, 0x38
    ; sub al, 0x58
    ; add rsp, 0x38
    ; sub rsp, 0x38
    ; add rsp, 0x38
    ; sub al, 0x58
    ; add rsp, 0x38
    ; sub rsp, 0x50
    ; sub edx, 0x41
    ; sub edx, 2
    ; sub edx, 2
    ; sub edx, 1
    ; sub edx, 0x65
    ; sub edx, 1
    ; sub edx, 1
    ; sub edx, 2
    ; add rsi, 2
    ; sub r15d, esi
    ; sub r15d, dword ptr [rbx + 0x48]
    ; add dword ptr [rdi], esi
    ; add dword ptr [rdi], r8d
    ; add dword ptr [rdi], r8d
    ; sub rsp, 0x50
    ; sub ecx, 0x41
    ; sub ecx, 2
    ; sub ecx, 2
    ; sub ecx, r13d
    ; sub ecx, 0x65
    ; sub ecx, r13d
    ; sub ecx, r13d
    ; sub ecx, 2
    ; add rdx, 2
    ; sub esi, edx
    ; sub esi, dword ptr [rbx + 0x48]
    ; add qword ptr [rcx + 0x10], r13
    ; add qword ptr [rax], r13
    ; add r9d, r13d
    ; add qword ptr [rcx + 0x10], r13
    ; add qword ptr [rax], r13
    ; add r8d, r13d
    ; add r15d, r13d
    ; add qword ptr [rdx + 0x10], r13
    ; add qword ptr [rax], r13
    ; add r8d, r13d
    ; sub edx, 2
    ; sub edx, 1
    ; sub r8b, 0x63
    ; sub rsp, 0x50
    ; sub al, 0x41
    ; add eax, 0xd
    ; add eax, 0x15d
    ; add r9, r10
    ; sub al, 0x47
    ; sub al, 0x49
    ; add rsp, 0x50
    ; sub rsp, 0x30
    ; sub ecx, 2
    ; sub ecx, 1
    ; sub dl, 0x63
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 6
    ; sub ecx, 1
    ; sub ecx, 2
    ; sub ecx, 1
    ; add rsp, 0x30
    ; sub rsp, 0x20
    ; sub edx, 2
    ; sub edx, 1
    ; sub r9b, 0x63
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add dword ptr [r9], edi
    ; sub rax, qword ptr [rcx + 0x10]
    ; add qword ptr [rax], rsi
    ; add qword ptr [rax + 0x10], rsi
    ; add dword ptr [rbx], edi
    ; add dword ptr [rbx], esi
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rbp, rdx
    ; add rsp, 0x20
    ; sub rsp, 0xb0
    ; add rsp, 0xb0
    ; sub rsp, 0x510
    ; add rsp, 0x510
    ; sub rsp, 0x70
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rax, 0x10
    ; add rsp, 0x20
    ; add rcx, 0x30
    ; add rcx, 0x10
    ; sub ecx, edx
    ; sub rsp, 0x20
    ; add r14, 8
    ; add r14, 8
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; div r8
    ; imul r9, r8
    ; add rcx, r9
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add r8, rax
    ; add r14, 8
    ; add rsi, rbp
    ; add rsp, 0x30
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; add rdi, 8
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x38
    ; add rsp, 0x38
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rbx, 8
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rbx, 8
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x50
    ; add rcx, rax
    ; add rsp, 0x50
    ; sub rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x28
    ; sub eax, ecx
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x30
    ; add rbx, 8
    ; add rsp, 0x30
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; sub rbx, rsi
    ; add rdi, rbx
    ; sub rcx, r9
    ; add rcx, 7
    ; sub ecx, eax
    ; sub eax, ecx
    ; sub ecx, eax
    ; sub r8d, eax
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; sub rbx, 8
    ; add rsp, 0x20
    ; sub rsp, 0x38
    ; add rsp, 0x38
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub r8, rcx
    ; sub rdx, 1
    ; sub rsp, 0x28
    ; sub rdx, rcx
    ; add rcx, 8
    ; sub r8, 8
    ; add rcx, 2
    ; add rdx, 2
    ; sub r8, 1
    ; sub eax, ecx
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x50
    ; add rsp, 0x50
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; imul rbx, rsi, 0x3c8
    ; add rbx, rdi
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; add rdx, r8
    ; add ecx, 0xffffff44
    ; sub rsp, 0x20
    ; add rax, 0x24
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rax, 0x24
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rax, 0x20
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; div rbx
    ; imul rbx, r8
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rbp, 4
    ; sub ecx, eax
    ; add rsp, 0x20
    ; sub edx, ecx
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x50
    ; add rsp, 0x50
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x50
    ; add rsp, 0x50
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rbx, 8
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add rcx, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x60
    ; add rbx, 8
    ; add rsp, 0x60
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x20
    ; sub edi, dword ptr [rbx + 8]
    ; add rsp, 0x20
    ; sub rsp, 0x60
    ; add rsp, 0x60
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x90
    ; add rbx, rsi
    ; add rbx, 8
    ; sub rdi, 1
    ; sub rsp, 0x20
    ; add rax, 2
    ; sub ecx, 1
    ; add r14, 8
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rbx, 8
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rax, r8
    ; add rcx, r10
    ; sub rcx, r9
    ; sub r8, r10
    ; add r8, rax
    ; add rcx, 0x20
    ; sub rax, rcx
    ; sub rcx, r9
    ; sub r8, r10
    ; add r8, rax
    ; add rcx, 0x10
    ; sub rcx, r9
    ; add rdx, 2
    ; sub rax, rcx
    ; add rdx, 2
    ; sub rdx, r8
    ; sub rax, r11
    ; add rax, rdx
    ; add r9, 0x20
    ; add r9, 2
    ; add rdx, 2
    ; sub rax, rcx
    ; add rdx, 2
    ; sub rdx, r8
    ; sub rax, r11
    ; add rax, rdx
    ; add r9, 0x10
    ; add r9, 2
    ; add rdx, 2
    ; sub rdx, r8
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x50
    ; add cl, 0x50
    ; add ebp, 7
    ; add ax, r8w
    ; add ax, bp
    ; add dx, -4
    ; add dl, bpl
    ; add rsi, rbx
    ; add r13b, 0x50
    ; sub rcx, r15
    ; sub rcx, rax
    ; imul rcx
    ; add rdx, rax
    ; imul rax, rdx, -0x3e8
    ; add rcx, rax
    ; imul rcx
    ; add rdx, rcx
    ; add rdx, rax
    ; imul rax, rdx, -0x64
    ; add rcx, rax
    ; imul rcx
    ; add rdx, rax
    ; imul rax, rdx, -0xa
    ; add rcx, rax
    ; add cl, dil
    ; sub rsp, 0x50
    ; sub rdx, rcx
    ; sub rdx, r9
    ; add rcx, r9
    ; add rcx, rdi
    ; add rsp, 0x50
    ; sub rsp, 0x30
    ; add eax, 9
    ; add rsp, 0x30
    ; add rdx, rdi
    ; add rbx, rbp
    ; add rbx, rcx
    ; sub rdi, rbx
    ; sub r8d, 1
    ; imul r8d
    ; add edx, eax
    ; add byte ptr [rbx + 2], dl
    ; imul eax, edx, -0x64
    ; add r8d, eax
    ; imul r8d
    ; add edx, eax
    ; add byte ptr [rbx + 3], dl
    ; imul eax, edx, -0xa
    ; add r8d, eax
    ; add byte ptr [rbx + 4], r8b
    ; sub rsp, 0x50
    ; sub rdx, r9
    ; add r8d, esi
    ; add rsp, 0x50
    ; sub rsp, 0x20
    ; add rax, rbx
    ; add rbx, rax
    ; add rsp, 0x20
    ; sub rsp, 0x50
    ; sub rdx, r8
    ; add rsp, 0x50
    ; sub rsp, 0x20
    ; sub rax, rdx
    ; add rsp, 0x20
    ; sub rsp, 0x50
    ; add rcx, 8
    ; add edx, edx
    ; add rax, rcx
    ; add r8, rcx
    ; sub ecx, 0x41
    ; sub ecx, 4
    ; sub ecx, 1
    ; sub ecx, 1
    ; sub ecx, 0x1a
    ; sub ecx, 4
    ; add rsp, 0x50
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub dword ptr [rdx + 0x10], 1
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x50
    ; add rbx, 8
    ; add rbx, 8
    ; add rbx, 8
    ; sub r14, rdi
    ; add rax, 8
    ; add rdx, rcx
    ; add rbx, 8
    ; sub rax, rdi
    ; sub rdx, r12
    ; add rdx, qword ptr [rbp + 0x50]
    ; add r12, r15
    ; add r14, 8
    ; add rbx, 8
    ; add rsp, 0x50
    ; sub rsp, 0x30
    ; add rbp, rdx
    ; add rsp, 0x30
    ; add r15, rbp
    ; sub r15, r14
    ; add rax, 0x20
    ; sub r14, qword ptr [rsi]
    ; add qword ptr [rsi + 8], r15
    ; sub rsp, 0x340
    ; sub al, 0x2f
    ; sub r8b, 0x2f
    ; sub rdx, rdi
    ; sub rsi, qword ptr [r12]
    ; sub rdx, rax
    ; sub rdx, rsi
    ; add rsp, 0x340
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x2a0
    ; sub rsp, 0x40
    ; add rax, 0x18
    ; add rcx, rdx
    ; add rax, rdx
    ; sub r9, 1
    ; add rax, 0x119
    ; add rcx, rdx
    ; add rax, rdx
    ; sub r8, 1
    ; add rsp, 0x40
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x20
    ; add rcx, 0x18
    ; sub r8, rax
    ; sub rbx, rax
    ; add rsp, 0x20
    ; sub rsp, 0x780
    ; add rdx, 2
    ; sub r8, rdi
    ; sub r9, rdi
    ; add rdx, 2
    ; sub rbx, 1
    ; sub rsp, 0x270
    ; add rax, r9
    ; add rcx, r9
    ; sub r8, 1
    ; add rax, r9
    ; add rcx, r9
    ; sub rdx, 1
    ; add eax, edi
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x40
    ; add r14d, ebp
    ; add rax, 0x30
    ; sub eax, edx
    ; add edi, ebp
    ; sub rdx, rbp
    ; add rcx, 2
    ; add rax, rbp
    ; sub rcx, rbp
    ; sub ecx, 0x3a4
    ; sub ecx, 4
    ; sub ecx, 0xd
    ; add r9, r15
    ; add r8d, ebp
    ; add r10d, ebp
    ; add rdx, 2
    ; add r9, 8
    ; add r11, rbp
    ; sub r14, rbp
    ; sub edi, 0x3a4
    ; sub edi, 4
    ; sub edi, 0xd
    ; add rdi, r15
    ; sub rcx, rbp
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub eax, 0x2a
    ; sub eax, 0xc402
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 0xc435
    ; sub eax, 0x1263
    ; sub eax, 0x812
    ; sub eax, 0xdead
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 0x1f35
    ; sub eax, 0x2a
    ; sub eax, 0xc402
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 0xc435
    ; sub eax, 0x1263
    ; sub eax, 0x812
    ; sub eax, 0xdead
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 1
    ; sub eax, 0x1f35
    ; sub rsp, 0x40
    ; add rbp, 2
    ; sub rbp, rbx
    ; add rbp, 2
    ; add rsp, 0x40
    ; sub rsp, 0x30
    ; sub r12, r15
    ; add rbx, 8
    ; sub rbx, r14
    ; sub rbx, r14
    ; sub rax, r15
    ; add rcx, rax
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub r14, rdi
    ; add rdi, 8
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rdi, 0x48
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rdi, 0x48
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; add eax, 0x40
    ; sub rsp, 0x20
    ; sub ebx, eax
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rbx, 8
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x60
    ; add rsi, rsi
    ; sub rsp, rax
    ; add rbx, 0x10
    ; add rax, 0x20
    ; sub r8, 1
    ; sub rsp, 0x20
    ; sub rcx, 0xfe
    ; sub rcx, rdi
    ; sub rcx, rdi
    ; add rsi, 8
    ; add rdi, 0x20
    ; sub rbp, 1
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rax, 0x20
    ; sub r8, 1
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; div rbx
    ; imul rbx, rbp
    ; sub rbx, rdi
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x20
    ; add rbx, 0x10
    ; add rbx, -8
    ; sub rbx, 0x10
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; sub rbx, 0x10
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x40
    ; sub edx, 2
    ; sub edx, 2
    ; sub edx, 2
    ; sub edx, 2
    ; sub edx, 3
    ; sub edx, 4
    ; sub edx, 6
    ; sub ecx, 2
    ; sub ecx, 4
    ; sub ecx, 9
    ; sub ecx, 6
    ; add rcx, rax
    ; add rax, 0x10
    ; add rax, qword ptr [r15]
    ; add rcx, rax
    ; add rax, 0x10
    ; sub rsp, 0x20
    ; sub eax, edx
    ; add r14, r14
    ; add rsp, 0x20
    ; add rax, rax
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x60
    ; add rsp, 0x60
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x38
    ; add rsp, 0x38
    ; sub rsp, 0xd0
    ; add r12, r8
    ; add rcx, qword ptr [r11 + r9*8 + 0x2b730]
    ; sub eax, edx
    ; sub rdx, rsi
    ; add rdx, qword ptr [r11 + r9*8 + 0x2b730]
    ; add rcx, r14
    ; add rcx, rdx
    ; add rsi, rcx
    ; sub r8, rsi
    ; add rsi, r13
    ; sub edx, dword ptr [rbp - 0x41]
    ; add edx, dword ptr [rbx + 8]
    ; sub rsi, r14
    ; add rcx, r14
    ; add dword ptr [rbx + 4], edx
    ; add rcx, rdx
    ; add dword ptr [rbx + 4], r8d
    ; add rsp, 0xd0
    ; sub rsp, rax
    ; add rbp, r8
    ; sub ebx, eax
    ; add dword ptr [rdi + 4], eax
    ; sub rsp, rax
    ; add rbp, r8
    ; add rsi, 2
    ; add dword ptr [rdi + 8], 2
    ; add rbx, 2
    ; add rbx, 2
    ; sub rbx, rax
    ; add ebx, ebx
    ; add dword ptr [rdi + 4], eax
    ; sub rsp, rax
    ; add r14, r8
    ; add rdi, 2
    ; add rax, 2
    ; add rax, 2
    ; sub rax, rcx
    ; add rdx, rcx
    ; sub r8d, esi
    ; add esi, dword ptr [rsp + 0x40]
    ; sub eax, r15d
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x78
    ; sub ecx, 1
    ; add r14d, 2
    ; add r15, 2
    ; sub ecx, 1
    ; sub eax, edi
    ; add rsp, 0x78
    ; sub rsp, 0x20
    ; add rax, rcx
    ; add rbx, rcx
    ; add rbx, rcx
    ; add rsp, 0x20
    ; sub rsp, 0x30
    ; add rsp, 0x30
    ; sub rsp, 0x220
    ; add rcx, 4
    ; add rcx, 4
    ; div r12d
    ; div r12d
    ; add r10d, r15d
    ; div r9
    ; div r9
    ; add r14, rcx
    ; sub r8d, ebp
    ; add rcx, 4
    ; sub r11, rax
    ; sub r11, rsi
    ; sub rcx, 4
    ; sub eax, r8d
    ; sub ebx, eax
    ; sub r14d, ebx
    ; div rcx
    ; div rcx
    ; add rax, r9
    ; imul rax, rcx
    ; add r8, rax
    ; imul rax, r9
    ; sub rax, rdx
    ; add r8, r14
    ; add r14, 4
    ; imul rax, r9
    ; add r10, rax
    ; sub eax, r8d
    ; add r11, 4
    ; add r8, rax
    ; add r8, rcx
    ; add r11, rax
    ; sub r12d, 1
    ; add rsp, 0x220
    ; sub rsp, 0x7f0
    ; sub eax, r15d
    ; sub eax, r15d
    ; sub eax, r15d
    ; add rbx, rdx
    ; add r12d, r8d
    ; add edx, r15d
    ; add r8d, r15d
    ; sub esi, r11d
    ; sub ebx, r15d
    ; sub edi, eax
    ; add r14d, edx
    ; add r14d, r8d
    ; sub eax, r8d
    ; add ecx, r15d
    ; sub esi, r11d
    ; sub ebx, r15d
    ; sub edi, eax
    ; add r14d, edx
    ; add r14d, r8d
    ; sub eax, r8d
    ; add ecx, r15d
    ; add r8d, r15d
    ; sub edi, eax
    ; add r14d, edx
    ; sub esi, r12d
    ; sub edi, eax
    ; add r14d, edx
    ; sub esi, r12d
    ; mul ecx
    ; add rcx, rbx
    ; imul rcx, r10
    ; add rcx, rax
    ; add r9d, r15d
    ; imul rcx, r10
    ; add rcx, rax
    ; add r9d, r15d
    ; add r12d, r15d
    ; add r9d, r15d
    ; add dword ptr [rbp - 0x60], r15d
    ; add r8d, r15d
    ; add eax, ecx
    ; imul rdx, rsi
    ; add rdx, rax
    ; add rdx, rax
    ; add rcx, rax
    ; add r10d, r15d
    ; sub ecx, dword ptr [rsp + 0x48]
    ; add eax, eax
    ; sub ecx, eax
    ; imul rcx, r10
    ; add rcx, rax
    ; add r9d, r15d
    ; add r12d, r15d
    ; mul ecx
    ; add rcx, rbx
    ; imul rcx, r10
    ; add rcx, rax
    ; add r9d, r15d
    ; imul rcx, r10
    ; add rcx, rax
    ; add r9d, r15d
    ; add r14d, r15d
    ; add r8d, r15d
    ; add eax, ecx
    ; imul rdx, rsi
    ; add rdx, rax
    ; add rdx, rax
    ; add rcx, rax
    ; add r10d, r15d
    ; sub edx, dword ptr [rsp + 0x50]
    ; add eax, eax
    ; sub ecx, eax
    ; imul rcx, r10
    ; add rcx, rax
    ; add r9d, r15d
    ; add r14d, r15d
    ; add edi, r15d
    ; add r9d, r15d
    ; add dword ptr [rbp + 0x170], r15d
    ; sub edi, r15d
    ; add al, 0x30
    ; add eax, edi
    ; add rdi, rsi
    ; imul rcx, rax, 0x3b9aca00
    ; add rcx, rax
    ; add r10d, r15d
    ; add dword ptr [rbp - 0x60], r15d
    ; sub r10d, ebx
    ; mul r8d
    ; add al, al
    ; sub r8b, al
    ; add r9d, eax
    ; sub rax, rbx
    ; add rbx, rax
    ; add rsp, 0x7f0
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub r11, 1
    ; sub rsp, 0x40
    ; add rsp, 0x40
    ; sub rsp, 0x30
    ; add r8, 3
    ; add ecx, 0xffff0000
    ; add rbx, 2
    ; add rdi, rdx
    ; add rbx, 2
    ; sub rbp, 1
    ; sub rbx, r14
    ; add r8, 3
    ; add rdi, rax
    ; add rsp, 0x30
    ; sub rsp, 0x20
    ; sub edi, dword ptr [rbx + 8]
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rsp, 0x28
    ; add rsp, 0x28
    ; sub rsp, 0x450
    ; imul r15, r14
    ; add r15, rcx
    ; sub rax, r13
    ; div r14
    ; add rdi, r14
    ; sub rbx, r15
    ; sub r8, 1
    ; sub r15, r14
    ; sub rcx, 1
    ; imul rbx, r14
    ; sub rdx, rbx
    ; sub r9, 1
    ; sub r9, r15
    ; sub r8, 1
    ; sub r9, r15
    ; sub r8, 1
    ; add rbx, r14
    ; add rbx, r14
    ; sub rdi, r14
    ; sub r9, rdi
    ; sub r8, 1
    ; sub rbp, r14
    ; sub rbp, r14
    ; sub rcx, rbx
    ; sub rax, r13
    ; add rsp, 0x450
    ; sub rsp, 0x20
    ; add rsp, 0x20
    ; sub rbx, rcx
    ; sub r8, 1
    ; sub r8, 1
    ; sub rdi, 1
    ; sub rsp, 0x58
    ; add rsp, 0x58
    ; sub rdi, r10
    ; add rax, rsi
    ; sub rcx, r10
    ; sub eax, edx
    ; add rcx, rsi
    ; sub rax, r10
    ; add rax, 0x10
    ; sub r9d, ecx
    ; add rcx, rsi
    ; add dword ptr [rax], eax
    ; add dword ptr [rax], eax
    ; Exit program
    push 0
    call ExitProcess

end start