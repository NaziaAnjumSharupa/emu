.model small
.stack 100h

.data  
 a db 1h
 b db 2h
 c db ?
.code
proc main 
    mov ax,@data
    mov ds,ax
    mov al,a
    add al,a
    add al,b
    add al ,b
    mov c,al 
    
    mov dl,c 
    add dl,30h
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
main endp
end main     
