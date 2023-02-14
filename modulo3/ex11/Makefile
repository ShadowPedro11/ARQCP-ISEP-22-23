prog_vec_greater10: vec_greater10.o main.o
	gcc vec_greater10.o main.o -o prog_vec_greater10

vec_greater10.o:  vec_greater10.s
	gcc -g -Wall -c vec_greater10.s -o vec_greater10.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_ vec_greater10

run: prog_vec_greater10
	./prog_vec_greater10
