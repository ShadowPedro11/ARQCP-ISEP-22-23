prog_swap: swap.o main.o
	gcc swap.o main.o -o prog_swap

swap.o: swap.c
	gcc -g -Wall -c swap.c -o swap.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_swap

run: prog_swap
	./prog_swap
