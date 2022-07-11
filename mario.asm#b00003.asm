;	keep	o:marASM

VideoReg gequ	$E0C029                  ;Display register
TxtBdr	gequ	$E0C034	;0-3 = border 4-7 Text color

screen	gequ	$12000	;SHR shadow screen

TRUE	gequ	1
FALSE	gequ	0
shapeMask gequ	$007F	;7 bits of shape value are valid
activeMask gequ $0070	;if shape is %x111xxx or higher
;			;it is a special case

maxHorz	gequ	152	;range
maxVert	gequ	186	;maximum line

HInterval gequ 8
VInterval gequ 13

Xoffset	gequ	16	;MUST be mutiple of 4
Yoffset	gequ	20
ScreenWidth gequ 16*8                   ;MUST be multiple of 8
ScreenHeight gequ 13*13

;--- start of C converted code ----------------------------------------------

ISLegal  start
	using	Globals

result   equ   1
Lwidth	equ   3
x1	equ   5
x2	equ   7
y1	equ   9
y2	equ   11
width	equ   13
height	equ   15                  ;all our local stuff

rtn	equ	17
ignore   equ   20
shape    equ   22
y0       equ   24
x0       equ   26

varSpace equ   16
stkAdj	equ	8

         phk
         plb

	tsc
         sec
         sbc   #varSpace                ;local variables
         tcs
	phd
	tcd		;set up DP

         lda   #TRUE
	sta	result	;assume TRUE
;	jsl	GetLevelWidth
;	sta	Lwidth	;get the level width
	pei	shape
	pei	shape
	jsl	GetShapeWidth
	sta	width
	jsl	GetShapeHeight
	sta	height
	lda	ignore
	ora	#$80
	sta	ignore	;must have high bit set

	lda	BgndPnt
	clc
	adc	x0
	tax
	lsr	a
	lsr	a
	lsr	a	;div by HInterval
	sta	x1
	txa
	clc
	adc	width
	dec	a	;x0+width+BgndPnt-1
	lsr	a
	lsr	a
	lsr	a	;div by HInterval
	sta	x2
	
	pei	y0
	jsl	DivBy13
	sta	y1
	lda	height
	dec	a
	clc
	adc	y0
	pha
	jsl	DivBy13
	sta	y2	;get y1 and y2

	ldx	x1
xLoop	ldy	y1

yLoop	txa
	cmp	LevelWidth
;	cpx	Lwidth
	bcs	noGood	;c>=0 && c<LevelWidth
	cpy	#13	;screenwidth/13
	bcs	noGood

	phx
	phy
	phx
	phy		;save 2 copies
	jsl	GetLevelItem	;get what's there
	cmp	#$80
	bcc	noGood2	;must have high bit set

	cmp	ignore
	beq	noGood2
	cmp	#$80+19	;check against coinF
	beq	noGood2
	lda	#FALSE
	sta	result	;migh short circuit this
	ply
	plx
	bra	ISL3end	;short circuit

noGood2	ply
	plx		;restore our counters

noGood	iny
	cpy	y2	;go through Yloop
	beq	yLoop
	bcc	yLoop
	inx
	cpx	x2	;go through xLoop
	beq	xLoop
	bcc	xLoop

ISL3end  lda	rtn+1
	sta	rtn+stkAdj+1
	lda	rtn
	sta	rtn+stkAdj
         ldx   result
         pld
         tsc
         clc
         adc   #varSpace+stkAdj                ;bounce above variables
	tcs
         clc
         txa
	rtl

Colors	dc	i2'$0FF0,$0FF0,$0CA0,$0A70,$0841,$0841,$0A70,$0CA0'
Loc	equ	$E19E06
tmp	ds	2

Cycle	entry
         phk
         plb

	lda	counter	;if (counter&0x2 != (counter+1)&0x2)
	and	#$0003
	beq	CycEnd	;0 is non-valid
	cmp	#$0002	;2 is invalid
	beq	CycEnd
	lda	ColorCycle
	and	#$0007
	asl	a
	tax
	lda	Colors,x	;*Cptr = colors[ColorCycle]
	sta	Loc
	inc	ColorCycle	;++ColorCycle
CycEnd	rtl
	end
