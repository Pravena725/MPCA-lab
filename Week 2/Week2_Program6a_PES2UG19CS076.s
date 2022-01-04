.text
LDR R0,=A
MOV R1,#10
MOV R3,#0
loop:
LDR R2,[R0]
ADD R0,R0,#4
ADD R3,R3,R2
SUB R1,R1,#1
CMP R1,#0
BNE loop
SWI 0x11
.data
A:.word 10,20,30,40,50,60,70,80,90,11
.end