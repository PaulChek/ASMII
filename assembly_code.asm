.model flat,c

.data
wordArray DWORD 3,1,2,0,4,5 

.code
start          proc
	;push ebp
	;mov ebp,esp
	;push esi
	;push edi
	
	mov edi,OFFSET wordArray
	mov ecx,LENGTHOF wordArray
	mov eax,0

SumLoop:
	add eax,[edi]
	add edi,TYPE wordArray
	;;dec ecx
	;;jnz SumLoop
	loop SumLoop

	mov ebx,OFFSET wordArray
	mov ecx,LENGTHOF wordArray

FindZero:
	cmp DWORD PTR [ebx],0
	je Finded
	add ebx,TYPE wordArray
	loop FindZero


Finded:
	mov eax,[ebx]
	mov edx,ebx

	ret
start endp
end		