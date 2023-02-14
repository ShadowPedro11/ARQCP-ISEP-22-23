prog_seven_count: seven_count.o main.o
	gcc seven_count.o main.o -o prog_seven_count

seven_count.o: seven_count.s
	gcc -g -Wall -c seven_count.s -o seven_count.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_seven_count

run: prog_seven_count
	./prog_seven_count
