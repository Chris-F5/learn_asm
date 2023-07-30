.PHONY: run clean

hello.o: hello.asm
	nasm -f elf64 hello.asm -o hello.o
hello: hello.o
	ld hello.o -o hello
run: hello
	./hello
clean:
	rm -rf hello hello.o
