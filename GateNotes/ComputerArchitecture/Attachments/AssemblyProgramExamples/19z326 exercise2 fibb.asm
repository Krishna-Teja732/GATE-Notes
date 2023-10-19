org 100h

jmp start:
result db ?

start:
lea di,result
mov ax,08
call fibb
mov [di],dx
ret
 
fibb proc
    cmp ax,02
    jnz endbase1
        add dx,1 
        jmp endfibb
    endbase1:
    cmp ax,03
    jnz endbase2:
        add dx,1
        jmp endfibb
    endbase2:
    ;fib(n) = fib(n-1) + fib(n-2)
    ;first term
    dec ax
    cmp bx,0
    call fibb
    ;second term
    dec ax
    call fibb
    add ax,2
    endfibb:
    ret
endp

ret




