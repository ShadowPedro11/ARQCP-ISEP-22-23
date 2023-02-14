.section .text
.global call_proc

call_proc:
pushq %rbp                #prologue
movq %rsp,%rbp            #

subq $11, %rsp            #sub 11 to rsp (4 to x1, 4 to x2, 2 to x3, 1 to x4)

movl %edi,-4(%rbp)        #initialize x1
movl %esi,-8(%rbp)        #initialize x2
movw %dx,-10(%rbp)        #initialize x3
movb %cl,-11(%rbp)        #initialize x4

movl -4(%rbp),%edi        #1st parameter
leaq -4(%rbp),%rsi        #2nd parameter
movl -8(%rbp),%edx        #3rd parameter
leaq -8(%rbp),%rcx        #4th parameter
movw -10(%rbp),%r8w       #5th parameter
leaq -10(%rbp),%r9        #6th parameter
movb -11(%rbp),%r10b      #define 7th parameter
leaq -11(%rbp),%r11       #define 8th parameter

pushq %r11                #8th parameter
pushq %r10                #7th parameter

call proc                 

movswl -10(%rbp),%ecx     # x3
movsbl -11(%rbp),%eax     # x4
subl %eax,%ecx            # x3-x4

movl -4(%rbp),%eax        #x1
addl -8(%rbp),%eax        #x1+x2

imull %ecx,%eax           #mulltiply (x1+x2) * (x3-x4)

end:
movq %rbp,%rsp            #epilogue          
popq %rbp                 #

ret 
