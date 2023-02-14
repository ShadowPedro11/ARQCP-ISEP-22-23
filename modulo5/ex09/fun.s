.section .global
.equ DATA_SIZE_structA,8       #Size of StrucA
.equ Y_STRUCTA_OFFSET,0        #Address of y
.equ X_STRUCTA_OFFSET,4        #Address of x
.equ DATA_SIZE_structB,32      #Size of StrucB
.equ A_STRUCTB_OFFSET,0        #Address of StructA
.equ AY_STRUCTB_OFFSET,0       #Address of y in StructA
.equ AX_STRUCTB_OFFSET,4       #Address of x in StructA
.equ B_STRUCTB_OFFSET,8        #Address of pointer b to StructA
.equ X_STRUCTB_OFFSET,16       #Address of x of StructB
.equ Z_STRUCTB_OFFSET,20       #Address of z of StructB
.equ C_STRUCTB_OFFSET,22       #Address of c of StructB
.equ Y_STRUCTB_OFFSET,24       #Address of y of StructB
.equ E_STRUCTB_OFFSET,28       #Address of e of StructB

.section .text
.global fun1
.global fun2
.global fun3
.global fun4

fun1:
movw AX_STRUCTB_OFFSET(%rdi),%ax 
ret 

fun2:
movw Z_STRUCTB_OFFSET(%rdi),%ax
ret 

fun3:
leaq Z_STRUCTB_OFFSET(%rdi),%rax
ret 

fun4:
movq B_STRUCTB_OFFSET(%rdi),%rdx
movw X_STRUCTA_OFFSET(%rdx),%ax
ret 

