	org 00h
	sjmp basla
	org 30h
basla:
	mov r0,#80h
	mov A, #5
	MOV R1,#5
	ADD A,R1 ; A=A+R1
	MOV 80H,A ;DOGRUDAN
	MOV @R0,A ;DOLAYLI
	INC A
	INC R0
	MOV @R0,A
	
	END