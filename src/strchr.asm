;char * strchr ( char * str, int character )
; Input:  esi = string pointer
;         al  = character to find (as integer)
; Output: eax = pointer to first occurrence, or NULL (0) if not found

.386
.model flat,stdcall
.stack 4096
PUBLIC strchr
.code
strchr PROC,strPtr:DWORD, character:DWORD

	push ebx
	push esi
	mov esi,strPtr    ;pointer to array
	mov ebx,character    ;receiving character as dword
	mov al,bl

	L1:
		cmp al,byte ptr [esi]
		jz ItemFound
		cmp byte ptr [esi],0
		jz NullFound
		inc esi
	jmp L1

	ItemFound:
		mov eax,esi
		jmp ExitIt

	NullFound:
		mov eax,0
	
	ExitIt:
		pop esi
		pop ebx

	ret 8

strchr ENDP
end
