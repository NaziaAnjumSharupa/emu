.model samll
.stack 100h
.data
 num dw ?
 num2 dw ?
 msg db 0ah,0dh,'enter frist num:$'
   msg2 db 0ah,0dh,'enter second num:$'
   msg3 db 0ah,0dh,'result is:$'
   
.code
main proc
    mov ax,@data
    mov ds,ax 
    
    xor bx,bx
    mov cx,4h
    
    lea dx,msg
    mov ah,9
    int 21h
    
    repeat:
    
    mov ah,1 
    int 21h
    
    cmp al,'9'
    ja letter
     sub al,30h 
     jmp next
     
     
     letter:  
     
     sub al,37h
     
     next:
     
     shl bx,4h
     or bl,al
     
     loop repeat
     
      mov num,bx
      
      
      
      
      xor bx,bx
      
      lea dx,msg2
    mov ah,9
    int 21h 
    
        mov cx,4h
      repeat2:
    mov ah,1 
    int 21h
    
    cmp al,'9'
    ja letter2
     sub al,30h 
     jmp next2
     
     
     letter2:  
     
     sub al,37h
     
     next2:
     
     shl bx,4h
     or bl,al
     
     loop repeat2
                 
     add bx,num
     mov num2,bx 
     
      lea dx,msg3
    mov ah,9
    int 21h
    
    mov bx,num2
     
     
     mov cx,4h
     repeat3:
     
    mov dl,bh
    shr dl,4h
    cmp dl,9h
    
   
    ja letter3
    add dl,30h 
      jmp next3
     
    letter3:
    add dl,37h
     next3:
    mov ah,2
    int 21h
    
    rol bx,4h 
    
    loop repeat3        
     
    
    mov ax,4ch
    int 21h
main endp

input proc
    ret
    intput endp

end main
