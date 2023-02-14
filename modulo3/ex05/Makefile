INCLUDES = vec_sum.h
SOURCES =  main.c vec_sum.s vec_avg.s
OBJFILES = main.o vec_sum.o vec_avg.o
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
