.model small
.stack 100h
.data


st db 0ah,0dh,'North Western University '
len=$-st

.code
main proc
    
mov ax,@data  
mov ds,ax
  
 
  
mov si,offset st
mov cx,len 
sub cx,1h
add si,cx
 
  
next:  
mov dl,[si]
mov ah,2
int 21h    
sub si,1h       
loop next  
   
    
mov ah,4ch
int 21h
main endp
end main



