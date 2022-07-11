;
; This file contains all the low-level routines
; for implementing super mario bros.
;
; it is NOT size dependent
;
; This is the modifed version to handle full-screen 16x13 blocks
;
; A second revision starting Apr. 1 will create a more generic
; and MUCH faster graphics engine.  There will be two classes of shapes
; background and active.  Background shapes can be drawn in bank 1 only and
; active shapes will be in bank E1.  The screen will really scroll
;
;
	mcopy	Mario.macs
         keep  o:graphics

VideoReg gequ	$E0C029                  ;Display register
TxtBdr	gequ	$E0C034	;0-3 = border 4-7 Text color

screen	gequ	$12000	;SHR shadow screen

TRUE	gequ	1
FALSE	gequ	0
shapeMask gequ	$007F	;7 bits of shape value are valid
;			;it is a special case

maxHorz	gequ	152	;range
maxVert	gequ	186	;maximum line

HInterval gequ 8
VInterval gequ 13

Xoffset	gequ	16	;MUST be mutiple of 4
Yoffset	gequ	20
ScreenWidth gequ 16*8                   ;MUST be multiple of 8
ScreenHeight gequ 13*13

maxObjects gequ  32                     ;same as in mario.h

;-------------------------------------------------------------------------
;
; int GetShapeHeight(int)
;
; Gets the shape's height
;
;-------------------------------------------------------------------------
GetShapeHeight start
         using Vectors

shape    equ   4
rtn      equ   0
stkAdj   equ   2

         phk
         plb

         lda   shape,s
         cmp   maxUser                  ;is it a legal shape?
         bcs   GSHexit
         dec   a
         asl   a
         asl   a
         tax
         lda   UserVect,x
         sta   vect+1
         lda   UserVect+1,x
         sta   vect+2
         ldx   #2
vect     lda   >$000000,x
         tax

GSHexit  lda   rtn+2,s
         sta   stkAdj+2,s
         lda   rtn,s
         sta   stkAdj,s

         tsc
         clc
         adc   #stkAdj
         tcs

         txa
         clc
         rtl

         end

GetShapeWidth start
         using Vectors

shape    equ   4
rtn      equ   0
stkAdj   equ   2

         phk
         plb

         lda   shape,s
         cmp   maxUser                  ;is it a legal shape?
         bcs   GSWexit
         dec   a
         asl   a
         asl   a
         tax
         lda   UserVect,x
         sta   vect+1
         lda   UserVect+1,x
         sta   vect+2
         ldx   #4
vect     lda   >$000000,x
         tax

GSWexit  lda   rtn+2,s
         sta   stkAdj+2,s
         lda   rtn,s
         sta   stkAdj,s

         tsc
         clc
         adc   #stkAdj
         tcs
               
         txa
         clc
         rtl

         end

;--- InitializeLevel ------------------------------
;
;  This takes an address and fills in the level
;  with the data there.  No check is made on the
;  validity of the data, just a blind data dump
;
;  void InitializeLevel(pointer data)
;
;--------------------------------------------------

InitLevel start
         using Globals

         sub   (4:Ptr,2:width)

         phk
         plb

         lda   Ptr
         ldx   Ptr+2
         sta   LevelPtr
         stx   LevelPtr+2               ;set the levelPtr to a valid map

         lda   width
         sta   LevelWidth               ;default for the built in map
         stz   MultTable                ; x0
         sta   MultTable+2              ; x1
         clc
         adc   MultTable+2              ; x2
         sta   MultTable+4
         clc
         adc   MultTable+2              ; x3
         sta   MultTable+6
         clc              
         adc   MultTable+2              ; x4
         sta   MultTable+8
         clc              
         adc   MultTable+2              ; x5
         sta   MultTable+10
         clc              
         adc   MultTable+2              ; x6
         sta   MultTable+12
         clc              
         adc   MultTable+2              ; x7
         sta   MultTable+14
         clc              
         adc   MultTable+2              ; x8
         sta   MultTable+16
         clc              
         adc   MultTable+2              ; x9
         sta   MultTable+18
         clc              
         adc   MultTable+2              ; x10
         sta   MultTable+20
         clc              
         adc   MultTable+2              ; x11
         sta   MultTable+22
         clc              
         adc   MultTable+2              ; x12
         sta   MultTable+24
                          
         ret
         end


;--- FastDivide -----------------------------------
;                                                 =
;  This routine divides two signed 16-bit numbers =
;  and returns a signed 16-bit number             =
;                                                 =
;  Acc= Dividen                                   =
; X-reg = Divisor    A divided by X               =
;                                                 =
;--------------------------------------------------

FastDivide start

	phb
	phk
	plb
	
	sta	Dividen

	txa		;get divisor
	sta	Divisor

	lda	Dividen                  ;check for zeros
	cmp	#0
	bne	FD002	;if dividen = 0 then answer
	stz	Answer                   ;is 0 no matter what
	ldy	#0	;and remainder is 0
	bra	FD020

FD002	lda	#0
	ldx	#16	;16 bits
FD005	rol	Dividen
	rol	a	;put bit in acc.
	cmp	Divisor
	bcc	FD010	;less than divisor
	rol	Answer	;roll 1 into answer
	sec
	sbc	Divisor	;subtract from running total
	bra	FD015
FD010	rol	Answer	;roll 0 into answer
FD015	dex
	bne	FD005	;go back if not done
	tay		;put remainder in y-reg

FD020	anop
FD025	lda	Answer	;get the answer
	plb
FD040	rtl

Divisor	ds	2
Dividen	ds	2
Answer	ds	2
	end

;-------------------------------------------------------------------
;
; DivBy13
;
; Divides an 8-bit number by 13
;
;-------------------------------------------------------------------

DivBy13 start
Val	equ	4
rtn	equ	1
Adj	equ	2

         phk
         plb

         lda   Val,s                      ;delete this stuff
         and   #$00FF
         tax
         lda   Div13Array,x
         and   #$00FF
         tax
         lda   rtn+1,s
         sta   rtn+1+Adj,s
         lda   rtn,s
         sta   rtn+Adj,s
         tsc
         clc
         adc   #Adj
         tcs
         clc
         txa
         rtl
Div13Array dc  i1'0,0,0,0,0,0,0,0,0,0,0,0,0'
         dc    i1'1,1,1,1,1,1,1,1,1,1,1,1,1'
         dc    i1'2,2,2,2,2,2,2,2,2,2,2,2,2'
         dc    i1'3,3,3,3,3,3,3,3,3,3,3,3,3'
         dc    i1'4,4,4,4,4,4,4,4,4,4,4,4,4'
         dc    i1'5,5,5,5,5,5,5,5,5,5,5,5,5'
         dc    i1'6,6,6,6,6,6,6,6,6,6,6,6,6'
         dc    i1'7,7,7,7,7,7,7,7,7,7,7,7,7'
         dc    i1'8,8,8,8,8,8,8,8,8,8,8,8,8'
         dc    i1'9,9,9,9,9,9,9,9,9,9,9,9,9'
         dc    i1'10,10,10,10,10,10,10,10,10,10,10,10,10'
         dc    i1'11,11,11,11,11,11,11,11,11,11,11,11,11'
         dc    i1'12,12,12,12,12,12,12,12,12,12,12,12,12'
         dc    i1'13,13,13,13,13,13,13,13,13,13,13,13,13'
         dc    i1'14,14,14,14,14,14,14,14,14,14,14,14,14'
         dc    i1'15,15,15,15,15,15,15,15,15,15,15,15,15'
         dc    i1'16,16,16,16,16,16,16,16,16,16,16,16,16'
         dc    i1'17,17,17,17,17,17,17,17,17,17,17,17,17'
         dc    i1'18,18,18,18,18,18,18,18,18,18,18,18,18'
         dc    i1'19,19,19,19,19,19,19,19,19,19,19,19,19'
         dc    i1'20,20,20,20,20,20,20,20,20,20'
         end


;--------------------------------------------------------------------
; Pnt2Map - converts an XY pair to their cooresponding position on the
;           level map
;
;           X-reg = X-cord; on exit = Xpos
;           Y-reg = Y-cord; on exit = Ypos
;-------------------------------------------------------------------
Pnt2Map	start
	using Globals
         phk
         plb

	txa
	clc
	adc	BgndPnt	;offset into the level
	lsr	a
	lsr	a
	lsr	a	;divide by 8 for X
	tax
	phx

         phy
         jsl   DivBy13
	tay
	plx
	rtl
	end

;-------------------------------------------------------------------------
;
;  MarioInit
;
;  initializes everything:  Tools, memory, screen, etc.
;
;-------------------------------------------------------------------------

MarioInit start
         using	Globals
OK2	rtl
         end

;--------------------------------------------------------
;
; MarioShutDown
;
; This shuts down all the tools and disposes
; of all the memory we have allocated.
;
;--------------------------------------------------------

MarioShutDown start
         using	Globals

         phk
         plb

	short m               	;turn off Super Hi-res

	lda	$E0C029
	and	#$7F
	sta	$E0C029
	lda	TxtBdr	;reset border
	and	#$0F
         ora   BorderCol
	sta	TxtBdr

	long m
         clc
         lda   #0
	rtl
	end

;--------------------------------------------------------
;
; InitScreen
;
; Set up the SHR screen for use.  All pallettes, backdrops,
; objects, etc. should be set up here.
;
;--------------------------------------------------------

InitScreen start
	using	Globals

         phk
         plb

	jsl	Shadow_On 	;turn on shadowing

	short m               	;turn on Super Hi-res
	lda	VideoReg
	ora	#$C1
	sta	VideoReg
	
         lda	TxtBdr	;set border to black
         sta   BorderCol
	and	#$F0
	sta	TxtBdr
	long m

	ldx	#$7dFE	;buffer size
	lda	#$0000
scrn0	sta	screen,x	;begin blanking
	dex
	dex
         cpx   #$7d00
	bcs	scrn0	;is the screen black?

	ldx	#$7cFE	;buffer size
	lda	#$1111
scrn1	sta	screen,x	;begin blanking
	dex
	dex
	bpl	scrn1	;is the screen black?

         ldx   #30
scrn2    lda   palette,x
         sta   screen+$7E00,x
         dex
         dex
         bpl   scrn2

         ldx   #30
         lda   #0
scrn3    sta   screen+$7E20,x           ;make palette 1 all black
         dex
         dex
         bpl   scrn3
         lda   #$fff
         sta   screen+$7E3E             ;set color 15 = white

         short m                        ;8-bit acc.
         lda   #1
         ldx   #0                       ;set unused lines to palette 1 to
scrn4    cpx   #Yoffset                 ;simulate cliping
         bcs   doBottom
         sta   screen+$7D00,x           ;set a SCB
         inx
         bra   scrn4

doBottom long  m
         lda   #Yoffset
         clc
         adc   #ScreenHeight-7
         tax

         short m
         lda   #1
scrn5    cpx   #200
         bcs   scrn6
         sta   screen+$7D00,x
         inx
         bra   scrn5

scrn6    long  m
         jsl   Shadow_Off
	rtl
	end

ClearScreen start
         phk
         plb

	ldx	#Xoffset+(Yoffset*160)   ;starting point
	ldy	#ScreenHeight-7	;need to do this many lines

CSLoop   lda   #$1111                    ;clear to black always
         sta   screen,x
         sta   screen+2,x
         sta   screen+4,x
         sta   screen+6,x
         sta   screen+8,x
         sta   screen+10,x
         sta   screen+12,x
         sta   screen+14,x
         sta   screen+16,x
         sta   screen+18,x
         sta   screen+20,x
         sta   screen+22,x
         sta   screen+24,x
         sta   screen+26,x
         sta   screen+28,x
         sta   screen+30,x
         sta   screen+32,x
         sta   screen+34,x
         sta   screen+36,x
         sta   screen+38,x
         sta   screen+40,x
         sta   screen+42,x
         sta   screen+44,x
         sta   screen+46,x
         sta   screen+48,x
         sta   screen+50,x
         sta   screen+52,x
         sta   screen+54,x
         sta   screen+56,x
         sta   screen+58,x
         sta   screen+60,x
         sta   screen+62,x
         sta   screen+64,x
         sta   screen+66,x
         sta   screen+68,x
         sta   screen+70,x
         sta   screen+72,x
         sta   screen+74,x
         sta   screen+76,x
         sta   screen+78,x
         sta   screen+80,x
         sta   screen+82,x
         sta   screen+84,x
         sta   screen+86,x
         sta   screen+88,x
         sta   screen+90,x
         sta   screen+92,x
         sta   screen+94,x
         sta   screen+96,x
         sta   screen+98,x
         sta   screen+100,x
         sta   screen+102,x
         sta   screen+104,x
         sta   screen+106,x
         sta   screen+108,x
         sta   screen+110,x
         sta   screen+112,x
         sta   screen+114,x
         sta   screen+116,x
         sta   screen+118,x
         sta   screen+120,x
         sta   screen+122,x
         sta   screen+124,x
         sta   screen+126,x
         txa
	clc
	adc	#160
         tax
	dey
         beq   CSEnd
	brl	CSLoop 	;if done, end

CSEnd    rtl
         end
                 
;-------------------------------------------------------------------------
;
; SetBgndPnt(int pnt)
;
; Sets the BgndPnt to a particular value
;
;-------------------------------------------------------------------------

SetBgndPnt start
	using Globals

val	equ	4
stkPtr	equ	0
stkAdj	equ	2

         phk
         plb

	lda	val,s
	sta	BgndPnt

	tay
	and	#$0007                   ;---Sensitive
	sta	shiftVal	;number of points to shift
	tya
	and	#$FFF8                   ;---Sensitive
	lsr	a                        ;---Sensitive
	lsr	a                        ; divide by 8 (save as above)
	lsr	a
	sta	indexVal	;the index into Level

SBPEnd	lda	stkPtr+2,s
	sta	stkAdj+2,s
	lda	stkPtr,s
	sta	stkAdj,s

	tsc
	clc
	adc	#stkadj
	tcs
	
	clc
	lda	#0

	rtl

	end

;-------------------------------------------------------------------------
;
; ContRec ReadControl(void)
;
; reads the control
;
;-------------------------------------------------------------------------

ReadControl	start

KeyBrd   equ   $E0C000
ModReg	equ	$E0C025
Strobe	equ	$E0C010
Button1	equ	$E0C061	;'A' button
Button2	equ	$E0C062	;'B' button
up	equ	56
down	equ	53
left	equ	52
right	equ	54
null	equ	0

         phk
         plb

	stz	buttonA
	stz	buttonB
	
	lda	Button2
	and	#$0080
	beq	BnotDown
	lda	#1
	sta	buttonB

BnotDown	lda	Button1
	and	#$0080
	beq	AnotDown
	lda	#1
	sta	buttonA

AnotDown	lda	#null
	sta	direction
	
	lda	Strobe	;read the keyboard
;         lda   KeyBrd
	tax
	and	#$0080
	beq	KbdNotDwn
         lda   KeyBrd                   ;*** NEW
	and	#$007f
	sta	direction	;let the program handle errors

KbdNotDwn lda	Record
	ldx	Record+2

	clc
	rtl
Record	dc	a4'direction'	;address of the record
direction ds	2
buttonA	ds	2
buttonB	ds	2
	end

;-------------------------------------------------------------------------
;
; void FillList
;
; takes a shape, puts its x and y range of blocks in a table to be passed
; to DrawBkgnd in FixBkgnd
;
;-------------------------------------------------------------------------

FillList start
         using Globals

rtn      equ   1
shape    equ   rtn+3
Y        equ   shape+2
X        equ   Y+2

stkAdj	equ	6

         phk
         plb

	tsc
         phd
	tcd

         lda   X
         lsr   a
         lsr   a
         lsr   a                        ;div by 8
         ldx   ClrIndex                 ;position in the table
         cpx   #maxObjects*8            ;check max range
         bcc   Goon1
         brl   FLExit                   ;get out if over range

Goon1    cmp   #17                      ;max value + 1
         bcc   X1ok
         lda   #0                       ;make minimum
X1ok     sta   ClrList,x                ;put it in the table
         pei   shape
         jsl   GetShapeWidth
         clc
         adc   X
         clc
         adc   shiftVal
         lsr   a
         lsr   a
         lsr   a
         ldx   ClrIndex                 ;position in the table
         cmp   #17
         bcc   X2ok
         lda   #16                      ;*** was #0
X2ok     sta   ClrList+2,x              ;save x2
         pei   Y
         jsl   DivBy13                  ;get Y-relative
         ldx   ClrIndex                 ;position in the table
         cmp   #13
         bcc   Y1ok
         lda   #0
Y1ok     sta   ClrList+4,x              ;save y1
         pei   shape
         jsl   GetShapeHeight
         clc
         adc   Y
         pha
         jsl   DivBy13
         ldx   ClrIndex                 ;position in the table
         cmp   #13
         bcc   Y2ok
         lda   #0
Y2ok     sta   ClrList+6,x              ;save y2
         lda   ClrList,x
         cmp   ClrList+2,x              ;check x1 vs x2
         bcc   NoXswap
         tay
         lda   ClrList+2,x
         sta   ClrList,x
         tya
         sta   ClrList+2,x              ;swap x1 and x2
NoXswap  lda   ClrList+4,x
         cmp   ClrList+6,x              ;check y1 vs y2
         bcc   NoYswap
         tay
         lda   ClrList+6,x
         sta   ClrList+4,x
         tya
         sta   ClrList+6,x              ;swap y1 and y2
NoYswap  txa
         clc
         adc   #8
         sta   ClrIndex                 ;point to next entry

FLExit   pld
	lda	rtn+1,s
	sta	rtn+stkAdj+1,s
	lda	rtn,s
	sta	rtn+stkAdj,s
	tsc
	clc
	adc	#stkAdj
	tcs
         lda   #0
         clc
	rtl

x1       ds    2
x2       ds    2
y2       ds    2
         end

;-------------------------------------------------------------------------
;
; void FixBgnd
;
; Take a parameter which is the distance scrolled
;
;-------------------------------------------------------------------------

FixBgnd  start
         using Globals
         using Vectors

         phk
         plb

         lda   #0                       ;start at the list start
FBLoop   cmp   ClrIndex
         bcs   FBDone                   ;don't exceed limit
         cmp   #maxObjects*8
         bcs   FBDone                   ;don't go out of range
         tax
         phx                            ;save X-reg
         lda   ClrList,x
         pha
         lda   ClrList+2,x
         pha
         lda   ClrList+4,x
         pha
         lda   ClrList+6,x              ;pass all parameters
         pha                            ;Oops! Forgot this before
         jsl   DrawBkgnd                ;cover the sprite up
        
         pla                            ;restore the X-reg
         clc
         adc   #8
         bra   FBLoop                   ;do the next one

FBDone   stz   ClrIndex
         lda   #0
         clc
	rtl
         end

;-------------------------------------------------------------------------
;
; void AddShapeToQueue(int X, int Y, int Shape)
;
; adds a specified shapes to a queue for drawing
; when DrawDisplay is called.
;             __________________________________
; structure - |  Addr  |  ShapePtr     |  Ptr  |
; valid indexes (1-255) 0 is reserved.  To index take (index-1)*8
;
; Change: Assume the VertPos is (0-12) equals block line on which to draw
;-------------------------------------------------------------------------

AddShapeToQueue start
        	using	Globals
         using Vectors

rtn      equ   1
shape    equ   4
Y        equ   6
X        equ   8

stkAdj	equ	6

         phk
         plb

	tsc    
         phd
	tcd

	lda	QueuePtr	;get the pointer to the next open spot
	cmp	#256	;only 255 record allowed
	bcc   IsOK1
         brl	ASExit	;get out if it's wrong
IsOK1    dec   a                        ;convert to correct index
         asl   a
         asl   a
         asl   a
         tay
                                        
	lda	X
	cmp	#ScreenWidth+1           ;is X too big?
	bcc	IsOK2                    ;between 0 and max, OK
         cmp   #-Xoffset
         bcc   ASExit                   ;less than -16, no good
IsOK2    lda   Y
         asl   a
         asl   a                        ;Y*160
         asl   a
         asl   a
         asl   a
         sta   temp1                    ;save x32
         asl   a
         asl   a
         clc
         adc   temp1                        ;Y*160
         clc
         adc   X                         ;add X-pos
         clc
         adc   #$2000+Xoffset+(Yoffset*160)
         cmp   #$2000
         bcc   ASExit                   ;do a range check
IsOK3    cmp   #$9d00
         bcs   ASExit
IsOK4    sta   Queue,y                  ;save it in the first field

         lda   shape                    ;get the shape
         beq   ASExit                   ;a shape of 0 need not be drawn

RealShp  cmp   MaxUser                  ;check to se if we're in range
         bcs   ASExit
IsOK5    dec   a
         asl   a
         asl   a                        ;(shape-1)*4
         tax
         lda   UserVect,x
         sta   Queue+2,y                ;save low part of addr
         lda   UserVect+2,x
         sta   Queue+4,y                ;save high part of addr
         lda   #0
         sta   Queue+6,y                ;just in case

         lda   QueuePtr
         cmp   #1                       ;ignore the first record
         beq   SkipMe
         dec   a
         sta   Queue+6,y                ;otherwise, point to the previous record
SkipMe   inc   QueuePtr                 ;record entered so advance pointer

ASExit   pld
	lda	rtn+1,s
	sta	rtn+stkAdj+1,s
	lda	rtn,s
	sta	rtn+stkAdj,s
	tsc
	clc
	adc	#stkAdj
	tcs
         lda   #0
         clc
	rtl

temp1	ds	2
DP	ds	2
	end

;-------------------------------------------------------------------------
;
; DrawQueue
;
; Draws the items in the Queue starting at the index in the acc.
; This is actually a linked list that is used.  Oh well.
;
; I'll redo this to use addresses instead of coordinates
;
;-------------------------------------------------------------------------

DrawQueue start
	using	Globals
         using Vectors

         phk                   
         plb

         lda   QueuePtr                 ;just draw all the shapes
         dec   a                        ;start at the end

loop     cmp	#0	;should a shape be drawn?
	beq	DQEnd
         cmp   #256                     ;are we out of range?
         bcs   DQEnd
	dec	a	;subtract one from the index
	asl	a
	asl	a
	asl	a	;mult by 8
	tax
	lda	Queue,x	;get the address
         tay
         lda   Queue+2,x
         sta   ShpVect+1
         lda   Queue+3,x
         sta   ShpVect+2                ;set address
         lda   #$0101                   ;bank $01 Woohoo, clipping
ShpVect	jsl	>$000000                 ;draw the shape
	lda	Queue+6,x	;get next index
	bra	loop	;go to beginning
DQEnd    lda   #1
         sta   QueuePtr                 ;reset the QueuePtr
         rtl
         end

;-------------------------------------------------------------------------
;
; int GetLevelWidth(void)
;
; Gets the level width
;
;-------------------------------------------------------------------------

GetLevelWidth start
	using Globals

         phk
         plb

	lda	LevelWidth
	ldx	#0
	clc
	rtl

	end

;-------------------------------------------------------------------------
;
; int GetBgndPnt(void)
;
; Gets the BgndPnt
;
;-------------------------------------------------------------------------

GetBgndPnt start
	using Globals

         phk
         plb

	lda	BgndPnt
	ldx	#0
	clc
	rtl

	end

;-------------------------------------------------------------------------
;
; int GetShiftVal(void)
;
; Gets the ShiftVal
;
;-------------------------------------------------------------------------

GetShiftVal start
	using Globals

         phk
         plb

	lda	shiftVal
	ldx	#0
	clc
	rtl

	end

;-------------------------------------------------------------------------
;
; void MultBy320
;
; multiplies Acc. by 320 for indexing into the level
; Now this multiplies by the levelwidth so things work
;-------------------------------------------------------------------------

MultBy320 start
         using Globals

         phk
         plb

         cmp   #13
         bcs   TooBig
         phx
         asl   a                        ; x2 for indexing
         tax
         lda   MultTable,x              ;look up the value
         plx
         rtl
TooBig   lda   #0                       ;should be harmless
         rtl

;         sta   tA
;         lda   LevelWidth
;         sta   tmp
;         stx   tX
;         sty   tY
;         mul2  tA,tmp
;         lda   tA
;         ldx   tX
;         ldy   tY
;	rtl
;tA	ds	2
;tX       ds    2
;tY       ds    2
tmp      ds    2

	end

;-------------------------------------------------------------------------
;
; void SetLevelItem(X,Y,shape)
;
; sets the Level item at X,Y (0-319)(0-11) to shape
;
;-------------------------------------------------------------------------

SetLevelItem start
	using	Globals

X	equ	8
Y	equ	6
shape	equ	4
rtn	equ	1
stkadj	equ	6

         phk
         plb

         tdc 
         sta   DP
         tsc
         tcd

	lda	X,s
	sta	temp1	;save X-pos
	lda	Y,s

	jsl	MultBy320
	clc
	adc	temp1	;+Xpos
         tay
         lda   LevelPtr
         sta   Y
         lda   LevelPtr+2
         sta   X

         lda	shape,s 	;get the shape
	and	#$00FF	;no high bits
	sta	temp1

	lda   [Y],y
	and	#$FF00	;erase the low byte
	ora	temp1	;set it
	sta	[Y],y	;and store it

	lda	2,s
	sta	8,s
	lda	0,s
	sta	6,s

	tsc
	clc
	adc	#stkadj
	tcs

         lda   DP
         tcd

	lda	#0
	clc
	rtl
temp1	ds	2
temp2	ds	2
DP       ds    2
	end

;-------------------------------------------------------------------------
;
; void DeleteLevelItem(X,Y)
;
; deletes the Level item at X,Y (0-319)(0-11)
;
;-------------------------------------------------------------------------

DeleteLevelItem start
	using	Globals

X	equ	6
Y	equ	4
rtn	equ	1
stkadj	equ	4

         phk
         plb

         tdc    
         sta   DP
         tsc
         tcd

	lda	X,s
	tax		;put in the X-reg
	lda	Y,s
	tay		;put in the Y-reg
	stx	temp1	;save X-pos
	tya		;put Y-reg into Acc

	jsl	MultBy320
	clc
	adc	temp1	;+Xpos

         tay
         lda   LevelPtr
         sta   Y
         lda   LevelPtr+2
         sta   X

         lda   [Y],y
	and	#$FF00	;mask into legal val
         sta   [Y],y

	lda	2,s
	sta	6,s
	lda	0,s
	sta	4,s

	tsc
	clc
	adc	#stkadj
	tcs

         lda   DP
         tcd

	lda	#0
	clc
	rtl
temp1	ds	2
temp2	ds	2
DP       ds    2
	end


;-------------------------------------------------------------------------
;
; int GetLevelItem(X,Y)
;
; Gets the Level item at X,Y (0-ScreenWidth)(0-11)
;
;-------------------------------------------------------------------------

GetLevelItem start
	using	Globals
X	equ	6
Y	equ	4
rtn	equ	1
stkadj	equ	4

         phk
         plb

         tdc 
         sta   DP
         tsc
         tcd

	lda	X,s
	sta	temp1	;save X-pos
	lda	Y,s

	jsl	MultBy320
	clc
	adc	temp1	;+Xpos

         tay
         lda   LevelPtr
         sta   Y
         lda   LevelPtr+2
         sta   X
         lda   [Y],y
	and	#$00FF	;mask into legal val
	tay

	lda	2,s
	sta	6,s
	lda	0,s
	sta	4,s

	tsc
	clc
	adc	#stkadj
	tcs

         lda   DP
         tcd

	tya
	clc
	rtl

temp1	ds	2
temp2	ds	2
DP       ds    2
	end

;-------------------------------------------------------------------------
;
; DrawBkgnd(x1,x2,y1,y2)
;
; Draws the background plane starting at x1,y1 to x2,y2
; 
;-------------------------------------------------------------------------

DrawBkgnd start
	using	Globals
	using	Vectors

Xloop    equ    1
XGlobal  equ    3
Yloop    equ    5
XEnd     equ    7
tmp      equ    9

rtn      equ   11
y2       equ   14
y1       equ   16
x2       equ   18
x1       equ   20

stkAdj   equ   8
varSpace equ   10                       ;10 bytes for local variables
	
         phk
         plb

	tsc                 
         sec
         sbc   #varSpace                ;local variables
         tcs
	phd
	tcd		;set up DP

         lda   x1
         sta   Xloop
         clc
         adc   indexVal                 ;make global
         sta   XGlobal

         ldx   x2
         inx                            ;because a bcc is done add 1
         stx   XEnd

         inc   y2                       ;*** NEW (uses bcc for test)
DBLoop1  lda   y1
         sta   Yloop                    ;for y=y1 to y2

DBLoop2  lda   XGlobal
         pha
         lda   Yloop
         pha
         jsl   GetLevelItem             ;find out what's here
         and   #shapeMask

NotActive cmp	MaxShapes	;is it a legal value?
	bcs	NotValid	;nope, reject
         pha
         lda   Xloop
         asl   a
         asl   a
         asl   a                        ;mult by HInterval
         clc
         adc   #Xoffset
         sec
         sbc   shiftVal
         tax                            ;convert X to screen coordinate
         lda   Yloop
         asl   a
         asl   a
         sta   tmp
         asl   a
         clc
         adc   tmp
         clc
         adc   Yloop                    ;Yloop*13
         clc
         adc   #Yoffset
         tay                            ;convert Y to screen coordinate
         pla                            ;get shape back
         cmp   #0                       ;if 0, draw bkgnd
         bne   NoFix
         lda   #48                      ;load background shape
NoFix	phx
	phy
	pha
SkipClr	jsl	DrawShape	;draw it.
	
NotValid inc   Yloop
         lda   Yloop
         cmp   y2                       ;see if we're done
         bcc   DBLoop2

         inc   Xloop
         inc   XGlobal
         lda   Xloop
         cmp   XEnd                     ;are we done with the X's
         bcs   DBEnd                    ;no, go back for another column
         brl   DBLoop1

DBEnd    lda	rtn+1
	sta	rtn+stkAdj+1
	lda	rtn
	sta	rtn+stkAdj
         pld
         tsc
         clc
         adc   #varSpace+stkAdj                ;bounce above variables
	tcs

         lda   #0
         clc
	rtl
	end

;-------------------------------------------------------------------------
;
; void DrawShape(int x, int y, int shape)
;
; Draws a particular shape
;
;-------------------------------------------------------------------------

DrawShape start
	using	Globals
	using	Vectors

X	equ	8
Y	equ	6
Shape	equ	4
rtn	equ	0
stkAdj	equ	6

         phk
         plb

         tsc
	sta	StackPtr

	lda	X,s
	tax
	lda	Shape,s

IsSingle	anop

         and	#shapeMask	;clip to low 7 bits )
         cmp   MaxShapes
         bcs   dsExit

	tay
	lda	Y,s

	cpy	#0
	beq	dsExit	;if the shape = 0, don't draw

	asl	a	;x2
	asl	a	;x4
	asl	a	;x8
	asl	a	;x16
	asl	a	;x32
	sta	dstemp1
	asl	a	;x64
         asl	a	;x128
	clc
	adc	dstemp1 	;x160
	clc
	adc	#$2000	;get the correct offset
	sta	dstemp1	;save the offset

	txa
	
dsEven	clc
	adc	dstemp1	;finish computing the address
	sta	dstemp1

	tya	

	dec	a	;shape 0 => #1
	asl	a
	asl	a	;x4
	tax                            ;get the shape

	lda	VectEven,x
	sta	ShpVect+1
	lda	VectEven+1,x
	sta	ShpVect+2

	ldy	dstemp1	;put finished addr in y-reg
ShpVect	jsl	>$000000                 ;draw the shape

dsExit	lda	rtn+2,s          	;fix the stack
	sta	stkAdj+2,s
	lda	rtn,s
	sta	stkAdj,s

	tsc
	clc		;adjust the pointer
	adc	#stkadj
	tcs

	clc
	lda	#0

	rtl		;return

dstemp1	ds	2
dstemp2	ds	2
dstemp3	ds	2
stackPtr	ds	2
	end

;-------------------------------------------------------
;
; Shadow_On & Shadow_Off & Get_VBL
;
; Selectivly tuns on/off shadowing  and get the VBL pos
;
;-------------------------------------------------------

Shadow_On start

	php
	short m
	lda $E0C035
	and #$F7
	sta $E0C035
	plp
	rtl

Shadow_Off entry

	php
	short m
	lda $E0C035
	ora #$08
	sta $E0C035
	plp
	rtl

Get_VBL	entry
	php
	short m
	lda 	$E0C02F
	asl 	a
	lda 	$E0C02E
	rol 	a
         plp
	long m
	and	#$00FF
	rtl

Wait_For_VBL entry
               php
               short m
Wait1          lda $E0C019
               bmi Wait1
Wait2          lda $E0C019
               bpl Wait2
               plp
               rtl

Wait_Keypress entry
         short m
         sta   $E0C010
loop     lda   $E0C000
         cmp   #$80
         bcc   loop
         long  m
         rtl
         end

;-------------------------------------------------------------------------
;
; Display routines for the score, time, etc.
;
;-------------------------------------------------------------------------

AddBCD   start

score    equ   6
val      equ   4
rtn      equ   1
stkadj   equ   6

         phk
         plb

         tsc
         phd
         tcd                            ;set up DP

         sed                            ;decimal mode
         lda   score                    ;low word of score
         clc
         adc   val                      ;add in value
         tay                            ;save value
         lda   #0                       ;add roll over into high word
         adc   score+2
         tax
         cld                            ;back to binary mode

         pld
         lda   rtn+1,s
         sta   rtn+1+stkadj,s
         lda   rtn,s
         sta   rtn+stkadj,s
         tsc
         clc
         adc   #stkadj
         tcs

         tya                            ;put low word in acc.
         rtl
         end

PrintTime start

time     equ   4
rtn1      equ   1
stkadj1   equ   2

         phk
         plb

         jsl   Shadow_On                ;let's see it!

         ldy   #Xoffset+ScreenWidth-18+((Yoffset-9)*160)+$2000 ;starting point

         lda   time,s
         and   #$0f00
         xba
         jsr   PrntDigit                ;100's place
         lda   time,s
         and   #$00f0
         lsr   a
         lsr   a
         lsr   a
         lsr   a
         jsr   PrntDigit                ;10's place
         lda   time,s
         and   #$000f
         jsr   PrntDigit                ;1's place
         jsl   Shadow_Off               ;hide again

         lda   rtn1+1,s
         sta   rtn1+1+stkadj1,s
         lda   rtn1,s
         sta   rtn1+stkadj1,s
         tsc
         clc
         adc   #stkadj1
         tcs

	clc
	lda	#0
         rtl

PrintScore entry

score    equ   4
rtn      equ   1
stkadj   equ   4

         phk
         plb

         jsl   Shadow_On                ;let's see it!

         ldy   #Xoffset+6+((Yoffset-9)*160)+$2000       ;starting point
         lda   score+2,s                  ;get high word
         and   #$00f0                   ;only to the hundred thousands
         lsr   a
         lsr   a
         lsr   a
         lsr   a                        ;shift it down
         jsr   PrntDigit                ;print it
         lda   score+2,s
         and   #$000f
         jsr   PrntDigit                ;10000's place
         lda   score,s
         and   #$f000
         xba
         lsr   a
         lsr   a
         lsr   a
         lsr   a
         jsr   PrntDigit                ;1000's place
         lda   score,s
         and   #$0f00
         xba
         jsr   PrntDigit                ;100's place
         lda   score,s
         and   #$00f0
         lsr   a
         lsr   a
         lsr   a
         lsr   a
         jsr   PrntDigit                ;10's place
         lda   score,s
         and   #$000f
         jsr   PrntDigit                ;1's place
         jsl   Shadow_Off               ;hide again

         lda   rtn+1,s
         sta   rtn+1+stkadj,s
         lda   rtn,s
         sta   rtn+stkadj,s
         tsc
         clc
         adc   #stkadj
         tcs

	clc
	lda	#0
         rtl

PrntDigit cmp  #10
         bcc   PDok
         lda   #0                       ;default to 0 if out of range
PDok     asl   a
         asl   a                        ;mult by 4
         tax
         lda   Digits,x                 ;get low word
         sta   Patch+1
         lda   Digits+1,x               ;get high byte
         sta   Patch+2
Patch    jsl   Zero                     ;draw the digit at addr in Y-reg
         tya
         clc
         adc   #4                       ;auto-increment position
         tay
         rts                            ;return

Digits   dc    a4'Zero'
         dc    a4'One'
         dc    a4'Two'
         dc    a4'Three'
         dc    a4'Four'
         dc    a4'Five'
         dc    a4'Six'
         dc    a4'Seven'
         dc    a4'Eight'
         dc    a4'Nine'
         end

;-------------------------------------------------------------------------
; Vectors
;
; Hold all the vectors for the various shapes
;
;-------------------------------------------------------------------------

Vectors	data

MaxUser  dc    i2'(((UserEnd-UserVect)/4)+1)'      ;max user shapes
UserVect dc    a4'MarBigWR1'      	;#1
         dc    a4'MarBigWR2'      	;#2
	dc	a4'MarBigWR3'            ;#3
	dc	a4'MarBigWR4'	;#4
	dc	a4'MarBigR'	;#5
	dc	a4'MarBigCrch'	;#6
         dc    a4'MarBigWL1'            ;#7
         dc    a4'MarBigWL2'            ;#8
         dc    a4'MarBigWL3'            ;#9
         dc    a4'MarBigWL4'            ;#10
         dc    a4'MarBigLft'            ;#11
         dc    a4'MarLftCrch'           ;#12
	dc	a4'MarBigJumpR'	;#13
	dc	a4'MarBigJumpL'	;#14
	dc	a4'MarWR1'	;#15
	dc	a4'MarWR2'	;#16
	dc	a4'MarWR3'	;#17
	dc	a4'MarWR4'	;#18
	dc	a4'MarR'	;#19
	dc	a4'MarR'	;#20
	dc	a4'MarWL1'	;#21
	dc	a4'MarWL2'	;#22
	dc	a4'MarWL3'	;#23
	dc	a4'MarWL4'	;#24
	dc	a4'MarL'	;#25
	dc	a4'MarL'	;#26
	dc	a4'MarJmpR'	;#27
	dc	a4'MarJmpL'	;#28
         dc    a4'Flag'                ;#29
         dc    a4'FireFlower1'          ;#30
         dc    a4'FireFlower2'          ;#31
         dc    a4'mushroom'             ;#32
         dc    a4'OneUp'                ;#33
         dc    a4'Star1'                ;#34
         dc    a4'Star2'                ;#35
         dc    a4'rBrickPiece'          ;#36
         dc    a4'fireball1'            ;#37
         dc    a4'fireball2'            ;#38
         dc    a4'fireball3'            ;#39
         dc    a4'fireball4'            ;#40
         dc    a4'explode1'             ;#41
         dc    a4'explode2'             ;#42
         dc    a4'Empty'      	;#43
         dc    a4'SmallSlideR'          ;#44
         dc    a4'SmallSlideL'          ;#45
         dc    a4'MarSlideR'            ;#46
         dc    a4'MarSlideL'            ;#47
	dc	a4'MarSwimR1'	;#48
         dc    a4'MarSwimR2'            ;#49
         dc    a4'MarSwimR3'            ;#50
         dc    a4'MarSwimR4'            ;#51
         dc    a4'MarSwimL1'            ;#52
         dc    a4'MarSwimL2'            ;#53
         dc    a4'MarSwimL3'            ;#54
	dc	a4'MarSwimL4'	;#55
	dc	a4'MarDie'	;#56
         dc    a4'fifty'                ;#57
         dc    a4'oneHundred'           ;#58
         dc    a4'twoHundred'           ;#59
         dc    a4'fourHundred'          ;#60
         dc    a4'eightHundred'         ;#61
         dc    a4'oneThousand'          ;#62
         dc    a4'twoThousand'          ;#63
         dc    a4'fourThousand'         ;#64
         dc    a4'fiveThousand'         ;#65
         dc    a4'eightThousand'        ;#66
         dc    a4'oneUpTxt'             ;#67
         dc    a4'GoombaR1'             ;#68
         dc    a4'GoombaR2'             ;#69
         dc    a4'GoombaB1'             ;#70
         dc    a4'GoombaB2'             ;#71
         dc    a4'KoopaGL1'             ;#72
         dc    a4'KoopaGL2'             ;#73
         dc    a4'KoopaGR1'             ;#74
         dc    a4'KoopaGR2'             ;#75
         dc    a4'flatGR'               ;#76
         dc    a4'flatGB'               ;#77
         dc    a4'PPlantG1'             ;#78
         dc    a4'PPlantG2'             ;#79
         dc    a4'GShell1'              ;#80
         dc    a4'GShell2'              ;#81
         dc    a4'RBrickBnc'            ;#82
         dc    a4'LakituR'              ;#83
         dc    a4'Empty'                ;#84
         dc    a4'KoopaTroopGR1'        ;#85
         dc    a4'KoopaTroopGR2'        ;#86
         dc    a4'KoopaTroopGL1'        ;#87
         dc    a4'KoopaTroopGL2'        ;#88
         dc    a4'RBrickBnc'            ;#89
         dc    a4'QBlockBnc'            ;#90
         dc    a4'Coin1'                ;#91
         dc    a4'Coin2'                ;#92
         dc    a4'Coin3'                ;#93
         dc    a4'SClimbR1'             ;#94
         dc    a4'SClimbR2'             ;#95
         dc    a4'MarClimbR1'           ;#96
         dc    a4'MarClimbR2'           ;#97
         dc    a4'MarClimbL1'           ;#98
         dc    a4'MarClimbL2'           ;#99
         dc    a4'MarSwimR5'            ;#100
         dc    a4'MarSwimR6'            ;#101
         dc    a4'MarSwimL5'            ;#102
         dc    a4'MarSwimL6'            ;#103
         dc    a4'SClimbL1'             ;#104
         dc    a4'SClimbL2'             ;#105
UserEnd  anop

MaxShapes dc	i2'((VectEnd-VectEven)/4)+1'	;maximum number of shapes
VectEven dc	a4'Empty'	;#1
	dc	a4'redBlock'	;#2 even columns
	dc	a4'solidRed'            ;#3
	dc	a4'bushLeft'	;#4
	dc	a4'bushCtr'	;#5
	dc	a4'bushRgt'	;#6
	dc	a4'hillLeft'	;#7
	dc	a4'hillCtr'	;#8
	dc	a4'hillHCtr'	;#9
	dc	a4'hillRgt'	;#10
	dc	a4'hillTop'	;#11
	dc	a4'cloudLeft'	;#12
	dc	a4'cloudCtr'	;#13
	dc	a4'cloudRgt'	;#14
	dc	a4'pipeLeft'	;#15
	dc	a4'pipeRgt'	;#16
	dc	a4'pipeTopLeft'	;#17
	dc	a4'pipeTopRgt'	;#18
	dc	a4'coinB'	;#19
	dc	a4'QBlock'               ;#20
	dc	a4'Background'           ;#21 - Invisible 1 up
	dc	a4'HPipe1Top'            ;#22
	dc	a4'HPipe1Bot'            ;#23
	dc	a4'HPipe2Top'            ;#24
	dc	a4'HPipe2Bot'            ;#25
	dc	a4'redBrick'             ;#26
	dc	a4'redMetal'             ;#27
	dc	a4'blueBlockE'	;#28
	dc	a4'blueBrickE'	;#29
	dc	a4'CastleArch'	;#30
	dc	a4'CastleTop1'	;#31
	dc	a4'CastleTop2'	;#32
	dc	a4'solidBlueE'	;#33
	dc	a4'CastleWinR'	;#34
	dc	a4'CastleWinL'	;#35
	dc	a4'Empty'	;#36
	dc	a4'redBrick'	;#37 - powerUpBrickR (red)	
	dc	a4'redBrick'	;#38 - coinBrickR (red)
	dc	a4'blueBrickE'	;#39 - powerUpBrickB (blue)
	dc	a4'blueBrickE'	;#40 - coinBrickB (blue)
         dc    a4'CastleSolid'          ;#41
         dc    a4'Coral'          	;#42
         dc    a4'DungeonBlk'          	;#43
         dc    a4'FlagPole'          	;#44
         dc    a4'FlagPoleTop'          ;#45
         dc    a4'WaterBlk'          	;#46
         dc    a4'WaterTop'          	;#47
         dc    a4'Background'           ;#48
         dc    a4'redBrick'            ;#49
         dc    a4'redBrick'            ;#50
         dc    a4'BBCase'               ;#51
         dc    a4'BBBase'               ;#52
         dc    a4'QBlock'               ;#53
         dc    a4'H2VTop'               ;#54
         dc    a4'H2VBot'               ;#55
         dc    a4'CloudBotL'            ;#56
         dc    a4'CloudBotC'            ;#57
         dc    a4'CloudBotR'            ;#58
VectEnd	anop
	end

;-------------------------------------------------------------------------
;
; Globals
;
; Contains all the global data, including the default level
;
;-------------------------------------------------------------------------
	
Globals	data

UserID	ds	2
ProgID	ds	2
palette	dc	i2'$007F,$0000,$00D0,$072C,$000F,$0080,$0F70,$0FFF,$0FA9'
         dc    i2'$0FF0,$00E0,$04DF,$0D00,$078F,$0CCC,$0FFF'
ShadowHndl ds	4

LevelWidth ds  2                        ;width of level seg. in bytes
LevelPtr ds    4                        ;pointer to where the raw data is

BgndPnt	ds	2
shiftVal	ds	2  	;computed as a byproduct
indexVal	ds	2
BorderCol ds   1

MultTable ds   28                       ;space for precomputes

ClrIndex dc    i2'0'
ClrList  ds    maxObjects*8             ;2K table for background fix
QueuePtr	dc	i2'1'	;pointer into queue table (max 255)
Queue	ds    maxObjects*8             ;2K table for lists (8bytes/shape)
	end
