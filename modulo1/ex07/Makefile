prog_arraySort1: arraySort1.o main.o
	gcc arraySort1.o main.o -o prog_arraySort1

arraySort1.o: arraySort1.c
	gcc -g -Wall -c arraySort1.c -o arraySort1.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_arraySort1

run: prog_arraySort1
	./prog_arraySort1
