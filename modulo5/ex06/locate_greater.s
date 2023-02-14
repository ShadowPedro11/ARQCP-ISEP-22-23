.section .data

.equ NUMBER_OFFSET, 0
.equ AGE_OFFSET, 2
.equ GRADES_OFFSET, 4
.equ NAME_OFFSET, 24
.equ ADRESS_OFFSET, 84

.section .text

.global locate_greater

locate_greater:

movq $5,%rcx
movq $0, %rax

loop_array:

cmpq $0, GRADES_OFFSET(%rdi)
je end

cmpl %esi, GRADES_OFFSET(%rdi)
jg good_grade

addq $4, %rdi

loop loop_array
jmp end

good_grade:

incl %eax
movl GRADES_OFFSET(%rdi), %r8d
movl %r8d, (%rdx)

addq $4, %rdi
addq $4, %rdx

loop loop_array

end:

ret
