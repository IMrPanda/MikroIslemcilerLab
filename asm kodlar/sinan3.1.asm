ORG 0000H
    SJMP BASLA

ORG 0030H
BASLA:
    MOV P0, #92H; 1001 0010 = 5 rakamini yakar 
    MOV P1, #0AH ; 0000 1010 = 1 ve 3.segmenti yakar

DUR:
    SJMP DUR

END