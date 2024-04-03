0 'Original DFT BASIC Code in Table 12-2.  I'm using this to try and debug why the 12-4 FFT code isn't working.  I've added a 2 hz signal in XR to test the DFT.
10 PI = 3.14159265
20 DIM t[8]
30 DIM XR[8]
40 DIM XI[8]
50 DIM REX[8]
60 DIM IMX[8]
70 t[0] = 0
80 t[1] = 0.142
90 t[2] = 0.285
100 t[3] = 0.428
110 t[4] = 0.571
120 t[5] = 0.714
130 t[6] = 0.857
140 t[7] = 1
150 FOR K% = 0 TO 7
160		XR[K%] = SIN(2*PI*2*T[K%])
170		XI[K%] = 0
180	NEXT K%
190	FOR K% = 0 TO 7          
200		REX[K%] = 0               
210		IMX[K%] = 0
220	NEXT K%
230 '
240	FOR K% = 0 TO 7          
250		FOR I% = 0 TO 7        
260			SR =  COS(2*PI*K%*I%/8%)      
270			SI  = -SIN(2*PI*K%*I%/8%)
280			REX[K%] = REX[K%] + XR[I%]*SR - XI[I%]*SI
290			IMX[K%] = IMX[K%] + XR[I%]*SI + XI[I%]*SR
300		NEXT I%
310	NEXT K%
320 FOR K% = 0 TO 7 
330 	print(REX[K%])
340 NEXT K%