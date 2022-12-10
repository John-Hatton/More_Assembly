; First things first, we just want to follow Dr. Finkbine's guide as follows:


        ;   1. Do a Hello World!

        ;       a. Wouldn't it be nice, to create your own Macro, which ran
        ;           the C printing from a Macro call...?

        ;       Worth looking into.






        extern  printf



        section .data


msg:    db "Servus!", 0
fmt:    db "%s", 10, 0


        section .text
        global  main

main:


        push rbp    ; Save state of the machine


        mov     rdi, fmt
        mov     rsi, msg
        xor     rax, rax
        call    printf


        pop rbp     ; Restore contents of machine, from before C's printf
                    ; potentially mucked up all the registers



        mov     rax, 0
        ret


