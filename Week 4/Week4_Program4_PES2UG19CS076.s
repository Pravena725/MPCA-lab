.text
LDR R0,=A
LDR R1,=B
MOV R2,#3
MOV R3,#3
MOV R4,#0 @initial value of i
MOV R5,#0 @initial value of j
MOV R7,#4
loop1:
	MOV R4,#0
	loop2:
		MLA R8,R4,R2,R5
		MLA R9,R8,R7,R0
		LDR R6,[R9]
		MLA R8,R4,R2,R5
		MLA R9,R8,R7,R1
		STR R6,[R9]
	ADD R4,R4,#1
	CMP R4,R2
	BNE loop2
ADD R5,R5,#1
CMP R5,R3
BNE loop1
SWI 0x11
.data
A:.word 10,20,35,45,55,65,70,80,90
B:.word 0,0,0,0,0,0,0,0,0
.end
			