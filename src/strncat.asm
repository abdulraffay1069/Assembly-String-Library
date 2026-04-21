;char * strncat ( char * destination, const char * source, size_t num )
; Input:  edi = destination
;         esi = source
;         ecx = max chars to append
; Output: eax = destination

.386
.model flat,stdcall
.stack 4096

PUBLIC strncat

.code
strncat PROC, dest:DWORD, src:DWORD, count:DWORD

	push edi
	push esi
	push edx
	push ecx

	mov ecx,count     ;no. of characaters to append
	mov edi,dest      ;destination pointer
	mov esi,src			;source pointer
	mov edx,edi          ;saving destination pointer so that we can return at end

	cmp ecx,0
	jz workDone
	;reaching at point of destination array where to start appending to it
	L1:
		cmp byte ptr [edi],0
		jz appendIt
		inc edi
	jmp L1

	;copying from source to destination
	
	appendIt:
	;mov ecx,0
	mov eax,0
	L2:
		cmp byte ptr [esi],0
		jz workDone
		mov al,byte ptr [esi]
		mov byte ptr [edi],al
		inc edi
		inc esi
	LOOP L2

	workDone:
		mov byte ptr [edi],0
		mov eax,edx             ;assigning eax destination pointer

		pop edx
		pop esi
		pop edi
	ret 12

strncat ENDP
end
