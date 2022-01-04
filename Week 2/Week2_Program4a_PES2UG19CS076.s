.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
LDR R3,[R1]
LDR R4,[R0]
ADD R5,R3,R4
STR R5,[R2]
SWI 0x11
.data
A:.word 0x10
B:.word 0x14
C:.word 00
.end