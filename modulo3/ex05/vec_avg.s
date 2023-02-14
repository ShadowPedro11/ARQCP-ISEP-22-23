.section .data
.global ptrvec
.global num

.section .text
.global vec_avg          #long vec_avg(void)

vec_avg:             
call vec_sum              # call the function vec_sum
movswq num(%rip),%rcx     # move the value of num to rcx, num is lenght     
cmpq $0,%rcx              # compare 0 to rcx
je isZero                 # if rcx = 0 go to isZero
cqo                       # extend the signal
idivq %rcx                # div whit sinal rax and rcx, rax=rax/rcx
jmp end                   # go to end
	
isZero:
movq $0,%rax              # move 0 to rax	
	
end:

ret
