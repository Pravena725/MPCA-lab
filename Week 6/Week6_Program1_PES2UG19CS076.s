.text
MOV R1,#0
loop:
	SWI 0x201
	ADD R0,R0,#1
	MOV R5,#0x60000
	delay:
		SUB R5,R5,#1
		CMP R5,#0
		BNE delay
	CMP R0,#3
	BLE loop
.end

