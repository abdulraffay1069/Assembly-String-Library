;size_t strlen ( const char * str )
; Input:  esi = pointer to null-terminated string
; Output: eax = length (not counting null)


.386
.model flat,stdcall
.stack 4096
PUBLIC strlen
.code
strlen PROC, strPtr:DWORD

	push esi
	mov esi,strPtr        ;storing address of array in esi to iterate over elements of string
	mov eax,0				  ;using eax to store length of array...initializing it with zero in start

	L1:
		cmp byte ptr [esi],0
		jz ExitIt
		inc esi
		inc eax
	jmp L1

	ExitIt:
		pop esi

	ret 4
strlen ENDP
END
