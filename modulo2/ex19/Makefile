prog_hotCold: hotCold.o main.o
	gcc  hotCold.o main.o -o prog_hotCold

hotCold.o: hotCold.s
	gcc -g -Wall -c hotCold.s -o hotCold.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_hotCold

run: prog_hotCold
	./prog_hotCold
