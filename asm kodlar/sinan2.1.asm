org 0000h
	sjmp basla
org 0030h
	
	basla: 
		mov p0,#0ffh 
		mov p2, #05h ;grup 5 , 00000101 yakmak için
	dongu:
		jb p0.0, $
				mov a,p2
				cpl a
				mov p2,a
		jnb p0.0, $ 
		ljmp dongu
		
	end 