all: test
	./test

test: test.s
	gcc test.s -o test

test.s: test.bc
	llc test.bc -o test.s

# compressed binary code (.bc)
test.bc:
	llvm-gcc -emit-llvm test.c -c -o test.bc

clean:
	rm -f test test.s test.bc

show_bc: test.bc
	llvm-dis < test.bc
