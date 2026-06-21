ORG 0000h

MAIN:
    MOV P0, #92h    ; 1001 0010
    MOV P1, #08h    ; 0000 1000
    ACALL DELAY

    MOV P0, #99h   ; 1001 1001
    MOV P1, #04h   ; 0000 0100
    ACALL DELAY
	
	
    MOV P0, #0B0h  ; 1011 0000
    MOV P1, #02h   ; 0000 0010
    ACALL DELAY

    MOV P0, #0A4h   ; 1010 0100
    MOV P1, #01h    ; 0000 0001
    ACALL DELAY

    SJMP MAIN


DELAY:
    MOV R7, #01h
TEKRAR:
	MOV R6,#0FFH
	DJNZ R6,$
	DJNZ R7,TEKRAR
    RET

END
