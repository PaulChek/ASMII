.model flat,c
.code
option casemap:none

	public SignedMin
SignedMin PROC
	push ebp
	mov ebp, esp
	
	mov eax,[ebp+8];a
	mov ebx,[ebp+12];b
	mov edx,[ebp+16];c

	cmp eax,ebx
	jle @F ; jump forward to the nearest @@ symbol if eax<= ebx
	mov eax,ebx

@@: cmp eax,edx
    jle @F
	mov eax,edx

@@:

	mov esp,ebp
	pop ebp
	ret
SignedMin ENDP


	public SignedMax
SignedMax PROC
	push ebp
	mov ebp, esp
	
	mov eax,[ebp+8]
	mov ebx,[ebp+12]
	mov edx,[ebp+16]

	cmp eax,ebx
	jge @F
	mov eax,ebx
@@: cmp eax,edx
	jge @F
	mov eax,edx
@@:
	mov esp,ebp
	pop ebp
	ret
SignedMax ENDP

	public SignedMax2
SignedMax2 PROC
	push ebp
	mov ebp, esp
	
	mov eax,[ebp+8]
	mov ebx,[ebp+12]
	mov edx,[ebp+16]

	cmp eax,ebx
	cmovl eax,ebx ; copy ebx into eax if eax<ebx comvg same by in other oreder
	cmp eax,edx
	cmovl eax,edx

	mov esp,ebp
	pop ebp
	ret
SignedMax2 ENDP

END