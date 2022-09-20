; hello x86
;
; Author: maximo santoro
; Date: 20-sep-2022

global _start                   ; global main?

; defining sections to make it work

; .text: program instructions
section .text:

_start:                         ; main?
    mov eax, 0x4                ; "write" syscall?
    mov ebx, 1                  ; parameters for "write" syscall (fd) | 1 -> stdout
    mov ecx, message            ; (buf)
    mov edx, message_length     ; (count)
    int 0x80                    ; int -> interrupt | 0x80 -> identifier for running the syscall

    mov eax, 0x1                ; syscall exit
    mov ebx, 0                  ; return 0
    int 0x80                    ; exit

; .data: program labels, vars
section .data:
    message: db "La concha del pato", 0xA ; db -> define bytes | 0xA -> newline in hex
    message_length equ $-message ; message_lenght equals length of message var
