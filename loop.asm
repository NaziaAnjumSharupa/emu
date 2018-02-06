.model small
.stack 100h
.code 



main proc
    
   
    
    
   mov ah,1
   int 21h
   mov bl,al
    sub al,48
   
   
   
    LOOP:
    mov cx,0
    mov cl,al
   
    mov ah,2
  
   mov dl,'s'
    
    TOP:
    int 21h
    LOOP TOP
    
    
    
    
    
    
    
    
    mov ah,4ch
    int 21h 
    main endp 
end main