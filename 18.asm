	AREA PROG,CODE,READONLY
START
	MOV R0,#1
	MOV R1,#0x21
	MOV R2,#21
	MOV R3,R1
	MVN R0,#0xFF
	MVN R0,R3
	LDR R0,[R1]
	STR R0,[R1]
STOP
	B STOP
	END