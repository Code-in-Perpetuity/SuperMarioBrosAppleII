	mcopy	bank.macs
	keep	..:o:goomba

KoopaGR2  start
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0016'               ;Hauteur
          dc    i2'$000A'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $A6
          And   #$FFF0
          Ora   #$000F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A4
          And   #$F0FF
          Ora   #$0600
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F0FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$6600
          Sta   $04
          Lda   #$56FF
          Sta   $06
          Lda   $A4
          And   #$00FF
          Ora   #$6600
          Sta   $A4
          Lda   #$56FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$6600
          Sta   $04
          Lda   #$56FF
          Sta   $06
          Lda   $A4
          And   #$00FF
          Ora   #$6600
          Sta   $A4
          Lda   #$666F
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0060
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$6600
          Sta   $04
          Lda   #$6566
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0060
          Sta   $08
          Lda   $A0
          And   #$F0FF
          Ora   #$0500
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   $A4
          And   #$F0FF
          Ora   #$0600
          Sta   $A4
          Lda   #$6666
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0060
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$5600
          Sta   $00
          Lda   #$5655
          Sta   $02
          Lda   $04
          And   #$F000
          Ora   #$0655
          Sta   $04
          Lda   $06
          And   #$000F
          Ora   #$6660
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0060
          Sta   $08
          Lda   $A0
          And   #$00F0
          Ora   #$5505
          Sta   $A0
          Lda   #$6565
          Sta   $A2
          Lda   $A4
          And   #$F000
          Ora   #$0655
          Sta   $A4
          Lda   $A6
          And   #$F00F
          Ora   #$0660
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0060
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$FF05
          Sta   $00
          Lda   #$5556
          Sta   $02
          Lda   #$5F55
          Sta   $04
          Lda   $06
          And   #$F000
          Ora   #$0666
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0060
          Sta   $08
          Lda   $A0
          And   #$00F0
          Ora   #$F505
          Sta   $A0
          Lda   #$6565
          Sta   $A2
          Lda   #$5F55
          Sta   $A4
          Lda   $A6
          And   #$F000
          Ora   #$0666
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5606
          Sta   $00
          Lda   #$5655
          Sta   $02
          Lda   #$6F55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0066
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$6505
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$5F66
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$60F6
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5606
          Sta   $00
          Lda   #$5655
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00F6
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$5505
          Sta   $A0
          Lda   #$5556
          Sta   $A2
          Lda   #$5555
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$00F0
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F5FF
          Sta   $00
          Lda   #$6565
          Sta   $02
          Lda   #$5F55
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$00F0
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$FF00
          Sta   $A0
          Lda   #$56F5
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6606
          Sta   $00
          Lda   #$FFFF
          Sta   $02
          Lda   #$66FF
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$6066
          Sta   $06
          Lda   #$6666
          Sta   $A0
          Lda   $A4
          And   #$F0FF
          Ora   #$0600
          Sta   $A4
          Lda   #$6666
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
KoopaGR1  entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0016'               ;Hauteur
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
          And   #$F0FF
          Ora   #$0F00
          Sta   $04
          Lda   $A4
          And   #$00FF
          Ora   #$FF00
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$00F0
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$FF00
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00F6
          Sta   $06
          Lda   $A4
          And   #$00F0
          Ora   #$FF06
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00F0
          Ora   #$FF06
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$6056
          Sta   $06
          Lda   $A4
          And   #$00F0
          Ora   #$FF06
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$6056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00F0
          Ora   #$6F06
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$5066
          Sta   $06
          Lda   $A4
          And   #$00F0
          Ora   #$6606
          Sta   $A4
          Lda   #$6666
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$5500
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0055
          Sta   $02
          Lda   $04
          And   #$0FF0
          Ora   #$6006
          Sta   $04
          Lda   $06
          And   #$00F0
          Ora   #$6606
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$6505
          Sta   $A0
          Lda   #$6555
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$605F
          Sta   $A4
          Lda   $A6
          And   #$00FF
          Ora   #$6600
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5605
          Sta   $00
          Lda   #$5556
          Sta   $02
          Lda   #$665F
          Sta   $04
          Lda   #$F55F
          Sta   $A0
          Lda   #$5565
          Sta   $A2
          Lda   #$F655
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0060
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$565F
          Sta   $00
          Lda   #$5556
          Sta   $02
          Lda   #$F655
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$6066
          Sta   $06
          Lda   #$6565
          Sta   $A0
          Lda   #$6555
          Sta   $A2
          Lda   #$F656
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5556
          Sta   $00
          Lda   #$5655
          Sta   $02
          Lda   #$FF65
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0060
          Sta   $06
          Lda   #$6565
          Sta   $A0
          Lda   #$6555
          Sta   $A2
          Lda   #$5F56
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0060
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Lda   #$5565
          Sta   $02
          Lda   #$5F55
          Sta   $04
          Lda   #$56FF
          Sta   $A0
          Lda   #$5556
          Sta   $A2
          Lda   #$FF55
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF6F
          Sta   $00
          Lda   #$6F55
          Sta   $02
          Lda   #$F6FF
          Sta   $04
          Lda   #$6F66
          Sta   $A0
          Lda   #$FFFF
          Sta   $A2
          Lda   #$66F6
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0F00
          Ora   #$6066
          Sta   $00
          Lda   $02
          And   #$F0FF
          Ora   #$0600
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$6066
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$6606
          Sta   $A0
          Lda   $A2
          And   #$00FF
          Ora   #$6600
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0066
          Sta   $A4
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
KoopaGL2  entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0015'               ;Hauteur
          dc    i2'$000A'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $A0
          And   #$00FF
          Ora   #$FF00
          Sta   $A0
          Lda   $A2
          And   #$FF0F
          Ora   #$00F0
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$FF00
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F6
          Sta   $02
          Lda   $A0
          And   #$00F0
          Ora   #$5F06
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$60F6
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5F06
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$60F6
          Sta   $02
          Lda   $A0
          And   #$00F0
          Ora   #$5F06
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$60F6
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6F66
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$6066
          Sta   $02
          Lda   #$6665
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$6066
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6666
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0066
          Sta   $02
          Lda   $04
          And   #$00F0
          Ora   #$5505
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0055
          Sta   $06
          Lda   $A0
          And   #$0F00
          Ora   #$6066
          Sta   $A0
          Lda   $A2
          And   #$F000
          Ora   #$0566
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$5056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FF00
          Ora   #$0066
          Sta   $00
          Lda   $02
          And   #$F000
          Ora   #$0566
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   #$5565
          Sta   $06
          Lda   $A0
          And   #$F000
          Ora   #$0666
          Sta   $A0
          Lda   #$556F
          Sta   $A2
          Lda   #$5655
          Sta   $A4
          Lda   #$F55F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0606
          Sta   $00
          Lda   #$556F
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   #$F565
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0600
          Sta   $A0
          Lda   #$656F
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   #$5656
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$6600
          Sta   $00
          Lda   #$56FF
          Sta   $02
          Lda   #$5565
          Sta   $04
          Lda   #$6555
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0600
          Sta   $A0
          Lda   #$65F5
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   #$5656
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$55F5
          Sta   $02
          Lda   #$5655
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   #$55FF
          Sta   $A2
          Lda   #$6555
          Sta   $A4
          Lda   #$FF65
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$00F0
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0600
          Sta   $00
          Lda   #$FF6F
          Sta   $02
          Lda   #$55F6
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$6600
          Sta   $A0
          Lda   #$6F66
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Lda   #$66F6
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6606
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0066
          Sta   $02
          Lda   $06
          And   #$00F0
          Ora   #$6606
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0060
          Sta   $08
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
KoopaGL1  entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0016'               ;Hauteur
          dc    i2'$000A'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $02
          And   #$FF0F
          Ora   #$00F0
          Sta   $02
          Lda   $A0
          And   #$F0FF
          Ora   #$0F00
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$6F00
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   $A0
          And   #$00FF
          Ora   #$6500
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$60FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6506
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$60FF
          Sta   $02
          Lda   $A0
          And   #$00F0
          Ora   #$6506
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$60FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6605
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$60F6
          Sta   $02
          Lda   #$6666
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$6066
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0F00
          Ora   #$6066
          Sta   $00
          Lda   $02
          And   #$0FF0
          Ora   #$6006
          Sta   $02
          Lda   $04
          And   #$00FF
          Ora   #$5500
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0055
          Sta   $06
          Lda   $A0
          And   #$FF00
          Ora   #$0066
          Sta   $A0
          Lda   $A2
          And   #$00F0
          Ora   #$F506
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$5056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F566
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$5065
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0600
          Sta   $A0
          Lda   #$556F
          Sta   $A2
          Lda   #$5655
          Sta   $A4
          Lda   #$F55F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6606
          Sta   $00
          Lda   #$556F
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   #$F565
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$6600
          Sta   $A0
          Lda   #$656F
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   #$5656
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0600
          Sta   $00
          Lda   #$56FF
          Sta   $02
          Lda   #$5565
          Sta   $04
          Lda   #$6555
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0600
          Sta   $A0
          Lda   #$65F5
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   #$5656
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$55F5
          Sta   $02
          Lda   #$5655
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   #$55FF
          Sta   $A2
          Lda   #$6555
          Sta   $A4
          Lda   #$FF65
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF6F
          Sta   $02
          Lda   #$55F6
          Sta   $04
          Lda   #$F6FF
          Sta   $06
          Lda   #$6F66
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Lda   #$66F6
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$6606
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0060
          Sta   $04
          Lda   $06
          And   #$00F0
          Ora   #$6606
          Sta   $06
          Lda   $A2
          And   #$00FF
          Ora   #$6600
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0066
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$6066
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
flatGB    entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0006'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$4404
          Mk4   $0004,$0F00,$4044
          Mk4   $00A0,$F0FF,$0100
          Mk4   $00A6,$FF0F,$0010
          Mk4   $0140,$00F0,$4B04
          Mk4   $0146,$0F00,$40B4
          Mk4   $0280,$00FF,$1100
          Mk4   $0286,$FF00,$0011
          Mk4   $0320,$00F0,$1101
          Mk4   $0326,$0F00,$1011
          Lda   #$4444
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Lda   #$1111
          Sta   $0142,Y
          Sta   $0144,Y
          Lda   #$4B44
          Sta   $01E0,Y
          Lda   #$B4BB
          Sta   $01E2,Y
          Lda   #$BB4B
          Sta   $01E4,Y
          Lda   #$44B4
          Sta   $01E6,Y
          Lda   #$DD1D
          Sta   $0282,Y
          Lda   #$11DD
          Sta   $0284,Y
          Lda   #$DD11
          Sta   $0322,Y
          Lda   #$11D1
          Sta   $0324,Y
          Plb
          Cli
          Rtl
flatGR    entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0006'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$CC0C
          Mk4   $0004,$0F00,$C0CC
          Mk4   $00A0,$F0FF,$0100
          Mk4   $00A6,$FF0F,$0010
          Mk4   $0140,$00F0,$C60C
          Mk4   $0146,$0F00,$C06C
          Mk4   $0280,$00FF,$1100
          Mk4   $0286,$FF00,$0011
          Mk4   $0320,$00F0,$1101
          Mk4   $0326,$0F00,$1011
          Lda   #$CCCC
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Lda   #$1111
          Sta   $0142,Y
          Sta   $0144,Y
          Lda   #$C6CC
          Sta   $01E0,Y
          Lda   #$6C66
          Sta   $01E2,Y
          Lda   #$66C6
          Sta   $01E4,Y
          Lda   #$CC6C
          Sta   $01E6,Y
          Lda   #$8818
          Sta   $0282,Y
          Lda   #$1188
          Sta   $0284,Y
          Lda   #$8811
          Sta   $0322,Y
          Lda   #$1181
          Sta   $0324,Y
          Plb
          Cli
          Rtl
GoombaR2  entry
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
          Lda   $02
          And   #$00FF
          Ora   #$CC00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00CC
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$CC0C
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$C0CC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$C100
          Sta   $A0
          Lda   #$CC1C
          Sta   $A2
          Lda   #$C1CC
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$001C
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$CC0C
          Sta   $00
          Lda   #$CC81
          Sta   $02
          Lda   #$18CC
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$C0CC
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$CC0C
          Sta   $A0
          Lda   #$1181
          Sta   $A2
          Lda   #$1811
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$C0CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCCC
          Sta   $00
          Lda   #$8C81
          Sta   $02
          Lda   #$18C8
          Sta   $04
          Lda   #$CCCC
          Sta   $06
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$CC0C
          Sta   $00
          Lda   #$88C8
          Sta   $02
          Lda   #$8C88
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$C0CC
          Sta   $06
          Lda   #$8888
          Sta   $A2
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1100
          Sta   $00
          Lda   #$8888
          Sta   $02
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$1101
          Sta   $A0
          Lda   #$1811
          Sta   $A2
          Lda   #$1188
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0010
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1100
          Sta   $00
          Lda   #$1111
          Sta   $02
          Lda   $04
          And   #$00F0
          Ora   #$1101
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl

GoombaR1  entry
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
          Lda   $02
          And   #$00FF
          Ora   #$CC00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00CC
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$CC0C
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$C0CC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$C100
          Sta   $A0
          Lda   #$CC1C
          Sta   $A2
          Lda   #$C1CC
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$001C
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$CC0C
          Sta   $00
          Lda   #$CC81
          Sta   $02
          Lda   #$18CC
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$C0CC
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$CC0C
          Sta   $A0
          Lda   #$1181
          Sta   $A2
          Lda   #$1811
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$C0CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCCC
          Sta   $00
          Lda   #$8C81
          Sta   $02
          Lda   #$18C8
          Sta   $04
          Lda   #$CCCC
          Sta   $06
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$CC0C
          Sta   $00
          Lda   #$88C8
          Sta   $02
          Lda   #$8C88
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$C0CC
          Sta   $06
          Lda   #$8888
          Sta   $A2
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0011
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0100
          Sta   $A0
          Lda   #$8811
          Sta   $A2
          Lda   #$1181
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$1011
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$0F00
          Ora   #$1011
          Sta   $02
          Lda   #$1111
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0011
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
GoombaB2  entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$000D'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$4404
          Mk4   $0004,$0F00,$4044
          Mk4   $0140,$F0FF,$0400
          Mk4   $0146,$FF0F,$0040
          Mk4   $01E0,$00FF,$1100
          Mk4   $01E6,$FF00,$0011
          Mk4   $0280,$00F0,$4B04
          Mk4   $0286,$0F00,$40B4
          Mk4   $0500,$00F0,$4404
          Mk4   $0506,$0F00,$4044
          Mk4   $0640,$00FF,$1100
          Mk4   $06E0,$00F0,$1101
          Mk4   $0780,$00FF,$1100
          Mk4   $0786,$0F00,$1011
          Lda   #$4444
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0142,Y
          Sta   $0144,Y
          Sta   $0460,Y
          Sta   $0462,Y
          Sta   $0464,Y
          Sta   $0466,Y
          Lda   #$4414
          Sta   $01E2,Y
          Lda   #$4144
          Sta   $01E4,Y
          Lda   #$4411
          Sta   $0282,Y
          Lda   #$1144
          Sta   $0284,Y
          Lda   #$4B44
          Sta   $0320,Y
          Sta   $03C0,Y
          Lda   #$1111
          Sta   $0322,Y
          Sta   $0324,Y
          Sta   $06E6,Y
          Lda   #$44B4
          Sta   $0326,Y
          Sta   $03C6,Y
          Lda   #$B4BB
          Sta   $03C2,Y
          Lda   #$BB4B
          Sta   $03C4,Y
          Lda   #$DD44
          Sta   $0502,Y
          Lda   #$44DD
          Sta   $0504,Y
          Lda   #$DDDD
          Sta   $05A2,Y
          Sta   $05A4,Y
          Sta   $0644,Y
          Lda   #$DD11
          Sta   $0642,Y
          Lda   #$1D11
          Sta   $06E2,Y
          Sta   $0782,Y
          Lda   #$11DD
          Sta   $06E4,Y
          Lda   #$11D1
          Sta   $0784,Y
          Plb
          Cli
          Rtl
GoombaB1  entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$000D'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$4404
          Mk4   $0004,$0F00,$4044
          Mk4   $0140,$F0FF,$0400
          Mk4   $0146,$FF0F,$0040
          Mk4   $01E0,$00FF,$1100
          Mk4   $01E6,$FF00,$0011
          Mk4   $0280,$00F0,$4B04
          Mk4   $0286,$0F00,$40B4
          Mk4   $0500,$00F0,$4404
          Mk4   $0506,$0F00,$4044
          Mk4   $0646,$0F00,$1011
          Mk4   $06E0,$00F0,$1101
          Mk4   $0780,$00FF,$1100
          Mk4   $0786,$0F00,$1011
          Lda   #$4444
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0142,Y
          Sta   $0144,Y
          Sta   $0460,Y
          Sta   $0462,Y
          Sta   $0464,Y
          Sta   $0466,Y
          Lda   #$4414
          Sta   $01E2,Y
          Lda   #$4144
          Sta   $01E4,Y
          Lda   #$4411
          Sta   $0282,Y
          Lda   #$1144
          Sta   $0284,Y
          Lda   #$4B44
          Sta   $0320,Y
          Sta   $03C0,Y
          Lda   #$1111
          Sta   $0322,Y
          Sta   $0324,Y
          Sta   $06E6,Y
          Lda   #$44B4
          Sta   $0326,Y
          Sta   $03C6,Y
          Lda   #$B4BB
          Sta   $03C2,Y
          Lda   #$BB4B
          Sta   $03C4,Y
          Lda   #$DD44
          Sta   $0502,Y
          Lda   #$44DD
          Sta   $0504,Y
          Lda   #$DDDD
          Sta   $05A2,Y
          Sta   $05A4,Y
          Sta   $0642,Y
          Lda   #$11DD
          Sta   $0644,Y
          Lda   #$DD11
          Sta   $06E2,Y
          Lda   #$11D1
          Sta   $06E4,Y
          Sta   $0784,Y
          Lda   #$1D11
          Sta   $0782,Y
          Plb
          Cli
          Rtl
rBrickPiece entry
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
          Mk4   $0000,$00F0,$CC0C
          Mk4   $00A2,$FF0F,$00C0
          Mk4   $0142,$FF00,$001C
          Mk4   $01E2,$FF00,$001C
          Mk4   $0282,$FF00,$00CC
          Mk4   $0320,$00F0,$110C
          Mk4   $0322,$FF0F,$00C0
          Mk4   $03C0,$00FF,$CC00
          Lda   #$1CCC
          Sta   |$00A0,Y
          Lda   #$1CC1
          Sta   $0140,Y
          Lda   #$C1CC
          Sta   $01E0,Y
          Lda   #$CCC1
          Sta   $0280,Y
          Plb
          Cli
          Rtl
mushroom  entry
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
          Lda   $02
	 And   #$00FF
          Ora   #$6600
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$0066
          Sta   $04
          Lda   #$6666
          Sta   $A2
          Lda   #$CC6C
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0600
          Sta   $00
          Lda   #$6666
          Sta   $02
          Lda   #$CCCC
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$00C0
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$6600
          Sta   $A0
          Lda   #$6666
          Sta   $A2
          Lda   #$CC6C
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	 And   #$00F0
          Ora   #$6C06
          Sta   $00
          Lda   #$C6CC
          Sta   $02
          Lda   #$6666
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$6066
          Sta   $06
          Lda   #$CC66
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Lda   #$6666
          Sta   $A4
          Lda   #$CCCC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
	 Lda   #$CC66
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Lda   #$6C66
          Sta   $04
          Lda   #$CCCC
          Sta   $06
          Lda   #$6C66
          Sta   $A0
          Lda   #$C6CC
          Sta   $A2
          Lda   #$6666
          Sta   $A4
          Lda   #$CCCC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6606
          Sta   $00
          Lda   #$6666
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$6066
          Sta   $06
          Lda   #$FFCF
          Sta   $A2
          Lda   #$FCFF
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $02
          Sta   $04
          Sta   $A2
          Lda   #$FFFC
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$FF0F
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$F0CF
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
OneUp     entry
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
          Lda   $02
          And   #$00FF
          Ora   #$AA00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00AA
          Sta   $04
          Lda   #$AAAA
          Sta   $A2
          Lda   #$55A5
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0A00
          Sta   $00
          Lda   #$AAAA
          Sta   $02
          Lda   #$5555
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0050
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$AA00
          Sta   $A0
          Lda   #$AAAA
          Sta   $A2
          Lda   #$55A5
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00AA
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$A50A
          Sta   $00
          Lda   #$5A55
          Sta   $02
          Lda   #$AAAA
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$A0AA
          Sta   $06
          Lda   #$55AA
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$AAAA
          Sta   $A4
          Lda   #$5555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$55AA
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$A5AA
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   #$A5AA
          Sta   $A0
          Lda   #$5A55
          Sta   $A2
          Lda   #$AAAA
          Sta   $A4
          Lda   #$5555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$AA0A
          Sta   $00
          Lda   #$AAAA
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$A0AA
          Sta   $06
          Lda   #$FF5F
          Sta   $A2
          Lda   #$F5FF
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $02
          Sta   $04
          Sta   $A2
          Lda   #$FFF5
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$FF0F
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$F05F
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
FireFlower1 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0010'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
	lda	$02
	bne	*+7
          Lda   #$6666
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$6666
          Sta   $04
          Lda   $A0
	bne	*+7
          Lda   #$6600
          Sta   $A0
	lda	$a2
	bne	*+7
          Lda   #$6666
          Sta   $A2
	lda	$a4
	bne	*+7
	lda	#$6666
          Sta   $A4
          Lda   $A6
	bne	*+7
          Lda   #$0066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Lda   #$6606
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$CCCC
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$CCCC
          Sta   $04
          Lda   $06
	bne	*+7
          Lda   #$6066
          Sta   $06
	lda	$A0
	bne	*+7
          Lda   #$CC66
          Sta   $A0
	lda	$A2
	bne	*+7
          Lda   #$FFCF
          Sta   $A2
	lda	$A4
	bne	*+7
          Lda   #$FCFF
          Sta   $A4
	lda	$A6
	bne	*+7
          Lda   #$66CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
	lda	$00
	bne	*+7
          Lda   #$CC66
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$FFCF
          Sta   $02
	lda	$04
	bne	*+7
          Lda   #$FCFF
          Sta   $04
	lda	$06
	bne	*+7
          Lda   #$66CC
          Sta   $06
          Lda   $A0
	bne	*+7
          Lda   #$6606
          Sta   $A0
	lda	$a2
	bne	*+7
          Lda   #$CCCC
          Sta   $A2
	lda	$a4
	bne	*+7
	lda	#$CCCC
          Sta   $A4
          Lda   $A6
	bne	*+7
          Lda   #$6066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Lda   #$6600
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$6666
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$6666
          Sta   $04
          Lda   $06
	bne	*+7
          Lda   #$0066
          Sta   $06
	lda	$a2
	bne	*+7
          Lda   #$6666
          Sta   $A2
	lda	$a4
	bne	*+7
	lda	#$6666
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
	bne	*+7
          Lda   #$0500
          Sta   $02
          Lda   $04
	bne	*+7
          Lda   #$0050
          Sta   $04
          Lda   $A0
	bne	*+7
          Lda   #$5055
          Sta   $A0
          Lda   $A2
	bne	*+7
          Lda   #$0500
          Sta   $A2
          Lda   $A4
	bne	*+7
          Lda   #$0050
          Sta   $A4
          Lda   $A6
	bne	*+7
          Lda   #$5505
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Lda   #$5505
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0500
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$0050
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$5055
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$5505
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0550
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$0550
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$5055
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5500
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0555
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$5550
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0055
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$5500
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0555
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5550
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0055
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$0500
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$5555
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$5555
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0050
          Sta   $06
          Lda   $A2
	bne	*+7
          Ora   #$5500
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$0055
          Sta   $A4
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
FireFlower2 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0010'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
	lda	$02
	bne	*+7
          Lda   #$FFFF
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$ffff
          Sta   $04
          Lda   $A0
	bne	*+7
          Ora   #$FF00
          Sta   $A0
	lda	$a2
	bne	*+7
          Lda   #$FFFF
          Sta   $A2
	lda	$a4
	bne	*+7
	lda	#$ffff
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$00FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$FF0F
          Sta   $00
   	lda	$02
	bne	*+7
          Lda   #$6666
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$6666
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$F0FF
          Sta   $06
	lda	$a0
	bne	*+7
          Lda   #$66FF
          Sta   $A0
	lda	$a2
	bne	*+7
          Lda   #$CC6C
          Sta   $A2
	lda	$a4
	bne	*+7
          Lda   #$C6CC
          Sta   $A4
	lda	$a6
	bne	*+7
          Lda   #$FF66
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
	lda	$00
	bne	*+7
          Lda   #$66FF
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$CC6C
          Sta   $02
	lda	$04
	bne	*+7
          Lda   #$C6CC
          Sta   $04
	lda	$06
	bne	*+7
          Lda   #$FF66
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$FF0F
          Sta   $A0
	lda	$a2
	bne	*+7
          Lda   #$6666
          Sta   $A2
	lda	$a4
	bne	*+7
	lda	#$6666
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$F0FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$FF00
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$FFFF
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$ffff
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$00FF
          Sta   $06
	lda	$a2
	bne	*+7
          Lda   #$FFFF
          Sta   $A2
	lda	$a4
	bne	*+7
	lda	#$ffff
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
	bne	*+7
          Ora   #$0500
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$0050
          Sta   $04
          Lda   $A0
	bne	*+7
          Ora   #$5055
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0500
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$0050
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$5505
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5505
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0500
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$0050
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$5055
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$5505
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0550
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$0550
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$5055
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5500
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0555
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$5550
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0055
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$5500
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0555
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5550
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0055
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$0500
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$5555
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$5555
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0050
          Sta   $06
          Lda   $A2
	bne	*+7
          Ora   #$5500
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$0055
          Sta   $A4
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
             
Star1     entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$000D'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$F0FF,$0600
          Mk4   $0004,$FF0F,$0060
          Mk4   $00A2,$00FF,$6900
          Mk4   $00A4,$FF00,$0096
          Mk4   $0142,$00FF,$6900
          Mk4   $0144,$FF00,$0096
          Mk4   $01E2,$00F0,$9906
          Mk4   $01E4,$0F00,$6099
          Mk4   $0286,$0F00,$6066
          Mk4   $0320,$00F0,$9906
          Mk4   $0326,$0F00,$6099
          Mk4   $03C0,$00FF,$6900
          Mk4   $03C6,$FF00,$0096
          Mk4   $0460,$F0FF,$0600
          Mk4   $0466,$FF0F,$0060
          Mk4   $0500,$F0FF,$0600
          Mk4   $0506,$FF0F,$0060
          Mk4   $05A0,$00FF,$6900
          Mk4   $05A6,$FF00,$0096
          Mk4   $0640,$00FF,$6900
          Mk4   $0642,$FF00,$0066
          Mk4   $0644,$00FF,$6600
          Mk4   $0646,$FF00,$0096
          Mk4   $06E0,$00F0,$6606
          Mk4   $06E6,$0F00,$6066
          Mk4   $0780,$FFF0,$0006
          Mk4   $0786,$0FFF,$6000
          Lda   #$6666
          Sta   $0280,Y
          Lda   #$1969
          Sta   $0282,Y
          Lda   #$9691
          Sta   $0284,Y
          Lda   #$1999
          Sta   $0322,Y
          Sta   $03C2,Y
          Lda   #$9991
          Sta   $0324,Y
          Sta   $03C4,Y
          Lda   #$9999
          Sta   $0462,Y
          Sta   $0464,Y
          Sta   $0502,Y
          Sta   $0504,Y
          Lda   #$6699
          Sta   $05A2,Y
          Lda   #$9966
          Sta   $05A4,Y
          Plb
          Cli
          Rtl
Star2     entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$000D'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$F0FF,$0900
          Mk4   $0004,$FF0F,$0090
          Mk4   $00A2,$00FF,$9600
          Mk4   $00A4,$FF00,$0069
          Mk4   $0142,$00FF,$9600
          Mk4   $0144,$FF00,$0069
          Mk4   $01E2,$00F0,$6609
          Mk4   $01E4,$0F00,$9066
          Mk4   $0320,$00F0,$6609
          Mk4   $0326,$0F00,$9066
          Mk4   $03C0,$00FF,$9600
          Mk4   $03C6,$FF00,$0069
          Mk4   $0460,$F0FF,$0900
          Mk4   $0466,$FF0F,$0090
          Mk4   $0500,$F0FF,$0900
          Mk4   $0506,$FF0F,$0090
          Mk4   $05A0,$00FF,$9600
          Mk4   $05A6,$FF00,$0069
          Mk4   $0640,$00FF,$9600
          Mk4   $0642,$FF00,$0099
          Mk4   $0644,$00FF,$9900
          Mk4   $0646,$FF00,$0069
          Mk4   $06E0,$00F0,$9909
          Mk4   $06E6,$0F00,$9099
          Mk4   $0780,$FFF0,$0009
          Mk4   $0786,$0FFF,$9000
          Lda   #$9999
          Sta   $0280,Y
          Sta   $0286,Y
          Lda   #$1696
          Sta   $0282,Y
          Lda   #$6961
          Sta   $0284,Y
          Lda   #$1666
          Sta   $0322,Y
          Sta   $03C2,Y
          Lda   #$6661
          Sta   $0324,Y
          Sta   $03C4,Y
          Lda   #$6666
          Sta   $0462,Y
          Sta   $0464,Y
          Sta   $0502,Y
          Sta   $0504,Y
          Lda   #$9966
          Sta   $05A2,Y
          Lda   #$6699
          Sta   $05A4,Y
          Plb
          Cli
          Rtl
explode2  entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$000D'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$CC0C
          Mk4   $0004,$0F00,$C0CC
          Mk4   $00A0,$F0FF,$0C00
          Mk4   $00A6,$FF0F,$00C0
          Mk4   $0140,$00FF,$CC00
          Mk4   $0146,$FF00,$006C
          Mk4   $01E0,$00F0,$C60C
          Mk4   $01E6,$0F00,$C06C
          Mk4   $0280,$00F0,$660C
          Mk4   $0500,$00F0,$C60C
          Mk4   $0506,$0F00,$C06C
          Mk4   $05A0,$00F0,$C60C
          Mk4   $05A6,$0F00,$C06C
          Mk4   $0640,$00FF,$CC00
          Mk4   $0646,$FF00,$00CC
          Mk4   $06E0,$00FF,$CC00
          Mk4   $06E6,$FF0F,$00C0
          Mk4   $0782,$00F0,$CC0C
          Mk4   $0784,$0F00,$C0CC
          Lda   #$66CC
          Sta   |$00A2,Y
          Sta   $0320,Y
          Sta   $03C0,Y
          Sta   $0460,Y
          Lda   #$CC66
          Sta   |$00A4,Y
          Sta   $0286,Y
          Sta   $0326,Y
          Sta   $03C6,Y
          Sta   $06E4,Y
          Lda   #$9966
          Sta   $0142,Y
          Sta   $05A2,Y
          Lda   #$9696
          Sta   $0144,Y
          Lda   #$9F69
          Sta   $01E2,Y
          Lda   #$96F9
          Sta   $01E4,Y
          Lda   #$FF99
          Sta   $0282,Y
          Sta   $0322,Y
          Lda   #$999F
          Sta   $0284,Y
          Lda   #$F9F9
          Sta   $0324,Y
          Lda   #$FF9F
          Sta   $03C2,Y
          Lda   #$F9FF
          Sta   $03C4,Y
          Lda   #$F969
          Sta   $0462,Y
          Lda   #$99FF
          Sta   $0464,Y
          Lda   #$CC6C
          Sta   $0466,Y
          Lda   #$9F99
          Sta   $0502,Y
          Lda   #$99F9
          Sta   $0504,Y
          Lda   #$6699
          Sta   $05A4,Y
          Lda   #$6666
          Sta   $0642,Y
          Sta   $0644,Y
          Lda   #$C6CC
          Sta   $06E2,Y
          Plb
          Cli
          Rtl
explode1  entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$000D'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0142,$00FF,$CC00
          Mk4   $0144,$FF0F,$00C0
          Mk4   $01E2,$00F0,$660C
          Mk4   $01E4,$FF00,$006C
          Mk4   $0282,$00F0,$690C
          Mk4   $0284,$0F00,$C096
          Mk4   $0464,$0F00,$6099
          Mk4   $0502,$00F0,$C60C
          Mk4   $0504,$0F00,$C096
          Mk4   $05A2,$00FF,$CC00
          Mk4   $05A4,$FF00,$0066
          Lda   #$9FC6
          Sta   $0322,Y
          Lda   #$6CF9
          Sta   $0324,Y
          Sta   $03C4,Y
          Lda   #$9F66
          Sta   $03C2,Y
          Lda   #$69C6
          Sta   $0462,Y
          Plb
          Cli
          Rtl
fireball4 entry
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
          Mk4   $0000,$00F0,$CC0C
          Mk4   $0002,$FF00,$00CC
          Mk4   $00A0,$000F,$C6C0
          Mk4   $00A2,$0F00,$C066
          Mk4   $0140,$00F0,$660C
          Mk4   $01E0,$000F,$CCC0
          Mk4   $0280,$F0FF,$0C00
          Mk4   $0320,$F0FF,$0C00
          Mk4   $03C2,$0F00,$C0CC
          Lda   #$CCF6
          Sta   $0142,Y
          Lda   #$6C6F
          Sta   $01E2,Y
          Sta   $0282,Y
          Lda   #$CCC6
          Sta   $0322,Y
          Plb
          Cli
          Rtl
fireball3 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0008'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0000,$00FF,$CC00
          Mk4   $0002,$FF00,$00CC
          Mk4   $00A0,$00F0,$C60C
          Mk4   $00A2,$0F00,$C0F6
          Mk4   $0142,$0F00,$C0FC
          Mk4   $01E2,$0F00,$C06C
          Mk4   $0282,$FF00,$00CC
          Mk4   $0320,$00F0,$6C0C
          Mk4   $03C0,$00FF,$CC00
          Mk4   $03C2,$0F0F,$C0C0
          Mk4   $0460,$F0FF,$0C00
          Mk4   $0462,$FFF0,$000C
          Lda   #$FFC6
          Sta   $0140,Y
          Lda   #$F6C6
          Sta   $01E0,Y
          Lda   #$6CC6
          Sta   $0280,Y
          Plb
          Cli
          Rtl
fireball2 entry
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
          Mk4   $0000,$00F0,$CC0C
          Mk4   $00A2,$FF0F,$00C0
          Mk4   $0142,$FF0F,$00C0
          Mk4   $01E2,$F000,$0CCC
          Mk4   $0282,$0F00,$C066
          Mk4   $0320,$00F0,$660C
          Mk4   $0322,$F000,$0C6C
          Mk4   $03C0,$00FF,$CC00
          Mk4   $03C2,$0F00,$C0CC
          Lda   #$6CCC
          Sta   |$00A0,Y
          Lda   #$F6C6
          Sta   $0140,Y
          Sta   $01E0,Y
          Lda   #$6FCC
          Sta   $0280,Y
          Plb
          Cli
          Rtl

GShell2   entry
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
          Lda   $02
          And   #$00F0
          Ora   #$5506
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$6055
          Sta   $04
          Lda   #$6655
          Sta   $A2
          Lda   #$5566
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0500
          Sta   $00
          Lda   #$5556
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0050
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0500
          Sta   $A0
          Lda   #$5565
          Sta   $A2
          Lda   #$5655
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0050
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$5600
          Sta   $00
          Lda   #$5555
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0065
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$6500
          Sta   $A0
          Lda   #$5565
          Sta   $A2
          Lda   #$5655
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5505
          Sta   $00
          Lda   #$6656
          Sta   $02
          Lda   #$6566
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$5055
          Sta   $06
          Lda   #$F5FF
          Sta   $A0
          Lda   #$5556
          Sta   $A2
          Lda   #$6555
          Sta   $A4
          Lda   #$FF5F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   #$5565
          Sta   $02
          Lda   #$5655
          Sta   $04
          Lda   #$FFFF
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0F00
          Sta   $A0
          Lda   #$55F5
          Sta   $A2
          Lda   #$5F55
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$00F0
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$6600
          Sta   $00
          Lda   #$55FF
          Sta   $02
          Lda   #$FF55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0066
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$6606
          Sta   $A0
          Lda   #$FF6F
          Sta   $A2
          Lda   #$F6FF
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$6066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6606
          Sta   $00
          Lda   $02
          And   #$00FF
          Ora   #$FF00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00FF
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$6066
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
GShell1   Entry
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
          Lda   $02
          And   #$00F0
          Ora   #$5506
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$6055
          Sta   $04
          Lda   #$6655
          Sta   $A2
          Lda   #$5566
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0500
          Sta   $00
          Lda   #$5556
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0050
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0500
          Sta   $A0
          Lda   #$5565
          Sta   $A2
          Lda   #$5655
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0050
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$5600
          Sta   $00
          Lda   #$5555
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0065
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$6500
          Sta   $A0
          Lda   #$5565
          Sta   $A2
          Lda   #$5655
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5505
          Sta   $00
          Lda   #$6656
          Sta   $02
          Lda   #$6566
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$5055
          Sta   $06
          Lda   #$F5FF
          Sta   $A0
          Lda   #$5556
          Sta   $A2
          Lda   #$6555
          Sta   $A4
          Lda   #$FF5F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   #$5565
          Sta   $02
          Lda   #$5655
          Sta   $04
          Lda   #$FFFF
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0F00
          Sta   $A0
          Lda   #$55F5
          Sta   $A2
          Lda   #$5F55
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$00F0
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$55FF
          Sta   $02
          Lda   #$FF55
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$FF0F
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$F0FF
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
          Ora   #$00FF
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
PPlantG2  entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0017'               ;Hauteur
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
	bne	*+7
          Ora   #$5000
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$0005
          Sta   $04
          Lda   $A2
	bne	*+7
          Ora   #$6005
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5006
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
	bne	*+7
          Ora   #$5055
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$5505
          Sta   $04
          Lda   $A2
	bne	*+7
          Ora   #$5065
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5605
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$0500
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$6055
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$5506
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0050
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$0500
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$5055
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5505
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0050
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$6500
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$5065
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$5605
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0056
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$5500
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$5055
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5505
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0055
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5500
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$5056
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$6505
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0055
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$5600
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$5055
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5505
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0065
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5500
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$6055
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$5506
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0055
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$5600
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$5055
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5505
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0065
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$0500
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$5056
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$6505
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0050
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$0500
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$5055
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$5505
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0050
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
	bne	*+7
          Ora   #$6065
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$5606
          Sta   $04
          Lda   $A2
	bne	*+7
          Ora   #$5000
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$0005
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$0066
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0600
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$0060
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$6600
          Sta   $06
	lda	$A0
	bne	*+7
          Lda   #$6665
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0600
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$0060
          Sta   $A4
	lda	$A6
	bne	*+7
          Lda   #$5666
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5606
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0660
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$0660
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$6065
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$6506
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0666
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$6660
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$6056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$6600
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0656
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$6560
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0066
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$6600
          Sta   $A0
	lda	$A2
	bne	*+7
          Lda   #$6665
          Sta   $A2
	lda	$A4
	bne	*+7
          Lda   #$5666
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$0600
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$6666
          Sta   $02
	lda	$04
	bne	*+7
	lda	#$6666
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0060
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
PPlantG1  entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0016'               ;Hauteur
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
	bne	*+7
          Ora   #$5000
          Sta   $00
	 Lda   $06
	bne	*+7
          Ora   #$0005
          Sta   $06
	 Lda   $A0
	bne	*+7
          Ora   #$6F05
          Sta   $A0
     	Lda   $A2
	bne	*+7
          Ora   #$00F0
          Sta   $A2
	 Lda   $A4
	bne	*+7
          Ora   #$0F00
          Sta   $A4
	 Lda   $A6
	bne	*+7
          Ora   #$50F6
          Sta   $A6
	 Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5F05
          Sta   $00
	 Lda   $06
	bne	*+7
          Ora   #$50F5
          Sta   $06
	 Lda   $A0
	bne	*+7
          Ora   #$5506
          Sta   $A0
	 Lda   $A2
	bne	*+7
          Ora   #$00FF
          Sta   $A2
	 Lda   $A4
	bne	*+7
          Ora   #$FF00
          Sta   $A4
	 Lda   $A6
	bne	*+7
          Ora   #$6055
          Sta   $A6
	 Tdc
          Adc   #$0140
          Tcd
	lda	$00
	bne	*+7
          Lda   #$5655
          Sta   $00
	 Lda   $02
	bne	*+7
          Ora   #$00F0
          Sta   $02
	 Lda   $04
	bne	*+7
          Ora   #$0F00
          Sta   $04
	lda	$06
	bne	*+7
          Lda   #$5565
          Sta   $06
	lda	$A0
	bne	*+7
	lda	#$5565
          Sta   $A0
	 Lda   $A2
	bne	*+7
          Ora   #$F05F
          Sta   $A2
	 Lda   $A4
	bne	*+7
          Ora   #$F50F
          Sta   $A4
	lda	$A6
	bne	*+7
          Lda   #$5655
          Sta   $A6
	 Tdc
          Adc   #$0140
          Tcd
	lda	$00
	bne	*+7
          Lda   #$6555
          Sta   $00
	 Lda   $02
	bne	*+7
          Ora   #$005F
          Sta   $02
	 Lda   $04
	bne	*+7
          Ora   #$F500
          Sta   $04
	lda	$06
	bne	*+7
          Lda   #$5556
          Sta   $06
	lda	$A0
	bne	*+7
          Lda   #$5555
          Sta   $A0
	 Lda   $A2
	bne	*+7
          Ora   #$0050
          Sta   $A2
	 Lda   $A4
	bne	*+7
          Ora   #$0500
          Sta   $A4
	lda	$A6
	bne	*+7
          Lda   #$5555
          Sta   $A6
	 Tdc
          Adc   #$0140
          Tcd
	lda	$00
	bne	*+7
          Lda   #$5556
          Sta   $00
	 Lda   $02
	bne	*+7
          Ora   #$F055
          Sta   $02
	 Lda   $04
	bne	*+7
          Ora   #$550F
          Sta   $04
	lda	$06
	bne	*+7
          Lda   #$6555
          Sta   $06
	lda	$A0
	bne	*+7
          Lda   #$5555
          Sta   $A0
	 Lda   $A2
	bne	*+7
          Ora   #$F065
          Sta   $A2
	 Lda   $A4
	bne	*+7
          Ora   #$560F
          Sta   $A4
	lda	$A6
	bne	*+7
          Lda   #$5555
          Sta   $A6
	 Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5506
          Sta   $00
	 Lda   $02
	bne	*+7
          Ora   #$5055
          Sta   $02
	 Lda   $04
	bne	*+7
          Ora   #$5505
          Sta   $04
	 Lda   $06
	bne	*+7
          Ora   #$6055
          Sta   $06
	 Lda   $A0
	bne	*+7
          Ora   #$5605
          Sta   $A0
	 Lda   $A2
	bne	*+7
          Ora   #$5055
          Sta   $A2
	 Lda   $A4
	bne	*+7
          Ora   #$5505
          Sta   $A4
	 Lda   $A6
	bne	*+7
          Ora   #$5065
          Sta   $A6
	 Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$5500
          Sta   $00
	 Lda   $02
	bne	*+7
          Ora   #$6055
          Sta   $02
	 Lda   $04
	bne	*+7
          Ora   #$5506
          Sta   $04
	 Lda   $06
	bne	*+7
          Ora   #$0055
          Sta   $06
	 Lda   $A0
	bne	*+7
          Ora   #$0500
          Sta   $A0
	lda	$A2
	bne	*+7
          Lda   #$5565
          Sta   $A2
	lda	$A4
	bne	*+7
          Lda   #$5655
          Sta   $A4
	 Lda   $A6
	bne	*+7
          Ora   #$0050
          Sta   $A6
	 Tdc
          Adc   #$0140
          Tcd
          Lda   $02
	bne	*+7
          Ora   #$6505
          Sta   $02
	 Lda   $04
	bne	*+7
          Ora   #$5056
          Sta   $04
	 Lda   $A0
	bne	*+7
          Ora   #$0066
          Sta   $A0
	 Lda   $A2
	bne	*+7
          Ora   #$0600
          Sta   $A2
	 Lda   $A4
	bne	*+7
          Ora   #$0060
          Sta   $A4
	 Lda   $A6
	bne	*+7
          Ora   #$6600
          Sta   $A6
    	Tdc
          Adc   #$0140
          Tcd
	lda	$00
	bne	*+7
          Lda   #$6665
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0600
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$0060
          Sta   $04
	lda	$06
	bne	*+7
          Lda   #$5666
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$5606
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0660
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$0660
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$6065
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$6506
          Sta   $00
          Lda   $02
	bne	*+7
          Ora   #$0666
          Sta   $02
          Lda   $04
	bne	*+7
          Ora   #$6660
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$6056
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$6600
          Sta   $A0
          Lda   $A2
	bne	*+7
          Ora   #$0656
          Sta   $A2
          Lda   $A4
	bne	*+7
          Ora   #$6560
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
	bne	*+7
          Ora   #$6600
          Sta   $00
	lda	$02
	bne	*+7
          Lda   #$6665
          Sta   $02
	lda	$04
	bne	*+7
          Lda   #$5666
          Sta   $04
          Lda   $06
	bne	*+7
          Ora   #$0066
          Sta   $06
          Lda   $A0
	bne	*+7
          Ora   #$0600
          Sta   $A0
	lda	$A2
	bne	*+7
          Lda   #$6666
          Sta   $A2
     	lda	$A4
	bne	*+7
	lda	#$6666
          Sta   $A4
          Lda   $A6
	bne	*+7
          Ora   #$0060
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl

fireball1 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0008'               ;Hauteur
          dc    i2'$0004'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0000,$F0F0,$0C0C
          Mk4   $00A0,$000F,$CCC0
          Mk4   $00A2,$FF0F,$00C0
          Mk4   $0140,$F0FF,$0C00
          Mk4   $0142,$FF00,$006C
          Mk4   $01E0,$00F0,$CC0C
          Mk4   $01E2,$0F00,$C066
          Mk4   $0282,$0F00,$C0F6
          Mk4   $0322,$0F00,$C0F6
          Mk4   $03C2,$FF00,$00CC
          Mk4   $0460,$00F0,$CC0C
          Mk4   $0462,$FF0F,$00C0
          Lda   #$66CC
          Sta   $0280,Y
          Lda   #$FFCC
          Sta   $0320,Y
          Lda   #$F6C6
          Sta   $03C0,Y
          Plb
          Cli
          Rtl
LakituR   Entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0016'               ;Hauteur
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
          And   #$00FF
          Ora   #$6600
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$6066
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$6606
          Sta   $A2
          Lda   #$6666
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5566
          Sta   $02
          Lda   #$5556
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0050
          Sta   $06
          Lda   #$FF65
          Sta   $A2
          Lda   #$FFF5
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00F5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0500
          Sta   $00
          Lda   #$FF65
          Sta   $02
          Lda   #$FFFF
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00F5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$5500
          Sta   $A0
          Lda   #$FF65
          Sta   $A2
          Lda   #$5F5F
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00F5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$5500
          Sta   $00
          Lda   #$FF65
          Sta   $02
          Lda   #$5F5F
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00F5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$5500
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0050
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5605
          Sta   $00
          Lda   #$5566
          Sta   $02
          Lda   #$6655
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$5065
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$6605
          Sta   $A0
          Lda   #$6566
          Sta   $A2
          Lda   #$6656
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$5066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6605
          Sta   $00
          Lda   #$6F66
          Sta   $02
          Lda   #$66F6
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$5066
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$F605
          Sta   $A0
          Lda   #$FF66
          Sta   $A2
          Lda   #$66FF
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$506F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$FF05
          Sta   $00
          Lda   #$FFFF
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$50FF
          Sta   $06
          Lda   #$FF5F
          Sta   $A0
          Lda   #$5FFF
          Sta   $A2
          Lda   #$FFF5
          Sta   $A4
          Lda   #$F5FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF5F
          Sta   $00
          Lda   #$5FFF
          Sta   $02
          Lda   #$FFF5
          Sta   $04
          Lda   #$F5FF
          Sta   $06
          Lda   #$FF5F
          Sta   $A0
          Lda   #$FFFF
          Sta   $A2
          Sta   $A4
          Lda   #$F5FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF5F
          Sta   $00
          Lda   #$FFFF
          Sta   $02
          Sta   $04
          Lda   #$F5FF
          Sta   $06
          Lda   #$5F5F
          Sta   $A0
          Lda   #$FFF5
          Sta   $A2
          Lda   #$5FFF
          Sta   $A4
          Lda   #$F5F5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$FF05
          Sta   $00
          Lda   #$55FF
          Sta   $02
          Lda   #$FF55
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$50FF
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$FF05
          Sta   $A0
          Lda   #$FFFF
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$50FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$5F00
          Sta   $00
          Lda   #$F5FF
          Sta   $02
          Lda   #$FF5F
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00F5
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0500
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$5055
          Sta   $A2
          Lda   $A4
          And   #$00F0
          Ora   #$5505
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0050
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
Flag      Entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$000C'               ;Hauteur
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
          Ora   #$FF0F
          Sta   $00
          Lda   #$FFFF
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$FF00
          Sta   $A0
          Lda   #$FFFF
          Sta   $A2
          Lda   #$11FF
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F01F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   #$FFFF
          Sta   $02
          Lda   #$F1F1
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0F1
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$FF0F
          Sta   $A2
          Lda   #$F1F1
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F0F1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$FF00
          Sta   $02
          Lda   #$11F1
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F011
          Sta   $06
          Lda   $A2
          And   #$F0FF
          Ora   #$0F00
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F0FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00F0
          Ora   #$FF0F
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A4
          And   #$00FF
          Ora   #$FF00
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F0FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A6
          And   #$0FF0
          Ora   #$F00F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
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
KoopaTroopGR2 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0016'               ;Hauteur
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
          And   #$F0FF
          Ora   #$0F00
          Sta   $04
          Lda   $A4
          And   #$00FF
          Ora   #$FF00
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$00F0
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$FF00
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00F6
          Sta   $06
          Lda   $A4
          And   #$00F0
          Ora   #$FF06
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00F0
          Ora   #$FF06
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$6056
          Sta   $06
          Lda   $A2
          And   #$0F00
          Ora   #$F0FF
          Sta   $A2
          Lda   $A4
          And   #$00F0
          Ora   #$FF06
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$6056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   #$FFF6
          Sta   $02
          Lda   $04
          And   #$00F0
          Ora   #$6F06
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$5066
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$FF00
          Sta   $A0
          Lda   #$6FFF
          Sta   $A2
          Lda   $A4
          And   #$00F0
          Ora   #$6606
          Sta   $A4
          Lda   #$6666
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$FF0F
          Sta   $00
          Lda   #$6FFF
          Sta   $02
          Lda   $04
          And   #$0FF0
          Ora   #$6006
          Sta   $04
          Lda   $06
          And   #$00F0
          Ora   #$6606
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$FF0F
          Sta   $A0
          Lda   #$FFFF
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$605F
          Sta   $A4
          Lda   $A6
          And   #$00FF
          Ora   #$6600
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   #$F5FF
          Sta   $02
          Lda   #$665F
          Sta   $04
          Lda   #$F5FF
          Sta   $A0
          Lda   #$55FF
          Sta   $A2
          Lda   #$F655
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0060
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$56FF
          Sta   $00
          Lda   #$5556
          Sta   $02
          Lda   #$F655
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$6066
          Sta   $06
          Lda   #$6565
          Sta   $A0
          Lda   #$6555
          Sta   $A2
          Lda   #$F656
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5556
          Sta   $00
          Lda   #$5655
          Sta   $02
          Lda   #$FF65
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0060
          Sta   $06
          Lda   #$6565
          Sta   $A0
          Lda   #$6555
          Sta   $A2
          Lda   #$5F56
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0060
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Lda   #$5565
          Sta   $02
          Lda   #$5F55
          Sta   $04
          Lda   #$56FF
          Sta   $A0
          Lda   #$5556
          Sta   $A2
          Lda   #$FF55
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF6F
          Sta   $00
          Lda   #$6F55
          Sta   $02
          Lda   #$F6FF
          Sta   $04
          Lda   #$6F66
          Sta   $A0
          Lda   #$FFFF
          Sta   $A2
          Lda   #$66F6
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0F00
          Ora   #$6066
          Sta   $00
          Lda   $02
          And   #$F0FF
          Ora   #$0600
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$6066
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$6606
          Sta   $A0
          Lda   $A2
          And   #$00FF
          Ora   #$6600
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0066
          Sta   $A4
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
KoopaTroopGR1 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0015'               ;Hauteur
          dc    i2'$000A'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $02
          And   #$FF0F
          Ora   #$00F0
          Sta   $02
          Lda   $06
          And   #$FFF0
          Ora   #$000F
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$FF00
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Lda   $A6
          And   #$0F00
          Ora   #$F0FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$FF00
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$F0F6
          Sta   $02
          Lda   $04
          And   #$F0FF
          Ora   #$0600
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0F00
          Sta   $A0
          Lda   #$6FFF
          Sta   $A2
          Lda   $A4
          And   #$00FF
          Ora   #$6600
          Sta   $A4
          Lda   #$56FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$FF00
          Sta   $00
          Lda   #$6FFF
          Sta   $02
          Lda   $04
          And   #$00FF
          Ora   #$6600
          Sta   $04
          Lda   #$56FF
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$FF00
          Sta   $A0
          Lda   #$F6FF
          Sta   $A2
          Lda   $A4
          And   #$000F
          Ora   #$66F0
          Sta   $A4
          Lda   #$56FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   #$F6FF
          Sta   $02
          Lda   $04
          And   #$000F
          Ora   #$66F0
          Sta   $04
          Lda   #$666F
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0060
          Sta   $08
          Lda   $A0
          And   #$0FFF
          Ora   #$F000
          Sta   $A0
          Lda   #$F6FF
          Sta   $A2
          Lda   $A4
          And   #$000F
          Ora   #$66F0
          Sta   $A4
          Lda   #$6566
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0060
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$FF00
          Sta   $00
          Lda   #$6FFF
          Sta   $02
          Lda   $04
          And   #$F00F
          Ora   #$0650
          Sta   $04
          Lda   #$6666
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0060
          Sta   $08
          Lda   $A0
          And   #$00FF
          Ora   #$5600
          Sta   $A0
          Lda   #$FF5F
          Sta   $A2
          Lda   $A4
          And   #$F000
          Ora   #$0655
          Sta   $A4
          Lda   $A6
          And   #$000F
          Ora   #$6660
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0060
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5505
          Sta   $00
          Lda   #$6565
          Sta   $02
          Lda   $04
          And   #$F000
          Ora   #$0655
          Sta   $04
          Lda   $06
          And   #$F00F
          Ora   #$0660
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0060
          Sta   $08
          Lda   $A0
          And   #$00F0
          Ora   #$FF05
          Sta   $A0
          Lda   #$5556
          Sta   $A2
          Lda   #$5F55
          Sta   $A4
          Lda   $A6
          And   #$F000
          Ora   #$0666
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0060
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$F505
          Sta   $00
          Lda   #$6565
          Sta   $02
          Lda   #$5F55
          Sta   $04
          Lda   $06
          And   #$F000
          Ora   #$0666
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$5606
          Sta   $A0
          Lda   #$5655
          Sta   $A2
          Lda   #$6F55
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6505
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$5F66
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$60F6
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$5606
          Sta   $A0
          Lda   #$5655
          Sta   $A2
          Lda   #$6555
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00F6
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5505
          Sta   $00
          Lda   #$5556
          Sta   $02
          Lda   #$5555
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$00F0
          Sta   $06
          Lda   #$F5FF
          Sta   $A0
          Lda   #$6565
          Sta   $A2
          Lda   #$5F55
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$00F0
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$FF00
          Sta   $00
          Lda   #$56F5
          Sta   $02
          Lda   #$FFFF
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0066
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$6606
          Sta   $A0
          Lda   #$FFFF
          Sta   $A2
          Lda   #$66FF
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$6066
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6666
          Sta   $00
          Lda   $04
          And   #$F0FF
          Ora   #$0600
          Sta   $04
          Lda   #$6666
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
KoopaTroopGL2 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0016'               ;Hauteur
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
          And   #$FF0F
          Ora   #$00F0
          Sta   $02
          Lda   $A0
          And   #$F0FF
          Ora   #$0F00
          Sta   $A0
          Lda   $A2
          And   #$FF00
          Ora   #$00FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$6F00
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00FF
          Sta   $02
          Lda   $A0
          And   #$00FF
          Ora   #$6500
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$60FF
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6506
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$60FF
          Sta   $02
          Lda   $A0
          And   #$00F0
          Ora   #$6506
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$60FF
          Sta   $A2
          Lda   $A4
          And   #$00F0
          Ora   #$FF0F
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6605
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$60F6
          Sta   $02
          Lda   #$6FFF
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$00F0
          Sta   $06
          Lda   #$6666
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$6066
          Sta   $A2
          Lda   #$FFF6
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0F00
          Ora   #$6066
          Sta   $00
          Lda   $02
          And   #$0FF0
          Ora   #$6006
          Sta   $02
          Lda   #$FFF6
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A0
          And   #$FF00
          Ora   #$0066
          Sta   $A0
          Lda   $A2
          And   #$00F0
          Ora   #$F506
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F0FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F566
          Sta   $02
          Lda   #$FF5F
          Sta   $04
          Lda   #$FFFF
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0600
          Sta   $A0
          Lda   #$556F
          Sta   $A2
          Lda   #$FF55
          Sta   $A4
          Lda   #$FF5F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6606
          Sta   $00
          Lda   #$556F
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   #$FF65
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$6600
          Sta   $A0
          Lda   #$656F
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   #$5656
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0600
          Sta   $00
          Lda   #$56FF
          Sta   $02
          Lda   #$5565
          Sta   $04
          Lda   #$6555
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0600
          Sta   $A0
          Lda   #$65F5
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   #$5656
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$55F5
          Sta   $02
          Lda   #$5655
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   #$55FF
          Sta   $A2
          Lda   #$6555
          Sta   $A4
          Lda   #$FF65
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF6F
          Sta   $02
          Lda   #$55F6
          Sta   $04
          Lda   #$F6FF
          Sta   $06
          Lda   #$6F66
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Lda   #$66F6
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$6606
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0060
          Sta   $04
          Lda   $06
          And   #$00F0
          Ora   #$6606
          Sta   $06
          Lda   $A2
          And   #$00FF
          Ora   #$6600
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0066
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$6066
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
KoopaTroopGL1 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0015'               ;Hauteur
          dc    i2'$000A'               ;Largeur
          Sei
          Phd
          Tya
          Tcd
          Lda   >$E1C068
          Ora   #$30
          Sta   >$E1C068
          Clc
          Lda   $00
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $06
          And   #$FF00
          Ora   #$00FF
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$FF00
          Sta   $A0
          Lda   $A2
          And   #$FF0F
          Ora   #$00F0
          Sta   $A2
          Lda   $A4
          And   #$F0FF
          Ora   #$0F00
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F0FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$FF00
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$00F6
          Sta   $02
          Lda   $04
          And   #$00FF
          Ora   #$F600
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$5F06
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$60F6
          Sta   $A2
          Lda   $A4
          And   #$00F0
          Ora   #$6F0F
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$5F06
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$60F6
          Sta   $02
          Lda   $04
          And   #$00F0
          Ora   #$6F0F
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$5F06
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$60F6
          Sta   $A2
          Lda   #$FFF6
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F0FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6F66
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$6066
          Sta   $02
          Lda   #$FFF6
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00FF
          Sta   $06
          Lda   #$6665
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$6066
          Sta   $A2
          Lda   #$FFF6
          Sta   $A4
          Lda   $A6
          And   #$0F0F
          Ora   #$F0F0
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6666
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0066
          Sta   $02
          Lda   #$6F5F
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A0
          And   #$0F00
          Ora   #$6066
          Sta   $A0
          Lda   $A2
          And   #$F000
          Ora   #$0566
          Sta   $A2
          Lda   #$FF5F
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$5056
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FF00
          Ora   #$0066
          Sta   $00
          Lda   $02
          And   #$F000
          Ora   #$0566
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   #$5565
          Sta   $06
          Lda   $A0
          And   #$F000
          Ora   #$0666
          Sta   $A0
          Lda   #$556F
          Sta   $A2
          Lda   #$5655
          Sta   $A4
          Lda   #$F55F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0F0
          Ora   #$0606
          Sta   $00
          Lda   #$556F
          Sta   $02
          Lda   #$6555
          Sta   $04
          Lda   #$F565
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0600
          Sta   $A0
          Lda   #$656F
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   #$5656
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$6600
          Sta   $00
          Lda   #$56FF
          Sta   $02
          Lda   #$5565
          Sta   $04
          Lda   #$6555
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0600
          Sta   $A0
          Lda   #$65F5
          Sta   $A2
          Lda   #$5556
          Sta   $A4
          Lda   #$5656
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$55F5
          Sta   $02
          Lda   #$5655
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   #$55FF
          Sta   $A2
          Lda   #$6555
          Sta   $A4
          Lda   #$FF65
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$00F0
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0600
          Sta   $00
          Lda   #$FF6F
          Sta   $02
          Lda   #$55F6
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F0FF
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$6600
          Sta   $A0
          Lda   #$6F66
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Lda   #$66F6
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$6606
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0066
          Sta   $02
          Lda   $06
          And   #$00F0
          Ora   #$6606
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0060
          Sta   $08
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl

          
	end
