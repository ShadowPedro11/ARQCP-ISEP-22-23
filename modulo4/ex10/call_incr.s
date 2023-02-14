.section .text

.global call_incr

call_incr:

#prologue
push %rbp
movq %rsp, %rbp			#moves rsp to rbp
subq $4, %rsp			#subtracts 4 to rsp

addw $3, %di			#adds 3 to di
movw %di, -4(%rbp)		#moves di to -4(rbp)

movw -4(%rbp), %r8w		#moves -4(rbp) to r8w
pushw %r8w

movq $0, %rdi			#moves 0 to rdi
leaq -4(%rbp), %rdi		#moves the adress of -4(rbp) to rdi
movb $195, %sil			#moves 195 to sil

call incr

popw %r8w
movw $0, %cx			#moves 0 to cx
addw -4(%rbp), %cx		#adds -4(rbp) to cx, value stored in cx
movswl %r8w, %eax		#moves r8w to eax, transforming the value from a short to a int
movswl %cx, %ecx		#moves cx to ecx, transforming the value from a short to a int
addl %ecx, %eax			#adds ecx to eax, value stored in eax

#epilogue
movq %rbp, %rsp			#moves rbp to rsp
popq %rbp
ret




