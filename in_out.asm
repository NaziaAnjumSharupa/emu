.model small
.stack 100h 
.data
st db 'enter num :$',0dh,0ah
stt db 0dh,0ah,'sum :$'
a db ? 
b db ?
c db ?
d db ?
.code
main proc
       mov ax,@data
       mov ds,ax
       
    
   lea dx,st
   mov ah,9
   int 21h
   
    
    mov ah,1
    int 21h
   ; mov bl,al ;input
      mov a,bl
    
      
     lea dx,st
   mov ah,9
   int 21h 
   
   
     mov ah,1
    int 21h
    mov bl,al ;input
    add bl,a
    mov c,bl
    
    lea dx,st
   mov ah,9
   int 21h
   
         
         
     mov ah,1
    int 21h
    mov bl,al ;input
    add al,c 
    mov d,al
   
 
      lea dx,stt
   mov ah,9
   int 21h
   
   sub d,60h
   
   
    mov ah,2
    mov dl,d  ;output
    int 21h 
    
    mov ah,4ch
    int 21h
    main endp
end main