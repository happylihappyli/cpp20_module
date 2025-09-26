Microsoft (R) COFF/PE Dumper Version 14.39.33522.0
Copyright (C) Microsoft Corporation.  All rights reserved.


Dump of file obj\main.obj

File Type: COFF OBJECT

main:
  0000000000000000: 48 81 EC B8 03 00  sub         rsp,3B8h
                    00
  0000000000000007: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000000000000E: 48 33 C4           xor         rax,rsp
  0000000000000011: 48 89 84 24 A0 03  mov         qword ptr [rsp+3A0h],rax
                    00 00
  0000000000000019: 48 8D 84 24 08 01  lea         rax,[rsp+108h]
                    00 00
  0000000000000021: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000026: 48 8D 15 00 00 00  lea         rdx,[$SG3693]
                    00
  000000000000002D: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000032: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  0000000000000037: 48 8B C8           mov         rcx,rax
  000000000000003A: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  000000000000003F: 90                 nop
  0000000000000040: 48 8D 84 24 28 01  lea         rax,[rsp+128h]
                    00 00
  0000000000000048: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  000000000000004D: 48 8D 15 00 00 00  lea         rdx,[$SG3695]
                    00
  0000000000000054: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000059: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  000000000000005E: 48 8B C8           mov         rcx,rax
  0000000000000061: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  0000000000000066: 48 8D 84 24 48 01  lea         rax,[rsp+148h]
                    00 00
  000000000000006E: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  0000000000000073: BA 05 00 00 00     mov         edx,5
  0000000000000078: B9 0A 00 00 00     mov         ecx,0Ah
  000000000000007D: E8 00 00 00 00     call        ?add@math@@YAHHH@Z::<!math>
  0000000000000082: 8B D0              mov         edx,eax
  0000000000000084: 48 8D 8C 24 C8 02  lea         rcx,[rsp+2C8h]
                    00 00
  000000000000008C: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@H@Z
  0000000000000091: 4C 8B C0           mov         r8,rax
  0000000000000094: 48 8D 15 00 00 00  lea         rdx,[$SG3696]
                    00
  000000000000009B: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000A0: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z
  00000000000000A5: 48 8B C8           mov         rcx,rax
  00000000000000A8: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  00000000000000AD: 48 8D 8C 24 C8 02  lea         rcx,[rsp+2C8h]
                    00 00
  00000000000000B5: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  00000000000000BA: 48 8D 84 24 68 01  lea         rax,[rsp+168h]
                    00 00
  00000000000000C2: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  00000000000000C7: BA 05 00 00 00     mov         edx,5
  00000000000000CC: B9 0A 00 00 00     mov         ecx,0Ah
  00000000000000D1: E8 00 00 00 00     call        ?subtract@math@@YAHHH@Z::<!math>
  00000000000000D6: 8B D0              mov         edx,eax
  00000000000000D8: 48 8D 8C 24 08 03  lea         rcx,[rsp+308h]
                    00 00
  00000000000000E0: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@H@Z
  00000000000000E5: 4C 8B C0           mov         r8,rax
  00000000000000E8: 48 8D 15 00 00 00  lea         rdx,[$SG3697]
                    00
  00000000000000EF: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000000F4: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z
  00000000000000F9: 48 8B C8           mov         rcx,rax
  00000000000000FC: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  0000000000000101: 48 8D 8C 24 08 03  lea         rcx,[rsp+308h]
                    00 00
  0000000000000109: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  000000000000010E: 48 8D 84 24 88 01  lea         rax,[rsp+188h]
                    00 00
  0000000000000116: 48 89 44 24 60     mov         qword ptr [rsp+60h],rax
  000000000000011B: BA 05 00 00 00     mov         edx,5
  0000000000000120: B9 0A 00 00 00     mov         ecx,0Ah
  0000000000000125: E8 00 00 00 00     call        ?multiply@math@@YAHHH@Z::<!math>
  000000000000012A: 8B D0              mov         edx,eax
  000000000000012C: 48 8D 8C 24 28 03  lea         rcx,[rsp+328h]
                    00 00
  0000000000000134: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@H@Z
  0000000000000139: 4C 8B C0           mov         r8,rax
  000000000000013C: 48 8D 15 00 00 00  lea         rdx,[$SG3698]
                    00
  0000000000000143: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000148: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z
  000000000000014D: 48 8B C8           mov         rcx,rax
  0000000000000150: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  0000000000000155: 48 8D 8C 24 28 03  lea         rcx,[rsp+328h]
                    00 00
  000000000000015D: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000162: 90                 nop
  0000000000000163: 48 8D 84 24 A8 01  lea         rax,[rsp+1A8h]
                    00 00
  000000000000016B: 48 89 44 24 68     mov         qword ptr [rsp+68h],rax
  0000000000000170: F2 0F 10 0D 00 00  movsd       xmm1,mmword ptr [__real@4014000000000000]
                    00 00
  0000000000000178: F2 0F 10 05 00 00  movsd       xmm0,mmword ptr [__real@4024000000000000]
                    00 00
  0000000000000180: E8 00 00 00 00     call        ?divide@math@@YANNN@Z::<!math>
  0000000000000185: 0F 28 C8           movaps      xmm1,xmm0
  0000000000000188: 48 8D 8C 24 48 03  lea         rcx,[rsp+348h]
                    00 00
  0000000000000190: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@N@Z
  0000000000000195: 4C 8B C0           mov         r8,rax
  0000000000000198: 48 8D 15 00 00 00  lea         rdx,[$SG3700]
                    00
  000000000000019F: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  00000000000001A4: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z
  00000000000001A9: 48 8B C8           mov         rcx,rax
  00000000000001AC: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  00000000000001B1: 48 8D 8C 24 48 03  lea         rcx,[rsp+348h]
                    00 00
  00000000000001B9: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  00000000000001BE: 90                 nop
  00000000000001BF: EB 00              jmp         $LN18
$LN18:
  00000000000001C1: 48 8D 84 24 E8 00  lea         rax,[rsp+0E8h]
                    00 00
  00000000000001C9: 48 89 84 24 80 00  mov         qword ptr [rsp+80h],rax
                    00 00
  00000000000001D1: 48 8D 15 00 00 00  lea         rdx,[$SG3705]
                    00
  00000000000001D8: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  00000000000001E0: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  00000000000001E5: 48 8B C8           mov         rcx,rax
  00000000000001E8: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  00000000000001ED: 48 8D 84 24 E8 01  lea         rax,[rsp+1E8h]
                    00 00
  00000000000001F5: 48 89 84 24 88 00  mov         qword ptr [rsp+88h],rax
                    00 00
  00000000000001FD: B9 05 00 00 00     mov         ecx,5
  0000000000000202: E8 00 00 00 00     call        ?factorial@math@@YAHH@Z::<!math>
  0000000000000207: 8B D0              mov         edx,eax
  0000000000000209: 48 8D 8C 24 68 02  lea         rcx,[rsp+268h]
                    00 00
  0000000000000211: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@H@Z
  0000000000000216: 4C 8B C0           mov         r8,rax
  0000000000000219: 48 8D 15 00 00 00  lea         rdx,[$SG3706]
                    00
  0000000000000220: 48 8B 8C 24 88 00  mov         rcx,qword ptr [rsp+88h]
                    00 00
  0000000000000228: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z
  000000000000022D: 48 8B C8           mov         rcx,rax
  0000000000000230: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  0000000000000235: 48 8D 8C 24 68 02  lea         rcx,[rsp+268h]
                    00 00
  000000000000023D: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000242: 90                 nop
  0000000000000243: EB 00              jmp         $LN20
$LN20:
  0000000000000245: C7 84 24 88 03 00  mov         dword ptr [rsp+388h],2
                    00 02 00 00 00
  0000000000000250: C7 84 24 8C 03 00  mov         dword ptr [rsp+38Ch],3
                    00 03 00 00 00
  000000000000025B: C7 84 24 90 03 00  mov         dword ptr [rsp+390h],4
                    00 04 00 00 00
  0000000000000266: C7 84 24 94 03 00  mov         dword ptr [rsp+394h],11h
                    00 11 00 00 00
  0000000000000271: C7 84 24 98 03 00  mov         dword ptr [rsp+398h],19h
                    00 19 00 00 00
  000000000000027C: C7 84 24 9C 03 00  mov         dword ptr [rsp+39Ch],1Dh
                    00 1D 00 00 00
  0000000000000287: 48 8D 84 24 88 03  lea         rax,[rsp+388h]
                    00 00
  000000000000028F: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000294: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000299: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000029E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000002A3: 48 83 C0 18        add         rax,18h
  00000000000002A7: 48 89 84 24 A0 00  mov         qword ptr [rsp+0A0h],rax
                    00 00
  00000000000002AF: EB 0E              jmp         00000000000002BF
  00000000000002B1: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000002B6: 48 83 C0 04        add         rax,4
  00000000000002BA: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  00000000000002BF: 48 8B 84 24 A0 00  mov         rax,qword ptr [rsp+0A0h]
                    00 00
  00000000000002C7: 48 39 44 24 28     cmp         qword ptr [rsp+28h],rax
  00000000000002CC: 0F 84 85 00 00 00  je          0000000000000357
  00000000000002D2: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000002D7: 8B 00              mov         eax,dword ptr [rax]
  00000000000002D9: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000002DD: 48 8D 84 24 28 02  lea         rax,[rsp+228h]
                    00 00
  00000000000002E5: 48 89 84 24 A8 00  mov         qword ptr [rsp+0A8h],rax
                    00 00
  00000000000002ED: 8B 4C 24 20        mov         ecx,dword ptr [rsp+20h]
  00000000000002F1: E8 00 00 00 00     call        ?is_prime@math@@YA_NH@Z::<!math>
  00000000000002F6: 0F B6 C0           movzx       eax,al
  00000000000002F9: 85 C0              test        eax,eax
  00000000000002FB: 74 0E              je          000000000000030B
  00000000000002FD: 48 8D 05 00 00 00  lea         rax,[$SG3708]
                    00
  0000000000000304: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000309: EB 0C              jmp         0000000000000317
  000000000000030B: 48 8D 05 00 00 00  lea         rax,[$SG3709]
                    00
  0000000000000312: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000317: 8B 54 24 20        mov         edx,dword ptr [rsp+20h]
  000000000000031B: 48 8D 8C 24 A8 02  lea         rcx,[rsp+2A8h]
                    00 00
  0000000000000323: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@H@Z
  0000000000000328: 4C 8B 44 24 38     mov         r8,qword ptr [rsp+38h]
  000000000000032D: 48 8B D0           mov         rdx,rax
  0000000000000330: 48 8B 8C 24 A8 00  mov         rcx,qword ptr [rsp+0A8h]
                    00 00
  0000000000000338: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z
  000000000000033D: 48 8B C8           mov         rcx,rax
  0000000000000340: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  0000000000000345: 48 8D 8C 24 A8 02  lea         rcx,[rsp+2A8h]
                    00 00
  000000000000034D: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000352: E9 5A FF FF FF     jmp         00000000000002B1
  0000000000000357: 48 8D 84 24 48 02  lea         rax,[rsp+248h]
                    00 00
  000000000000035F: 48 89 84 24 B0 00  mov         qword ptr [rsp+0B0h],rax
                    00 00
  0000000000000367: 48 8D 15 00 00 00  lea         rdx,[$SG3710]
                    00
  000000000000036E: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000376: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  000000000000037B: 48 8B C8           mov         rcx,rax
  000000000000037E: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  0000000000000383: 90                 nop
  0000000000000384: EB 00              jmp         $LN22
$LN22:
  0000000000000386: 33 C0              xor         eax,eax
  0000000000000388: 48 8B 8C 24 A0 03  mov         rcx,qword ptr [rsp+3A0h]
                    00 00
  0000000000000390: 48 33 CC           xor         rcx,rsp
  0000000000000393: E8 00 00 00 00     call        __security_check_cookie
  0000000000000398: 48 81 C4 B8 03 00  add         rsp,3B8h
                    00
  000000000000039F: C3                 ret

main$catch$0:
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 55                 push        rbp
  0000000000000006: 48 83 EC 20        sub         rsp,20h
  000000000000000A: 48 8B EA           mov         rbp,rdx
__catch$main$0:
  000000000000000D: 48 8D 85 C8 01 00  lea         rax,[rbp+1C8h]
                    00
  0000000000000014: 48 89 45 78        mov         qword ptr [rbp+78h],rax
  0000000000000018: 48 8B 45 70        mov         rax,qword ptr [rbp+70h]
  000000000000001C: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001F: 48 8B 4D 70        mov         rcx,qword ptr [rbp+70h]
  0000000000000023: FF 50 08           call        qword ptr [rax+8]
  0000000000000026: 48 8B D0           mov         rdx,rax
  0000000000000029: 48 8D 8D 68 03 00  lea         rcx,[rbp+368h]
                    00
  0000000000000030: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@PEBD@Z
  0000000000000035: 4C 8B C0           mov         r8,rax
  0000000000000038: 48 8D 15 00 00 00  lea         rdx,[$SG3703]
                    00
  000000000000003F: 48 8B 4D 78        mov         rcx,qword ptr [rbp+78h]
  0000000000000043: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z
  0000000000000048: 48 8B C8           mov         rcx,rax
  000000000000004B: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  0000000000000050: 48 8D 8D 68 03 00  lea         rcx,[rbp+368h]
                    00
  0000000000000057: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  000000000000005C: 90                 nop
  000000000000005D: 48 8D 05 00 00 00  lea         rax,[$LN18]
                    00
  0000000000000064: 48 83 C4 20        add         rsp,20h
  0000000000000068: 5D                 pop         rbp
  0000000000000069: C3                 ret
  000000000000006A: CC                 int         3
main$catch$1:
  000000000000006B: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000070: 55                 push        rbp
  0000000000000071: 48 83 EC 20        sub         rsp,20h
  0000000000000075: 48 8B EA           mov         rbp,rdx
__catch$main$2:
  0000000000000078: 48 8D 85 08 02 00  lea         rax,[rbp+208h]
                    00
  000000000000007F: 48 89 85 98 00 00  mov         qword ptr [rbp+98h],rax
                    00
  0000000000000086: 48 8B 85 90 00 00  mov         rax,qword ptr [rbp+90h]
                    00
  000000000000008D: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000090: 48 8B 8D 90 00 00  mov         rcx,qword ptr [rbp+90h]
                    00
  0000000000000097: FF 50 08           call        qword ptr [rax+8]
  000000000000009A: 48 8B D0           mov         rdx,rax
  000000000000009D: 48 8D 8D 88 02 00  lea         rcx,[rbp+288h]
                    00
  00000000000000A4: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@PEBD@Z
  00000000000000A9: 4C 8B C0           mov         r8,rax
  00000000000000AC: 48 8D 15 00 00 00  lea         rdx,[$SG3707]
                    00
  00000000000000B3: 48 8B 8D 98 00 00  mov         rcx,qword ptr [rbp+98h]
                    00
  00000000000000BA: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z
  00000000000000BF: 48 8B C8           mov         rcx,rax
  00000000000000C2: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  00000000000000C7: 48 8D 8D 88 02 00  lea         rcx,[rbp+288h]
                    00
  00000000000000CE: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  00000000000000D3: 90                 nop
  00000000000000D4: 48 8D 05 00 00 00  lea         rax,[$LN20]
                    00
  00000000000000DB: 48 83 C4 20        add         rsp,20h
  00000000000000DF: 5D                 pop         rbp
  00000000000000E0: C3                 ret
  00000000000000E1: CC                 int         3
main$catch$2:
  00000000000000E2: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  00000000000000E7: 55                 push        rbp
  00000000000000E8: 48 83 EC 20        sub         rsp,20h
  00000000000000EC: 48 8B EA           mov         rbp,rdx
__catch$main$4:
  00000000000000EF: 48 8D 85 C8 00 00  lea         rax,[rbp+0C8h]
                    00
  00000000000000F6: 48 89 85 C0 00 00  mov         qword ptr [rbp+0C0h],rax
                    00
  00000000000000FD: 48 8B 85 B8 00 00  mov         rax,qword ptr [rbp+0B8h]
                    00
  0000000000000104: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000107: 48 8B 8D B8 00 00  mov         rcx,qword ptr [rbp+0B8h]
                    00
  000000000000010E: FF 50 08           call        qword ptr [rax+8]
  0000000000000111: 48 8B D0           mov         rdx,rax
  0000000000000114: 48 8D 8D E8 02 00  lea         rcx,[rbp+2E8h]
                    00
  000000000000011B: E8 00 00 00 00     call        ?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@PEBD@Z
  0000000000000120: 4C 8B C0           mov         r8,rax
  0000000000000123: 48 8D 15 00 00 00  lea         rdx,[$SG3711]
                    00
  000000000000012A: 48 8B 8D C0 00 00  mov         rcx,qword ptr [rbp+0C0h]
                    00
  0000000000000131: E8 00 00 00 00     call        ??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z
  0000000000000136: 48 8B C8           mov         rcx,rax
  0000000000000139: E8 00 00 00 00     call        ?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
  000000000000013E: 48 8D 8D E8 02 00  lea         rcx,[rbp+2E8h]
                    00
  0000000000000145: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  000000000000014A: 90                 nop
  000000000000014B: 48 8D 05 00 00 00  lea         rax,[$LN22]
                    00
  0000000000000152: 48 83 C4 20        add         rsp,20h
  0000000000000156: 5D                 pop         rbp
  0000000000000157: C3                 ret
  0000000000000158: CC                 int         3

??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1><>(struct std::_Zero_then_variadic_args_t)):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??0?$allocator@D@std@@QEAA@XZ
  0000000000000017: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001C: 48 8B C8           mov         rcx,rax
  000000000000001F: E8 00 00 00 00     call        ??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000024: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000029: 48 83 C4 28        add         rsp,28h
  000000000000002D: C3                 ret

??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1><class std::allocator<char> >(struct std::_One_then_variadic_args_t,class std::allocator<char> &&)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 28        sub         rsp,28h
  0000000000000012: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000017: 48 8B C8           mov         rcx,rax
  000000000000001A: E8 00 00 00 00     call        ??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  000000000000001F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000024: 48 83 C4 28        add         rsp,28h
  0000000000000028: C3                 ret

??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::operator+<char,struct std::char_traits<char>,class std::allocator<char> >(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &&,char const * const)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000018: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000001D: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z
  0000000000000022: 48 8B D0           mov         rdx,rax
  0000000000000025: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002A: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z
  000000000000002F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000034: 48 83 C4 28        add         rsp,28h
  0000000000000038: C3                 ret

??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::operator+<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &&)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 4C 8B 44 24 38     mov         r8,qword ptr [rsp+38h]
  0000000000000018: 33 D2              xor         edx,edx
  000000000000001A: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001F: E8 00 00 00 00     call        ?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD@Z
  0000000000000024: 48 8B D0           mov         rdx,rax
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z (void * __cdecl std::_Allocate<16,struct std::_Default_allocate_traits,0>(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  000000000000000E: 0F B6 C0           movzx       eax,al
  0000000000000011: 85 C0              test        eax,eax
  0000000000000013: 75 17              jne         000000000000002C
  0000000000000015: 48 81 7C 24 30 00  cmp         qword ptr [rsp+30h],1000h
                    10 00 00
  000000000000001E: 72 0C              jb          000000000000002C
  0000000000000020: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000025: E8 00 00 00 00     call        ??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
  000000000000002A: EB 16              jmp         0000000000000042
  000000000000002C: 48 83 7C 24 30 00  cmp         qword ptr [rsp+30h],0
  0000000000000032: 74 0C              je          0000000000000040
  0000000000000034: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000039: E8 00 00 00 00     call        ?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z
  000000000000003E: EB 02              jmp         0000000000000042
  0000000000000040: 33 C0              xor         eax,eax
  0000000000000042: 48 83 C4 28        add         rsp,28h
  0000000000000046: C3                 ret

??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z (char * __cdecl std::_Allocate_at_least_helper<class std::allocator<char> >(class std::allocator<char> &,unsigned __int64 &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000013: 48 8B 10           mov         rdx,qword ptr [rax]
  0000000000000016: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001B: E8 00 00 00 00     call        ?allocate@?$allocator@D@std@@QEAAPEAD_K@Z
  0000000000000020: 48 83 C4 28        add         rsp,28h
  0000000000000024: C3                 ret

??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z (private: static char * __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Allocate_for_capacity<0>(class std::allocator<char> &,unsigned __int64 &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 48        sub         rsp,48h
  000000000000000E: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  0000000000000013: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000016: 48 FF C0           inc         rax
  0000000000000019: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000001E: 48 89 01           mov         qword ptr [rcx],rax
  0000000000000021: 48 8B 54 24 58     mov         rdx,qword ptr [rsp+58h]
  0000000000000026: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000002B: E8 00 00 00 00     call        ??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z
  0000000000000030: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000035: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  000000000000003A: 0F B6 C0           movzx       eax,al
  000000000000003D: 85 C0              test        eax,eax
  000000000000003F: 74 50              je          0000000000000091
  0000000000000041: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000046: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  000000000000004B: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000050: 48 C7 44 24 20 00  mov         qword ptr [rsp+20h],0
                    00 00 00
  0000000000000059: EB 0D              jmp         0000000000000068
  000000000000005B: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000060: 48 FF C0           inc         rax
  0000000000000063: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000068: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  000000000000006D: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000070: 48 39 44 24 20     cmp         qword ptr [rsp+20h],rax
  0000000000000075: 73 1A              jae         0000000000000091
  0000000000000077: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000007C: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000081: 48 03 C8           add         rcx,rax
  0000000000000084: 48 8B C1           mov         rax,rcx
  0000000000000087: 48 8B C8           mov         rcx,rax
  000000000000008A: E8 00 00 00 00     call        ??$construct_at@D$$V$0A@@std@@YAPEADQEAD@Z
  000000000000008F: EB CA              jmp         000000000000005B
  0000000000000091: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  0000000000000096: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000099: 48 FF C8           dec         rax
  000000000000009C: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000000A1: 48 89 01           mov         qword ptr [rcx],rax
  00000000000000A4: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000A9: 48 83 C4 48        add         rsp,48h
  00000000000000AD: C3                 ret

??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z (void * __cdecl std::_Allocate_manually_vector_aligned<struct std::_Default_allocate_traits>(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 48        sub         rsp,48h
  0000000000000009: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000000E: 48 83 C0 27        add         rax,27h
  0000000000000012: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000017: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000001C: 48 39 44 24 28     cmp         qword ptr [rsp+28h],rax
  0000000000000021: 77 05              ja          0000000000000028
  0000000000000023: E8 00 00 00 00     call        ?_Throw_bad_array_new_length@std@@YAXXZ
  0000000000000028: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000002D: E8 00 00 00 00     call        ?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z
  0000000000000032: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000037: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  000000000000003D: 74 02              je          0000000000000041
  000000000000003F: EB 0B              jmp         000000000000004C
  0000000000000041: E8 00 00 00 00     call        _invalid_parameter_noinfo_noreturn
  0000000000000046: 33 C0              xor         eax,eax
  0000000000000048: 85 C0              test        eax,eax
  000000000000004A: 75 F5              jne         0000000000000041
  000000000000004C: 33 C0              xor         eax,eax
  000000000000004E: 85 C0              test        eax,eax
  0000000000000050: 75 E5              jne         0000000000000037
  0000000000000052: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000057: 48 83 C0 27        add         rax,27h
  000000000000005B: 48 83 E0 E0        and         rax,0FFFFFFFFFFFFFFE0h
  000000000000005F: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000064: B8 08 00 00 00     mov         eax,8
  0000000000000069: 48 6B C0 FF        imul        rax,rax,0FFFFFFFFFFFFFFFFh
  000000000000006D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000072: 48 8B 54 24 20     mov         rdx,qword ptr [rsp+20h]
  0000000000000077: 48 89 14 01        mov         qword ptr [rcx+rax],rdx
  000000000000007B: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000080: 48 83 C4 48        add         rsp,48h
  0000000000000084: C3                 ret

??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct<1,char const *>(char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 58        sub         rsp,58h
  0000000000000013: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000018: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000001D: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000022: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000027: 48 39 44 24 70     cmp         qword ptr [rsp+70h],rax
  000000000000002C: 76 05              jbe         0000000000000033
  000000000000002E: E8 00 00 00 00     call        ?_Xlen_string@std@@YAXXZ
  0000000000000033: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000038: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  000000000000003D: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000042: 48 8D 05 00 00 00  lea         rax,[?_Fake_alloc@std@@3U_Fake_allocator@1@B]
                    00
  0000000000000049: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  000000000000004E: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  0000000000000053: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000058: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000005D: E8 00 00 00 00     call        ??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z
  0000000000000062: 48 83 7C 24 70 0F  cmp         qword ptr [rsp+70h],0Fh
  0000000000000068: 77 63              ja          00000000000000CD
  000000000000006A: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000006F: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000074: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000078: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000007D: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  0000000000000085: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000008A: 4C 8B 44 24 70     mov         r8,qword ptr [rsp+70h]
  000000000000008F: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  0000000000000094: 48 8B C8           mov         rcx,rax
  0000000000000097: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000009C: C6 44 24 21 00     mov         byte ptr [rsp+21h],0
  00000000000000A1: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000A6: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  00000000000000AB: 48 03 C8           add         rcx,rax
  00000000000000AE: 48 8B C1           mov         rax,rcx
  00000000000000B1: 48 8D 54 24 21     lea         rdx,[rsp+21h]
  00000000000000B6: 48 8B C8           mov         rcx,rax
  00000000000000B9: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000000BE: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  00000000000000C3: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  00000000000000C8: E9 AA 00 00 00     jmp         0000000000000177
  00000000000000CD: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000000D2: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  00000000000000D7: 4C 8B C0           mov         r8,rax
  00000000000000DA: BA 0F 00 00 00     mov         edx,0Fh
  00000000000000DF: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000E4: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
  00000000000000E9: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  00000000000000EE: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  00000000000000F3: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000F8: E8 00 00 00 00     call        ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
  00000000000000FD: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000102: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000107: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  000000000000010C: 48 8B C8           mov         rcx,rax
  000000000000010F: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
  0000000000000114: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000119: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000011E: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000122: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000127: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000012C: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  0000000000000130: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000135: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  000000000000013A: 4C 8B 44 24 70     mov         r8,qword ptr [rsp+70h]
  000000000000013F: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  0000000000000144: 48 8B C8           mov         rcx,rax
  0000000000000147: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000014C: C6 44 24 22 00     mov         byte ptr [rsp+22h],0
  0000000000000151: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000156: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  000000000000015B: 48 03 44 24 70     add         rax,qword ptr [rsp+70h]
  0000000000000160: 48 8D 54 24 22     lea         rdx,[rsp+22h]
  0000000000000165: 48 8B C8           mov         rcx,rax
  0000000000000168: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  000000000000016D: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000172: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  0000000000000177: 48 83 C4 58        add         rsp,58h
  000000000000017B: C3                 ret

??$_Construct_in_place@PEADAEAPEAD@std@@YAXAEAPEAD0@Z (void __cdecl std::_Construct_in_place<char *,char * &>(char * &,char * &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000013: 0F B6 C0           movzx       eax,al
  0000000000000016: 85 C0              test        eax,eax
  0000000000000018: 74 19              je          0000000000000033
  000000000000001A: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001F: E8 00 00 00 00     call        ??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z
  0000000000000024: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000029: 48 8B C8           mov         rcx,rax
  000000000000002C: E8 00 00 00 00     call        ??$construct_at@PEADAEAPEAD$0A@@std@@YAPEAPEADQEAPEADAEAPEAD@Z
  0000000000000031: EB 2C              jmp         000000000000005F
  0000000000000033: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000038: E8 00 00 00 00     call        ??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z
  000000000000003D: 48 8B D0           mov         rdx,rax
  0000000000000040: B9 08 00 00 00     mov         ecx,8
  0000000000000045: E8 00 00 00 00     call        ??2@YAPEAX_KPEAX@Z
  000000000000004A: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000004F: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000054: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000059: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000005C: 48 89 08           mov         qword ptr [rax],rcx
  000000000000005F: 48 83 C4 38        add         rsp,38h
  0000000000000063: C3                 ret

??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z (void __cdecl std::_Construct_in_place<char *,char * const &>(char * &,char * const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000013: 0F B6 C0           movzx       eax,al
  0000000000000016: 85 C0              test        eax,eax
  0000000000000018: 74 19              je          0000000000000033
  000000000000001A: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001F: E8 00 00 00 00     call        ??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z
  0000000000000024: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000029: 48 8B C8           mov         rcx,rax
  000000000000002C: E8 00 00 00 00     call        ??$construct_at@PEADAEBQEAD$0A@@std@@YAPEAPEADQEAPEADAEBQEAD@Z
  0000000000000031: EB 2C              jmp         000000000000005F
  0000000000000033: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000038: E8 00 00 00 00     call        ??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z
  000000000000003D: 48 8B D0           mov         rdx,rax
  0000000000000040: B9 08 00 00 00     mov         ecx,8
  0000000000000045: E8 00 00 00 00     call        ??2@YAPEAX_KPEAX@Z
  000000000000004A: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000004F: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000054: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000059: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000005C: 48 89 08           mov         qword ptr [rax],rcx
  000000000000005F: 48 83 C4 38        add         rsp,38h
  0000000000000063: C3                 ret

??$_Convert_size@_K_K@std@@YA_K_K@Z (unsigned __int64 __cdecl std::_Convert_size<unsigned __int64,unsigned __int64>(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z (void __cdecl std::_Deallocate<16,0>(void *,unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000013: 0F B6 C0           movzx       eax,al
  0000000000000016: 85 C0              test        eax,eax
  0000000000000018: 74 0C              je          0000000000000026
  000000000000001A: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001F: E8 00 00 00 00     call        ??3@YAXPEAX@Z
  0000000000000024: EB 29              jmp         000000000000004F
  0000000000000026: 48 81 7C 24 38 00  cmp         qword ptr [rsp+38h],1000h
                    10 00 00
  000000000000002F: 72 0F              jb          0000000000000040
  0000000000000031: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  0000000000000036: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  000000000000003B: E8 00 00 00 00     call        ?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z
  0000000000000040: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000045: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000004A: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  000000000000004F: 48 83 C4 28        add         rsp,28h
  0000000000000053: C3                 ret

??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z (void __cdecl std::_Destroy_in_place<char *>(char * &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

??$_Get_size_of_n@$00@std@@YA_K_K@Z (unsigned __int64 __cdecl std::_Get_size_of_n<1>(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: C6 04 24 00        mov         byte ptr [rsp],0
  000000000000000D: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000012: 48 83 C4 18        add         rsp,18h
  0000000000000016: C3                 ret

??$_Reallocate_grow_by@V<lambda_1>@?1??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?1??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z (private: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Reallocate_grow_by<class `public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const,unsigned __int64)'::`2'::<lambda_1>,char const *,unsigned __int64>(unsigned __int64,class `public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const,unsigned __int64)'::`2'::<lambda_1>,char const *,unsigned __int64)):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 81 EC 88 00 00  sub         rsp,88h
                    00
  000000000000001B: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  0000000000000023: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000028: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002D: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  0000000000000031: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000036: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  000000000000003E: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000043: 48 2B 44 24 38     sub         rax,qword ptr [rsp+38h]
  0000000000000048: 48 3B 84 24 98 00  cmp         rax,qword ptr [rsp+98h]
                    00 00
  0000000000000050: 73 05              jae         0000000000000057
  0000000000000052: E8 00 00 00 00     call        ?_Xlen_string@std@@YAXXZ
  0000000000000057: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  000000000000005F: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000064: 48 03 C8           add         rcx,rax
  0000000000000067: 48 8B C1           mov         rax,rcx
  000000000000006A: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  000000000000006F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000074: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000078: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  000000000000007D: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000082: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  000000000000008A: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z
  000000000000008F: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  0000000000000094: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  000000000000009C: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  00000000000000A1: 48 89 44 24 68     mov         qword ptr [rsp+68h],rax
  00000000000000A6: 48 8D 54 24 50     lea         rdx,[rsp+50h]
  00000000000000AB: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  00000000000000B0: E8 00 00 00 00     call        ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
  00000000000000B5: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  00000000000000BA: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  00000000000000BF: E8 00 00 00 00     call        ?_Orphan_all@_Container_base0@std@@QEAAXXZ
  00000000000000C4: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000C9: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000CE: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  00000000000000D2: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000D7: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000DC: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  00000000000000E0: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000E5: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  00000000000000EA: 48 89 44 24 70     mov         qword ptr [rsp+70h],rax
  00000000000000EF: 48 83 7C 24 58 0F  cmp         qword ptr [rsp+58h],0Fh
  00000000000000F5: 76 6E              jbe         0000000000000165
  00000000000000F7: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000FC: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000000FF: 48 89 44 24 60     mov         qword ptr [rsp+60h],rax
  0000000000000104: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000109: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  000000000000010E: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000116: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  000000000000011B: 48 8B 8C 24 A8 00  mov         rcx,qword ptr [rsp+0A8h]
                    00 00
  0000000000000123: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000128: 4C 8B 4C 24 38     mov         r9,qword ptr [rsp+38h]
  000000000000012D: 4C 8B C0           mov         r8,rax
  0000000000000130: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000135: 48 8D 8C 24 A0 00  lea         rcx,[rsp+0A0h]
                    00 00
  000000000000013D: E8 00 00 00 00     call        ??R<lambda_1>@?1??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA@QEAD0101@Z
  0000000000000142: 4C 8B 44 24 58     mov         r8,qword ptr [rsp+58h]
  0000000000000147: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  000000000000014C: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  0000000000000151: E8 00 00 00 00     call        ?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z
  0000000000000156: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000015B: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000160: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000163: EB 4B              jmp         00000000000001B0
  0000000000000165: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000016A: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000172: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000000000177: 48 8B 8C 24 A8 00  mov         rcx,qword ptr [rsp+0A8h]
                    00 00
  000000000000017F: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000184: 4C 8B 4C 24 38     mov         r9,qword ptr [rsp+38h]
  0000000000000189: 4C 8B C0           mov         r8,rax
  000000000000018C: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000191: 48 8D 8C 24 A0 00  lea         rcx,[rsp+0A0h]
                    00 00
  0000000000000199: E8 00 00 00 00     call        ??R<lambda_1>@?1??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA@QEAD0101@Z
  000000000000019E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000001A3: 48 8D 54 24 40     lea         rdx,[rsp+40h]
  00000000000001A8: 48 8B C8           mov         rcx,rax
  00000000000001AB: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
  00000000000001B0: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  00000000000001B8: 48 81 C4 88 00 00  add         rsp,88h
                    00
  00000000000001BF: C3                 ret

??$_Reallocate_grow_by@V<lambda_1>@?1??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KQEBD0@Z@_KPEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?1??insert@01@QEAAAEAV01@0QEBD0@Z@_KPEBD3@Z (private: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Reallocate_grow_by<class `public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::insert(unsigned __int64,char const * const,unsigned __int64)'::`2'::<lambda_1>,unsigned __int64,char const *,unsigned __int64>(unsigned __int64,class `public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::insert(unsigned __int64,char const * const,unsigned __int64)'::`2'::<lambda_1>,unsigned __int64,char const *,unsigned __int64)):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 81 EC 98 00 00  sub         rsp,98h
                    00
  000000000000001B: 48 8B 84 24 A0 00  mov         rax,qword ptr [rsp+0A0h]
                    00 00
  0000000000000023: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000028: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000002D: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  0000000000000031: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000036: 48 8B 8C 24 A0 00  mov         rcx,qword ptr [rsp+0A0h]
                    00 00
  000000000000003E: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000043: 48 2B 44 24 48     sub         rax,qword ptr [rsp+48h]
  0000000000000048: 48 3B 84 24 A8 00  cmp         rax,qword ptr [rsp+0A8h]
                    00 00
  0000000000000050: 73 05              jae         0000000000000057
  0000000000000052: E8 00 00 00 00     call        ?_Xlen_string@std@@YAXXZ
  0000000000000057: 48 8B 84 24 A8 00  mov         rax,qword ptr [rsp+0A8h]
                    00 00
  000000000000005F: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000064: 48 03 C8           add         rcx,rax
  0000000000000067: 48 8B C1           mov         rax,rcx
  000000000000006A: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  000000000000006F: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000074: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000078: 48 89 44 24 68     mov         qword ptr [rsp+68h],rax
  000000000000007D: 48 8B 54 24 58     mov         rdx,qword ptr [rsp+58h]
  0000000000000082: 48 8B 8C 24 A0 00  mov         rcx,qword ptr [rsp+0A0h]
                    00 00
  000000000000008A: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z
  000000000000008F: 48 89 44 24 60     mov         qword ptr [rsp+60h],rax
  0000000000000094: 48 8B 8C 24 A0 00  mov         rcx,qword ptr [rsp+0A0h]
                    00 00
  000000000000009C: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  00000000000000A1: 48 89 44 24 78     mov         qword ptr [rsp+78h],rax
  00000000000000A6: 48 8D 54 24 60     lea         rdx,[rsp+60h]
  00000000000000AB: 48 8B 4C 24 78     mov         rcx,qword ptr [rsp+78h]
  00000000000000B0: E8 00 00 00 00     call        ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
  00000000000000B5: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  00000000000000BA: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000BF: E8 00 00 00 00     call        ?_Orphan_all@_Container_base0@std@@QEAAXXZ
  00000000000000C4: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000C9: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000000CE: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  00000000000000D2: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000D7: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000000DC: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  00000000000000E0: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000E5: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  00000000000000EA: 48 89 84 24 80 00  mov         qword ptr [rsp+80h],rax
                    00 00
  00000000000000F2: 48 83 7C 24 68 0F  cmp         qword ptr [rsp+68h],0Fh
  00000000000000F8: 76 7E              jbe         0000000000000178
  00000000000000FA: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000FF: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000102: 48 89 44 24 70     mov         qword ptr [rsp+70h],rax
  0000000000000107: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000010C: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  0000000000000111: 48 8B 8C 24 C8 00  mov         rcx,qword ptr [rsp+0C8h]
                    00 00
  0000000000000119: 48 89 4C 24 30     mov         qword ptr [rsp+30h],rcx
  000000000000011E: 48 8B 8C 24 C0 00  mov         rcx,qword ptr [rsp+0C0h]
                    00 00
  0000000000000126: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  000000000000012B: 48 8B 8C 24 B8 00  mov         rcx,qword ptr [rsp+0B8h]
                    00 00
  0000000000000133: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000138: 4C 8B 4C 24 48     mov         r9,qword ptr [rsp+48h]
  000000000000013D: 4C 8B C0           mov         r8,rax
  0000000000000140: 48 8B 94 24 80 00  mov         rdx,qword ptr [rsp+80h]
                    00 00
  0000000000000148: 48 8D 8C 24 B0 00  lea         rcx,[rsp+0B0h]
                    00 00
  0000000000000150: E8 00 00 00 00     call        ??R<lambda_1>@?1??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KQEBD0@Z@QEBA@QEAD10010@Z
  0000000000000155: 4C 8B 44 24 68     mov         r8,qword ptr [rsp+68h]
  000000000000015A: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  000000000000015F: 48 8B 4C 24 78     mov         rcx,qword ptr [rsp+78h]
  0000000000000164: E8 00 00 00 00     call        ?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z
  0000000000000169: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000016E: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000173: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000176: EB 5B              jmp         00000000000001D3
  0000000000000178: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000017D: 48 8B 8C 24 C8 00  mov         rcx,qword ptr [rsp+0C8h]
                    00 00
  0000000000000185: 48 89 4C 24 30     mov         qword ptr [rsp+30h],rcx
  000000000000018A: 48 8B 8C 24 C0 00  mov         rcx,qword ptr [rsp+0C0h]
                    00 00
  0000000000000192: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000000000197: 48 8B 8C 24 B8 00  mov         rcx,qword ptr [rsp+0B8h]
                    00 00
  000000000000019F: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  00000000000001A4: 4C 8B 4C 24 48     mov         r9,qword ptr [rsp+48h]
  00000000000001A9: 4C 8B C0           mov         r8,rax
  00000000000001AC: 48 8B 94 24 80 00  mov         rdx,qword ptr [rsp+80h]
                    00 00
  00000000000001B4: 48 8D 8C 24 B0 00  lea         rcx,[rsp+0B0h]
                    00 00
  00000000000001BC: E8 00 00 00 00     call        ??R<lambda_1>@?1??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KQEBD0@Z@QEBA@QEAD10010@Z
  00000000000001C1: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000001C6: 48 8D 54 24 50     lea         rdx,[rsp+50h]
  00000000000001CB: 48 8B C8           mov         rcx,rax
  00000000000001CE: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
  00000000000001D3: 48 8B 84 24 A0 00  mov         rax,qword ptr [rsp+0A0h]
                    00 00
  00000000000001DB: 48 81 C4 98 00 00  add         rsp,98h
                    00
  00000000000001E2: C3                 ret

??$_Unfancy@D@std@@YAPEADPEAD@Z (char * __cdecl std::_Unfancy<char>(char *)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$addressof@D@std@@YAPEADAEAD@Z (char * __cdecl std::addressof<char>(char &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z (char * * __cdecl std::addressof<char *>(char * &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z (class std::_String_val<struct std::_Simple_types<char> > * __cdecl std::addressof<class std::_String_val<struct std::_Simple_types<char> > >(class std::_String_val<struct std::_Simple_types<char> > &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$construct_at@D$$V$0A@@std@@YAPEADQEAD@Z (char * __cdecl std::construct_at<char,0>(char * const)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 57                 push        rdi
  0000000000000006: 48 83 EC 30        sub         rsp,30h
  000000000000000A: 48 C7 44 24 20 01  mov         qword ptr [rsp+20h],1
                    00 00 00
  0000000000000013: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000018: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000001D: E8 00 00 00 00     call        ??2@YAPEAX_KPEAX@Z
  0000000000000022: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000027: 48 8B 7C 24 28     mov         rdi,qword ptr [rsp+28h]
  000000000000002C: 33 C0              xor         eax,eax
  000000000000002E: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000033: F3 AA              rep stos    byte ptr [rdi]
  0000000000000035: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000003A: 48 83 C4 30        add         rsp,30h
  000000000000003E: 5F                 pop         rdi
  000000000000003F: C3                 ret

??$construct_at@DAEBD$0A@@std@@YAPEADQEADAEBD@Z (char * __cdecl std::construct_at<char,char const &,0>(char * const,char const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000013: B9 01 00 00 00     mov         ecx,1
  0000000000000018: E8 00 00 00 00     call        ??2@YAPEAX_KPEAX@Z
  000000000000001D: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000022: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000027: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002C: 0F B6 09           movzx       ecx,byte ptr [rcx]
  000000000000002F: 88 08              mov         byte ptr [rax],cl
  0000000000000031: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000036: 48 83 C4 38        add         rsp,38h
  000000000000003A: C3                 ret

??$construct_at@PEADAEAPEAD$0A@@std@@YAPEAPEADQEAPEADAEAPEAD@Z (char * * __cdecl std::construct_at<char *,char * &,0>(char * * const,char * &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000013: B9 08 00 00 00     mov         ecx,8
  0000000000000018: E8 00 00 00 00     call        ??2@YAPEAX_KPEAX@Z
  000000000000001D: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000022: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000027: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002C: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000002F: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000032: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000037: 48 83 C4 38        add         rsp,38h
  000000000000003B: C3                 ret

??$construct_at@PEADAEBQEAD$0A@@std@@YAPEAPEADQEAPEADAEBQEAD@Z (char * * __cdecl std::construct_at<char *,char * const &,0>(char * * const,char * const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000013: B9 08 00 00 00     mov         ecx,8
  0000000000000018: E8 00 00 00 00     call        ??2@YAPEAX_KPEAX@Z
  000000000000001D: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000022: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000027: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002C: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000002F: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000032: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000037: 48 83 C4 38        add         rsp,38h
  000000000000003B: C3                 ret

??$max@_K@std@@YAAEB_KAEB_K0@Z (unsigned __int64 const & __cdecl std::max<unsigned __int64>(unsigned __int64 const &,unsigned __int64 const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 18        sub         rsp,18h
  000000000000000E: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000013: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000018: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000001B: 48 39 08           cmp         qword ptr [rax],rcx
  000000000000001E: 73 0B              jae         000000000000002B
  0000000000000020: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000025: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000029: EB 09              jmp         0000000000000034
  000000000000002B: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000030: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000034: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000038: 48 89 44 24 08     mov         qword ptr [rsp+8],rax
  000000000000003D: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000042: 48 83 C4 18        add         rsp,18h
  0000000000000046: C3                 ret

??$min@_K@std@@YAAEB_KAEB_K0@Z (unsigned __int64 const & __cdecl std::min<unsigned __int64>(unsigned __int64 const &,unsigned __int64 const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 18        sub         rsp,18h
  000000000000000E: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000013: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000018: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000001B: 48 39 08           cmp         qword ptr [rax],rcx
  000000000000001E: 73 0B              jae         000000000000002B
  0000000000000020: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000025: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000029: EB 09              jmp         0000000000000034
  000000000000002B: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000030: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000034: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000038: 48 89 44 24 08     mov         qword ptr [rsp+8],rax
  000000000000003D: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000042: 48 83 C4 18        add         rsp,18h
  0000000000000046: C3                 ret

??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_String_val<struct std::_Simple_types<char> >(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000016: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001B: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  0000000000000023: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000028: 48 C7 40 18 00 00  mov         qword ptr [rax+18h],0
                    00 00
  0000000000000030: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000035: 48 83 C4 28        add         rsp,28h
  0000000000000039: C3                 ret

??0?$allocator@D@std@@QEAA@XZ (public: __cdecl std::allocator<char>::allocator<char>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &&)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 48        sub         rsp,48h
  000000000000000E: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000013: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000018: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000001D: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  0000000000000022: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000027: 0F B6 44 24 21     movzx       eax,byte ptr [rsp+21h]
  000000000000002C: 88 44 24 20        mov         byte ptr [rsp+20h],al
  0000000000000030: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  0000000000000035: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  000000000000003A: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000003F: E8 00 00 00 00     call        ??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z
  0000000000000044: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000049: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  000000000000004E: 48 8D 15 00 00 00  lea         rdx,[?_Fake_alloc@std@@3U_Fake_allocator@1@B]
                    00
  0000000000000055: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000005A: E8 00 00 00 00     call        ?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z
  000000000000005F: 48 8B 54 24 58     mov         rdx,qword ptr [rsp+58h]
  0000000000000064: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000069: E8 00 00 00 00     call        ?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z
  000000000000006E: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000073: 48 83 C4 48        add         rsp,48h
  0000000000000077: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000018: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  000000000000001D: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000022: E8 00 00 00 00     call        ??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
  0000000000000027: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002C: E8 00 00 00 00     call        ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
  0000000000000031: 48 8B C8           mov         rcx,rax
  0000000000000034: E8 00 00 00 00     call        ??$_Convert_size@_K_K@std@@YA_K_K@Z
  0000000000000039: 4C 8B C0           mov         r8,rax
  000000000000003C: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000041: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000046: E8 00 00 00 00     call        ??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
  000000000000004B: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000050: 48 83 C4 38        add         rsp,38h
  0000000000000054: C3                 ret

??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::_Bxty(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 57                 push        rdi
  0000000000000006: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  000000000000000B: 48 8B 7C 24 10     mov         rdi,qword ptr [rsp+10h]
  0000000000000010: 33 C0              xor         eax,eax
  0000000000000012: B9 10 00 00 00     mov         ecx,10h
  0000000000000017: F3 AA              rep stos    byte ptr [rdi]
  0000000000000019: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  000000000000001E: 5F                 pop         rdi
  000000000000001F: C3                 ret

??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z (public: __cdecl std::_Fake_proxy_ptr_impl::_Fake_proxy_ptr_impl(struct std::_Fake_allocator const &,struct std::_Container_base0 const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000014: C3                 ret

??0bad_alloc@std@@AEAA@QEBD@Z (private: __cdecl std::bad_alloc::bad_alloc(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 41 B8 01 00 00 00  mov         r8d,1
  0000000000000014: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000019: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001E: E8 00 00 00 00     call        ??0exception@std@@QEAA@QEBDH@Z
  0000000000000023: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000028: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_alloc@std@@6B@]
                    00
  000000000000002F: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??0bad_alloc@std@@QEAA@AEBV01@@Z (public: __cdecl std::bad_alloc::bad_alloc(class std::bad_alloc const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0exception@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_alloc@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0bad_array_new_length@std@@QEAA@AEBV01@@Z (public: __cdecl std::bad_array_new_length::bad_array_new_length(class std::bad_array_new_length const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0bad_alloc@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_array_new_length@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0bad_array_new_length@std@@QEAA@XZ (public: __cdecl std::bad_array_new_length::bad_array_new_length(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8D 15 00 00 00  lea         rdx,[??_C@_0BF@KINCDENJ@bad?5array?5new?5length@]
                    00
  0000000000000010: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000015: E8 00 00 00 00     call        ??0bad_alloc@std@@AEAA@QEBD@Z
  000000000000001A: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001F: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_array_new_length@std@@6B@]
                    00
  0000000000000026: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000029: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002E: 48 83 C4 28        add         rsp,28h
  0000000000000032: C3                 ret

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

??0exception@std@@QEAA@QEBDH@Z (public: __cdecl std::exception::exception(char const * const,int)):
  0000000000000000: 44 89 44 24 18     mov         dword ptr [rsp+18h],r8d
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 57                 push        rdi
  0000000000000010: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  0000000000000015: 48 8D 0D 00 00 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  000000000000001C: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001F: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  0000000000000024: 48 83 C0 08        add         rax,8
  0000000000000028: 48 8B F8           mov         rdi,rax
  000000000000002B: 33 C0              xor         eax,eax
  000000000000002D: B9 10 00 00 00     mov         ecx,10h
  0000000000000032: F3 AA              rep stos    byte ptr [rdi]
  0000000000000034: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  0000000000000039: 48 8B 4C 24 18     mov         rcx,qword ptr [rsp+18h]
  000000000000003E: 48 89 48 08        mov         qword ptr [rax+8],rcx
  0000000000000042: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  0000000000000047: 5F                 pop         rdi
  0000000000000048: C3                 ret

??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::~_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::~_String_val<struct std::_Simple_types<char> >(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::~basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ
  0000000000000013: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000018: 48 8B C8           mov         rcx,rax
  000000000000001B: E8 00 00 00 00     call        ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
  0000000000000020: 48 83 C4 28        add         rsp,28h
  0000000000000024: C3                 ret

??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::~_Bxty(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

??1bad_alloc@std@@UEAA@XZ (public: virtual __cdecl std::bad_alloc::~bad_alloc(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1exception@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??1bad_array_new_length@std@@UEAA@XZ (public: virtual __cdecl std::bad_array_new_length::~bad_array_new_length(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1bad_alloc@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

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

??2@YAPEAX_KPEAX@Z (void * __cdecl operator new(unsigned __int64,void *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  000000000000000F: C3                 ret

??R<lambda_1>@?1??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA@QEAD0101@Z (public: __cdecl `public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const,unsigned __int64)'::`2'::<lambda_1>::operator()(char * const,char const * const,unsigned __int64,char const * const,unsigned __int64)const ):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: 4C 8B 44 24 58     mov         r8,qword ptr [rsp+58h]
  000000000000001D: 48 8B 54 24 50     mov         rdx,qword ptr [rsp+50h]
  0000000000000022: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000027: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000002C: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  0000000000000031: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000036: 48 03 C8           add         rcx,rax
  0000000000000039: 48 8B C1           mov         rax,rcx
  000000000000003C: 4C 8B 44 24 68     mov         r8,qword ptr [rsp+68h]
  0000000000000041: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  0000000000000046: 48 8B C8           mov         rcx,rax
  0000000000000049: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000004E: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  0000000000000053: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  0000000000000058: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000005D: 48 03 C8           add         rcx,rax
  0000000000000060: 48 8B C1           mov         rax,rcx
  0000000000000063: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000068: 48 03 C8           add         rcx,rax
  000000000000006B: 48 8B C1           mov         rax,rcx
  000000000000006E: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000073: 48 8B C8           mov         rcx,rax
  0000000000000076: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  000000000000007B: 48 83 C4 38        add         rsp,38h
  000000000000007F: C3                 ret

??R<lambda_1>@?1??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KQEBD0@Z@QEBA@QEAD10010@Z (public: __cdecl `public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::insert(unsigned __int64,char const * const,unsigned __int64)'::`2'::<lambda_1>::operator()(char * const,char const * const,unsigned __int64,unsigned __int64,char const * const,unsigned __int64)const ):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: 4C 8B 44 24 60     mov         r8,qword ptr [rsp+60h]
  000000000000001D: 48 8B 54 24 50     mov         rdx,qword ptr [rsp+50h]
  0000000000000022: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000027: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000002C: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000031: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000036: 48 03 C8           add         rcx,rax
  0000000000000039: 48 8B C1           mov         rax,rcx
  000000000000003C: 4C 8B 44 24 70     mov         r8,qword ptr [rsp+70h]
  0000000000000041: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  0000000000000046: 48 8B C8           mov         rcx,rax
  0000000000000049: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000004E: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000053: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000058: 48 2B C8           sub         rcx,rax
  000000000000005B: 48 8B C1           mov         rax,rcx
  000000000000005E: 48 FF C0           inc         rax
  0000000000000061: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000066: 48 8B 54 24 50     mov         rdx,qword ptr [rsp+50h]
  000000000000006B: 48 03 D1           add         rdx,rcx
  000000000000006E: 48 8B CA           mov         rcx,rdx
  0000000000000071: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  0000000000000076: 4C 8B 44 24 48     mov         r8,qword ptr [rsp+48h]
  000000000000007B: 4C 03 C2           add         r8,rdx
  000000000000007E: 49 8B D0           mov         rdx,r8
  0000000000000081: 48 03 54 24 70     add         rdx,qword ptr [rsp+70h]
  0000000000000086: 48 89 54 24 20     mov         qword ptr [rsp+20h],rdx
  000000000000008B: 4C 8B C0           mov         r8,rax
  000000000000008E: 48 8B D1           mov         rdx,rcx
  0000000000000091: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000096: 48 8B C8           mov         rcx,rax
  0000000000000099: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000009E: 48 83 C4 38        add         rsp,38h
  00000000000000A2: C3                 ret

??_Gbad_alloc@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_alloc::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1bad_alloc@std@@UEAA@XZ
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

??_Gbad_array_new_length@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_array_new_length::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1bad_array_new_length@std@@UEAA@XZ
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

?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ (public: void __cdecl std::_String_val<struct std::_Simple_types<char> >::_Activate_SSO_buffer(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  000000000000000E: 0F B6 C0           movzx       eax,al
  0000000000000011: 85 C0              test        eax,eax
  0000000000000013: 74 35              je          000000000000004A
  0000000000000015: 48 C7 44 24 20 00  mov         qword ptr [rsp+20h],0
                    00 00 00
  000000000000001E: EB 0D              jmp         000000000000002D
  0000000000000020: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000025: 48 FF C0           inc         rax
  0000000000000028: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000002D: 48 83 7C 24 20 10  cmp         qword ptr [rsp+20h],10h
  0000000000000033: 73 15              jae         000000000000004A
  0000000000000035: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000003A: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000003F: 48 03 C8           add         rcx,rax
  0000000000000042: 48 8B C1           mov         rax,rcx
  0000000000000045: C6 00 00           mov         byte ptr [rax],0
  0000000000000048: EB D6              jmp         0000000000000020
  000000000000004A: 48 83 C4 38        add         rsp,38h
  000000000000004E: C3                 ret

?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z (void __cdecl std::_Adjust_manually_vector_aligned(void * &,unsigned __int64 &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 48        sub         rsp,48h
  000000000000000E: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  0000000000000013: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000016: 48 83 C0 27        add         rax,27h
  000000000000001A: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000001F: 48 89 01           mov         qword ptr [rcx],rax
  0000000000000022: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000027: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002A: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000002F: B8 08 00 00 00     mov         eax,8
  0000000000000034: 48 6B C0 FF        imul        rax,rax,0FFFFFFFFFFFFFFFFh
  0000000000000038: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000003D: 48 8B 04 01        mov         rax,qword ptr [rcx+rax]
  0000000000000041: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000046: 48 C7 44 24 38 08  mov         qword ptr [rsp+38h],8
                    00 00 00
  000000000000004F: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000054: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000059: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000005C: 48 2B C1           sub         rax,rcx
  000000000000005F: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000064: 48 83 7C 24 20 08  cmp         qword ptr [rsp+20h],8
  000000000000006A: 72 0A              jb          0000000000000076
  000000000000006C: 48 83 7C 24 20 27  cmp         qword ptr [rsp+20h],27h
  0000000000000072: 77 02              ja          0000000000000076
  0000000000000074: EB 0B              jmp         0000000000000081
  0000000000000076: E8 00 00 00 00     call        _invalid_parameter_noinfo_noreturn
  000000000000007B: 33 C0              xor         eax,eax
  000000000000007D: 85 C0              test        eax,eax
  000000000000007F: 75 F5              jne         0000000000000076
  0000000000000081: 33 C0              xor         eax,eax
  0000000000000083: 85 C0              test        eax,eax
  0000000000000085: 75 DD              jne         0000000000000064
  0000000000000087: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000008C: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000091: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000094: 48 83 C4 48        add         rsp,48h
  0000000000000098: C3                 ret

?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z (public: void __cdecl std::_Container_base0::_Alloc_proxy(struct std::_Fake_allocator const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: C3                 ret

?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z (public: static void * __cdecl std::_Default_allocate_traits::_Allocate(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??2@YAPEAX_K@Z
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z (private: unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Calculate_growth(unsigned __int64)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000013: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000018: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000001D: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000022: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000026: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000002B: 4C 8B 44 24 20     mov         r8,qword ptr [rsp+20h]
  0000000000000030: 48 8B 54 24 28     mov         rdx,qword ptr [rsp+28h]
  0000000000000035: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000003A: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
  000000000000003F: 48 83 C4 38        add         rsp,38h
  0000000000000043: C3                 ret

?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z (private: static unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Calculate_growth(unsigned __int64,unsigned __int64,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000018: 48 83 C8 0F        or          rax,0Fh
  000000000000001C: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000021: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000026: 48 39 44 24 20     cmp         qword ptr [rsp+20h],rax
  000000000000002B: 76 07              jbe         0000000000000034
  000000000000002D: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000032: EB 59              jmp         000000000000008D
  0000000000000034: 33 D2              xor         edx,edx
  0000000000000036: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  000000000000003B: B9 02 00 00 00     mov         ecx,2
  0000000000000040: 48 F7 F1           div         rax,rcx
  0000000000000043: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000048: 48 2B C8           sub         rcx,rax
  000000000000004B: 48 8B C1           mov         rax,rcx
  000000000000004E: 48 39 44 24 48     cmp         qword ptr [rsp+48h],rax
  0000000000000053: 76 07              jbe         000000000000005C
  0000000000000055: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000005A: EB 31              jmp         000000000000008D
  000000000000005C: 33 D2              xor         edx,edx
  000000000000005E: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000063: B9 02 00 00 00     mov         ecx,2
  0000000000000068: 48 F7 F1           div         rax,rcx
  000000000000006B: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000070: 48 03 C8           add         rcx,rax
  0000000000000073: 48 8B C1           mov         rax,rcx
  0000000000000076: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000007B: 48 8D 54 24 28     lea         rdx,[rsp+28h]
  0000000000000080: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000085: E8 00 00 00 00     call        ??$max@_K@std@@YAAEB_KAEB_K0@Z
  000000000000008A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000008D: 48 83 C4 38        add         rsp,38h
  0000000000000091: C3                 ret

?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z (public: void __cdecl std::_String_val<struct std::_Simple_types<char> >::_Check_offset(unsigned __int64)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000013: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000018: 48 39 48 10        cmp         qword ptr [rax+10h],rcx
  000000000000001C: 73 05              jae         0000000000000023
  000000000000001E: E8 00 00 00 00     call        ?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ
  0000000000000023: 48 83 C4 28        add         rsp,28h
  0000000000000027: C3                 ret

?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z (private: static void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Deallocate_for_capacity(class std::allocator<char> &,char * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000018: 48 FF C0           inc         rax
  000000000000001B: 4C 8B C0           mov         r8,rax
  000000000000001E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000023: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000028: E8 00 00 00 00     call        ?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z
  000000000000002D: 48 83 C4 28        add         rsp,28h
  0000000000000031: C3                 ret

?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ (public: class std::allocator<char> & __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Get_first(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ (public: class std::allocator<char> const & __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Get_first(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ (private: class std::allocator<char> & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Getal(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ (private: class std::allocator<char> const & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Getal(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ (public: bool __cdecl std::_String_val<struct std::_Simple_types<char> >::_Large_mode_engaged(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 83 78 18 0F     cmp         qword ptr [rax+18h],0Fh
  0000000000000013: 76 09              jbe         000000000000001E
  0000000000000015: C7 04 24 01 00 00  mov         dword ptr [rsp],1
                    00
  000000000000001C: EB 07              jmp         0000000000000025
  000000000000001E: C7 04 24 00 00 00  mov         dword ptr [rsp],0
                    00
  0000000000000025: 0F B6 04 24        movzx       eax,byte ptr [rsp]
  0000000000000029: 48 83 C4 18        add         rsp,18h
  000000000000002D: C3                 ret

?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ (public: char * __cdecl std::_String_val<struct std::_Simple_types<char> >::_Myptr(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000013: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000018: E8 00 00 00 00     call        ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
  000000000000001D: 0F B6 C0           movzx       eax,al
  0000000000000020: 85 C0              test        eax,eax
  0000000000000022: 74 12              je          0000000000000036
  0000000000000024: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000029: 48 8B 08           mov         rcx,qword ptr [rax]
  000000000000002C: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  0000000000000031: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000036: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000003B: 48 83 C4 38        add         rsp,38h
  000000000000003F: C3                 ret

?_Orphan_all@_Container_base0@std@@QEAAXXZ (public: void __cdecl std::_Container_base0::_Orphan_all(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ (public: void __cdecl std::_Fake_proxy_ptr_impl::_Release(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Swap_proxy_and_iterators(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000018: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  000000000000001D: 48 8B D0           mov         rdx,rax
  0000000000000020: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000025: E8 00 00 00 00     call        ?_Swap_proxy_and_iterators@_Container_base0@std@@QEAAXAEAU12@@Z
  000000000000002A: 48 83 C4 38        add         rsp,38h
  000000000000002E: C3                 ret

?_Swap_proxy_and_iterators@_Container_base0@std@@QEAAXAEAU12@@Z (public: void __cdecl std::_Container_base0::_Swap_proxy_and_iterators(struct std::_Container_base0 &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: C3                 ret

?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ (public: void __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::_Switch_to_buf(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z
  0000000000000016: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  000000000000001B: 0F B6 C0           movzx       eax,al
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 35              je          0000000000000057
  0000000000000022: 48 C7 44 24 20 00  mov         qword ptr [rsp+20h],0
                    00 00 00
  000000000000002B: EB 0D              jmp         000000000000003A
  000000000000002D: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000032: 48 FF C0           inc         rax
  0000000000000035: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003A: 48 83 7C 24 20 10  cmp         qword ptr [rsp+20h],10h
  0000000000000040: 73 15              jae         0000000000000057
  0000000000000042: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000047: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000004C: 48 03 C8           add         rcx,rax
  000000000000004F: 48 8B C1           mov         rax,rcx
  0000000000000052: C6 00 00           mov         byte ptr [rax],0
  0000000000000055: EB D6              jmp         000000000000002D
  0000000000000057: 48 83 C4 38        add         rsp,38h
  000000000000005B: C3                 ret

?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Take_contents(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 58        sub         rsp,58h
  000000000000000E: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000013: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000018: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  000000000000001D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000022: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000027: 0F B6 C0           movzx       eax,al
  000000000000002A: 85 C0              test        eax,eax
  000000000000002C: 0F 85 88 00 00 00  jne         00000000000000BA
  0000000000000032: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000037: 48 8B C8           mov         rcx,rax
  000000000000003A: E8 00 00 00 00     call        ??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z
  000000000000003F: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000044: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  0000000000000049: 48 8B C8           mov         rcx,rax
  000000000000004C: E8 00 00 00 00     call        ??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z
  0000000000000051: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000056: 41 B8 20 00 00 00  mov         r8d,20h
  000000000000005C: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000061: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000066: E8 00 00 00 00     call        memcpy
  000000000000006B: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000070: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  0000000000000078: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000007D: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  0000000000000085: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000008A: E8 00 00 00 00     call        ?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  000000000000008F: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  0000000000000094: B8 01 00 00 00     mov         eax,1
  0000000000000099: 48 6B C0 00        imul        rax,rax,0
  000000000000009D: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  00000000000000A2: 48 03 C8           add         rcx,rax
  00000000000000A5: 48 8B C1           mov         rax,rcx
  00000000000000A8: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  00000000000000AD: 48 8B C8           mov         rcx,rax
  00000000000000B0: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000000B5: E9 E7 00 00 00     jmp         00000000000001A1
  00000000000000BA: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  00000000000000BF: E8 00 00 00 00     call        ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
  00000000000000C4: 0F B6 C0           movzx       eax,al
  00000000000000C7: 85 C0              test        eax,eax
  00000000000000C9: 74 30              je          00000000000000FB
  00000000000000CB: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  00000000000000D0: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000000D5: E8 00 00 00 00     call        ?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z
  00000000000000DA: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000DF: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  00000000000000E4: 48 8B D0           mov         rdx,rax
  00000000000000E7: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEAPEAD@std@@YAXAEAPEAD0@Z
  00000000000000EC: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000F1: 48 8B C8           mov         rcx,rax
  00000000000000F4: E8 00 00 00 00     call        ?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  00000000000000F9: EB 42              jmp         000000000000013D
  00000000000000FB: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000100: E8 00 00 00 00     call        ?_Orphan_all@_Container_base0@std@@QEAAXXZ
  0000000000000105: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000010A: E8 00 00 00 00     call        ?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  000000000000010F: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000114: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  0000000000000118: 48 FF C0           inc         rax
  000000000000011B: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000120: 48 8B 54 24 30     mov         rdx,qword ptr [rsp+30h]
  0000000000000125: 48 89 54 24 48     mov         qword ptr [rsp+48h],rdx
  000000000000012A: 4C 8B C0           mov         r8,rax
  000000000000012D: 48 8B D1           mov         rdx,rcx
  0000000000000130: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000135: 48 8B C8           mov         rcx,rax
  0000000000000138: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000013D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000142: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000147: 48 8B 49 18        mov         rcx,qword ptr [rcx+18h]
  000000000000014B: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  000000000000014F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000154: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000159: 48 8B 49 10        mov         rcx,qword ptr [rcx+10h]
  000000000000015D: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000161: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000166: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  000000000000016E: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000173: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  000000000000017B: C6 44 24 21 00     mov         byte ptr [rsp+21h],0
  0000000000000180: B8 01 00 00 00     mov         eax,1
  0000000000000185: 48 6B C0 00        imul        rax,rax,0
  0000000000000189: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000018E: 48 03 C8           add         rcx,rax
  0000000000000191: 48 8B C1           mov         rax,rcx
  0000000000000194: 48 8D 54 24 21     lea         rdx,[rsp+21h]
  0000000000000199: 48 8B C8           mov         rcx,rax
  000000000000019C: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000001A1: 48 83 C4 58        add         rsp,58h
  00000000000001A5: C3                 ret

?_Throw_bad_array_new_length@std@@YAXXZ (void __cdecl std::_Throw_bad_array_new_length(void)):
  0000000000000000: 48 83 EC 48        sub         rsp,48h
  0000000000000004: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000009: E8 00 00 00 00     call        ??0bad_array_new_length@std@@QEAA@XZ
  000000000000000E: 48 8D 15 00 00 00  lea         rdx,[_TI3?AVbad_array_new_length@std@@]
                    00
  0000000000000015: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000001A: E8 00 00 00 00     call        _CxxThrowException
  000000000000001F: 48 83 C4 48        add         rsp,48h
  0000000000000023: C3                 ret

?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Tidy_deallocate(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 48        sub         rsp,48h
  0000000000000009: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000000E: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000013: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000018: E8 00 00 00 00     call        ?_Orphan_all@_Container_base0@std@@QEAAXXZ
  000000000000001D: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000022: E8 00 00 00 00     call        ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
  0000000000000027: 0F B6 C0           movzx       eax,al
  000000000000002A: 85 C0              test        eax,eax
  000000000000002C: 74 37              je          0000000000000065
  000000000000002E: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000033: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  0000000000000038: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000003D: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000042: 4C 8B 40 18        mov         r8,qword ptr [rax+18h]
  0000000000000046: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000004B: 48 8B 10           mov         rdx,qword ptr [rax]
  000000000000004E: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000053: E8 00 00 00 00     call        ?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z
  0000000000000058: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000005D: 48 8B C8           mov         rcx,rax
  0000000000000060: E8 00 00 00 00     call        ?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  0000000000000065: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000006A: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  0000000000000072: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000077: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  000000000000007F: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  0000000000000084: B8 01 00 00 00     mov         eax,1
  0000000000000089: 48 6B C0 00        imul        rax,rax,0
  000000000000008D: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000092: 48 03 C8           add         rcx,rax
  0000000000000095: 48 8B C1           mov         rax,rcx
  0000000000000098: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  000000000000009D: 48 8B C8           mov         rcx,rax
  00000000000000A0: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000000A5: 48 83 C4 48        add         rsp,48h
  00000000000000A9: C3                 ret

?_Xlen_string@std@@YAXXZ (void __cdecl std::_Xlen_string(void)):
  0000000000000000: 48 83 EC 28        sub         rsp,28h
  0000000000000004: 48 8D 0D 00 00 00  lea         rcx,[??_C@_0BA@JFNIOLAK@string?5too?5long@]
                    00
  000000000000000B: E8 00 00 00 00     call        ?_Xlength_error@std@@YAXPEBD@Z
  0000000000000010: 48 83 C4 28        add         rsp,28h
  0000000000000014: C3                 ret

?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ (public: static void __cdecl std::_String_val<struct std::_Simple_types<char> >::_Xran(void)):
  0000000000000000: 48 83 EC 28        sub         rsp,28h
  0000000000000004: 48 8D 0D 00 00 00  lea         rcx,[??_C@_0BI@CFPLBAOH@invalid?5string?5position@]
                    00
  000000000000000B: E8 00 00 00 00     call        ?_Xout_of_range@std@@YAXPEBD@Z
  0000000000000010: 48 83 C4 28        add         rsp,28h
  0000000000000014: C3                 ret

?allocate@?$allocator@D@std@@QEAAPEAD_K@Z (public: char * __cdecl std::allocator<char>::allocate(unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000013: E8 00 00 00 00     call        ??$_Get_size_of_n@$00@std@@YA_K_K@Z
  0000000000000018: 48 8B C8           mov         rcx,rax
  000000000000001B: E8 00 00 00 00     call        ??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z
  0000000000000020: 48 83 C4 28        add         rsp,28h
  0000000000000024: C3                 ret

?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000013: E8 00 00 00 00     call        ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
  0000000000000018: 48 8B C8           mov         rcx,rax
  000000000000001B: E8 00 00 00 00     call        ??$_Convert_size@_K_K@std@@YA_K_K@Z
  0000000000000020: 4C 8B C0           mov         r8,rax
  0000000000000023: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000028: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002D: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z
  0000000000000032: 48 83 C4 28        add         rsp,28h
  0000000000000036: C3                 ret

?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 58        sub         rsp,58h
  0000000000000013: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000018: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  000000000000001C: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000021: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000026: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000002B: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  000000000000002F: 48 2B C1           sub         rax,rcx
  0000000000000032: 48 39 44 24 70     cmp         qword ptr [rsp+70h],rax
  0000000000000037: 0F 87 81 00 00 00  ja          00000000000000BE
  000000000000003D: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000042: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000047: 48 03 C8           add         rcx,rax
  000000000000004A: 48 8B C1           mov         rax,rcx
  000000000000004D: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000052: 48 89 41 10        mov         qword ptr [rcx+10h],rax
  0000000000000056: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  000000000000005B: 48 8B C8           mov         rcx,rax
  000000000000005E: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ
  0000000000000063: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000068: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  000000000000006D: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000072: 48 03 C8           add         rcx,rax
  0000000000000075: 48 8B C1           mov         rax,rcx
  0000000000000078: 4C 8B 44 24 70     mov         r8,qword ptr [rsp+70h]
  000000000000007D: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  0000000000000082: 48 8B C8           mov         rcx,rax
  0000000000000085: E8 00 00 00 00     call        ?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000008A: C6 44 24 30 00     mov         byte ptr [rsp+30h],0
  000000000000008F: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000094: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000099: 48 03 C8           add         rcx,rax
  000000000000009C: 48 8B C1           mov         rax,rcx
  000000000000009F: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000A4: 48 03 C8           add         rcx,rax
  00000000000000A7: 48 8B C1           mov         rax,rcx
  00000000000000AA: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  00000000000000AF: 48 8B C8           mov         rcx,rax
  00000000000000B2: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000000B7: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  00000000000000BC: EB 24              jmp         00000000000000E2
  00000000000000BE: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000C3: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  00000000000000C8: 4C 8B 4C 24 68     mov         r9,qword ptr [rsp+68h]
  00000000000000CD: 44 0F B6 44 24 31  movzx       r8d,byte ptr [rsp+31h]
  00000000000000D3: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  00000000000000D8: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000000DD: E8 00 00 00 00     call        ??$_Reallocate_grow_by@V<lambda_1>@?1??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?1??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z
  00000000000000E2: 48 83 C4 58        add         rsp,58h
  00000000000000E6: C3                 ret

?assign@?$_Char_traits@DH@std@@SAXAEADAEBD@Z (public: static void __cdecl std::_Char_traits<char,int>::assign(char &,char const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000013: 0F B6 C0           movzx       eax,al
  0000000000000016: 85 C0              test        eax,eax
  0000000000000018: 74 19              je          0000000000000033
  000000000000001A: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001F: E8 00 00 00 00     call        ??$addressof@D@std@@YAPEADAEAD@Z
  0000000000000024: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000029: 48 8B C8           mov         rcx,rax
  000000000000002C: E8 00 00 00 00     call        ??$construct_at@DAEBD$0A@@std@@YAPEADQEADAEBD@Z
  0000000000000031: EB 0F              jmp         0000000000000042
  0000000000000033: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000038: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000003D: 0F B6 09           movzx       ecx,byte ptr [rcx]
  0000000000000040: 88 08              mov         byte ptr [rax],cl
  0000000000000042: 48 83 C4 28        add         rsp,28h
  0000000000000046: C3                 ret

?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z (public: static void __cdecl std::_Narrow_char_traits<char,int>::assign(char &,char const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000013: 0F B6 C0           movzx       eax,al
  0000000000000016: 85 C0              test        eax,eax
  0000000000000018: 74 11              je          000000000000002B
  000000000000001A: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  000000000000001F: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000024: E8 00 00 00 00     call        ?assign@?$_Char_traits@DH@std@@SAXAEADAEBD@Z
  0000000000000029: EB 0F              jmp         000000000000003A
  000000000000002B: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000030: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000035: 0F B6 09           movzx       ecx,byte ptr [rcx]
  0000000000000038: 88 08              mov         byte ptr [rax],cl
  000000000000003A: 48 83 C4 28        add         rsp,28h
  000000000000003E: C3                 ret

?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z (public: static char * __cdecl std::_Char_traits<char,int>::copy(char * const,char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000018: 0F B6 C0           movzx       eax,al
  000000000000001B: 85 C0              test        eax,eax
  000000000000001D: 74 52              je          0000000000000071
  000000000000001F: 48 C7 44 24 20 00  mov         qword ptr [rsp+20h],0
                    00 00 00
  0000000000000028: EB 0D              jmp         0000000000000037
  000000000000002A: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000002F: 48 FF C0           inc         rax
  0000000000000032: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000037: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000003C: 48 39 44 24 20     cmp         qword ptr [rsp+20h],rax
  0000000000000041: 74 27              je          000000000000006A
  0000000000000043: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000048: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000004D: 48 03 C8           add         rcx,rax
  0000000000000050: 48 8B C1           mov         rax,rcx
  0000000000000053: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000058: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000005D: 48 03 D1           add         rdx,rcx
  0000000000000060: 48 8B CA           mov         rcx,rdx
  0000000000000063: 0F B6 09           movzx       ecx,byte ptr [rcx]
  0000000000000066: 88 08              mov         byte ptr [rax],cl
  0000000000000068: EB C0              jmp         000000000000002A
  000000000000006A: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000006F: EB 19              jmp         000000000000008A
  0000000000000071: 4C 8B 44 24 50     mov         r8,qword ptr [rsp+50h]
  0000000000000076: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000007B: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000080: E8 00 00 00 00     call        memcpy
  0000000000000085: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000008A: 48 83 C4 38        add         rsp,38h
  000000000000008E: C3                 ret

?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z (public: void __cdecl std::allocator<char>::deallocate(char * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000018: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000001D: E8 00 00 00 00     call        ??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z
  0000000000000022: 48 83 C4 28        add         rsp,28h
  0000000000000026: C3                 ret

?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD0@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::insert(unsigned __int64,char const * const,unsigned __int64)):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 78        sub         rsp,78h
  0000000000000018: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  0000000000000020: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  0000000000000025: 48 8B 94 24 88 00  mov         rdx,qword ptr [rsp+88h]
                    00 00
  000000000000002D: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000032: E8 00 00 00 00     call        ?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z
  0000000000000037: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  000000000000003F: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  0000000000000043: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000048: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  0000000000000050: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000055: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000059: 48 2B C1           sub         rax,rcx
  000000000000005C: 48 39 84 24 98 00  cmp         qword ptr [rsp+98h],rax
                    00 00
  0000000000000064: 77 13              ja          0000000000000079
  0000000000000066: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  000000000000006B: 0F B6 C0           movzx       eax,al
  000000000000006E: 85 C0              test        eax,eax
  0000000000000070: 75 07              jne         0000000000000079
  0000000000000072: C6 44 24 30 01     mov         byte ptr [rsp+30h],1
  0000000000000077: EB 05              jmp         000000000000007E
  0000000000000079: C6 44 24 30 00     mov         byte ptr [rsp+30h],0
  000000000000007E: 0F B6 44 24 30     movzx       eax,byte ptr [rsp+30h]
  0000000000000083: 88 44 24 31        mov         byte ptr [rsp+31h],al
  0000000000000087: 0F B6 44 24 31     movzx       eax,byte ptr [rsp+31h]
  000000000000008C: 85 C0              test        eax,eax
  000000000000008E: 0F 84 71 01 00 00  je          0000000000000205
  0000000000000094: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  000000000000009C: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000A1: 48 03 C8           add         rcx,rax
  00000000000000A4: 48 8B C1           mov         rax,rcx
  00000000000000A7: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  00000000000000AF: 48 89 41 10        mov         qword ptr [rcx+10h],rax
  00000000000000B3: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  00000000000000BB: 48 8B C8           mov         rcx,rax
  00000000000000BE: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ
  00000000000000C3: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  00000000000000C8: 48 8B 84 24 88 00  mov         rax,qword ptr [rsp+88h]
                    00 00
  00000000000000D0: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000D5: 48 03 C8           add         rcx,rax
  00000000000000D8: 48 8B C1           mov         rax,rcx
  00000000000000DB: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  00000000000000E0: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  00000000000000E8: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  00000000000000F0: 48 03 C8           add         rcx,rax
  00000000000000F3: 48 8B C1           mov         rax,rcx
  00000000000000F6: 48 3B 44 24 38     cmp         rax,qword ptr [rsp+38h]
  00000000000000FB: 76 1A              jbe         0000000000000117
  00000000000000FD: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000102: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000107: 48 03 C8           add         rcx,rax
  000000000000010A: 48 8B C1           mov         rax,rcx
  000000000000010D: 48 39 84 24 90 00  cmp         qword ptr [rsp+90h],rax
                    00 00
  0000000000000115: 76 0F              jbe         0000000000000126
  0000000000000117: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  000000000000011F: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000124: EB 32              jmp         0000000000000158
  0000000000000126: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  000000000000012E: 48 39 44 24 38     cmp         qword ptr [rsp+38h],rax
  0000000000000133: 77 0B              ja          0000000000000140
  0000000000000135: 48 C7 44 24 40 00  mov         qword ptr [rsp+40h],0
                    00 00 00
  000000000000013E: EB 18              jmp         0000000000000158
  0000000000000140: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  0000000000000148: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000014D: 48 2B C8           sub         rcx,rax
  0000000000000150: 48 8B C1           mov         rax,rcx
  0000000000000153: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000158: 48 8B 84 24 88 00  mov         rax,qword ptr [rsp+88h]
                    00 00
  0000000000000160: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000165: 48 2B C8           sub         rcx,rax
  0000000000000168: 48 8B C1           mov         rax,rcx
  000000000000016B: 48 FF C0           inc         rax
  000000000000016E: 48 8B 8C 24 98 00  mov         rcx,qword ptr [rsp+98h]
                    00 00
  0000000000000176: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  000000000000017B: 48 03 D1           add         rdx,rcx
  000000000000017E: 48 8B CA           mov         rcx,rdx
  0000000000000181: 4C 8B C0           mov         r8,rax
  0000000000000184: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000189: E8 00 00 00 00     call        ?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000018E: 4C 8B 44 24 40     mov         r8,qword ptr [rsp+40h]
  0000000000000193: 48 8B 94 24 90 00  mov         rdx,qword ptr [rsp+90h]
                    00 00
  000000000000019B: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  00000000000001A0: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  00000000000001A5: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000001AA: 48 8B 8C 24 98 00  mov         rcx,qword ptr [rsp+98h]
                    00 00
  00000000000001B2: 48 2B C8           sub         rcx,rax
  00000000000001B5: 48 8B C1           mov         rax,rcx
  00000000000001B8: 48 8B 8C 24 98 00  mov         rcx,qword ptr [rsp+98h]
                    00 00
  00000000000001C0: 48 8B 94 24 90 00  mov         rdx,qword ptr [rsp+90h]
                    00 00
  00000000000001C8: 48 03 D1           add         rdx,rcx
  00000000000001CB: 48 8B CA           mov         rcx,rdx
  00000000000001CE: 48 03 4C 24 40     add         rcx,qword ptr [rsp+40h]
  00000000000001D3: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  00000000000001D8: 4C 8B 44 24 38     mov         r8,qword ptr [rsp+38h]
  00000000000001DD: 4C 03 C2           add         r8,rdx
  00000000000001E0: 49 8B D0           mov         rdx,r8
  00000000000001E3: 48 89 54 24 60     mov         qword ptr [rsp+60h],rdx
  00000000000001E8: 4C 8B C0           mov         r8,rax
  00000000000001EB: 48 8B D1           mov         rdx,rcx
  00000000000001EE: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  00000000000001F3: 48 8B C8           mov         rcx,rax
  00000000000001F6: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  00000000000001FB: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  0000000000000203: EB 3D              jmp         0000000000000242
  0000000000000205: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  000000000000020D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000212: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  000000000000021A: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000021F: 4C 8B 8C 24 88 00  mov         r9,qword ptr [rsp+88h]
                    00 00
  0000000000000227: 44 0F B6 44 24 32  movzx       r8d,byte ptr [rsp+32h]
  000000000000022D: 48 8B 94 24 98 00  mov         rdx,qword ptr [rsp+98h]
                    00 00
  0000000000000235: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  000000000000023D: E8 00 00 00 00     call        ??$_Reallocate_grow_by@V<lambda_1>@?1??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KQEBD0@Z@_KPEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?1??insert@01@QEAAAEAV01@0QEBD0@Z@_KPEBD3@Z
  0000000000000242: 48 83 C4 78        add         rsp,78h
  0000000000000246: C3                 ret

?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::insert(unsigned __int64,char const * const)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000018: E8 00 00 00 00     call        ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
  000000000000001D: 48 8B C8           mov         rcx,rax
  0000000000000020: E8 00 00 00 00     call        ??$_Convert_size@_K_K@std@@YA_K_K@Z
  0000000000000025: 4C 8B C8           mov         r9,rax
  0000000000000028: 4C 8B 44 24 40     mov         r8,qword ptr [rsp+40h]
  000000000000002D: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000032: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000037: E8 00 00 00 00     call        ?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD0@Z
  000000000000003C: 48 83 C4 28        add         rsp,28h
  0000000000000040: C3                 ret

?is_constant_evaluated@std@@YA_NXZ (bool __cdecl std::is_constant_evaluated(void)):
  0000000000000000: 32 C0              xor         al,al
  0000000000000002: C3                 ret

?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z (public: static unsigned __int64 __cdecl std::_Narrow_char_traits<char,int>::length(char const * const)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 89 44 24 08     mov         qword ptr [rsp+8],rax
  0000000000000013: 48 C7 04 24 FF FF  mov         qword ptr [rsp],0FFFFFFFFFFFFFFFFh
                    FF FF
  000000000000001B: 48 FF 04 24        inc         qword ptr [rsp]
  000000000000001F: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000024: 48 8B 0C 24        mov         rcx,qword ptr [rsp]
  0000000000000028: 80 3C 08 00        cmp         byte ptr [rax+rcx],0
  000000000000002C: 75 ED              jne         000000000000001B
  000000000000002E: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000032: 48 83 C4 18        add         rsp,18h
  0000000000000036: C3                 ret

?max@?$numeric_limits@_J@std@@SA_JXZ (public: static __int64 __cdecl std::numeric_limits<__int64>::max(void)):
  0000000000000000: 48 B8 FF FF FF FF  mov         rax,7FFFFFFFFFFFFFFFh
                    FF FF FF 7F
  000000000000000A: C3                 ret

?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z (public: static unsigned __int64 __cdecl std::_Default_allocator_traits<class std::allocator<char> >::max_size(class std::allocator<char> const &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 C7 C0 FF FF FF  mov         rax,0FFFFFFFFFFFFFFFFh
                    FF
  000000000000000C: C3                 ret

?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ (public: unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::max_size(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 58        sub         rsp,58h
  0000000000000009: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  000000000000000E: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ
  0000000000000013: 48 8B C8           mov         rcx,rax
  0000000000000016: E8 00 00 00 00     call        ?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z
  000000000000001B: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000020: 48 C7 44 24 20 10  mov         qword ptr [rsp+20h],10h
                    00 00 00
  0000000000000029: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  000000000000002E: 48 8D 4C 24 28     lea         rcx,[rsp+28h]
  0000000000000033: E8 00 00 00 00     call        ??$max@_K@std@@YAAEB_KAEB_K0@Z
  0000000000000038: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000003B: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000040: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000045: 48 FF C8           dec         rax
  0000000000000048: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  000000000000004D: E8 00 00 00 00     call        ?max@?$numeric_limits@_J@std@@SA_JXZ
  0000000000000052: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000057: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  000000000000005C: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000000000061: E8 00 00 00 00     call        ??$min@_K@std@@YAAEB_KAEB_K0@Z
  0000000000000066: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000069: 48 83 C4 58        add         rsp,58h
  000000000000006D: C3                 ret

?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z (public: static char * __cdecl std::_Char_traits<char,int>::move(char * const,char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 48        sub         rsp,48h
  0000000000000013: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000018: 0F B6 C0           movzx       eax,al
  000000000000001B: 85 C0              test        eax,eax
  000000000000001D: 0F 84 F1 00 00 00  je          0000000000000114
  0000000000000023: C6 44 24 20 01     mov         byte ptr [rsp+20h],1
  0000000000000028: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  000000000000002D: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000032: EB 0D              jmp         0000000000000041
  0000000000000034: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000039: 48 FF C0           inc         rax
  000000000000003C: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000041: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000046: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000004B: 48 03 C8           add         rcx,rax
  000000000000004E: 48 8B C1           mov         rax,rcx
  0000000000000051: 48 39 44 24 38     cmp         qword ptr [rsp+38h],rax
  0000000000000056: 74 15              je          000000000000006D
  0000000000000058: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  000000000000005D: 48 39 44 24 50     cmp         qword ptr [rsp+50h],rax
  0000000000000062: 75 07              jne         000000000000006B
  0000000000000064: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  0000000000000069: EB 02              jmp         000000000000006D
  000000000000006B: EB C7              jmp         0000000000000034
  000000000000006D: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000072: 85 C0              test        eax,eax
  0000000000000074: 74 4D              je          00000000000000C3
  0000000000000076: 48 C7 44 24 28 00  mov         qword ptr [rsp+28h],0
                    00 00 00
  000000000000007F: EB 0D              jmp         000000000000008E
  0000000000000081: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000086: 48 FF C0           inc         rax
  0000000000000089: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000008E: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000093: 48 39 44 24 28     cmp         qword ptr [rsp+28h],rax
  0000000000000098: 74 27              je          00000000000000C1
  000000000000009A: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000009F: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000A4: 48 03 C8           add         rcx,rax
  00000000000000A7: 48 8B C1           mov         rax,rcx
  00000000000000AA: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  00000000000000AF: 48 8B 54 24 58     mov         rdx,qword ptr [rsp+58h]
  00000000000000B4: 48 03 D1           add         rdx,rcx
  00000000000000B7: 48 8B CA           mov         rcx,rdx
  00000000000000BA: 0F B6 09           movzx       ecx,byte ptr [rcx]
  00000000000000BD: 88 08              mov         byte ptr [rax],cl
  00000000000000BF: EB C0              jmp         0000000000000081
  00000000000000C1: EB 4A              jmp         000000000000010D
  00000000000000C3: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  00000000000000C8: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  00000000000000CD: EB 0D              jmp         00000000000000DC
  00000000000000CF: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000D4: 48 FF C8           dec         rax
  00000000000000D7: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  00000000000000DC: 48 83 7C 24 30 00  cmp         qword ptr [rsp+30h],0
  00000000000000E2: 74 29              je          000000000000010D
  00000000000000E4: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000E9: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000EE: 48 03 C8           add         rcx,rax
  00000000000000F1: 48 8B C1           mov         rax,rcx
  00000000000000F4: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  00000000000000F9: 48 8B 54 24 58     mov         rdx,qword ptr [rsp+58h]
  00000000000000FE: 48 03 D1           add         rdx,rcx
  0000000000000101: 48 8B CA           mov         rcx,rdx
  0000000000000104: 0F B6 49 FF        movzx       ecx,byte ptr [rcx-1]
  0000000000000108: 88 48 FF           mov         byte ptr [rax-1],cl
  000000000000010B: EB C2              jmp         00000000000000CF
  000000000000010D: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000112: EB 19              jmp         000000000000012D
  0000000000000114: 4C 8B 44 24 60     mov         r8,qword ptr [rsp+60h]
  0000000000000119: 48 8B 54 24 58     mov         rdx,qword ptr [rsp+58h]
  000000000000011E: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000123: E8 00 00 00 00     call        memmove
  0000000000000128: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000012D: 48 83 C4 48        add         rsp,48h
  0000000000000131: C3                 ret

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

         8C8 .chks64
          9F .data$r
          80 .debug$S
          45 .drectve
          36 .modmeta
         39C .pdata
         19B .rdata
         150 .rdata$r
        20E6 .text$mn
         159 .text$x
          34 .voltbl
         2D8 .xdata
          A4 .xdata$x
