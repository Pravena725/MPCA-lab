.text
LDR R0,=A
LDR R1,=B
LDR R2,[R0]
LDR R3,[R1]
gcd:
CMP R2,R3
BEQ last
BLT less
SUBS R2,R2,R3
B gcd
less:
SUBS R3,R3,R2
B gcd
last:
SWI 0x11
.data
A:.word 0x04
B:.word 0x08
.end