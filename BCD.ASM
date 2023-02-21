
DATA SEGMENT
        MSG1 DB "BCD SUM IS :$"
        NO1 DB 01H
        NO2 DB 08H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
        START:
                MOV AX,DATA
                MOV DS,AX
                LEA DX,MSG1
                MOV AH,09H
                INT 21H
                MOV AL,NO1
                ADD AL,NO2
                DAA
                AND AL,0FH
                
                ADD AL,30H
                MOV DL,AL
                MOV AH,02H
                INT 21H
            
                MOV AH,4CH
                INT 21H
        CODE ENDS
        END START


