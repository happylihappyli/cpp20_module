Microsoft (R) COFF/PE Dumper Version 14.39.33522.0
Copyright (C) Microsoft Corporation.  All rights reserved.


Dump of file ..\obj\funny.obj

File Type: COFF OBJECT

?print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z (void __cdecl funny::print(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  000000000000000E: 48 8D 0D 00 00 00  lea         rcx,[?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A]
                    00
  0000000000000015: E8 00 00 00 00     call        ??$?6DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@@Z
  000000000000001A: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000001F: 48 8D 15 00 00 00  lea         rdx,[??$endl@DU?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z]
                    00
  0000000000000026: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000002B: E8 00 00 00 00     call        ??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@P6AAEAV01@AEAV01@@Z@Z
  0000000000000030: 90                 nop
  0000000000000031: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000036: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  000000000000003B: 48 83 C4 38        add         rsp,38h
  000000000000003F: C3                 ret
  0000000000000040: CC                 int         3
  0000000000000041: CC                 int         3
  0000000000000042: CC                 int         3
  0000000000000043: CC                 int         3
  0000000000000044: CC                 int         3
  0000000000000045: CC                 int         3
  0000000000000046: CC                 int         3
  0000000000000047: CC                 int         3
  0000000000000048: CC                 int         3
  0000000000000049: CC                 int         3
  000000000000004A: CC                 int         3
  000000000000004B: CC                 int         3
  000000000000004C: CC                 int         3
  000000000000004D: CC                 int         3
  000000000000004E: CC                 int         3
  000000000000004F: CC                 int         3
?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@H@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl funny::str(int)):
  0000000000000050: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000054: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000059: 48 83 EC 38        sub         rsp,38h
  000000000000005D: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000065: 8B 54 24 48        mov         edx,dword ptr [rsp+48h]
  0000000000000069: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000006E: E8 00 00 00 00     call        ?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@H@Z
  0000000000000073: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000077: 83 C8 01           or          eax,1
  000000000000007A: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000007E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000083: 48 83 C4 38        add         rsp,38h
  0000000000000087: C3                 ret
  0000000000000088: CC                 int         3
  0000000000000089: CC                 int         3
  000000000000008A: CC                 int         3
  000000000000008B: CC                 int         3
  000000000000008C: CC                 int         3
  000000000000008D: CC                 int         3
  000000000000008E: CC                 int         3
  000000000000008F: CC                 int         3
?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@N@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl funny::str(double)):
  0000000000000090: F2 0F 11 4C 24 10  movsd       mmword ptr [rsp+10h],xmm1
  0000000000000096: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000009B: 48 83 EC 38        sub         rsp,38h
  000000000000009F: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  00000000000000A7: F2 0F 10 4C 24 48  movsd       xmm1,mmword ptr [rsp+48h]
  00000000000000AD: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000B2: E8 00 00 00 00     call        ?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@N@Z
  00000000000000B7: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000000BB: 83 C8 01           or          eax,1
  00000000000000BE: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000000C2: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000C7: 48 83 C4 38        add         rsp,38h
  00000000000000CB: C3                 ret
  00000000000000CC: CC                 int         3
  00000000000000CD: CC                 int         3
  00000000000000CE: CC                 int         3
  00000000000000CF: CC                 int         3
  00000000000000D0: CC                 int         3
  00000000000000D1: CC                 int         3
  00000000000000D2: CC                 int         3
  00000000000000D3: CC                 int         3
  00000000000000D4: CC                 int         3
  00000000000000D5: CC                 int         3
  00000000000000D6: CC                 int         3
  00000000000000D7: CC                 int         3
  00000000000000D8: CC                 int         3
  00000000000000D9: CC                 int         3
  00000000000000DA: CC                 int         3
  00000000000000DB: CC                 int         3
  00000000000000DC: CC                 int         3
  00000000000000DD: CC                 int         3
  00000000000000DE: CC                 int         3
  00000000000000DF: CC                 int         3
?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@M@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl funny::str(float)):
  00000000000000E0: F3 0F 11 4C 24 10  movss       dword ptr [rsp+10h],xmm1
  00000000000000E6: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  00000000000000EB: 48 83 EC 38        sub         rsp,38h
  00000000000000EF: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  00000000000000F7: F3 0F 10 4C 24 48  movss       xmm1,dword ptr [rsp+48h]
  00000000000000FD: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000102: E8 00 00 00 00     call        ?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@M@Z
  0000000000000107: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000010B: 83 C8 01           or          eax,1
  000000000000010E: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000112: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000117: 48 83 C4 38        add         rsp,38h
  000000000000011B: C3                 ret
  000000000000011C: CC                 int         3
  000000000000011D: CC                 int         3
  000000000000011E: CC                 int         3
  000000000000011F: CC                 int         3
  0000000000000120: CC                 int         3
  0000000000000121: CC                 int         3
  0000000000000122: CC                 int         3
  0000000000000123: CC                 int         3
  0000000000000124: CC                 int         3
  0000000000000125: CC                 int         3
  0000000000000126: CC                 int         3
  0000000000000127: CC                 int         3
  0000000000000128: CC                 int         3
  0000000000000129: CC                 int         3
  000000000000012A: CC                 int         3
  000000000000012B: CC                 int         3
  000000000000012C: CC                 int         3
  000000000000012D: CC                 int         3
  000000000000012E: CC                 int         3
  000000000000012F: CC                 int         3
?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@J@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl funny::str(long)):
  0000000000000130: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000134: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000139: 48 83 EC 38        sub         rsp,38h
  000000000000013D: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000145: 8B 54 24 48        mov         edx,dword ptr [rsp+48h]
  0000000000000149: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000014E: E8 00 00 00 00     call        ?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@J@Z
  0000000000000153: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000157: 83 C8 01           or          eax,1
  000000000000015A: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000015E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000163: 48 83 C4 38        add         rsp,38h
  0000000000000167: C3                 ret
  0000000000000168: CC                 int         3
  0000000000000169: CC                 int         3
  000000000000016A: CC                 int         3
  000000000000016B: CC                 int         3
  000000000000016C: CC                 int         3
  000000000000016D: CC                 int         3
  000000000000016E: CC                 int         3
  000000000000016F: CC                 int         3
?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_J@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl funny::str(__int64)):
  0000000000000170: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000175: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000017A: 48 83 EC 38        sub         rsp,38h
  000000000000017E: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000186: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000018B: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000190: E8 00 00 00 00     call        ?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@_J@Z
  0000000000000195: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000199: 83 C8 01           or          eax,1
  000000000000019C: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000001A0: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000001A5: 48 83 C4 38        add         rsp,38h
  00000000000001A9: C3                 ret
  00000000000001AA: CC                 int         3
  00000000000001AB: CC                 int         3
  00000000000001AC: CC                 int         3
  00000000000001AD: CC                 int         3
  00000000000001AE: CC                 int         3
  00000000000001AF: CC                 int         3
?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_K@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl funny::str(unsigned __int64)):
  00000000000001B0: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  00000000000001B5: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  00000000000001BA: 48 83 EC 38        sub         rsp,38h
  00000000000001BE: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  00000000000001C6: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  00000000000001CB: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000001D0: E8 00 00 00 00     call        ?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@_K@Z
  00000000000001D5: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000001D9: 83 C8 01           or          eax,1
  00000000000001DC: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000001E0: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000001E5: 48 83 C4 38        add         rsp,38h
  00000000000001E9: C3                 ret
  00000000000001EA: CC                 int         3
  00000000000001EB: CC                 int         3
  00000000000001EC: CC                 int         3
  00000000000001ED: CC                 int         3
  00000000000001EE: CC                 int         3
  00000000000001EF: CC                 int         3
?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@PEBD@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl funny::str(char const *)):
  00000000000001F0: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  00000000000001F5: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  00000000000001FA: 48 83 EC 38        sub         rsp,38h
  00000000000001FE: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000206: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000020B: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000210: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  0000000000000215: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000219: 83 C8 01           or          eax,1
  000000000000021C: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000220: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000225: 48 83 C4 38        add         rsp,38h
  0000000000000229: C3                 ret
  000000000000022A: CC                 int         3
  000000000000022B: CC                 int         3
  000000000000022C: CC                 int         3
  000000000000022D: CC                 int         3
  000000000000022E: CC                 int         3
  000000000000022F: CC                 int         3
?str@funny@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV23@@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl funny::str(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000230: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000235: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000023A: 48 83 EC 38        sub         rsp,38h
  000000000000023E: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000246: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000024B: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000250: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z
  0000000000000255: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000259: 83 C8 01           or          eax,1
  000000000000025C: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000260: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000265: 48 83 C4 38        add         rsp,38h
  0000000000000269: C3                 ret

?dtor$0@?0??print@funny@@YAXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA (int `void __cdecl funny::print(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

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

??$?0AEAPEAV_Facet_base@std@@@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@AEAPEAV_Facet_base@1@@Z (public: __cdecl std::_Compressed_pair<struct std::default_delete<class std::_Facet_base>,class std::_Facet_base *,1>::_Compressed_pair<struct std::default_delete<class std::_Facet_base>,class std::_Facet_base *,1><class std::_Facet_base * &>(struct std::_Zero_then_variadic_args_t,class std::_Facet_base * &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000013: 48 8B 4C 24 18     mov         rcx,qword ptr [rsp+18h]
  0000000000000018: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000001B: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001E: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000023: C3                 ret

??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1><class std::allocator<char> const &>(struct std::_One_then_variadic_args_t,class std::allocator<char> const &)):
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

??$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> ><char *,0>(char *,char *,class std::allocator<char> const &)):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 48        sub         rsp,48h
  0000000000000018: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000001D: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000022: 4C 8B 44 24 68     mov         r8,qword ptr [rsp+68h]
  0000000000000027: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  000000000000002C: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000031: E8 00 00 00 00     call        ??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z
  0000000000000036: 90                 nop
  0000000000000037: 48 8D 54 24 60     lea         rdx,[rsp+60h]
  000000000000003C: 48 8D 4C 24 58     lea         rcx,[rsp+58h]
  0000000000000041: E8 00 00 00 00     call        ??$_Adl_verify_range@PEADPEAD@std@@YAXAEBQEAD0@Z
  0000000000000046: 48 8D 4C 24 58     lea         rcx,[rsp+58h]
  000000000000004B: E8 00 00 00 00     call        ??$_Get_unwrapped@AEAPEAD@std@@YA?A_TAEAPEAD@Z
  0000000000000050: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000055: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  000000000000005A: E8 00 00 00 00     call        ??$_Get_unwrapped@AEAPEAD@std@@YA?A_TAEAPEAD@Z
  000000000000005F: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000064: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000069: 48 39 44 24 28     cmp         qword ptr [rsp+28h],rax
  000000000000006E: 75 0C              jne         000000000000007C
  0000000000000070: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000075: E8 00 00 00 00     call        ?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ
  000000000000007A: EB 2B              jmp         00000000000000A7
  000000000000007C: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000081: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000086: 48 2B C8           sub         rcx,rax
  0000000000000089: 48 8B C1           mov         rax,rcx
  000000000000008C: 48 8B C8           mov         rcx,rax
  000000000000008F: E8 00 00 00 00     call        ??$_Convert_size@_K_K@std@@YA_K_K@Z
  0000000000000094: 4C 8B C0           mov         r8,rax
  0000000000000097: 48 8B 54 24 28     mov         rdx,qword ptr [rsp+28h]
  000000000000009C: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000A1: E8 00 00 00 00     call        ??$_Construct@$00PEAD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEAD_K@Z
  00000000000000A6: 90                 nop
  00000000000000A7: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  00000000000000AC: 48 83 C4 48        add         rsp,48h
  00000000000000B0: C3                 ret

?dtor$0@?0???$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z@4HA (int `public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> ><char *,0>(char *,char *,class basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::allocator<char> const &)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 50        mov         rcx,qword ptr [rbp+50h]
  000000000000000D: E8 00 00 00 00     call        ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z (public: __cdecl std::unique_ptr<class std::_Facet_base,struct std::default_delete<class std::_Facet_base> >::unique_ptr<class std::_Facet_base,struct std::default_delete<class std::_Facet_base> ><struct std::default_delete<class std::_Facet_base>,0>(class std::_Facet_base *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000018: 4C 8D 44 24 48     lea         r8,[rsp+48h]
  000000000000001D: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  0000000000000022: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000027: E8 00 00 00 00     call        ??$?0AEAPEAV_Facet_base@std@@@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@AEAPEAV_Facet_base@1@@Z
  000000000000002C: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000031: 48 83 C4 38        add         rsp,38h
  0000000000000035: C3                 ret

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

??$?6DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@@Z (class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::operator<<<char,struct std::char_traits<char>,class std::allocator<char> >(class std::basic_ostream<char,struct std::char_traits<char> > &,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000013: E8 00 00 00 00     call        ?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000018: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000001D: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000022: E8 00 00 00 00     call        ?data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ
  0000000000000027: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000002C: 4C 8B 44 24 20     mov         r8,qword ptr [rsp+20h]
  0000000000000031: 48 8B 54 24 28     mov         rdx,qword ptr [rsp+28h]
  0000000000000036: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000003B: E8 00 00 00 00     call        ??$_Insert_string@DU?$char_traits@D@std@@_K@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@QEBD_K@Z
  0000000000000040: 48 83 C4 38        add         rsp,38h
  0000000000000044: C3                 ret

??$_Adl_verify_range@PEADPEAD@std@@YAXAEBQEAD0@Z (void __cdecl std::_Adl_verify_range<char *,char *>(char * const &,char * const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: C3                 ret

??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z (void __cdecl std::_Adl_verify_range<char *,char const *>(char * const &,char const * const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: C3                 ret

??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z (void __cdecl std::_Adl_verify_range<char const *,char const *>(char const * const &,char const * const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: C3                 ret

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

??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z (unsigned __int64 __cdecl std::_Bit_cast<unsigned __int64,union std::error_category::_Addr_storage,0>(union std::error_category::_Addr_storage const &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000015: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000019: 48 83 C4 18        add         rsp,18h
  000000000000001D: C3                 ret

??$_Construct@$00PEAD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEAD_K@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct<1,char *>(char * const,unsigned __int64)):
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

??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct<2,char const *>(char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 68        sub         rsp,68h
  0000000000000013: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000018: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000001D: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000022: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000027: 48 39 84 24 80 00  cmp         qword ptr [rsp+80h],rax
                    00 00
  000000000000002F: 76 05              jbe         0000000000000036
  0000000000000031: E8 00 00 00 00     call        ?_Xlen_string@std@@YAXXZ
  0000000000000036: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000003B: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  0000000000000040: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000045: 48 8D 05 00 00 00  lea         rax,[?_Fake_alloc@std@@3U_Fake_allocator@1@B]
                    00
  000000000000004C: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000051: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  0000000000000056: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  000000000000005B: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000060: E8 00 00 00 00     call        ??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z
  0000000000000065: 48 83 BC 24 80 00  cmp         qword ptr [rsp+80h],0Fh
                    00 00 0F
  000000000000006E: 77 45              ja          00000000000000B5
  0000000000000070: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000075: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  000000000000007D: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000081: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000086: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  000000000000008E: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000093: 41 B8 10 00 00 00  mov         r8d,10h
  0000000000000099: 48 8B 54 24 78     mov         rdx,qword ptr [rsp+78h]
  000000000000009E: 48 8B C8           mov         rcx,rax
  00000000000000A1: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  00000000000000A6: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  00000000000000AB: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  00000000000000B0: E9 A2 00 00 00     jmp         0000000000000157
  00000000000000B5: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000BA: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  00000000000000BF: 4C 8B C0           mov         r8,rax
  00000000000000C2: BA 0F 00 00 00     mov         edx,0Fh
  00000000000000C7: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  00000000000000CF: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
  00000000000000D4: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  00000000000000D9: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  00000000000000DE: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000E3: E8 00 00 00 00     call        ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
  00000000000000E8: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  00000000000000ED: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000F2: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  00000000000000F7: 48 8B C8           mov         rcx,rax
  00000000000000FA: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
  00000000000000FF: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000104: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  000000000000010C: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000110: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000115: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000011A: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  000000000000011E: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  0000000000000126: 48 FF C0           inc         rax
  0000000000000129: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  000000000000012E: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000133: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  0000000000000138: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000013D: 4C 8B C1           mov         r8,rcx
  0000000000000140: 48 8B 54 24 78     mov         rdx,qword ptr [rsp+78h]
  0000000000000145: 48 8B C8           mov         rcx,rax
  0000000000000148: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000014D: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000152: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  0000000000000157: 48 83 C4 68        add         rsp,68h
  000000000000015B: C3                 ret

??$_Construct@$0A@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXD_K@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct<0,char>(char,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 58        sub         rsp,58h
  0000000000000012: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000017: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000001C: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000021: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000026: 48 39 44 24 70     cmp         qword ptr [rsp+70h],rax
  000000000000002B: 76 05              jbe         0000000000000032
  000000000000002D: E8 00 00 00 00     call        ?_Xlen_string@std@@YAXXZ
  0000000000000032: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000037: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  000000000000003C: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000041: 48 8D 05 00 00 00  lea         rax,[?_Fake_alloc@std@@3U_Fake_allocator@1@B]
                    00
  0000000000000048: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  000000000000004D: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  0000000000000052: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000057: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000005C: E8 00 00 00 00     call        ??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z
  0000000000000061: 48 83 7C 24 70 0F  cmp         qword ptr [rsp+70h],0Fh
  0000000000000067: 77 64              ja          00000000000000CD
  0000000000000069: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000006E: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000073: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000077: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000007C: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  0000000000000084: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000089: 44 0F B6 44 24 68  movzx       r8d,byte ptr [rsp+68h]
  000000000000008F: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000094: 48 8B C8           mov         rcx,rax
  0000000000000097: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z
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
  00000000000000C8: E9 AB 00 00 00     jmp         0000000000000178
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
  000000000000013A: 44 0F B6 44 24 68  movzx       r8d,byte ptr [rsp+68h]
  0000000000000140: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000145: 48 8B C8           mov         rcx,rax
  0000000000000148: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z
  000000000000014D: C6 44 24 22 00     mov         byte ptr [rsp+22h],0
  0000000000000152: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000157: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  000000000000015C: 48 03 44 24 70     add         rax,qword ptr [rsp+70h]
  0000000000000161: 48 8D 54 24 22     lea         rdx,[rsp+22h]
  0000000000000166: 48 8B C8           mov         rcx,rax
  0000000000000169: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  000000000000016E: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000173: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  0000000000000178: 48 83 C4 58        add         rsp,58h
  000000000000017C: C3                 ret

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
  0000000000000024: EB 2A              jmp         0000000000000050
  0000000000000026: 48 81 7C 24 38 00  cmp         qword ptr [rsp+38h],1000h
                    10 00 00
  000000000000002F: 72 0F              jb          0000000000000040
  0000000000000031: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  0000000000000036: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  000000000000003B: E8 00 00 00 00     call        ?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z
  0000000000000040: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000045: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000004A: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  000000000000004F: 90                 nop
  0000000000000050: 48 83 C4 28        add         rsp,28h
  0000000000000054: C3                 ret

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

??$_Get_unwrapped@AEAPEAD@std@@YA?A_TAEAPEAD@Z (decltype(auto) __cdecl std::_Get_unwrapped<char * &>(char * &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000000D: C3                 ret

??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ (class std::_Iostream_error_category2 const & __cdecl std::_Immortalize_memcpy_image<class std::_Iostream_error_category2>(void)):
  0000000000000000: 48 8D 05 00 00 00  lea         rax,[?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B]
                    00
  0000000000000007: C3                 ret

??$_Insert_string@DU?$char_traits@D@std@@_K@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@QEBD_K@Z (class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::_Insert_string<char,struct std::char_traits<char>,unsigned __int64>(class std::basic_ostream<char,struct std::char_traits<char> > &,char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 81 EC A8 00 00  sub         rsp,0A8h
                    00
  0000000000000016: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  000000000000001E: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  0000000000000026: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000029: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000002D: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000035: 48 03 C8           add         rcx,rax
  0000000000000038: 48 8B C1           mov         rax,rcx
  000000000000003B: 48 8B C8           mov         rcx,rax
  000000000000003E: E8 00 00 00 00     call        ?width@ios_base@std@@QEBA_JXZ
  0000000000000043: 48 85 C0           test        rax,rax
  0000000000000046: 7E 2F              jle         0000000000000077
  0000000000000048: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  0000000000000050: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000053: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000057: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  000000000000005F: 48 03 C8           add         rcx,rax
  0000000000000062: 48 8B C1           mov         rax,rcx
  0000000000000065: 48 8B C8           mov         rcx,rax
  0000000000000068: E8 00 00 00 00     call        ?width@ios_base@std@@QEBA_JXZ
  000000000000006D: 48 3B 84 24 C0 00  cmp         rax,qword ptr [rsp+0C0h]
                    00 00
  0000000000000075: 77 0B              ja          0000000000000082
  0000000000000077: 48 C7 44 24 28 00  mov         qword ptr [rsp+28h],0
                    00 00 00
  0000000000000080: EB 32              jmp         00000000000000B4
  0000000000000082: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  000000000000008A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000008D: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000091: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000099: 48 03 C8           add         rcx,rax
  000000000000009C: 48 8B C1           mov         rax,rcx
  000000000000009F: 48 8B C8           mov         rcx,rax
  00000000000000A2: E8 00 00 00 00     call        ?width@ios_base@std@@QEBA_JXZ
  00000000000000A7: 48 2B 84 24 C0 00  sub         rax,qword ptr [rsp+0C0h]
                    00 00
  00000000000000AF: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  00000000000000B4: 48 8B 94 24 B0 00  mov         rdx,qword ptr [rsp+0B0h]
                    00 00
  00000000000000BC: 48 8D 8C 24 88 00  lea         rcx,[rsp+88h]
                    00 00
  00000000000000C4: E8 00 00 00 00     call        ??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
  00000000000000C9: 90                 nop
  00000000000000CA: 48 8D 8C 24 88 00  lea         rcx,[rsp+88h]
                    00 00
  00000000000000D2: E8 00 00 00 00     call        ??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ
  00000000000000D7: 0F B6 C0           movzx       eax,al
  00000000000000DA: 85 C0              test        eax,eax
  00000000000000DC: 75 10              jne         00000000000000EE
  00000000000000DE: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000000E2: 83 C8 04           or          eax,4
  00000000000000E5: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000000E9: E9 43 02 00 00     jmp         $LN24
  00000000000000EE: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  00000000000000F6: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000000F9: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  00000000000000FD: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000105: 48 03 C8           add         rcx,rax
  0000000000000108: 48 8B C1           mov         rax,rcx
  000000000000010B: 48 8B C8           mov         rcx,rax
  000000000000010E: E8 00 00 00 00     call        ?flags@ios_base@std@@QEBAHXZ
  0000000000000113: 25 C0 01 00 00     and         eax,1C0h
  0000000000000118: 83 F8 40           cmp         eax,40h
  000000000000011B: 0F 84 B8 00 00 00  je          00000000000001D9
  0000000000000121: EB 0D              jmp         0000000000000130
  0000000000000123: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000128: 48 FF C8           dec         rax
  000000000000012B: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000130: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  0000000000000136: 0F 86 9D 00 00 00  jbe         00000000000001D9
  000000000000013C: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  0000000000000144: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000147: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000014B: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000153: 48 03 C8           add         rcx,rax
  0000000000000156: 48 8B C1           mov         rax,rcx
  0000000000000159: 48 8B C8           mov         rcx,rax
  000000000000015C: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000161: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000166: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  000000000000016E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000171: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000175: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  000000000000017D: 48 03 C8           add         rcx,rax
  0000000000000180: 48 8B C1           mov         rax,rcx
  0000000000000183: 48 8B C8           mov         rcx,rax
  0000000000000186: E8 00 00 00 00     call        ?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ
  000000000000018B: 88 44 24 24        mov         byte ptr [rsp+24h],al
  000000000000018F: 0F B6 54 24 24     movzx       edx,byte ptr [rsp+24h]
  0000000000000194: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000199: E8 00 00 00 00     call        ?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z
  000000000000019E: 89 44 24 30        mov         dword ptr [rsp+30h],eax
  00000000000001A2: 8B 44 24 30        mov         eax,dword ptr [rsp+30h]
  00000000000001A6: 89 44 24 34        mov         dword ptr [rsp+34h],eax
  00000000000001AA: E8 00 00 00 00     call        ?eof@?$_Narrow_char_traits@DH@std@@SAHXZ
  00000000000001AF: 89 44 24 38        mov         dword ptr [rsp+38h],eax
  00000000000001B3: 8B 54 24 34        mov         edx,dword ptr [rsp+34h]
  00000000000001B7: 8B 4C 24 38        mov         ecx,dword ptr [rsp+38h]
  00000000000001BB: E8 00 00 00 00     call        ?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z
  00000000000001C0: 0F B6 C0           movzx       eax,al
  00000000000001C3: 85 C0              test        eax,eax
  00000000000001C5: 74 0D              je          00000000000001D4
  00000000000001C7: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000001CB: 83 C8 04           or          eax,4
  00000000000001CE: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000001D2: EB 05              jmp         00000000000001D9
  00000000000001D4: E9 4A FF FF FF     jmp         0000000000000123
  00000000000001D9: 83 7C 24 20 00     cmp         dword ptr [rsp+20h],0
  00000000000001DE: 75 68              jne         0000000000000248
  00000000000001E0: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  00000000000001E8: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000001EB: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  00000000000001EF: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  00000000000001F7: 48 03 C8           add         rcx,rax
  00000000000001FA: 48 8B C1           mov         rax,rcx
  00000000000001FD: 48 8B C8           mov         rcx,rax
  0000000000000200: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000205: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  000000000000020A: 4C 8B 84 24 C0 00  mov         r8,qword ptr [rsp+0C0h]
                    00 00
  0000000000000212: 48 8B 94 24 B8 00  mov         rdx,qword ptr [rsp+0B8h]
                    00 00
  000000000000021A: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000021F: E8 00 00 00 00     call        ?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z
  0000000000000224: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  0000000000000229: 48 8B 84 24 C0 00  mov         rax,qword ptr [rsp+0C0h]
                    00 00
  0000000000000231: 48 39 44 24 58     cmp         qword ptr [rsp+58h],rax
  0000000000000236: 74 10              je          0000000000000248
  0000000000000238: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000023C: 83 C8 04           or          eax,4
  000000000000023F: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000243: E9 B8 00 00 00     jmp         0000000000000300
  0000000000000248: EB 0D              jmp         0000000000000257
  000000000000024A: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000024F: 48 FF C8           dec         rax
  0000000000000252: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000257: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  000000000000025D: 0F 86 9D 00 00 00  jbe         0000000000000300
  0000000000000263: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  000000000000026B: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000026E: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000272: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  000000000000027A: 48 03 C8           add         rcx,rax
  000000000000027D: 48 8B C1           mov         rax,rcx
  0000000000000280: 48 8B C8           mov         rcx,rax
  0000000000000283: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000288: 48 89 44 24 60     mov         qword ptr [rsp+60h],rax
  000000000000028D: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  0000000000000295: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000298: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000029C: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  00000000000002A4: 48 03 C8           add         rcx,rax
  00000000000002A7: 48 8B C1           mov         rax,rcx
  00000000000002AA: 48 8B C8           mov         rcx,rax
  00000000000002AD: E8 00 00 00 00     call        ?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ
  00000000000002B2: 88 44 24 25        mov         byte ptr [rsp+25h],al
  00000000000002B6: 0F B6 54 24 25     movzx       edx,byte ptr [rsp+25h]
  00000000000002BB: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000002C0: E8 00 00 00 00     call        ?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z
  00000000000002C5: 89 44 24 3C        mov         dword ptr [rsp+3Ch],eax
  00000000000002C9: 8B 44 24 3C        mov         eax,dword ptr [rsp+3Ch]
  00000000000002CD: 89 44 24 40        mov         dword ptr [rsp+40h],eax
  00000000000002D1: E8 00 00 00 00     call        ?eof@?$_Narrow_char_traits@DH@std@@SAHXZ
  00000000000002D6: 89 44 24 44        mov         dword ptr [rsp+44h],eax
  00000000000002DA: 8B 54 24 40        mov         edx,dword ptr [rsp+40h]
  00000000000002DE: 8B 4C 24 44        mov         ecx,dword ptr [rsp+44h]
  00000000000002E2: E8 00 00 00 00     call        ?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z
  00000000000002E7: 0F B6 C0           movzx       eax,al
  00000000000002EA: 85 C0              test        eax,eax
  00000000000002EC: 74 0D              je          00000000000002FB
  00000000000002EE: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000002F2: 83 C8 04           or          eax,4
  00000000000002F5: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000002F9: EB 05              jmp         0000000000000300
  00000000000002FB: E9 4A FF FF FF     jmp         000000000000024A
  0000000000000300: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  0000000000000308: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000030B: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000030F: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000317: 48 03 C8           add         rcx,rax
  000000000000031A: 48 8B C1           mov         rax,rcx
  000000000000031D: 48 89 44 24 68     mov         qword ptr [rsp+68h],rax
  0000000000000322: 33 D2              xor         edx,edx
  0000000000000324: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  0000000000000329: E8 00 00 00 00     call        ?width@ios_base@std@@QEAA_J_J@Z
  000000000000032E: 90                 nop
  000000000000032F: EB 00              jmp         $LN24
$LN24:
  0000000000000331: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  0000000000000339: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000033C: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000340: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000348: 48 03 C8           add         rcx,rax
  000000000000034B: 48 8B C1           mov         rax,rcx
  000000000000034E: 48 89 44 24 78     mov         qword ptr [rsp+78h],rax
  0000000000000353: 45 33 C0           xor         r8d,r8d
  0000000000000356: 8B 54 24 20        mov         edx,dword ptr [rsp+20h]
  000000000000035A: 48 8B 4C 24 78     mov         rcx,qword ptr [rsp+78h]
  000000000000035F: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  0000000000000364: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  000000000000036C: 48 89 84 24 80 00  mov         qword ptr [rsp+80h],rax
                    00 00
  0000000000000374: 48 8D 8C 24 88 00  lea         rcx,[rsp+88h]
                    00 00
  000000000000037C: E8 00 00 00 00     call        ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  0000000000000381: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  0000000000000389: 48 81 C4 A8 00 00  add         rsp,0A8h
                    00
  0000000000000390: C3                 ret

?dtor$0@?0???$_Insert_string@DU?$char_traits@D@std@@_K@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@QEBD_K@Z@4HA (int `class dtor$0::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::_Insert_string<char,struct std::char_traits<char>,unsigned __int64>(class dtor$0::std &,char const * const,unsigned __int64)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 8D 88 00 00  lea         rcx,[rbp+88h]
                    00
  0000000000000010: E8 00 00 00 00     call        ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  0000000000000015: 48 83 C4 20        add         rsp,20h
  0000000000000019: 5D                 pop         rbp
  000000000000001A: C3                 ret

?catch$1@?0???$_Insert_string@DU?$char_traits@D@std@@_K@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@QEBD_K@Z@4HA (int `class catch$1::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::_Insert_string<char,struct std::char_traits<char>,unsigned __int64>(class catch$1::std &,char const * const,unsigned __int64)'::`1'::catch$1):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 55                 push        rbp
  0000000000000006: 48 83 EC 20        sub         rsp,20h
  000000000000000A: 48 8B EA           mov         rbp,rdx
__catch$??$_Insert_string@DU?$char_traits@D@std@@_K@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@QEBD_K@Z$0:
  000000000000000D: 48 8B 85 B0 00 00  mov         rax,qword ptr [rbp+0B0h]
                    00
  0000000000000014: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000017: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000001B: 48 8B 8D B0 00 00  mov         rcx,qword ptr [rbp+0B0h]
                    00
  0000000000000022: 48 03 C8           add         rcx,rax
  0000000000000025: 48 8B C1           mov         rax,rcx
  0000000000000028: 48 89 45 70        mov         qword ptr [rbp+70h],rax
  000000000000002C: 41 B0 01           mov         r8b,1
  000000000000002F: BA 04 00 00 00     mov         edx,4
  0000000000000034: 48 8B 4D 70        mov         rcx,qword ptr [rbp+70h]
  0000000000000038: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  000000000000003D: 90                 nop
  000000000000003E: 48 8D 05 00 00 00  lea         rax,[$LN24]
                    00
  0000000000000045: 48 83 C4 20        add         rsp,20h
  0000000000000049: 5D                 pop         rbp
  000000000000004A: C3                 ret
  000000000000004B: CC                 int         3

??$_Integral_to_string@DH@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@H@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_Integral_to_string<char,int>(int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 68        sub         rsp,68h
  000000000000000D: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000000000014: 48 33 C4           xor         rax,rsp
  0000000000000017: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  000000000000001C: C7 44 24 30 00 00  mov         dword ptr [rsp+30h],0
                    00 00
  0000000000000024: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000000000029: E8 00 00 00 00     call        ??$end@D$0BF@@std@@YAPEADAEAY0BF@D@Z
  000000000000002E: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000033: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000038: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003D: 8B 44 24 78        mov         eax,dword ptr [rsp+78h]
  0000000000000041: 89 44 24 2C        mov         dword ptr [rsp+2Ch],eax
  0000000000000045: 83 7C 24 78 00     cmp         dword ptr [rsp+78h],0
  000000000000004A: 7D 2E              jge         000000000000007A
  000000000000004C: 33 C0              xor         eax,eax
  000000000000004E: 2B 44 24 2C        sub         eax,dword ptr [rsp+2Ch]
  0000000000000052: 8B D0              mov         edx,eax
  0000000000000054: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000059: E8 00 00 00 00     call        ??$_UIntegral_to_buff@DI@std@@YAPEADPEADI@Z
  000000000000005E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000063: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000068: 48 FF C8           dec         rax
  000000000000006B: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000070: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000075: C6 00 2D           mov         byte ptr [rax],2Dh
  0000000000000078: EB 13              jmp         000000000000008D
  000000000000007A: 8B 54 24 2C        mov         edx,dword ptr [rsp+2Ch]
  000000000000007E: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000083: E8 00 00 00 00     call        ??$_UIntegral_to_buff@DI@std@@YAPEADPEADI@Z
  0000000000000088: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000008D: 48 8D 4C 24 28     lea         rcx,[rsp+28h]
  0000000000000092: E8 00 00 00 00     call        ??0?$allocator@D@std@@QEAA@XZ
  0000000000000097: 4C 8B C8           mov         r9,rax
  000000000000009A: 4C 8B 44 24 38     mov         r8,qword ptr [rsp+38h]
  000000000000009F: 48 8B 54 24 20     mov         rdx,qword ptr [rsp+20h]
  00000000000000A4: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000A9: E8 00 00 00 00     call        ??$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z
  00000000000000AE: 8B 44 24 30        mov         eax,dword ptr [rsp+30h]
  00000000000000B2: 83 C8 01           or          eax,1
  00000000000000B5: 89 44 24 30        mov         dword ptr [rsp+30h],eax
  00000000000000B9: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000BE: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000000C3: 48 33 CC           xor         rcx,rsp
  00000000000000C6: E8 00 00 00 00     call        __security_check_cookie
  00000000000000CB: 48 83 C4 68        add         rsp,68h
  00000000000000CF: C3                 ret

??$_Integral_to_string@DJ@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@J@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_Integral_to_string<char,long>(long)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 68        sub         rsp,68h
  000000000000000D: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000000000014: 48 33 C4           xor         rax,rsp
  0000000000000017: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  000000000000001C: C7 44 24 30 00 00  mov         dword ptr [rsp+30h],0
                    00 00
  0000000000000024: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000000000029: E8 00 00 00 00     call        ??$end@D$0BF@@std@@YAPEADAEAY0BF@D@Z
  000000000000002E: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000033: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000038: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003D: 8B 44 24 78        mov         eax,dword ptr [rsp+78h]
  0000000000000041: 89 44 24 2C        mov         dword ptr [rsp+2Ch],eax
  0000000000000045: 83 7C 24 78 00     cmp         dword ptr [rsp+78h],0
  000000000000004A: 7D 2E              jge         000000000000007A
  000000000000004C: 33 C0              xor         eax,eax
  000000000000004E: 2B 44 24 2C        sub         eax,dword ptr [rsp+2Ch]
  0000000000000052: 8B D0              mov         edx,eax
  0000000000000054: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000059: E8 00 00 00 00     call        ??$_UIntegral_to_buff@DK@std@@YAPEADPEADK@Z
  000000000000005E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000063: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000068: 48 FF C8           dec         rax
  000000000000006B: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000070: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000075: C6 00 2D           mov         byte ptr [rax],2Dh
  0000000000000078: EB 13              jmp         000000000000008D
  000000000000007A: 8B 54 24 2C        mov         edx,dword ptr [rsp+2Ch]
  000000000000007E: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000083: E8 00 00 00 00     call        ??$_UIntegral_to_buff@DK@std@@YAPEADPEADK@Z
  0000000000000088: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000008D: 48 8D 4C 24 28     lea         rcx,[rsp+28h]
  0000000000000092: E8 00 00 00 00     call        ??0?$allocator@D@std@@QEAA@XZ
  0000000000000097: 4C 8B C8           mov         r9,rax
  000000000000009A: 4C 8B 44 24 38     mov         r8,qword ptr [rsp+38h]
  000000000000009F: 48 8B 54 24 20     mov         rdx,qword ptr [rsp+20h]
  00000000000000A4: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000A9: E8 00 00 00 00     call        ??$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z
  00000000000000AE: 8B 44 24 30        mov         eax,dword ptr [rsp+30h]
  00000000000000B2: 83 C8 01           or          eax,1
  00000000000000B5: 89 44 24 30        mov         dword ptr [rsp+30h],eax
  00000000000000B9: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000BE: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000000C3: 48 33 CC           xor         rcx,rsp
  00000000000000C6: E8 00 00 00 00     call        __security_check_cookie
  00000000000000CB: 48 83 C4 68        add         rsp,68h
  00000000000000CF: C3                 ret

??$_Integral_to_string@D_J@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@_J@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_Integral_to_string<char,__int64>(__int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 68        sub         rsp,68h
  000000000000000E: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000000000015: 48 33 C4           xor         rax,rsp
  0000000000000018: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  000000000000001D: C7 44 24 2C 00 00  mov         dword ptr [rsp+2Ch],0
                    00 00
  0000000000000025: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  000000000000002A: E8 00 00 00 00     call        ??$end@D$0BF@@std@@YAPEADAEAY0BF@D@Z
  000000000000002F: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000034: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000039: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003E: 48 8B 44 24 78     mov         rax,qword ptr [rsp+78h]
  0000000000000043: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000048: 48 83 7C 24 78 00  cmp         qword ptr [rsp+78h],0
  000000000000004E: 7D 30              jge         0000000000000080
  0000000000000050: 33 C0              xor         eax,eax
  0000000000000052: 48 2B 44 24 30     sub         rax,qword ptr [rsp+30h]
  0000000000000057: 48 8B D0           mov         rdx,rax
  000000000000005A: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000005F: E8 00 00 00 00     call        ??$_UIntegral_to_buff@D_K@std@@YAPEADPEAD_K@Z
  0000000000000064: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000069: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000006E: 48 FF C8           dec         rax
  0000000000000071: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000076: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000007B: C6 00 2D           mov         byte ptr [rax],2Dh
  000000000000007E: EB 14              jmp         0000000000000094
  0000000000000080: 48 8B 54 24 30     mov         rdx,qword ptr [rsp+30h]
  0000000000000085: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000008A: E8 00 00 00 00     call        ??$_UIntegral_to_buff@D_K@std@@YAPEADPEAD_K@Z
  000000000000008F: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000094: 48 8D 4C 24 28     lea         rcx,[rsp+28h]
  0000000000000099: E8 00 00 00 00     call        ??0?$allocator@D@std@@QEAA@XZ
  000000000000009E: 4C 8B C8           mov         r9,rax
  00000000000000A1: 4C 8B 44 24 38     mov         r8,qword ptr [rsp+38h]
  00000000000000A6: 48 8B 54 24 20     mov         rdx,qword ptr [rsp+20h]
  00000000000000AB: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000B0: E8 00 00 00 00     call        ??$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z
  00000000000000B5: 8B 44 24 2C        mov         eax,dword ptr [rsp+2Ch]
  00000000000000B9: 83 C8 01           or          eax,1
  00000000000000BC: 89 44 24 2C        mov         dword ptr [rsp+2Ch],eax
  00000000000000C0: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000C5: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000000CA: 48 33 CC           xor         rcx,rsp
  00000000000000CD: E8 00 00 00 00     call        __security_check_cookie
  00000000000000D2: 48 83 C4 68        add         rsp,68h
  00000000000000D6: C3                 ret

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

??$_UIntegral_to_buff@DI@std@@YAPEADPEADI@Z (char * __cdecl std::_UIntegral_to_buff<char,unsigned int>(char *,unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 18        sub         rsp,18h
  000000000000000D: 8B 44 24 28        mov         eax,dword ptr [rsp+28h]
  0000000000000011: 89 04 24           mov         dword ptr [rsp],eax
  0000000000000014: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000019: 48 FF C8           dec         rax
  000000000000001C: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000021: 33 D2              xor         edx,edx
  0000000000000023: 8B 04 24           mov         eax,dword ptr [rsp]
  0000000000000026: B9 0A 00 00 00     mov         ecx,0Ah
  000000000000002B: F7 F1              div         eax,ecx
  000000000000002D: 8B C2              mov         eax,edx
  000000000000002F: 83 C0 30           add         eax,30h
  0000000000000032: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000037: 88 01              mov         byte ptr [rcx],al
  0000000000000039: 33 D2              xor         edx,edx
  000000000000003B: 8B 04 24           mov         eax,dword ptr [rsp]
  000000000000003E: B9 0A 00 00 00     mov         ecx,0Ah
  0000000000000043: F7 F1              div         eax,ecx
  0000000000000045: 89 04 24           mov         dword ptr [rsp],eax
  0000000000000048: 83 3C 24 00        cmp         dword ptr [rsp],0
  000000000000004C: 75 C6              jne         0000000000000014
  000000000000004E: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000053: 48 83 C4 18        add         rsp,18h
  0000000000000057: C3                 ret

??$_UIntegral_to_buff@DK@std@@YAPEADPEADK@Z (char * __cdecl std::_UIntegral_to_buff<char,unsigned long>(char *,unsigned long)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 18        sub         rsp,18h
  000000000000000D: 8B 44 24 28        mov         eax,dword ptr [rsp+28h]
  0000000000000011: 89 04 24           mov         dword ptr [rsp],eax
  0000000000000014: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000019: 48 FF C8           dec         rax
  000000000000001C: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000021: 33 D2              xor         edx,edx
  0000000000000023: 8B 04 24           mov         eax,dword ptr [rsp]
  0000000000000026: B9 0A 00 00 00     mov         ecx,0Ah
  000000000000002B: F7 F1              div         eax,ecx
  000000000000002D: 8B C2              mov         eax,edx
  000000000000002F: 83 C0 30           add         eax,30h
  0000000000000032: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000037: 88 01              mov         byte ptr [rcx],al
  0000000000000039: 33 D2              xor         edx,edx
  000000000000003B: 8B 04 24           mov         eax,dword ptr [rsp]
  000000000000003E: B9 0A 00 00 00     mov         ecx,0Ah
  0000000000000043: F7 F1              div         eax,ecx
  0000000000000045: 89 04 24           mov         dword ptr [rsp],eax
  0000000000000048: 83 3C 24 00        cmp         dword ptr [rsp],0
  000000000000004C: 75 C6              jne         0000000000000014
  000000000000004E: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000053: 48 83 C4 18        add         rsp,18h
  0000000000000057: C3                 ret

??$_UIntegral_to_buff@D_K@std@@YAPEADPEAD_K@Z (char * __cdecl std::_UIntegral_to_buff<char,unsigned __int64>(char *,unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 18        sub         rsp,18h
  000000000000000E: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000013: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000017: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000001C: 48 FF C8           dec         rax
  000000000000001F: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000024: 33 D2              xor         edx,edx
  0000000000000026: 48 8B 04 24        mov         rax,qword ptr [rsp]
  000000000000002A: B9 0A 00 00 00     mov         ecx,0Ah
  000000000000002F: 48 F7 F1           div         rax,rcx
  0000000000000032: 48 8B C2           mov         rax,rdx
  0000000000000035: 48 83 C0 30        add         rax,30h
  0000000000000039: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000003E: 88 01              mov         byte ptr [rcx],al
  0000000000000040: 33 D2              xor         edx,edx
  0000000000000042: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000046: B9 0A 00 00 00     mov         ecx,0Ah
  000000000000004B: 48 F7 F1           div         rax,rcx
  000000000000004E: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000052: 48 83 3C 24 00     cmp         qword ptr [rsp],0
  0000000000000057: 75 BE              jne         0000000000000017
  0000000000000059: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000005E: 48 83 C4 18        add         rsp,18h
  0000000000000062: C3                 ret

??$_UIntegral_to_string@D_K@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@_K@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_UIntegral_to_string<char,unsigned __int64>(unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 68        sub         rsp,68h
  000000000000000E: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000000000015: 48 33 C4           xor         rax,rsp
  0000000000000018: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  000000000000001D: C7 44 24 24 00 00  mov         dword ptr [rsp+24h],0
                    00 00
  0000000000000025: 48 8D 4C 24 38     lea         rcx,[rsp+38h]
  000000000000002A: E8 00 00 00 00     call        ??$end@D$0BF@@std@@YAPEADAEAY0BF@D@Z
  000000000000002F: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000034: 48 8B 54 24 78     mov         rdx,qword ptr [rsp+78h]
  0000000000000039: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000003E: E8 00 00 00 00     call        ??$_UIntegral_to_buff@D_K@std@@YAPEADPEAD_K@Z
  0000000000000043: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000048: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000004D: E8 00 00 00 00     call        ??0?$allocator@D@std@@QEAA@XZ
  0000000000000052: 4C 8B C8           mov         r9,rax
  0000000000000055: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  000000000000005A: 48 8B 54 24 30     mov         rdx,qword ptr [rsp+30h]
  000000000000005F: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000064: E8 00 00 00 00     call        ??$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z
  0000000000000069: 8B 44 24 24        mov         eax,dword ptr [rsp+24h]
  000000000000006D: 83 C8 01           or          eax,1
  0000000000000070: 89 44 24 24        mov         dword ptr [rsp+24h],eax
  0000000000000074: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000079: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000007E: 48 33 CC           xor         rcx,rsp
  0000000000000081: E8 00 00 00 00     call        __security_check_cookie
  0000000000000086: 48 83 C4 68        add         rsp,68h
  000000000000008A: C3                 ret

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

??$end@D$0BF@@std@@YAPEADAEAY0BF@D@Z (char * __cdecl std::end<char,21>(char (&)[21])):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 83 C0 15        add         rax,15h
  000000000000000E: C3                 ret

??$endl@DU?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z (class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::endl<char,struct std::char_traits<char> >(class std::basic_ostream<char,struct std::char_traits<char> > &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000015: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001A: 48 03 C8           add         rcx,rax
  000000000000001D: 48 8B C1           mov         rax,rcx
  0000000000000020: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000025: B2 0A              mov         dl,0Ah
  0000000000000027: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000002C: E8 00 00 00 00     call        ?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z
  0000000000000031: 0F B6 D0           movzx       edx,al
  0000000000000034: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000039: E8 00 00 00 00     call        ?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z
  000000000000003E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000043: E8 00 00 00 00     call        ?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
  0000000000000048: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000004D: 48 83 C4 38        add         rsp,38h
  0000000000000051: C3                 ret

??$exchange@PEAV_Facet_base@std@@$$T@std@@YAPEAV_Facet_base@0@AEAPEAV10@$$QEA$$T@Z (class std::_Facet_base * __cdecl std::exchange<class std::_Facet_base *,std::nullptr_t>(class std::_Facet_base * &,std::nullptr_t &&)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 18        sub         rsp,18h
  000000000000000E: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000013: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000016: 48 89 04 24        mov         qword ptr [rsp],rax
  000000000000001A: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000001F: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000024: 48 8B 09           mov         rcx,qword ptr [rcx]
  0000000000000027: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002A: 48 8B 04 24        mov         rax,qword ptr [rsp]
  000000000000002E: 48 83 C4 18        add         rsp,18h
  0000000000000032: C3                 ret

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

??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z (class std::ctype<char> const & __cdecl std::use_facet<class std::ctype<char> >(class std::locale const &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 68        sub         rsp,68h
  0000000000000009: 33 D2              xor         edx,edx
  000000000000000B: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000010: E8 00 00 00 00     call        ??0_Lockit@std@@QEAA@H@Z
  0000000000000015: 90                 nop
  0000000000000016: 48 8B 05 00 00 00  mov         rax,qword ptr [?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB]
                    00
  000000000000001D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[?id@?$ctype@D@std@@2V0locale@2@A]
                    00
  0000000000000029: E8 00 00 00 00     call        ??Bid@locale@std@@QEAA_KXZ
  000000000000002E: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000033: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000038: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000003D: E8 00 00 00 00     call        ?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z
  0000000000000042: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000047: 48 83 7C 24 38 00  cmp         qword ptr [rsp+38h],0
  000000000000004D: 0F 85 90 00 00 00  jne         00000000000000E3
  0000000000000053: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  0000000000000059: 74 0C              je          0000000000000067
  000000000000005B: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000060: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000065: EB 7C              jmp         00000000000000E3
  0000000000000067: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  000000000000006C: 48 8D 4C 24 28     lea         rcx,[rsp+28h]
  0000000000000071: E8 00 00 00 00     call        ?_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z
  0000000000000076: 48 83 F8 FF        cmp         rax,0FFFFFFFFFFFFFFFFh
  000000000000007A: 75 08              jne         0000000000000084
  000000000000007C: E8 00 00 00 00     call        ?_Throw_bad_cast@std@@YAXXZ
  0000000000000081: 90                 nop
  0000000000000082: EB 5F              jmp         00000000000000E3
  0000000000000084: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000089: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000008E: 48 8B 54 24 30     mov         rdx,qword ptr [rsp+30h]
  0000000000000093: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000000000098: E8 00 00 00 00     call        ??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z
  000000000000009D: 90                 nop
  000000000000009E: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  00000000000000A3: E8 00 00 00 00     call        ?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z
  00000000000000A8: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000AD: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000000B0: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  00000000000000B5: FF 50 08           call        qword ptr [rax+8]
  00000000000000B8: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000BD: 48 89 05 00 00 00  mov         qword ptr [?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB],rax
                    00
  00000000000000C4: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000C9: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  00000000000000CE: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  00000000000000D3: E8 00 00 00 00     call        ?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ
  00000000000000D8: 90                 nop
  00000000000000D9: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  00000000000000DE: E8 00 00 00 00     call        ??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ
  00000000000000E3: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  00000000000000E8: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  00000000000000ED: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  00000000000000F2: E8 00 00 00 00     call        ??1_Lockit@std@@QEAA@XZ
  00000000000000F7: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  00000000000000FC: 48 83 C4 68        add         rsp,68h
  0000000000000100: C3                 ret

?dtor$0@?0???$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z@4HA (int `class dtor$0::ctype<char> const & __cdecl std::use_facet<class std::ctype<char> >(class dtor$0::locale const &)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 4D 20        lea         rcx,[rbp+20h]
  000000000000000D: E8 00 00 00 00     call        ??1_Lockit@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

?dtor$1@?0???$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z@4HA (int `class dtor$1::ctype<char> const & __cdecl std::use_facet<class std::ctype<char> >(class dtor$1::locale const &)'::`1'::dtor$1):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 4D 40        lea         rcx,[rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

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

??0?$_Yarn@D@std@@QEAA@XZ (public: __cdecl std::_Yarn<char>::_Yarn<char>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 C7 00 00 00 00  mov         qword ptr [rax],0
                    00
  0000000000000011: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000016: C6 40 08 00        mov         byte ptr [rax+8],0
  000000000000001A: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000001F: C3                 ret

??0?$_Yarn@_W@std@@QEAA@XZ (public: __cdecl std::_Yarn<wchar_t>::_Yarn<wchar_t>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 C7 00 00 00 00  mov         qword ptr [rax],0
                    00
  0000000000000011: 33 C0              xor         eax,eax
  0000000000000013: 48 8B 4C 24 08     mov         rcx,qword ptr [rsp+8]
  0000000000000018: 66 89 41 08        mov         word ptr [rcx+8],ax
  000000000000001C: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000021: C3                 ret

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

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 58        sub         rsp,58h
  000000000000000E: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000013: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000018: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  000000000000001D: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ
  0000000000000022: 48 8B D0           mov         rdx,rax
  0000000000000025: 48 8D 4C 24 21     lea         rcx,[rsp+21h]
  000000000000002A: E8 00 00 00 00     call        ?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z
  000000000000002F: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000034: 0F B6 44 24 22     movzx       eax,byte ptr [rsp+22h]
  0000000000000039: 88 44 24 20        mov         byte ptr [rsp+20h],al
  000000000000003D: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  0000000000000042: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  0000000000000047: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000004C: E8 00 00 00 00     call        ??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z
  0000000000000051: 90                 nop
  0000000000000052: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  0000000000000057: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  000000000000005B: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000060: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  0000000000000065: 48 8B C8           mov         rcx,rax
  0000000000000068: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
  000000000000006D: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000072: 4C 8B 44 24 38     mov         r8,qword ptr [rsp+38h]
  0000000000000077: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  000000000000007C: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000081: E8 00 00 00 00     call        ??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
  0000000000000086: 90                 nop
  0000000000000087: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  000000000000008C: 48 83 C4 58        add         rsp,58h
  0000000000000090: C3                 ret

?dtor$0@?0???0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z@4HA (int `public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(class basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::dtor$0 const &)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 60        mov         rcx,qword ptr [rbp+60h]
  000000000000000D: E8 00 00 00 00     call        ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000018: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  000000000000001D: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000022: E8 00 00 00 00     call        ??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
  0000000000000027: 90                 nop
  0000000000000028: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002D: E8 00 00 00 00     call        ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
  0000000000000032: 48 8B C8           mov         rcx,rax
  0000000000000035: E8 00 00 00 00     call        ??$_Convert_size@_K_K@std@@YA_K_K@Z
  000000000000003A: 4C 8B C0           mov         r8,rax
  000000000000003D: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000042: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000047: E8 00 00 00 00     call        ??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
  000000000000004C: 90                 nop
  000000000000004D: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000052: 48 83 C4 38        add         rsp,38h
  0000000000000056: C3                 ret

?dtor$0@?0???0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z@4HA (int `public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000018: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000001D: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  0000000000000022: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000027: E8 00 00 00 00     call        ??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
  000000000000002C: 90                 nop
  000000000000002D: 4C 8B 44 24 50     mov         r8,qword ptr [rsp+50h]
  0000000000000032: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000037: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000003C: E8 00 00 00 00     call        ??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
  0000000000000041: 90                 nop
  0000000000000042: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000047: 48 83 C4 38        add         rsp,38h
  000000000000004B: C3                 ret

?dtor$0@?0???0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z@4HA (int `public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const,unsigned __int64)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(unsigned __int64,char)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000018: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000001D: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  0000000000000022: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000027: E8 00 00 00 00     call        ??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
  000000000000002C: 90                 nop
  000000000000002D: 4C 8B 44 24 48     mov         r8,qword ptr [rsp+48h]
  0000000000000032: 0F B6 54 24 50     movzx       edx,byte ptr [rsp+50h]
  0000000000000037: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000003C: E8 00 00 00 00     call        ??$_Construct@$0A@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXD_K@Z
  0000000000000041: 90                 nop
  0000000000000042: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000047: 48 83 C4 38        add         rsp,38h
  000000000000004B: C3                 ret

?dtor$0@?0???0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z@4HA (int `public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(unsigned __int64,char)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

??0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z (public: __cdecl std::ctype<char>::ctype<char>(class std::_Locinfo const &,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000018: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001D: E8 00 00 00 00     call        ??0ctype_base@std@@QEAA@_K@Z
  0000000000000022: 90                 nop
  0000000000000023: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000028: 48 8D 0D 00 00 00  lea         rcx,[??_7?$ctype@D@std@@6B@]
                    00
  000000000000002F: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000032: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000037: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000003C: E8 00 00 00 00     call        ?_Init@?$ctype@D@std@@IEAAXAEBV_Locinfo@2@@Z
  0000000000000041: 90                 nop
  0000000000000042: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000047: 48 83 C4 28        add         rsp,28h
  000000000000004B: C3                 ret

?dtor$0@?0???0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z@4HA (int `public: __cdecl std::ctype<char>::ctype<char>(class ctype<char>::_Locinfo const &,unsigned __int64)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 30        mov         rcx,qword ptr [rbp+30h]
  000000000000000D: E8 00 00 00 00     call        ??1ctype_base@std@@UEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

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

??0_Facet_base@std@@QEAA@XZ (public: __cdecl std::_Facet_base::_Facet_base(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8D 0D 00 00 00  lea         rcx,[??_7_Facet_base@std@@6B@]
                    00
  0000000000000011: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000014: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000019: C3                 ret

??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z (public: __cdecl std::_Fake_proxy_ptr_impl::_Fake_proxy_ptr_impl(struct std::_Fake_allocator const &,struct std::_Container_base0 const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000014: C3                 ret

??0_Locinfo@std@@QEAA@PEBD@Z (public: __cdecl std::_Locinfo::_Locinfo(char const *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000018: 33 D2              xor         edx,edx
  000000000000001A: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000001F: E8 00 00 00 00     call        ??0_Lockit@std@@QEAA@H@Z
  0000000000000024: 90                 nop
  0000000000000025: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000002A: 48 83 C0 08        add         rax,8
  000000000000002E: 48 8B C8           mov         rcx,rax
  0000000000000031: E8 00 00 00 00     call        ??0?$_Yarn@D@std@@QEAA@XZ
  0000000000000036: 90                 nop
  0000000000000037: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000003C: 48 83 C0 18        add         rax,18h
  0000000000000040: 48 8B C8           mov         rcx,rax
  0000000000000043: E8 00 00 00 00     call        ??0?$_Yarn@D@std@@QEAA@XZ
  0000000000000048: 90                 nop
  0000000000000049: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000004E: 48 83 C0 28        add         rax,28h
  0000000000000052: 48 8B C8           mov         rcx,rax
  0000000000000055: E8 00 00 00 00     call        ??0?$_Yarn@_W@std@@QEAA@XZ
  000000000000005A: 90                 nop
  000000000000005B: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000060: 48 83 C0 38        add         rax,38h
  0000000000000064: 48 8B C8           mov         rcx,rax
  0000000000000067: E8 00 00 00 00     call        ??0?$_Yarn@_W@std@@QEAA@XZ
  000000000000006C: 90                 nop
  000000000000006D: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000072: 48 83 C0 48        add         rax,48h
  0000000000000076: 48 8B C8           mov         rcx,rax
  0000000000000079: E8 00 00 00 00     call        ??0?$_Yarn@D@std@@QEAA@XZ
  000000000000007E: 90                 nop
  000000000000007F: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000084: 48 83 C0 58        add         rax,58h
  0000000000000088: 48 8B C8           mov         rcx,rax
  000000000000008B: E8 00 00 00 00     call        ??0?$_Yarn@D@std@@QEAA@XZ
  0000000000000090: 90                 nop
  0000000000000091: 48 83 7C 24 48 00  cmp         qword ptr [rsp+48h],0
  0000000000000097: 74 11              je          00000000000000AA
  0000000000000099: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000009E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000A3: E8 00 00 00 00     call        ?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z
  00000000000000A8: EB 0D              jmp         00000000000000B7
  00000000000000AA: 48 8D 0D 00 00 00  lea         rcx,[??_C@_0BA@ELKIONDK@bad?5locale?5name@]
                    00
  00000000000000B1: E8 00 00 00 00     call        ?_Xruntime_error@std@@YAXPEBD@Z
  00000000000000B6: 90                 nop
  00000000000000B7: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000BC: 48 83 C4 38        add         rsp,38h
  00000000000000C0: C3                 ret

?dtor$0@?0???0_Locinfo@std@@QEAA@PEBD@Z@4HA (int `public: __cdecl std::_Locinfo::_Locinfo(char const *)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1_Lockit@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

?dtor$1@?0???0_Locinfo@std@@QEAA@PEBD@Z@4HA (int `public: __cdecl std::_Locinfo::_Locinfo(char const *)'::`1'::dtor$1):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: 48 83 C1 08        add         rcx,8
  0000000000000011: E8 00 00 00 00     call        ??1?$_Yarn@D@std@@QEAA@XZ
  0000000000000016: 48 83 C4 20        add         rsp,20h
  000000000000001A: 5D                 pop         rbp
  000000000000001B: C3                 ret

?dtor$2@?0???0_Locinfo@std@@QEAA@PEBD@Z@4HA (int `public: __cdecl std::_Locinfo::_Locinfo(char const *)'::`1'::dtor$2):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: 48 83 C1 18        add         rcx,18h
  0000000000000011: E8 00 00 00 00     call        ??1?$_Yarn@D@std@@QEAA@XZ
  0000000000000016: 48 83 C4 20        add         rsp,20h
  000000000000001A: 5D                 pop         rbp
  000000000000001B: C3                 ret

?dtor$3@?0???0_Locinfo@std@@QEAA@PEBD@Z@4HA (int `public: __cdecl std::_Locinfo::_Locinfo(char const *)'::`1'::dtor$3):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: 48 83 C1 28        add         rcx,28h
  0000000000000011: E8 00 00 00 00     call        ??1?$_Yarn@_W@std@@QEAA@XZ
  0000000000000016: 48 83 C4 20        add         rsp,20h
  000000000000001A: 5D                 pop         rbp
  000000000000001B: C3                 ret

?dtor$4@?0???0_Locinfo@std@@QEAA@PEBD@Z@4HA (int `public: __cdecl std::_Locinfo::_Locinfo(char const *)'::`1'::dtor$4):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: 48 83 C1 38        add         rcx,38h
  0000000000000011: E8 00 00 00 00     call        ??1?$_Yarn@_W@std@@QEAA@XZ
  0000000000000016: 48 83 C4 20        add         rsp,20h
  000000000000001A: 5D                 pop         rbp
  000000000000001B: C3                 ret

?dtor$5@?0???0_Locinfo@std@@QEAA@PEBD@Z@4HA (int `public: __cdecl std::_Locinfo::_Locinfo(char const *)'::`1'::dtor$5):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: 48 83 C1 48        add         rcx,48h
  0000000000000011: E8 00 00 00 00     call        ??1?$_Yarn@D@std@@QEAA@XZ
  0000000000000016: 48 83 C4 20        add         rsp,20h
  000000000000001A: 5D                 pop         rbp
  000000000000001B: C3                 ret

?dtor$6@?0???0_Locinfo@std@@QEAA@PEBD@Z@4HA (int `public: __cdecl std::_Locinfo::_Locinfo(char const *)'::`1'::dtor$6):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: 48 83 C1 58        add         rcx,58h
  0000000000000011: E8 00 00 00 00     call        ??1?$_Yarn@D@std@@QEAA@XZ
  0000000000000016: 48 83 C4 20        add         rsp,20h
  000000000000001A: 5D                 pop         rbp
  000000000000001B: C3                 ret

??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Sentry_base::_Sentry_base(class std::basic_ostream<char,struct std::char_traits<char> > &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000018: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001B: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000020: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000023: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000028: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000002D: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000030: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000034: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000039: 48 03 C8           add         rcx,rax
  000000000000003C: 48 8B C1           mov         rax,rcx
  000000000000003F: 48 8B C8           mov         rcx,rax
  0000000000000042: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000047: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000004C: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  0000000000000052: 74 10              je          0000000000000064
  0000000000000054: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000059: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000005C: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000061: FF 50 08           call        qword ptr [rax+8]
  0000000000000064: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000069: 48 83 C4 38        add         rsp,38h
  000000000000006D: C3                 ret

??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z (protected: __cdecl std::_System_error::_System_error(class std::error_code,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 56                 push        rsi
  0000000000000010: 57                 push        rdi
  0000000000000011: 48 81 EC C8 00 00  sub         rsp,0C8h
                    00
  0000000000000018: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000000000001F: 48 33 C4           xor         rax,rsp
  0000000000000022: 48 89 84 24 B0 00  mov         qword ptr [rsp+0B0h],rax
                    00 00
  000000000000002A: 48 8D 44 24 70     lea         rax,[rsp+70h]
  000000000000002F: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000034: 48 8B 94 24 F0 00  mov         rdx,qword ptr [rsp+0F0h]
                    00 00
  000000000000003C: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000041: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z
  0000000000000046: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000004B: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000050: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000055: 48 8D 44 24 48     lea         rax,[rsp+48h]
  000000000000005A: 48 8B F8           mov         rdi,rax
  000000000000005D: 48 8B B4 24 E8 00  mov         rsi,qword ptr [rsp+0E8h]
                    00 00
  0000000000000065: B9 10 00 00 00     mov         ecx,10h
  000000000000006A: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  000000000000006C: 48 8D 44 24 60     lea         rax,[rsp+60h]
  0000000000000071: 48 8D 4C 24 48     lea         rcx,[rsp+48h]
  0000000000000076: 48 8B F8           mov         rdi,rax
  0000000000000079: 48 8B F1           mov         rsi,rcx
  000000000000007C: B9 10 00 00 00     mov         ecx,10h
  0000000000000081: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  0000000000000083: 4C 8B 44 24 30     mov         r8,qword ptr [rsp+30h]
  0000000000000088: 48 8D 54 24 60     lea         rdx,[rsp+60h]
  000000000000008D: 48 8D 8C 24 90 00  lea         rcx,[rsp+90h]
                    00 00
  0000000000000095: E8 00 00 00 00     call        ?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z
  000000000000009A: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  000000000000009F: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  00000000000000A4: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  00000000000000A9: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  00000000000000AE: 48 8B 8C 24 E0 00  mov         rcx,qword ptr [rsp+0E0h]
                    00 00
  00000000000000B6: E8 00 00 00 00     call        ??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
  00000000000000BB: 90                 nop
  00000000000000BC: 48 8D 8C 24 90 00  lea         rcx,[rsp+90h]
                    00 00
  00000000000000C4: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  00000000000000C9: 48 8B 84 24 E0 00  mov         rax,qword ptr [rsp+0E0h]
                    00 00
  00000000000000D1: 48 8D 0D 00 00 00  lea         rcx,[??_7_System_error@std@@6B@]
                    00
  00000000000000D8: 48 89 08           mov         qword ptr [rax],rcx
  00000000000000DB: 48 8B 84 24 E0 00  mov         rax,qword ptr [rsp+0E0h]
                    00 00
  00000000000000E3: 48 8D 78 18        lea         rdi,[rax+18h]
  00000000000000E7: 48 8B B4 24 E8 00  mov         rsi,qword ptr [rsp+0E8h]
                    00 00
  00000000000000EF: B9 10 00 00 00     mov         ecx,10h
  00000000000000F4: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  00000000000000F6: 48 8B 84 24 E0 00  mov         rax,qword ptr [rsp+0E0h]
                    00 00
  00000000000000FE: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000106: 48 33 CC           xor         rcx,rsp
  0000000000000109: E8 00 00 00 00     call        __security_check_cookie
  000000000000010E: 48 81 C4 C8 00 00  add         rsp,0C8h
                    00
  0000000000000115: 5F                 pop         rdi
  0000000000000116: 5E                 pop         rsi
  0000000000000117: C3                 ret

?dtor$1@?0???0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z@4HA (int `protected: __cdecl std::_System_error::_System_error(class _System_error::error_code,class _System_error::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)'::`1'::dtor$1):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 8D 90 00 00  lea         rcx,[rbp+90h]
                    00
  0000000000000010: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000015: 48 83 C4 20        add         rsp,20h
  0000000000000019: 5D                 pop         rbp
  000000000000001A: C3                 ret

??0_System_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::_System_error::_System_error(class std::_System_error const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 56                 push        rsi
  000000000000000B: 57                 push        rdi
  000000000000000C: 48 83 EC 28        sub         rsp,28h
  0000000000000010: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000015: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001A: E8 00 00 00 00     call        ??0runtime_error@std@@QEAA@AEBV01@@Z
  000000000000001F: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000024: 48 8D 0D 00 00 00  lea         rcx,[??_7_System_error@std@@6B@]
                    00
  000000000000002B: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000033: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000038: 48 8D 78 18        lea         rdi,[rax+18h]
  000000000000003C: 48 8D 71 18        lea         rsi,[rcx+18h]
  0000000000000040: B9 10 00 00 00     mov         ecx,10h
  0000000000000045: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  0000000000000047: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000004C: 48 83 C4 28        add         rsp,28h
  0000000000000050: 5F                 pop         rdi
  0000000000000051: 5E                 pop         rsi
  0000000000000052: C3                 ret

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

??0bad_cast@std@@QEAA@AEBV01@@Z (public: __cdecl std::bad_cast::bad_cast(class std::bad_cast const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0exception@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_cast@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0bad_cast@std@@QEAA@XZ (public: __cdecl std::bad_cast::bad_cast(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 41 B8 01 00 00 00  mov         r8d,1
  000000000000000F: 48 8D 15 00 00 00  lea         rdx,[??_C@_08EPJLHIJG@bad?5cast@]
                    00
  0000000000000016: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001B: E8 00 00 00 00     call        ??0exception@std@@QEAA@QEBDH@Z
  0000000000000020: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000025: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_cast@std@@6B@]
                    00
  000000000000002C: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000034: 48 83 C4 28        add         rsp,28h
  0000000000000038: C3                 ret

??0ctype_base@std@@QEAA@_K@Z (public: __cdecl std::ctype_base::ctype_base(unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0facet@locale@std@@IEAA@_K@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7ctype_base@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0error_code@std@@QEAA@HAEBVerror_category@1@@Z (public: __cdecl std::error_code::error_code(int,class std::error_category const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000013: 8B 4C 24 10        mov         ecx,dword ptr [rsp+10h]
  0000000000000017: 89 08              mov         dword ptr [rax],ecx
  0000000000000019: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000001E: 48 8B 4C 24 18     mov         rcx,qword ptr [rsp+18h]
  0000000000000023: 48 89 48 08        mov         qword ptr [rax+8],rcx
  0000000000000027: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000002C: C3                 ret

??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z (public: __cdecl std::error_condition::error_condition(int,class std::error_category const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000013: 8B 4C 24 10        mov         ecx,dword ptr [rsp+10h]
  0000000000000017: 89 08              mov         dword ptr [rax],ecx
  0000000000000019: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000001E: 48 8B 4C 24 18     mov         rcx,qword ptr [rsp+18h]
  0000000000000023: 48 89 48 08        mov         qword ptr [rax+8],rcx
  0000000000000027: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000002C: C3                 ret

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

??0facet@locale@std@@IEAA@_K@Z (protected: __cdecl std::locale::facet::facet(unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000013: E8 00 00 00 00     call        ??0_Facet_base@std@@QEAA@XZ
  0000000000000018: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001D: 48 8D 0D 00 00 00  lea         rcx,[??_7facet@locale@std@@6B@]
                    00
  0000000000000024: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000027: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002C: 8B 4C 24 38        mov         ecx,dword ptr [rsp+38h]
  0000000000000030: 89 48 08           mov         dword ptr [rax+8],ecx
  0000000000000033: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000038: 48 83 C4 28        add         rsp,28h
  000000000000003C: C3                 ret

??0failure@ios_base@std@@QEAA@AEBV012@@Z (public: __cdecl std::ios_base::failure::failure(class std::ios_base::failure const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0system_error@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7failure@ios_base@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z (public: __cdecl std::ios_base::failure::failure(char const *,class std::error_code const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 56                 push        rsi
  0000000000000010: 57                 push        rdi
  0000000000000011: 48 83 EC 38        sub         rsp,38h
  0000000000000015: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000000000001A: 48 8B F8           mov         rdi,rax
  000000000000001D: 48 8B 74 24 60     mov         rsi,qword ptr [rsp+60h]
  0000000000000022: B9 10 00 00 00     mov         ecx,10h
  0000000000000027: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  0000000000000029: 4C 8B 44 24 58     mov         r8,qword ptr [rsp+58h]
  000000000000002E: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000033: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000038: E8 00 00 00 00     call        ??0system_error@std@@QEAA@Verror_code@1@PEBD@Z
  000000000000003D: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000042: 48 8D 0D 00 00 00  lea         rcx,[??_7failure@ios_base@std@@6B@]
                    00
  0000000000000049: 48 89 08           mov         qword ptr [rax],rcx
  000000000000004C: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000051: 48 83 C4 38        add         rsp,38h
  0000000000000055: 5F                 pop         rdi
  0000000000000056: 5E                 pop         rsi
  0000000000000057: C3                 ret

??0locale@std@@QEAA@AEBV01@@Z (public: __cdecl std::locale::locale(class std::locale const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000013: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000018: 48 8B 49 08        mov         rcx,qword ptr [rcx+8]
  000000000000001C: 48 89 48 08        mov         qword ptr [rax+8],rcx
  0000000000000020: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000025: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  0000000000000029: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002E: 48 8B 49 08        mov         rcx,qword ptr [rcx+8]
  0000000000000032: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000035: FF 50 08           call        qword ptr [rax+8]
  0000000000000038: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000003D: 48 83 C4 28        add         rsp,28h
  0000000000000041: C3                 ret

??0runtime_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::runtime_error::runtime_error(class std::runtime_error const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0exception@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7runtime_error@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z (public: __cdecl std::runtime_error::runtime_error(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000013: E8 00 00 00 00     call        ?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ
  0000000000000018: 48 8B D0           mov         rdx,rax
  000000000000001B: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000020: E8 00 00 00 00     call        ??0exception@std@@QEAA@QEBD@Z
  0000000000000025: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002A: 48 8D 0D 00 00 00  lea         rcx,[??_7runtime_error@std@@6B@]
                    00
  0000000000000031: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000034: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000039: 48 83 C4 28        add         rsp,28h
  000000000000003D: C3                 ret

??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::sentry(class std::basic_ostream<char,struct std::char_traits<char> > &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000013: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000018: E8 00 00 00 00     call        ??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
  000000000000001D: 90                 nop
  000000000000001E: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000023: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000026: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000002A: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002F: 48 03 C8           add         rcx,rax
  0000000000000032: 48 8B C1           mov         rax,rcx
  0000000000000035: 48 8B C8           mov         rcx,rax
  0000000000000038: E8 00 00 00 00     call        ?good@ios_base@std@@QEBA_NXZ
  000000000000003D: 0F B6 C0           movzx       eax,al
  0000000000000040: 85 C0              test        eax,eax
  0000000000000042: 75 0B              jne         000000000000004F
  0000000000000044: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000049: C6 40 08 00        mov         byte ptr [rax+8],0
  000000000000004D: EB 74              jmp         00000000000000C3
  000000000000004F: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000054: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000057: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000005B: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000060: 48 03 C8           add         rcx,rax
  0000000000000063: 48 8B C1           mov         rax,rcx
  0000000000000066: 48 8B C8           mov         rcx,rax
  0000000000000069: E8 00 00 00 00     call        ?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ
  000000000000006E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000073: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  0000000000000079: 74 0C              je          0000000000000087
  000000000000007B: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000080: 48 39 44 24 20     cmp         qword ptr [rsp+20h],rax
  0000000000000085: 75 0B              jne         0000000000000092
  0000000000000087: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000008C: C6 40 08 01        mov         byte ptr [rax+8],1
  0000000000000090: EB 31              jmp         00000000000000C3
  0000000000000092: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000097: E8 00 00 00 00     call        ?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
  000000000000009C: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  00000000000000A1: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000000A4: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  00000000000000A8: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000AD: 48 03 C8           add         rcx,rax
  00000000000000B0: 48 8B C1           mov         rax,rcx
  00000000000000B3: 48 8B C8           mov         rcx,rax
  00000000000000B6: E8 00 00 00 00     call        ?good@ios_base@std@@QEBA_NXZ
  00000000000000BB: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000C0: 88 41 08           mov         byte ptr [rcx+8],al
  00000000000000C3: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000C8: 48 83 C4 38        add         rsp,38h
  00000000000000CC: C3                 ret

?dtor$0@?0???0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z@4HA (int `public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::sentry(class basic_ostream<char,struct std::char_traits<char> >::sentry &)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 4D 40        mov         rcx,qword ptr [rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

??0system_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::system_error::system_error(class std::system_error const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0_System_error@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7system_error@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0system_error@std@@QEAA@Verror_code@1@PEBD@Z (public: __cdecl std::system_error::system_error(class std::error_code,char const *)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 56                 push        rsi
  0000000000000010: 57                 push        rdi
  0000000000000011: 48 83 EC 68        sub         rsp,68h
  0000000000000015: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000000000001C: 48 33 C4           xor         rax,rsp
  000000000000001F: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  0000000000000024: 48 8B 94 24 90 00  mov         rdx,qword ptr [rsp+90h]
                    00 00
  000000000000002C: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  0000000000000031: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  0000000000000036: 90                 nop
  0000000000000037: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000000000003C: 48 8B F8           mov         rdi,rax
  000000000000003F: 48 8B B4 24 88 00  mov         rsi,qword ptr [rsp+88h]
                    00 00
  0000000000000047: B9 10 00 00 00     mov         ecx,10h
  000000000000004C: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  000000000000004E: 4C 8D 44 24 30     lea         r8,[rsp+30h]
  0000000000000053: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000058: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  0000000000000060: E8 00 00 00 00     call        ??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
  0000000000000065: 90                 nop
  0000000000000066: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  000000000000006B: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000070: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  0000000000000078: 48 8D 0D 00 00 00  lea         rcx,[??_7system_error@std@@6B@]
                    00
  000000000000007F: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000082: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  000000000000008A: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000008F: 48 33 CC           xor         rcx,rsp
  0000000000000092: E8 00 00 00 00     call        __security_check_cookie
  0000000000000097: 48 83 C4 68        add         rsp,68h
  000000000000009B: 5F                 pop         rdi
  000000000000009C: 5E                 pop         rsi
  000000000000009D: C3                 ret

?dtor$0@?0???0system_error@std@@QEAA@Verror_code@1@PEBD@Z@4HA (int `public: __cdecl std::system_error::system_error(class system_error::error_code,char const *)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 4D 30        lea         rcx,[rbp+30h]
  000000000000000D: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

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

??1?$_Yarn@D@std@@QEAA@XZ (public: __cdecl std::_Yarn<char>::~_Yarn<char>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ?_Tidy@?$_Yarn@D@std@@AEAAXXZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??1?$_Yarn@_W@std@@QEAA@XZ (public: __cdecl std::_Yarn<wchar_t>::~_Yarn<wchar_t>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ?_Tidy@?$_Yarn@_W@std@@AEAAXXZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

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

??1?$ctype@D@std@@MEAA@XZ (protected: virtual __cdecl std::ctype<char>::~ctype<char>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8D 0D 00 00 00  lea         rcx,[??_7?$ctype@D@std@@6B@]
                    00
  0000000000000015: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000018: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001D: E8 00 00 00 00     call        ?_Tidy@?$ctype@D@std@@IEAAXXZ
  0000000000000022: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000027: E8 00 00 00 00     call        ??1ctype_base@std@@UEAA@XZ
  000000000000002C: 48 83 C4 28        add         rsp,28h
  0000000000000030: C3                 ret

??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ (public: __cdecl std::unique_ptr<class std::_Facet_base,struct std::default_delete<class std::_Facet_base> >::~unique_ptr<class std::_Facet_base,struct std::default_delete<class std::_Facet_base> >(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000012: 74 2E              je          0000000000000042
  0000000000000014: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000019: 48 8B C8           mov         rcx,rax
  000000000000001C: E8 00 00 00 00     call        ?_Get_first@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAAAEAU?$default_delete@V_Facet_base@std@@@2@XZ
  0000000000000021: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000026: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000002B: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000033: 48 8B 54 24 20     mov         rdx,qword ptr [rsp+20h]
  0000000000000038: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000003D: E8 00 00 00 00     call        ??R?$default_delete@V_Facet_base@std@@@std@@QEBAXPEAV_Facet_base@1@@Z
  0000000000000042: 48 83 C4 38        add         rsp,38h
  0000000000000046: C3                 ret

??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::~_Bxty(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

??1_Facet_base@std@@UEAA@XZ (public: virtual __cdecl std::_Facet_base::~_Facet_base(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8D 0D 00 00 00  lea         rcx,[??_7_Facet_base@std@@6B@]
                    00
  0000000000000011: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000014: C3                 ret

??1_Iostream_error_category2@std@@UEAA@XZ (public: virtual __cdecl std::_Iostream_error_category2::~_Iostream_error_category2(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1error_category@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??1_Locinfo@std@@QEAA@XZ (public: __cdecl std::_Locinfo::~_Locinfo(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ?_Locinfo_dtor@_Locinfo@std@@SAXPEAV12@@Z
  0000000000000013: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000018: 48 83 C0 58        add         rax,58h
  000000000000001C: 48 8B C8           mov         rcx,rax
  000000000000001F: E8 00 00 00 00     call        ??1?$_Yarn@D@std@@QEAA@XZ
  0000000000000024: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000029: 48 83 C0 48        add         rax,48h
  000000000000002D: 48 8B C8           mov         rcx,rax
  0000000000000030: E8 00 00 00 00     call        ??1?$_Yarn@D@std@@QEAA@XZ
  0000000000000035: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000003A: 48 83 C0 38        add         rax,38h
  000000000000003E: 48 8B C8           mov         rcx,rax
  0000000000000041: E8 00 00 00 00     call        ??1?$_Yarn@_W@std@@QEAA@XZ
  0000000000000046: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000004B: 48 83 C0 28        add         rax,28h
  000000000000004F: 48 8B C8           mov         rcx,rax
  0000000000000052: E8 00 00 00 00     call        ??1?$_Yarn@_W@std@@QEAA@XZ
  0000000000000057: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000005C: 48 83 C0 18        add         rax,18h
  0000000000000060: 48 8B C8           mov         rcx,rax
  0000000000000063: E8 00 00 00 00     call        ??1?$_Yarn@D@std@@QEAA@XZ
  0000000000000068: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000006D: 48 83 C0 08        add         rax,8
  0000000000000071: 48 8B C8           mov         rcx,rax
  0000000000000074: E8 00 00 00 00     call        ??1?$_Yarn@D@std@@QEAA@XZ
  0000000000000079: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000007E: 48 8B C8           mov         rcx,rax
  0000000000000081: E8 00 00 00 00     call        ??1_Lockit@std@@QEAA@XZ
  0000000000000086: 90                 nop
  0000000000000087: 48 83 C4 28        add         rsp,28h
  000000000000008B: C3                 ret

??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Sentry_base::~_Sentry_base(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000016: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000001B: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001E: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000022: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000027: 48 03 C8           add         rcx,rax
  000000000000002A: 48 8B C1           mov         rax,rcx
  000000000000002D: 48 8B C8           mov         rcx,rax
  0000000000000030: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000035: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003A: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  0000000000000040: 74 11              je          0000000000000053
  0000000000000042: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000047: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000004A: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000004F: FF 50 10           call        qword ptr [rax+10h]
  0000000000000052: 90                 nop
  0000000000000053: 48 83 C4 38        add         rsp,38h
  0000000000000057: C3                 ret

??1_System_error@std@@UEAA@XZ (public: virtual __cdecl std::_System_error::~_System_error(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1runtime_error@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

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

??1bad_cast@std@@UEAA@XZ (public: virtual __cdecl std::bad_cast::~bad_cast(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1exception@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??1ctype_base@std@@UEAA@XZ (public: virtual __cdecl std::ctype_base::~ctype_base(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8D 0D 00 00 00  lea         rcx,[??_7ctype_base@std@@6B@]
                    00
  0000000000000015: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000018: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001D: E8 00 00 00 00     call        ??1facet@locale@std@@MEAA@XZ
  0000000000000022: 48 83 C4 28        add         rsp,28h
  0000000000000026: C3                 ret

??1error_category@std@@UEAA@XZ (public: virtual __cdecl std::error_category::~error_category(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

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

??1facet@locale@std@@MEAA@XZ (protected: virtual __cdecl std::locale::facet::~facet(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8D 0D 00 00 00  lea         rcx,[??_7facet@locale@std@@6B@]
                    00
  0000000000000015: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000018: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001D: E8 00 00 00 00     call        ??1_Facet_base@std@@UEAA@XZ
  0000000000000022: 48 83 C4 28        add         rsp,28h
  0000000000000026: C3                 ret

??1failure@ios_base@std@@UEAA@XZ (public: virtual __cdecl std::ios_base::failure::~failure(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1system_error@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??1locale@std@@QEAA@XZ (public: __cdecl std::locale::~locale(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 48        sub         rsp,48h
  0000000000000009: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000000E: 48 83 78 08 00     cmp         qword ptr [rax+8],0
  0000000000000013: 74 53              je          0000000000000068
  0000000000000015: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000001A: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000001E: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000023: 48 8B 49 08        mov         rcx,qword ptr [rcx+8]
  0000000000000027: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002A: FF 50 10           call        qword ptr [rax+10h]
  000000000000002D: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000032: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  0000000000000038: 74 25              je          000000000000005F
  000000000000003A: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000003F: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000042: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000045: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000004A: BA 01 00 00 00     mov         edx,1
  000000000000004F: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000054: FF 54 24 28        call        qword ptr [rsp+28h]
  0000000000000058: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000005D: EB 09              jmp         0000000000000068
  000000000000005F: 48 C7 44 24 30 00  mov         qword ptr [rsp+30h],0
                    00 00 00
  0000000000000068: 48 83 C4 48        add         rsp,48h
  000000000000006C: C3                 ret

??1runtime_error@std@@UEAA@XZ (public: virtual __cdecl std::runtime_error::~runtime_error(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1exception@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::~sentry(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: E8 00 00 00 00     call        ?uncaught_exceptions@std@@YAHXZ
  000000000000000E: 85 C0              test        eax,eax
  0000000000000010: 75 07              jne         0000000000000019
  0000000000000012: C6 44 24 20 01     mov         byte ptr [rsp+20h],1
  0000000000000017: EB 05              jmp         000000000000001E
  0000000000000019: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  000000000000001E: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000023: 88 44 24 21        mov         byte ptr [rsp+21h],al
  0000000000000027: 0F B6 44 24 21     movzx       eax,byte ptr [rsp+21h]
  000000000000002C: 85 C0              test        eax,eax
  000000000000002E: 74 0D              je          000000000000003D
  0000000000000030: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000035: 48 8B 08           mov         rcx,qword ptr [rax]
  0000000000000038: E8 00 00 00 00     call        ?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
  000000000000003D: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000042: E8 00 00 00 00     call        ??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  0000000000000047: 48 83 C4 38        add         rsp,38h
  000000000000004B: C3                 ret

??1system_error@std@@UEAA@XZ (public: virtual __cdecl std::system_error::~system_error(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1_System_error@std@@UEAA@XZ
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

??2@YAPEAX_KPEAX@Z (void * __cdecl operator new(unsigned __int64,void *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  000000000000000F: C3                 ret

??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@P6AAEAV01@AEAV01@@Z@Z (public: class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::operator<<(class std::basic_ostream<char,struct std::char_traits<char> > & (__cdecl*)(class std::basic_ostream<char,struct std::char_traits<char> > &))):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000013: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000018: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001D: FF 54 24 20        call        qword ptr [rsp+20h]
  0000000000000021: 48 83 C4 38        add         rsp,38h
  0000000000000025: C3                 ret

??8error_category@std@@QEBA_NAEBV01@@Z (public: bool __cdecl std::error_category::operator==(class std::error_category const &)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 83 C0 08        add         rax,8
  0000000000000017: 48 8B C8           mov         rcx,rax
  000000000000001A: E8 00 00 00 00     call        ??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z
  000000000000001F: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000024: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000029: 48 83 C1 08        add         rcx,8
  000000000000002D: E8 00 00 00 00     call        ??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z
  0000000000000032: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000037: 48 3B C8           cmp         rcx,rax
  000000000000003A: 75 0A              jne         0000000000000046
  000000000000003C: C7 44 24 20 01 00  mov         dword ptr [rsp+20h],1
                    00 00
  0000000000000044: EB 08              jmp         000000000000004E
  0000000000000046: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  000000000000004E: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000053: 48 83 C4 38        add         rsp,38h
  0000000000000057: C3                 ret

??8std@@YA_NAEBVerror_condition@0@0@Z (bool __cdecl std::operator==(class std::error_condition const &,class std::error_condition const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 48        sub         rsp,48h
  000000000000000E: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000013: E8 00 00 00 00     call        ?category@error_condition@std@@QEBAAEBVerror_category@2@XZ
  0000000000000018: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000001D: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000022: E8 00 00 00 00     call        ?category@error_condition@std@@QEBAAEBVerror_category@2@XZ
  0000000000000027: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000002C: 48 8B 54 24 28     mov         rdx,qword ptr [rsp+28h]
  0000000000000031: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000036: E8 00 00 00 00     call        ??8error_category@std@@QEBA_NAEBV01@@Z
  000000000000003B: 0F B6 C0           movzx       eax,al
  000000000000003E: 85 C0              test        eax,eax
  0000000000000040: 74 2A              je          000000000000006C
  0000000000000042: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000047: E8 00 00 00 00     call        ?value@error_condition@std@@QEBAHXZ
  000000000000004C: 89 44 24 24        mov         dword ptr [rsp+24h],eax
  0000000000000050: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000055: E8 00 00 00 00     call        ?value@error_condition@std@@QEBAHXZ
  000000000000005A: 8B 4C 24 24        mov         ecx,dword ptr [rsp+24h]
  000000000000005E: 3B C8              cmp         ecx,eax
  0000000000000060: 75 0A              jne         000000000000006C
  0000000000000062: C7 44 24 20 01 00  mov         dword ptr [rsp+20h],1
                    00 00
  000000000000006A: EB 08              jmp         0000000000000074
  000000000000006C: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000074: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000079: 48 83 C4 48        add         rsp,48h
  000000000000007D: C3                 ret

??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z (public: char & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::operator[](unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000013: 48 8B C8           mov         rcx,rax
  0000000000000016: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ
  000000000000001B: 48 03 44 24 38     add         rax,qword ptr [rsp+38h]
  0000000000000020: 48 83 C4 28        add         rsp,28h
  0000000000000024: C3                 ret

??Bid@locale@std@@QEAA_KXZ (public: __cdecl std::locale::id::operator unsigned __int64(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000012: 75 3E              jne         0000000000000052
  0000000000000014: 33 D2              xor         edx,edx
  0000000000000016: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000001B: E8 00 00 00 00     call        ??0_Lockit@std@@QEAA@H@Z
  0000000000000020: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000025: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000029: 75 1D              jne         0000000000000048
  000000000000002B: 8B 05 00 00 00 00  mov         eax,dword ptr [?_Id_cnt@id@locale@std@@0HA]
  0000000000000031: FF C0              inc         eax
  0000000000000033: 89 05 00 00 00 00  mov         dword ptr [?_Id_cnt@id@locale@std@@0HA],eax
  0000000000000039: 48 63 05 00 00 00  movsxd      rax,dword ptr [?_Id_cnt@id@locale@std@@0HA]
                    00
  0000000000000040: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000045: 48 89 01           mov         qword ptr [rcx],rax
  0000000000000048: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000004D: E8 00 00 00 00     call        ??1_Lockit@std@@QEAA@XZ
  0000000000000052: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000057: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000005A: 48 83 C4 38        add         rsp,38h
  000000000000005E: C3                 ret

??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::operator bool(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 0F B6 40 08        movzx       eax,byte ptr [rax+8]
  000000000000000E: C3                 ret

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

??R?$default_delete@V_Facet_base@std@@@std@@QEBAXPEAV_Facet_base@1@@Z (public: void __cdecl std::default_delete<class std::_Facet_base>::operator()(class std::_Facet_base *)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 48        sub         rsp,48h
  000000000000000E: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  0000000000000013: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000018: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  000000000000001E: 74 25              je          0000000000000045
  0000000000000020: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000025: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000028: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002B: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000030: BA 01 00 00 00     mov         edx,1
  0000000000000035: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000003A: FF 54 24 28        call        qword ptr [rsp+28h]
  000000000000003E: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000043: EB 09              jmp         000000000000004E
  0000000000000045: 48 C7 44 24 30 00  mov         qword ptr [rsp+30h],0
                    00 00 00
  000000000000004E: 48 83 C4 48        add         rsp,48h
  0000000000000052: C3                 ret

??_G?$ctype@D@std@@MEAAPEAXI@Z (protected: virtual void * __cdecl std::ctype<char>::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1?$ctype@D@std@@MEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 30 00 00 00     mov         edx,30h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??_G_Facet_base@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_Facet_base::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1_Facet_base@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 08 00 00 00     mov         edx,8
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??_G_Iostream_error_category2@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_Iostream_error_category2::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1_Iostream_error_category2@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 10 00 00 00     mov         edx,10h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??_G_System_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_System_error::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1_System_error@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 28 00 00 00     mov         edx,28h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

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

??_Gbad_cast@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_cast::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1bad_cast@std@@UEAA@XZ
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

??_Gctype_base@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::ctype_base::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1ctype_base@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 10 00 00 00     mov         edx,10h
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

??_Gfacet@locale@std@@MEAAPEAXI@Z (protected: virtual void * __cdecl std::locale::facet::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1facet@locale@std@@MEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 10 00 00 00     mov         edx,10h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??_Gfailure@ios_base@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::ios_base::failure::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1failure@ios_base@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 28 00 00 00     mov         edx,28h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??_Gruntime_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::runtime_error::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1runtime_error@std@@UEAA@XZ
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

??_Gsystem_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::system_error::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1system_error@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 0F              je          0000000000000031
  0000000000000022: BA 28 00 00 00     mov         edx,28h
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

?_C_str@locale@std@@QEBAPEBDXZ (public: char const * __cdecl std::locale::_C_str(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 83 78 08 00     cmp         qword ptr [rax+8],0
  0000000000000013: 74 1C              je          0000000000000031
  0000000000000015: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000001A: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000001E: 48 83 C0 28        add         rax,28h
  0000000000000022: 48 8B C8           mov         rcx,rax
  0000000000000025: E8 00 00 00 00     call        ?c_str@?$_Yarn@D@std@@QEBAPEBDXZ
  000000000000002A: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000002F: EB 0C              jmp         000000000000003D
  0000000000000031: 48 8D 05 00 00 00  lea         rax,[??_C@_00CNPNBAHC@@]
                    00
  0000000000000038: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003D: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000042: 48 83 C4 38        add         rsp,38h
  0000000000000046: C3                 ret

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

?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct_empty(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000013: 48 8D 15 00 00 00  lea         rdx,[?_Fake_alloc@std@@3U_Fake_allocator@1@B]
                    00
  000000000000001A: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000001F: E8 00 00 00 00     call        ?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z
  0000000000000024: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000029: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  0000000000000031: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000036: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  000000000000003E: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000043: E8 00 00 00 00     call        ?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  0000000000000048: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  000000000000004D: B8 01 00 00 00     mov         eax,1
  0000000000000052: 48 6B C0 00        imul        rax,rax,0
  0000000000000056: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000005B: 48 03 C8           add         rcx,rax
  000000000000005E: 48 8B C1           mov         rax,rcx
  0000000000000061: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000066: 48 8B C8           mov         rcx,rax
  0000000000000069: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  000000000000006E: 48 83 C4 38        add         rsp,38h
  0000000000000072: C3                 ret

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
  000000000000002D: 90                 nop
  000000000000002E: 48 83 C4 28        add         rsp,28h
  0000000000000032: C3                 ret

?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ (public: virtual class std::_Facet_base * __cdecl std::locale::facet::_Decref(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 83 C0 08        add         rax,8
  000000000000000E: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  0000000000000013: F0 0F C1 08        lock xadd   dword ptr [rax],ecx
  0000000000000017: FF C9              dec         ecx
  0000000000000019: 8B C1              mov         eax,ecx
  000000000000001B: 85 C0              test        eax,eax
  000000000000001D: 75 07              jne         0000000000000026
  000000000000001F: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000024: EB 02              jmp         0000000000000028
  0000000000000026: 33 C0              xor         eax,eax
  0000000000000028: C3                 ret

?_Get_first@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAAAEAU?$default_delete@V_Facet_base@std@@@2@XZ (public: struct std::default_delete<class std::_Facet_base> & __cdecl std::_Compressed_pair<struct std::default_delete<class std::_Facet_base>,class std::_Facet_base *,1>::_Get_first(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

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

?_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z (public: static unsigned __int64 __cdecl std::ctype<char>::_Getcat(class std::locale::facet const * *,class std::locale const *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 81 EC C8 00 00  sub         rsp,0C8h
                    00
  0000000000000011: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000019: 48 83 BC 24 D0 00  cmp         qword ptr [rsp+0D0h],0
                    00 00 00
  0000000000000022: 0F 84 BD 00 00 00  je          00000000000000E5
  0000000000000028: 48 8B 84 24 D0 00  mov         rax,qword ptr [rsp+0D0h]
                    00 00
  0000000000000030: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000034: 0F 85 AB 00 00 00  jne         00000000000000E5
  000000000000003A: B9 30 00 00 00     mov         ecx,30h
  000000000000003F: E8 00 00 00 00     call        ??2@YAPEAX_K@Z
  0000000000000044: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000049: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  000000000000004F: 74 57              je          00000000000000A8
  0000000000000051: 48 8B 8C 24 D8 00  mov         rcx,qword ptr [rsp+0D8h]
                    00 00
  0000000000000059: E8 00 00 00 00     call        ?_C_str@locale@std@@QEBAPEBDXZ
  000000000000005E: 48 8B D0           mov         rdx,rax
  0000000000000061: 48 8D 4C 24 58     lea         rcx,[rsp+58h]
  0000000000000066: E8 00 00 00 00     call        ??0_Locinfo@std@@QEAA@PEBD@Z
  000000000000006B: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000070: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000075: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  000000000000007A: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000007E: 83 C8 01           or          eax,1
  0000000000000081: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000085: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000008A: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  000000000000008F: 45 33 C0           xor         r8d,r8d
  0000000000000092: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000097: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000009C: E8 00 00 00 00     call        ??0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z
  00000000000000A1: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  00000000000000A6: EB 09              jmp         00000000000000B1
  00000000000000A8: 48 C7 44 24 30 00  mov         qword ptr [rsp+30h],0
                    00 00 00
  00000000000000B1: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000B6: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  00000000000000BB: 48 8B 84 24 D0 00  mov         rax,qword ptr [rsp+0D0h]
                    00 00
  00000000000000C3: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000C8: 48 89 08           mov         qword ptr [rax],rcx
  00000000000000CB: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000000CF: 83 E0 01           and         eax,1
  00000000000000D2: 85 C0              test        eax,eax
  00000000000000D4: 74 0F              je          00000000000000E5
  00000000000000D6: 83 64 24 20 FE     and         dword ptr [rsp+20h],0FFFFFFFEh
  00000000000000DB: 48 8D 4C 24 58     lea         rcx,[rsp+58h]
  00000000000000E0: E8 00 00 00 00     call        ??1_Locinfo@std@@QEAA@XZ
  00000000000000E5: B8 02 00 00 00     mov         eax,2
  00000000000000EA: 48 81 C4 C8 00 00  add         rsp,0C8h
                    00
  00000000000000F1: C3                 ret

?dtor$0@?0??_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z@4HA (int `public: static unsigned __int64 __cdecl std::ctype<char>::_Getcat(class ctype<char>::locale::facet const * *,class ctype<char>::facet const *)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: BA 30 00 00 00     mov         edx,30h
  000000000000000E: 48 8B 4D 28        mov         rcx,qword ptr [rbp+28h]
  0000000000000012: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000017: 48 83 C4 20        add         rsp,20h
  000000000000001B: 5D                 pop         rbp
  000000000000001C: C3                 ret

?dtor$1@?0??_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z@4HA (int `public: static unsigned __int64 __cdecl std::ctype<char>::_Getcat(class ctype<char>::locale::facet const * *,class ctype<char>::facet const *)'::`1'::dtor$1):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 8B 45 20           mov         eax,dword ptr [rbp+20h]
  000000000000000C: 83 E0 01           and         eax,1
  000000000000000F: 85 C0              test        eax,eax
  0000000000000011: 74 0D              je          0000000000000020
  0000000000000013: 83 65 20 FE        and         dword ptr [rbp+20h],0FFFFFFFEh
  0000000000000017: 48 8D 4D 58        lea         rcx,[rbp+58h]
  000000000000001B: E8 00 00 00 00     call        ??1_Locinfo@std@@QEAA@XZ
  0000000000000020: 48 83 C4 20        add         rsp,20h
  0000000000000024: 5D                 pop         rbp
  0000000000000025: C3                 ret

?_Getctype@_Locinfo@std@@QEBA?AU_Ctypevec@@XZ (public: struct _Ctypevec __cdecl std::_Locinfo::_Getctype(void)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 56                 push        rsi
  000000000000000B: 57                 push        rdi
  000000000000000C: 48 83 EC 48        sub         rsp,48h
  0000000000000010: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000015: E8 00 00 00 00     call        _Getctype
  000000000000001A: 48 8B 7C 24 68     mov         rdi,qword ptr [rsp+68h]
  000000000000001F: 48 8B F0           mov         rsi,rax
  0000000000000022: B9 20 00 00 00     mov         ecx,20h
  0000000000000027: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  0000000000000029: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  000000000000002E: 48 83 C4 48        add         rsp,48h
  0000000000000032: 5F                 pop         rdi
  0000000000000033: 5E                 pop         rsi
  0000000000000034: C3                 ret

?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z (public: class std::locale::facet const * __cdecl std::locale::_Getfacet(unsigned __int64)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 48        sub         rsp,48h
  000000000000000E: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000013: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  0000000000000017: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  000000000000001B: 48 39 44 24 58     cmp         qword ptr [rsp+58h],rax
  0000000000000020: 73 1D              jae         000000000000003F
  0000000000000022: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000027: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000002B: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  000000000000002F: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000034: 48 8B 04 C8        mov         rax,qword ptr [rax+rcx*8]
  0000000000000038: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003D: EB 09              jmp         0000000000000048
  000000000000003F: 48 C7 44 24 20 00  mov         qword ptr [rsp+20h],0
                    00 00 00
  0000000000000048: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000004D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000052: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  0000000000000058: 75 11              jne         000000000000006B
  000000000000005A: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000005F: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  0000000000000063: 0F B6 40 24        movzx       eax,byte ptr [rax+24h]
  0000000000000067: 85 C0              test        eax,eax
  0000000000000069: 75 07              jne         0000000000000072
  000000000000006B: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000070: EB 30              jmp         00000000000000A2
  0000000000000072: E8 00 00 00 00     call        ?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ
  0000000000000077: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000007C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000081: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000085: 48 39 44 24 58     cmp         qword ptr [rsp+58h],rax
  000000000000008A: 73 14              jae         00000000000000A0
  000000000000008C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000091: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  0000000000000095: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000009A: 48 8B 04 C8        mov         rax,qword ptr [rax+rcx*8]
  000000000000009E: EB 02              jmp         00000000000000A2
  00000000000000A0: 33 C0              xor         eax,eax
  00000000000000A2: 48 83 C4 48        add         rsp,48h
  00000000000000A6: C3                 ret

?_Incref@facet@locale@std@@UEAAXXZ (public: virtual void __cdecl std::locale::facet::_Incref(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 83 C0 08        add         rax,8
  000000000000000E: F0 FF 00           lock inc    dword ptr [rax]
  0000000000000011: C3                 ret

?_Init@?$ctype@D@std@@IEAAXAEBV_Locinfo@2@@Z (protected: void __cdecl std::ctype<char>::_Init(class std::_Locinfo const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 56                 push        rsi
  000000000000000B: 57                 push        rdi
  000000000000000C: 48 83 EC 48        sub         rsp,48h
  0000000000000010: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000015: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  000000000000001A: E8 00 00 00 00     call        ?_Getctype@_Locinfo@std@@QEBA?AU_Ctypevec@@XZ
  000000000000001F: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000024: 48 8D 79 10        lea         rdi,[rcx+10h]
  0000000000000028: 48 8B F0           mov         rsi,rax
  000000000000002B: B9 20 00 00 00     mov         ecx,20h
  0000000000000030: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  0000000000000032: 48 83 C4 48        add         rsp,48h
  0000000000000036: 5F                 pop         rdi
  0000000000000037: 5E                 pop         rsi
  0000000000000038: C3                 ret

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

?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z (private: static class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_System_error::_Makestr(class std::error_code,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 78        sub         rsp,78h
  0000000000000013: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000000000001A: 48 33 C4           xor         rax,rsp
  000000000000001D: 48 89 44 24 60     mov         qword ptr [rsp+60h],rax
  0000000000000022: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  000000000000002A: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  0000000000000032: E8 00 00 00 00     call        ?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ
  0000000000000037: 0F B6 C0           movzx       eax,al
  000000000000003A: 85 C0              test        eax,eax
  000000000000003C: 75 14              jne         0000000000000052
  000000000000003E: 48 8D 15 00 00 00  lea         rdx,[??_C@_02LMMGGCAJ@?3?5@]
                    00
  0000000000000045: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  000000000000004D: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z
  0000000000000052: 48 8D 54 24 40     lea         rdx,[rsp+40h]
  0000000000000057: 48 8B 8C 24 88 00  mov         rcx,qword ptr [rsp+88h]
                    00 00
  000000000000005F: E8 00 00 00 00     call        ?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ
  0000000000000064: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000069: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000006E: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000073: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000078: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  000000000000007D: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000082: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  000000000000008A: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z
  000000000000008F: 90                 nop
  0000000000000090: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000000000095: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  000000000000009A: 48 8B 94 24 90 00  mov         rdx,qword ptr [rsp+90h]
                    00 00
  00000000000000A2: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  00000000000000AA: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z
  00000000000000AF: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000000B3: 83 C8 01           or          eax,1
  00000000000000B6: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000000BA: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  00000000000000C2: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  00000000000000C7: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  00000000000000CF: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000000D4: 48 33 CC           xor         rcx,rsp
  00000000000000D7: E8 00 00 00 00     call        __security_check_cookie
  00000000000000DC: 48 83 C4 78        add         rsp,78h
  00000000000000E0: C3                 ret

?dtor$0@?0??_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z@4HA (int `private: static class _System_error::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_System_error::_Makestr(class _System_error::error_code,class _System_error::std)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8B 8D 90 00 00  mov         rcx,qword ptr [rbp+90h]
                    00
  0000000000000010: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000015: 48 83 C4 20        add         rsp,20h
  0000000000000019: 5D                 pop         rbp
  000000000000001A: C3                 ret

?dtor$1@?0??_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z@4HA (int `private: static class _System_error::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_System_error::_Makestr(class _System_error::error_code,class _System_error::std)'::`1'::dtor$1):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 4D 40        lea         rcx,[rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

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

?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ (public: char const * __cdecl std::_String_val<struct std::_Simple_types<char> >::_Myptr(void)const ):
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

?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ (public: void __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Osfx(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000015: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001A: 48 03 C8           add         rcx,rax
  000000000000001D: 48 8B C1           mov         rax,rcx
  0000000000000020: 48 8B C8           mov         rcx,rax
  0000000000000023: E8 00 00 00 00     call        ?good@ios_base@std@@QEBA_NXZ
  0000000000000028: 0F B6 C0           movzx       eax,al
  000000000000002B: 85 C0              test        eax,eax
  000000000000002D: 0F 84 87 00 00 00  je          00000000000000BA
  0000000000000033: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000038: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000003B: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000003F: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000044: 48 03 C8           add         rcx,rax
  0000000000000047: 48 8B C1           mov         rax,rcx
  000000000000004A: 48 8B C8           mov         rcx,rax
  000000000000004D: E8 00 00 00 00     call        ?flags@ios_base@std@@QEBAHXZ
  0000000000000052: 83 E0 02           and         eax,2
  0000000000000055: 85 C0              test        eax,eax
  0000000000000057: 74 61              je          00000000000000BA
  0000000000000059: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000005E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000061: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000065: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000006A: 48 03 C8           add         rcx,rax
  000000000000006D: 48 8B C1           mov         rax,rcx
  0000000000000070: 48 8B C8           mov         rcx,rax
  0000000000000073: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000078: 48 8B C8           mov         rcx,rax
  000000000000007B: E8 00 00 00 00     call        ?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ
  0000000000000080: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000084: 83 7C 24 20 FF     cmp         dword ptr [rsp+20h],0FFFFFFFFh
  0000000000000089: 75 2F              jne         00000000000000BA
  000000000000008B: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000090: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000093: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000097: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000009C: 48 03 C8           add         rcx,rax
  000000000000009F: 48 8B C1           mov         rax,rcx
  00000000000000A2: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  00000000000000A7: 45 33 C0           xor         r8d,r8d
  00000000000000AA: BA 04 00 00 00     mov         edx,4
  00000000000000AF: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  00000000000000B4: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  00000000000000B9: 90                 nop
  00000000000000BA: EB 00              jmp         $LN10
$LN10:
  00000000000000BC: 48 83 C4 38        add         rsp,38h
  00000000000000C0: C3                 ret

?catch$0@?0??_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ@4HA (int `public: void __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Osfx(void)'::`1'::catch$0):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 55                 push        rbp
  0000000000000006: 48 83 EC 20        sub         rsp,20h
  000000000000000A: 48 8B EA           mov         rbp,rdx
__catch$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ$0:
  000000000000000D: 48 8D 05 00 00 00  lea         rax,[$LN10]
                    00
  0000000000000014: 48 83 C4 20        add         rsp,20h
  0000000000000018: 5D                 pop         rbp
  0000000000000019: C3                 ret
  000000000000001A: CC                 int         3

?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ (protected: __int64 __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::_Pnavail(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 8B 40 40        mov         rax,qword ptr [rax+40h]
  0000000000000012: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000016: 74 10              je          0000000000000028
  0000000000000018: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000001D: 48 8B 40 58        mov         rax,qword ptr [rax+58h]
  0000000000000021: 8B 00              mov         eax,dword ptr [rax]
  0000000000000023: 89 04 24           mov         dword ptr [rsp],eax
  0000000000000026: EB 07              jmp         000000000000002F
  0000000000000028: C7 04 24 00 00 00  mov         dword ptr [rsp],0
                    00
  000000000000002F: 48 63 04 24        movsxd      rax,dword ptr [rsp]
  0000000000000033: 48 83 C4 18        add         rsp,18h
  0000000000000037: C3                 ret

?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ (protected: char * __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::_Pninc(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 8B 40 58        mov         rax,qword ptr [rax+58h]
  0000000000000012: 8B 00              mov         eax,dword ptr [rax]
  0000000000000014: FF C8              dec         eax
  0000000000000016: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000001B: 48 8B 49 58        mov         rcx,qword ptr [rcx+58h]
  000000000000001F: 89 01              mov         dword ptr [rcx],eax
  0000000000000021: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000026: 48 8B 40 40        mov         rax,qword ptr [rax+40h]
  000000000000002A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002D: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000031: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000036: 48 8B 40 40        mov         rax,qword ptr [rax+40h]
  000000000000003A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000003D: 48 FF C0           inc         rax
  0000000000000040: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000045: 48 8B 49 40        mov         rcx,qword ptr [rcx+40h]
  0000000000000049: 48 89 01           mov         qword ptr [rcx],rax
  000000000000004C: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000050: 48 83 C4 18        add         rsp,18h
  0000000000000054: C3                 ret

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

?_Throw_bad_cast@std@@YAXXZ (void __cdecl std::_Throw_bad_cast(void)):
  0000000000000000: 48 83 EC 48        sub         rsp,48h
  0000000000000004: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000009: E8 00 00 00 00     call        ??0bad_cast@std@@QEAA@XZ
  000000000000000E: 48 8D 15 00 00 00  lea         rdx,[_TI2?AVbad_cast@std@@]
                    00
  0000000000000015: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000001A: E8 00 00 00 00     call        _CxxThrowException
  000000000000001F: 48 83 C4 48        add         rsp,48h
  0000000000000023: C3                 ret

?_Tidy@?$_Yarn@D@std@@AEAAXXZ (private: void __cdecl std::_Yarn<char>::_Tidy(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000012: 74 0D              je          0000000000000021
  0000000000000014: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000019: 48 8B 08           mov         rcx,qword ptr [rax]
  000000000000001C: E8 00 00 00 00     call        free
  0000000000000021: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000026: 48 C7 00 00 00 00  mov         qword ptr [rax],0
                    00
  000000000000002D: 48 83 C4 28        add         rsp,28h
  0000000000000031: C3                 ret

?_Tidy@?$_Yarn@_W@std@@AEAAXXZ (private: void __cdecl std::_Yarn<wchar_t>::_Tidy(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000012: 74 0D              je          0000000000000021
  0000000000000014: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000019: 48 8B 08           mov         rcx,qword ptr [rax]
  000000000000001C: E8 00 00 00 00     call        free
  0000000000000021: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000026: 48 C7 00 00 00 00  mov         qword ptr [rax],0
                    00
  000000000000002D: 48 83 C4 28        add         rsp,28h
  0000000000000031: C3                 ret

?_Tidy@?$ctype@D@std@@IEAAXXZ (protected: void __cdecl std::ctype<char>::_Tidy(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 83 78 20 00        cmp         dword ptr [rax+20h],0
  0000000000000012: 7E 10              jle         0000000000000024
  0000000000000014: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000019: 48 8B 48 18        mov         rcx,qword ptr [rax+18h]
  000000000000001D: E8 00 00 00 00     call        free
  0000000000000022: EB 23              jmp         0000000000000047
  0000000000000024: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000029: 83 78 20 00        cmp         dword ptr [rax+20h],0
  000000000000002D: 7D 18              jge         0000000000000047
  000000000000002F: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000034: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000038: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003D: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000042: E8 00 00 00 00     call        ??_V@YAXPEAX@Z
  0000000000000047: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000004C: 48 8B 48 28        mov         rcx,qword ptr [rax+28h]
  0000000000000050: E8 00 00 00 00     call        free
  0000000000000055: 48 83 C4 38        add         rsp,38h
  0000000000000059: C3                 ret

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

?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000013: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  0000000000000017: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000001C: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000021: 48 8B C8           mov         rcx,rax
  0000000000000024: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
  0000000000000029: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000002E: 4C 8B 44 24 20     mov         r8,qword ptr [rsp+20h]
  0000000000000033: 48 8B 54 24 28     mov         rdx,qword ptr [rsp+28h]
  0000000000000038: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000003D: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z
  0000000000000042: 48 83 C4 38        add         rsp,38h
  0000000000000046: C3                 ret

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

?assign@?$_Char_traits@DH@std@@SAPEADQEAD_KD@Z (public: static char * __cdecl std::_Char_traits<char,int>::assign(char * const,unsigned __int64,char)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000018: 0F B6 C0           movzx       eax,al
  000000000000001B: 85 C0              test        eax,eax
  000000000000001D: 74 41              je          0000000000000060
  000000000000001F: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000024: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000029: EB 1A              jmp         0000000000000045
  000000000000002B: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000030: 48 FF C8           dec         rax
  0000000000000033: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000038: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000003D: 48 FF C0           inc         rax
  0000000000000040: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000045: 48 83 7C 24 48 00  cmp         qword ptr [rsp+48h],0
  000000000000004B: 76 11              jbe         000000000000005E
  000000000000004D: 48 8D 54 24 50     lea         rdx,[rsp+50h]
  0000000000000052: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000057: E8 00 00 00 00     call        ??$construct_at@DAEBD$0A@@std@@YAPEADQEADAEBD@Z
  000000000000005C: EB CD              jmp         000000000000002B
  000000000000005E: EB 3C              jmp         000000000000009C
  0000000000000060: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000065: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000006A: EB 1A              jmp         0000000000000086
  000000000000006C: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000071: 48 FF C8           dec         rax
  0000000000000074: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000079: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000007E: 48 FF C0           inc         rax
  0000000000000081: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000086: 48 83 7C 24 48 00  cmp         qword ptr [rsp+48h],0
  000000000000008C: 76 0E              jbe         000000000000009C
  000000000000008E: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000093: 0F B6 4C 24 50     movzx       ecx,byte ptr [rsp+50h]
  0000000000000098: 88 08              mov         byte ptr [rax],cl
  000000000000009A: EB D0              jmp         000000000000006C
  000000000000009C: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000A1: 48 83 C4 38        add         rsp,38h
  00000000000000A5: C3                 ret

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

?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z (public: static char * __cdecl std::_Narrow_char_traits<char,int>::assign(char * const,unsigned __int64,char)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: E8 00 00 00 00     call        ?is_constant_evaluated@std@@YA_NXZ
  0000000000000018: 0F B6 C0           movzx       eax,al
  000000000000001B: 85 C0              test        eax,eax
  000000000000001D: 74 17              je          0000000000000036
  000000000000001F: 44 0F B6 44 24 40  movzx       r8d,byte ptr [rsp+40h]
  0000000000000025: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  000000000000002A: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002F: E8 00 00 00 00     call        ?assign@?$_Char_traits@DH@std@@SAPEADQEAD_KD@Z
  0000000000000034: EB 16              jmp         000000000000004C
  0000000000000036: 0F BE 44 24 40     movsx       eax,byte ptr [rsp+40h]
  000000000000003B: 4C 8B 44 24 38     mov         r8,qword ptr [rsp+38h]
  0000000000000040: 8B D0              mov         edx,eax
  0000000000000042: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000047: E8 00 00 00 00     call        memset
  000000000000004C: 48 83 C4 28        add         rsp,28h
  0000000000000050: C3                 ret

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

?c_str@?$_Yarn@D@std@@QEBAPEBDXZ (public: char const * __cdecl std::_Yarn<char>::c_str(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000012: 74 0E              je          0000000000000022
  0000000000000014: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000019: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001C: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000020: EB 0D              jmp         000000000000002F
  0000000000000022: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000027: 48 83 C0 08        add         rax,8
  000000000000002B: 48 89 04 24        mov         qword ptr [rsp],rax
  000000000000002F: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000033: 48 83 C4 18        add         rsp,18h
  0000000000000037: C3                 ret

?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ (public: char const * __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::c_str(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

?category@error_code@std@@QEBAAEBVerror_category@2@XZ (public: class std::error_category const & __cdecl std::error_code::category(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000000E: C3                 ret

?category@error_condition@std@@QEBAAEBVerror_category@2@XZ (public: class std::error_category const & __cdecl std::error_condition::category(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000000E: C3                 ret

?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z (public: void __cdecl std::basic_ios<char,struct std::char_traits<char> >::clear(int,bool)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 38        sub         rsp,38h
  0000000000000012: 0F B6 44 24 50     movzx       eax,byte ptr [rsp+50h]
  0000000000000017: 88 44 24 20        mov         byte ptr [rsp+20h],al
  000000000000001B: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000020: 48 83 78 48 00     cmp         qword ptr [rax+48h],0
  0000000000000025: 74 0A              je          0000000000000031
  0000000000000027: C7 44 24 24 00 00  mov         dword ptr [rsp+24h],0
                    00 00
  000000000000002F: EB 08              jmp         0000000000000039
  0000000000000031: C7 44 24 24 04 00  mov         dword ptr [rsp+24h],4
                    00 00
  0000000000000039: 8B 44 24 24        mov         eax,dword ptr [rsp+24h]
  000000000000003D: 8B 4C 24 48        mov         ecx,dword ptr [rsp+48h]
  0000000000000041: 0B C8              or          ecx,eax
  0000000000000043: 8B C1              mov         eax,ecx
  0000000000000045: 44 0F B6 44 24 20  movzx       r8d,byte ptr [rsp+20h]
  000000000000004B: 8B D0              mov         edx,eax
  000000000000004D: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000052: E8 00 00 00 00     call        ?clear@ios_base@std@@QEAAXH_N@Z
  0000000000000057: 48 83 C4 38        add         rsp,38h
  000000000000005B: C3                 ret

?clear@ios_base@std@@QEAAXH_N@Z (public: void __cdecl std::ios_base::clear(int,bool)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 78        sub         rsp,78h
  0000000000000012: 8B 84 24 88 00 00  mov         eax,dword ptr [rsp+88h]
                    00
  0000000000000019: 83 E0 17           and         eax,17h
  000000000000001C: 89 84 24 88 00 00  mov         dword ptr [rsp+88h],eax
                    00
  0000000000000023: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  000000000000002B: 8B 8C 24 88 00 00  mov         ecx,dword ptr [rsp+88h]
                    00
  0000000000000032: 89 48 10           mov         dword ptr [rax+10h],ecx
  0000000000000035: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  000000000000003D: 8B 40 14           mov         eax,dword ptr [rax+14h]
  0000000000000040: 8B 8C 24 88 00 00  mov         ecx,dword ptr [rsp+88h]
                    00
  0000000000000047: 23 C8              and         ecx,eax
  0000000000000049: 8B C1              mov         eax,ecx
  000000000000004B: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000004F: 83 7C 24 20 00     cmp         dword ptr [rsp+20h],0
  0000000000000054: 0F 84 85 00 00 00  je          00000000000000DF
  000000000000005A: 0F B6 84 24 90 00  movzx       eax,byte ptr [rsp+90h]
                    00 00
  0000000000000062: 85 C0              test        eax,eax
  0000000000000064: 74 09              je          000000000000006F
  0000000000000066: 33 D2              xor         edx,edx
  0000000000000068: 33 C9              xor         ecx,ecx
  000000000000006A: E8 00 00 00 00     call        _CxxThrowException
  000000000000006F: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000073: 83 E0 04           and         eax,4
  0000000000000076: 85 C0              test        eax,eax
  0000000000000078: 74 0E              je          0000000000000088
  000000000000007A: 48 8D 05 00 00 00  lea         rax,[??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set@]
                    00
  0000000000000081: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000086: EB 25              jmp         00000000000000AD
  0000000000000088: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000008C: 83 E0 02           and         eax,2
  000000000000008F: 85 C0              test        eax,eax
  0000000000000091: 74 0E              je          00000000000000A1
  0000000000000093: 48 8D 05 00 00 00  lea         rax,[??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set@]
                    00
  000000000000009A: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000009F: EB 0C              jmp         00000000000000AD
  00000000000000A1: 48 8D 05 00 00 00  lea         rax,[??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set@]
                    00
  00000000000000A8: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  00000000000000AD: BA 01 00 00 00     mov         edx,1
  00000000000000B2: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  00000000000000B7: E8 00 00 00 00     call        ?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z
  00000000000000BC: 4C 8B C0           mov         r8,rax
  00000000000000BF: 48 8B 54 24 28     mov         rdx,qword ptr [rsp+28h]
  00000000000000C4: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  00000000000000C9: E8 00 00 00 00     call        ??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z
  00000000000000CE: 48 8D 15 00 00 00  lea         rdx,[_TI5?AVfailure@ios_base@std@@]
                    00
  00000000000000D5: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  00000000000000DA: E8 00 00 00 00     call        _CxxThrowException
  00000000000000DF: 48 83 C4 78        add         rsp,78h
  00000000000000E3: C3                 ret

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

?data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ (public: char const * __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::data(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

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

?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z (public: virtual class std::error_condition __cdecl std::error_category::default_error_condition(int)const ):
  0000000000000000: 44 89 44 24 18     mov         dword ptr [rsp+18h],r8d
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 4C 8B 44 24 30     mov         r8,qword ptr [rsp+30h]
  0000000000000018: 8B 54 24 40        mov         edx,dword ptr [rsp+40h]
  000000000000001C: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000021: E8 00 00 00 00     call        ??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z
  0000000000000026: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  000000000000002B: 48 83 C4 28        add         rsp,28h
  000000000000002F: C3                 ret

?do_narrow@?$ctype@D@std@@MEBADDD@Z (protected: virtual char __cdecl std::ctype<char>::do_narrow(char,char)const ):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 0F B6 44 24 10     movzx       eax,byte ptr [rsp+10h]
  0000000000000013: C3                 ret

?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z (protected: virtual char const * __cdecl std::ctype<char>::do_narrow(char const *,char const *,char,char *)const ):
  0000000000000000: 44 88 4C 24 20     mov         byte ptr [rsp+20h],r9b
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 28        sub         rsp,28h
  0000000000000018: 48 8D 54 24 40     lea         rdx,[rsp+40h]
  000000000000001D: 48 8D 4C 24 38     lea         rcx,[rsp+38h]
  0000000000000022: E8 00 00 00 00     call        ??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z
  0000000000000027: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  000000000000002C: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000031: 48 2B C8           sub         rcx,rax
  0000000000000034: 48 8B C1           mov         rax,rcx
  0000000000000037: 4C 8B C0           mov         r8,rax
  000000000000003A: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  000000000000003F: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000044: E8 00 00 00 00     call        memcpy
  0000000000000049: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000004E: 48 83 C4 28        add         rsp,28h
  0000000000000052: C3                 ret

?do_tolower@?$ctype@D@std@@MEBADD@Z (protected: virtual char __cdecl std::ctype<char>::do_tolower(char)const ):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000012: 48 83 C0 10        add         rax,10h
  0000000000000016: 0F B6 4C 24 38     movzx       ecx,byte ptr [rsp+38h]
  000000000000001B: 48 8B D0           mov         rdx,rax
  000000000000001E: E8 00 00 00 00     call        _Tolower
  0000000000000023: 48 83 C4 28        add         rsp,28h
  0000000000000027: C3                 ret

?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z (protected: virtual char const * __cdecl std::ctype<char>::do_tolower(char *,char const *)const ):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8D 54 24 40     lea         rdx,[rsp+40h]
  0000000000000018: 48 8D 4C 24 38     lea         rcx,[rsp+38h]
  000000000000001D: E8 00 00 00 00     call        ??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z
  0000000000000022: EB 0D              jmp         0000000000000031
  0000000000000024: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000029: 48 FF C0           inc         rax
  000000000000002C: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000031: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000036: 48 39 44 24 38     cmp         qword ptr [rsp+38h],rax
  000000000000003B: 74 22              je          000000000000005F
  000000000000003D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000042: 48 83 C0 10        add         rax,10h
  0000000000000046: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000004B: 0F B6 09           movzx       ecx,byte ptr [rcx]
  000000000000004E: 48 8B D0           mov         rdx,rax
  0000000000000051: E8 00 00 00 00     call        _Tolower
  0000000000000056: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000005B: 88 01              mov         byte ptr [rcx],al
  000000000000005D: EB C5              jmp         0000000000000024
  000000000000005F: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000064: 48 83 C4 28        add         rsp,28h
  0000000000000068: C3                 ret

?do_toupper@?$ctype@D@std@@MEBADD@Z (protected: virtual char __cdecl std::ctype<char>::do_toupper(char)const ):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000012: 48 83 C0 10        add         rax,10h
  0000000000000016: 0F B6 4C 24 38     movzx       ecx,byte ptr [rsp+38h]
  000000000000001B: 48 8B D0           mov         rdx,rax
  000000000000001E: E8 00 00 00 00     call        _Toupper
  0000000000000023: 48 83 C4 28        add         rsp,28h
  0000000000000027: C3                 ret

?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z (protected: virtual char const * __cdecl std::ctype<char>::do_toupper(char *,char const *)const ):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8D 54 24 40     lea         rdx,[rsp+40h]
  0000000000000018: 48 8D 4C 24 38     lea         rcx,[rsp+38h]
  000000000000001D: E8 00 00 00 00     call        ??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z
  0000000000000022: EB 0D              jmp         0000000000000031
  0000000000000024: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000029: 48 FF C0           inc         rax
  000000000000002C: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000031: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000036: 48 39 44 24 38     cmp         qword ptr [rsp+38h],rax
  000000000000003B: 74 22              je          000000000000005F
  000000000000003D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000042: 48 83 C0 10        add         rax,10h
  0000000000000046: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000004B: 0F B6 09           movzx       ecx,byte ptr [rcx]
  000000000000004E: 48 8B D0           mov         rdx,rax
  0000000000000051: E8 00 00 00 00     call        _Toupper
  0000000000000056: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000005B: 88 01              mov         byte ptr [rcx],al
  000000000000005D: EB C5              jmp         0000000000000024
  000000000000005F: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000064: 48 83 C4 28        add         rsp,28h
  0000000000000068: C3                 ret

?do_widen@?$ctype@D@std@@MEBADD@Z (protected: virtual char __cdecl std::ctype<char>::do_widen(char)const ):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 0F B6 44 24 10     movzx       eax,byte ptr [rsp+10h]
  000000000000000E: C3                 ret

?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z (protected: virtual char const * __cdecl std::ctype<char>::do_widen(char const *,char const *,char *)const ):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 28        sub         rsp,28h
  0000000000000018: 48 8D 54 24 40     lea         rdx,[rsp+40h]
  000000000000001D: 48 8D 4C 24 38     lea         rcx,[rsp+38h]
  0000000000000022: E8 00 00 00 00     call        ??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z
  0000000000000027: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  000000000000002C: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000031: 48 2B C8           sub         rcx,rax
  0000000000000034: 48 8B C1           mov         rax,rcx
  0000000000000037: 4C 8B C0           mov         r8,rax
  000000000000003A: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  000000000000003F: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000044: E8 00 00 00 00     call        memcpy
  0000000000000049: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000004E: 48 83 C4 28        add         rsp,28h
  0000000000000052: C3                 ret

?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ (public: bool __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::empty(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 83 78 10 00     cmp         qword ptr [rax+10h],0
  0000000000000013: 75 09              jne         000000000000001E
  0000000000000015: C7 04 24 01 00 00  mov         dword ptr [rsp],1
                    00
  000000000000001C: EB 07              jmp         0000000000000025
  000000000000001E: C7 04 24 00 00 00  mov         dword ptr [rsp],0
                    00
  0000000000000025: 0F B6 04 24        movzx       eax,byte ptr [rsp]
  0000000000000029: 48 83 C4 18        add         rsp,18h
  000000000000002D: C3                 ret

?eof@?$_Narrow_char_traits@DH@std@@SAHXZ (public: static int __cdecl std::_Narrow_char_traits<char,int>::eof(void)):
  0000000000000000: B8 FF FF FF FF     mov         eax,0FFFFFFFFh
  0000000000000005: C3                 ret

?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z (public: static bool __cdecl std::_Narrow_char_traits<char,int>::eq_int_type(int,int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  0000000000000008: 48 83 EC 18        sub         rsp,18h
  000000000000000C: 8B 44 24 28        mov         eax,dword ptr [rsp+28h]
  0000000000000010: 39 44 24 20        cmp         dword ptr [rsp+20h],eax
  0000000000000014: 75 09              jne         000000000000001F
  0000000000000016: C7 04 24 01 00 00  mov         dword ptr [rsp],1
                    00
  000000000000001D: EB 07              jmp         0000000000000026
  000000000000001F: C7 04 24 00 00 00  mov         dword ptr [rsp],0
                    00
  0000000000000026: 0F B6 04 24        movzx       eax,byte ptr [rsp]
  000000000000002A: 48 83 C4 18        add         rsp,18h
  000000000000002E: C3                 ret

?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z (public: virtual bool __cdecl std::error_category::equivalent(class std::error_code const &,int)const ):
  0000000000000000: 44 89 44 24 18     mov         dword ptr [rsp+18h],r8d
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000018: E8 00 00 00 00     call        ?category@error_code@std@@QEBAAEBVerror_category@2@XZ
  000000000000001D: 48 8B D0           mov         rdx,rax
  0000000000000020: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000025: E8 00 00 00 00     call        ??8error_category@std@@QEBA_NAEBV01@@Z
  000000000000002A: 0F B6 C0           movzx       eax,al
  000000000000002D: 85 C0              test        eax,eax
  000000000000002F: 74 1A              je          000000000000004B
  0000000000000031: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000036: E8 00 00 00 00     call        ?value@error_code@std@@QEBAHXZ
  000000000000003B: 3B 44 24 50        cmp         eax,dword ptr [rsp+50h]
  000000000000003F: 75 0A              jne         000000000000004B
  0000000000000041: C7 44 24 20 01 00  mov         dword ptr [rsp+20h],1
                    00 00
  0000000000000049: EB 08              jmp         0000000000000053
  000000000000004B: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000053: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000058: 48 83 C4 38        add         rsp,38h
  000000000000005C: C3                 ret

?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z (public: virtual bool __cdecl std::error_category::equivalent(int,class std::error_condition const &)const ):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 48        sub         rsp,48h
  0000000000000012: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000017: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001A: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  000000000000001E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000023: 44 8B 44 24 58     mov         r8d,dword ptr [rsp+58h]
  0000000000000028: 48 8D 54 24 28     lea         rdx,[rsp+28h]
  000000000000002D: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000032: FF 54 24 20        call        qword ptr [rsp+20h]
  0000000000000036: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  000000000000003B: 48 8B C8           mov         rcx,rax
  000000000000003E: E8 00 00 00 00     call        ??8std@@YA_NAEBVerror_condition@0@0@Z
  0000000000000043: 48 83 C4 48        add         rsp,48h
  0000000000000047: C3                 ret

?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ (public: char __cdecl std::basic_ios<char,struct std::char_traits<char> >::fill(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 0F B6 40 58        movzx       eax,byte ptr [rax+58h]
  000000000000000E: C3                 ret

?flags@ios_base@std@@QEBAHXZ (public: int __cdecl std::ios_base::flags(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 8B 40 18           mov         eax,dword ptr [rax+18h]
  000000000000000D: C3                 ret

?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ (public: class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::flush(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 58        sub         rsp,58h
  0000000000000009: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000015: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  000000000000001A: 48 03 C8           add         rcx,rax
  000000000000001D: 48 8B C1           mov         rax,rcx
  0000000000000020: 48 8B C8           mov         rcx,rax
  0000000000000023: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000028: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000002D: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  0000000000000033: 0F 84 83 00 00 00  je          00000000000000BC
  0000000000000039: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  000000000000003E: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000000000043: E8 00 00 00 00     call        ??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
  0000000000000048: 90                 nop
  0000000000000049: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  000000000000004E: E8 00 00 00 00     call        ??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ
  0000000000000053: 0F B6 C0           movzx       eax,al
  0000000000000056: 85 C0              test        eax,eax
  0000000000000058: 74 58              je          00000000000000B2
  000000000000005A: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000062: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000067: E8 00 00 00 00     call        ?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ
  000000000000006C: 89 44 24 24        mov         dword ptr [rsp+24h],eax
  0000000000000070: 83 7C 24 24 FF     cmp         dword ptr [rsp+24h],0FFFFFFFFh
  0000000000000075: 75 0B              jne         0000000000000082
  0000000000000077: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000007B: 83 C8 04           or          eax,4
  000000000000007E: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000082: EB 00              jmp         $LN11
$LN11:
  0000000000000084: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000089: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000008C: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000090: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000095: 48 03 C8           add         rcx,rax
  0000000000000098: 48 8B C1           mov         rax,rcx
  000000000000009B: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  00000000000000A0: 45 33 C0           xor         r8d,r8d
  00000000000000A3: 8B 54 24 20        mov         edx,dword ptr [rsp+20h]
  00000000000000A7: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  00000000000000AC: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  00000000000000B1: 90                 nop
  00000000000000B2: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  00000000000000B7: E8 00 00 00 00     call        ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  00000000000000BC: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  00000000000000C1: 48 83 C4 58        add         rsp,58h
  00000000000000C5: C3                 ret

?dtor$0@?0??flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ@4HA (int `public: class basic_ostream<char,struct std::char_traits<char> >::flush & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::flush(void)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 4D 40        lea         rcx,[rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

?catch$1@?0??flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ@4HA (int `public: class basic_ostream<char,struct std::char_traits<char> >::flush & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::flush(void)'::`1'::catch$1):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 55                 push        rbp
  0000000000000006: 48 83 EC 20        sub         rsp,20h
  000000000000000A: 48 8B EA           mov         rbp,rdx
__catch$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ$0:
  000000000000000D: 48 8B 45 60        mov         rax,qword ptr [rbp+60h]
  0000000000000011: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000014: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000018: 48 8B 4D 60        mov         rcx,qword ptr [rbp+60h]
  000000000000001C: 48 03 C8           add         rcx,rax
  000000000000001F: 48 8B C1           mov         rax,rcx
  0000000000000022: 48 89 45 30        mov         qword ptr [rbp+30h],rax
  0000000000000026: 41 B0 01           mov         r8b,1
  0000000000000029: BA 04 00 00 00     mov         edx,4
  000000000000002E: 48 8B 4D 30        mov         rcx,qword ptr [rbp+30h]
  0000000000000032: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  0000000000000037: 90                 nop
  0000000000000038: 48 8D 05 00 00 00  lea         rax,[$LN11]
                    00
  000000000000003F: 48 83 C4 20        add         rsp,20h
  0000000000000043: 5D                 pop         rbp
  0000000000000044: C3                 ret
  0000000000000045: CC                 int         3

?getloc@ios_base@std@@QEBA?AVlocale@2@XZ (public: class std::locale __cdecl std::ios_base::getloc(void)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000013: 48 8B 50 40        mov         rdx,qword ptr [rax+40h]
  0000000000000017: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000001C: E8 00 00 00 00     call        ??0locale@std@@QEAA@AEBV01@@Z
  0000000000000021: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000026: 48 83 C4 28        add         rsp,28h
  000000000000002A: C3                 ret

?good@ios_base@std@@QEBA_NXZ (public: bool __cdecl std::ios_base::good(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000000E: E8 00 00 00 00     call        ?rdstate@ios_base@std@@QEBAHXZ
  0000000000000013: 85 C0              test        eax,eax
  0000000000000015: 75 0A              jne         0000000000000021
  0000000000000017: C7 44 24 20 01 00  mov         dword ptr [rsp+20h],1
                    00 00
  000000000000001F: EB 08              jmp         0000000000000029
  0000000000000021: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000029: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  000000000000002E: 48 83 C4 38        add         rsp,38h
  0000000000000032: C3                 ret

?iostream_category@std@@YAAEBVerror_category@1@XZ (class std::error_category const & __cdecl std::iostream_category(void)):
  0000000000000000: 48 83 EC 28        sub         rsp,28h
  0000000000000004: E8 00 00 00 00     call        ??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ
  0000000000000009: 48 83 C4 28        add         rsp,28h
  000000000000000D: C3                 ret

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

?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z (class std::error_code __cdecl std::make_error_code(enum std::io_errc)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: E8 00 00 00 00     call        ?iostream_category@std@@YAAEBVerror_category@1@XZ
  0000000000000012: 4C 8B C0           mov         r8,rax
  0000000000000015: 8B 54 24 38        mov         edx,dword ptr [rsp+38h]
  0000000000000019: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001E: E8 00 00 00 00     call        ??0error_code@std@@QEAA@HAEBVerror_category@1@@Z
  0000000000000023: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000028: 48 83 C4 28        add         rsp,28h
  000000000000002C: C3                 ret

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

?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z (public: virtual class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_Iostream_error_category2::message(int)const ):
  0000000000000000: 44 89 44 24 18     mov         dword ptr [rsp+18h],r8d
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  000000000000001B: 83 7C 24 50 01     cmp         dword ptr [rsp+50h],1
  0000000000000020: 75 34              jne         0000000000000056
  0000000000000022: 48 C7 44 24 28 15  mov         qword ptr [rsp+28h],15h
                    00 00 00
  000000000000002B: 41 B8 15 00 00 00  mov         r8d,15h
  0000000000000031: 48 8D 15 00 00 00  lea         rdx,[?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB]
                    00
  0000000000000038: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000003D: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z
  0000000000000042: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000046: 83 C8 01           or          eax,1
  0000000000000049: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000004D: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000052: EB 28              jmp         000000000000007C
  0000000000000054: EB 26              jmp         000000000000007C
  0000000000000056: 8B 4C 24 50        mov         ecx,dword ptr [rsp+50h]
  000000000000005A: E8 00 00 00 00     call        ?_Syserror_map@std@@YAPEBDH@Z
  000000000000005F: 48 8B D0           mov         rdx,rax
  0000000000000062: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000067: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  000000000000006C: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000070: 83 C8 01           or          eax,1
  0000000000000073: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000077: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  000000000000007C: 48 83 C4 38        add         rsp,38h
  0000000000000080: C3                 ret

?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::error_code::message(void)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 48        sub         rsp,48h
  000000000000000E: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000016: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000001B: E8 00 00 00 00     call        ?category@error_code@std@@QEBAAEBVerror_category@2@XZ
  0000000000000020: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000025: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000002A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002D: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  0000000000000031: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000036: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000003B: E8 00 00 00 00     call        ?value@error_code@std@@QEBAHXZ
  0000000000000040: 89 44 24 24        mov         dword ptr [rsp+24h],eax
  0000000000000044: 44 8B 44 24 24     mov         r8d,dword ptr [rsp+24h]
  0000000000000049: 48 8B 54 24 58     mov         rdx,qword ptr [rsp+58h]
  000000000000004E: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000053: FF 54 24 30        call        qword ptr [rsp+30h]
  0000000000000057: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000005B: 83 C8 01           or          eax,1
  000000000000005E: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000062: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  0000000000000067: 48 83 C4 48        add         rsp,48h
  000000000000006B: C3                 ret

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

?name@_Iostream_error_category2@std@@UEBAPEBDXZ (public: virtual char const * __cdecl std::_Iostream_error_category2::name(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8D 05 00 00 00  lea         rax,[??_C@_08LLGCOLLL@iostream@]
                    00
  000000000000000C: C3                 ret

?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ (public: int __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::pubsync(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000016: FF 50 68           call        qword ptr [rax+68h]
  0000000000000019: 48 83 C4 28        add         rsp,28h
  000000000000001D: C3                 ret

?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z (public: class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::put(char)):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 68        sub         rsp,68h
  000000000000000D: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000015: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  000000000000001A: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  000000000000001F: E8 00 00 00 00     call        ??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
  0000000000000024: 90                 nop
  0000000000000025: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  000000000000002A: E8 00 00 00 00     call        ??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ
  000000000000002F: 0F B6 C0           movzx       eax,al
  0000000000000032: 85 C0              test        eax,eax
  0000000000000034: 75 0D              jne         0000000000000043
  0000000000000036: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000003A: 83 C8 04           or          eax,4
  000000000000003D: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000041: EB 69              jmp         $LN11
  0000000000000043: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000048: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000004B: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000004F: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000054: 48 03 C8           add         rcx,rax
  0000000000000057: 48 8B C1           mov         rax,rcx
  000000000000005A: 48 8B C8           mov         rcx,rax
  000000000000005D: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000062: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000067: 0F B6 54 24 78     movzx       edx,byte ptr [rsp+78h]
  000000000000006C: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000071: E8 00 00 00 00     call        ?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z
  0000000000000076: 89 44 24 24        mov         dword ptr [rsp+24h],eax
  000000000000007A: 8B 44 24 24        mov         eax,dword ptr [rsp+24h]
  000000000000007E: 89 44 24 28        mov         dword ptr [rsp+28h],eax
  0000000000000082: E8 00 00 00 00     call        ?eof@?$_Narrow_char_traits@DH@std@@SAHXZ
  0000000000000087: 89 44 24 2C        mov         dword ptr [rsp+2Ch],eax
  000000000000008B: 8B 54 24 28        mov         edx,dword ptr [rsp+28h]
  000000000000008F: 8B 4C 24 2C        mov         ecx,dword ptr [rsp+2Ch]
  0000000000000093: E8 00 00 00 00     call        ?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z
  0000000000000098: 0F B6 C0           movzx       eax,al
  000000000000009B: 85 C0              test        eax,eax
  000000000000009D: 74 0B              je          00000000000000AA
  000000000000009F: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000000A3: 83 C8 04           or          eax,4
  00000000000000A6: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000000AA: EB 00              jmp         $LN11
$LN11:
  00000000000000AC: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000B1: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000000B4: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  00000000000000B8: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000BD: 48 03 C8           add         rcx,rax
  00000000000000C0: 48 8B C1           mov         rax,rcx
  00000000000000C3: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  00000000000000C8: 45 33 C0           xor         r8d,r8d
  00000000000000CB: 8B 54 24 20        mov         edx,dword ptr [rsp+20h]
  00000000000000CF: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000D4: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  00000000000000D9: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000DE: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  00000000000000E3: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  00000000000000E8: E8 00 00 00 00     call        ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  00000000000000ED: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  00000000000000F2: 48 83 C4 68        add         rsp,68h
  00000000000000F6: C3                 ret

?dtor$0@?0??put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z@4HA (int `public: class basic_ostream<char,struct std::char_traits<char> >::put & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::put(char)'::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 4D 50        lea         rcx,[rbp+50h]
  000000000000000D: E8 00 00 00 00     call        ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

?catch$1@?0??put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z@4HA (int `public: class basic_ostream<char,struct std::char_traits<char> >::put & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::put(char)'::`1'::catch$1):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 55                 push        rbp
  0000000000000006: 48 83 EC 20        sub         rsp,20h
  000000000000000A: 48 8B EA           mov         rbp,rdx
__catch$?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z$0:
  000000000000000D: 48 8B 45 70        mov         rax,qword ptr [rbp+70h]
  0000000000000011: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000014: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000018: 48 8B 4D 70        mov         rcx,qword ptr [rbp+70h]
  000000000000001C: 48 03 C8           add         rcx,rax
  000000000000001F: 48 8B C1           mov         rax,rcx
  0000000000000022: 48 89 45 38        mov         qword ptr [rbp+38h],rax
  0000000000000026: 41 B0 01           mov         r8b,1
  0000000000000029: BA 04 00 00 00     mov         edx,4
  000000000000002E: 48 8B 4D 38        mov         rcx,qword ptr [rbp+38h]
  0000000000000032: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  0000000000000037: 90                 nop
  0000000000000038: 48 8D 05 00 00 00  lea         rax,[$LN11]
                    00
  000000000000003F: 48 83 C4 20        add         rsp,20h
  0000000000000043: 5D                 pop         rbp
  0000000000000044: C3                 ret
  0000000000000045: CC                 int         3

?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ (public: class std::basic_streambuf<char,struct std::char_traits<char> > * __cdecl std::basic_ios<char,struct std::char_traits<char> >::rdbuf(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 48        mov         rax,qword ptr [rax+48h]
  000000000000000E: C3                 ret

?rdstate@ios_base@std@@QEBAHXZ (public: int __cdecl std::ios_base::rdstate(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 8B 40 10           mov         eax,dword ptr [rax+10h]
  000000000000000D: C3                 ret

?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ (public: class std::_Facet_base * __cdecl std::unique_ptr<class std::_Facet_base,struct std::default_delete<class std::_Facet_base> >::release(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 C7 44 24 20 00  mov         qword ptr [rsp+20h],0
                    00 00 00
  0000000000000012: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000017: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  000000000000001C: 48 8B C8           mov         rcx,rax
  000000000000001F: E8 00 00 00 00     call        ??$exchange@PEAV_Facet_base@std@@$$T@std@@YAPEAV_Facet_base@0@AEAPEAV10@$$QEA$$T@Z
  0000000000000024: 48 83 C4 38        add         rsp,38h
  0000000000000028: C3                 ret

?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z (public: static class std::allocator<char> __cdecl std::_Default_allocator_traits<class std::allocator<char> >::select_on_container_copy_construction(class std::allocator<char> const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000F: C3                 ret

?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z (public: void __cdecl std::basic_ios<char,struct std::char_traits<char> >::setstate(int,bool)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 28        sub         rsp,28h
  0000000000000012: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000017: E8 00 00 00 00     call        ?rdstate@ios_base@std@@QEBAHXZ
  000000000000001C: 0B 44 24 38        or          eax,dword ptr [rsp+38h]
  0000000000000020: 44 0F B6 44 24 40  movzx       r8d,byte ptr [rsp+40h]
  0000000000000026: 8B D0              mov         edx,eax
  0000000000000028: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002D: E8 00 00 00 00     call        ?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  0000000000000032: 48 83 C4 28        add         rsp,28h
  0000000000000036: C3                 ret

?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ (public: unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::size(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  000000000000000E: C3                 ret

?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z (public: int __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::sputc(char)):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 38        sub         rsp,38h
  000000000000000D: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000012: E8 00 00 00 00     call        ?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ
  0000000000000017: 48 85 C0           test        rax,rax
  000000000000001A: 7E 21              jle         000000000000003D
  000000000000001C: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000021: E8 00 00 00 00     call        ?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ
  0000000000000026: 0F B6 4C 24 48     movzx       ecx,byte ptr [rsp+48h]
  000000000000002B: 88 08              mov         byte ptr [rax],cl
  000000000000002D: 0F B6 4C 24 48     movzx       ecx,byte ptr [rsp+48h]
  0000000000000032: E8 00 00 00 00     call        ?to_int_type@?$_Narrow_char_traits@DH@std@@SAHD@Z
  0000000000000037: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000003B: EB 30              jmp         000000000000006D
  000000000000003D: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000042: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000045: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000049: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000004E: 0F B6 4C 24 48     movzx       ecx,byte ptr [rsp+48h]
  0000000000000053: E8 00 00 00 00     call        ?to_int_type@?$_Narrow_char_traits@DH@std@@SAHD@Z
  0000000000000058: 89 44 24 24        mov         dword ptr [rsp+24h],eax
  000000000000005C: 8B 54 24 24        mov         edx,dword ptr [rsp+24h]
  0000000000000060: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000065: FF 54 24 28        call        qword ptr [rsp+28h]
  0000000000000069: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000006D: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000071: 48 83 C4 38        add         rsp,38h
  0000000000000075: C3                 ret

?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z (public: __int64 __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::sputn(char const *,__int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000018: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001B: 48 8B 40 48        mov         rax,qword ptr [rax+48h]
  000000000000001F: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000024: 4C 8B 44 24 50     mov         r8,qword ptr [rsp+50h]
  0000000000000029: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000002E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000033: FF 54 24 20        call        qword ptr [rsp+20h]
  0000000000000037: 48 83 C4 38        add         rsp,38h
  000000000000003B: C3                 ret

?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ (public: class std::basic_ostream<char,struct std::char_traits<char> > * __cdecl std::basic_ios<char,struct std::char_traits<char> >::tie(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 50        mov         rax,qword ptr [rax+50h]
  000000000000000E: C3                 ret

?to_int_type@?$_Narrow_char_traits@DH@std@@SAHD@Z (public: static int __cdecl std::_Narrow_char_traits<char,int>::to_int_type(char)):
  0000000000000000: 88 4C 24 08        mov         byte ptr [rsp+8],cl
  0000000000000004: 0F B6 44 24 08     movzx       eax,byte ptr [rsp+8]
  0000000000000009: C3                 ret

?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@H@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::to_string(int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 38        sub         rsp,38h
  000000000000000D: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000015: 8B 54 24 48        mov         edx,dword ptr [rsp+48h]
  0000000000000019: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001E: E8 00 00 00 00     call        ??$_Integral_to_string@DH@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@H@Z
  0000000000000023: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000027: 83 C8 01           or          eax,1
  000000000000002A: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000002E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000033: 48 83 C4 38        add         rsp,38h
  0000000000000037: C3                 ret

?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@J@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::to_string(long)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 38        sub         rsp,38h
  000000000000000D: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000015: 8B 54 24 48        mov         edx,dword ptr [rsp+48h]
  0000000000000019: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001E: E8 00 00 00 00     call        ??$_Integral_to_string@DJ@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@J@Z
  0000000000000023: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000027: 83 C8 01           or          eax,1
  000000000000002A: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000002E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000033: 48 83 C4 38        add         rsp,38h
  0000000000000037: C3                 ret

?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@M@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::to_string(float)):
  0000000000000000: F3 0F 11 4C 24 10  movss       dword ptr [rsp+10h],xmm1
  0000000000000006: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000B: 48 83 EC 38        sub         rsp,38h
  000000000000000F: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000017: F3 0F 5A 44 24 48  cvtss2sd    xmm0,dword ptr [rsp+48h]
  000000000000001D: 0F 28 C8           movaps      xmm1,xmm0
  0000000000000020: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000025: E8 00 00 00 00     call        ?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@N@Z
  000000000000002A: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000002E: 83 C8 01           or          eax,1
  0000000000000031: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000035: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000003A: 48 83 C4 38        add         rsp,38h
  000000000000003E: C3                 ret

?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@N@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::to_string(double)):
  0000000000000000: F2 0F 11 4C 24 10  movsd       mmword ptr [rsp+10h],xmm1
  0000000000000006: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000B: 48 83 EC 48        sub         rsp,48h
  000000000000000F: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000017: F2 0F 10 4C 24 58  movsd       xmm1,mmword ptr [rsp+58h]
  000000000000001D: 66 48 0F 7E CA     movq        rdx,xmm1
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_C@_02NJPGOMH@?$CFf@]
                    00
  0000000000000029: E8 00 00 00 00     call        _scprintf
  000000000000002E: 48 98              cdqe
  0000000000000030: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000035: 45 33 C0           xor         r8d,r8d
  0000000000000038: 48 8B 54 24 28     mov         rdx,qword ptr [rsp+28h]
  000000000000003D: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000042: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z
  0000000000000047: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  000000000000004C: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000050: 83 C8 01           or          eax,1
  0000000000000053: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000057: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000005C: 48 FF C0           inc         rax
  000000000000005F: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000064: 33 D2              xor         edx,edx
  0000000000000066: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000006B: E8 00 00 00 00     call        ??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z
  0000000000000070: F2 0F 10 5C 24 58  movsd       xmm3,mmword ptr [rsp+58h]
  0000000000000076: 66 49 0F 7E D9     movq        r9,xmm3
  000000000000007B: 4C 8D 05 00 00 00  lea         r8,[??_C@_02NJPGOMH@?$CFf@]
                    00
  0000000000000082: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000087: 48 8B D1           mov         rdx,rcx
  000000000000008A: 48 8B C8           mov         rcx,rax
  000000000000008D: E8 00 00 00 00     call        sprintf_s
  0000000000000092: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000097: 48 83 C4 48        add         rsp,48h
  000000000000009B: C3                 ret

?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@_J@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::to_string(__int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000016: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000001B: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000020: E8 00 00 00 00     call        ??$_Integral_to_string@D_J@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@_J@Z
  0000000000000025: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000029: 83 C8 01           or          eax,1
  000000000000002C: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000030: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000035: 48 83 C4 38        add         rsp,38h
  0000000000000039: C3                 ret

?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@_K@Z (class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::to_string(unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000016: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000001B: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000020: E8 00 00 00 00     call        ??$_UIntegral_to_string@D_K@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@_K@Z
  0000000000000025: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000029: 83 C8 01           or          eax,1
  000000000000002C: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000030: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000035: 48 83 C4 38        add         rsp,38h
  0000000000000039: C3                 ret

?value@error_code@std@@QEBAHXZ (public: int __cdecl std::error_code::value(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 8B 00              mov         eax,dword ptr [rax]
  000000000000000C: C3                 ret

?value@error_condition@std@@QEBAHXZ (public: int __cdecl std::error_condition::value(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 8B 00              mov         eax,dword ptr [rax]
  000000000000000C: C3                 ret

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

?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z (public: char __cdecl std::basic_ios<char,struct std::char_traits<char> >::widen(char)const ):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 58        sub         rsp,58h
  000000000000000D: 48 8D 54 24 40     lea         rdx,[rsp+40h]
  0000000000000012: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000017: E8 00 00 00 00     call        ?getloc@ios_base@std@@QEBA?AVlocale@2@XZ
  000000000000001C: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000021: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000026: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000002B: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000030: E8 00 00 00 00     call        ??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z
  0000000000000035: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  000000000000003A: 0F B6 54 24 68     movzx       edx,byte ptr [rsp+68h]
  000000000000003F: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000044: E8 00 00 00 00     call        ?widen@?$ctype@D@std@@QEBADD@Z
  0000000000000049: 88 44 24 20        mov         byte ptr [rsp+20h],al
  000000000000004D: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000000000052: E8 00 00 00 00     call        ??1locale@std@@QEAA@XZ
  0000000000000057: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  000000000000005C: 48 83 C4 58        add         rsp,58h
  0000000000000060: C3                 ret

?dtor$0@?0??widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z@4HA (int `public: char __cdecl std::basic_ios<char,struct std::char_traits<char> >::widen(char)const '::`1'::dtor$0):
  0000000000000000: 40 55              push        rbp
  0000000000000002: 48 83 EC 20        sub         rsp,20h
  0000000000000006: 48 8B EA           mov         rbp,rdx
  0000000000000009: 48 8D 4D 40        lea         rcx,[rbp+40h]
  000000000000000D: E8 00 00 00 00     call        ??1locale@std@@QEAA@XZ
  0000000000000012: 48 83 C4 20        add         rsp,20h
  0000000000000016: 5D                 pop         rbp
  0000000000000017: C3                 ret

?widen@?$ctype@D@std@@QEBADD@Z (public: char __cdecl std::ctype<char>::widen(char)const ):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 38        sub         rsp,38h
  000000000000000D: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000012: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000015: 48 8B 40 40        mov         rax,qword ptr [rax+40h]
  0000000000000019: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000001E: 0F B6 54 24 48     movzx       edx,byte ptr [rsp+48h]
  0000000000000023: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000028: FF 54 24 20        call        qword ptr [rsp+20h]
  000000000000002C: 48 83 C4 38        add         rsp,38h
  0000000000000030: C3                 ret

?width@ios_base@std@@QEAA_J_J@Z (public: __int64 __cdecl std::ios_base::width(__int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 18        sub         rsp,18h
  000000000000000E: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000013: 48 8B 40 28        mov         rax,qword ptr [rax+28h]
  0000000000000017: 48 89 04 24        mov         qword ptr [rsp],rax
  000000000000001B: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000020: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000025: 48 89 48 28        mov         qword ptr [rax+28h],rcx
  0000000000000029: 48 8B 04 24        mov         rax,qword ptr [rsp]
  000000000000002D: 48 83 C4 18        add         rsp,18h
  0000000000000031: C3                 ret

?width@ios_base@std@@QEBA_JXZ (public: __int64 __cdecl std::ios_base::width(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 28        mov         rax,qword ptr [rax+28h]
  000000000000000E: C3                 ret

__local_stdio_printf_options:
  0000000000000000: 48 8D 05 00 00 00  lea         rax,[?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA]
                    00
  0000000000000007: C3                 ret

_scprintf:
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000F: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: 48 8D 44 24 48     lea         rax,[rsp+48h]
  000000000000001D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000022: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  0000000000000027: 33 D2              xor         edx,edx
  0000000000000029: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000002E: E8 00 00 00 00     call        _vscprintf_l
  0000000000000033: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000037: 48 C7 44 24 28 00  mov         qword ptr [rsp+28h],0
                    00 00 00
  0000000000000040: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000044: 48 83 C4 38        add         rsp,38h
  0000000000000048: C3                 ret

_vscprintf_l:
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 48        sub         rsp,48h
  0000000000000013: E8 00 00 00 00     call        __local_stdio_printf_options
  0000000000000018: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001B: 48 83 C8 02        or          rax,2
  000000000000001F: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000024: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000000000029: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000002E: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000033: 4C 8B 4C 24 50     mov         r9,qword ptr [rsp+50h]
  0000000000000038: 45 33 C0           xor         r8d,r8d
  000000000000003B: 33 D2              xor         edx,edx
  000000000000003D: 48 8B C8           mov         rcx,rax
  0000000000000040: E8 00 00 00 00     call        __stdio_common_vsprintf
  0000000000000045: 89 44 24 30        mov         dword ptr [rsp+30h],eax
  0000000000000049: 83 7C 24 30 00     cmp         dword ptr [rsp+30h],0
  000000000000004E: 7D 0A              jge         000000000000005A
  0000000000000050: C7 44 24 34 FF FF  mov         dword ptr [rsp+34h],0FFFFFFFFh
                    FF FF
  0000000000000058: EB 08              jmp         0000000000000062
  000000000000005A: 8B 44 24 30        mov         eax,dword ptr [rsp+30h]
  000000000000005E: 89 44 24 34        mov         dword ptr [rsp+34h],eax
  0000000000000062: 8B 44 24 34        mov         eax,dword ptr [rsp+34h]
  0000000000000066: 48 83 C4 48        add         rsp,48h
  000000000000006A: C3                 ret

_vsprintf_s_l:
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 48        sub         rsp,48h
  0000000000000018: E8 00 00 00 00     call        __local_stdio_printf_options
  000000000000001D: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000022: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000000000027: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  000000000000002C: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000031: 4C 8B 4C 24 60     mov         r9,qword ptr [rsp+60h]
  0000000000000036: 4C 8B 44 24 58     mov         r8,qword ptr [rsp+58h]
  000000000000003B: 48 8B 54 24 50     mov         rdx,qword ptr [rsp+50h]
  0000000000000040: 48 8B 08           mov         rcx,qword ptr [rax]
  0000000000000043: E8 00 00 00 00     call        __stdio_common_vsprintf_s
  0000000000000048: 89 44 24 30        mov         dword ptr [rsp+30h],eax
  000000000000004C: 83 7C 24 30 00     cmp         dword ptr [rsp+30h],0
  0000000000000051: 7D 0A              jge         000000000000005D
  0000000000000053: C7 44 24 34 FF FF  mov         dword ptr [rsp+34h],0FFFFFFFFh
                    FF FF
  000000000000005B: EB 08              jmp         0000000000000065
  000000000000005D: 8B 44 24 30        mov         eax,dword ptr [rsp+30h]
  0000000000000061: 89 44 24 34        mov         dword ptr [rsp+34h],eax
  0000000000000065: 8B 44 24 34        mov         eax,dword ptr [rsp+34h]
  0000000000000069: 48 83 C4 48        add         rsp,48h
  000000000000006D: C3                 ret

sprintf_s:
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000014: 48 83 EC 48        sub         rsp,48h
  0000000000000018: 48 8D 44 24 68     lea         rax,[rsp+68h]
  000000000000001D: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000022: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000027: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000002C: 45 33 C9           xor         r9d,r9d
  000000000000002F: 4C 8B 44 24 60     mov         r8,qword ptr [rsp+60h]
  0000000000000034: 48 8B 54 24 58     mov         rdx,qword ptr [rsp+58h]
  0000000000000039: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000003E: E8 00 00 00 00     call        _vsprintf_s_l
  0000000000000043: 89 44 24 30        mov         dword ptr [rsp+30h],eax
  0000000000000047: 48 C7 44 24 38 00  mov         qword ptr [rsp+38h],0
                    00 00 00
  0000000000000050: 8B 44 24 30        mov         eax,dword ptr [rsp+30h]
  0000000000000054: 48 83 C4 48        add         rsp,48h
  0000000000000058: C3                 ret

  Summary

          10 .bss
        1DA0 .chks64
          10 .data
         13C .data$r
         11D .data$rs
          80 .debug$S
         13C .drectve
         B1C .pdata
         26F .rdata
         6B4 .rdata$r
        4F56 .text$mn
         3AF .text$x
          14 .voltbl
         AEE .xdata
         1D0 .xdata$x
