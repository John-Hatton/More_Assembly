; This is from umbc.edu


; Search "Sample 64-bit nasm programs"


        global  main
        extern  printf


        section .data

format: db '%15d', 10, 0
title:  db 'fibonacci numbers', 10, 0

        section .text

main:

        push    rbp
        mov     rdi, title
        mov     rax, 0
        call    printf


        mov     rcx, 95
        mov     rax, 1
        mov     rbx, 2


print:


        ;
        ;
        ;
        ;




        push    rax
        push    rcx

        mov     rdi, format
        mov     rsi, rax
        xor     rax, rax
        call    printf


        pop     rcx
        pop     rax
        mov     rdx, rax
        mov     rax, rbx
        add     rbx, rdx
        dec     rcx
        jnz     print


        pop     rbp

        mov     rax, 0

        ret