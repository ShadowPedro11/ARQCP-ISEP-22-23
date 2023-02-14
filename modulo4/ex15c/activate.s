.section .text
.global activate_bits

activate_bits:
movl %edx,%ecx
movl $0,%r10d
movl $0,%eax

right:
cmpl %r10d,%ecx
je beforeLelft
roll %eax
incl %eax
incl %r10d
jmp right

beforeLelft:
orl %eax,%edi
movl $0,%eax
movl $31,%ecx
movl %esi,%r10d

left:
cmpl %r10d,%ecx
je end
incl %eax
rorl %eax
incl %r10d
jmp left

end:
orl %edi,%eax

ret 
