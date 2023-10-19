org 100h

;check a if a bite array is palindrome
;if palindrome then store FFFF in BX register

jmp start:
array db 1,3,3,2,1
copy_array db ?,?,?,?,?

start:
lea si,array
add si,04
lea di,copy_array
mov cx,05

;reverse array
reverse:
mov al,[si]
mov [di],al
dec si
inc di
loop reverse:

;check palindrome
lea si,array
lea di,copy_array
cld
mov cx,5
repe cmpsb
jnz endpalin
mov bx,0FFFFh

endpalin:
hlt