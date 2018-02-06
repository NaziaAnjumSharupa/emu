.model small
.stack
.data 
as db 'asdfghjkl $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
        lea dx,as
        mov ah,9
        int 21h
    
    
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
    
    
        lea dx,as
        mov ah,9
        int 21h
    
    
    
    mov ah,4ch
    int 21h
endp main
end main
    