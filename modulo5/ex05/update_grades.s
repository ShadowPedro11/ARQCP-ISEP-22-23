.section .data
.equ NUMBER_OFFSET, 0                
.equ AGE_OFFSET, 2                   
.equ GRADES_OFFSET, 4                
.equ NAME_OFFSET, 24                 
.equ ADRESS_OFFSET, 84
	
.section .text

.global update_grades

update_grades:
movq $0,%r8                          #move o to r8 (index)
movq $5,%rcx                         #move 5 to rcx (number of elements in the array)


loop:
movl (%rsi,%r8,4),%r9d               #copy int rsi[r8] to r9d (value of r8(index) in the array passed as parameter)
movl %r9d,GRADES_OFFSET(%rdi)        #go to grades_offset and add this value
addq $4,%rdi                         #add 4 to rdi (go to next int)
incq %r8                             #add 1 to r8 (index++)
cmpq %r8,%rcx                        #compare r8 whit rcx (compare index whit size)
je end                               #if equal go to end
jmp loop                             #go to loop

end:


ret
