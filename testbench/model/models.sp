***************************************************************************************
*   This model is a ficticous model for example purposes only                         *
***************************************************************************************
******************************************************************************
*                                                                            *
*       THIS MODEL LIB CONTAINS :                                            *
*                                                                            *
*       1.LIB TT                                                             *
*             SS                                                             *
*             FF                                                             *
*                                                                            *
******************************************************************************
*
******************************     LIBRARY OF TYPICAL CASE     *******************************
.LIB TT
.param toxp=3.5e-9 toxn=3.5e-9
+nvth0=0.35 pvth0=-0.37
.lib 'models.sp' MOS
.ENDL TT

******************************   LIBRARY OF SLOW CORNER CASE   *******************************
.LIB SS
.param toxp=4.1e-9 toxn=4.1e-9
+nvth0=0.37 pvth0=-0.39
.lib 'models.sp' MOS
.ENDL SS

******************************   LIBRARY OF FAST CORNER CASE   *******************************
.LIB FF
.param toxp=3.2e-9 toxn=3.2e-9
+nvth0=0.33 pvth0=-0.35
.lib 'models.sp' MOS
.ENDL FF

*******************************************************************************************
*                                                                                         *
*                                  1.8V DEVICE MODEL                                      *
*                                                                                         *
*******************************************************************************************
*
.LIB MOS
.MODEL nch NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = toxn
+XJ      = 1E-7           NCH     = 2.3549E17      VTH0    = nvth0
+K1      = 0.5847845      K2      = 1.987508E-3    K3      = 1E-3
+K3B     = 3.846051       W0      = 1.00001E-7     NLX     = 1.66359E-7
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 1.616073       DVT1    = 0.4422105      DVT2    = 0.0205098
+U0      = 276.4769418    UA      = -1.287181E-9   UB      = 2.249816E-18
+UC      = 5.695845E-11   VSAT    = 1.050018E5     A0      = 1.8727159
+AGS     = 0.4223855      B0      = -8.460618E-9   B1      = -1E-7
+KETA    = -6.583564E-3   A1      = 0              A2      = 0.8925017
+RDSW    = 105            PRWG    = 0.5            PRWB    = -0.2
+WR      = 1              WINT    = 0              LINT    = 1.509138E-8
+XL      = 0              XW      = -1E-8          DWG     = -3.993667E-9
+DWB     = 1.211844E-8    VOFF    = -0.0926198     NFACTOR = 2.4037852
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 2.64529E-3     ETAB    = -1.113687E-5
+DSUB    = 0.0107822      PCLM    = 0.7114924      PDIBLC1 = 0.1861265
+PDIBLC2 = 2.341517E-3    PDIBLCB = -0.1           DROUT   = 0.708139
+PSCBE1  = 8E10           PSCBE2  = 9.186022E-10   PVAG    = 5.128699E-3
+DELTA   = 0.01           RSH     = 6.5            MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 7.9E-10        CGSO    = 7.9E-10        CGBO    = 1E-12
+CJ      = 9.604799E-4    PB      = 0.8            MJ      = 0.3814692
+CJSW    = 2.48995E-10    PBSW    = 0.8157576      MJSW    = 0.1055989
+CJSWG   = 3.3E-10        PBSWG   = 0.8157576      MJSWG   = 0.1055989
+CF      = 0              PVTH0   = -4.358982E-4   PRDSW   = -5
+PK2     = 2.550846E-4    WKETA   = 1.466293E-3    LKETA   = -7.702306E-3
+PU0     = 23.8250665     PUA     = 1.058432E-10   PUB     = 0
+PVSAT   = 1.294978E3     PETA0   = 1.003158E-4    PKETA   = -3.857329E-3    )
*
.MODEL pch PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = toxp
+XJ      = 1E-7           NCH     = 4.1589E17      VTH0    = pvth0
+K1      = 0.5694604      K2      = 0.0291529      K3      = 0.0997496
+K3B     = 13.9442535     W0      = 1.003165E-6    NLX     = 9.979192E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 0.5457988      DVT1    = 0.2640392      DVT2    = 0.1
+U0      = 118.0169799    UA      = 1.591918E-9    UB      = 1.129514E-21
+UC      = -1E-10         VSAT    = 1.545232E5     A0      = 1.6956519
+AGS     = 0.3816925      B0      = 4.590751E-7    B1      = 1.607941E-6
+KETA    = 0.0142165      A1      = 0.4254052      A2      = 0.3391698
+RDSW    = 168.2822665    PRWG    = 0.5            PRWB    = -0.5
+WR      = 1              WINT    = 0              LINT    = 3.011839E-8
+XL      = 0              XW      = -1E-8          DWG     = -4.05222E-8
+DWB     = 4.813652E-9    VOFF    = -0.099839      NFACTOR = 1.8347784
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.201776       ETAB    = -0.1409866
+DSUB    = 1.0474138      PCLM    = 1.4195047      PDIBLC1 = 2.422412E-4
+PDIBLC2 = 0.022477       PDIBLCB = -1E-3          DROUT   = 1.228009E-3
+PSCBE1  = 1.245755E10    PSCBE2  = 3.598031E-9    PVAG    = 15.0414628
+DELTA   = 0.01           RSH     = 7.5            MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 6.34E-10       CGSO    = 6.34E-10       CGBO    = 1E-12
+CJ      = 1.177729E-3    PB      = 0.8467926      MJ      = 0.4063096
+CJSW    = 2.417696E-10   PBSW    = 0.851762       MJSW    = 0.3387253
+CJSWG   = 4.22E-10       PBSWG   = 0.851762       MJSWG   = 0.3387253
+CF      = 0              PVTH0   = 1.406461E-3    PRDSW   = 11.5261879
+PK2     = 1.718699E-3    WKETA   = 0.0353107      LKETA   = -1.277611E-3
+PU0     = -1.4642384     PUA     = -6.79895E-11   PUB     = 1E-21
+PVSAT   = 50             PETA0   = 1.003152E-4    PKETA   = -3.103298E-3    )
*
.ENDL MOS
