.section .data

s1:
.short 0xFAA

s2:
.short 0x111

 .global s1
 .global s2

.section .text

  .global crossSumBytes			#short crossSumBytes()



crossSumBytes:
movw s1(%rip),%ax    #move s1 to ax
movw s2(%rip),%cx    #move s2 to cx
addb %cl,%ah         #add cl to ah, ah=ah+cl
addb %ch,%al         #add ch to al, al=al+ch
ret
