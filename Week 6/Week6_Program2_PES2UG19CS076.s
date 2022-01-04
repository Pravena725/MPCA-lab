.text
MOV R0,#0
MOV R2,#0
again:
	SWI 0x202
	CMP R0,#1
	BEQ loop1
	CMP R0,#2
	BEQ loop2
	B again

loop1:
	MOV R5,#16
	LDR R1,=zero
	back1:
		LDRB R0,[R1]
		SWI 0x200
		BL delay
		ADD R1,R1,#1
		SUB R5,R5,#1
		CMP R5,#0
		BNE again
loop2:
	MOV R5,#6
	LDR R1,=F
	LDRB R0,[R1]
	SWI 0x200
	BL delay
	SUB R1,R1,#1
	SUB R5,R5,#1
	CMP R5,#0
	BNE loop2
B again

delay:
	MOV R4,#0x64000
	delay_loop:
		SUB R4,R4,#1
		CMP R4,#0
		BGE delay_loop
	MOV PC,LR

.data
zero: .byte 0b11101101
one: .byte 0b01100000
two: .byte 0b11001110
three: .byte 0b11101010
four: .byte 0b01100011
five: .byte 0b10101011
six: .byte 0b10101111
seven: .byte 0b11100000
eight: .byte 0b11101111
nine: .byte 0b11101011
A: .byte 0b11100111
B: .byte  0b11101111
C: .byte 0b10001101
D: .byte 0b11101101
E: .byte 0b10001111
F: .byte 0b10000111

.end


	


