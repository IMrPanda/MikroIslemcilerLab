org 0000h
        sjmp basla
    org 0030h
        basla:
        mov 20h,#00h
		lcall Dyaz
        lcall bekle
        lcall Eyaz
        lcall bekle
        lcall Syaz
        lcall bekle
        ljmp basla
		
	Dyaz:
        mov p0,#00h  ; 11111111 = 00000000 
        mov p1,#7Eh  ; 10000001
        mov p2,#7Eh  ; 10000001
        mov p3,#81h  ; 01111110
        RET

    Eyaz:
        mov p0,#00h  ; 11111111
        mov p1,#76h  ; 10001001
        mov p2,#76h  ; 10001001
        mov p3,#76h  ; 10001001
        RET

    Syaz:
        mov p0,#0Eh  ; 11110001
        mov p1,#6Eh  ; 10010001
        mov p2,#6Eh  ; 10010001
        mov p3,#60h  ; 10011111
        RET

    bekle:
        mov 22h,#05h
        tekrar2:
        mov 21h,#00h
        tekrar:
        mov 20h,#00h
        djnz 20h,$
        djnz 21h,tekrar
        djnz 22h,tekrar2
        RET

    end