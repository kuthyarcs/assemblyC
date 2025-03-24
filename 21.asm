	TTL SMALLEST NUMBER
	AREA PROG,CODE,READONLY
START
	LDR R0,=ARRAY
	MOV R1,#9
	LDR R2,=LS
	LDR R3,[R0],#04 ;load content of R0 to R3 and increment the pointer to 4 bytes
UP
	LDR R4,[R0],#04
	CMP R3,R4
	MOVHI R3,R4  ;Move if lower or same
	SUB R1,R1,#1
	CMP R1,#0
	BNE UP
	LDR R0,=LS
	STR R3,[R0]
STOP
	B STOP
	
	AREA SRC,DATA,READONLY
ARRAY
	DCD 0x33333333, 0x22222222, 0x55555555, 0x44444444, 0x77777777, 0xFFFFFFFF, 0x99999999, 0x88888888, 0x45678912
	ALIGN
	
	AREA DST,DATA
LS
	DCD 0
	ALIGN
	END