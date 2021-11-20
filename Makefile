# modify this makefile for your implementation
#   as described in the handout

llist.o:  list.h llist.c
	gcc -c llist.c

sq_slow.o: llist.o sq.h sq_slow.c
	gcc -c sq_slow.c

driver: driver.c sq_slow.o 
	gcc driver.c sq_slow.o llist.o -lc -o driver

clean:
	rm -f *.o driver
