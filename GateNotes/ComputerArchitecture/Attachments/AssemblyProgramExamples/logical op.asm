jmp start

num1 db 014h ; 0001 0100
num2 db 0A5h ; 1010 0101

;(AL and [num1]) + (([!num2] and AL) xor BL)

start:
mov al,0c9h   ;1100 1001
mov bl,52h    ;0101 0010    

not [num2]    ;0101 1010   5A
and [num2],al ;0100 1000   48
xor [num2],bl ;0001 1010   1A


and al,[num1] ;0000 0000   00
or al,[num2]  ;0001 1010   1A


ADC ax,111fh