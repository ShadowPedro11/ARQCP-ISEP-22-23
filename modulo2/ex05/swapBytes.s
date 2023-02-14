.section .data
.global s

.section .text
.global swapBytes       #  short swapBytes(void)

swapBytes:

movw s(%rip), %cx       #place s in bx (16 bits)
addb %ch, %ch           #duplicate bh value (8 bits)
movb %cl, %ah           #place bl in ah (8 bits)
movb %ch, %al           #place bh in al (8 bits)

ret
