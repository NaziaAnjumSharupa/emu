.MODEL SMALL
.STACK 100h

.DATA 
a db ?
b db ?
st db 'Enter a 1 digit number: $'
stt db 0Ah,0Dh,'Mutiplied (by 2) number is: $'
sttt db 0Ah,0Dh,'Divised (by 2) number is: $' 
 
 
.CODE
PROC MAIN
MOV AX, @DATA
MOV DS,AX

LEA DX,st
MOV AH,9
INT 21H 

MOV AH,1
INT 21h

SUB AL,30h
MOV b,AL
SHL AL,1h
MOV a,AL

LEA DX,stt
MOV AH,9
INT 21H

MOV DL,a
ADD DL,30h
MOV AH,2
INT 21h 


MOV AL,b
SHR AL,1h
MOV b,AL
 
LEA DX,sttt
MOV AH,9
INT 21H

MOV DL,b
ADD DL,30h
MOV AH,2
INT 21h 


MOV AH, 4CH
INT 21H
   
    MAIN ENDP
END MAIN