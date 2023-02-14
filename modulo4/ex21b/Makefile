prog_distance: distance.o main.o
	gcc distance.o main.o -o prog_distance

distance.o: distance.s
	gcc -g -Wall -c distance.s -o distance.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_distance

run: prog_distance
	./prog_distance
