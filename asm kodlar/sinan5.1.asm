org 0000h
sjmp basla
org 0030h

basla:
	mov p0,#0ffh
	mov p2,#0ffh

dongu:
	mov p0,#0ffh
	clr p0.4
	jnb p0.0,bir_bas
	jnb p0.1,iki_bas
	jnb p0.2,uc_bas
	jnb p0.3,dort_bas
	setb p0.4

	clr p0.5
	jnb p0.0,bes_bas
	jnb p0.1,alti_bas
	jnb p0.2,yedi_bas
	jnb p0.3,sekiz_bas
	setb p0.5

	clr p0.6
	jnb p0.0,dokuz_bas
	jnb p0.1,A_bas
	jnb p0.2,B_bas
	jnb p0.3,C_bas
	setb p0.6

	clr p0.7
	jnb p0.0,D_bas
	jnb p0.1,E_bas
	jnb p0.2,F_bas
	jnb p0.3,sifir_bas
	setb p0.7
	
	ljmp dongu

bir_bas:
	mov p3,#0FEh ; 0000 0001 = 1111 1101
	ljmp satir_son
iki_bas:
	mov p3,#0FDh
	ljmp satir_son
uc_bas:
	mov p3,#0FCh
	ljmp satir_son
dort_bas:
	mov p3,#0FBh
	ljmp satir_son
bes_bas:
	mov p3,#0FAh
	ljmp satir_son
alti_bas:
	mov p3,#0F9h
	ljmp satir_son
yedi_bas:
	mov p3,#0F8h
	ljmp satir_son
sekiz_bas:
	mov p3,#0F7h
	ljmp satir_son
dokuz_bas:
	mov p3,#0F6h
	ljmp satir_son
A_bas:
	mov p3,#0F5h ;1111 0101
	ljmp satir_son
B_bas:
	mov p3,#0F4h
	ljmp satir_son
C_bas:
	mov p3,#0F3h
	ljmp satir_son
D_bas:
	mov p3,#0F2h
	ljmp satir_son
E_bas:
	mov p3,#0F1h
	ljmp satir_son
F_bas:
	mov p3,#0F0h
	ljmp satir_son
sifir_bas:
	mov p3,#0FFh
	ljmp satir_son
	
satir_son:
	ljmp dongu

	end