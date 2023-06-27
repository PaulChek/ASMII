.model flat,c
.const
FibVals dword 0,1,1,2,3,5,8,13,21
	    dword 34,55,89,144,233,377,610

CountFibsVals dword($-FibVals)/sizeof dword

.code
option casemap:none ;make case sensetive
			 
			 public MemoryAccess
MemoryAccess PROC
		push ebp
		mov ebp,esp
		;push edi

		xor eax,eax ; eax = 0
        mov ecx,[ebp+8] ; i
		cmp ecx,0       ; check if i in good range
		jl EndOfProg
		cmp ecx,CountFibsVals
		jge EndOfProg

;------------------------------v1----------------------
		mov ebx,[FibVals+ecx*4]
		mov edi,[ebp+12]
		mov [edi],ebx
;------------------------------v2----------------------
		mov ebx,[FibVals+ecx*4 + 4]
		mov edi,[ebp+16]
		mov [edi],ebx		

EndOfProg:
	pop ebp	
	;pop edi		
        ret
MemoryAccess ENDP
END