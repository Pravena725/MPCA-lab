.text
LDR R0,=A
MOV R1,#9
MOV R5,#0
MOV R4,#0
MOV R3,#0
loop1:
LDR R2,[R0]
CMP R2,#0
BEQ zero
BGT positive
BLT negative
loop2:
SUB R1,R1,#1
ADD R0,R0,#4
CMP R1,#0
BEQ end
B loop1
zero:
ADD R4,R4,#1
B loop2
positive:
ADD R5,R5,#1
B loop2
negative:
ADD R3,R3,#1
B loop2
end:
SWI 0x11
.data
A:.word 20,-10,0,-40,50,0,22,-14,99
.end