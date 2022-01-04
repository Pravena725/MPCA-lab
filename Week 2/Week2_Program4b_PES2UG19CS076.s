.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
LDRH R3,[R1]
LDRH R4,[R0]
ADD R5,R3,R4
STRH R5,[R2]
SWI 0x11
.data
A:.hword 0x0A
B:.hword 0x14
C:.hword 00
.end