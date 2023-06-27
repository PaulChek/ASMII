.model flat,c
.code
SummArgs PROC
;------------------------------------------Prolog------------------------------
    push ebp
    mov ebp,esp
    sub esp,12      ;allocate local storage space on stack
    push edi
    push edx
    push esi

;----------------------------------------Take args----------------------------
    mov eax,[ebp+8]  ;a
    mov ebx,[ebp+12] ;b
    mov ecx,[ebp+16] ;c
    mov edi,[ebp+20] ;*summ
    mov edx,[ebp+24] ;*squere summ
    mov esi,[ebp+28] ;*cube summ
    
;-----------------------------------------Find Sum---------------------------    
    mov [ebp-4],eax
    add [ebp-4],ebx
    add [ebp-4],ecx

;-------------------------------------------2--------------------------------    
    imul eax,eax
    imul ebx,ebx
    imul ecx,ecx
    mov [ebp-8],eax
    add [ebp-8],ebx
    add [ebp-8],ecx

 ;---------------------------------------3-----------------------------------
    imul eax,[ebp+8]
    imul ebx,[ebp+12]
    imul ecx,[ebp+16]
    mov [ebp-12],eax
    add [ebp-12],ebx
    add [ebp-12],ecx

;----------------------------------------Save---------------------------------
    mov eax,[ebp-4]
    mov ebx,[ebp-8]
    mov ecx,[ebp-12]

    mov [edi],ax   ;cuz its 16bit int for fun
    mov [edx],ebx
    mov [esi],ecx
;----------------------------------------Epilog--------------------------------
    pop esi
    pop edx
    pop edi
    mov esp,ebp
    pop ebp
    ret
SummArgs ENDP
END