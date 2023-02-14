INCLUDES = count_odd_matrixes.h
SOURCES =  main.c new_matrix.c count_odd_matrixes.s
OBJFILES = main.o new_matrix.o count_odd_matrixes.o
EXEC = prog_count_odd_matrixes

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
