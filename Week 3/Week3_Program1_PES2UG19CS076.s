.text
LDR R0,=a
LDR R1,=b
LDR R2,=c
LDR R4,[R0]
LDR R5,[R1]
ADD R4,R4,R5
STR R4,[R2]
LDR R4,[R0,#4]
LDR R5,[R1,#4]
ADD R6,R4,R5
STR R6,[R2,#4]
SWI 0x11
.data
a:.word 12213443,56657887
b:.word 98764532,45326789
c:.word 0,0
.end