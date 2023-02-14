.section .data
.equ NUMBER_OFFSET, 0
.equ AGE_OFFSET, 2
.equ GRADES_OFFSET, 4
.equ NAME_OFFSET, 24
.equ ADRESS_OFFSET, 84
	
.section .text

.global update_grades

update_grades:
movq $0,%r8                          #index
movq $5,%rcx


loop:
movl (%rsi,%r8,4),%r9d
movl %r9d,GRADES_OFFSET(%rdi)
addq $4,%rdi
incq %r8
cmpq %r8,%rcx
je end
jmp loop

end:


ret
