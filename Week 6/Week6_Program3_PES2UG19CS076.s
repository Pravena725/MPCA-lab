.data
str:.ASCIZ "HELLO WORLD"
num:.WORD 15000
.text
MOV R0,#15
MOV R1,#5
LDR R2,=str
LDR R8,=num
LDR R6,[R8]
MOV R7,#0
loop:
SWI 0x204
BL delay
CMP R0,#0
SUBNE R0,R0,#1
SWIEQ 0x11
B loop
delay:
	ADD R7,R7,#1
	CMP R7,R6
	BNE delay
	SWI 0x206
	MOV R7,#0
	MOV PC,LR
.end