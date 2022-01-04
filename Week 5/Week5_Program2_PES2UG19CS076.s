.text
LDR R0,=A
MOV R1,#0
loop:
LDRB R2,[R0],#1
CMP R2,#0
ADD R1,R1,#1
BNE loop
SUB R1,R1,#1
SWI 0x11
.data
A:.ASCIZ "HELLO"
.end
