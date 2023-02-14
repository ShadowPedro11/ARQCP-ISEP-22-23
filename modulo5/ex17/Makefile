INCLUDES = return_unionB_b.h
SOURCES =  main.c new_matrix.c return_unionB_b.s
OBJFILES = main.o new_matrix.o return_unionB_b.o
EXEC = prog_return_unionB_b

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
