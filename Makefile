.PHONY: run clean

hello.o: hello.asm
	nasm -f elf32 hello.asm -o hello.o
hello: hello.o
	ld -m elf_i386 hello.o -o hello
run: hello
	./hello
clean:
	rm -rf hello hello.o
