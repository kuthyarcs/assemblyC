	AREA PROGRAM,CODE,READONLY
ENTRY
	LDR R0,MEMORY
	LDRH R1,[R0]
	LDRH R2,[R0,#2]
	MUL R2,R1,R2
	STRH R2,[R0,#4]
	SWI &11
MEMORY
	DCD 0x40000000
	END