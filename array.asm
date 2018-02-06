.model small
.stack 100h
.data
 st db 31h,32h,33h,34h,35h,'$'
 len=$-st

.code
main proc
    
  mov ax,@data  
  mov ds,ax
  mov bl,0h
  
  mov di,offset st
  mov cx,len 
  sub cx,1h
  
  next_letter:
  mov dl,[di]
  mov ah,2
  int 21h 
  mov ah,2
        
         mov dl,20h
        int 21h
               
       
   add di,1h         
  loop next_letter  
    
    
  mov ah,4ch
  int 21h
  main endp
end main