.text
LDR R0,=A
MOV R1,#5
MOV R3,#0
loop:
LDRB R2,[R0]
ADD R0,R0,#1
ADD R3,R3,R2
SUB R1,R1,#1
CMP R1,#0
BNE loop
SWI 0x11
.data
A:.byte 1,2,3,4,5
.end