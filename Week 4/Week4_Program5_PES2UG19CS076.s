.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
MOV R3,#3
MOV R4,#0 @initial value of i
MOV R5,#0 @initial value of j
MOV R7,#4
loop1:
	MOV R4,#0
	loop2:
		MOV R6,#0 @to store sum
		MLA R8,R4,R3,R5
		MLA R9,R8,R7,R0
		LDR R8,[R9]
		ADD R6,R6,R8
		MLA R8,R4,R3,R5
		MLA R9,R8,R7,R1
		LDR R8,[R9]
		ADD R6,R6,R8
		MLA R8,R4,R3,R5
		MLA R9,R8,R7,R2
		STR R6,[R9]
	ADD R4,R4,#1
	CMP R4,R3
	BNE loop2
ADD R5,R5,#1
CMP R5,R3
BNE loop1
SWI 0x11
.data
A:.word 10,20,35,45,55,65,70,80,90
B:.word 1,2,3,4,5,6,7,8,9
C:.word 0,0,0,0,0,0,0,0,0
.end
			