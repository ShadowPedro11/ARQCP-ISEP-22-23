prog_print: print.o main.o
	gcc print.o main.o -o prog_print

print.o: print.c
	gcc -g -Wall -c print.c -o print.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_print

run: prog_print
	./prog_print
