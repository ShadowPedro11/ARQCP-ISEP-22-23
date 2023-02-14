.section .data
 .global s1
 .global s2

.section .text

  .global crossSumBytes



crossSumBytes:
movw s1(%rip),%ax    #move se to ax
movw s2(%rip),%cx    #move se to cx
addb %cl,%ah         #add cl to ah, ah=ah+cl
addb %ch,%al         #add ch to al, al=al+ch
ret
