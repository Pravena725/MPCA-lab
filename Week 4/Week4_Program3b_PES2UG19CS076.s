.text
LDR R0,=A
LDR R1,=B
MOV R2,#4
MOV R5,#0
loop:
LDR R3,[R0],#4
LDR R4,[R1],#4
MLA R5,R3,R4,R5
SUB R2,R2,#1
CMP R2,#0
BNE loop
SWI 0x11

.data
A:.word 10,20,30,40
B:.word 10,20,30,40
.end