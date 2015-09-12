all:
	make clean
	make -f build-bc/Makefile
	make clean
	make -f build-clang/Makefile
	make clean
	make -f build-ll/Makefile

clean:
	rm -f test test.bc test.ll test.s
