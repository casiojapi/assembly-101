all: object

object:
    nasm -f elf32 -o hello.o hello.asm

executable:
    ld -m elf_i386 -o hello hello.o