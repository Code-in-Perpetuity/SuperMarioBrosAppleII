	keep	..:o:alphanum

Nine      start
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   #$FF1F
          Sta   $00
          Lda   #$00F1
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11FF
          Sta   $00
          Lda   #$00FF
          Sta   $02
          Sta	 $A2
	 Lda   #$FF1F
          Sta   $A0
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$1F11
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00F1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0011
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Eight     entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11FF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$FF1F
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00F1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11FF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Seven     entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
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
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$1111
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1F11
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   #$FF11
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$0011
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F11F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0011
          Sta   $02
          Lda   #$F11F
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$0011
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F11F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0011
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Six       entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   #$FF11
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$F11F
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$0011
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11FF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0011
          Sta   $02
          Lda   #$FFFF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00F1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11FF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Five      entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
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
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$0011
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   #$1111
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Four      entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   #$1F11
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   #$FF11
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00F1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   #$1FFF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00F1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$1F11
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00F1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1F11
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Three     entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
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
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$1111
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1F11
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   #$FF11
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00F1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Two       entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$FF11
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00F1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F11F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0011
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$0011
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
One       entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   #$FF11
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0011
          Sta   $02
          Lda   #$FF1F
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$0011
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF11
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0011
          Sta   $02
          Lda   #$FF11
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$0011
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF11
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0011
          Sta   $02
          Lda   #$FF11
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$0011
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Zero      entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0007'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1FFF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$FFFF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F1FF
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   #$11FF
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F1
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl

	end
