	mcopy bank.macs
	keep	..:o:mario

MarBigWR1 start MARIO_SEG
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0004,$0F00,$7077
          Mk4   $00A0,$F0FF,$0700
          Mk4   $00A4,$0F00,$7077
          Mk4   $0140,$00FF,$7700
          Mk4   $0144,$0F00,$7077
          Mk4   $01E0,$00FF,$2200
          Mk4   $01E6,$0F00,$7077
          Mk4   $0280,$00F0,$2202
          Mk4   $0320,$00F0,$8802
          Mk4   $0326,$0F00,$8088
          Mk4   $03C0,$00F0,$8802
          Mk4   $0506,$FF00,$0028
          Mk4   $05A6,$FF0F,$0080
          Mk4   $0640,$F0FF,$0200
          Mk4   $0644,$FF00,$0077
          Mk4   $06E0,$00FF,$2200
          Mk4   $06E4,$0F00,$7022
          Mk4   $0780,$00FF,$2200
          Mk4   $0784,$0F00,$7022
          Mk4   $0786,$0FF0,$8008
          Mk4   $0820,$00F0,$2202
          Mk4   $08C0,$00F0,$2202
          Mk4   $0966,$0F00,$8072
          Mk4   $0A06,$FF00,$0072
          Mk4   $0AA6,$F00F,$0270
          Mk4   $0B46,$000F,$2270
          Mk4   $0BE0,$00F0,$8208
          Mk4   $0C80,$00FF,$7700
          Mk4   $0DC4,$FF0F,$0070
          Mk4   $0E60,$0FF0,$2002
          Mk4   $0F00,$00F0,$2202
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Sta   $0142,Y
          Sta   $01E4,Y
          Sta   $0962,Y
          Sta   $0964,Y
          Sta   $0A02,Y
          Sta   $0AA2,Y
          Sta   $0AA4,Y
          Sta   $0B42,Y
          Sta   $0B44,Y
          Sta   $0BE4,Y
          Sta   $0C84,Y
          Sta   $0DC2,Y
          Lda   #$8828
          Sta   $01E2,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Lda   #$8822
          Sta   $0322,Y
          Sta   $03C2,Y
          Sta   $0460,Y
          Sta   $0462,Y
          Lda   #$8888
          Sta   $0324,Y
          Sta   $03C6,Y
          Sta   $0466,Y
          Sta   $0502,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Sta   $0826,Y
          Sta   $0AA0,Y
          Sta   $0B40,Y
          Lda   #$2888
          Sta   $03C4,Y
          Lda   #$2822
          Sta   $0464,Y
          Lda   #$2222
          Sta   $0500,Y
          Sta   $0960,Y
          Sta   $0BE6,Y
          Sta   $0C86,Y
          Sta   $0D26,Y
          Lda   #$2282
          Sta   $0504,Y
          Lda   #$2277
          Sta   $0642,Y
          Lda   #$7227
          Sta   $06E2,Y
          Lda   #$7727
          Sta   $0782,Y
          Sta   $0822,Y
          Sta   $08C2,Y
          Sta   $0BE2,Y
          Sta   $0D24,Y
          Lda   #$2722
          Sta   $0824,Y
          Sta   $0A00,Y
          Sta   $0D20,Y
          Sta   $0DC0,Y
          Lda   #$2772
          Sta   $08C4,Y
          Sta   $0C82,Y
          Lda   #$8878
          Sta   $08C6,Y
          Lda   #$7887
          Sta   $0A04,Y
          Lda   #$7277
          Sta   $0D22,Y
          Plb
          Cli
          Rtl
MarBigCrch entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0014'               ;Hauteur
          dc    i2'$000A'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00FF,$7700
          Mk4   $0006,$FF0F,$0070
          Mk4   $00A2,$00F0,$7707
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0146,$FF0F,$0070
          Mk4   $01E8,$FF0F,$0070
          Mk4   $0280,$F0FF,$0200
          Mk4   $0286,$FF00,$0088
          Mk4   $0320,$F0FF,$0200
          Mk4   $0328,$FF0F,$0080
          Mk4   $03C0,$00FF,$2200
          Mk4   $03C8,$FF00,$0088
          Mk4   $0460,$00FF,$2200
          Mk4   $0468,$FF00,$0088
          Mk4   $0500,$00F0,$7207
          Mk4   $0508,$FF0F,$0070
          Mk4   $05A0,$00F0,$2702
          Mk4   $05A8,$FF0F,$0020
          Mk4   $0648,$FF00,$0022
          Mk4   $06E8,$FF00,$0022
          Mk4   $0788,$FF00,$0022
          Mk4   $0828,$FF00,$0027
          Mk4   $08C8,$FF00,$0077
          Mk4   $0960,$00F0,$8807
          Mk4   $0968,$FF0F,$0070
          Mk4   $0A00,$00F0,$8807
          Mk4   $0A08,$FF0F,$0070
          Mk4   $0AA0,$00FF,$7800
          Mk4   $0AA2,$FF00,$0087
          Mk4   $0B40,$F0FF,$0200
          Mk4   $0B42,$0F00,$2022
          Mk4   $0B44,$F0FF,$0200
          Mk4   $0B46,$0F00,$2022
          Mk4   $0BE0,$00F0,$2202
          Mk4   $0BE2,$0F00,$2022
          Mk4   $0BE4,$F0FF,$0200
          Mk4   $0BE8,$FF0F,$0020
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A4,Y
          Sta   $0142,Y
          Sta   $0144,Y
          Sta   $01E6,Y
          Sta   $0784,Y
          Sta   $0824,Y
          Sta   $0A04,Y
          Lda   #$2822
          Sta   $01E2,Y
          Sta   $0282,Y
          Sta   $0506,Y
          Lda   #$7788
          Sta   $01E4,Y
          Sta   $0A02,Y
          Lda   #$2888
          Sta   $0284,Y
          Lda   #$2288
          Sta   $0322,Y
          Sta   $03C2,Y
          Sta   $0462,Y
          Sta   $0464,Y
          Sta   $08C6,Y
          Lda   #$8888
          Sta   $0324,Y
          Sta   $0326,Y
          Sta   $03C4,Y
          Sta   $05A4,Y
          Sta   $0966,Y
          Sta   $0A06,Y
          Lda   #$8828
          Sta   $03C6,Y
          Sta   $0466,Y
          Lda   #$8822
          Sta   $0502,Y
          Lda   #$8288
          Sta   $0504,Y
          Sta   $05A6,Y
          Lda   #$8872
          Sta   $05A2,Y
          Lda   #$2222
          Sta   $0640,Y
          Sta   $0644,Y
          Sta   $06E0,Y
          Sta   $06E4,Y
          Sta   $0780,Y
          Sta   $0826,Y
          Sta   $0BE6,Y
          Lda   #$2227
          Sta   $0642,Y
          Sta   $06E2,Y
          Lda   #$2272
          Sta   $0646,Y
          Sta   $06E6,Y
          Sta   $0786,Y
          Sta   $0820,Y
          Lda   #$7727
          Sta   $0782,Y
          Lda   #$7722
          Sta   $0822,Y
          Lda   #$2277
          Sta   $08C0,Y
          Lda   #$8788
          Sta   $08C2,Y
          Sta   $0962,Y
          Lda   #$7877
          Sta   $08C4,Y
          Sta   $0964,Y
          Lda   #$8778
          Sta   $0AA6,Y
          Plb
          Cli
          Rtl
MarBigR 	entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0004,$0F00,$7077
          Mk4   $00A0,$F0FF,$0700
          Mk4   $00A4,$0F00,$7077
          Mk4   $0140,$00FF,$7700
          Mk4   $0144,$0F00,$7077
          Mk4   $01E0,$00FF,$2200
          Mk4   $01E6,$0F00,$7077
          Mk4   $0280,$00F0,$2202
          Mk4   $0320,$00F0,$8802
          Mk4   $0326,$0F00,$8088
          Mk4   $03C0,$00F0,$8802
          Mk4   $0506,$FF00,$0028
          Mk4   $05A6,$FF0F,$0080
          Mk4   $0640,$F0FF,$0200
          Mk4   $0646,$FF0F,$0020
          Mk4   $06E0,$00FF,$2200
          Mk4   $06E6,$FF00,$0022
          Mk4   $0780,$00F0,$2202
          Mk4   $0786,$0F00,$2022
          Mk4   $0820,$00F0,$2202
          Mk4   $0826,$0F00,$2022
          Mk4   $0B40,$00F0,$7708
          Mk4   $0B46,$0F00,$8077
          Mk4   $0BE0,$00F0,$7707
          Mk4   $0BE2,$FF00,$0077
          Mk4   $0BE4,$00FF,$7700
          Mk4   $0BE6,$0F00,$7077
          Mk4   $0C80,$00F0,$7707
          Mk4   $0C82,$FF0F,$0070
          Mk4   $0C84,$F0FF,$0700
          Mk4   $0C86,$0F00,$7077
          Mk4   $0D20,$00F0,$7707
          Mk4   $0D22,$FF0F,$0070
          Mk4   $0D24,$F0FF,$0700
          Mk4   $0D26,$0F00,$7077
          Mk4   $0DC0,$00FF,$2200
          Mk4   $0DC2,$FF0F,$0020
          Mk4   $0DC4,$F0FF,$0200
          Mk4   $0DC6,$FF00,$0022
          Mk4   $0E62,$FF0F,$0020
          Mk4   $0E64,$F0FF,$0200
          Mk4   $0F02,$FF0F,$0020
          Mk4   $0F04,$F0FF,$0200
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Sta   $0142,Y
          Sta   $01E4,Y
          Sta   $08C2,Y
          Sta   $08C4,Y
          Sta   $0A02,Y
          Sta   $0A04,Y
          Sta   $0AA2,Y
          Sta   $0AA4,Y
          Sta   $0B42,Y
          Sta   $0B44,Y
          Lda   #$8828
          Sta   $01E2,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Lda   #$8822
          Sta   $0322,Y
          Sta   $03C2,Y
          Sta   $0460,Y
          Sta   $0462,Y
          Lda   #$8888
          Sta   $0324,Y
          Sta   $03C6,Y
          Sta   $0466,Y
          Sta   $0502,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2888
          Sta   $03C4,Y
          Lda   #$2822
          Sta   $0464,Y
          Lda   #$2222
          Sta   $0500,Y
          Sta   $0E60,Y
          Sta   $0E66,Y
          Sta   $0F00,Y
          Sta   $0F06,Y
          Lda   #$2282
          Sta   $0504,Y
          Lda   #$2227
          Sta   $0642,Y
          Lda   #$7222
          Sta   $0644,Y
          Lda   #$2277
          Sta   $06E2,Y
          Sta   $0782,Y
          Sta   $0822,Y
          Lda   #$7722
          Sta   $06E4,Y
          Sta   $0784,Y
          Sta   $0824,Y
          Lda   #$2722
          Sta   $08C0,Y
          Sta   $0960,Y
          Lda   #$2272
          Sta   $08C6,Y
          Sta   $0966,Y
          Lda   #$7778
          Sta   $0962,Y
          Lda   #$8777
          Sta   $0964,Y
          Lda   #$8788
          Sta   $0A00,Y
          Sta   $0AA0,Y
          Lda   #$8878
          Sta   $0A06,Y
          Sta   $0AA6,Y
          Plb
          Cli
          Rtl
MarBigWR2 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0004,$0F00,$7077
          Mk4   $00A0,$F0FF,$0700
          Mk4   $00A4,$0F00,$7077
          Mk4   $0140,$00FF,$7700
          Mk4   $0144,$0F00,$7077
          Mk4   $01E0,$00FF,$2200
          Mk4   $01E6,$0F00,$7077
          Mk4   $0280,$00F0,$2202
          Mk4   $0320,$00F0,$8802
          Mk4   $0326,$0F00,$8088
          Mk4   $03C0,$00F0,$8802
          Mk4   $0506,$FF00,$0028
          Mk4   $05A6,$FF0F,$0080
          Mk4   $0640,$F0FF,$0700
          Mk4   $0646,$FF0F,$0070
          Mk4   $06E0,$00FF,$7200
          Mk4   $06E6,$FF00,$0027
          Mk4   $0780,$00F0,$2207
          Mk4   $0786,$FF00,$0027
          Mk4   $0820,$00F0,$2207
          Mk4   $0826,$FF00,$0077
          Mk4   $08C0,$00F0,$2207
          Mk4   $08C6,$FF00,$0087
          Mk4   $0960,$00F0,$7207
          Mk4   $0966,$0F00,$7088
          Mk4   $0A00,$00F0,$7707
          Mk4   $0AA0,$00FF,$7700
          Mk4   $0B40,$00FF,$7700
          Mk4   $0B46,$0F00,$7027
          Mk4   $0BE0,$F0FF,$0700
          Mk4   $0BE6,$FF0F,$0070
          Mk4   $0C86,$FF0F,$0020
          Mk4   $0D26,$FF00,$0022
          Mk4   $0E60,$F0FF,$0200
          Mk4   $0E64,$FF0F,$0020
          Mk4   $0F00,$F0FF,$0200
          Mk4   $0F04,$FF00,$0022
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Sta   $0142,Y
          Sta   $01E4,Y
          Sta   $0642,Y
          Sta   $0784,Y
          Sta   $0824,Y
          Sta   $0B42,Y
          Sta   $0B44,Y
          Sta   $0BE2,Y
          Sta   $0C82,Y
          Sta   $0D22,Y
          Lda   #$8828
          Sta   $01E2,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Sta   $0964,Y
          Sta   $0A04,Y
          Lda   #$8822
          Sta   $0322,Y
          Sta   $03C2,Y
          Sta   $0460,Y
          Sta   $0462,Y
          Sta   $08C4,Y
          Sta   $0AA4,Y
          Lda   #$8888
          Sta   $0324,Y
          Sta   $03C6,Y
          Sta   $0466,Y
          Sta   $0502,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2888
          Sta   $03C4,Y
          Lda   #$2822
          Sta   $0464,Y
          Lda   #$2222
          Sta   $0500,Y
          Sta   $0822,Y
          Sta   $08C2,Y
          Sta   $0962,Y
          Sta   $0A02,Y
          Sta   $0DC2,Y
          Sta   $0E62,Y
          Sta   $0F02,Y
          Lda   #$2282
          Sta   $0504,Y
          Lda   #$2277
          Sta   $0644,Y
          Sta   $06E4,Y
          Sta   $0AA2,Y
          Sta   $0C84,Y
          Lda   #$7722
          Sta   $06E2,Y
          Lda   #$2722
          Sta   $0782,Y
          Lda   #$7787
          Sta   $0A06,Y
          Lda   #$7727
          Sta   $0AA6,Y
          Lda   #$7277
          Sta   $0BE4,Y
          Lda   #$2272
          Sta   $0D24,Y
          Plb
          Cli
          Rtl
MarBigWR3 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0018'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0004,$0F00,$7077
          Mk4   $00A0,$F0FF,$0700
          Mk4   $00A4,$0F00,$7077
          Mk4   $0140,$00FF,$7700
          Mk4   $0144,$0F00,$7077
          Mk4   $01E0,$00FF,$2200
          Mk4   $01E6,$0F00,$7077
          Mk4   $0280,$00F0,$2202
          Mk4   $0320,$00F0,$8802
          Mk4   $0326,$0F00,$8088
          Mk4   $03C0,$00F0,$8802
          Mk4   $0506,$FF00,$0028
          Mk4   $05A6,$FF0F,$0080
          Mk4   $0640,$F0FF,$0200
          Mk4   $0644,$0F00,$7077
          Mk4   $06E0,$00FF,$2700
          Mk4   $0780,$00F0,$2702
          Mk4   $0786,$FF00,$0078
          Mk4   $0960,$00F0,$7702
          Mk4   $0A00,$00FF,$7700
          Mk4   $0A06,$FF0F,$0070
          Mk4   $0AA0,$F0FF,$0700
          Mk4   $0AA6,$FF0F,$0020
          Mk4   $0B46,$FF00,$0077
          Mk4   $0BE6,$FF00,$0077
          Mk4   $0C86,$FF00,$0077
          Mk4   $0D22,$FF00,$0077
          Mk4   $0D24,$00F0,$2202
          Mk4   $0D26,$FF0F,$0020
          Mk4   $0DC0,$FF00,$0022
          Mk4   $0DC4,$00F0,$2202
          Mk4   $0DC6,$0F00,$2022
          Mk4   $0E60,$FF0F,$0020
          Mk4   $0E64,$00F0,$2202
          Mk4   $0E66,$0F00,$2022
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Sta   $0142,Y
          Sta   $01E4,Y
          Sta   $0642,Y
          Sta   $0962,Y
          Sta   $0A02,Y
          Sta   $0A04,Y
          Sta   $0AA2,Y
          Sta   $0AA4,Y
          Sta   $0B42,Y
          Sta   $0BE2,Y
          Lda   #$8828
          Sta   $01E2,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Sta   $0826,Y
          Sta   $08C6,Y
          Lda   #$8822
          Sta   $0322,Y
          Sta   $03C2,Y
          Sta   $0460,Y
          Sta   $0462,Y
          Sta   $0966,Y
          Lda   #$8888
          Sta   $0324,Y
          Sta   $03C6,Y
          Sta   $0466,Y
          Sta   $0502,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2888
          Sta   $03C4,Y
          Lda   #$2822
          Sta   $0464,Y
          Lda   #$2222
          Sta   $0500,Y
          Sta   $0782,Y
          Sta   $0784,Y
          Sta   $0822,Y
          Sta   $0824,Y
          Sta   $08C4,Y
          Sta   $0964,Y
          Sta   $0B40,Y
          Sta   $0BE0,Y
          Sta   $0C80,Y
          Sta   $0D20,Y
          Lda   #$2282
          Sta   $0504,Y
          Lda   #$2272
          Sta   $06E2,Y
          Sta   $08C2,Y
          Lda   #$7727
          Sta   $06E4,Y
          Sta   $0C84,Y
          Lda   #$7722
          Sta   $0820,Y
          Sta   $08C0,Y
          Sta   $0BE4,Y
          Lda   #$2277
          Sta   $0B44,Y
          Lda   #$7277
          Sta   $0C82,Y
          Plb
          Cli
          Rtl
MarBigWR4 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0004,$0F00,$7077
          Mk4   $00A0,$F0FF,$0700
          Mk4   $00A4,$0F00,$7077
          Mk4   $0140,$00FF,$7700
          Mk4   $0144,$0F00,$7077
          Mk4   $01E0,$00FF,$2200
          Mk4   $01E6,$0F00,$7077
          Mk4   $0280,$00F0,$2202
          Mk4   $0320,$00F0,$8802
          Mk4   $0326,$0F00,$8088
          Mk4   $03C0,$00F0,$8802
          Mk4   $0506,$FF00,$0028
          Mk4   $05A6,$FF0F,$0080
          Mk4   $0640,$F0FF,$0700
          Mk4   $0646,$FF0F,$0070
          Mk4   $06E0,$00FF,$7200
          Mk4   $06E6,$FF00,$0027
          Mk4   $0780,$00F0,$2207
          Mk4   $0786,$FF00,$0027
          Mk4   $0820,$00F0,$2207
          Mk4   $0826,$FF00,$0077
          Mk4   $08C0,$00F0,$2207
          Mk4   $08C6,$FF00,$0087
          Mk4   $0960,$00F0,$7207
          Mk4   $0966,$0F00,$7088
          Mk4   $0A00,$00F0,$7707
          Mk4   $0AA0,$00FF,$7700
          Mk4   $0B40,$00FF,$7700
          Mk4   $0B46,$0F00,$7077
          Mk4   $0BE0,$F0FF,$0700
          Mk4   $0BE6,$FF0F,$0070
          Mk4   $0C86,$FF0F,$0020
          Mk4   $0D22,$00F0,$7707
          Mk4   $0D26,$FF00,$0022
          Mk4   $0DC2,$00F0,$2202
          Mk4   $0DC4,$FF0F,$0020
          Mk4   $0E64,$FF00,$0022
          Mk4   $0F04,$0F00,$2022
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Sta   $0142,Y
          Sta   $01E4,Y
          Sta   $0642,Y
          Sta   $0784,Y
          Sta   $0824,Y
          Sta   $0AA6,Y
          Sta   $0B42,Y
          Lda   #$8828
          Sta   $01E2,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Sta   $0964,Y
          Sta   $0A04,Y
          Lda   #$8822
          Sta   $0322,Y
          Sta   $03C2,Y
          Sta   $0460,Y
          Sta   $0462,Y
          Sta   $08C4,Y
          Sta   $0AA4,Y
          Lda   #$8888
          Sta   $0324,Y
          Sta   $03C6,Y
          Sta   $0466,Y
          Sta   $0502,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2888
          Sta   $03C4,Y
          Lda   #$2822
          Sta   $0464,Y
          Lda   #$2222
          Sta   $0500,Y
          Sta   $0822,Y
          Sta   $08C2,Y
          Sta   $0962,Y
          Sta   $0A02,Y
          Sta   $0BE4,Y
          Sta   $0C84,Y
          Sta   $0E62,Y
          Sta   $0F02,Y
          Lda   #$2282
          Sta   $0504,Y
          Lda   #$2277
          Sta   $0644,Y
          Sta   $06E4,Y
          Sta   $0AA2,Y
          Sta   $0BE2,Y
          Sta   $0C82,Y
          Lda   #$7722
          Sta   $06E2,Y
          Lda   #$2722
          Sta   $0782,Y
          Sta   $0B44,Y
          Lda   #$7787
          Sta   $0A06,Y
          Lda   #$2272
          Sta   $0D24,Y
          Plb
          Cli
          Rtl
MarBigLft entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$7707
          Mk4   $00A2,$00F0,$7707
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$7707
          Mk4   $0146,$FF00,$0077
          Mk4   $01E0,$00F0,$7707
          Mk4   $01E6,$FF00,$0022
          Mk4   $0286,$0F00,$2022
          Mk4   $0320,$00F0,$8808
          Mk4   $0326,$0F00,$2088
          Mk4   $03C6,$0F00,$2088
          Mk4   $0500,$00FF,$8200
          Mk4   $05A0,$F0FF,$0800
          Mk4   $0640,$F0FF,$0200
          Mk4   $0646,$FF0F,$0020
          Mk4   $06E0,$00FF,$2200
          Mk4   $06E6,$FF00,$0022
          Mk4   $0780,$00F0,$2202
          Mk4   $0786,$0F00,$2022
          Mk4   $0820,$00F0,$2202
          Mk4   $0826,$0F00,$2022
          Mk4   $0B40,$00F0,$7708
          Mk4   $0B46,$0F00,$8077
          Mk4   $0BE0,$00F0,$7707
          Mk4   $0BE2,$FF00,$0077
          Mk4   $0BE4,$00FF,$7700
          Mk4   $0BE6,$0F00,$7077
          Mk4   $0C80,$00F0,$7707
          Mk4   $0C82,$FF0F,$0070
          Mk4   $0C84,$F0FF,$0700
          Mk4   $0C86,$0F00,$7077
          Mk4   $0D20,$00F0,$7707
          Mk4   $0D22,$FF0F,$0070
          Mk4   $0D24,$F0FF,$0700
          Mk4   $0D26,$0F00,$7077
          Mk4   $0DC0,$00FF,$2200
          Mk4   $0DC2,$FF0F,$0020
          Mk4   $0DC4,$F0FF,$0200
          Mk4   $0DC6,$FF00,$0022
          Mk4   $0E62,$FF0F,$0020
          Mk4   $0E64,$F0FF,$0200
          Mk4   $0F02,$FF0F,$0020
          Mk4   $0F04,$F0FF,$0200
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A4,Y
          Sta   $0144,Y
          Sta   $01E2,Y
          Sta   $08C2,Y
          Sta   $08C4,Y
          Sta   $0A02,Y
          Sta   $0A04,Y
          Sta   $0AA2,Y
          Sta   $0AA4,Y
          Sta   $0B42,Y
          Sta   $0B44,Y
          Lda   #$8288
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Lda   #$8888
          Sta   $0322,Y
          Sta   $03C0,Y
          Sta   $0460,Y
          Sta   $0504,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2288
          Sta   $0324,Y
          Sta   $03C4,Y
          Sta   $0464,Y
          Sta   $0466,Y
          Lda   #$8882
          Sta   $03C2,Y
          Lda   #$2282
          Sta   $0462,Y
          Lda   #$2822
          Sta   $0502,Y
          Lda   #$2222
          Sta   $0506,Y
          Sta   $0E60,Y
          Sta   $0E66,Y
          Sta   $0F00,Y
          Sta   $0F06,Y
          Lda   #$2227
          Sta   $0642,Y
          Lda   #$7222
          Sta   $0644,Y
          Lda   #$2277
          Sta   $06E2,Y
          Sta   $0782,Y
          Sta   $0822,Y
          Lda   #$7722
          Sta   $06E4,Y
          Sta   $0784,Y
          Sta   $0824,Y
          Lda   #$2722
          Sta   $08C0,Y
          Sta   $0960,Y
          Lda   #$2272
          Sta   $08C6,Y
          Sta   $0966,Y
          Lda   #$7778
          Sta   $0962,Y
          Lda   #$8777
          Sta   $0964,Y
          Lda   #$8788
          Sta   $0A00,Y
          Sta   $0AA0,Y
          Lda   #$8878
          Sta   $0A06,Y
          Sta   $0AA6,Y
          Plb
          Cli
          Rtl
MarBigWL1 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$7707
          Mk4   $00A2,$00F0,$7707
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$7707
          Mk4   $0146,$FF00,$0077
          Mk4   $01E0,$00F0,$7707
          Mk4   $01E6,$FF00,$0022
          Mk4   $0286,$0F00,$2022
          Mk4   $0320,$00F0,$8808
          Mk4   $0326,$0F00,$2088
          Mk4   $03C6,$0F00,$2088
          Mk4   $0500,$00FF,$8200
          Mk4   $05A0,$F0FF,$0800
          Mk4   $0642,$00FF,$7700
          Mk4   $0646,$FF0F,$0020
          Mk4   $06E2,$00F0,$2207
          Mk4   $06E6,$FF00,$0022
          Mk4   $0780,$0FF0,$8008
          Mk4   $0782,$00F0,$2207
          Mk4   $0786,$FF00,$0022
          Mk4   $0826,$0F00,$2022
          Mk4   $08C6,$0F00,$2022
          Mk4   $0960,$00F0,$2708
          Mk4   $0A00,$00FF,$2700
          Mk4   $0AA0,$F00F,$0720
          Mk4   $0B40,$F000,$0722
          Mk4   $0BE6,$0F00,$8028
          Mk4   $0C86,$FF00,$0077
          Mk4   $0DC2,$F0FF,$0700
          Mk4   $0E66,$0FF0,$2002
          Mk4   $0F06,$0F00,$2022
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A4,Y
          Sta   $0144,Y
          Sta   $01E2,Y
          Sta   $0962,Y
          Sta   $0964,Y
          Sta   $0A04,Y
          Sta   $0AA2,Y
          Sta   $0AA4,Y
          Sta   $0B42,Y
          Sta   $0B44,Y
          Sta   $0BE2,Y
          Sta   $0C82,Y
          Sta   $0DC4,Y
          Lda   #$8288
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Lda   #$8888
          Sta   $0322,Y
          Sta   $03C0,Y
          Sta   $0460,Y
          Sta   $0504,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Sta   $0820,Y
          Sta   $0AA6,Y
          Sta   $0B46,Y
          Lda   #$2288
          Sta   $0324,Y
          Sta   $03C4,Y
          Sta   $0464,Y
          Sta   $0466,Y
          Lda   #$8882
          Sta   $03C2,Y
          Lda   #$2282
          Sta   $0462,Y
          Lda   #$2822
          Sta   $0502,Y
          Lda   #$2222
          Sta   $0506,Y
          Sta   $0966,Y
          Sta   $0BE0,Y
          Sta   $0C80,Y
          Sta   $0D20,Y
          Lda   #$7722
          Sta   $0644,Y
          Lda   #$7227
          Sta   $06E4,Y
          Lda   #$7277
          Sta   $0784,Y
          Sta   $0824,Y
          Sta   $08C4,Y
          Sta   $0BE4,Y
          Sta   $0D22,Y
          Lda   #$2272
          Sta   $0822,Y
          Sta   $0A06,Y
          Sta   $0D26,Y
          Sta   $0DC6,Y
          Lda   #$8788
          Sta   $08C0,Y
          Lda   #$2772
          Sta   $08C2,Y
          Sta   $0C84,Y
          Lda   #$7887
          Sta   $0A02,Y
          Lda   #$7727
          Sta   $0D24,Y
          Plb
          Cli
          Rtl
MarBigWL2 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$7707
          Mk4   $00A2,$00F0,$7707
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$7707
          Mk4   $0146,$FF00,$0077
          Mk4   $01E0,$00F0,$7707
          Mk4   $01E6,$FF00,$0022
          Mk4   $0286,$0F00,$2022
          Mk4   $0320,$00F0,$8808
          Mk4   $0326,$0F00,$2088
          Mk4   $03C6,$0F00,$2088
          Mk4   $0500,$00FF,$8200
          Mk4   $05A0,$F0FF,$0800
          Mk4   $0640,$F0FF,$0700
          Mk4   $0646,$FF0F,$0070
          Mk4   $06E0,$00FF,$7200
          Mk4   $06E6,$FF00,$0027
          Mk4   $0780,$00FF,$7200
          Mk4   $0786,$0F00,$7022
          Mk4   $0820,$00FF,$7700
          Mk4   $0826,$0F00,$7022
          Mk4   $08C0,$00FF,$7800
          Mk4   $08C6,$0F00,$7022
          Mk4   $0960,$00F0,$8807
          Mk4   $0966,$0F00,$7027
          Mk4   $0A06,$0F00,$7077
          Mk4   $0AA6,$FF00,$0077
          Mk4   $0B40,$00F0,$7207
          Mk4   $0B46,$FF00,$0077
          Mk4   $0BE0,$F0FF,$0700
          Mk4   $0BE6,$FF0F,$0070
          Mk4   $0C80,$F0FF,$0200
          Mk4   $0D20,$00FF,$2200
          Mk4   $0E62,$F0FF,$0200
          Mk4   $0E66,$FF0F,$0020
          Mk4   $0F02,$00FF,$2200
          Mk4   $0F06,$FF0F,$0020
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A4,Y
          Sta   $0144,Y
          Sta   $01E2,Y
          Sta   $0644,Y
          Sta   $0782,Y
          Sta   $0822,Y
          Sta   $0B42,Y
          Sta   $0B44,Y
          Sta   $0BE4,Y
          Sta   $0C84,Y
          Sta   $0D24,Y
          Lda   #$8288
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Sta   $0962,Y
          Sta   $0A02,Y
          Lda   #$8888
          Sta   $0322,Y
          Sta   $03C0,Y
          Sta   $0460,Y
          Sta   $0504,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2288
          Sta   $0324,Y
          Sta   $03C4,Y
          Sta   $0464,Y
          Sta   $0466,Y
          Sta   $08C2,Y
          Sta   $0AA2,Y
          Lda   #$8882
          Sta   $03C2,Y
          Lda   #$2282
          Sta   $0462,Y
          Lda   #$2822
          Sta   $0502,Y
          Lda   #$2222
          Sta   $0506,Y
          Sta   $0824,Y
          Sta   $08C4,Y
          Sta   $0964,Y
          Sta   $0A04,Y
          Sta   $0DC4,Y
          Sta   $0E64,Y
          Sta   $0F04,Y
          Lda   #$7722
          Sta   $0642,Y
          Sta   $06E2,Y
          Sta   $0AA4,Y
          Sta   $0C82,Y
          Lda   #$2277
          Sta   $06E4,Y
          Lda   #$2272
          Sta   $0784,Y
          Lda   #$7877
          Sta   $0A00,Y
          Lda   #$7277
          Sta   $0AA0,Y
          Lda   #$7727
          Sta   $0BE2,Y
          Lda   #$2722
          Sta   $0D22,Y
          Plb
          Cli
          Rtl
MarBigWL3 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0018'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$7707
          Mk4   $00A2,$00F0,$7707
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$7707
          Mk4   $0146,$FF00,$0077
          Mk4   $01E0,$00F0,$7707
          Mk4   $01E6,$FF00,$0022
          Mk4   $0286,$0F00,$2022
          Mk4   $0320,$00F0,$8808
          Mk4   $0326,$0F00,$2088
          Mk4   $03C6,$0F00,$2088
          Mk4   $0500,$00FF,$8200
          Mk4   $05A0,$F0FF,$0800
          Mk4   $0642,$00F0,$7707
          Mk4   $0646,$FF0F,$0020
          Mk4   $06E6,$FF00,$0072
          Mk4   $0780,$00FF,$8700
          Mk4   $0786,$0F00,$2072
          Mk4   $0966,$0F00,$2077
          Mk4   $0A00,$F0FF,$0700
          Mk4   $0A06,$FF00,$0077
          Mk4   $0AA0,$F0FF,$0200
          Mk4   $0AA6,$FF0F,$0070
          Mk4   $0B40,$00FF,$7700
          Mk4   $0BE0,$00FF,$7700
          Mk4   $0C80,$00FF,$7700
          Mk4   $0D20,$F0FF,$0200
          Mk4   $0D22,$0F00,$2022
          Mk4   $0D24,$00FF,$7700
          Mk4   $0DC0,$00F0,$2202
          Mk4   $0DC2,$0F00,$2022
          Mk4   $0DC6,$00FF,$2200
          Mk4   $0E60,$00F0,$2202
          Mk4   $0E62,$0F00,$2022
          Mk4   $0E66,$F0FF,$0200
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A4,Y
          Sta   $0144,Y
          Sta   $01E2,Y
          Sta   $0644,Y
          Sta   $0964,Y
          Sta   $0A02,Y
          Sta   $0A04,Y
          Sta   $0AA2,Y
          Sta   $0AA4,Y
          Sta   $0B44,Y
          Sta   $0BE4,Y
          Lda   #$8288
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Sta   $0820,Y
          Sta   $08C0,Y
          Lda   #$8888
          Sta   $0322,Y
          Sta   $03C0,Y
          Sta   $0460,Y
          Sta   $0504,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2288
          Sta   $0324,Y
          Sta   $03C4,Y
          Sta   $0464,Y
          Sta   $0466,Y
          Sta   $0960,Y
          Lda   #$8882
          Sta   $03C2,Y
          Lda   #$2282
          Sta   $0462,Y
          Lda   #$2822
          Sta   $0502,Y
          Lda   #$2222
          Sta   $0506,Y
          Sta   $0782,Y
          Sta   $0784,Y
          Sta   $0822,Y
          Sta   $0824,Y
          Sta   $08C2,Y
          Sta   $0962,Y
          Sta   $0B46,Y
          Sta   $0BE6,Y
          Sta   $0C86,Y
          Sta   $0D26,Y
          Lda   #$7277
          Sta   $06E2,Y
          Sta   $0C82,Y
          Lda   #$2722
          Sta   $06E4,Y
          Sta   $08C4,Y
          Lda   #$2277
          Sta   $0826,Y
          Sta   $08C6,Y
          Sta   $0BE2,Y
          Lda   #$7722
          Sta   $0B42,Y
          Lda   #$7727
          Sta   $0C84,Y
          Plb
          Cli
          Rtl
MarBigWL4 entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$7707
          Mk4   $00A2,$00F0,$7707
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$7707
          Mk4   $0146,$FF00,$0077
          Mk4   $01E0,$00F0,$7707
          Mk4   $01E6,$FF00,$0022
          Mk4   $0286,$0F00,$2022
          Mk4   $0320,$00F0,$8808
          Mk4   $0326,$0F00,$2088
          Mk4   $03C6,$0F00,$2088
          Mk4   $0500,$00FF,$8200
          Mk4   $05A0,$F0FF,$0800
          Mk4   $0640,$F0FF,$0700
          Mk4   $0646,$FF0F,$0070
          Mk4   $06E0,$00FF,$7200
          Mk4   $06E6,$FF00,$0027
          Mk4   $0780,$00FF,$7200
          Mk4   $0786,$0F00,$7022
          Mk4   $0820,$00FF,$7700
          Mk4   $0826,$0F00,$7022
          Mk4   $08C0,$00FF,$7800
          Mk4   $08C6,$0F00,$7022
          Mk4   $0960,$00F0,$8807
          Mk4   $0966,$0F00,$7027
          Mk4   $0A06,$0F00,$7077
          Mk4   $0AA6,$FF00,$0077
          Mk4   $0B40,$00F0,$7707
          Mk4   $0B46,$FF00,$0077
          Mk4   $0BE0,$F0FF,$0700
          Mk4   $0BE6,$FF0F,$0070
          Mk4   $0C80,$F0FF,$0200
          Mk4   $0D20,$00FF,$2200
          Mk4   $0D24,$0F00,$7077
          Mk4   $0DC2,$F0FF,$0200
          Mk4   $0DC4,$0F00,$2022
          Mk4   $0E62,$00FF,$2200
          Mk4   $0F02,$00F0,$2202
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A4,Y
          Sta   $0144,Y
          Sta   $01E2,Y
          Sta   $0644,Y
          Sta   $0782,Y
          Sta   $0822,Y
          Sta   $0AA0,Y
          Sta   $0B44,Y
          Lda   #$8288
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Sta   $0962,Y
          Sta   $0A02,Y
          Lda   #$8888
          Sta   $0322,Y
          Sta   $03C0,Y
          Sta   $0460,Y
          Sta   $0504,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Lda   #$2288
          Sta   $0324,Y
          Sta   $03C4,Y
          Sta   $0464,Y
          Sta   $0466,Y
          Sta   $08C2,Y
          Sta   $0AA2,Y
          Lda   #$8882
          Sta   $03C2,Y
          Lda   #$2282
          Sta   $0462,Y
          Lda   #$2822
          Sta   $0502,Y
          Lda   #$2222
          Sta   $0506,Y
          Sta   $0824,Y
          Sta   $08C4,Y
          Sta   $0964,Y
          Sta   $0A04,Y
          Sta   $0BE2,Y
          Sta   $0C82,Y
          Sta   $0E64,Y
          Sta   $0F04,Y
          Lda   #$7722
          Sta   $0642,Y
          Sta   $06E2,Y
          Sta   $0AA4,Y
          Sta   $0BE4,Y
          Sta   $0C84,Y
          Lda   #$2277
          Sta   $06E4,Y
          Lda   #$2272
          Sta   $0784,Y
          Sta   $0B42,Y
          Lda   #$7877
          Sta   $0A00,Y
          Lda   #$2722
          Sta   $0D22,Y
          Plb
          Cli
          Rtl
MarLftCrch entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0014'               ;Hauteur
          dc    i2'$000A'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00F0,$7707
          Mk4   $00A2,$00F0,$7707
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0142,$00F0,$7707
          Mk4   $0146,$FF00,$0077
          Mk4   $01E0,$00F0,$7707
          Mk4   $01E6,$FF00,$0022
          Mk4   $0286,$0F00,$2022
          Mk4   $0320,$00F0,$8808
          Mk4   $0326,$0F00,$2088
          Mk4   $0500,$00F0,$8207
          Mk4   $0508,$FF0F,$0070
          Mk4   $05A0,$00F0,$2802
          Mk4   $05A8,$FF0F,$0020
          Mk4   $0648,$FF00,$0022
          Mk4   $06E8,$FF00,$0022
          Mk4   $0788,$FF00,$0022
          Mk4   $0828,$FF00,$0027
          Mk4   $08C8,$FF00,$0077
          Mk4   $0960,$00F0,$8807
          Mk4   $0968,$FF0F,$0070
          Mk4   $0A00,$00F0,$8807
          Mk4   $0A08,$FF0F,$0070
          Mk4   $0AA0,$00FF,$7800
          Mk4   $0AA2,$FF00,$0087
          Mk4   $0B40,$F0FF,$0200
          Mk4   $0B42,$0F00,$2022
          Mk4   $0B44,$F0FF,$0200
          Mk4   $0B46,$0F00,$2022
          Mk4   $0BE0,$00F0,$2202
          Mk4   $0BE2,$0F00,$2022
          Mk4   $0BE4,$F0FF,$0200
          Mk4   $0BE8,$FF0F,$0020
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A4,Y
          Sta   $0144,Y
          Sta   $01E2,Y
          Sta   $0784,Y
          Sta   $0824,Y
          Sta   $0A04,Y
          Lda   #$8288
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0284,Y
          Lda   #$8888
          Sta   $0322,Y
          Sta   $03C0,Y
          Sta   $0460,Y
          Sta   $0504,Y
          Sta   $05A2,Y
          Sta   $05A4,Y
          Sta   $0966,Y
          Sta   $0A06,Y
          Lda   #$2288
          Sta   $0324,Y
          Sta   $03C4,Y
          Sta   $03C6,Y
          Sta   $0464,Y
          Sta   $0466,Y
          Sta   $08C6,Y
          Lda   #$8882
          Sta   $03C2,Y
          Lda   #$2282
          Sta   $0462,Y
          Lda   #$2822
          Sta   $0502,Y
          Lda   #$2722
          Sta   $0506,Y
          Lda   #$7227
          Sta   $05A6,Y
          Lda   #$2222
          Sta   $0640,Y
          Sta   $0644,Y
          Sta   $06E0,Y
          Sta   $06E4,Y
          Sta   $0780,Y
          Sta   $0826,Y
          Sta   $0BE6,Y
          Lda   #$2227
          Sta   $0642,Y
          Sta   $06E2,Y
          Lda   #$2272
          Sta   $0646,Y
          Sta   $06E6,Y
          Sta   $0786,Y
          Sta   $0820,Y
          Lda   #$7727
          Sta   $0782,Y
          Lda   #$7722
          Sta   $0822,Y
          Lda   #$2277
          Sta   $08C0,Y
          Lda   #$8788
          Sta   $08C2,Y
          Sta   $0962,Y
          Lda   #$7877
          Sta   $08C4,Y
          Sta   $0964,Y
          Lda   #$7788
          Sta   $0A02,Y
          Lda   #$8778
          Sta   $0AA6,Y
          Plb
          Cli
          Rtl
MarBigJumpR entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$001A'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0006,$0F00,$8088
          Mk4   $0140,$F0FF,$0700
          Mk4   $01E0,$00FF,$7700
          Mk4   $0280,$00FF,$2200
          Mk4   $0320,$00F0,$2202
          Mk4   $03C0,$00F0,$8802
          Mk4   $0460,$00F0,$8802
          Mk4   $06E0,$00FF,$2200
          Mk4   $06E6,$0F00,$2022
          Mk4   $0780,$00F0,$2202
          Mk4   $0786,$0F00,$2022
          Mk4   $0820,$00F0,$2202
          Mk4   $0826,$FF00,$0022
          Mk4   $08C6,$FF00,$0022
          Mk4   $0966,$FF00,$0077
          Mk4   $0A06,$FF00,$0087
          Mk4   $0AA6,$FF00,$0077
          Mk4   $0B40,$00F0,$8708
          Mk4   $0B46,$FF00,$0077
          Mk4   $0BE0,$F0FF,$0200
          Mk4   $0BE6,$F000,$0277
          Mk4   $0FA0,$FF0F,$0020
          Lda   #$7777
          Sta   |$00A2,Y
          Sta   |$0142,Y
          Sta   $01E2,Y
          Sta   $0284,Y
          Sta   $0964,Y
          Sta   $0AA2,Y
          Sta   $0AA4,Y
          Sta   $0B42,Y
          Sta   $0B44,Y
          Sta   $0BE2,Y
          Sta   $0BE4,Y
          Sta   $0C84,Y
          Sta   $0D24,Y
          Sta   $0DC4,Y
          Sta   $0F02,Y
          Lda   #$7877
          Sta   |$00A4,Y
          Sta   $0144,Y
          Lda   #$8888
          Sta   |$00A6,Y
          Sta   $0146,Y
          Sta   $03C4,Y
          Sta   $0466,Y
          Sta   $0506,Y
          Sta   $05A2,Y
          Sta   $0642,Y
          Sta   $0644,Y
          Sta   $0A00,Y
          Sta   $0AA0,Y
          Lda   #$7277
          Sta   $01E4,Y
          Sta   $0286,Y
          Sta   $0E62,Y
          Lda   #$2222
          Sta   $01E6,Y
          Sta   $0326,Y
          Sta   $05A0,Y
          Sta   $0782,Y
          Sta   $0822,Y
          Sta   $08C0,Y
          Sta   $08C2,Y
          Sta   $0DC6,Y
          Sta   $0E66,Y
          Sta   $0F06,Y
          Lda   #$8828
          Sta   $0282,Y
          Sta   $0322,Y
          Sta   $0324,Y
          Lda   #$8822
          Sta   $03C2,Y
          Sta   $0462,Y
          Sta   $0500,Y
          Sta   $0502,Y
          Lda   #$8288
          Sta   $03C6,Y
          Lda   #$2888
          Sta   $0464,Y
          Lda   #$2822
          Sta   $0504,Y
          Lda   #$2282
          Sta   $05A4,Y
          Sta   $0646,Y
          Lda   #$2228
          Sta   $05A6,Y
          Lda   #$2722
          Sta   $06E2,Y
          Sta   $0C80,Y
          Sta   $0D20,Y
          Sta   $0DC0,Y
          Sta   $0E60,Y
          Sta   $0F00,Y
          Lda   #$7272
          Sta   $06E4,Y
          Lda   #$7772
          Sta   $0784,Y
          Lda   #$2777
          Sta   $0824,Y
          Sta   $08C4,Y
          Sta   $0A02,Y
          Lda   #$8728
          Sta   $0960,Y
          Lda   #$2272
          Sta   $0962,Y
          Sta   $0D26,Y
          Lda   #$8777
          Sta   $0A04,Y
          Lda   #$7727
          Sta   $0C82,Y
          Sta   $0E64,Y
          Lda   #$2277
          Sta   $0C86,Y
          Lda   #$2772
          Sta   $0D22,Y
          Sta   $0DC2,Y
          Sta   $0F04,Y
          Plb
          Cli
          Rtl
MarSlideR entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0000,$F0FF,$0700
          Mk4   $0004,$FF00,$0077
          Mk4   $00A0,$F0FF,$0700
          Mk4   $00A6,$FF00,$0022
          Mk4   $0140,$F0FF,$0700
          Mk4   $0146,$0F00,$2022
          Mk4   $01E0,$00F0,$7807
          Mk4   $01E6,$0F00,$8088
          Mk4   $0280,$F0FF,$0800
          Mk4   $0320,$00F0,$8808
          Mk4   $03C6,$000F,$8870
          Mk4   $0466,$FF0F,$0070
          Mk4   $0500,$00F0,$2202
          Mk4   $0506,$FF00,$0027
          Mk4   $05A0,$00FF,$8800
          Mk4   $05A6,$FF00,$0027
          Mk4   $0646,$FF00,$0027
          Mk4   $0786,$FF00,$0077
          Mk4   $0826,$FF00,$0077
          Mk4   $08C6,$FF0F,$0070
          Mk4   $0960,$00F0,$2202
          Mk4   $0A00,$00F0,$7707
          Mk4   $0A04,$0F00,$2022
          Mk4   $0AA0,$00FF,$7700
          Mk4   $0AA6,$FF00,$0022
          Mk4   $0B46,$FF00,$0082
          Mk4   $0BE2,$00F0,$8802
          Mk4   $0C82,$F0FF,$0700
          Mk4   $0C86,$F0FF,$0200
          Mk4   $0D22,$F0FF,$0700
          Mk4   $0DC6,$0F00,$2022
          Mk4   $0E64,$00F0,$2202
          Mk4   $0E66,$FF0F,$0020
          Mk4   $0F04,$00F0,$2202
          Lda   #$7777
          Sta   |$0002,Y
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0142,Y
          Sta   $08C4,Y
          Sta   $0962,Y
          Sta   $0BE4,Y
          Lda   #$8278
          Sta   $0144,Y
          Lda   #$8882
          Sta   $01E2,Y
          Lda   #$8228
          Sta   $01E4,Y
          Sta   $0284,Y
          Lda   #$8822
          Sta   $0282,Y
          Sta   $0462,Y
          Lda   #$8888
          Sta   $0286,Y
          Sta   $03C2,Y
          Sta   $0644,Y
          Sta   $06E4,Y
          Sta   $0B44,Y
          Lda   #$8288
          Sta   $0322,Y
          Sta   $03C0,Y
          Sta   $0460,Y
          Sta   $05A4,Y
          Lda   #$7728
          Sta   $0324,Y
          Lda   #$2882
          Sta   $0326,Y
          Lda   #$2788
          Sta   $03C4,Y
          Lda   #$2222
          Sta   $0464,Y
          Sta   $0504,Y
          Sta   $06E0,Y
          Sta   $0780,Y
          Sta   $0820,Y
          Sta   $0822,Y
          Sta   $08C0,Y
          Sta   $0AA4,Y
          Sta   $0D26,Y
          Sta   $0DC4,Y
          Lda   #$2288
          Sta   $0502,Y
          Sta   $05A2,Y
          Lda   #$2722
          Sta   $0640,Y
          Sta   $08C2,Y
          Lda   #$2877
          Sta   $0642,Y
          Lda   #$2822
          Sta   $06E2,Y
          Sta   $0782,Y
          Lda   #$8782
          Sta   $0784,Y
          Lda   #$7788
          Sta   $0824,Y
          Lda   #$2272
          Sta   $0964,Y
          Sta   $0AA2,Y
          Sta   $0D24,Y
          Lda   #$2277
          Sta   $0A02,Y
          Lda   #$2872
          Sta   $0B42,Y
          Lda   #$7277
          Sta   $0C84,Y
          Plb
          Cli
          Rtl
MarSlideL entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$0019'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0002,$00FF,$7700
          Mk4   $0006,$FF0F,$0070
          Mk4   $00A0,$00FF,$2200
          Mk4   $00A6,$FF0F,$0070
          Mk4   $0140,$00F0,$2202
          Mk4   $0146,$FF0F,$0070
          Mk4   $01E0,$00F0,$8808
          Mk4   $01E6,$0F00,$7087
          Mk4   $0286,$FF0F,$0080
          Mk4   $0326,$0F00,$8088
          Mk4   $03C0,$F000,$0788
          Mk4   $0460,$F0FF,$0700
          Mk4   $0500,$00FF,$7200
          Mk4   $0506,$0F00,$2022
          Mk4   $05A0,$00FF,$7200
          Mk4   $05A6,$FF00,$0088
          Mk4   $0640,$00FF,$7200
          Mk4   $0780,$00FF,$7700
          Mk4   $0820,$00FF,$7700
          Mk4   $08C0,$F0FF,$0700
          Mk4   $0966,$0F00,$2022
          Mk4   $0A02,$00F0,$2202
          Mk4   $0A06,$0F00,$7077
          Mk4   $0AA0,$00FF,$2200
          Mk4   $0AA6,$FF00,$0077
          Mk4   $0B40,$00FF,$2800
          Mk4   $0BE4,$0F00,$2088
          Mk4   $0C80,$FF0F,$0020
          Mk4   $0C84,$FF0F,$0070
          Mk4   $0D24,$FF0F,$0070
          Mk4   $0DC0,$00F0,$2202
          Mk4   $0E60,$F0FF,$0200
          Mk4   $0E62,$0F00,$2022
          Mk4   $0F02,$0F00,$2022
          Lda   #$7777
          Sta   |$0004,Y
          Sta   |$00A2,Y
          Sta   |$00A4,Y
          Sta   $0144,Y
          Sta   $08C2,Y
          Sta   $0964,Y
          Sta   $0BE2,Y
          Lda   #$8728
          Sta   $0142,Y
          Lda   #$8228
          Sta   $01E2,Y
          Sta   $0282,Y
          Lda   #$2888
          Sta   $01E4,Y
          Lda   #$8888
          Sta   $0280,Y
          Sta   $03C4,Y
          Sta   $0642,Y
          Sta   $06E2,Y
          Sta   $0B42,Y
          Lda   #$2288
          Sta   $0284,Y
          Sta   $0464,Y
          Lda   #$2882
          Sta   $0320,Y
          Lda   #$8277
          Sta   $0322,Y
          Lda   #$8828
          Sta   $0324,Y
          Sta   $03C6,Y
          Sta   $0466,Y
          Sta   $05A2,Y
          Lda   #$8872
          Sta   $03C2,Y
          Lda   #$2222
          Sta   $0462,Y
          Sta   $0502,Y
          Sta   $06E6,Y
          Sta   $0786,Y
          Sta   $0824,Y
          Sta   $0826,Y
          Sta   $08C6,Y
          Sta   $0AA2,Y
          Sta   $0D20,Y
          Sta   $0DC2,Y
          Lda   #$8822
          Sta   $0504,Y
          Sta   $05A4,Y
          Lda   #$7782
          Sta   $0644,Y
          Lda   #$2272
          Sta   $0646,Y
          Sta   $08C4,Y
          Lda   #$2282
          Sta   $06E4,Y
          Sta   $0784,Y
          Lda   #$2878
          Sta   $0782,Y
          Lda   #$8877
          Sta   $0822,Y
          Lda   #$2722
          Sta   $0962,Y
          Sta   $0AA4,Y
          Sta   $0D22,Y
          Lda   #$7722
          Sta   $0A04,Y
          Lda   #$2782
          Sta   $0B44,Y
          Lda   #$7727
          Sta   $0C82,Y
          Plb
          Cli
          Rtl
MarBigJumpL entry
          Longa on
          Longi on
          Bra   *+6                     ;A=Bank Y=Adr
          dc    i2'$001A'               ;Hauteur
          dc    i2'$0008'               ;Largeur
          Sei
          Phb
          Xba
          Pha
          Plb
          Plb
          Mk4   $0000,$00F0,$8808
          Mk4   $0146,$FF0F,$0070
          Mk4   $01E6,$FF00,$0077
          Mk4   $0286,$FF00,$0022
          Mk4   $0326,$0F00,$2022
          Mk4   $03C6,$0F00,$2088
          Mk4   $0466,$0F00,$2088
          Mk4   $06E0,$00F0,$2202
          Mk4   $06E6,$FF00,$0022
          Mk4   $0780,$00F0,$2202
          Mk4   $0786,$0F00,$2022
          Mk4   $0820,$00FF,$2200
          Mk4   $0826,$0F00,$2022
          Mk4   $08C0,$00FF,$2200
          Mk4   $0960,$00FF,$7700
          Mk4   $0A00,$00FF,$7800
          Mk4   $0AA0,$00FF,$7700
          Mk4   $0B40,$00FF,$7700
          Mk4   $0B46,$0F00,$8078
          Mk4   $0BE0,$000F,$7720
          Mk4   $0BE6,$FF0F,$0020
          Mk4   $0FA6,$F0FF,$0200
          Lda   #$8888
          Sta   |$00A0,Y
          Sta   |$0140,Y
          Sta   $03C2,Y
          Sta   $0460,Y
          Sta   $0500,Y
          Sta   $05A4,Y
          Sta   $0642,Y
          Sta   $0644,Y
          Sta   $0A06,Y
          Sta   $0AA6,Y
          Lda   #$7787
          Sta   |$00A2,Y
          Sta   $0142,Y
          Lda   #$7777
          Sta   |$00A4,Y
          Sta   $0144,Y
          Sta   $01E4,Y
          Sta   $0282,Y
          Sta   $0962,Y
          Sta   $0AA2,Y
          Sta   $0AA4,Y
          Sta   $0B42,Y
          Sta   $0B44,Y
          Sta   $0BE2,Y
          Sta   $0BE4,Y
          Sta   $0C82,Y
          Sta   $0D22,Y
          Sta   $0DC2,Y
          Sta   $0F04,Y
          Lda   #$2222
          Sta   $01E0,Y
          Sta   $0320,Y
          Sta   $05A6,Y
          Sta   $0784,Y
          Sta   $0824,Y
          Sta   $08C4,Y
          Sta   $08C6,Y
          Sta   $0DC0,Y
          Sta   $0E60,Y
          Sta   $0F00,Y
          Lda   #$7727
          Sta   $01E2,Y
          Sta   $0280,Y
          Sta   $0E64,Y
          Lda   #$8288
          Sta   $0284,Y
          Sta   $0322,Y
          Sta   $0324,Y
          Lda   #$8828
          Sta   $03C0,Y
          Lda   #$2288
          Sta   $03C4,Y
          Sta   $0464,Y
          Sta   $0504,Y
          Sta   $0506,Y
          Lda   #$8882
          Sta   $0462,Y
          Lda   #$2282
          Sta   $0502,Y
          Lda   #$8222
          Sta   $05A0,Y
          Lda   #$2822
          Sta   $05A2,Y
          Sta   $0640,Y
          Lda   #$2727
          Sta   $06E2,Y
          Lda   #$2272
          Sta   $06E4,Y
          Sta   $0C86,Y
          Sta   $0D26,Y
          Sta   $0DC6,Y
          Sta   $0E66,Y
          Sta   $0F06,Y
          Lda   #$2777
          Sta   $0782,Y
          Lda   #$7772
          Sta   $0822,Y
          Sta   $08C2,Y
          Sta   $0A04,Y
          Lda   #$2722
          Sta   $0964,Y
          Sta   $0D20,Y
          Lda   #$8278
          Sta   $0966,Y
          Lda   #$7778
          Sta   $0A02,Y
          Lda   #$7722
          Sta   $0C80,Y
          Lda   #$7277
          Sta   $0C84,Y
          Sta   $0E62,Y
          Lda   #$2772
          Sta   $0D24,Y
          Sta   $0DC4,Y
          Sta   $0F02,Y
          Plb
          Cli
          Rtl
MarClimbR2 entry
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
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$8828
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$7077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$8828
          Sta   $02
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$8802
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$8802
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$2888
          Sta   $04
          Lda   #$8888
          Sta   $06
          Lda   #$8822
          Sta   $A0
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Lda   #$8888
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2222
          Sta   $00
          Lda   #$8888
          Sta   $02
          Lda   #$2282
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0028
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$2700
          Sta   $A0
          Lda   #$8877
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
          And   #$00F0
          Ora   #$7202
          Sta   $00
          Lda   #$7222
          Sta   $02
          Lda   $A0
          And   #$00F0
          Ora   #$7202
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   $A4
          And   #$FF0F
          Ora   #$0020
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7227
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$8822
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0088
          Sta   $06
          Lda   #$7727
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   #$8822
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$7707
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$2822
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0088
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$7707
          Sta   $A0
          Lda   #$2272
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$7707
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$7707
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$2077
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$7707
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   #$2277
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
          Lda   #$2277
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   #$2277
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarClimbL1 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0018'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   #$7777
          Sta   $A2
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
          Lda   #$7777
          Sta   $A0
          Lda   #$7877
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
          Lda   #$2888
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $00
          Sta   $02
          Lda   #$2882
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0082
          Sta   $06
          Lda   #$2282
          Sta   $A0
          Lda   #$8828
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$8808
          Sta   $00
          Lda   #$2882
          Sta   $02
          Lda   #$8288
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$8800
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   #$7727
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
          Lda   #$2222
          Sta   $02
          Lda   #$7722
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0072
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$2202
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0072
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7227
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0072
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$7727
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
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
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
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
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
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A0
          And   #$F000
          Ora   #$0222
          Sta   $A0
          Lda   #$7727
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
          Lda   #$2222
          Sta   $00
          Lda   #$7727
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$2202
          Sta   $A0
          Lda   #$7727
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0077
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0022
          Sta   $02
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarClimbL2 entry
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
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$7707
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
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$7707
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   #$8288
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8288
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2288
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $00
          Lda   #$8882
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2088
          Sta   $06
          Lda   #$8888
          Sta   $A0
          Lda   #$2282
          Sta   $A2
          Lda   #$2288
          Sta   $A4
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8200
          Sta   $00
          Lda   #$2822
          Sta   $02
          Lda   #$8888
          Sta   $04
          Lda   #$2222
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$7788
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0072
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2227
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2027
          Sta   $06
          Lda   $A2
          And   #$F0FF
          Ora   #$0200
          Sta   $A2
          Lda   #$2222
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2027
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8800
          Sta   $00
          Lda   #$2288
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   #$7227
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$8800
          Sta   $A0
          Lda   #$2288
          Sta   $A2
          Lda   #$2222
          Sta   $A4
          Lda   #$7277
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
          Lda   #$2222
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$7077
          Sta   $06
          Lda   #$2282
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$7077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$7077
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$7702
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$7077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$7077
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$7722
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$7722
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
          Lda   #$7722
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarClimbR1 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0018'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$8828
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$7077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$8828
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$8028
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$8802
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$8802
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$8888
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$8088
          Sta   $06
          Lda   #$8822
          Sta   $A0
          Sta   $A2
          Lda   #$2288
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2222
          Sta   $00
          Lda   #$8888
          Sta   $02
          Lda   #$8822
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0088
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$2700
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
          And   #$00F0
          Ora   #$7702
          Sta   $00
          Lda   #$2272
          Sta   $02
          Lda   #$2822
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$7702
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0022
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$7702
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$2077
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$2772
          Sta   $A2
          Lda   #$2277
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
          Lda   #$7277
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$7707
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$7707
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$7707
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   #$2277
          Sta   $A4
          Lda   $A6
          And   #$0FF0
          Ora   #$2002
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
          Lda   #$2277
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Lda   #$2277
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00F0
          Ora   #$2202
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A4
          And   #$F0FF
          Ora   #$0200
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimL6 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0019'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$7707
          Sta   $A0
          Lda   #$7877
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
          Lda   #$2888
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $00
          Lda   #$8882
          Sta   $02
          Lda   #$2882
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2082
          Sta   $06
          Lda   #$8888
          Sta   $A0
          Lda   #$2282
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8200
          Sta   $00
          Lda   #$2822
          Sta   $02
          Lda   #$8288
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$7277
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$2708
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$7202
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7222
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$7727
          Sta   $A2
          Lda   #$2222
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
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
          Lda   #$2272
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$8777
          Sta   $A2
          Lda   #$2277
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8028
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
          Lda   #$7277
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$8088
          Sta   $06
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   #$8878
          Sta   $A6
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
          Ora   #$7707
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
          Lda   $02
          And   #$F0FF
          Ora   #$0700
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   #$7277
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$2200
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A4
          And   #$F0FF
          Ora   #$0200
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$F0FF
          Ora   #$0200
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
MarSwimR6 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0019'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
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
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$7787
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$7077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$8882
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2800
          Sta   $A0
          Lda   #$2882
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2802
          Sta   $00
          Lda   #$2882
          Sta   $02
          Lda   #$2888
          Sta   $04
          Lda   #$8888
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$2802
          Sta   $A0
          Lda   #$2882
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Lda   #$8888
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$8828
          Sta   $02
          Lda   #$2282
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0028
          Sta   $06
          Lda   #$7727
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
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2272
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$8072
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$2272
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$2027
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$2227
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   #$7277
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
          Lda   #$2722
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8208
          Sta   $A0
          Lda   #$7722
          Sta   $A2
          Lda   #$7778
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$8808
          Sta   $00
          Lda   #$7727
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   #$8788
          Sta   $A0
          Lda   #$7777
          Sta   $A2
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
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0070
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$7727
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   $02
          And   #$FF00
          Ora   #$0022
          Sta   $02
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   $A2
          And   #$FF0F
          Ora   #$0020
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   $02
          And   #$FF0F
          Ora   #$0020
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimL5 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0019'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$7707
          Sta   $A0
          Lda   #$7877
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
          Lda   #$2888
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $00
          Lda   #$8882
          Sta   $02
          Lda   #$2882
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2082
          Sta   $06
          Lda   #$8888
          Sta   $A0
          Lda   #$2282
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8200
          Sta   $00
          Lda   #$2822
          Sta   $02
          Lda   #$8288
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$7277
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$2708
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$7202
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7222
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   #$7227
          Sta   $A2
          Lda   #$2222
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
          Ora   #$0200
          Sta   $00
          Lda   #$7727
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   #$2272
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
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
          Lda   #$2277
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$8028
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   #$8888
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   #$8878
          Sta   $06
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
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   #$2222
          Sta   $06
          Lda   $A2
          And   #$F0FF
          Ora   #$0700
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   #$2222
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$0FF0
          Ora   #$2002
          Sta   $04
          Lda   #$2222
          Sta   $06
          Lda   $A4
          And   #$0FF0
          Ora   #$2002
          Sta   $A4
          Lda   $A6
          And   #$00FF
          Ora   #$2200
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$0FFF
          Ora   #$2000
          Sta   $04
          Lda   $06
          And   #$F0FF
          Ora   #$0200
          Sta   $06
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimR5 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0019'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
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
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$7787
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$7077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$8882
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2800
          Sta   $A0
          Lda   #$2882
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2802
          Sta   $00
          Lda   #$2882
          Sta   $02
          Lda   #$2888
          Sta   $04
          Lda   #$8888
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$2802
          Sta   $A0
          Lda   #$2882
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Lda   #$8888
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$8828
          Sta   $02
          Lda   #$2282
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0028
          Sta   $06
          Lda   #$7727
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
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2272
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$8072
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$2272
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$2027
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$2227
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   #$7227
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$7277
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$2722
          Sta   $A2
          Lda   #$7777
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
          Ora   #$8208
          Sta   $00
          Lda   #$7722
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   #$8888
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8788
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2222
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   #$2222
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$FF0F
          Ora   #$0070
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2222
          Sta   $00
          Lda   $02
          And   #$0FF0
          Ora   #$2002
          Sta   $02
          Lda   $A0
          And   #$FF00
          Ora   #$0022
          Sta   $A0
          Lda   $A2
          And   #$0FF0
          Ora   #$2002
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FF0F
          Ora   #$0020
          Sta   $00
          Lda   $02
          And   #$FFF0
          Ora   #$0002
          Sta   $02
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimL4 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0019'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$7707
          Sta   $A0
          Lda   #$7877
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
          Lda   #$2888
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $00
          Lda   #$8882
          Sta   $02
          Lda   #$2882
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2082
          Sta   $06
          Lda   #$8888
          Sta   $A0
          Lda   #$2282
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8200
          Sta   $00
          Lda   #$2822
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$7277
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$2708
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$7202
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2272
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   #$7722
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0072
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8800
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$7722
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   #$7727
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$8808
          Sta   $00
          Lda   #$2722
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$0FFF
          Ora   #$8000
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
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
          Ora   #$7707
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
          Lda   $02
          And   #$F0FF
          Ora   #$0700
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   #$7277
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$2200
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A4
          And   #$F0FF
          Ora   #$0200
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$F0FF
          Ora   #$0200
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
MarSwimR4 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0019'               ;Hauteur
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
          And   #$FF00
          Ora   #$0077
          Sta   $04
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
          Lda   $00
          And   #$00FF
          Ora   #$7700
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$0077
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$8828
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$8828
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$8028
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$8802
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8822
          Sta   $00
          Sta   $02
          Lda   #$8882
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$8088
          Sta   $06
          Lda   #$8822
          Sta   $A0
          Lda   #$8222
          Sta   $A2
          Lda   #$8822
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2222
          Sta   $00
          Lda   #$8828
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0080
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$7877
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2700
          Sta   $00
          Lda   #$2722
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$0028
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2700
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   $A4
          And   #$FF00
          Ora   #$0072
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2702
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$7022
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$7702
          Sta   $A0
          Lda   #$2272
          Sta   $A2
          Lda   #$2822
          Sta   $A4
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
          And   #$FF0F
          Ora   #$0080
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$2277
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0088
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
          Lda   $A4
          And   #$0F00
          Ora   #$7077
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
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$7700
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
          Lda   $00
          And   #$00FF
          Ora   #$2700
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $A0
          And   #$00F0
          Ora   #$2202
          Sta   $A0
          Lda   $A2
          And   #$0F00
          Ora   #$7077
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   $02
          And   #$FF0F
          Ora   #$0020
          Sta   $02
          Lda   $A0
          And   #$00F0
          Ora   #$2202
          Sta   $A0
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimL3 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0018'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$7707
          Sta   $A0
          Lda   #$7877
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
          Lda   #$2888
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $00
          Lda   #$8882
          Sta   $02
          Lda   #$2882
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2082
          Sta   $06
          Lda   #$8888
          Sta   $A0
          Lda   #$2282
          Sta   $A2
          Lda   #$2882
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2082
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$8200
          Sta   $00
          Lda   #$2822
          Sta   $02
          Lda   #$2288
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$7277
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$2708
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$2202
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2272
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0072
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$8800
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   #$7722
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0072
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$8808
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$7722
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   #$8888
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Lda   #$7727
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F000
          Ora   #$0788
          Sta   $00
          Lda   #$2722
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   #$2222
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$F0FF
          Ora   #$0700
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   #$2222
          Sta   $06
          Lda   $A4
          And   #$0FF0
          Ora   #$2002
          Sta   $A4
          Lda   #$2222
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$0FF0
          Ora   #$2002
          Sta   $04
          Lda   $06
          And   #$00FF
          Ora   #$2200
          Sta   $06
          Lda   $A4
          And   #$0FFF
          Ora   #$2000
          Sta   $A4
          Lda   $A6
          And   #$F0FF
          Ora   #$0200
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimR3 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0018'               ;Hauteur
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
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
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
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$7787
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$7077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$8882
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2800
          Sta   $A0
          Lda   #$2882
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2802
          Sta   $00
          Lda   #$2882
          Sta   $02
          Lda   #$2888
          Sta   $04
          Lda   #$8888
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$2802
          Sta   $A0
          Lda   #$2882
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Lda   #$8888
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$2282
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0028
          Sta   $06
          Lda   #$7727
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
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2272
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$8072
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$2272
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$2022
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2700
          Sta   $00
          Lda   #$2272
          Sta   $02
          Lda   #$2722
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2700
          Sta   $A0
          Lda   #$2277
          Sta   $A2
          Lda   #$2222
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0700
          Sta   $00
          Lda   #$2277
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$8088
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7277
          Sta   $A2
          Lda   #$2222
          Sta   $A4
          Lda   #$8888
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
          Lda   #$2272
          Sta   $04
          Lda   $06
          And   #$000F
          Ora   #$8870
          Sta   $06
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
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   #$2222
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2222
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0070
          Sta   $04
          Lda   #$2222
          Sta   $A0
          Lda   $A2
          And   #$0FF0
          Ora   #$2002
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FF00
          Ora   #$0022
          Sta   $00
          Lda   $02
          And   #$0FF0
          Ora   #$2002
          Sta   $02
          Lda   $A0
          And   #$FF0F
          Ora   #$0020
          Sta   $A0
          Lda   $A2
          And   #$FFF0
          Ora   #$0002
          Sta   $A2
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimL2 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0018'               ;Hauteur
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
          Ora   #$7700
          Sta   $02
          Lda   #$7777
          Sta   $04
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
          Lda   $02
          And   #$00FF
          Ora   #$7700
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   #$8288
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$8208
          Sta   $02
          Lda   #$8288
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$8800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2288
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$8808
          Sta   $00
          Lda   #$2888
          Sta   $02
          Lda   #$2288
          Sta   $04
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$2288
          Sta   $A2
          Lda   #$2228
          Sta   $A4
          Lda   #$2288
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0800
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$8288
          Sta   $04
          Lda   #$2222
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8208
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$7787
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $00
          Lda   #$2222
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   #$2288
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2222
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   #$2272
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
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
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00FF
          Ora   #$7700
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0072
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00F0
          Ora   #$7707
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A4
          And   #$F0FF
          Ora   #$0200
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimR2 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0018'               ;Hauteur
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
          And   #$FF00
          Ora   #$0077
          Sta   $04
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
          Lda   $00
          And   #$00FF
          Ora   #$7700
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$FF00
          Ora   #$0077
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   #$8828
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$8828
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$8028
          Sta   $04
          Lda   $A0
          And   #$00F0
          Ora   #$8802
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8822
          Sta   $00
          Sta   $02
          Lda   #$8882
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$8088
          Sta   $06
          Lda   #$8822
          Sta   $A0
          Lda   #$8222
          Sta   $A2
          Lda   #$8822
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2222
          Sta   $00
          Lda   #$8828
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0080
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$7877
          Sta   $A2
          Lda   #$2288
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8028
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0700
          Sta   $00
          Lda   #$2222
          Sta   $02
          Sta   $04
          Lda   #$8888
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Sta   $A4
          Lda   #$8822
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$7700
          Sta   $00
          Lda   #$2222
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0020
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$2272
          Sta   $A2
          Lda   #$2722
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
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
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
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
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
          And   #$FF00
          Ora   #$0077
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   $02
          And   #$0F00
          Ora   #$7077
          Sta   $02
          Lda   $A0
          And   #$00F0
          Ora   #$2202
          Sta   $A0
          Lda   $A2
          And   #$FF0F
          Ora   #$0020
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   $A0
          And   #$00FF
          Ora   #$2200
          Sta   $A0
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimL1 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0018'               ;Hauteur
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
          And   #$00FF
          Ora   #$7700
          Sta   $02
          Lda   #$7777
          Sta   $04
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
          Lda   $02
          And   #$00FF
          Ora   #$7700
          Sta   $02
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$7700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   #$8288
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0022
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $02
          And   #$00F0
          Ora   #$8208
          Sta   $02
          Lda   #$8288
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2022
          Sta   $06
          Lda   $A0
          And   #$00FF
          Ora   #$8800
          Sta   $A0
          Lda   #$8888
          Sta   $A2
          Lda   #$2288
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$2088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$8808
          Sta   $00
          Lda   #$2888
          Sta   $02
          Lda   #$2288
          Sta   $04
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8808
          Sta   $A0
          Lda   #$2288
          Sta   $A2
          Lda   #$2228
          Sta   $A4
          Lda   #$2288
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0800
          Sta   $00
          Lda   #$2222
          Sta   $02
          Lda   #$8288
          Sta   $04
          Lda   #$2222
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$8208
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$7787
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0020
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$8888
          Sta   $00
          Lda   #$2222
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   #$2288
          Sta   $A0
          Lda   #$2222
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0200
          Sta   $00
          Lda   #$2222
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   #$2272
          Sta   $A2
          Lda   #$2722
          Sta   $A4
          Lda   $A6
          And   #$FF00
          Ora   #$0077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
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
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0077
          Sta   $06
          Lda   $A2
          And   #$00F0
          Ora   #$7707
          Sta   $A2
          Lda   #$7777
          Sta   $A4
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
          Lda   #$7777
          Sta   $04
          Lda   $06
          And   #$0F00
          Ora   #$2072
          Sta   $06
          Lda   $A2
          And   #$00FF
          Ora   #$7700
          Sta   $A2
          Lda   #$7777
          Sta   $A4
          Lda   #$2272
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0020
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$7777
          Sta   $04
          Lda   #$2272
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0020
          Sta   $08
          Lda   $A4
          And   #$00FF
          Ora   #$2200
          Sta   $A4
          Lda   $A6
          And   #$00F0
          Ora   #$2202
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0020
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $04
          And   #$00FF
          Ora   #$2200
          Sta   $04
          Lda   $06
          And   #$F0FF
          Ora   #$0200
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0020
          Sta   $08
          Lda   $A4
          And   #$F0FF
          Ora   #$0200
          Sta   $A4
          Lda   $A8
          And   #$FF0F
          Ora   #$0020
          Sta   $A8
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl
MarSwimR1 entry
          Longa on
          Longi on
          Bra   *+6                     ;Y=Adr
          dc    i2'$0018'               ;Hauteur
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
          And   #$00F0
          Ora   #$7707
          Sta   $02
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
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
          Lda   $04
          And   #$0F00
          Ora   #$7077
          Sta   $04
          Lda   $A0
          And   #$F0FF
          Ora   #$0200
          Sta   $A0
          Lda   #$8822
          Sta   $A2
          Lda   #$7787
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$7077
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$8882
          Sta   $04
          Lda   $A0
          And   #$00FF
          Ora   #$2800
          Sta   $A0
          Lda   #$2882
          Sta   $A2
          Lda   #$8888
          Sta   $A4
          Lda   $A6
          And   #$0F00
          Ora   #$8088
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2802
          Sta   $00
          Lda   #$2882
          Sta   $02
          Lda   #$2888
          Sta   $04
          Lda   #$8888
          Sta   $06
          Lda   $A0
          And   #$00F0
          Ora   #$2802
          Sta   $A0
          Lda   #$2882
          Sta   $A2
          Lda   #$2822
          Sta   $A4
          Lda   #$8888
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$00F0
          Ora   #$2202
          Sta   $00
          Lda   #$8822
          Sta   $02
          Lda   #$2282
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0028
          Sta   $06
          Lda   #$7727
          Sta   $A2
          Lda   #$8288
          Sta   $A4
          Lda   #$8822
          Sta   $A6
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2272
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   #$8828
          Sta   $06
          Lda   $08
          And   #$FF0F
          Ora   #$0080
          Sta   $08
          Lda   #$2272
          Sta   $A2
          Lda   #$2222
          Sta   $A4
          Lda   #$2822
          Sta   $A6
          Lda   $A8
          And   #$FF0F
          Ora   #$0080
          Sta   $A8
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$F0FF
          Ora   #$0700
          Sta   $00
          Lda   #$2272
          Sta   $02
          Lda   #$2222
          Sta   $04
          Lda   $06
          And   #$FF00
          Ora   #$0022
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$2277
          Sta   $A2
          Lda   #$2222
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
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
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
          Lda   $A0
          And   #$F0FF
          Ora   #$0700
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Sta   $A4
          Lda   $A6
          And   #$FF0F
          Ora   #$0070
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
          Sta   $04
          Lda   $06
          And   #$FF0F
          Ora   #$0070
          Sta   $06
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
          And   #$00FF
          Ora   #$2200
          Sta   $00
          Lda   #$7777
          Sta   $02
          Sta   $04
          Lda   #$2222
          Sta   $A0
          Lda   #$7777
          Sta   $A2
          Lda   $A4
          And   #$0F00
          Ora   #$7077
          Sta   $A4
          Tdc
          Adc   #$0140
          Tcd
          Lda   #$2222
          Sta   $00
          Lda   #$7777
          Sta   $02
          Lda   $04
          And   #$FF0F
          Ora   #$0070
          Sta   $04
          Lda   #$2222
          Sta   $A0
          Lda   $A2
          And   #$0FF0
          Ora   #$2002
          Sta   $A2
          Tdc
          Adc   #$0140
          Tcd
          Lda   $00
          And   #$FF00
          Ora   #$0022
          Sta   $00
          Lda   $02
          And   #$0FF0
          Ora   #$2002
          Sta   $02
          Lda   $A0
          And   #$FF0F
          Ora   #$0020
          Sta   $A0
          Lda   $A2
          And   #$FFF0
          Ora   #$0002
          Sta   $A2
          Lda   >$E1C068
          And   #$FFCF
          Sta   >$E1C068
          Pld
          Cli
          Rtl


	end
