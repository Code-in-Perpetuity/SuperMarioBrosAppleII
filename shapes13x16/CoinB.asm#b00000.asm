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
