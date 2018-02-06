.MODEL SMALL
.STACK 100h
.DATA  
stt db 'Defined string is: $'
sttt db 0Ah,0Dh,'Capitalized string is: $'
st db 'North Western University$'

len=$-st



.CODE
MAIN PROC
MOV AX, @DATA
MOV DS,AX

LEA DX,stt
MOV AH,9
INT 21h

LEA DX,st
MOV AH,9
INT 21h

LEA DX,sttt
MOV AH,9
INT 21h
        
MOV SI,OFFSET st
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
CMP CX,1h
JE end_repeat
JA REPEAT  

print_char:
MOV DL,BL
MOV AH,2
INT 21h 
ADD SI,1h
SUB CX,1h
CMP CX,1h
JE end_repeat
JA REPEAT 


        
end_repeat:    
MOV AH,4ch
INT 21h    
    MAIN ENDP
    END MAIN