; hello
;
; Author: maximo santoro
; Date: 20-sep-2022


; defining sections to make it work

; .text: program instructions
section .text:


; .data: program labels, vars
section .data:
    message: db "La concha del pato", 0xA ; db -> define bytes | 0xA -> newline in hex
    