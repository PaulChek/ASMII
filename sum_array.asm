.model flat,c
.data
.code
SumArray PROC
         push ebp
         mov ebp, esp ; ebp == begining of stack

         mov eax,[ebp+8]
         mov ebx,[ebp+12]
         mov ecx,[ebp+16]
         
         add eax,ebx
         add eax,ecx
         
         pop ebp

         ret 
SumArray ENDP
END