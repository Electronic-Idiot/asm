data segment
msg1 db "enter the string:$"
msg2 db "it is palindrome$"
msg3 db "not palindrome$
instdb 20 dup (0)
data ends
code segmentt
assume cs:code,ds:data
start:
mou ax,data
mov ds,ax
lea dx,msg1
mov ah,09h
int21h
mov bx,00h
up:
moy ah,01h
int21h
cmp al,0dh
je 11
moy [inst+bx1,al

Ccmp al,Odh
je 11
mov Iinst+bx1,a
|incbx
loop up
11:
moy di,00h
dec bxX
|jnzcheck
check:
Mov al,Iinst+bx]
cmp al,Linst+dil
jne fail
inc di
dec bxx
Jnz check
lea dx,msg2
moy ah,09h
int21h
jmp endd
fail:

incdi
dec bx
jnz check
lea dx,msq2
mov ah,09h
int21h
jmp endd
fail:
leadx,msg3
moy ah,09h
int21h
endd
moy ah,4ch
int21h
code ends
end star
