.section .global
.equ DATA_SIZE,16
.equ C_OFFSET,0 
.equ W_OFFSET,4 
.equ J_OFFSET,12

.section .text
.global fill_s2

fill_s2:

movq %rcx, %r8
movq $3, %rcx
movq $0, %r9

loop_array:

movw (%rsi), %ax
movw %ax, W_OFFSET(%rdi, %r9, 2)

movb (%r8), %al
movb %al, C_OFFSET(%rdi, %r9,1)

incq %r9
incq %r8
addq $2, %rsi

loop loop_array

movl %edx,J_OFFSET(%rdi)

ret 
