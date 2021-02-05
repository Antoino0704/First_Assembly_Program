JMP start
string: DB "1° program in Assembly"			
DB 0

start:
	MOV D, 232
	CALL print
	HLT
	

print:
	PUSH A
	PUSH B
	MOV B, 0
	MOV A, string
loop:
	MOV C, [A]
	MOV [D], C
	INC A
	INC D
	CMP B, [A]
	JNE loop
	POP A
	POP B
	RET
