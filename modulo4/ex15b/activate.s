.section .text
.global activate_bits

activate_bits:
movl %edx,%ecx        #move "right" to edx
movl $0,%r10d         #clear r10d = i
movl $0,%eax          #clear eax = mask

right:
cmpl %r10d,%ecx       #compare r10d with ecx
je beforeLelft        #if r10d = ecx go to beforeEnd
roll %eax             #rotate bits of eax to left
incl %eax             #add 1 to eax
incl %r10d            #add 1 to r10d
jmp right             #

beforeLelft:
orl %eax,%edi         #or using eax mask, value stored in edi
movl $0,%eax          #clear eax
movl $31,%ecx         #move 31 to ecx
movl %esi,%r10d       #move "left" to r10d

left:
cmpl %r10d,%ecx       #compare r10d with ecx        
je end                #if r10d = ecx go to end
incl %eax             #add 1 to eax
rorl %eax             #rotate bits of eax to right
incl %r10d            #add 1 to r10d
jmp left              #

end:
orl %edi,%eax         #or using mask eax and value stored in edi, value to eax

ret 
