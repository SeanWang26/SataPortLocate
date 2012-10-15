CC = gcc -ggdb3 

CCC = g++ -ggdb3 

OBJS = main.o ArrayDataManager.o pathhandle.o ArrayDataManagerSata.o

SRC = main.cpp ArrayDataManager.cpp pathhandle.cpp ArrayDataManagerSata.cpp

all : locate.out

locate.out : $(SRC)
	$(CCC) -O2 -Wall -o $@ $^ -lrt -lpthread

#%.o: %.c
#	$(CC) -O2 -c $< -lrt -lpthread

.PHONY : all

clean:
	rm -f *.o
	rm -f *.out
