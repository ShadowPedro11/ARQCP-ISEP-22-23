prog_whereExists: whereExists.o main.o
	gcc whereExists.o main.o -o prog_whereExists

whereExists.o: whereExists.c
	gcc -g -Wall -c whereExists.c -o whereExists.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_whereExists

run: prog_whereExists
	./prog_whereExists
