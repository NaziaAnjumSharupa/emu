.MODEL SMALL
.STACK 100h

.DATA 
arr db ?,?,?,?
st db 'Enter a 4 digit number: $'
stt db 0Ah,0Dh,'Reversed number is: $' 
 
 
.CODE
PROC MAIN
MOV AX, @DATA
MOV DS,AX

LEA DX,st
MOV AH,9
INT 21H 

MOV SI,OFFSET arr
MOV CX,4h
REPEAT:
MOV AH,1
INT 21h
MOV [SI],AL
ADD SI,1h
LOOP REPEAT 

LEA DX,stt
MOV AH,9
INT 21H 

MOV SI,OFFSET arr
ADD SI,3h
MOV CX,4h
REPEAT2:
MOV DL,[SI]
MOV AH,2
INT 21h
SUB SI,1h
LOOP REPEAT2

MOV AH, 4CH
INT 21H
   
    MAIN ENDP
END MAIN