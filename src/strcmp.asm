;int strcmp ( const char * str1, const char * str2 )
; Input:  esi = string1
;         edi = string2
; Output: eax = negative, 0, or positive (like C strcmp)

.386
.model flat,stdcall
.stack 4096
PUBLIC strcmp
.code
strcmp PROC, str1:DWORD, str2:DWORD

	push esi
	push edi

	mov esi,str1			;offset of first string
	mov edi,str2			;offset of second string

	mov eax,0                   ;storing value in eax to tell if string 1 is greater than second string or equal or smaller

	L1:
		mov al,byte ptr [edi]
		cmp byte ptr [esi],al
		jne NotEqual
		cmp byte ptr [esi],0  ;to exit loop if both strings are same and has reached end otherwise it will run infinite many times
		je EndOfString
		inc esi
		inc edi
	jmp L1

	NotEqual:
		ja Greater
		mov eax,-1
		jmp ExitIt

	Greater:
		mov eax,1
		jmp ExitIt

	EndOfString:
		mov eax,0
		jmp ExitIt

	ExitIt:
		pop edi
		pop esi
	 
	ret 8
strcmp ENDP

end
