         keep  ..:o:Bshapes

         start SHP1_SEG

         copy sprite1
         copy sprite2
         copy sprite3
         copy sprite4
         copy sprite5
         copy sprite6
         copy sprite7
         copy sprite8
         copy sprite9
         copy sprite10
         copy sprite11
         copy sprite12
         copy sprite13
         copy sprite14
         copy sprite15
         copy sprite16
         copy sprite17
         copy sprite18
         copy sprite19
         copy sprite20
         copy sprite21
         copy sprite22
         copy sprite23
         copy sprite24
         copy sprite25
         copy sprite26
         copy sprite27
         copy sprite28
         copy sprite29
         copy sprite30
         copy sprite31
         copy sprite32
         copy sprite33


Background entry SHP1_SEG
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
          Lda   #$0000
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
          Lda   #$0000
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
          Lda   #$0000
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
          Lda   #$0000
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
          Lda   #$0000
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
          Lda   #$0000
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
          Lda   #$0000
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
solidRedE entry
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
          Lda   #$6666
          Sta   $00
          Sta   $02
          Lda   #$1666
          Sta   $04
          Lda   #$6166
          Sta   $06
          Lda   #$CC6C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Lda   #$1CCC
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CC6C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Lda   #$1CCC
          Sta   $04
          Lda   #$C1CC
          Sta   $06
          Lda   #$CC6C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Lda   #$1CCC
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CC6C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Lda   #$11CC
          Sta   $04
          Lda   #$1111
          Sta   $06
          Lda   #$CC6C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Lda   #$16CC
          Sta   $A4
          Lda   #$6166
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CC6C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Lda   #$16CC
          Sta   $04
          Lda   #$C1CC
          Sta   $06
          Lda   #$CC6C
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Lda   #$6CC1
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CC6C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Lda   #$6CC1
          Sta   $04
          Lda   #$C1CC
          Sta   $06
          Lda   #$1C11
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Lda   #$6CC1
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C16C
          Sta   $00
          Lda   #$CC11
          Sta   $02
          Lda   #$CC16
          Sta   $04
          Lda   #$C1CC
          Sta   $06
          Lda   #$CC6C
          Sta   $A0
          Lda   #$11CC
          Sta   $A2
          Lda   #$CC16
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CC6C
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Lda   #$CC16
          Sta   $04
          Lda   #$C1CC
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
redBlockE entry
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
          Lda   #$66C6
          Sta   $00
          Lda   #$6666
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$666C
          Sta   $A0
          Lda   #$6666
          Sta   $A2
          Sta   $A4
          Lda   #$6166
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C666
          Sta   $00
          Lda   #$6666
          Sta   $02
          Sta   $04
          Lda   #$1166
          Sta   $06
          Lda   #$6C66
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6C66
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$6C66
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6C66
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$6C66
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6C66
          Sta   $00
          Lda   #$CCCC
          Sta   $02
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$6C66
          Sta   $A0
          Lda   #$CCCC
          Sta   $A2
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$6166
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$111C
          Sta   $06
          Lda   #$1166
          Sta   $A0
          Lda   #$1111
          Sta   $A2
          Sta   $A4
          Lda   #$C111
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1161
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$1C11
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl

bushCtrE entry
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
          Ora   #$1100
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$0011
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$AA01
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$10AA
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0100
          Sta   $00
          Lda   #$AA1A
          Sta   $02
          Lda   #$A1AA
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$1A00
          Sta   $A0
          Lda   #$AAAA
          Sta   $A2
          Lda   #$A15A
          Sta   $A4
          Lda   $A6
          And   #$FFF0
          Ora   #$0001
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$5AA5
          Sta   $02
          Lda   #$AAA5
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$101A
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$AA01
          Sta   $A0
          Lda   #$AA5A
          Sta   $A2
          Lda   #$AAAA
          Sta   $A4
          Lda   #$A1AA
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AA1A
          Sta   $00
          Lda   #$AAAA
          Sta   $02
          Sta   $04
          Lda   #$A1AA
          Sta   $06
          Lda   #$AAAA
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AAAA
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
          Lda   #$AAAA
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
          Lda   #$AAAA
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
	 


bushLeftE entry
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
          Tdc
          Adc   #$0460
          Tcd
          Lda   $06
          And   #$00F0
          Ora   #$1101
          Sta   $06
          Lda   #$AA1A
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$F0FF
          Ora   #$0100
          Sta   $04
          Lda   #$AAAA
          Sta   $06
          Lda   $A4
          And   #$00F0
          Ora   #$1A01
          Sta   $A4
          Lda   #$AAAA
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AA1A
          Sta   $04
          Lda   #$AAAA
          Sta   $06
          Lda   $A4
          And   #$00F0
          Ora   #$AA01
          Sta   $A4
          Lda   #$AAAA
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 


bushRgtE entry
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
          Tdc
          Adc   #$0460
          Tcd
          Lda   $00
          And   #$F00F
          Ora   #$0110
          Sta   $00
          Lda   $A0
          And   #$000F
          Ora   #$1A10
          Sta   $A0
          Lda   $A2
          And   #$FF0F
          Ora   #$0010
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AAA1
          Sta   $00
          Lda   $02
          And   #$0F0F
          Ora   #$1010
          Sta   $02
          Lda   #$AAAA
          Sta   $A0
          Lda   #$A1A1
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AAAA
          Sta   $00
          Lda   #$A1AA
          Sta   $02
          Lda   #$AAAA
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$10AA
          Sta   $A2
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 
hillCtrE entry
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
          Lda   #$5555
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
          Lda   #$5555
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
          Lda   #$5555
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
          Lda   #$5555
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
          Lda   #$5555
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
          Lda   #$5555
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
          Lda   #$5555
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
	 


hillHCtrE entry
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
          Lda   #$5555
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Lda   #$5551
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Sta   $04
          Lda   #$1511
          Sta   $06
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Lda   #$1555
          Sta   $A4
          Lda   #$1511
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Lda   #$1151
          Sta   $04
          Lda   #$5551
          Sta   $06
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Lda   #$1151
          Sta   $A4
          Lda   #$5555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Lda   #$1555
          Sta   $04
          Lda   #$5555
          Sta   $06
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
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
          Lda   #$5555
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
          Lda   #$5555
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
	 

hillLeftE entry
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
          Lda   $06
          And   #$F0FF
          Ora   #$0100
          Sta   $06
          Lda   $A6
          And   #$00FF
          Ora   #$1500
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5511
          Sta   $06
          Lda   $A4
          And   #$F0FF
          Ora   #$0100
          Sta   $A4
          Lda   #$5555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$1500
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   $A4
          And   #$00F0
          Ora   #$5501
          Sta   $A4
          Lda   #$5555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$F0FF
          Ora   #$0100
          Sta   $02
          Lda   #$5515
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   $A2
          And   #$00FF
          Ora   #$1500
          Sta   $A2
          Lda   #$5555
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$5501
          Sta   $02
          Lda   #$5555
          Sta   $04
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0100
          Sta   $A0
          Lda   #$5515
          Sta   $A2
          Lda   #$5555
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1500
          Sta   $00
          Lda   #$5555
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$5501
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5515
          Sta   $00
          Lda   #$5555
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 

hillRgtE entry
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
          And   #$FF0F
          Ora   #$0010
          Sta   $00
          Lda   $A0
          And   #$FF00
          Ora   #$0051
          Sta   $A0
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1155
          Sta   $00
          Lda   #$5555
          Sta   $A0
          Lda   $A2
          And   #$FF0F
          Ora   #$0010
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0051
          Sta   $02
          Lda   #$5555
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$1055
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Lda   #$5155
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0010
          Sta   $04
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0051
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$1055
          Sta   $04
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Lda   #$5155
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0010
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0051
          Sta   $06
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$1055
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Sta   $04
          Lda   #$5155
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 

hillTopE entry
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
          Tdc
          Adc   #$05A0
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$1101
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$1011
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0100
          Sta   $A0
          Lda   #$5515
          Sta   $A2
          Lda   #$5155
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0010
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$1501
          Sta   $00
          Lda   #$5555
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$1051
          Sta   $06
          Lda   #$5515
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Sta   $A4
          Lda   #$5155
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 
	 
cloudCtrE entry
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
          Lda   $A2
          And   #$00FF
          Ora   #$1100
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$1011
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$FF01
          Sta   $02
          Lda   #$F1FF
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0100
          Sta   $A0
          Lda   #$FF1F
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0010
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$1F01
          Sta   $00
          Lda   #$DDFF
          Sta   $02
          Lda   #$FFFF
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0010
          Sta   $06
          Lda   #$FF1F
          Sta   $A0
          Lda   #$DFFD
          Sta   $A2
          Lda   #$DFFF
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00F1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Sta   $02
          Lda   #$DDFF
          Sta   $04
          Lda   $06
          And   #$F000
          Ora   #$01F1
          Sta   $06
          Lda   #$FFFF
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Lda   #$1FFF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFD
          Sta   $00
          Lda   #$FFFF
          Sta   $02
          Lda   #$FFDF
          Sta   $04
          Lda   #$FFFF
          Sta   $06
          Lda   #$DFFF
          Sta   $A0
          Lda   #$DDFF
          Sta   $A2
          Lda   #$FFFF
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
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
	 


cloudLeftE entry
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
          Tdc
          Adc   #$0320
          Tcd
          Lda   $06
          And   #$00F0
          Ora   #$1101
          Sta   $06
          Lda   $A4
          And   #$F0FF
          Ora   #$0100
          Sta   $A4
          Lda   #$FF1F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$1F00
          Sta   $04
          Lda   #$FFFF
          Sta   $06
          Lda   $A4
          And   #$00FF
          Ora   #$1F00
          Sta   $A4
          Lda   #$FFFF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$F0FF
          Ora   #$0100
          Sta   $04
          Lda   #$FFFF
          Sta   $06
          Lda   #$FF11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $06
          And   #$00FF
          Ora   #$1100
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 

cloudRgtE entry
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
          Tdc
          Adc   #$03C0
          Tcd
          Lda   $00
          And   #$0FFF
          Ora   #$1000
          Sta   $00
          Lda   #$F111
          Sta   $A0
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F1FF
          Sta   $00
          Lda   #$FFFF
          Sta   $A0
          Lda   $A2
          And   #$FF0F
          Ora   #$0010
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FFFF
          Sta   $00
          Lda   $02
          And   #$FF0F
          Ora   #$0010
          Sta   $02
          Lda   #$11F1
          Sta   $A0
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FF0F
          Ora   #$0010
          Sta   $00
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 


pipeLeftE entry
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
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$1A00
          Sta   $A0
          Lda   #$55AA
          Sta   $A2
          Lda   #$AA5A
          Sta   $A4
          Lda   #$5AA5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$1A00
          Sta   $A0
          Lda   #$55AA
          Sta   $A2
          Lda   #$AA5A
          Sta   $A4
          Lda   #$5AA5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$1A00
          Sta   $A0
          Lda   #$55AA
          Sta   $A2
          Lda   #$AA5A
          Sta   $A4
          Lda   #$5AA5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$1A00
          Sta   $A0
          Lda   #$55AA
          Sta   $A2
          Lda   #$AA5A
          Sta   $A4
          Lda   #$5AA5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$1A00
          Sta   $A0
          Lda   #$55AA
          Sta   $A2
          Lda   #$AA5A
          Sta   $A4
          Lda   #$5AA5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$1A00
          Sta   $A0
          Lda   #$55AA
          Sta   $A2
          Lda   #$AA5A
          Sta   $A4
          Lda   #$5AA5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 

pipeTopLeftE entry
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
          Lda   #$1111
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$AA1A
          Sta   $A0
          Lda   #$55A5
          Sta   $A2
          Lda   #$AAAA
          Sta   $A4
          Lda   #$AA55
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AA1A
          Sta   $00
          Lda   #$55A5
          Sta   $02
          Lda   #$AAAA
          Sta   $04
          Lda   #$AA55
          Sta   $06
          Lda   #$AA1A
          Sta   $A0
          Lda   #$55A5
          Sta   $A2
          Lda   #$AAAA
          Sta   $A4
          Lda   #$AA55
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AA1A
          Sta   $00
          Lda   #$55A5
          Sta   $02
          Lda   #$AAAA
          Sta   $04
          Lda   #$AA55
          Sta   $06
          Lda   #$AA1A
          Sta   $A0
          Lda   #$55A5
          Sta   $A2
          Lda   #$AAAA
          Sta   $A4
          Lda   #$AA55
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AA1A
          Sta   $00
          Lda   #$55A5
          Sta   $02
          Lda   #$AAAA
          Sta   $04
          Lda   #$AA55
          Sta   $06
          Lda   #$AA1A
          Sta   $A0
          Lda   #$55A5
          Sta   $A2
          Lda   #$AAAA
          Sta   $A4
          Lda   #$AA55
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$AA1A
          Sta   $00
          Lda   #$55A5
          Sta   $02
          Lda   #$AAAA
          Sta   $04
          Lda   #$AA55
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$1A00
          Sta   $A0
          Lda   #$55AA
          Sta   $A2
          Lda   #$AA5A
          Sta   $A4
          Lda   #$5AA5
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$1A00
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$AA5A
          Sta   $04
          Lda   #$5AA5
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 	 
pipeRgtE entry
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
          Lda   #$555A
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   #$555A
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$AA55
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00A1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$555A
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   #$555A
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$AA55
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00A1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$555A
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   #$555A
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$AA55
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00A1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$555A
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   #$555A
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$AA55
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00A1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$555A
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   #$555A
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$AA55
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00A1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$555A
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   #$555A
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$AA55
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00A1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$555A
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 
pipeTopRgtE entry
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
          Lda   #$1111
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Lda   #$5A55
          Sta   $A4
          Lda   #$A1AA
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Lda   #$5A55
          Sta   $04
          Lda   #$A1AA
          Sta   $06
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Lda   #$5A55
          Sta   $A4
          Lda   #$A1AA
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Lda   #$5A55
          Sta   $04
          Lda   #$A1AA
          Sta   $06
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Lda   #$5A55
          Sta   $A4
          Lda   #$A1AA
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Lda   #$5A55
          Sta   $04
          Lda   #$A1AA
          Sta   $06
          Lda   #$5555
          Sta   $A0
          Sta   $A2
          Lda   #$5A55
          Sta   $A4
          Lda   #$A1AA
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Sta   $02
          Lda   #$5A55
          Sta   $04
          Lda   #$A1AA
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$55A5
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   #$55A5
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$AA55
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$00A1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$55A5
          Sta   $00
          Lda   #$5555
          Sta   $02
          Lda   #$AA55
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00A1
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
           Rtl
	 
redBrickE entry
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
redMetalE  entry
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

	 
blueBlockE entry
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
          Lda   #$BBBB
          Sta   $00
          Sta   $02
          Lda   #$1BBB
          Sta   $04
          Lda   #$B1BB
          Sta   $06
          Lda   #$44B4
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Lda   #$1444
          Sta   $A4
          Lda   #$4144
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$44B4
          Sta   $00
          Lda   #$4444
          Sta   $02
          Lda   #$1444
          Sta   $04
          Lda   #$4144
          Sta   $06
          Lda   #$44B4
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Lda   #$1444
          Sta   $A4
          Lda   #$4144
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$44B4
          Sta   $00
          Lda   #$4444
          Sta   $02
          Lda   #$1144
          Sta   $04
          Lda   #$1111
          Sta   $06
          Lda   #$44B4
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Lda   #$1B44
          Sta   $A4
          Lda   #$B1BB
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$44B4
          Sta   $00
          Lda   #$4444
          Sta   $02
          Lda   #$1B44
          Sta   $04
          Lda   #$4144
          Sta   $06
          Lda   #$44B4
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Lda   #$B441
          Sta   $A4
          Lda   #$4144
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$44B4
          Sta   $00
          Lda   #$4444
          Sta   $02
          Lda   #$B441
          Sta   $04
          Lda   #$4144
          Sta   $06
          Lda   #$1411
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Lda   #$B441
          Sta   $A4
          Lda   #$4144
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$41B4
          Sta   $00
          Lda   #$4411
          Sta   $02
          Lda   #$441B
          Sta   $04
          Lda   #$4144
          Sta   $06
          Lda   #$44B4
          Sta   $A0
          Lda   #$1144
          Sta   $A2
          Lda   #$441B
          Sta   $A4
          Lda   #$4144
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$44B4
          Sta   $00
          Lda   #$4444
          Sta   $02
          Lda   #$441B
          Sta   $04
          Lda   #$4144
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
blueBrickE entry
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
          Lda   #$4144
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$4144
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
          Lda   #$4441
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
          Lda   #$4144
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$4144
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
          Lda   #$4441
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

solidBlueE entry
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
          Lda   #$BB4B
          Sta   $00
          Lda   #$BBBB
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$BBB4
          Sta   $A0
          Lda   #$BBBB
          Sta   $A2
          Sta   $A4
          Lda   #$B1BB
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$4BBB
          Sta   $00
          Lda   #$BBBB
          Sta   $02
          Sta   $04
          Lda   #$11BB
          Sta   $06
          Lda   #$B4BB
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Sta   $A4
          Lda   #$1141
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$B4BB
          Sta   $00
          Lda   #$4444
          Sta   $02
          Sta   $04
          Lda   #$1141
          Sta   $06
          Lda   #$B4BB
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Sta   $A4
          Lda   #$1141
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$B4BB
          Sta   $00
          Lda   #$4444
          Sta   $02
          Sta   $04
          Lda   #$1141
          Sta   $06
          Lda   #$B4BB
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Sta   $A4
          Lda   #$1141
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$B4BB
          Sta   $00
          Lda   #$4444
          Sta   $02
          Sta   $04
          Lda   #$1141
          Sta   $06
          Lda   #$B4BB
          Sta   $A0
          Lda   #$4444
          Sta   $A2
          Sta   $A4
          Lda   #$1141
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$B1BB
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$1114
          Sta   $06
          Lda   #$11BB
          Sta   $A0
          Lda   #$1111
          Sta   $A2
          Sta   $A4
          Lda   #$4111
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11B1
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$1411
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
CastleWinR entry
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
          Lda   #$C1CC
          Sta   $00
          Sta   $02
          Lda   #$1111
          Sta   $04
          Sta   $06
          Lda   #$C1CC
          Sta   $A0
          Sta   $A2
          Lda   #$1111
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C111
          Sta   $00
          Lda   #$11C1
          Sta   $02
          Lda   #$1111
          Sta   $04
          Sta   $06
          Lda   #$11C1
          Sta   $A0
          Lda   #$CC11
          Sta   $A2
          Lda   #$1111
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCC1
          Sta   $00
          Sta   $02
          Lda   #$1111
          Sta   $04
          Sta   $06
          Lda   #$CC11
          Sta   $A0
          Lda   #$11C1
          Sta   $A2
          Lda   #$1111
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11C1
          Sta   $00
          Lda   #$C111
          Sta   $02
          Lda   #$1111
          Sta   $04
          Sta   $06
          Lda   #$C1CC
          Sta   $A0
          Sta   $A2
          Lda   #$1111
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C11C
          Sta   $00
          Lda   #$C1CC
          Sta   $02
          Lda   #$1111
          Sta   $04
          Sta   $06
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
          Lda   #$1111
          Sta   $04
          Sta   $06
          Lda   #$CCC1
          Sta   $A0
          Sta   $A2
          Lda   #$1111
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
CastleWinL entry
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
          Lda   #$1111
          Sta   $00
          Sta   $02
          Lda   #$C1CC
          Sta   $04
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Lda   #$C1CC
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Sta   $02
          Lda   #$C111
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Lda   #$1C11
          Sta   $A2
          Lda   #$11C1
          Sta   $A4
          Lda   #$CC11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   #$1C11
          Sta   $02
          Lda   #$CCC1
          Sta   $04
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Lda   #$CC11
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Sta   $02
          Lda   #$11C1
          Sta   $04
          Lda   #$C111
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Lda   #$C1CC
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Sta   $02
          Lda   #$C11C
          Sta   $04
          Lda   #$11CC
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   #$1C11
          Sta   $02
          Lda   #$CCC1
          Sta   $04
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Lda   #$1C11
          Sta   $A2
          Lda   #$CCC1
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
CastleSolid entry
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
          Lda   #$C1CC
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
          Lda   #$C111
          Sta   $00
          Lda   #$11C1
          Sta   $02
          Lda   #$C111
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Sta   $A0
          Lda   #$CC11
          Sta   $A2
          Lda   #$11C1
          Sta   $A4
          Lda   #$CC11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCC1
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$CC11
          Sta   $A0
          Lda   #$11C1
          Sta   $A2
          Lda   #$CC11
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11C1
          Sta   $00
          Lda   #$C111
          Sta   $02
          Lda   #$11C1
          Sta   $04
          Lda   #$C111
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
CastleArch entry
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
          Lda   #$C1CC
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Sta   $A0
          Lda   #$11C1
          Sta   $A2
          Lda   #$C111
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C111
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Sta   $A0
          Lda   #$1111
          Sta   $A2
          Sta   $A4
          Lda   #$CC11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11C1
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$CC11
          Sta   $06
          Lda   #$1111
          Sta   $A0
          Sta   $A2
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11C1
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$C111
          Sta   $06
          Lda   #$11C1
          Sta   $A0
          Lda   #$1111
          Sta   $A2
          Sta   $A4
          Lda   #$C111
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
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
CastleTop2 entry
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
          Lda   #$6666
          Sta   $00
          Lda   #$C1CC
          Sta   $02
          Lda   #$C6CC
          Sta   $04
          Lda   #$6666
          Sta   $06
          Lda   #$C6CC
          Sta   $A0
          Lda   #$C1CC
          Sta   $A2
          Lda   #$C6CC
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C611
          Sta   $00
          Lda   #$11C1
          Sta   $02
          Lda   #$C611
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$16C1
          Sta   $A0
          Lda   #$6666
          Sta   $A2
          Sta   $A4
          Lda   #$CC11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCC1
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$CC11
          Sta   $A0
          Lda   #$11C1
          Sta   $A2
          Lda   #$CC11
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11C1
          Sta   $00
          Lda   #$C111
          Sta   $02
          Lda   #$11C1
          Sta   $04
          Lda   #$C111
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
CastleTop1 entry
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
          Lda   #$6666
          Sta   $00
          Lda   $04
          And   #$F0FF
          Ora   #$0600
          Sta   $04
          Lda   #$6666
          Sta   $06
          Lda   #$C6CC
          Sta   $A0
          Lda   $A4
          And   #$F0FF
          Ora   #$0600
          Sta   $A4
          Lda   #$C1CC
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$C611
          Sta   $00
          Lda   $04
          And   #$F0FF
          Ora   #$0600
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$16C1
          Sta   $A0
          Lda   #$6666
          Sta   $A2
          Sta   $A4
          Lda   #$CC11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$CCC1
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$CC11
          Sta   $A0
          Lda   #$11C1
          Sta   $A2
          Lda   #$CC11
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11C1
          Sta   $00
          Lda   #$C111
          Sta   $02
          Lda   #$11C1
          Sta   $04
          Lda   #$C111
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
Coral 	entry
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
          And   #$0FF0
          Ora   #$7007
          Sta   $02
          Lda   $06
          And   #$FFF0
          Ora   #$0007
          Sta   $06
          Lda   $A2
          And   #$0FF0
          Ora   #$7007
          Sta   $A2
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   $04
          And   #$00FF
          Ora   #$7700
          Sta   $04
          Lda   $A0
          And   #$FF0F
          Ora   #$0070
          Sta   $A0
          Lda   $A2
          And   #$00FF
          Ora   #$7700
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FF00
          Ora   #$0077
          Sta   $00
          Lda   $02
          And   #$00FF
          Ora   #$7700
          Sta   $02
          Lda   $04
          And   #$F0FF
          Ora   #$0700
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$0FF0
          Ora   #$7007
          Sta   $A0
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$7700
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $A0
          And   #$FFF0
          Ora   #$0007
          Sta   $A0
          Lda   $A2
          And   #$00FF
          Ora   #$7700
          Sta   $A2
          Lda   $A4
          And   #$F0FF
          Ora   #$0700
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0700
          Sta   $00
          Lda   $02
          And   #$00FF
          Ora   #$7700
          Sta   $02
          Lda   $04
          And   #$F0FF
          Ora   #$0700
          Sta   $04
          Lda   $A0
          And   #$0FFF
          Ora   #$7000
          Sta   $A0
          Lda   $A2
          And   #$00FF
          Ora   #$7700
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$7700
          Sta   $00
          Lda   $02
          And   #$000F
          Ora   #$7770
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$0077
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$0FF0
          Ora   #$7007
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
DungeonBlk entry
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
          Lda   #$1111
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$FF1F
          Sta   $A0
          Lda   #$F1FF
          Sta   $A2
          Lda   #$FF1F
          Sta   $A4
          Lda   #$F1FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   #$F1FF
          Sta   $02
          Lda   #$FF1F
          Sta   $04
          Lda   #$F1FF
          Sta   $06
          Lda   #$FF1F
          Sta   $A0
          Lda   #$F1FF
          Sta   $A2
          Lda   #$FF1F
          Sta   $A4
          Lda   #$F1FF
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$FF1F
          Sta   $00
          Lda   #$F1FF
          Sta   $02
          Lda   #$FF1F
          Sta   $04
          Lda   #$F1FF
          Sta   $06
          Lda   #$1111
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
          Lda   #$F1FF
          Sta   $A0
          Lda   #$FF1F
          Sta   $A2
          Lda   #$F1FF
          Sta   $A4
          Lda   #$FF1F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F1FF
          Sta   $00
          Lda   #$FF1F
          Sta   $02
          Lda   #$F1FF
          Sta   $04
          Lda   #$FF1F
          Sta   $06
          Lda   #$F1FF
          Sta   $A0
          Lda   #$FF1F
          Sta   $A2
          Lda   #$F1FF
          Sta   $A4
          Lda   #$FF1F
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$F1FF
          Sta   $00
          Lda   #$FF1F
          Sta   $02
          Lda   #$F1FF
          Sta   $04
          Lda   #$FF1F
          Sta   $06
          Lda   #$F1FF
          Sta   $A0
          Lda   #$FF1F
          Sta   $A2
          Lda   #$F1FF
          Sta   $A4
          Lda   #$FF1F
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
FlagPole entry
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
          And   #$00FF
          Ora   #$5A00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00A5
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$5A00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00A5
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$5A00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00A5
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$5A00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00A5
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$5A00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00A5
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$5A00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00A5
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$5A00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00A5
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$5A00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00A5
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$5A00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00A5
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$5A00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00A5
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$5A00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00A5
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$5A00
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$00A5
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$5A00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00A5
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
FlagPoleTop entry
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
          Tdc
          Adc   #$03C0
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$1101
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$1011
          Sta   $04
          Lda   #$5515
          Sta   $A2
          Lda   #$5155
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0100
          Sta   $00
          Lda   #$5555
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0010
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0100
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0010
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5515
          Sta   $02
          Lda   #$5155
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$1101
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$1011
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$5A00
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$00A5
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
WaterBlk entry
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
          Lda   #$AA55
          Sta   $00
          Lda   #$AAAA
          Sta   $02
          Sta   $04
          Lda   #$55AA
          Sta   $06
          Lda   #$551A
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Sta   $A4
          Lda   #$1555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5515
          Sta   $00
          Lda   #$5555
          Sta   $02
          Sta   $04
          Lda   #$1555
          Sta   $06
          Lda   #$5551
          Sta   $A0
          Lda   #$AA5A
          Sta   $A2
          Lda   #$55A1
          Sta   $A4
          Lda   #$5555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1555
          Sta   $00
          Lda   #$55AA
          Sta   $02
          Lda   #$5551
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   #$1555
          Sta   $A0
          Lda   #$55A5
          Sta   $A2
          Lda   #$1555
          Sta   $A4
          Lda   #$5555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1555
          Sta   $00
          Lda   #$55A5
          Sta   $02
          Lda   #$1555
          Sta   $04
          Lda   #$5555
          Sta   $06
          Lda   #$5551
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$5155
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1515
          Sta   $00
          Lda   #$A5AA
          Sta   $02
          Lda   #$5155
          Sta   $04
          Lda   #$1111
          Sta   $06
          Lda   #$5515
          Sta   $A0
          Lda   #$5555
          Sta   $A2
          Lda   #$5155
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$5555
          Sta   $00
          Lda   #$5155
          Sta   $02
          Lda   #$1111
          Sta   $04
          Lda   #$1155
          Sta   $06
          Lda   #$5555
          Sta   $A0
          Lda   #$1155
          Sta   $A2
          Lda   #$5555
          Sta   $A4
          Lda   #$1555
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1155
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$1511
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
QBlock    entry
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
          Lda   #$1111
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$3313
          Sta   $A0
          Lda   #$3333
          Sta   $A2
          Sta   $A4
          Lda   #$3133
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$3313
          Sta   $00
          Lda   #$9933
          Sta   $02
          Lda   #$3393
          Sta   $04
          Lda   #$3133
          Sta   $06
          Lda   #$3313
          Sta   $A0
          Lda   #$1139
          Sta   $A2
          Lda   #$3319
          Sta   $A4
          Lda   #$3133
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$3313
          Sta   $00
          Lda   #$1339
          Sta   $02
          Sta   $04
          Lda   #$3133
          Sta   $06
          Lda   #$3313
          Sta   $A0
          Lda   #$1331
          Sta   $A2
          Lda   #$1399
          Sta   $A4
          Lda   #$3133
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$3313
          Sta   $00
          Lda   #$3933
          Sta   $02
          Lda   #$1311
          Sta   $04
          Lda   #$3133
          Sta   $06
          Lda   #$3313
          Sta   $A0
          Lda   #$3133
          Sta   $A2
          Lda   #$3313
          Sta   $A4
          Lda   #$3133
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$3313
          Sta   $00
          Lda   #$3333
          Sta   $02
          Sta   $04
          Lda   #$3133
          Sta   $06
          Lda   #$3313
          Sta   $A0
          Lda   #$3933
          Sta   $A2
          Lda   #$3393
          Sta   $A4
          Lda   #$3133
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$3313
          Sta   $00
          Lda   #$3133
          Sta   $02
          Lda   #$3313
          Sta   $04
          Lda   #$3133
          Sta   $06
          Lda   #$3313
          Sta   $A0
          Lda   #$3333
          Sta   $A2
          Sta   $A4
          Lda   #$3133
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
coinB     entry
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
          Lda   $A2
          And   #$00FF
          Ora   #$3300
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0033
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$3303
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$3033
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$3603
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$3063
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$3333
          Sta   $02
          Lda   #$3336
          Sta   $04
          Lda   #$3333
          Sta   $A2
          Lda   #$3336
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$3333
          Sta   $02
          Lda   #$3336
          Sta   $04
          Lda   #$3333
          Sta   $A2
          Lda   #$3336
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$3333
          Sta   $02
          Lda   #$3336
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$3603
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$3063
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$3303
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$3033
          Sta   $04
          Lda   $A2
          And   #$00FF
          Ora   #$3300
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0033
          Sta   $A4
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
BBBase    entry
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
          And   #$F0FF
          Ora   #$0E00
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0E00
          Sta   $A0
          Lda   #$1111
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$00E0
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$E100
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$00EE
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$E100
          Sta   $A0
          Lda   #$1111
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$001E
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$E10E
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$E01E
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$110E
          Sta   $A0
          Lda   #$9919
          Sta   $A2
          Lda   #$9199
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$E011
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Lda   #$1E99
          Sta   $02
          Lda   #$99E1
          Sta   $04
          Lda   #$1E11
          Sta   $06
          Lda   #$11E1
          Sta   $A0
          Lda   #$9999
          Sta   $A2
          Sta   $A4
          Lda   #$1E11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Lda   #$9119
          Sta   $02
          Sta   $04
          Lda   #$1E11
          Sta   $06
          Lda   #$11E1
          Sta   $A0
          Lda   #$9911
          Sta   $A2
          Lda   #$1199
          Sta   $A4
          Lda   #$1E11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$1E11
          Sta   $06
          Lda   #$11E1
          Sta   $A0
          Lda   #$1111
          Sta   $A2
          Sta   $A4
          Lda   #$1E11
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$1E11
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
BBCase    entry
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
          And   #$0F00
          Ora   #$10E1
          Sta   $00
          Lda   $06
          And   #$00F0
          Ora   #$EE0E
          Sta   $06
          Lda   #$11E1
          Sta   $A0
          Lda   #$EEEE
          Sta   $A2
          Sta   $A4
          Lda   #$11EE
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$E1EE
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$EE1E
          Sta   $06
          Lda   #$11E1
          Sta   $A0
          Lda   #$EEEE
          Sta   $A2
          Sta   $A4
          Lda   #$11EE
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$111E
          Sta   $06
          Lda   #$11E1
          Sta   $A0
          Lda   #$1111
          Sta   $A2
          Sta   $A4
          Lda   #$111E
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Lda   #$1111
          Sta   $02
          Sta   $04
          Lda   #$111E
          Sta   $06
          Lda   #$11E1
          Sta   $A0
          Lda   #$EE11
          Sta   $A2
          Lda   #$11E1
          Sta   $A4
          Lda   #$111E
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Lda   #$111E
          Sta   $02
          Sta   $04
          Sta   $06
          Lda   #$11E1
          Sta   $A0
          Lda   #$1EE1
          Sta   $A2
          Lda   #$E111
          Sta   $A4
          Lda   #$111E
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Lda   #$E1E1
          Sta   $02
          Sta   $04
          Lda   #$111E
          Sta   $06
          Lda   #$E1EE
          Sta   $A0
          Lda   #$1EE1
          Sta   $A2
          Lda   #$E111
          Sta   $A4
          Lda   #$EE1E
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$11E1
          Sta   $00
          Sta   $02
          Lda   #$1E11
          Sta   $04
          Lda   #$11EE
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
WaterTop entry
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
          And   #$F0FF
          Ora   #$0F00
          Sta   $00
          Lda   $04
          And   #$FF0F
          Ora   #$00F0
          Sta   $04
          Lda   $06
          And   #$FFF0
          Ora   #$000F
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$F400
          Sta   $A0
          Lda   $A2
          And   #$F00F
          Ora   #$0FF0
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$004F
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$F0F4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$440F
          Sta   $00
          Lda   $02
          And   #$000F
          Ora   #$F4F0
          Sta   $02
          Lda   $04
          And   #$F000
          Ora   #$0F4F
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$F044
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$4404
          Sta   $A0
          Lda   $A2
          And   #$000F
          Ora   #$4440
          Sta   $A2
          Lda   $A4
          And   #$F000
          Ora   #$0444
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$4044
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$44F4
          Sta   $00
          Lda   #$444F
          Sta   $02
          Lda   #$F444
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$4044
          Sta   $06
          Lda   #$4444
          Sta   $A0
          Lda   #$44F4
          Sta   $A2
          Lda   #$444F
          Sta   $A4
          Lda   #$F444
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$4444
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
          Lda   #$4444
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
          Lda   #$4444
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
          Lda   #$4444
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
	end	 
