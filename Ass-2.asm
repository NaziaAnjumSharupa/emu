.MODEL SMALL
.STACK 100h

.DATA 
arr db 31h,32h,33h,34h,35h
st db 'Defined array is: $'
stt db 0Ah,0Dh,'Reversed array is: $' 
 
 
.CODE
PROC MAIN
MOV AX, @DATA
MOV DS,AX

LEA DX,st
MOV AH,9
INT 21H 

MOV SI,OFFSET arr
MOV CX,5h
REPEAT:
MOV DL,[SI]
MOV AH,2
INT 21h
ADD SI,1h
LOOP REPEAT 

LEA DX,stt
MOV AH,9
INT 21H 

MOV SI,OFFSET arr
ADD SI,4h
MOV CX,5h
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