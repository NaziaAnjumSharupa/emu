.model small
.stack 100h
.data
 st db 1h,2h,2h,4h,'$'
 len=$-st

.code
main proc
    
  mov ax,@data  
  mov ds,ax
  mov bl,0h
  
  mov di,offset st
  mov cx,len 
  sub cx,1h
  
  
   mov dl,0h
  next_letter:
 
  add dl,[di] 
 add di,1h   
          
  loop next_letter
  
  add dl,30h
    
    
    mov ah,2
  int 21h  
    
  
  
  mov ah,4ch
  int 21h
  main endp
end main