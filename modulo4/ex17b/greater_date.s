.section .text
.global greater_date

greater_date:
movl %edi,%r10d   #copy date1 to r10d
movl %esi,%r11d   #copy date2 to r11d
shrl $8,%r10d     #shift 8 bits right r10d
shrl $8,%r11d     #shift 8 bits right r11d
cmpw %r10w,%r11w  #compare (short)r10 and (short)r11
ja date1Lower     #if date1 is Lower than date2 go to date1Lower//comparing years
cmpw %r10w,%r11w  #compare (short)r10 and (short)r11
jb date1Greater   #if date2 is Lower than date1 go to date1Greater//comparing years
                  #id date1==date2 (years) next step is to compare months
movl %edi,%r10d   #copy date1 to r10d
movl %esi,%r11d   #copy date2 to r11d
shrl $24,%r10d    #shift 24 bits right r10d
shrl $24,%r11d    #shift 24 bits right r11d
cmpb %r10b,%r11b  #compare (char)r10 and (char)r11
ja date1Lower     #if date1 is Lower than date2 go to date1Lower//comparing months
cmpb %r10b,%r11b  #compare (char)r10 and (char)r11
jb date1Greater   #if date2 is Lower than date1 go to date1Greater//comparing months
                  #id date1==date2 (months) next step is to compare days
movl %edi,%r10d   #copy date1 to r10d
movl %esi,%r11d   #copy date2 to r11d
cmpb %r10b,%r11b  #compare (char)r10 and (char)r11
ja date1Lower     #if date1 is Lower than date2 go to date1Lower//comparing days
cmpb %r10b,%r11b  #compare (char)r10 and (char)r11
jb date1Greater   #if date2 is Lower than date1 go to date1Greater//comparing days
jmp equals        #if date1 = date2 go to equals 

date1Greater:
movl %edi,%eax    #move the value of date1 to eax
jmp end           #go to end

date1Lower:
movl %esi,%eax    #move the value of date2 to eax
jmp end           #go to end

equals:
movl %edi,%eax    #move the value of date1 to eax
jmp end

end:

ret 
