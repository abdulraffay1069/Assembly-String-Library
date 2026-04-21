;int strncmp ( const char * str1, const char * str2, size_t num )
; Input:  ESI = string1
;         edi = string2
;         ecx = num (max chars to compare)
; Output: eax = comparison result

.386
.model flat,stdcall
.stack 4096

PUBLIC strncmp
.code
strncmp PROC, str1:DWORD, str2:DWORD, count:DWORD

	push esi
	push edi

	mov ecx,count
	mov edi,str2				;offset of second string(destination)
	mov esi,str1			;offset of first string(source)

	cmp ecx,0
	jz EndOfString
	mov eax,0                   ;storing value in eax to tell if string 1 is greater than second string or equal or smaller

	L1:
		mov al,byte ptr [edi]
		cmp byte ptr [esi],al
		jne NotEqual
		cmp byte ptr [esi],0
		je EndOfString
		inc esi
		inc edi
	LOOP L1

	jmp EndOfString		;if we reached here..it means there was no dis similarity in both arrays so they are equal upto this point

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

	 
	ret 12
strncmp ENDP

end
