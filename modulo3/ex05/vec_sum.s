.section .data
.global ptrvec
.global num

.section .text
.global vec_sum              #long vec_sum(void)

vec_sum:

movq ptrvec(%rip),%rdi        # move address pointed of ptrvec to rdi
movq $0,%rax                  # move 0 to rax

movslq num(%rip),%rcx         # move the value of num to rcx, num is lenght
cmpq $0,%rcx                  # compare 0 to rcx
je end                        # if rcx = 0 go to end

inc_loop:

addq (%rdi),%rax              # add the values pointed by rdi to rax 
addq $8,%rdi                  # go to the next long
loop inc_loop                 # loop inc_loop number of times of rcx
jmp end                       # go to end



end:

ret





