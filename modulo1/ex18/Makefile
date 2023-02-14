prog_compressShorts: compressShorts.o main.o
	gcc compressShorts.o main.o -o prog_compressShorts

compressShorts.o: compressShorts.c
	gcc -g -Wall -c compressShorts.c -o compressShorts.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_compressShorts

run: prog_compressShorts
	./prog_compressShorts
