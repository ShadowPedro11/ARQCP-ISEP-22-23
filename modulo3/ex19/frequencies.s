.section .data
.global ptrgrades
.global num
.global ptrfreq

.section .text
.global frequencies            #void frequencies(void)

frequencies:

movq ptrgrades(%rip),%rdi    # move the address pointed by ptrvec to rdi
movq ptrfreq(%rip),%rax      # move the address pointed by ptrfreq to rax
movq $21,%rdx                # rdx = size of freqs
movslq num(%rip),%rcx        # rcx = num = size of grades
cmpq $0,%rcx                 # compare 0 to rcx
je end                       # if rcx = 0 -> go to end

movq $0,%r8                  # r8 = i = 0
movq $0,%r9                  # r9 = j = 0
movl $0,%r10d                # r10b = counter = 0

fillZero:
cmpq %r9,%rdx                # compare r9 whit rdx(r9 is j and rdx is 21)
je firstLoop                 # if r9 = rdx go to firstLoop
movl $0,(%rax,%r9,4)         # move 0 to rax[r9](r9 is j)
incq %r9                     # add 1 to r9
jmp fillZero                 # go to fillZero

firstLoop:
cmpq $0,%r9                  # compare 0 whit r9 (r9 is j)
jl end                       # if r9<0 go to end

secondLoop:
cmpq %r8,%rcx                # compare r8 whit rcx (r8 is x and rcx is num)   
je endOfSecondLoop           # if r8 = rcx go to endOfSecondLoop   
cmpb %r9b,(%rdi,%r8,1)       # compare r9b whit rdi[r8](r8 is x)
je isEqual                   # if r9b = rdi[r8](r8 is x)
incq %r8                     # add 1 to r8
jmp secondLoop               # go to secondLoop

isEqual:
incl %r10d                   # add 1 to r10d
incq %r8                     # add 1 to r8
jmp secondLoop               # go to secondLoop

endOfSecondLoop:
movl %r10d,(%rax,%r9,4)      # move the value of r10d to rax[r9](r9 is j)
movq $0,%r8                  # i=0
decq %r9                     # j=j-1
movl $0,%r10d                # counter=0
jmp firstLoop


end:

ret
