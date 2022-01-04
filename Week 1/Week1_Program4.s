.text
MOV R1,#5
ANDS R2,R1,#1
BEQ even
MOV R0,#0xFF
B last
even:
MOV R0,#0
last:
.end