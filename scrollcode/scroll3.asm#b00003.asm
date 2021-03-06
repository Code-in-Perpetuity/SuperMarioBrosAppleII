         keep  "..:o:scroll"

maxHorz	gequ	152	;range
maxVert	gequ	186	;maximum line

HInterval gequ 8
VInterval gequ 13

Xoffset	gequ	16	;MUST be mutiple of 4
Yoffset	gequ	20
ScreenWidth gequ 16*8                   ;MUST be multiple of 8
ScreenHeight gequ 13*13

;-------------------------------------------------------------------------
;
; ScrollR
;
; This routine will scroll the defines screen N bytes to the left
; The screen is just moved, no updating is performed.
;
; Note: When called, Scroll takes N bytes from beyond the defined area
;
; void ScrollR(int N)
;
; Since we are scrolling to the left, we can't use PEIs as they would
; write over themselves as it scroll (work right to left)
;
; Instead we need to do a tight unrolled loop using the DP
; I think that if I did a bit more work at the beginning and made
; sure that the DP was page aligned I could speed up the scroll
;
; Changes this to use register caching and save 1 cycle/word since I
; can now use pha/x/y instal of pla
;-------------------------------------------------------------------------

ScrollR start
         using Globals

N	equ	4
rtn	equ	0
stkadj	equ	2

	lda	N,s
         bne   Goon1
         pha
         jsl   ScrollL                  ;fast 0 pixel scroll
         brl   sExit
Goon1	cmp	#5
	bcc	Sl_OK	;keep it legal
	brl	sExit
	
Sl_OK	dec   a
         asl   a
         asl   a
         asl   a
         sta	NVal 	;save the value as a mask
	phd           	;save the DP

	lda	#Xoffset+(Yoffset*160)+8192+ScreenWidth-1 ;starting point
         sta   SPdest                   ;for the Stack

         lda   #Yoffset                 ;this is the line to start on
         sta   count

sLoop	anop
         lda   count
         asl   a
         tax
         lda   DPTable,x                 ;find appropriate DP
         tcd
         lda   count
         and   #$0007
         ora   NVal
         asl   a                        ;comput into the jump table
         tax
         jsr   (JTbl,x)                 ;jump to routine
         lda   SPdest
         clc
         adc   #160
         sta   SPdest                   ;update SP position
         inc   count
         lda   count
         cmp   #Yoffset+ScreenHeight+1
	bcc   sLoop

	pld  		;restore DP
sExit	lda	rtn+2,s
	sta	N,s
	lda	rtn,s
	sta	rtn+2,s
	tsc
	clc
	adc	#stkadj
	tcs

         clc
	lda	#0
         rtl

JTbl     dc    i2'c1a,c2a,c3a,c4a,c5a,c6a,c7a,c8a'
         dc    i2'c1b,c2b,c3b,c4b,c5b,c6b,c7b,c8b'
         dc    i2'c1c,c2c,c3c,c4c,c5c,c6c,c7c,c8c'
         dc    i2'c1d,c2d,c3d,c4d,c5d,c6d,c7d,c8d'

DPTable  dc    i2'$2000,$2100,$2100,$2200,$2300,$2300,$2400,$2400'
         dc    i2'$2500,$2600,$2600,$2700,$2800,$2800,$2900,$2900'
         dc    i2'$2A00,$2B00,$2B00,$2C00,$2D00,$2D00,$2E00,$2E00'
         dc    i2'$2F00,$3000,$3000,$3100,$3200,$3200,$3300,$3300'
         dc    i2'$3400,$3500,$3500,$3600,$3700,$3700,$3800,$3800'
         dc    i2'$3900,$3A00,$3A00,$3B00,$3C00,$3C00,$3D00,$3D00'
         dc    i2'$3E00,$3F00,$3F00,$4000,$4100,$4100,$4200,$4200'
         dc    i2'$4300,$4400,$4400,$4500,$4600,$4600,$4700,$4700'
         dc    i2'$4800,$4900,$4900,$4A00,$4B00,$4B00,$4C00,$4C00'
         dc    i2'$4D00,$4E00,$4E00,$4F00,$5000,$5000,$5100,$5100'
         dc    i2'$5200,$5300,$5300,$5400,$5500,$5500,$5600,$5600'
         dc    i2'$5700,$5800,$5800,$5900,$5A00,$5A00,$5B00,$5B00'
         dc    i2'$5C00,$5D00,$5D00,$5E00,$5F00,$5F00,$6000,$6000'
         dc    i2'$6100,$6200,$6200,$6300,$6400,$6400,$6500,$6500'
         dc    i2'$6600,$6700,$6700,$6800,$6900,$6900,$6A00,$6A00'
         dc    i2'$6B00,$6C00,$6C00,$6D00,$6E00,$6E00,$6F00,$6F00'
         dc    i2'$7000,$7100,$7100,$7200,$7300,$7300,$7400,$7400'
         dc    i2'$7500,$7600,$7600,$7700,$7800,$7800,$7900,$7900'
         dc    i2'$7A00,$7B00,$7B00,$7C00,$7D00,$7D00,$7E00,$7E00'
         dc    i2'$7F00,$8000,$8000,$8100,$8200,$8200,$8300,$8300'
         dc    i2'$8400,$8500,$8500,$8600,$8700,$8700,$8800,$8800'
         dc    i2'$8900,$8A00,$8A00,$8B00,$8C00,$8C00,$8D00,$8D00'
         dc    i2'$8E00,$8F00,$8F00,$9000,$9100,$9100,$9200,$9200'
         dc    i2'$9300,$9400,$9400,$9500,$9600,$9600,$9700,$9700'
         dc    i2'$9800,$9900,$9900,$9A00,$9B00,$9B00,$9C00,$9C00'

count    ds    2
Nval	ds	2
SPdest   ds    2
SP	ds	2

c1a      anop
         copy  case1a
c2a      anop
         copy  case2a
c3a      anop
         copy  case3a
c4a      anop
         copy  case4a
c5a      anop
         copy  case5a
c6a      anop
         copy  case6a
c7a      anop
         copy  case7a
c8a      anop
         copy  case8a
c1b      anop
         copy  case1b
c2b      anop
         copy  case2b
c3b      anop
         copy  case3b
c4b      anop
         copy  case4b
c5b      anop
         copy  case5b
c6b      anop
         copy  case6b
c7b      anop
         copy  case7b
c8b      anop
         copy  case8b
c1c      anop
         copy  case1c
c2c      anop
         copy  case2c
c3c      anop
         copy  case3c
c4c      anop
         copy  case4c
c5c      anop
         copy  case5c
c6c      anop        
         copy  case6c
c7c      anop
         copy  case7c
c8c      anop
         copy  case8c
c1d      anop
         copy  case1d
c2d      anop
         copy  case2d
c3d      anop
         copy  case3d
c4d      anop
         copy  case4d
c5d      anop
         copy  case5d
c6d      anop
         copy  case6d
c7d      anop
         copy  case7d
c8d      anop
         copy  case8d
	end
;-------------------------------------------------------------------------
;
; ScrollR2
;
; This routine will scroll the defines screen N bytes to the left
; The screen is just moved, no updating is performed.
;
; Note: When called, Scroll takes N bytes from beyond the defined area
;
; void ScrollR2(int N)
;
; Since we are scrolling to the left, we can't use PEIs as they would
; write over themselves as it scroll (work right to left)
;
; Instead we need to do a tight unrolled loop using the DP
; I think that if I did a bit more work at the beginning and made
; sure that the DP was page aligned I could speed up the scroll
;
;-------------------------------------------------------------------------

ScrollR2 start
         using Globals

N	equ	4
rtn	equ	0
stkadj	equ	2

	lda	N,s
	cmp	#5
	bcc	Sl_OK	;keep it legal
	brl	sExit
	
Sl_OK	dec   a
         sta	NVal 	;save the value

	sei		;disable interrupts
	phd           	;save the DP
	tsc
	sta	SP	;save the SP

	Lda   >$E1C068 	;put the DP & stack in Bank $01
	Ora   #$30
	Sta   >$E1C068

	lda	#Xoffset+(Yoffset*160)+8192 ;starting point
	tcd		;for the DP
	clc
	adc	Nval
	tcs		;set the SP

	ldy	#ScreenHeight-7	;need to do this many lines

sLoop	pla
	sta	<$00
	pla
	sta	<$02
	pla
	sta	<$04
	pla
	sta	<$06
	pla
	sta	<$08
	pla
	sta	<$0A
	pla
	sta	<$0C
	pla
	sta	<$0E
	pla
	sta	<$10
	pla
	sta	<$12
	pla
	sta	<$14
	pla
	sta	<$16
	pla
	sta	<$18
	pla
	sta	<$1A
	pla
	sta	<$1C
	pla
	sta	<$1E
	pla
	sta	<$20
	pla
	sta	<$22
	pla
	sta	<$24
	pla
	sta	<$26
	pla
	sta	<$28
	pla
	sta	<$2A
	pla
	sta	<$2C
	pla
	sta	<$2E
	pla
	sta	<$30
	pla
	sta	<$32
	pla
	sta	<$34
	pla
	sta	<$36
	pla
	sta	<$38
	pla
	sta	<$3A
	pla
	sta	<$3C
	pla
	sta	<$3E
	pla
	sta	<$40
	pla
	sta	<$42
	pla
	sta	<$44
	pla
	sta	<$46
	pla
	sta	<$48
	pla
	sta	<$4A
	pla
	sta	<$4C
	pla
	sta	<$4E
	pla
	sta	<$50
	pla
	sta	<$52
	pla
	sta	<$54
	pla
	sta	<$56
	pla
	sta	<$58
	pla
	sta	<$5A
	pla
	sta	<$5C
	pla
	sta	<$5E
	pla
	sta	<$60
	pla
	sta	<$62
	pla
	sta	<$64
	pla
	sta	<$66
	pla
	sta	<$68
	pla
	sta	<$6A
	pla
	sta	<$6C
	pla
	sta	<$6E
	pla
	sta	<$70
	pla
	sta	<$72
	pla
	sta	<$74
	pla
	sta	<$76
	pla
	sta	<$78
	pla
	sta	<$7A
	pla
	sta	<$7C
	pla
	sta	<$7E

	tdc
	clc
	adc	#160
	tcd		;go to next line
	clc
	adc	Nval
	tcs		;set SP
	dey
	beq	sEnd 	;if done, end
	brl	sLoop

sEnd	Lda   >$E1C068 	;put them back in bank $00
	And   #$FFCF
	Sta   >$E1C068

	lda	SP
	tcs		;restore SP
	pld  		;restore DP

	cli		;re-enable interrupts

sExit	lda	rtn+2,s
	sta	N,s
	lda	rtn,s
	sta	rtn+2,s
	tsc
	clc
	adc	#stkadj
	tcs

         clc
	lda	#0
         rtl

Nval	ds	2
SP	ds	2
	end

;-------------------------------------------------------------------------
;
; ScrollL
;
; Scroll the screen to the left
;
;-------------------------------------------------------------------------
ScrollL start
         using Globals

N	equ	4
rtn	equ	0
stkadj	equ	2

	lda	N,s
	cmp	#5
	bcc	Sl_OK	;keep it legal
	brl	sExit
	
Sl_OK	sta	Nval 	;save the value

	phd           	;save the DP
	
	lda	#Xoffset+(Yoffset*160)+8192 ;starting point
         tax
         sec
         sbc   Nval
	tcd		;for the DP

	ldy	#ScreenHeight-7	;need to do this many lines

uLoop	jsr   ScanLine
         tdc
	clc
	adc	#160
	tcd		;go to next line
	dey
	bne   uLoop

	pld  		;restore DP
sExit	lda	rtn+2,s
	sta	N,s
	lda	rtn,s
	sta	rtn+2,s
	tsc
	clc
	adc	#stkadj
	tcs

	clc
	lda	#0
         rtl

ScanLine anop

	sei		;disable interrupts
	tsc
	sta	StackPtr	;and save the stack

         tdc
         clc
	adc	#(ScreenWidth)-1	;go over WIDTH-1 bytes
	adc	Nval	;and back Nval
	tcs		;set the Stack

	Lda   >$E1C068 	;put the DP & stack in Bank $01
	Ora   #$30
	Sta   >$E1C068

	pei	$7E	;here's the long, boring,
	pei	$7C	;but REALLY fast code
	pei	$7A
	pei	$78
	pei	$76
	pei	$74
	pei	$72
	pei	$70
	pei	$6E
	pei	$6C
	pei	$6A
	pei	$68
	pei	$66
         nop
	pei	$64
	pei	$62
	pei	$60
	pei	$5E
	pei	$5C
	pei	$5A
	pei	$58
	pei	$56
	pei	$54
	pei	$52
	pei	$50
	pei	$4E
	pei	$4C
         nop
	pei	$4A
	pei	$48
	pei	$46
	pei	$44
	pei	$42
	pei	$40
	pei	$3E
	pei	$3C
	pei	$3A
	pei	$38
	pei	$36
	pei	$34
	pei	$32
         nop
	pei	$30
	pei	$2E
	pei	$2C
	pei	$2A
	pei	$28
	pei	$26
	pei	$24
	pei	$22
	pei	$20
	pei	$1E
	pei	$1C
	pei	$1A
	pei	$18
         nop
	pei	$16
	pei	$14
	pei	$12
	pei	$10
	pei	$0E
	pei	$0C
	pei	$0A
	pei	$08
	pei	$06
	pei	$04
	pei	$02
	pei	$00	;there, done with a line

	Lda   >$E1C068 	;put them bank in bank $00
	And   #$FFCF
	Sta   >$E1C068

	lda	StackPtr	;restore stack pointer
	tcs
	cli		;re-enable interrupts

         rts

StackPtr	ds	2	;space to save the SP
Nval	ds	2
	end
