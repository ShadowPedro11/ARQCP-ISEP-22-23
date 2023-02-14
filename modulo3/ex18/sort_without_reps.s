.section .data

.global ptrsrc
.global num
.global ptrdest

.section .text

.global sort_without_reps		#int sort_without_reps(void)

sort_without_reps:

movq ptrsrc (%rip), %rdi		#moves ptrsrc to rdi
movq ptrdest (%rip), %rsi		#moves ptrdest to rsi
movslq num (%rip), %rcx			#moves num to rcx
movl $0, %eax					#moves 0 to eax
movl $0, %r11d					#moves 0 to r11
movl $0, %r10d					#moves 0 to r10

cmpq $0, %rcx					#compares 0 to rcx
je end							#jumps to end if equal

loopArray:

movw (%rdi, %r11, 2), %dx		#dx = arr[i]

pushq %r10
movl $0, %r10d					#moves 0 to r10
pushq %rcx
movslq %eax, %rcx				#moves eax to rcx

cmpl $0, %eax					#compares 0 to eax
je moveToDest					#jumps to moveToDest if equal

checkArray:

cmpw %dx, (%rsi,%r10,2)			#compares dx to arr[j]
je equal						#jumps to equal if equal
incq %r10						#increments 1 to r10

loop checkArray					#loops to checkArray

moveToDest:

popq %rcx
popq %r10
movw %dx,(%rsi, %r10, 2)		#arr[j] = dx

incl %eax						#increments 1 to eax
incq %r11						#increments 1 to r11
incq %r10						#increments 1 to r10

loop loopArray					#loops to loopArray
jmp organize					#jumps to organize

equal:

popq %rcx
popq %r10
incq %r11
loop loopArray					#loops to loopArray

organize:

movq ptrdest(%rip),%rdi       	# move the address pointed by ptrvec to rdi
movslq %eax,%rcx				# move the value of num to rcx, num is lenght

cmpq $0,%rcx                 	#compare o whit rcx
je end                       	#go to end

movq $0,%rdx					#rdx = i = 0

firstLoop:
movq $0,%rax                 	#rax = j = 0
movq %rdx,%rax               	#rax = j = i = rdx
incq %rsi                    	#rsi = j = i+1

cmpq %rdx,%rcx               	#Compare i whit size
jg secondLoop                	#if i<size go to secondLoop

jmp end                      	#jumps to end

secondLoop:

cmpq %rax,%rcx               	#Compare j whit size
jle inc_loop                 	#if j<size go to inc_loop

movw (%rdi,%rdx,2),%r8w      	#r8w = arr[i]
movw (%rdi,%rax,2),%r9w      	#r9w = arr[j]
cmpw %r8w,%r9w               	#Compare rdx = i whit rsi = j
jl swapNum                   	#if j>i go to swapNum

incq %rax                    	#j++
jmp secondLoop               	#go to secondLoop

swapNum:

movw %r9w,(%rdi,%rdx,2)      	#arr[i] = r9w
movw %r8w,(%rdi,%rax,2)      	#arr[j] = r8w 

incq %rax                    	#j++
jmp secondLoop               	#go to secondLoop

inc_loop:
incq %rdx                    	#i++
jmp firstLoop                	#go to firstLoop

end:

ret
