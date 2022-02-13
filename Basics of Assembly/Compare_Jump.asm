;
;	Author: John Hatton
;	Date: 202202130549
;
;
;
;	A compare instruction must be followed by a jump instruction.
;
;
;		ex: 
;		addr1	instr1
;		addr2	cmp4,10			; Compares 1 to 3. Because 1 is less than 3, the flag is set to less than 0.
;  eip->addr3	jl addr44		; Here, the assembler will just jump to address 27
;		adrr4
;		.
;		.
;		.
;		addr44	instr44			; This line of code will be executed
;
;
;
;
;		*** Note there are several versions of the jump instruction
;
;		jl here is: jump if less than
;
;		We also have jg : jump if greater than
;					 je : jump if equal to
;					 jne: jump if NOT equal to
;