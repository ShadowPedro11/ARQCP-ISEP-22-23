prog_powerref: powerref.o main.o
	gcc powerref.o main.o -o prog_powerref

powerref.o: powerref.c
	gcc -g -Wall -c powerref.c -o powerref.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_powerref

run: prog_powerref
	./prog_powerref
