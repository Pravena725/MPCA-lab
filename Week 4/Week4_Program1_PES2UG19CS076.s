.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
MOV R6,#5
loop:
LDR R3,[R0],#4
LDR R4,[R1],#4
ADDS R5,R3,R4
STR R5,[R2],#4
SUB R6,R6,#1
CMP R6,#0
BNE loop
SWI 0x11
.data
A:.word 5,10,15,20,25
B:.word 5,10,15,20,25
C:.word 0,0,0,0,0
.end