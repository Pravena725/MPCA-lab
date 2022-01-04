.text
MOV R0,#3
MOV R1,R0
loop:
SUBS R0,R0,#1
MUL R2,R0,R1
MOV R1,R2
CMP R0,#1
BGT loop
SWI 0x11
.end