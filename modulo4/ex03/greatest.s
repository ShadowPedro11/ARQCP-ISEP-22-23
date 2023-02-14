.section .text
.global greatest

greatest:
                        # a -> edi || b -> esi || c -> edx || d -> ecx || 

cmpl %edi, %esi         # compare a whit b 
jg bIsHigher            # if b>a go to bIsHigher
movl %edi,%eax          # eax = b
jmp compareWhitC        # go to compareWhitC

bIsHigher:
movl %esi,%eax          # eax = a

compareWhitC:
cmpl %eax,%edx          # compare eax whit c
jl compareWhitD         # if eax > c go to compareWhitD
movl %edx,%eax          # eax = edx = c

compareWhitD:
cmpl %eax,%ecx          # compare eax whit d
jl end                  # if eax > d go to end
movl %ecx,%eax          # eax = ecx = d

end:
           
ret 
