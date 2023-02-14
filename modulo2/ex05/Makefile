prog_swapBytes: swapBytes.o main.o
	gcc swapBytes.o main.o -o prog_swapBytes

swapBytes.o: swapBytes.s
	gcc -g -Wall -c swapBytes.s -o swapBytes.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_swapBytes

run: prog_swapBytes
	./prog_swapBytes
