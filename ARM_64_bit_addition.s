;Instructions ADDS and ADC, add a 64-bit integer contained
;in r2 and r3 to another 64-bit integer
;contained in r0 and r1, and place the result in r4 and r5.	
	
	AREA PROGRAM,CODE,READONLY
	ENTRY
MAIN

	MOV R0, #0x00000070      
	MOV R1, #0x70000000
	MOV R2, #0x00000010
	MOV R3, #0x00000010
	ADDS R4, R0, R2   	;ADD doesn't update flags. ADDS does. If S is specified, these instructions update the N, Z, C and V flags according to the result.
	ADC R5, R1, R3		;Add with the carry 
	SWI &11
	END
		