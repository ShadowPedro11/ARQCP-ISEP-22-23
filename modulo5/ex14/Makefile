INCLUDES = add_matrixes.h new_matrix.h
SOURCES =  main.c add_matrixes.c new_matrix.c
OBJFILES = main.o add_matrixes.o new_matrix.o
EXEC = prog_steps

.SUFFIXES : .c .o .s

.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
