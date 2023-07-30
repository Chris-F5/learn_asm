.PHONY: run clean

hello: hello.o
	ld -m elf_x86_64 hello.o -o hello
hello.o: hello.asm
	nasm -f elf64 hello.asm -o hello.o
run: hello
	./hello
clean:
	rm -rf hello hello.o
