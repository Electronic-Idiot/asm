data segment
array db 5,6,7,4,3
data ends

code segment
assume cs:code,ds:data
start:
mov ax, data
mov ds, ax

lea si, array
mov cx, 5
mov bl, 0

; find the maximum value in the array
find_max:
mov al, [si]
cmp al, bl
jl next_max
mov bl, al
next_max:
inc si
dec cx
jnz find_max

; display the maximum value
add bl, 48  ; convert to ASCII
mov dl, bl
mov ah, 02h
int 21h

mov ah, 4Ch
int 21h
code ends

end start
