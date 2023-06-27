.model flat,c
.code
; *prod = a*b
; *quo = a/b
; *rem = a%b
SignDivMul PROC
	push ebp
	mov ebp,esp
	push ebx
   
    xor eax,eax
	
	mov eax,[ebp+8] ;a
	mov edx,[ebp+12] ;b
;-------------------------------Check for ZERO----------------------------------;
    or edx,edx 
	jz ExitFromFun

;-------------------------------------Product----------------------------------;
	imul edx,eax 

	mov ebx,[ebp+16];*prod
    mov [ebx],edx
;-------------------------------------Quantition----------------------------------;
    cdq							;edx:eax contains dividend
    idiv dword ptr[ebp+12]
	mov ebx,[ebp+20] ; *quo
	mov [ebx],eax
;-------------------------------------Reminder----------------------------------;
	mov ebx,[ebp+24] ; *rem
    mov [ebx],edx
	
	mov eax,1;


ExitFromFun:
    pop ebx
	pop ebp
	ret

SignDivMul ENDP
END
