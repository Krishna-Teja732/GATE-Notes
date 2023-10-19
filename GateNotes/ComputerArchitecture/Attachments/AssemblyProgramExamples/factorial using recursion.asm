org 100h

mov dl,06
mov ax,1
call factorial
jmp end

factorial proc
    cmp dl,01
    jnz calc
    jmp endfact
    calc:
    mul dl
    dec dl
    call factorial
    endfact:
    ret
factorial endp


end:
hlt