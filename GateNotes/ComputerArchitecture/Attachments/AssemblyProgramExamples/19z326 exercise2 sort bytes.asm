org 100h

jmp start
array db 08,07,06,05,04,03,02,01

start:
mov cx,08
;bubble sort
loop1:
    mov dx,07
    lea si,array
    loop2:
        mov al,[si]
        inc si
        mov ah,[si]
        ;al has nth byte and ah has n+1th byte
        ;if n+1th byte is smaller than nth byte then perform swap
        cmp ah,al
        jnc endloop2:
            ;swap instructions
            mov [si],al
            dec si
            mov [si],ah
            inc si
        endloop2:
        dec dx
        cmp dx,0
    jnz loop2
loop loop1

hlt