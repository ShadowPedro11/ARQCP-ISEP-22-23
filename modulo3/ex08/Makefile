INCLUDES = test_even.h
SOURCES =  main.c test_even.s vec_sum_even.s
OBJFILES = main.o test_even.o vec_sum_even.o
EXEC = prog_steps

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
