all: args

args: args.o
	ld args.o -lc -o args
args.o: args.s
	as args.s -o args.o
