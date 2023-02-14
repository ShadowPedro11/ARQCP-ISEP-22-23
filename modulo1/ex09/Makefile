prog_sortWithoutReps: sortWithoutReps.o main.o
	gcc sortWithoutReps.o main.o -o prog_sortWithoutReps

sortWithoutReps.o: sortWithoutReps.c
	gcc -g -Wall -c sortWithoutReps.c -o sortWithoutReps.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_sortWithoutReps

run: prog_sortWithoutReps
	./prog_sortWithoutReps
