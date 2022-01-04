.text
MOV R0,#0x09
MOV R1,#0x09
MOV R2,R0
MOV R3,R1
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
.end