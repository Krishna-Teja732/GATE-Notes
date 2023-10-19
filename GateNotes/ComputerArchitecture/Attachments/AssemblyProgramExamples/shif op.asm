
;7(AX) - 5(BX) - BX/8 ->AX

;(2^2+2+1)AX - ((2^2+1)BX + BX/(2^3))

;(21 - (40 +1) = -20)  in decimal 

;(15 - (28 + 1) = -14 or FFEC)  in hexadecimal
mov ax,3
mov bx,8
mov dx,ax

;ax*7
mov cl,2
shl ax,cl
add ax,dx
shl dx,1
add ax,dx

;bx*5
mov dx,bx
shl bx,cl
add bx,dx

;bx/8
mov cl,3
shr dx,cl

add bx,dx

sub ax,bx