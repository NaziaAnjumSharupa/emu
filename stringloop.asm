.model small
.stack 100h
.data
 st db 'nwu,khulna $'
 len=$-st

.code
main proc
    
  mov ax,@data  
  mov ds,ax
  mov bl,0h
  
  mov si,offset st
  mov cx,len
  
  next_letter:
  mov dl,[si]
  mov ah,2
  int 21h 
  mov ah,2
        
         mov dl,20h
        int 21h
               
       
   add si,1h         
  loop next_letter  
    
    
  mov ah,4ch
  int 21h
  main endp
end main