.MODEL SMALL
.STACK 100h

.DATA
msg1 db "Enter a number: $"
msg2 db "The number is even.$"
msg3 db "The number is odd.$"

.CODE
MAIN PROC
    mov ax, @data       ; initialize data segment
    mov ds, ax

    mov ah, 9           ; print prompt message
    lea dx, msg1
    int 21h

    mov ah, 1           ; read user input
    int 21h
    sub al, '0'         ; convert ASCII digit to binary value

    test al, 1          ; check if value is odd or even
    jz even             ; jump to even label if even
    jmp odd             ; jump to odd label if odd

even:
    mov ah, 9           ; print even message
    lea dx, msg2
    int 21h
    jmp done

odd:
    mov ah, 9           ; print odd message
    lea dx, msg3
    int 21h

done:
    mov ah, 4ch         ; exit program
    int 21h
MAIN ENDP
END MAIN
