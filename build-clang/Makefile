all: test
	./test

test: test.s
	clang test.s -o test

test.s: test.ll
	llc test.ll -o test.s

test.ll:
	clang test.c -S -emit-llvm -o test.ll

clean:
	rm -f test test.s test.bc test.ll

test.bc:
	clang -emit-llvm -c test.c -o test.bc

show_bc: test.bc
	llvm-dis < test.bc
