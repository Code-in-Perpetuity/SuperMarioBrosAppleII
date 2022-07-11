	mcopy bank.macs
         keep ..:o:marioS

MarJmpL  start MARIO_SEG
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
          Mk4   $0000,$0F00,$8088
          Mk4   $0002,$F0FF,$0700
          Mk4   $00A0,$0F00,$8088
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0140,$0F00,$2022
          Mk4   $0142,$00F0,$8208
          Mk4   $0146,$FF00,$0022
          Mk4   $01E6,$FF00,$0082
          Mk4   $0280,$00F0,$2202
          Mk4   $0282,$00F0,$2802
          Mk4   $0286,$FF00,$0082
          Mk4   $0320,$00F0,$2202
          Mk4   $03C0,$00FF,$2200
          Mk4   $03C6,$FF00,$0022
          Mk4   $0460,$F0FF,$0200
          Mk4   $0502,$00F0,$8707
          Mk4   $05A0,$00FF,$2200
          Mk4   $05A2,$00F0,$7707
          Mk4   $0640,$00FF,$2200
          Mk4   $0646,$0F00,$2022
          Mk4   $06E0,$00FF,$2200
          Mk4   $06E6,$0F00,$2022
          Mk4   $0786,$0FF0,$2002
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $05A4,Y
          Lda   #$2288
          Sta   $0144,Y
          Sta   $01E4,Y
          Lda   #$2822
          Sta   $01E0,Y
          Lda   #$8888
          Sta   $01E2,Y
          Sta   $0284,Y
          Sta   $0324,Y
          Lda   #$8828
          Sta   $0322,Y
          Lda   #$7722
          Sta   $03C2,Y
          Sta   $0642,Y
          Lda   #$7227
          Sta   $03C4,Y
          Sta   $06E4,Y
          Lda   #$7222
          Sta   $0462,Y
          Lda   #$2227
          Sta   $0464,Y
          Lda   #$8822
          Sta   $0466,Y
          Sta   $0506,Y
          Lda   #$7778
          Sta   $0504,Y
          Lda   #$8877
          Sta   $05A6,Y
          Lda   #$2777
          Sta   $0644,Y
          Lda   #$2722
          Sta   $06E2,Y
          Plb
          Cli
          Rtl
MarJmpR entry
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
          Mk4   $0004,$FF0F,$0070
          Mk4   $0006,$00F0,$8808
          Mk4   $00A0,$F0FF,$0700
          Mk4   $00A6,$00F0,$8808
          Mk4   $0140,$00FF,$2200
          Mk4   $0144,$0F00,$8028
          Mk4   $0146,$00F0,$2202
          Mk4   $01E0,$00FF,$2800
          Mk4   $0280,$00FF,$2800
          Mk4   $0284,$0F00,$2082
          Mk4   $0286,$0F00,$2022
          Mk4   $0326,$0F00,$2022
          Mk4   $03C0,$00FF,$2200
          Mk4   $03C6,$FF00,$0022
          Mk4   $0466,$FF0F,$0020
          Mk4   $0504,$0F00,$7078
          Mk4   $05A4,$0F00,$7077
          Mk4   $05A6,$FF00,$0022
          Mk4   $0640,$00F0,$2202
          Mk4   $0646,$FF00,$0022
          Mk4   $06E0,$00F0,$2202
          Mk4   $06E6,$FF00,$0022
          Mk4   $0780,$0FF0,$2002
          Lda   #$7777
          Sta   |$0002,Y
          Sta	 |$00A2,Y
          Sta   |$00A4,Y
          Sta   $05A2,Y
          Lda   #$8822
          Sta   $0142,Y
          Sta   $01E2,Y
          Lda   #$8888
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0322,Y
          Lda   #$2282
          Sta   $01E6,Y
          Lda   #$8288
          Sta   $0324,Y
          Lda   #$7227
          Sta   $03C2,Y
          Sta   $06E2,Y
          Lda   #$2277
          Sta   $03C4,Y
          Sta   $0644,Y
          Lda   #$2288
          Sta   $0460,Y
          Sta   $0500,Y
          Lda   #$7222
          Sta   $0462,Y
          Lda   #$2227
          Sta   $0464,Y
          Lda   #$8777
          Sta   $0502,Y
          Lda   #$7788
          Sta   $05A0,Y
          Lda   #$7772
          Sta   $0642,Y
          Lda   #$2272
          Sta   $06E4,Y
          Plb
          Cli
          Rtl
MarL entry
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
          Mk4   $0002,$00FF,$7700
          Mk4   $0004,$0F00,$7077
          Mk4   $00A0,$F0FF,$0700
          Mk4   $0146,$FF0F,$0020
          Mk4   $01E0,$00FF,$8800
          Mk4   $01E6,$FF0F,$0020
          Mk4   $0286,$FF0F,$0020
          Mk4   $0324,$0F00,$8088
          Mk4   $03C0,$F0FF,$0200
          Mk4   $03C6,$FF0F,$0020
          Mk4   $0460,$00FF,$2200
          Mk4   $0466,$FF00,$0022
          Mk4   $0500,$00F0,$2202
          Mk4   $0506,$0F00,$2022
          Mk4   $05A0,$00F0,$8808
          Mk4   $05A6,$0F00,$8088
          Mk4   $0640,$00F0,$8808
          Mk4   $0642,$0F00,$7077
          Mk4   $0644,$00F0,$7707
          Mk4   $0646,$0F00,$8088
          Mk4   $06E0,$00FF,$7700
          Mk4   $06E2,$FF00,$0077
          Mk4   $06E4,$00FF,$7700
          Mk4   $06E6,$FF00,$0077
          Mk4   $0780,$00F0,$2202
          Mk4   $0782,$FF00,$0022
          Mk4   $0784,$00FF,$2200
          Mk4   $0786,$0F00,$2022
          Lda   #$7777
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0502,Y
          Sta   $0504,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2888
          Sta   $0142,Y
          Lda   #$2282
          Sta   $0144,Y
          Lda   #$8888
          Sta   $01E2,Y
          Sta   $0284,Y
          Sta   $0322,Y
          Lda   #$2882
          Sta   $01E4,Y
          Lda   #$8822
          Sta   $0282,Y
          Lda   #$7227
          Sta   $03C2,Y
          Sta   $03C4,Y
          Sta   $0462,Y
          Sta   $0464,Y
          Plb
          Cli
          Rtl
MarR entry
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
          Mk4   $0002,$00F0,$7707
          Mk4   $0004,$FF00,$0077
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0140,$F0FF,$0200
          Mk4   $01E0,$F0FF,$0200
          Mk4   $01E6,$FF00,$0088
          Mk4   $0280,$F0FF,$0200
          Mk4   $0322,$00F0,$8808
          Mk4   $03C0,$F0FF,$0200
          Mk4   $03C6,$FF0F,$0020
          Mk4   $0460,$00FF,$2200
          Mk4   $0466,$FF00,$0022
          Mk4   $0500,$00F0,$2202
          Mk4   $0506,$0F00,$2022
          Mk4   $05A0,$00F0,$8808
          Mk4   $05A6,$0F00,$8088
          Mk4   $0640,$00F0,$8808
          Mk4   $0642,$0F00,$7077
          Mk4   $0644,$00F0,$7707
          Mk4   $0646,$0F00,$8088
          Mk4   $06E0,$00FF,$7700
          Mk4   $06E2,$FF00,$0077
          Mk4   $06E4,$00FF,$7700
          Mk4   $06E6,$FF00,$0077
          Mk4   $0780,$00F0,$2202
          Mk4   $0782,$FF00,$0022
          Mk4   $0784,$00FF,$2200
          Mk4   $0786,$0F00,$2022
          Lda   #$7777
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0502,Y
          Sta   $0504,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2822
          Sta   $0142,Y
          Lda   #$8882
          Sta   $0144,Y
          Lda   #$2882
          Sta   $01E2,Y
          Lda   #$8888
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0324,Y
          Lda   #$2288
          Sta   $0284,Y
          Lda   #$7227
          Sta   $03C2,Y
          Sta   $03C4,Y
          Sta   $0462,Y
          Sta   $0464,Y
          Plb
          Cli
          Rtl
MarWL4    entry
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
          Mk4   $00A2,$F0FF,$0700
          Mk4   $0146,$FF00,$0077
          Mk4   $01E2,$00F0,$8208
          Mk4   $01E6,$FF00,$0022
          Mk4   $0280,$F0FF,$0800
          Mk4   $0286,$FF00,$0082
          Mk4   $0322,$00F0,$2802
          Mk4   $0326,$FF00,$0082
          Mk4   $03C2,$00F0,$8808
          Mk4   $0462,$00FF,$7700
          Mk4   $0466,$FF00,$0022
          Mk4   $0502,$00F0,$8208
          Mk4   $0506,$0F00,$2072
          Mk4   $05A2,$00F0,$8208
          Mk4   $05A6,$0F00,$2077
          Mk4   $0642,$00F0,$7707
          Mk4   $0646,$FF0F,$0070
          Mk4   $06E4,$000F,$7770
          Mk4   $06E6,$FF00,$0072
          Mk4   $0782,$00F0,$2202
          Mk4   $0784,$F0FF,$0200
          Mk4   $0786,$FF00,$0022
          Lda   #$7777
          Sta   |$00A4,Y
          Sta   $0142,Y
          Sta   $0144,Y
          Lda   #$2288
          Sta   $01E4,Y
          Sta   $0284,Y
          Lda   #$8888
          Sta   $0282,Y
          Sta   $0324,Y
          Sta   $03C4,Y
          Lda   #$2222
          Sta   $0464,Y
          Sta   $0504,Y
          Lda   #$7722
          Sta   $05A4,Y
          Sta   $06E2,Y
          Lda   #$7727
          Sta   $0644,Y
          Plb
          Cli
          Rtl
MarWR4    entry
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
          Mk4   $00A4,$FF0F,$0070
          Mk4   $0140,$00FF,$7700
          Mk4   $01E0,$00FF,$2200
          Mk4   $01E4,$0F00,$8028
          Mk4   $0280,$00FF,$2800
          Mk4   $0286,$FF0F,$0080
          Mk4   $0320,$00FF,$2800
          Mk4   $0324,$0F00,$2082
          Mk4   $03C4,$0F00,$8088
          Mk4   $0460,$00FF,$2200
          Mk4   $0464,$FF00,$0077
          Mk4   $0500,$00F0,$2702
          Mk4   $0504,$0F00,$8028
          Mk4   $05A0,$00F0,$7702
          Mk4   $05A4,$0F00,$8028
          Mk4   $0640,$F0FF,$0700
          Mk4   $0644,$0F00,$7077
          Mk4   $06E0,$00FF,$2700
          Mk4   $06E2,$F000,$0777
          Mk4   $0780,$00FF,$2200
          Mk4   $0782,$FF0F,$0020
          Mk4   $0784,$0F00,$2022
          Lda   #$7777
          Sta   |$00A2,Y
          Sta   $0142,Y
          Sta   $0144,Y
          Lda   #$8822
          Sta   $01E2,Y
          Sta   $0282,Y
          Lda   #$8888
          Sta   $0284,Y
          Sta   $0322,Y
          Sta   $03C2,Y
          Lda   #$2222
          Sta   $0462,Y
          Sta   $0502,Y
          Lda   #$2277
          Sta   $05A2,Y
          Sta   $06E4,Y
          Lda   #$7277
          Sta   $0642,Y
          Plb
          Cli
          Rtl
MarWL3    entry
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
          Mk4   $0002,$F0FF,$0700
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$8208
          Mk4   $0146,$FF00,$0022
          Mk4   $01E0,$F0FF,$0800
          Mk4   $01E6,$FF00,$0082
          Mk4   $0282,$00F0,$2802
          Mk4   $0286,$FF00,$0082
          Mk4   $0322,$00F0,$8808
          Mk4   $03C6,$FF00,$0022
          Mk4   $0460,$00F0,$8208
          Mk4   $0466,$0F00,$2022
          Mk4   $0500,$00F0,$8208
          Mk4   $05A2,$00F0,$7707
          Mk4   $0646,$FF00,$0077
          Mk4   $06E0,$00FF,$2200
          Mk4   $06E4,$00FF,$7700
          Mk4   $0780,$F0FF,$0200
          Mk4   $0782,$FF00,$0022
          Mk4   $0786,$0F00,$2022
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0504,Y
          Sta   $05A4,Y
          Sta   $0644,Y
          Sta   $06E2,Y
          Lda   #$2288
          Sta   $0144,Y
          Sta   $01E4,Y
          Lda   #$8888
          Sta   $01E2,Y
          Sta   $0284,Y
          Sta   $0324,Y
          Lda   #$7722
          Sta   $03C2,Y
          Lda   #$2277
          Sta   $03C4,Y
          Sta   $06E6,Y
          Lda   #$7828
          Sta   $0462,Y
          Lda   #$7277
          Sta   $0464,Y
          Lda   #$7727
          Sta   $0502,Y
          Lda   #$8878
          Sta   $0506,Y
          Sta   $05A6,Y
          Lda   #$2272
          Sta   $0642,Y
          Plb
          Cli
          Rtl
MarWR3    entry
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
          Mk4   $0004,$FF0F,$0070
          Mk4   $00A0,$F0FF,$0700
          Mk4   $0140,$00FF,$2200
          Mk4   $0144,$0F00,$8028
          Mk4   $01E0,$00FF,$2800
          Mk4   $01E6,$FF0F,$0080
          Mk4   $0280,$00FF,$2800
          Mk4   $0284,$0F00,$2082
          Mk4   $0324,$0F00,$8088
          Mk4   $03C0,$00FF,$2200
          Mk4   $0460,$00F0,$2202
          Mk4   $0466,$0F00,$8028
          Mk4   $0506,$0F00,$8028
          Mk4   $05A4,$0F00,$7077
          Mk4   $0640,$00FF,$7700
          Mk4   $06E2,$FF00,$0077
          Mk4   $06E6,$FF00,$0022
          Mk4   $0780,$00F0,$2202
          Mk4   $0784,$00FF,$2200
          Mk4   $0786,$FF0F,$0020
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0502,Y
          Sta   $05A2,Y
          Sta   $0642,Y
          Sta   $06E4,Y
          Lda   #$8822
          Sta   $0142,Y
          Sta   $01E2,Y
          Lda   #$8888
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0322,Y
          Lda   #$7722
          Sta   $03C2,Y
          Sta   $06E0,Y
          Lda   #$2277
          Sta   $03C4,Y
          Lda   #$7727
          Sta   $0462,Y
          Lda   #$8287
          Sta   $0464,Y
          Lda   #$8788
          Sta   $0500,Y
          Sta   $05A0,Y
          Lda   #$7277
          Sta   $0504,Y
          Lda   #$2722
          Sta   $0644,Y
          Plb
          Cli
          Rtl
MarWL2    entry
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
          Mk4   $0002,$F0FF,$0700
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$8208
          Mk4   $0146,$FF00,$0022
          Mk4   $01E0,$F0FF,$0800
          Mk4   $01E6,$FF00,$0082
          Mk4   $0282,$00F0,$2802
          Mk4   $0286,$FF00,$0082
          Mk4   $0322,$00F0,$8808
          Mk4   $03C2,$00FF,$2700
          Mk4   $03C6,$FF0F,$0020
          Mk4   $0462,$00F0,$7702
          Mk4   $0466,$FF00,$0022
          Mk4   $0500,$00FF,$8800
          Mk4   $0506,$FF00,$0022
          Mk4   $05A0,$00FF,$8800
          Mk4   $05A6,$FF00,$0027
          Mk4   $0642,$00F0,$7707
          Mk4   $0646,$FF00,$0077
          Mk4   $06E4,$000F,$7770
          Mk4   $06E6,$FF00,$0072
          Mk4   $0782,$00F0,$2202
          Mk4   $0784,$F0FF,$0200
          Mk4   $0786,$FF00,$0022
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0644,Y
          Lda   #$2288
          Sta   $0144,Y
          Sta   $01E4,Y
          Lda   #$8888
          Sta   $01E2,Y
          Sta   $0284,Y
          Sta   $0324,Y
          Lda   #$2272
          Sta   $03C4,Y
          Lda   #$2277
          Sta   $0464,Y
          Lda   #$7827
          Sta   $0502,Y
          Lda   #$8877
          Sta   $0504,Y
          Sta   $05A4,Y
          Lda   #$7727
          Sta   $05A2,Y
          Lda   #$7722
          Sta   $06E2,Y
          Plb
          Cli
          Rtl
MarWR2    entry
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
          Mk4   $0004,$FF0F,$0070
          Mk4   $00A0,$F0FF,$0700
          Mk4   $0140,$00FF,$2200
          Mk4   $0144,$0F00,$8028
          Mk4   $01E0,$00FF,$2800
          Mk4   $01E6,$FF0F,$0080
          Mk4   $0280,$00FF,$2800
          Mk4   $0284,$0F00,$2082
          Mk4   $0324,$0F00,$8088
          Mk4   $03C0,$F0FF,$0200
          Mk4   $03C4,$FF00,$0072
          Mk4   $0460,$00FF,$2200
          Mk4   $0464,$0F00,$2077
          Mk4   $0500,$00FF,$2200
          Mk4   $0506,$FF00,$0088
          Mk4   $05A0,$00FF,$7200
          Mk4   $05A6,$FF00,$0088
          Mk4   $0640,$00FF,$7700
          Mk4   $0644,$0F00,$7077
          Mk4   $06E0,$00FF,$2700
          Mk4   $06E2,$F000,$0777
          Mk4   $0780,$00FF,$2200
          Mk4   $0782,$FF0F,$0020
          Mk4   $0784,$0F00,$2022
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0642,Y
          Lda   #$8822
          Sta   $0142,Y
          Sta   $01E2,Y
          Lda   #$8888
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0322,Y
          Lda   #$2722
          Sta   $03C2,Y
          Lda   #$7722
          Sta   $0462,Y
          Lda   #$7788
          Sta   $0502,Y
          Sta   $05A2,Y
          Lda   #$7287
          Sta   $0504,Y
          Lda   #$7277
          Sta   $05A4,Y
          Lda   #$2277
          Sta   $06E4,Y
          Plb
          Cli
          Rtl
MarWL1    entry
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
          Mk4   $0002,$F0FF,$0700
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$8208
          Mk4   $0146,$FF00,$0022
          Mk4   $01E0,$F0FF,$0800
          Mk4   $01E6,$FF00,$0082
          Mk4   $0282,$00F0,$2802
          Mk4   $0286,$FF00,$0082
          Mk4   $0322,$00F0,$8808
          Mk4   $03C2,$00FF,$2200
          Mk4   $03C6,$FF00,$0022
          Mk4   $0500,$00F0,$8208
          Mk4   $05A0,$00F0,$8208
          Mk4   $05A6,$000F,$8870
          Mk4   $0646,$FF00,$0077
          Mk4   $06E0,$00FF,$2200
          Mk4   $06E2,$0F00,$7077
          Mk4   $06E4,$00FF,$7700
          Mk4   $0780,$F0FF,$0200
          Mk4   $0782,$FF00,$0022
          Mk4   $0786,$0F00,$2022
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0504,Y
          Sta   $05A4,Y
          Sta   $0642,Y
          Sta   $0644,Y
          Lda   #$2288
          Sta   $0144,Y
          Sta   $01E4,Y
          Lda   #$8888
          Sta   $01E2,Y
          Sta   $0284,Y
          Sta   $0324,Y
          Lda   #$7227
          Sta   $03C4,Y
          Lda   #$2222
          Sta   $0462,Y
          Lda   #$7727
          Sta   $0464,Y
          Lda   #$8822
          Sta   $0466,Y
          Lda   #$2722
          Sta   $0502,Y
          Lda   #$8872
          Sta   $0506,Y
          Lda   #$7722
          Sta   $05A2,Y
          Lda   #$2277
          Sta   $06E6,Y
          Plb
          Cli
          Rtl
SmallSlideL entry
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
          Mk4   $0004,$FF0F,$0070
          Mk4   $00A0,$F0FF,$0700
          Mk4   $00A4,$0F00,$7077
          Mk4   $0140,$00F0,$2202
          Mk4   $0144,$FF00,$0028
          Mk4   $0280,$00F0,$8208
          Mk4   $0286,$FF0F,$0080
          Mk4   $0320,$00FF,$7700
          Mk4   $03C0,$00F0,$2807
          Mk4   $0460,$00F0,$7707
          Mk4   $0500,$00FF,$7700
          Mk4   $0504,$0F00,$2022
          Mk4   $05A0,$00FF,$7200
          Mk4   $05A4,$FF00,$0077
          Mk4   $0640,$F0FF,$0700
          Mk4   $0644,$FF0F,$0070
          Mk4   $06E0,$000F,$2220
          Mk4   $06E2,$FF00,$0077
          Mk4   $0780,$00F0,$2202
          Mk4   $0782,$FF0F,$0020
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Lda   #$2822
          Sta   $0142,Y
          Lda   #$2888
          Sta   $01E0,Y
          Lda   #$2882
          Sta   $01E2,Y
          Sta   $0284,Y
          Lda   #$8888
          Sta   $01E4,Y
          Sta   $0282,Y
          Lda   #$2272
          Sta   $0322,Y
          Sta   $03C4,Y
          Lda   #$8278
          Sta   $0324,Y
          Lda   #$2288
          Sta   $03C2,Y
          Sta   $0462,Y
          Lda   #$2222
          Sta   $0464,Y
          Lda   #$7277
          Sta   $0502,Y
          Lda   #$7722
          Sta   $05A2,Y
          Lda   #$2722
          Sta   $0642,Y
          Plb
          Cli
          Rtl
SmallSlideR entry
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
          Mk4   $0004,$FF0F,$0070
          Mk4   $00A0,$00FF,$7700
          Mk4   $00A4,$FF00,$0077
          Mk4   $0140,$F0FF,$0800
          Mk4   $01E0,$00F0,$8808
          Mk4   $01E6,$FF0F,$0080
          Mk4   $0320,$00F0,$8802
          Mk4   $0324,$0F00,$7077
          Mk4   $03C0,$00F0,$2202
          Mk4   $0460,$00F0,$2202
          Mk4   $0500,$00FF,$2200
          Mk4   $0504,$0F00,$7077
          Mk4   $05A0,$F0FF,$0700
          Mk4   $05A4,$0F00,$7022
          Mk4   $0644,$FF00,$0027
          Mk4   $06E2,$F0FF,$0700
          Mk4   $06E4,$0F00,$2072
          Mk4   $06E6,$FF0F,$0020
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Lda   #$2228
          Sta   $0142,Y
          Lda   #$2222
          Sta   $0144,Y
          Sta   $0784,Y
          Lda   #$2288
          Sta   $01E2,Y
          Sta   $0280,Y
          Lda   #$2888
          Sta   $01E4,Y
          Lda   #$8888
          Sta   $0282,Y
          Lda   #$8882
          Sta   $0284,Y
          Lda   #$2272
          Sta   $0322,Y
          Lda   #$2872
          Sta   $03C2,Y
          Lda   #$2788
          Sta   $03C4,Y
          Lda   #$2822
          Sta   $0462,Y
          Lda   #$7787
          Sta   $0464,Y
          Lda   #$7722
          Sta   $0502,Y
          Lda   #$7277
          Sta   $05A2,Y
          Lda   #$2277
          Sta   $0642,Y
          Plb
          Cli
          Rtl
MarWR1    entry
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
          Mk4   $0002,$00F0,$7707
          Mk4   $0004,$FF00,$0077
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0140,$F0FF,$0200
          Mk4   $01E0,$F0FF,$0200
          Mk4   $01E6,$FF00,$0088
          Mk4   $0280,$F0FF,$0200
          Mk4   $0322,$00F0,$8808
          Mk4   $03C0,$F0FF,$0200
          Mk4   $03C4,$0F00,$2022
          Mk4   $0460,$00F0,$8208
          Mk4   $0466,$FF0F,$0020
          Mk4   $0500,$00F0,$8208
          Mk4   $05A0,$0FF0,$8008
          Mk4   $0640,$F0FF,$0700
          Mk4   $0646,$FF0F,$0070
          Mk4   $06E0,$00F0,$2702
          Mk4   $06E2,$0F00,$7077
          Mk4   $06E4,$00FF,$7700
          Mk4   $06E6,$0F00,$2072
          Mk4   $0780,$00FF,$2200
          Mk4   $0782,$FF0F,$0020
          Mk4   $0784,$F0FF,$0200
          Mk4   $0786,$FF00,$0022
          Lda   #$7777
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0502,Y
          Sta   $0644,Y
          Lda   #$2822
          Sta   $0142,Y
          Lda   #$8882
          Sta   $0144,Y
          Lda   #$2882
          Sta   $01E2,Y
          Lda   #$8888
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0324,Y
          Lda   #$2288
          Sta   $0284,Y
          Lda   #$7722
          Sta   $03C2,Y
          Lda   #$7727
          Sta   $0462,Y
          Sta   $05A2,Y
          Lda   #$2222
          Sta   $0464,Y
          Lda   #$2277
          Sta   $0504,Y
          Lda   #$8822
          Sta   $0506,Y
          Sta   $05A6,Y
          Lda   #$7277
          Sta   $05A4,Y
          Lda   #$2772
          Sta   $0642,Y
          Plb
          Cli
          Rtl
MarDie    entry
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
          Ora   #$7707
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0070
          Sta   $04
          Lda   $A0
          And   #$0FFF
          Ora   #$8000
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$F000
          Ora   #$0877
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8288
          Sta   $00
          Lda   #$8882
          Sta   $02
          Lda   #$2828
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0088
          Sta   $06
          Lda   #$2288
          Sta   $A0
          Lda   #$8882
          Sta   $A2
          Lda   #$2228
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2288
          Sta   $00
          Lda   #$8828
          Sta   $02
          Lda   #$2282
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0088
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$2222
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2282
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$2028
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$8878
          Sta   $A2
          Lda   #$7787
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2702
          Sta   $00
          Lda   #$2272
          Sta   $02
          Lda   #$7227
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$2202
          Sta   $A0
          Lda   #$2277
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$7778
          Sta   $02
          Lda   #$2287
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$2202
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   #$2277
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   #$2277
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
SClimbL2  entry
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
          And   #$F0FF
          Ora   #$0700
          Sta   $02
          Lda   #$7777
          Sta   $04
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$8208
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2288
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$2202
          Sta   $02
          Lda   #$8888
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0082
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$8808
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$2200
          Sta   $02
          Lda   #$7222
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$2282
          Sta   $A2
          Lda   #$7722
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8800
          Sta   $00
          Lda   #$2282
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A2
          And   #$00FF
          Ora   #$7700
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
SClimbL1  entry
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
          And   #$F0FF
          Ora   #$0700
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$8208
          Sta   $A2
          Lda   #$2288
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0800
          Sta   $00
          Lda   #$8888
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0082
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$2802
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$8808
          Sta   $02
          Lda   #$8888
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$2282
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8800
          Sta   $00
          Lda   #$2282
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A2
          And   #$F0FF
          Ora   #$0700
          Sta   $A2
          Lda   #$7787
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$0FFF
          Ora   #$2000
          Sta   $00
          Lda   $02
          And   #$F0FF
          Ora   #$0700
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
SClimbR2  entry
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
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0070
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$8028
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2800
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0080
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2800
          Sta   $00
          Lda   #$8888
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$2022
          Sta   $04
          Lda   #$8888
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$8088
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2227
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$0022
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$2277
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0080
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0700
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   #$2822
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0088
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$7700
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0077
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
SClimbR1  entry
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
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$FF0F
          Ora   #$0070
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0700
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$8028
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2800
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$8888
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0080
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$2800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$2082
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$8088
          Sta   $04
          Lda   #$2272
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0080
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$7700
          Sta   $00
          Lda   #$2272
          Sta   $02
          Lda   #$2822
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0088
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7877
          Sta   $A2
          Lda   $A4
          And   #$FF0F
          Ora   #$0070
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$7700
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0070
          Sta   $04
          Lda   $06
          And   #$FFF0
          Ora   #$0002
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl


	end
