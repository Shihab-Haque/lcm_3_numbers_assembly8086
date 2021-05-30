CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    
    MOV CX,10
    
   
    XOR DI,DI
    
    MULTIPLIER1:
    MOV AX,VAL[BX]
    MUL CX
    MOV NUMA[DI],AX
    ADD DI,2
    LOOP MULTIPLIER1
    
    MOV CX,10
    ADD BX,2
    XOR DI,DI
     
    MULTIPLIER2:
    MOV AX,VAL[BX]
    MUL CX
    MOV NUMB[DI],AX
    ADD DI,2
    LOOP MULTIPLIER2 
    
    
    
    MOV CX,10
    ADD BX,2
    XOR DI,DI
     
    MULTIPLIER3:
    MOV AX,VAL[BX]
    MUL CX
    MOV NUMC[DI],AX
    ADD DI,2
    LOOP MULTIPLIER3 
                         
    
    XOR SI,SI
                         
    COMPARE:
    MOV CX,10 
    XOR DI,DI
    
    L1:
    MOV BX,NUMB[DI]
    CMP NUMA[SI],BX
    JE NEXT
    ADD DI,2
    LOOP L1                     
    
    NEXT: 
    XOR DI,DI
    MOV CX,10
    
    L2:
    MOV BX,NUMC[DI]
    CMP NUMA[SI],BX
    JE RESULT
    ADD DI,2
    LOOP L2 
    
    ADD SI,2
    CMP SI,20
    JNE COMPARE
    
    HLT
    
    RESULT:
    MOV DX,NUMA[SI]   ;RESULT IS STORED IN DX
    HLT 
    
    NUMA DW 10 DUP(0)
    NUMB DW 10 DUP(0)  
    NUMC DW 10 DUP(0)
    VAL DW 24, 36, 54
    
    CODE ENDS
END

