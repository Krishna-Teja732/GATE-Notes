org 100h

jmp start

;declaring variables
size db 5
array db 06h,01h,02h,0Ah,05h  
res db ?,?,?,?,?


start:
lea si,array     
lea di,res
mov cl,size

loopStart:
add [si],0h

jp update         ;if parity flag is set jump 
mov al,[si]
mov [di],al
inc di

update:
inc si
dec cl
cmp cl,0h
jnz loopStart


hlt