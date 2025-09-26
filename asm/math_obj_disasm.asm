Microsoft (R) COFF/PE Dumper Version 14.39.33522.0
Copyright (C) Microsoft Corporation.  All rights reserved.


Dump of file ..\obj\math.obj

File Type: COFF OBJECT

?add@math@@YAHHH@Z::<!math> (int __cdecl math::add(int,int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  0000000000000008: 8B 44 24 10        mov         eax,dword ptr [rsp+10h]
  000000000000000C: 8B 4C 24 08        mov         ecx,dword ptr [rsp+8]
  0000000000000010: 03 C8              add         ecx,eax
  0000000000000012: 8B C1              mov         eax,ecx
  0000000000000014: C3                 ret
  0000000000000015: CC                 int         3
  0000000000000016: CC                 int         3
  0000000000000017: CC                 int         3
  0000000000000018: CC                 int         3
  0000000000000019: CC                 int         3
  000000000000001A: CC                 int         3
  000000000000001B: CC                 int         3
  000000000000001C: CC                 int         3
  000000000000001D: CC                 int         3
  000000000000001E: CC                 int         3
  000000000000001F: CC                 int         3
?subtract@math@@YAHHH@Z::<!math> (int __cdecl math::subtract(int,int)):
  0000000000000020: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000024: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  0000000000000028: 8B 44 24 10        mov         eax,dword ptr [rsp+10h]
  000000000000002C: 8B 4C 24 08        mov         ecx,dword ptr [rsp+8]
  0000000000000030: 2B C8              sub         ecx,eax
  0000000000000032: 8B C1              mov         eax,ecx
  0000000000000034: C3                 ret
  0000000000000035: CC                 int         3
  0000000000000036: CC                 int         3
  0000000000000037: CC                 int         3
  0000000000000038: CC                 int         3
  0000000000000039: CC                 int         3
  000000000000003A: CC                 int         3
  000000000000003B: CC                 int         3
  000000000000003C: CC                 int         3
  000000000000003D: CC                 int         3
  000000000000003E: CC                 int         3
  000000000000003F: CC                 int         3
?multiply@math@@YAHHH@Z::<!math> (int __cdecl math::multiply(int,int)):
  0000000000000040: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000044: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  0000000000000048: 8B 44 24 08        mov         eax,dword ptr [rsp+8]
  000000000000004C: 0F AF 44 24 10     imul        eax,dword ptr [rsp+10h]
  0000000000000051: C3                 ret
  0000000000000052: CC                 int         3
  0000000000000053: CC                 int         3
  0000000000000054: CC                 int         3
  0000000000000055: CC                 int         3
  0000000000000056: CC                 int         3
  0000000000000057: CC                 int         3
  0000000000000058: CC                 int         3
  0000000000000059: CC                 int         3
  000000000000005A: CC                 int         3
  000000000000005B: CC                 int         3
  000000000000005C: CC                 int         3
  000000000000005D: CC                 int         3
  000000000000005E: CC                 int         3
  000000000000005F: CC                 int         3
?divide@math@@YANNN@Z::<!math> (double __cdecl math::divide(double,double)):
  0000000000000060: F2 0F 11 4C 24 10  movsd       mmword ptr [rsp+10h],xmm1
  0000000000000066: F2 0F 11 44 24 08  movsd       mmword ptr [rsp+8],xmm0
  000000000000006C: 48 83 EC 48        sub         rsp,48h
  0000000000000070: F2 0F 10 44 24 58  movsd       xmm0,mmword ptr [rsp+58h]
  0000000000000076: 66 0F 2E 05 00 00  ucomisd     xmm0,mmword ptr [__real@0000000000000000]
                    00 00
  000000000000007E: 7A 24              jp          00000000000000A4
  0000000000000080: 75 22              jne         00000000000000A4
  0000000000000082: 48 8D 15 00 00 00  lea         rdx,[$SG31446]
                    00
  0000000000000089: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000008E: E8 00 00 00 00     call        ??0invalid_argument@std@@QEAA@PEBD@Z
  0000000000000093: 48 8D 15 00 00 00  lea         rdx,[_TI3?AVinvalid_argument@std@@]
                    00
  000000000000009A: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000009F: E8 00 00 00 00     call        _CxxThrowException
  00000000000000A4: F2 0F 10 44 24 50  movsd       xmm0,mmword ptr [rsp+50h]
  00000000000000AA: F2 0F 5E 44 24 58  divsd       xmm0,mmword ptr [rsp+58h]
  00000000000000B0: 48 83 C4 48        add         rsp,48h
  00000000000000B4: C3                 ret
  00000000000000B5: CC                 int         3
  00000000000000B6: CC                 int         3
  00000000000000B7: CC                 int         3
  00000000000000B8: CC                 int         3
  00000000000000B9: CC                 int         3
  00000000000000BA: CC                 int         3
  00000000000000BB: CC                 int         3
  00000000000000BC: CC                 int         3
  00000000000000BD: CC                 int         3
  00000000000000BE: CC                 int         3
  00000000000000BF: CC                 int         3
?power@math@@YANNH@Z::<!math> (double __cdecl math::power(double,int)):
  00000000000000C0: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  00000000000000C4: F2 0F 11 44 24 08  movsd       mmword ptr [rsp+8],xmm0
  00000000000000CA: 48 83 EC 38        sub         rsp,38h
  00000000000000CE: 83 7C 24 48 00     cmp         dword ptr [rsp+48h],0
  00000000000000D3: 75 0A              jne         00000000000000DF
  00000000000000D5: F2 0F 10 05 00 00  movsd       xmm0,mmword ptr [__real@3ff0000000000000]
                    00 00
  00000000000000DD: EB 71              jmp         0000000000000150
  00000000000000DF: 83 7C 24 48 00     cmp         dword ptr [rsp+48h],0
  00000000000000E4: 7D 24              jge         000000000000010A
  00000000000000E6: 8B 44 24 48        mov         eax,dword ptr [rsp+48h]
  00000000000000EA: F7 D8              neg         eax
  00000000000000EC: 8B D0              mov         edx,eax
  00000000000000EE: F2 0F 10 44 24 40  movsd       xmm0,mmword ptr [rsp+40h]
  00000000000000F4: E8 00 00 00 00     call        ?power@math@@YANNH@Z::<!math>
  00000000000000F9: F2 0F 10 0D 00 00  movsd       xmm1,mmword ptr [__real@3ff0000000000000]
                    00 00
  0000000000000101: F2 0F 5E C8        divsd       xmm1,xmm0
  0000000000000105: 0F 28 C1           movaps      xmm0,xmm1
  0000000000000108: EB 46              jmp         0000000000000150
  000000000000010A: F2 0F 10 05 00 00  movsd       xmm0,mmword ptr [__real@3ff0000000000000]
                    00 00
  0000000000000112: F2 0F 11 44 24 28  movsd       mmword ptr [rsp+28h],xmm0
  0000000000000118: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000120: EB 0A              jmp         000000000000012C
  0000000000000122: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000126: FF C0              inc         eax
  0000000000000128: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000012C: 8B 44 24 48        mov         eax,dword ptr [rsp+48h]
  0000000000000130: 39 44 24 20        cmp         dword ptr [rsp+20h],eax
  0000000000000134: 7D 14              jge         000000000000014A
  0000000000000136: F2 0F 10 44 24 28  movsd       xmm0,mmword ptr [rsp+28h]
  000000000000013C: F2 0F 59 44 24 40  mulsd       xmm0,mmword ptr [rsp+40h]
  0000000000000142: F2 0F 11 44 24 28  movsd       mmword ptr [rsp+28h],xmm0
  0000000000000148: EB D8              jmp         0000000000000122
  000000000000014A: F2 0F 10 44 24 28  movsd       xmm0,mmword ptr [rsp+28h]
  0000000000000150: 48 83 C4 38        add         rsp,38h
  0000000000000154: C3                 ret
  0000000000000155: CC                 int         3
  0000000000000156: CC                 int         3
  0000000000000157: CC                 int         3
  0000000000000158: CC                 int         3
  0000000000000159: CC                 int         3
  000000000000015A: CC                 int         3
  000000000000015B: CC                 int         3
  000000000000015C: CC                 int         3
  000000000000015D: CC                 int         3
  000000000000015E: CC                 int         3
  000000000000015F: CC                 int         3
?factorial@math@@YAHH@Z::<!math> (int __cdecl math::factorial(int)):
  0000000000000160: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  0000000000000164: 48 83 EC 48        sub         rsp,48h
  0000000000000168: 83 7C 24 50 00     cmp         dword ptr [rsp+50h],0
  000000000000016D: 7D 22              jge         0000000000000191
  000000000000016F: 48 8D 15 00 00 00  lea         rdx,[$SG31476]
                    00
  0000000000000176: 48 8D 4C 24 28     lea         rcx,[rsp+28h]
  000000000000017B: E8 00 00 00 00     call        ??0invalid_argument@std@@QEAA@PEBD@Z
  0000000000000180: 48 8D 15 00 00 00  lea         rdx,[_TI3?AVinvalid_argument@std@@]
                    00
  0000000000000187: 48 8D 4C 24 28     lea         rcx,[rsp+28h]
  000000000000018C: E8 00 00 00 00     call        _CxxThrowException
  0000000000000191: 83 7C 24 50 00     cmp         dword ptr [rsp+50h],0
  0000000000000196: 74 07              je          000000000000019F
  0000000000000198: 83 7C 24 50 01     cmp         dword ptr [rsp+50h],1
  000000000000019D: 75 07              jne         00000000000001A6
  000000000000019F: B8 01 00 00 00     mov         eax,1
  00000000000001A4: EB 39              jmp         00000000000001DF
  00000000000001A6: C7 44 24 24 01 00  mov         dword ptr [rsp+24h],1
                    00 00
  00000000000001AE: C7 44 24 20 02 00  mov         dword ptr [rsp+20h],2
                    00 00
  00000000000001B6: EB 0A              jmp         00000000000001C2
  00000000000001B8: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000001BC: FF C0              inc         eax
  00000000000001BE: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000001C2: 8B 44 24 50        mov         eax,dword ptr [rsp+50h]
  00000000000001C6: 39 44 24 20        cmp         dword ptr [rsp+20h],eax
  00000000000001CA: 7F 0F              jg          00000000000001DB
  00000000000001CC: 8B 44 24 24        mov         eax,dword ptr [rsp+24h]
  00000000000001D0: 0F AF 44 24 20     imul        eax,dword ptr [rsp+20h]
  00000000000001D5: 89 44 24 24        mov         dword ptr [rsp+24h],eax
  00000000000001D9: EB DD              jmp         00000000000001B8
  00000000000001DB: 8B 44 24 24        mov         eax,dword ptr [rsp+24h]
  00000000000001DF: 48 83 C4 48        add         rsp,48h
  00000000000001E3: C3                 ret
  00000000000001E4: CC                 int         3
  00000000000001E5: CC                 int         3
  00000000000001E6: CC                 int         3
  00000000000001E7: CC                 int         3
  00000000000001E8: CC                 int         3
  00000000000001E9: CC                 int         3
  00000000000001EA: CC                 int         3
  00000000000001EB: CC                 int         3
  00000000000001EC: CC                 int         3
  00000000000001ED: CC                 int         3
  00000000000001EE: CC                 int         3
  00000000000001EF: CC                 int         3
?is_prime@math@@YA_NH@Z::<!math> (bool __cdecl math::is_prime(int)):
  00000000000001F0: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  00000000000001F4: 48 83 EC 18        sub         rsp,18h
  00000000000001F8: 83 7C 24 20 01     cmp         dword ptr [rsp+20h],1
  00000000000001FD: 7F 07              jg          0000000000000206
  00000000000001FF: 32 C0              xor         al,al
  0000000000000201: E9 81 00 00 00     jmp         0000000000000287
  0000000000000206: 83 7C 24 20 03     cmp         dword ptr [rsp+20h],3
  000000000000020B: 7F 04              jg          0000000000000211
  000000000000020D: B0 01              mov         al,1
  000000000000020F: EB 76              jmp         0000000000000287
  0000000000000211: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000215: 99                 cdq
  0000000000000216: 83 E0 01           and         eax,1
  0000000000000219: 33 C2              xor         eax,edx
  000000000000021B: 2B C2              sub         eax,edx
  000000000000021D: 85 C0              test        eax,eax
  000000000000021F: 74 12              je          0000000000000233
  0000000000000221: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000225: 99                 cdq
  0000000000000226: B9 03 00 00 00     mov         ecx,3
  000000000000022B: F7 F9              idiv        eax,ecx
  000000000000022D: 8B C2              mov         eax,edx
  000000000000022F: 85 C0              test        eax,eax
  0000000000000231: 75 04              jne         0000000000000237
  0000000000000233: 32 C0              xor         al,al
  0000000000000235: EB 50              jmp         0000000000000287
  0000000000000237: C7 04 24 05 00 00  mov         dword ptr [rsp],5
                    00
  000000000000023E: EB 09              jmp         0000000000000249
  0000000000000240: 8B 04 24           mov         eax,dword ptr [rsp]
  0000000000000243: 83 C0 06           add         eax,6
  0000000000000246: 89 04 24           mov         dword ptr [rsp],eax
  0000000000000249: 8B 04 24           mov         eax,dword ptr [rsp]
  000000000000024C: 0F AF 04 24        imul        eax,dword ptr [rsp]
  0000000000000250: 3B 44 24 20        cmp         eax,dword ptr [rsp+20h]
  0000000000000254: 7F 2F              jg          0000000000000285
  0000000000000256: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000025A: 99                 cdq
  000000000000025B: F7 3C 24           idiv        eax,dword ptr [rsp]
  000000000000025E: 8B C2              mov         eax,edx
  0000000000000260: 85 C0              test        eax,eax
  0000000000000262: 74 1B              je          000000000000027F
  0000000000000264: 8B 04 24           mov         eax,dword ptr [rsp]
  0000000000000267: 83 C0 02           add         eax,2
  000000000000026A: 89 44 24 04        mov         dword ptr [rsp+4],eax
  000000000000026E: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000272: 99                 cdq
  0000000000000273: 8B 4C 24 04        mov         ecx,dword ptr [rsp+4]
  0000000000000277: F7 F9              idiv        eax,ecx
  0000000000000279: 8B C2              mov         eax,edx
  000000000000027B: 85 C0              test        eax,eax
  000000000000027D: 75 04              jne         0000000000000283
  000000000000027F: 32 C0              xor         al,al
  0000000000000281: EB 04              jmp         0000000000000287
  0000000000000283: EB BB              jmp         0000000000000240
  0000000000000285: B0 01              mov         al,1
  0000000000000287: 48 83 C4 18        add         rsp,18h
  000000000000028B: C3                 ret

??0exception@std@@QEAA@AEBV01@@Z (public: __cdecl std::exception::exception(class std::exception const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 57                 push        rdi
  000000000000000B: 48 83 EC 20        sub         rsp,20h
  000000000000000F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000014: 48 8D 0D 00 00 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  000000000000001B: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000023: 48 83 C0 08        add         rax,8
  0000000000000027: 48 8B F8           mov         rdi,rax
  000000000000002A: 33 C0              xor         eax,eax
  000000000000002C: B9 10 00 00 00     mov         ecx,10h
  0000000000000031: F3 AA              rep stos    byte ptr [rdi]
  0000000000000033: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000038: 48 83 C0 08        add         rax,8
  000000000000003C: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000041: 48 83 C1 08        add         rcx,8
  0000000000000045: 48 8B D0           mov         rdx,rax
  0000000000000048: E8 00 00 00 00     call        __std_exception_copy
  000000000000004D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000052: 48 83 C4 20        add         rsp,20h
  0000000000000056: 5F                 pop         rdi
  0000000000000057: C3                 ret

??0exception@std@@QEAA@QEBD@Z (public: __cdecl std::exception::exception(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 57                 push        rdi
  000000000000000B: 48 83 EC 30        sub         rsp,30h
  000000000000000F: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000014: 48 8D 0D 00 00 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  000000000000001B: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000023: 48 83 C0 08        add         rax,8
  0000000000000027: 48 8B F8           mov         rdi,rax
  000000000000002A: 33 C0              xor         eax,eax
  000000000000002C: B9 10 00 00 00     mov         ecx,10h
  0000000000000031: F3 AA              rep stos    byte ptr [rdi]
  0000000000000033: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000038: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003D: C6 44 24 28 01     mov         byte ptr [rsp+28h],1
  0000000000000042: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000047: 48 83 C0 08        add         rax,8
  000000000000004B: 48 8B D0           mov         rdx,rax
  000000000000004E: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000053: E8 00 00 00 00     call        __std_exception_copy
  0000000000000058: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000005D: 48 83 C4 30        add         rsp,30h
  0000000000000061: 5F                 pop         rdi
  0000000000000062: C3                 ret

??0invalid_argument@std@@QEAA@AEBV01@@Z (public: __cdecl std::invalid_argument::invalid_argument(class std::invalid_argument const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0logic_error@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7invalid_argument@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0invalid_argument@std@@QEAA@PEBD@Z (public: __cdecl std::invalid_argument::invalid_argument(char const *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0logic_error@std@@QEAA@PEBD@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7invalid_argument@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0logic_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::logic_error::logic_error(class std::logic_error const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0exception@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7logic_error@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0logic_error@std@@QEAA@PEBD@Z (public: __cdecl std::logic_error::logic_error(char const *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0exception@std@@QEAA@QEBD@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7logic_error@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??1exception@std@@UEAA@XZ (public: virtual __cdecl std::exception::~exception(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8D 0D 00 00 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  0000000000000015: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000018: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001D: 48 83 C0 08        add         rax,8
  0000000000000021: 48 8B C8           mov         rcx,rax
  0000000000000024: E8 00 00 00 00     call        __std_exception_destroy
  0000000000000029: 48 83 C4 28        add         rsp,28h
  000000000000002D: C3                 ret

??1invalid_argument@std@@UEAA@XZ (public: virtual __cdecl std::invalid_argument::~invalid_argument(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1logic_error@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??1logic_error@std@@UEAA@XZ (public: virtual __cdecl std::logic_error::~logic_error(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1exception@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??_Gexception@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::exception::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1exception@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 18 00 00 00     mov         edx,18h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??_Ginvalid_argument@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::invalid_argument::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1invalid_argument@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 18 00 00 00     mov         edx,18h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??_Glogic_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::logic_error::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1logic_error@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 18 00 00 00     mov         edx,18h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

?what@exception@std@@UEBAPEBDXZ (public: virtual char const * __cdecl std::exception::what(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 83 78 08 00     cmp         qword ptr [rax+8],0
  0000000000000013: 74 0F              je          0000000000000024
  0000000000000015: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000001A: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000001E: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000022: EB 0B              jmp         000000000000002F
  0000000000000024: 48 8D 05 00 00 00  lea         rax,[??_C@_0BC@EOODALEL@Unknown?5exception@]
                    00
  000000000000002B: 48 89 04 24        mov         qword ptr [rsp],rax
  000000000000002F: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000033: 48 83 C4 18        add         rsp,18h
  0000000000000037: C3                 ret

  Summary

         248 .chks64
          75 .data$r
          80 .debug$S
         13C .drectve
          1B .modmeta
          CC .pdata
          AA .rdata
         150 .rdata$r
         566 .text$mn
          88 .xdata
          A4 .xdata$x
