DATA SEGMENT
        MSG1 DB 0AH,0DH,"hELLO wORLD $"
DATA ENDS
CODE SEGMENT


        ASSUME CS:CODE , DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX

        MOV AH,09H

        LEA DX,MSG1
        INT 21H
        mov ah,4ch
        int 21h
CODE ENDS
END START
