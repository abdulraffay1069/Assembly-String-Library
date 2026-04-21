;char * strncpy ( char * destination, const char * source, size_t num )
; Input:  edi = destination
;         esi = source
;         ecx = max chars to append
; Output: eax = destination

.386
.model flat,stdcall
.stack 4096
PUBLIC strncpy
.code
strncpy PROC, dest:DWORD, src:DWORD, count:DWORD

	push edi
	push esi
	push ecx
	push edx
	mov eax,0

	mov ecx,count    ;no. of character to copy
	mov edi,dest	; destination array
	mov esi,src   ;source array
	mov edx,edi        ;because we have to return starting pointer of destination array and edi will be modified below
	
	cmp ecx,0
	jz ExitIt
	L1:
		cmp byte ptr [esi],0
		je appendNull                        ;if we have reached end of source string then return
		mov al,byte ptr [esi]
		mov byte ptr [edi],al	;copied element in edi
		inc esi
		inc edi
		dec ecx
		cmp ecx,0
		jz ExitIt
	jmp L1

	appendNull:
		mov byte ptr [edi],0
		inc edi
		dec ecx
		cmp ecx,0
		jz ExitIt
	jmp appendNull

	ExitIt:
		 mov byte ptr [edi],0
		 mov eax,edx   ;returning pointer to destination array in eax
		 pop edx
		 pop ecx
		 pop esi
		 pop edi

	 ret 12
strncpy ENDP
end
