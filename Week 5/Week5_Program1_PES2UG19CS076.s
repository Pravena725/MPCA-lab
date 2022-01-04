.text
LDR R1,=A
loop:
LDRB R0,[R1],#1
CMP R0,#0
SWINE 0x00
BNE loop
SWI 0x11
.data
A:.ASCIZ "HELLO WORLD"
.end
