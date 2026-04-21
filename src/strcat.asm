;char * strcat ( char * destination, const char * source )
; Input:  edi = destination (must have space)
;         esi = source to append
; Output: eax = destination

.386
.model flat,stdcall
.stack 4096
PUBLIC strcat
.code
strcat PROC, dest:DWORD, src:DWORD

	push edi
	push esi
	push edx

	mov edi,dest      ;destination pointer
	mov esi,src     ;source pointer
	mov edx,edi          ;saving destination pointer so that we can return at end

	;reaching at point of destination array where to start appending to it
	L1:
		cmp byte ptr [edi],0
		jz appendIt
		inc edi
	jmp L1

	;copying from source to destination
	appendIt:

	mov eax,0
	L2:
		cmp byte ptr [esi],0
		jz workDone
		mov al,byte ptr [esi]
		mov byte ptr [edi],al
		inc edi
		inc esi
	jmp L2

	workDone:
		;copying null character also
		mov byte ptr [edi],0
		mov eax,edx             ;assigning eax destination pointer

		pop edx
		pop esi
		pop edi
	ret 8
strcat ENDP

end

