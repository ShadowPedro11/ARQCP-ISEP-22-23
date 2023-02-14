.section .data
.global byte1
.global byte2

.section .text
.global concatBytes		#short concatBytes()

concatBytes:
movb byte1(%rip), %al		#move byte1 to al
movb byte2(%rip), %ah		#move byte2 to ah
ret
