.section .data
.global ptrvec
.global num


.section .text
.global array_sort            #void array_sort(void)

array_sort:

movq ptrvec(%rip),%rdi       # move the address pointed by ptrvec to rdi
movslq num(%rip),%rcx        # move the value of num to rcx, num is lenght

cmpq $0,%rcx                 # compare o whit rcx
je end                       # go to end

movq $0,%rdx                 # rdx = i = 0

firstLoop:
movq $0,%rax                 # rax = j = 0
movq %rdx,%rax               # rax = j = i = rdx
incq %rsi                    # rsi = j = i+1

cmpq %rdx,%rcx               # Compare i whit size
jg secondLoop                # if i<size go to secondLoop

jmp end                      # go to end


secondLoop:

cmpq %rax,%rcx               # Compare j whit size
jle inc_loop                 # if j<size go to inc_loop

movw (%rdi,%rdx,2),%r8w      # r8w = arr[i]
movw (%rdi,%rax,2),%r9w      # r9w = arr[j]
cmpw %r8w,%r9w               # Compare rdx = i whit rsi = j
jg swapNum                   # if j>i go to swapNum

incq %rax                    # j++
jmp secondLoop               # go to secondLoop

swapNum:

movw %r9w,(%rdi,%rdx,2)      # arr[i] = r9w
movw %r8w,(%rdi,%rax,2)      # arr[j] = r8w 

incq %rax                    # j++
jmp secondLoop               # go to secondLoop


inc_loop:
incq %rdx                    # i++
jmp firstLoop                # go to firstLoop


end:


ret
