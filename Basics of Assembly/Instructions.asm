;********************************************************************************************************
;																										*
;																										*
;																										*
;			In the Intel x86 32-Bit Architecture, and I'm sure for very many							*
;			 similar assembly implementations, there are a few key instructions.						*
;																										*
;			An instruction in Assembly is kind of like a function or method in a higher language.		*
;			Do keep in mind that they operate quite a lot differently though.							*
;		**************************************************************************						*
;		*	Author: John Hatton					Instructions in the 			 *						*
;		*	Date:	202202131537			x86 32- Bit Instruction	Set			 *						*
;		**************************************************************************						*
;																										*
;																										*
;																										*
;																										*
;																										*
;		Instructions:																					*
;			(syntax: operation argument1, argument2)													*
;																										*
;			Move Instruction:																			*
;																										*
;			mov arg1,arg2 <----The move instruction takes two arguments, and assigns the value of		*
;				 ^----|			the second argument to the first argument.								*
;			*** note that these values being moved can be memory addresses! If you say want to move		*
;				 the value of eax to the value at the base pointer - 8 (the newly stored value)			*
;				 then we use [] square brackets to dereference the base pointer, so it assigns the		*
;				 value stored at the base pointer - 8 to the eax register, or however.					*
;																										*
;			mov eax, [ebp-0x8] ; this instruction moves the value contained there to eax register.		*
;																										*
;			*************************************************************************************		*
;																										*
;			Add Instruction																				*
;			add arg1, arg2  ; results in arg1+arg2														*
;			ex.: eax = 15; add 5 to it.																	*
;			add eax,0x5  ; eax now equals 20															*
;																										*
;																										*
;			**************************************														*
;																										*
;			Subtract Instruction																		*
;			sub arg1, arg2    ; results in arg1-arg2													*
;																										*
;			****************************************													*
;																										*
;			Push instruction																			*
;																										*
;			The push instruction does a few things.														*
;				1. It decrements the Stack Pointer (esp)												*
;				2. Places the Stack Pointer's operand to in the location that it points to				*
;																										*
;			*** When we push an argument onto the stack, the argument itself is placed in the			*
;				 location that the stack pointer now points to. (After completing step 1)				*
;																										*
;																										*
;																										*
;																										*
;			*********************************************************************************			*
;																										*
;			Pop Instruction																				*
;																										*
;			The pop instruction is the opposite of the push instruction									*
;																										*
;			1. It takes a register as an argument														*
;			2. Moves the top element of the stack into the register specified by the argument			*
;			3. Finally it decrements the stack pointer													*
;																										*
;																										*
;																										*
;																										*
;			**************************************************************************					*
;																										*
;			LEA (Load Effective Address) Instruction													*
;																										*
;			The load effective address instruction places the address, specified by its					*
;			 second operand, into the register specified by its first operand.							*
;																										*
;			lea reg, arg1																				*
;																										*
;			This instruction is generally used for obtaining a pointer									*
;			 into a memory region.																		*
;																										*
;																										*
;																										*
;																										*
;																										*
;			***************************************************************************					*
;																										*
;			This should do for now. 																	*
;																										*
;********************************************************************************************************