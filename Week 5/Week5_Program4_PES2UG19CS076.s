.text
LDR R0,=str
LDR R1,=char
LDR R3,[R1]
loop:
LDRB R2,[R0],#1
CMP R2,R3
ADDEQ R5,R5,#1
CMP R2,#0
BNE loop
SWI 0x11
.data
str:.ASCIZ "Hello World"
char:.ASCIZ "l"
.end
