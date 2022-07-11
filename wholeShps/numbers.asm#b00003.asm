	mcopy bank.macs
	keep	..:o:numbers

oneUPTxt  start
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0005'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$0FF0
          Ora   #$F00F
          Sta   $00
          Lda   $02
          And   #$F000
          Ora   #$0FFF
          Sta   $02
          Lda   $04
          And   #$000F
          Ora   #$FFF0
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00FF
          Sta   $06
          Lda   $A0
          And   #$0F00
          Ora   #$F0FF
          Sta   $A0
          Lda   $A2
          And   #$F000
          Ora   #$0FFF
          Sta   $A2
          Lda   $A4
          And   #$000F
          Ora   #$FFF0
          Sta   $A4
          Lda   $A6
          And   #$0FF0
          Ora   #$F00F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0FF0
          Ora   #$F00F
          Sta   $00
          Lda   $02
          And   #$F000
          Ora   #$0FFF
          Sta   $02
          Lda   $04
          And   #$000F
          Ora   #$FFF0
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00FF
          Sta   $06
          Lda   $A0
          And   #$0FF0
          Ora   #$F00F
          Sta   $A0
          Lda   $A2
          And   #$F000
          Ora   #$0FFF
          Sta   $A2
          Lda   $A4
          And   #$000F
          Ora   #$FFF0
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   $02
          And   #$00F0
          Ora   #$FF0F
          Sta   $02
          Lda   $04
          And   #$00FF
          Ora   #$FF00
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
fiveThousand entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0000,$0F00,$F0FF
          Mk4   $0002,$FFF0,$000F
          Mk4   $0004,$FFF0,$000F
          Mk4   $0006,$FFF0,$000F
          Mk4   $00A0,$FF0F,$00F0
          Mk4   $00A2,$0F0F,$F0F0
          Mk4   $00A4,$0F0F,$F0F0
          Mk4   $00A6,$0F0F,$F0F0
          Mk4   $0140,$FF00,$00FF
          Mk4   $0142,$0F0F,$F0F0
          Mk4   $0144,$0F0F,$F0F0
          Mk4   $0146,$0F0F,$F0F0
          Mk4   $01E0,$0FFF,$F000
          Mk4   $01E2,$0F0F,$F0F0
          Mk4   $01E4,$0F0F,$F0F0
          Mk4   $01E6,$0F0F,$F0F0
          Mk4   $0280,$0FFF,$F000
          Mk4   $0282,$0F0F,$F0F0
          Mk4   $0284,$0F0F,$F0F0
          Mk4   $0286,$0F0F,$F0F0
          Mk4   $0320,$0FFF,$F000
          Mk4   $0322,$0F0F,$F0F0
          Mk4   $0324,$0F0F,$F0F0
          Mk4   $0326,$0F0F,$F0F0
          Mk4   $03C0,$FF00,$00FF
          Mk4   $03C2,$FFF0,$000F
          Mk4   $03C4,$FFF0,$000F
          Mk4   $03C6,$FFF0,$000F
          Plb
          Cli
          Rtl
eightThousand entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $06
          And   #$0FFF
          Ora   #$F000
          Sta   $06
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $06
          And   #$F0F0
          Ora   #$0F0F
          Sta   $06
          Lda   $A0
          And   #$0FFF
          Ora   #$F000
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $06
          And   #$F0F0
          Ora   #$0F0F
          Sta   $06
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $06
          And   #$0FFF
          Ora   #$F000
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
fourThousand entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $06
          And   #$0FFF
          Ora   #$F000
          Sta   $06
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $06
          And   #$F0F0
          Ora   #$0F0F
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$FF0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $06
          And   #$F0F0
          Ora   #$0F0F
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0F00
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $06
          And   #$0FFF
          Ora   #$F000
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
twoThousand entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $06
          And   #$0FFF
          Ora   #$F000
          Sta   $06
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $06
          And   #$F0F0
          Ora   #$0F0F
          Sta   $06
          Lda   $A0
          And   #$0FFF
          Ora   #$F000
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FFF0
          Ora   #$000F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $06
          And   #$F0F0
          Ora   #$0F0F
          Sta   $06
          Lda   $A0
          And   #$FFF0
          Ora   #$000F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$FF0F
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $06
          And   #$0FFF
          Ora   #$F000
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
oneThousand entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$FFF0
          Ora   #$000F
          Sta   $00
          Lda   $02
          And   #$FF0F
          Ora   #$00F0
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$00F0
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$00F0
          Sta   $06
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$FFF0
          Ora   #$000F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $06
          And   #$FFF0
          Ora   #$000F
          Sta   $06
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$FFF0
          Ora   #$000F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $06
          And   #$FFF0
          Ora   #$000F
          Sta   $06
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Lda   $A6
          And   #$FFF0
          Ora   #$000F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FFF0
          Ora   #$000F
          Sta   $00
          Lda   $02
          And   #$FF0F
          Ora   #$00F0
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$00F0
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$00F0
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
eightHundred entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $A0
          And   #$0FFF
          Ora   #$F000
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
fourHundred entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0F0F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$FF0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0F00
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
twoHundred entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   $A0
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $A0
          And   #$0FFF
          Ora   #$F000
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FFF0
          Ora   #$000F
          Sta   $00
          Lda   $02
          And   #$F0F0
          Ora   #$0F0F
          Sta   $02
          Lda   $04
          And   #$F0F0
          Ora   #$0F0F
          Sta   $04
          Lda   $A0
          And   #$FFF0
          Ora   #$000F
          Sta   $A0
          Lda   $A2
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A2
          Lda   $A4
          And   #$F0F0
          Ora   #$0F0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$FF0F
          Sta   $00
          Lda   $02
          And   #$0FFF
          Ora   #$F000
          Sta   $02
          Lda   $04
          And   #$0FFF
          Ora   #$F000
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
oneHundred entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$FFF0
          Ora   #$000F
          Sta   $02
          Lda   $04
          And   #$FFF0
          Ora   #$000F
          Sta   $04
          Lda   $A0
          And   #$0FFF
          Ora   #$F000
          Sta   $A0
          Lda   $A2
          And   #$0F0F
          Ora   #$F0F0
          Sta   $A2
          Lda   $A4
          And   #$0F0F
          Ora   #$F0F0
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$0F0F
          Ora   #$F0F0
          Sta   $02
          Lda   $04
          And   #$0F0F
          Ora   #$F0F0
          Sta   $04
          Lda   $A0
          And   #$0FFF
          Ora   #$F000
          Sta   $A0
          Lda   $A2
          And   #$0F0F
          Ora   #$F0F0
          Sta   $A2
          Lda   $A4
          And   #$0F0F
          Ora   #$F0F0
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$0F0F
          Ora   #$F0F0
          Sta   $02
          Lda   $04
          And   #$0F0F
          Ora   #$F0F0
          Sta   $04
          Lda   $A0
          And   #$0FFF
          Ora   #$F000
          Sta   $A0
          Lda   $A2
          And   #$0F0F
          Ora   #$F0F0
          Sta   $A2
          Lda   $A4
          And   #$0F0F
          Ora   #$F0F0
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0FFF
          Ora   #$F000
          Sta   $00
          Lda   $02
          And   #$FFF0
          Ora   #$000F
          Sta   $02
          Lda   $04
          And   #$FFF0
          Ora   #$000F
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
                 
fifty     entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0000,$0F00,$F0FF
          Mk4   $0002,$FFF0,$000F
          Mk4   $00A0,$FF0F,$00F0
          Mk4   $00A2,$0F0F,$F0F0
          Mk4   $0140,$FF00,$00FF
          Mk4   $0142,$0F0F,$F0F0
          Mk4   $01E0,$0FFF,$F000
          Mk4   $01E2,$0F0F,$F0F0
          Mk4   $0280,$0FFF,$F000
          Mk4   $0282,$0F0F,$F0F0
          Mk4   $0320,$0FFF,$F000
          Mk4   $0322,$0F0F,$F0F0
          Mk4   $03C0,$FF00,$00FF
          Mk4   $03C2,$FFF0,$000F
          Plb
          Cli
          Rtl
RBrickBnc entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$000D'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   #$FFFF
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$C1CC
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C1CC
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCC1
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$C1CC
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C1CC
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCC1
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
QBlockBnc entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$000D'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$00F0
          Ora   #$1101
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$1011
          Sta   $06
          Lda   #$CC1C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1C1C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   #$C1C1
          Sta   $06
          Lda   #$CC1C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CC1C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   #$C1CC
          Sta   $06
          Lda   #$CC1C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CC1C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   #$C1CC
          Sta   $06
          Lda   #$CC1C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CC1C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   #$C1CC
          Sta   $06
          Lda   #$CC1C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1C1C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   #$C1C1
          Sta   $06
          Lda   #$CC1C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$1101
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$1011
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Coin3     entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$000E'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $02
          And   #$F0FF
          Ora   #$0F00
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$00C0
          Sta   $04
          Lda   $A2
          And   #$F0FF
          Ora   #$0F00
          Sta   $A2
          Lda   $A4
          And   #$FF0F
          Ora   #$00C0
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$FF00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00FC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$FF00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00FC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$FF00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00FC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$FF00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00FC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$FF00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00FC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$FF00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00FC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$FF00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00FC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$FF00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00FC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$FF00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00FC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$FF00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00FC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$F0FF
          Ora   #$0F00
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$00C0
          Sta   $04
          Lda   $A2
          And   #$F0FF
          Ora   #$0F00
          Sta   $A2
          Lda   $A4
          And   #$FF0F
          Ora   #$00C0
          Sta   $A4
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Coin2     entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$000E'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $02
          And   #$F0FF
          Ora   #$0600
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$00C0
          Sta   $04
          Lda   $A2
          And   #$F0FF
          Ora   #$0600
          Sta   $A2
          Lda   $A4
          And   #$FF0F
          Ora   #$00C0
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$6C00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00CC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$6C00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00CC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$6C00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00CC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$6C00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00CC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$FC00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00CC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$FC00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00CC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$6C00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00CC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$6C00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00CC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$6C00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00CC
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$6C00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00CC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$F0FF
          Ora   #$0600
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$00C0
          Sta   $04
          Lda   $A2
          And   #$F0FF
          Ora   #$0600
          Sta   $A2
          Lda   $A4
          And   #$FF0F
          Ora   #$00C0
          Sta   $A4
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Coin1     entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$000E'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $04
          And   #$FF0F
          Ora   #$0060
          Sta   $04
          Lda   $A4
          And   #$FF0F
          Ora   #$0060
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$FF0F
          Ora   #$0060
          Sta   $04
          Lda   $A4
          And   #$FF0F
          Ora   #$0060
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$FF0F
          Ora   #$0060
          Sta   $04
          Lda   $A4
          And   #$FF0F
          Ora   #$0060
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$FF0F
          Ora   #$00F0
          Sta   $04
          Lda   $A4
          And   #$FF0F
          Ora   #$00F0
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$FF0F
          Ora   #$0060
          Sta   $04
          Lda   $A4
          And   #$FF0F
          Ora   #$0060
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$FF0F
          Ora   #$0060
          Sta   $04
          Lda   $A4
          And   #$FF0F
          Ora   #$0060
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$FF0F
          Ora   #$0060
          Sta   $04
          Lda   $A4
          And   #$FF0F
          Ora   #$0060
          Sta   $A4
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl


	end
