.section .global
.equ A1_OFFSET,0
.equ A2_OFFSET,2
.equ A3_OFFSET,4
.equ B_OFFSET,6
.equ C_OFFSET,8
.equ D_OFFSET,16
.equ E_OFFSET,18
.equ UB_OFFSET,24

.section .text
.global return_unionB_b

return_unionB_b:

movq (%rdi ,%rsi ,8) , %r8               #address of line i(passed by rsi)
imulq $32,%rdx                           #multiply rdx(j) per 32(size of Struct)
addq $UB_OFFSET,%rdx                     #add UB_OFFSET(24) to rdx -> go to UnionB
movb (%r8,%rdx,1),%al                    #Move the value to al


ret 


