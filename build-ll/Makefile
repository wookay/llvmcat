all: test
	./test

test: test.s
	gcc test.s -o test

test.s: test.ll
	llc test.ll -o test.s

# human-readable assembly-like text form (.ll)
test.ll:
	llvm-gcc -emit-llvm -S test.c -o test.ll

clean:
	rm -f test test.s test.bc test.ll

# compressed binary code (.bc)
test.bc: test.ll
	llvm-as test.ll -o test.bc

show_bc: test.bc
	llvm-dis < test.bc
