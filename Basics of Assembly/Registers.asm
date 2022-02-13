;*********************************************************************************************
;
;
;
;	For our General Puropse					Additionally, there are
;    there are several x86					 a few reserved registers
;    registers available:                    in the x86 32-Bit ISA:
;
;	eax	-- accumulator						eSP -- Stack pointer <- points to the current value in memory
;	ebx -- base								eBP -- Base Pointer <- points to the base of the current stack frame
;	ecx -- counter							eIP -- Instruction Pointer <- Points to the current instruction being executed
;	edx -- data
;	
;	esi -- ???								@John Hatton
;	edi -- ???								 : 13 Feb. 2022 
;
;
;*********************************************************************************************