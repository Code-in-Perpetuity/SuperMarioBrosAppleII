         keep  ..:o:Bshapes

shpseg1  start SHP1_SEG

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
          Lda   #$1111
          Sta   $00
          Sta   $02
          Sta   $04
          Sta   $06
          Sta   $A0
          Lda   #$3313
          Sta   $A2
          Lda   #$C13C
          Sta   $A4
          Lda   #$1111
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   #$3333
          Sta   $02
          Lda   #$CC33
          Sta   $04
          Lda   #$1111
          Sta   $06
          Sta   $A0
          Lda   #$6633
          Sta   $A2
          Lda   #$CC33
          Sta   $A4
          Lda   #$1111
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1311
          Sta   $00
          Lda   #$3336
          Sta   $02
          Lda   #$3CC3
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$1311
          Sta   $A0
          Lda   #$3336
          Sta   $A2
          Lda   #$3CC3
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1311
          Sta   $00
          Lda   #$3336
          Sta   $02
          Lda   #$3CC3
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$1311
          Sta   $A0
          Lda   #$3336
          Sta   $A2
          Lda   #$3CC3
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1311
          Sta   $00
          Lda   #$3336
          Sta   $02
          Lda   #$3CC3
          Sta   $04
          Lda   #$11C1
          Sta   $06
          Lda   #$1311
          Sta   $A0
          Lda   #$3336
          Sta   $A2
          Lda   #$3CC3
          Sta   $A4
          Lda   #$11C1
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   #$CC33
          Sta   $02
          Sta   $04
          Lda   #$1111
          Sta   $06
          Sta   $A0
          Lda   #$3333
          Sta   $A2
          Lda   #$CC33
          Sta   $A4
          Lda   #$1111
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$1111
          Sta   $00
          Lda   #$3313
          Sta   $02
          Lda   #$C13C
          Sta   $04
          Lda   #$1111
          Sta   $06
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
H2VBot	Entry
;
; Sprite width = 16
; Sprite height = 13
;
	php
	sei
	tsc
	sta	>stackSave
	lda	>$e1c068
	ora	#$30
	sta	>$e1c068
	tya
	clc
	adc	#7
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$15aa
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$1555
	pea	$5555
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$1555
	pea	$5555
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$1555
	pea	$5555
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$1555
	pea	$5555
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$1555
	pea	$5555
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$55a1
	pea	$a5a5
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$5551
	pea	$5a5a
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$55a1
	pea	$a5a5
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$551a
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$551a
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$55aa
	pea	$1111
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$55aa
	pea	$1a00
	lda	>$e1c068
	and	#$ffcf
	sta	>$e1c068
	lda	>stackSave
	tcs
	plp
	rtl
HPipe2Bot Entry
;
; Sprite width = 16
; Sprite height = 13
;
	php
	sei
	tsc
	sta	>stackSave
	lda	>$e1c068
	ora	#$30
	sta	>$e1c068
	tya
	clc
	adc	#7
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$5555
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5555
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5555
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5555
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5555
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$a5a5
	pea	$a5a5
	pea	$a5a5
	pea	$a515
	adc	#160
	tcs
	pea	$5a5a
	pea	$5a5a
	pea	$5a5a
	pea	$5a1a
	adc	#160
	tcs
	pea	$a5a5
	pea	$a5a5
	pea	$a5a5
	pea	$a515
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$1111
	pea	$1111
	pea	$1111
	pea	$1111
	adc	#160
	tcs
	pea	$   0
	pea	$   0
	pea	$   0
	pea	$   0
	lda	>$e1c068
	and	#$ffcf
	sta	>$e1c068
	lda	>stackSave
	tcs
	plp
	rtl
HPipe1Bot Entry
;
; Sprite width = 16
; Sprite height = 13
;
	php
	sei
	tsc
	sta	>stackSave
	lda	>$e1c068
	ora	#$30
	sta	>$e1c068
	tya
	clc
	adc	#7
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$5155
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5155
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5155
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5155
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5155
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$a1a5
	pea	$a5a5
	pea	$a5a5
	pea	$a515
	adc	#160
	tcs
	pea	$515a
	pea	$5a5a
	pea	$5a5a
	pea	$5a1a
	adc	#160
	tcs
	pea	$a1a5
	pea	$a5a5
	pea	$a5a5
	pea	$a515
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$1111
	pea	$1111
	pea	$1111
	pea	$1111
	lda	>$e1c068
	and	#$ffcf
	sta	>$e1c068
	lda	>stackSave
	tcs
	plp
	rtl
H2VTop	Entry
;
; Sprite width = 16
; Sprite height = 13
;
	php
	sei
	tsc
	sta	>stackSave
	lda	>$e1c068
	ora	#$30
	sta	>$e1c068
	tya
	clc
	adc	#7
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$55aa
	pea	$1a00
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$55aa
	pea	$1111
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$551a
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$551a
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$55a1
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$55a1
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$5551
	pea	$5555
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$1555
	pea	$5555
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$15aa
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$15aa
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$15aa
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$15aa
	pea	$aaaa
	adc	#160
	tcs
	pea	$5aa5
	pea	$aa5a
	pea	$1555
	pea	$5555
	lda	>$e1c068
	and	#$ffcf
	sta	>$e1c068
	lda	>stackSave
	tcs
	plp
	rtl
HPipe2Top	Entry
;
; Sprite width = 16
; Sprite height = 13
;
	php
	sei
	tsc
	sta	>stackSave
	lda	>$e1c068
	ora	#$30
	sta	>$e1c068
	tya
	clc
	adc	#7
	tcs
	pea	$   0
	pea	$   0
	pea	$   0
	pea	$   0
	adc	#160
	tcs
	pea	$1111
	pea	$1111
	pea	$1111
	pea	$1111
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$5555
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5555
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$aaaa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$5555
	pea	$5555
	pea	$5555
	pea	$5515
	lda	>$e1c068
	and	#$ffcf
	sta	>$e1c068
	lda	>stackSave
	tcs
	plp
	rtl
HPipe1Top	Entry
;
; Sprite width = 16
; Sprite height = 13
;
	php
	sei
	tsc
	sta	>stackSave
	lda	>$e1c068
	ora	#$30
	sta	>$e1c068
	tya
	clc
	adc	#7
	tcs
	pea	$1111
	pea	$1111
	pea	$1111
	pea	$1111
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$5155
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$5155
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	adc	#160
	tcs
	pea	$5155
	pea	$5555
	pea	$5555
	pea	$5515
	adc	#160
	tcs
	pea	$a1aa
	pea	$aaaa
	pea	$aaaa
	pea	$aa1a
	lda	>$e1c068
	and	#$ffcf
	sta	>$e1c068
	lda	>stackSave
	tcs
	plp
	rtl

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
stackSave  ds  2
	end	 
