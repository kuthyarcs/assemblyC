	AREA PROG,CODE,READONLY
START
	LDR R0,=SUM
	MOV R1,#1
	MOV R2,#0
NEXT
	CMP R1,#10
	BEQ STORE
	ADC R2,R2,R1
	ADD R1,R1,#1
LOOP
	B NEXT
STORE
	STR R2,[R0]
SUM
	DCD 0
	END