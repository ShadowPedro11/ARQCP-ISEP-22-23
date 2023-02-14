.section .text
.global activate_invert_bits

activate_invert_bits:

call activate_bits

notl %eax       #negate all bits 0->1 and 1->0

ret 
