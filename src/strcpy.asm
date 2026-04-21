;char * strcpy ( char * destination, const char * source )
; Input:  edi = destination buffer
;         esi = source string
; Output: eax = original destination pointer (edi)

.386
.model flat,stdcall
.stack 4096
PUBLIC strcpy
.code
strcpy PROC, dest:DWORD, src:DWORD

	push edi
	push esi
	push edx
	mov eax,0

	mov edi,dest		; destination array
	mov esi,src		;source array
	mov edx,edi      ;so that we can return the pointer of start  of destination array back

	L1:
		cmp byte ptr [esi],0
		je ExitIt                        ;if we have reached end of source string then return
		mov al,byte ptr [esi]
		mov byte ptr [edi],al	;copied element in edi
		inc esi
		inc edi
	jmp L1

	ExitIt:
		 mov byte ptr [edi],0  ;assigning null in it
		 mov eax,edx   ;returning pointer to destination array in eax
		 pop edx
		 pop esi
		 pop edi

	 ret 8
strcpy ENDP
end
