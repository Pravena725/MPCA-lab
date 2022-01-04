.text
MOV R2,#10
MOV R3,#5
MOV R4,R3
LDR R0,=A
loop:
LDR R1,[R0],#4
CMP R1,R2
BEQ Label1
SUB R3,R3,#1
CMP R3,#0
BNE loop
MOV R6,#-1
SWI 0x11
Label1:
ADD R4,R4,#1
SUB R3,R4,R3
MOV R7,R3
SWI 0x11
.data
A:.word 10,25,35,45,55
.end