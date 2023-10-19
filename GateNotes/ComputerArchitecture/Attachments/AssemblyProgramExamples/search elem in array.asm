
jmp start

array dw 134h,4619h,0214h,0182,0407h


; ax stores the address of the element if found
; if not fount ax stores the value FFFF
start:
mov cx,05      
mov dx,04619h
lea si,array
sub si,02

loopbeg:
add si,2
cmp [si],dx
loopnz loopbeg
jz storeres

mov ax,0FFFFh
jmp end


storeres:
mov ax,si

end:
hlt