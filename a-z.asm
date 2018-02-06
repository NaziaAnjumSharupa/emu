.model small
.stack 100h
.data


.code
main proc
    
  mov ax,@data  
  mov ds,ax
  mov bl,5ah
  
  mov cx,26d
  
  next_letter:
  mov dl,bl
  mov ah,2
  int 21h 
  mov ah,2
        
         mov dl,0ah
        int 21h
               
       
   sub bl,1h         
  loop next_letter  
    
    
  mov ah,4ch
  int 21h
  main endp
end main