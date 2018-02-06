.MODEL SMALL
.STACK 100h
.DATA 

num1 dw ?
num2 dw ?
msg1 db 'Enter first number: $'
msg2 db 0Ah,0Dh,'Enter second number: $'
msg3 db 0Ah,0Dh,'The division is: $'
msg4 db 0Ah,0Dh,'The remainder is: $'
msg5 db 0Ah,0Dh,'The multiplication is: $'


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,msg1
    MOV AH,9
    INT 21h
    
    XOR BX,BX
    MOV CX,2h 
    
    CALL INPUT 
    MOV num1,BX   
    
    LEA DX,msg2
    MOV AH,9
    INT 21h
   
   
    XOR BX,BX
    MOV CX,2h
    
    CALL INPUT
    MOV num2,BX
    
    MOV AX,num1
    MOV BX,num2
    DIV BL
    MOV num2,AX 
    
    LEA DX,msg3
    MOV AH,9
    INT 21h 
    
    MOV BX,num2
    MOV BH,0h
    MOV CX,4h
    
    CALL OUTPUT
    
    LEA DX,msg4
    MOV AH,9
    INT 21h 
    
    MOV BX,num2
    MOV BL,BH
    MOV BH,0h
    MOV CX,4h
    
    CALL OUTPUT  
    
    MOV AX,num1
    MUL num2
    MOV num2,AX 
    
    LEA DX,msg5
    MOV AH,9
    INT 21h 
    
    MOV BX,num2
    MOV CX,4h
    
    CALL OUTPUT
    
    MOV AH,4Ch
    INT 21H
ENDP MAIN

INPUT PROC
    repeat:
    MOV AH,1
    INT 21h
    CMP AL,'9'
    JA letter
    SUB AL,30h
    JMP next
    
    letter:
    SUB AL,37h
    
    next:
    SHL BX,2h
    OR BL,AL 
    LOOP repeat
    RET 
ENDP INPUT     

OUTPUT PROC
    repeat3:    
    MOV DL,BH
    SHR DL,4h
    CMP DL,9h    
    JA letter3
    ADD DL,30h
    JMP next3
    
    letter3:
    ADD DL,37h 
    
    next3:
    MOV AH,2
    INT 21h
    
    ROL BX,4h
    
    LOOP repeat3
    RET
ENDP OUTPUT
END
    