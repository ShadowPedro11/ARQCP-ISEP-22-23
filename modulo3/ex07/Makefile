INCLUDES = decrypt.h
SOURCES =  main.c decrypt.s 
OBJFILES = main.o decrypt.o 
EXEC = prog_vec

.SUFFIXES : .c .o 

.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC} 
