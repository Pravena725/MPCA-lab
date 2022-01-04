.text
LDR R0,=a
LDR R1,=b
LDR R2,[R0]
LDR R3,[R1]
UMULL R4,R5,R2,R3

.data
a:.word 20000000
b:.word 30000000
.end