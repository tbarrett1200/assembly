all: sum

sum: %.o
	ld sum.o -o sum
%.o: %.s
	as sum.s -o sum.o
