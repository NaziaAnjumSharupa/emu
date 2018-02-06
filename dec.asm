.model samll
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    sub al,48
    
    
    mov cx,0
    mov cl,al
    
    top:
    mov ah,2
    mov dl,bl
    int 21h
    dec bl
    loop top
    
    
    mov ah,4ch
    int 21h
    main endp
end main
