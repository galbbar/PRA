all: prog

program.o:	program.cpp	program.h
		g++ -c program.cpp

main.o:	main.cpp	
		g++ -c main.cpp 

prog:	program.o	main.o
	g++ -o prog main.o program.o

clean:
	rm -f *.o prog

test: all
	./prog
