INCLUDES = count_bits_one.h
SOURCES =  main.c count_bits_one.s vec_count_bits_one.s
OBJFILES = main.o count_bits_one.o vec_count_bits_one.o
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
