;20h ile 39h araliginda (ilk ve son dahil) yerlestirilmis bir dizide ,
;verileri tek tek kontrol edip,
;a , çift ise verinin yarisini 40h adresinden ittibaren yeni diziye yerlestirme,
;sarti saglayanlarin sayisini de 60h adresine yazan
;b, tek olanlarin en büyügünü 61h adresine , bulunan en büyügü
;(ilk veya son bulunan en büyük tercihi size kalmis) adresini de
;62h adresine yazan programi yazin. 


	org 0000h
	sjmp basla
	org 0030h
basla:

	MOV 20H,#00H
	MOV 21H,#02H
	MOV 22H,#05H
	MOV 23H,#06H
	MOV 24H,#25H
	MOV 25H,#06H
	MOV 26H,#06H
	MOV 27H,#05H
	MOV 28H,#06H
	MOV 31H,#06H
	MOV 32H,#08H
	MOV 33H,#08H
	MOV 34H,#05H
	MOV 35H,#18H
	MOV 36H,#08H
	MOV 37H,#16H
	MOV 38H,#06H
	MOV 39H,#25H
	
	MOV 61H,#01H ;enbüyük tek eleman kabul ettim
	MOV R0,#20H  ;dizi indisi
	MOV R1,#40H  ;çift dizi indisi
	MOV 60H,#00H ;çifteleme sayaci
tekrar:
	MOV A, @R0 ;diziden oku
	JB ACC.0 , sayitek
	;sayi çift bölgesi
	RR A ;sayiyi 2 ye böldüm
	MOV @R1 , A ;hedefe aktardim
	INC R1
	INC 60H
	SJMP dongukontrol
sayitek:
	;tek sayi bölgesi
	CJNE A,61H,esitdegil
	SJMP dongukontrol
esitdegil:
	;; MOV 62H,R0 sonraki adresi yazar
	JC dongukontrol ;yeni sayi küçük degistirme
	;yeni sayi büyük bölgesi
	MOV 61H,A ; yeni en büyügü atadim
	MOV 62H,R0 ;adresini yazdim
dongukontrol:
	INC R0
	CJNE R0,#3AH,tekrar
	
END