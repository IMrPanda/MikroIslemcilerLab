;30h ile 4Fh adresleri arasýndaki verilerden 3’ün katlarý olanlarý 
;50h adresinden itibaren kopyalayan ve yeni oluþan dizinin 
;en büyük elemanýnýn 3’ün kaç katý olduðunu 70h adresine kaydeden programý yazýnýz.
;3 e bölünenlerin sayisi 71h da olsun
org 0000h
	sjmp basla
org 0030h
basla:
	MOV 30h, #03h
	MOV 31h, #02h
	MOV 37h, #05h
	MOV 3ah, #30h
	MOV 3fh, #04h


	MOV R0, #30h ; dizinin indisi
	MOV R1, #50h ; hedef dizinin indisi
	
	MOV 71h, #00h ; hedef dizinin boyutu (sayaç)
tekrar:
	MOV A,@R0 ; kaynaktan oku
	MOV B,#03h ; 3 e bölüm
	DIV AB 
	MOV A,B
	JNZ uckatidegil
	;3 e bölünenlerin bölgesi
	MOV A,@R0 ; yeniden oku 
	MOV @R1,A
	INC R1 ; hedef indisi artir
	INC 71h ; sayaci artir
	
uckatidegil:
	INC R0
	CJNE R0, #50h , tekrar 
	
	
;YENI DIZININ EN BÜYÜK ELEMANLARINI BULMA VE 3ÜN KAÇ KATI BULMA	
	MOV 70h, 50h 
	MOV R1, #51h
	MOV R7, 71h
tekrar2:
	MOV A,@R1
	CJNE A,70h, esitdegil
	SJMP dongukontrol 
esitdegil:
	JC dongukontrol ;yeni sayi kücük
	;yeni sayi büyük bölgesi
	MOV 70h , A 
dongukontrol:
	INC R1
	DJNZ R7,tekrar2
	MOV A,70h ;dizinin en büyük elemani
	MOV B,#03h
	DIV AB
	MOV 70h, A 
	
	
	
	END 