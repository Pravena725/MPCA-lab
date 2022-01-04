.text
MOV R0,#6
LDR R1,=A
MOV R2,#0
MOV R3,#1
STR R2,[R1]
ADD R1,R1,#4
STR R3,[R1],#4
loop:
ADD R4,R2,R3
STR R4,[R1],#4
MOV R2,R3
MOV R3,R4
SUB R0,R0,#1
CMP R0,#0
BNE loop
SWI 0x11
.data
A:.word 0,0,0,0,0,0
.end