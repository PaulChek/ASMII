option casemap:none
.model flat,c

extern GlobalChar:byte
extern GlobalShort:word
extern GlobalInt:dword
extern Globla64int:qword


.code 
	public ExperimentWithDifferentSizes
ExperimentWithDifferentSizes Proc
	push ebp
	mov ebp,esp

	mov ax, [ebp+8]
	mov bl, [ebp+12]
	movzx bx,bl
	add ax, bx

    movzx eax, GlobalChar
    add GlobalInt,eax
	movzx eax,GlobalShort
	add GlobalInt,eax
	mov eax,GlobalInt

	;64
	mov ebx,DWORD ptr[Globla64int]
	mov edx,DWORD ptr[Globla64int+4]
	adc ebx,eax  
    
	mov dword ptr[Globla64int],ebx
	mov dword ptr[Globla64int+4],edx

	mov esp, ebp
    pop ebp
	ret
ExperimentWithDifferentSizes Endp
END