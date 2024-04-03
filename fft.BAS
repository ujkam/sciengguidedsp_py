0 'Original FFT BASIC Code in Table 12-4.  I've added a 2hz signal in REX.  I'm using this to try and debug why my Python FFT code isn't working.
10  PI = 3.14159265
20  DIM t[8]
30  DIM XR[8]
40  DIM XI[8]
50  DIM REX[8]
60  DIM IMX[8]
70  t[0] = 0
80  t[1] = 0.142
90  t[2] = 0.285
100 t[3] = 0.428
110 t[4] = 0.571
120 t[5] = 0.714
130 t[6] = 0.857
140 t[7] = 1
150 FOR K% = 0 TO 7
160	REX[K%] = SIN(2*PI*2*T[K%])
170	IMX[K%] = 0
180 NEXT K%
190 '
1050 N% = 8
1060 NM1% = N%-1
1070 ND2% = N%/2
1080 M% = CINT(LOG(N%)/LOG(2))
1090 J% = ND2%
1100 '
1110 FOR I% = 1 TO N%-2                 'Bit reversal sorting
1120   IF I% >= J% THEN GOTO 1190
1130   TR = REX[J%]
1140   TI = IMX[J%]
1150   REX[J%] = REX[I%]
1160   IMX[J%] = IMX[I%]
1170   REX[I%] = TR
1180   IMX[I%] = TI
1190   K% = ND2%
1200   IF K% > J% THEN GOTO 1240
1210   J% = J%-K%
1220   K% = K%/2
1230   GOTO 1200
1240   J% = J%+K%
1250 NEXT I%
1260 '
1270 FOR L% = 1 TO M%                   'Loop for each stage
1280   LE% = CINT(2^L%)
1290   LE2% = LE%/2
1300   UR = 1
1310   UI = 0
1320   SR =  COS(PI/LE2%)               'Calculate sine & cosine values
1330   SI  = -SIN(PI/LE2%)
1340   FOR J% = 1 TO LE2%               'Loop for each sub DFT
1350     JM1% = J%-1
1360     FOR I% = JM1% TO NM1% STEP LE%     'Loop for each butterfly
1365 	   print(JM1%)
1370       IP% = I%+LE2%
1380       TR = REX[IP%]*UR - IMX[IP%]*UI   'Butterfly calculation
1390       TI = REX[IP%]*UI + IMX[IP%]*UR
1400       REX[IP%] = REX[I%]-TR
1410       IMX[IP%] = IMX[I%]-TI
1420       REX[I%]  = REX[I%]+TR
1430       IMX[I%]  = IMX[I%]+TI   
1440     NEXT I%
1450     TR = UR
1460     UR = TR*SR - UI*SI
1470     UI = TR*SI + UI*SR
1480   NEXT J%
1490 NEXT L%
1500 FOR K% = 0 TO 7 
1510 	print(REX[K%])
1520 NEXT K%