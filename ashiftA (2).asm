.MODEL SMALL
.STACK 100h
.DATA  
st db 'AabTjkajNHO$'
len=$-st



.CODE
MAIN PROC
MOV AX, @DATA
MOV DS,AX
        
MOV SI,OFFSET ST
MOV CX,len
REPEAT:
MOV BL,[SI]
CMP BL,'A'
JB next_char
CMP BL,'Z'
JBE print_char

next_char:
SUB BL,20h  
MOV DL,BL
MOV AH,2
INT 21h 
ADD SI,1h
SUB CX,1h
CMP CX,0h
JE end_repeat
JA REPEAT  

print_char:
MOV DL,BL
MOV AH,2
INT 21h 
ADD SI,1h
SUB CX,1h
CMP CX,0h
JE end_repeat
JA REPEAT 


        
end_repeat:    
MOV AH,4ch
INT 21h    
    MAIN ENDP
    END MAIN