;4.4.1. %ifdef: Testing Single-Line Macro Existence

; Beginning a conditional-assembly block with the line %ifdef MACRO will
;  assemble the subsequent code if, and only if, a single-line macro called
;  MACRO is defined. If not, then the %elif and %else blocks (if any) will
;  be processed instead.

; For example, when debugging a program, you might want to write code such as

          ; perform some function
;%ifdef DEBUG
;          writefile 2,"Function performed successfully",13,10
;%endif
          ; go and do something else



; Then you could use the command-line option -D DEBUG to create a version of the
;  program which produced debugging messages, and remove the option to generate
;  the final release version of the program.

; You can test for a macro not being defined by using %ifndef instead of %ifdef.
;  You can also test for macro definitions in %elif blocks by using %elifdef and %elifndef.





; Lets do it (again!)




        extern  printf

        section .data

msg:    db "Hello World", 0
fmt:    db "%s", 10, 0
fmtd:   db "%d", 0
fmtdln: db "%d", 10, 0




        section .text

main:

        global  main





%ifdef DEBUG
%macro debugprint 2

        push rbp

        mov     rdi, %1
        mov     rsi, %2
        xor     rax, rax
        call    printf

        pop rbp
%endmacro
%endif

%macro println 2

        push rbp

        debugprint fmtdln, rbp

        mov     rdi, %1
        mov     rsi, %2
        xor     rax, rax
        call    printf

        pop rbp
%endmacro








        println fmt, msg



        mov     rax, 0
        ret