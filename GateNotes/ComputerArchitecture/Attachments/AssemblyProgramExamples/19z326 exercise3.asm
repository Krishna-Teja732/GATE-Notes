org 100h

jmp start:

;declaring variables

var1 db 1,6,1,6,5
var4 db 1,2,3,6,5
var3 db 1
var2 db 6


;procedures  definitions


;search if a byte is present in a byte array
;byte array is stored in var1
;byte to be searched is stored in var2
;if byte found then offset is stored in bx
;the offset of the first occurence is stored
search proc
    mov al,var2
    lea di,var1
    mov cx,05
    cld
    repnz scasb
    jnz endsearch
    dec di
    mov bx,di
    endsearch:
    ret    
endp

;replace all the occurance of a byte in a byte array by one
;byte array is stored in var1
;byte to be replaced is stored in var2
replace proc 
    mov cx,5
    mov al,var2
    lea di,var1
    begreplace:
    cld 
    repnz scasb
    jnz endreplace ;if occurance not found end the procedure
    dec di         
    inc cx
    mov [di],1     ;if found store value one in the byte array
    jmp begreplace
    endreplace:
    ret
endp

;reverse a byte array
;array to be reversed is stored in var4
;result array is stored in var1
reverse proc
    lea si,var4
    lea di,var1
    add di,4
    mov cx,5
    copy:
    mov al,[si]
    mov [di],al
    inc si
    dec di
    loop copy
    ret
endp


;compare two byte arrays and check if equal
;byte array1 is stored in var1
;byte array2 is stored in var4
;if both arrays are equal store value 1 in bx
;if both arrays are not equal store value 0 in bx
compare proc
    lea si,var1
    lea di,var4
    mov bx,1
    cld
    mov cx,5
    repe cmpsb
    jz endcomp
    mov bx,0
    endcomp:
    ret
endp

start:
cmp var3,1
jnz case2
call replace
jmp endcase

case2:
cmp var3,2
jnz case3
call reverse
jmp endcase

case3:
cmp var3,3
jnz case4
call search
jmp endcase

case4:
cmp var3,4
jnz endcase
call compare

endcase:
hlt