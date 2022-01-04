.text
LDR R0,=srcstr
LDR R1,=dststr
loop:
LDRB R2,[R0],#1
STRB R2,[R1],#1
CMP R2,#0
BNE loop
SWI 0x02
SWI 0x11
.data
srcstr:.ASCIZ "PES UNIVERSITY"
dststr:.ASCIZ "aaaaaaaaaaaaa"
.end
