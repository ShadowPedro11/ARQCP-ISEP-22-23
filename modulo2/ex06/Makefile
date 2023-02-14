INCLUDES = concatBytes.h
SOURCES =  main.c concatBytes.s
OBJFILES = main.o concatBytes.o
EXEC = prog_concatBytes

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
