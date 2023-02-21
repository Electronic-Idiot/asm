data segment
    msg db "how are you?"
data ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea si,msg
mov bh,01h
mov cx,10
l1:
mov ah,[si]
cmp ah,'.'
jz print1
cmp ah,' '
jnz next
inc bh
next:
inc si
loop l1
print1:
mov al,bh
add al,30h
mov dl,al
mov ah,02h
int 21h
mov ah,4ch
int 21h
code ends
end start
