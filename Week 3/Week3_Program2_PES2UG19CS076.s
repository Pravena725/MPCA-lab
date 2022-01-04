.text
LDR R0,=A
LDR R1,=B
MOV R3,#5
loop:
LDR R4,[R0],#4
STR R4,[R1],#4
SUB R3,R3,#1
CMP R3,#0
BNE loop
SWI 0x11
.data
A:.word 10,20,30,40,50
B:.word 0,0,0,0,0
.end