.MODEL SMALL
.STACK 100h
.DATA

.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

MOV BL,41h
MOV CX,26d

next_letter:
MOV DL,BL
MOV AH,2
int 21h
ADD BL,1h


MOV DL,20H
MOV AH,2
int 21h

LOOP next_letter

MOV BL,61h
MOV CX,26d

next_letter2:
MOV DL,BL
MOV AH,2
int 21h
ADD BL,1h


MOV DL,20H
MOV AH,2
int 21h

LOOP next_letter2


MOV AH,4CH
INT 21H 
ENDP MAIN
END