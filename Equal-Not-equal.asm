.MODEL SMALL
.STACK 100h

.DATA    
ST DB 'Enter first number: $'
STT DB 0AH,0DH,'Enter second number: $'
STTT DB 0AH,0DH,'The numbers are equal! $' 
ST1 DB 0AH,0DH, 'The numbers are not equal! $'
A DB ?
B DB ?

.CODE
PROC MAIN
MOV AX, @DATA
MOV DS,AX

LEA DX,ST
MOV AH,9
INT 21H

MOV AH,1
INT 21h
MOV A,AL

LEA DX,STT
MOV AH,9
INT 21H

MOV AH,1
INT 21h
MOV B,AL

MOV BL,B
CMP BL,A
JE EQUAL
JNE NEQUAL

EQUAL:
LEA DX,STTT
MOV AH,9
INT 21H
JMP END

NEQUAL:
LEA DX,ST1
MOV AH,9
INT 21H 

END:
MOV AH, 4CH
INT 21H
   
    MAIN ENDP
END MAIN