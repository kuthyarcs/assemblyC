	AREA PROG,CODE,READONLY
START
	LDR R0,Num
	MOV R1,R0
	CMP R0,#02
	MOV R2,#01
	BLT STOP
REPEAT
	SUBS R1,R1,#01
	CMP R1,#01
	BEQ STOP
	MUL R2,R0,R1
	MOV R0,R2
	B REPEAT
STOP
	B STOP
	
	AREA DATA3,DATA,READONLY
Num
	DCW 0x5
	ALIGN
	END