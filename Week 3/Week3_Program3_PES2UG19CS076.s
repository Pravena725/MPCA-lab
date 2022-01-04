.text
LDR R0,=A
MOV R1,#6
LDR R2,[R0],#4
CMP R2,#0
BEQ end
loop:
SUB R1,R1,#1
LDR R3,[R0],#4
CMP R3,R2
MOVMI R2,R3
CMP R1,#1
BNE loop
end:
SWI 0x11
.data
A:.word 13,10,24,2,55,1
.end