;
;       From : https://www.devdungeon.com/content/how-mix-c-and-assembly
;


; Define printf as an external function
        extern	printf

section .data       ; Having These be capitalized will make it go boom
    msg:	db "Hello world", 0 ; Zero is Null terminator
    fmt:    db "%s", 10, 0 ; printf format string follow by a newline(10) and a null terminator(0), "\n",'0'

section .text       ; Having These be capitalized will make it go boom
    global main

main:
    push rbp ; Push stack

    ; Set up parameters and call the C function
    mov	rdi, fmt
    mov	rsi, msg
    xor rax, rax
    call printf

    pop	rbp		; Pop stack

    mov	rax,0	; Exit code 0
    ret			; Return