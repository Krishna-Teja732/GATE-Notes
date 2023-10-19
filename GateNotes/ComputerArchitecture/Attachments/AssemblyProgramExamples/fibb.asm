org 100h

jmp start:
result db ?,?,?,?,?,?,?,?

start:
lea di,result
mov cx,08

loopstart:
inc ax
mov dx,0
call fibb
mov [di],dx
inc di
loop loopstart
ret

 
fibb proc
    cmp ax,01
    jnz endbase1
        add dx,0 
        jmp endfibb
    endbase1:
    cmp ax,02
    jnz endbase2:
        add dx,1
        jmp endfibb
    endbase2:
    ;fib(n) = fib(n-1) + fib(n-2)
    ;first term
    dec ax
    call fibb
    ;second term
    dec ax
    call fibb
    add ax,2
    endfibb:
    ret
endp

ret




