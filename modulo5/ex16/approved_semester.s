.section .data
.equ DATA_SIZE,16
.equ STUDENTS_OFFSET, 0
.equ GRADES_OFFSET, 8

.section .text

.global approved_semester

approved_semester:

movw STUDENTS_OFFSET(%rdi), %si
movl $0, %eax
cmpw $0,%si
je end
movq $16, %rcx
movq GRADES_OFFSET(%rdi), %r9
movl $0, %edx
movq $0, %r8

movw (%r9,%r8,2), %r10w

loop_grades:
movw %r10w, %r11w
andw $1, %r11w
cmpw $1, %r11w
je is_approved
shrw %r10w
loop loop_grades
cmpl $10, %edx
jge add_approval
jmp next_student


is_approved:
addl $1, %edx
shrw %r10w
loop loop_grades
cmpl $10, %edx
jge add_approval






next_student:
subw $1, %si
cmpw $0, %si
je end
movq $16, %rcx
incq %r8
movl $0, %edx
movw (%r9,%r8,2), %r10w
jmp loop_grades





add_approval:
incl %eax
jmp next_student




end:

ret
