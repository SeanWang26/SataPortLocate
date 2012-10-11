CC = gcc -ggdb3 

CCC = g++ -ggdb3 

OBJS = main.o

SRC = main.c

all : locate.out

locate.out : $(SRC)
	$(CC) -O2 -Wall -o $@ $^ -lrt -lpthread

#%.o: %.c
#	$(CC) -O2 -c $< -lrt -lpthread

.PHONY : all

clean:
	rm -f *.o
	rm -f *.out
