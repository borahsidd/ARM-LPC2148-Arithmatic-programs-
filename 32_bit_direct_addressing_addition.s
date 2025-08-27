	AREA PROGRAM,CODE,READONLY
	ENTRY
MAIN

	MOV R1, #0x00000070
	MOV R2, #0x70000000		
	ADD R0, R1, R2
	SWI &11				; SWI instruction: Software instruction/ switch instruction
	
	END