.model flat,c

PBYTE TYPEDEF PTR BYTE
PWORD TYPEDEF PTR WORD
PDWORD TYPEDEF PTR DWORD

.data
wordArray WORD 1,2,3,4,5,6,7,8,9
pt1 PWORD wordArray

.code
pointers_types proc

    mov  di, wordArray
    mov edi, pt1
    mov bx,  [edi]
	mov eax, edi
    mov eax, 0
    mov al,  11111111b
    XOR al,  10101001b
   ; test al , 01010110b ;dont modify destination or first operand
    XOR  al , 01010110b ; -> the equal
    ;je yes
   ; jne no
    mov edx,3
    imul eax,eax

no:
    mov eax,0Ah

yes:
    mov eax,0Eh
     
	ret
pointers_types endp
end