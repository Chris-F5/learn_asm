.PHONY: run clean

hello: hello.o
	ld -m elf_i386 hello.o -o hello
hello.o: hello.asm
	nasm -f elf32 hello.asm -o hello.o
run: hello
	./hello
clean:
	rm -rf hello hello.o
