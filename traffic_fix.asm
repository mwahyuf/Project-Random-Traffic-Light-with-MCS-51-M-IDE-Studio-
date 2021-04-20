; Muhammad Wahyu Fadli
; 09011381823086
; Traffic Light
;	
		org	00h
		mov	A,#00h
		mov	P0,#00h
		mov	P2,#00h
		mov	P3,#00h
		;
hitung_1:	mov	P1,#6Dh
		LCALL	TUNDA
		mov	P1,#66h
		LCALL	TUNDA
		mov	P1,#4Fh
		LCALL	TUNDA
		mov	P1,#5Bh
		LCALL	TUNDA
		mov	P1,#06h
		LCALL	TUNDA
		mov	P1,#3Fh
		LCALL	TUNDA
		;
mulai_1:	mov	A,#01h
		mov	P0,A
		LCALL	TUNDA
		;
timur_1:	RL	A
		mov	P0,A
		LCALL	TUNDA
		CJNE	A,#04h,timur_1
		;
mulai_2:	mov	A,#01h
		mov	P2,A
		LCALL	TUNDA
		;
barat_1:	RL	A
		mov	P2,A
		LCALL	TUNDA
		CJNE	A,#04h,barat_1
		;
mulai_3:	mov	A,#01h
		mov	P3,A
		LCALL	TUNDA
		;
selatan_1:	mov	P3,A
		LCALL	TUNDA
		;
mulai_4:	mov	B,#80h
		mov	A,B
		mov	P0,A
		LCALL	TUNDA
		;
utara_1:	mov	P0,A
		LCALL	TUNDA
		;
hitung_2:	mov	P1,#6Dh
		LCALL	TUNDA
		mov	P1,#66h
		LCALL	TUNDA
		mov	P1,#4Fh
		LCALL	TUNDA
		mov	P1,#5Bh
		LCALL	TUNDA
		mov	P1,#06h
		LCALL	TUNDA
		mov	P1,#3Fh
		LCALL	TUNDA
		;
mulai_5:	mov	A,#01h
		mov	P0,A
		LCALL	TUNDA
		;
timur_2:	mov	P0,A
		LCALL	TUNDA
		;
barat_2:	mov	P2,A
		LCALL	TUNDA
		;
mulai_6:	mov	A,#01h
		mov	P3,A
		LCALL	TUNDA
		;
selatan_2:	RL	A
		mov	P3,A
		LCALL	TUNDA
		CJNE	A,#04h,selatan_2
		;
mulai_7:	mov	B,#80h
		mov	A,B
		mov	P0,A
		LCALL	TUNDA
		;
utara_2:	RR	A
		mov	P0,A
		LCALL	TUNDA
		CJNE	A,#20h,utara_2
		;
		ajmp	hitung_1
		;
TUNDA:		mov	R0,#20h
TUND:		DJNZ	R1,TUND
		DJNZ	R2,TUND
		DJNZ	R0,TUND
		RET
		END