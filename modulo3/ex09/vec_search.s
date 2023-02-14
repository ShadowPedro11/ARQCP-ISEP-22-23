.section .data
.global ptrvec
.global num
.global x

.section .text
.global vec_search              #short* vec_search(void)

vec_search:

movq ptrvec(%rip),%rdi          # move address pointed of ptrvec to rdi
movq $0,%rax                    # move 0 to rax

movslq num(%rip),%rcx           # move the value of num to rcx, num is lenght
movw x(%rip),%si	            # move the value of x to rdi				
	
cmpq $0,%rcx                    # compare 0 to rcx
je end                          # if rcx = 0 go to end

inc_loop:
cmpw %si,(%rdi)                 # compare si whit the value pointed by rdi
je isX				            # if si = rdi go to isX	
		
addq $2,%rdi                    # add 2 to rdi, go to next short

loop inc_loop                   # loop inc_loop number of times of rcx
jmp end                         # go to end

isX:    
leaq (%rdi),%rax                # move the address of rdi to rax


end:

ret
