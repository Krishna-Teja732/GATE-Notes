org 100h

jmp start

;declaring variables
size db 5
array db 06h,01h,02h,04h,0FEh  
res db 0h


start:
lea dx,array     
lea di,res
mov cl,size
dec cl

; cl,dx used for outer loop
; ch,bx used for counting inner loop
; cl and cx for number of iterations
; bx and dx to store offset address 
loop1start:
    mov ch,cl
    mov bx,dx
    inc bx
    loop2start:
        mov si,dx
        mov al,[si]
        mov si,bx
        add al,[si]
        cmp ax,07h
        jnz update
            mov [di],01h
            jmp end
        update:
        inc bx
        dec ch
        cmp ch,0h
        jnz loop2start
    inc dx
    dec cl
    cmp cl,0h
jnz loop1start

end:
hlt
    


