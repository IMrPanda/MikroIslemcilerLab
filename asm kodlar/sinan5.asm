org 0000h
    sjmp basla

org 0030h
basla:
    mov p0,#0ffh
    mov p3,#00h

dongu:
    mov p0,#0f0h
    mov p1,#00h


    mov p0,#0ffh
    clr p0.4
    jnb p0.0,bir_bas
    jnb p0.1,iki_bas
    jnb p0.2,uc_bas
    jnb p0.3,A_bas
    setb p0.4
    ljmp satir2_basi

bir_bas:
    mov p3,#01h
    ljmp satir1_son

iki_bas:
    mov p3,#02h
    ljmp satir1_son

uc_bas:
    mov p3,#03h
    ljmp satir1_son

A_bas:
    mov p3,#0Ah
    ljmp satir1_son

satir1_son:
    setb p0.4

satir2_basi:
    mov p0,#0ffh
    clr p0.5
    jnb p0.0,dort_bas
    jnb p0.1,bes_bas
    jnb p0.2,alti_bas
    jnb p0.3,B_bas
    setb p0.5
    ljmp satir3_basi

dort_bas:
    mov p3,#04h
    ljmp satir2_son

bes_bas:
    mov p3,#05h
	ljmp satir2_son

alti_bas:
	mov p3,#06h
	ljmp satir2_son

B_bas:
	mov p3,#0Bh
	ljmp satir2_son
satir2_son:
    setb p0.5

satir3_basi:
;3. satiri enable et
    mov p0,#0ffh
    clr p0.6
    jnb p0.0,yedi_bas
    jnb p0.1,sekiz_bas
    jnb p0.2,dokuz_bas
    jnb p0.3,C_bas
    setb p0.6
    

yedi_bas:
    mov p3,#07h
    ljmp satir3_son

sekiz_bas:
    mov p3,#08h
    ljmp satir3_son

dokuz_bas:
    mov p3,#09h
    ljmp satir3_son

C_bas:
    mov p3,#0Ch
    ljmp satir3_son

satir3_son:
    setb p0.6

END