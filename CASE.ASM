data segment
        wrd db "oRange$"
        cnt db 6
data ends
        code segment
        assume cs:code,ds:data
        start:  mov ax,data
                mov ds,ax
                lea si,wrd
                mov cl,cnt
        apple:  mov ah,[si]
                xor ah,20h
                mov [di],ah
                inc si
                mov dl,[di]
                mov ah,02h
                int 21h
                loop apple
                mov ah,4ch
                int 21h
        code ends
        end start
