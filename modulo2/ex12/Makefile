INCLUDES = isMultiple.h
SOURCES =  main.c isMultiple.s
OBJFILES = main.o isMultiple.o
EXEC = prog_isMultiple

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
