.model small
.stack 100h
.data
st db 'AabbTKJGjbasdka$'
len=$-st 


.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset st
    mov cx,len
    repeat:
    mov bl,[si]
    cmp bl,'A'
    
    jb next_char
    cmp bl,'Z'
    jbe print_char
    
    next_char:
    add si,1h
    sub cx,1h
    
    cmp cx,0h
    je end_repeat
    
    ja repeat
    
    print_char:
    mov dl,bl
    mov ah,2
    int 21h  
    
     add si,1h
    sub cx,1h
    
    cmp cx,0h
    je end_repeat
      ja repeat
    
  end_repeat:
    mov ah,4ch
    int 21h 
    main endp
end main
