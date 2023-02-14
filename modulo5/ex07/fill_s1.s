.section .global
.equ DATA_SIZE,16
.equ C_OFFSET,0 
.equ I_OFFSET,4 
.equ D_OFFSET,8
.equ J_OFFSET,12

.section .text
.global fill_s1

fill_s1:
movl %esi,I_OFFSET(%rdi)                      #move vi to i
movb %dl,C_OFFSET(%rdi)                       #move vc to c
movl %ecx,J_OFFSET(%rdi)                      #move vj to j
movb %r8b,D_OFFSET(%rdi)                      #move vd to d

ret 
