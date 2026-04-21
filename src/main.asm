.386
.model flat,stdcall
.stack 4096

include Irvine32.inc
include string.inc

.data
testString1 BYTE "Testing strncpy",0ah,0dh,0
testString2 byte "Copying string....specific no. of characters",0ah,0dh,0
testString3 byte "String to be copied in buffer(destination):  ",0
testString4 BYTE "i am Abdul Raffay Raja",0
testString5 byte 50 DUP(0)
testString6 byte "Copying No. of characters: ",0

.code
main PROC

	mov ecx,13
	mov edx,offset testString1
	call WriteString
	mov edx,offset testString2
	call WriteString
	call crlf
	mov edx,offset testString3
	call writeString

	mov edx,offset testString4
	call writeString
	call crlf

	mov edx,offset testString6
	call WriteString
	mov eax,ecx
	call WriteInt
	call crlf
	mov eax,0
	
	call crlf
	invoke strncpy,addr testString5,addr testString4,ecx
	mov edx,eax
	call WriteString
	call crlf

	
	call crlf
	exit
main ENDP
end main