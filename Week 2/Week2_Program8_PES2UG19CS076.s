.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
LDR R3,[R0]
LDR R4,[R1]
ADD R5,R3,R4
MOV R6,R4,LSL #2
ADD R7,R6,R4
ADD R8,R5,R7
STR R8,[R2]
SWI 0x11
.data
A:.word 50
B:.word 20
C:.word 0
.end