.text
LDR R0,=0b11110000101001011111000010100100
MOV R1,#32
MOV R2,#0
MOV R3,#0
loop:
MOVS R0,R0,LSR #1
ADDCS R2,R2,#1
ADDCC R3,R3,#1
SUB R1,R1,#1
CMP R1,#0
BNE loop
SWI 0x11
.end
