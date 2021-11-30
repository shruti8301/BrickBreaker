;Vishwa Shah  - 19BCE0753
;Srivathsan Nayak - 19BCE2015
;Bhavya Harchandani - 19BCE2016
;Shruti Gupta - 19BCE2061
;Abhinav Dholi - 19BCE2362

;Brick_Breaker Game
;MicroProcessor J Component


[ORG 0x0100]       ;The org command tells the program where to load itself into in memory (ram). In particular this command says to start the program at 100 bytes.
CALL STARTPAGE
CALL BARFIRST
	CALL SCOREINCREMENT
	CALL PRINTCALLER
	JMP START
SCORE: DW -10
TIMERCOUNT:DB 0


PRESS1: DB 'Press any key to exit',0
OVER: DB 'Game Over',0

GAMER: DB 0
BOXCOUNT: DB 0
BOXCOUNT1: DB 0
BOXCOUNT2: DB 0
OLDISR: DD 0
BOARDCOLOR: DB 0x40
BOARDBOOL2: DB 0
BOARDPOSITION: DW 0x171B,0x171C,0x171D,0x171E,0x171F,0x1720,0x1721,0x1722,0x1723,0x1724,0x171B,0x171C,0x171D,0x171E,0x171F,0x1720,0x1721,0x1722,0x1723,0x1724,0x171B,0x171C,0x171D,0x1724
FLAG: DB 0
BALLROW:DB 0x0C
BALLCOL: DB 0x28
BALLROWSPACE:DB 0x0C
BALLCOLSPACE: DB 0x28
ABALLROW:DB 0x0D
ABALLCOL: DB 0x28
BALL: DW 0x01
COUNTER: DB 0
FLAG1: DB 0
SPACEFLAG: DB 0
ROWFLAG: DB 0
COLFLAG: DB 0
MIDFLAG: DB 0
RIGHTCOLFLAG: DB 0
LEFTCOLFLAG: DB 0
BOARDLEFT: DB 0
BOARDRIGHT: DB 0
LIFE: DB '321'
GAMECOUNTER: DB 0
BOOLBOX1:DB 0
BOX1: DW 0x0101,0x0102,0x0103,0x0104,0x0105,0x0106,0x0107,0x0108,0x0109,0x010A,0x010B,0x010C,0x0201,0x0202,0x0203,0x0204,0x0205,0x0206,0x0207,0x0208,0x0209,0x020A,0x020B,0x020C
BOOLBOX2:DB 0
BOX2: DW 0x010E,0x010F,0x0110,0x0111,0x0112,0x0113,0x0114,0x0115,0x0116,0x0117,0x0118,0x0119,0x020E,0x020F,0x0210,0x0211,0x0212,0x0213,0x0214,0x0215,0x0216,0x0217,0x0218,0x0219
BOOLBOX3:DB 0
BOX3: DW 0x011B,0x011C,0x011D,0x011E,0x011F,0x0120,0x0121,0x0122,0x0123,0x0124,0x0125,0x0126,0x021B,0x021C,0x021D,0x021E,0x021F,0x0220,0x0221,0x0222,0x0223,0x0224,0x0225,0x0226
BOOLBOX4:DB 0
BOX4: DW 0x0128,0x0129,0x012A,0x012B,0x012C,0x012D,0x012E,0x012F,0x0130,0x0131,0x0132,0x0133,0x0228,0x0229,0x022A,0x022B,0x022C,0x022D,0x022E,0x022F,0x0230,0x0231,0x0232,0x0233
BOOLBOX5:DB 0
BOX5: DW 0x0135,0x0136,0x0137,0x0138,0x0139,0x013A,0x013B,0x013C,0x013D,0x013E,0x013F,0x0140,0x0235,0x0236,0x0237,0x0238,0x0239,0x023A,0x023B,0x023C,0x023D,0x023E,0x023F,0x0240
BOOLBOX6:DB 0
BOX6: DW 0x0142,0x0143,0x0144,0x0145,0x0146,0x0147,0x0148,0x0149,0x014A,0x014B,0x014C,0x014D,0x0242,0x0243,0x0244,0x0245,0x0246,0x0247,0x0248,0x0249,0x024A,0x024B,0x024C,0x024D
COLOR1: DB 0x10      ;Blue
		;;;;;;;;;;;;;;;;;;;;;;;;;;;

BOOLBOX7:DB 0
BOX7: DW 0x0401,0x0402,0x0403,0x0404,0x0405,0x0406,0x0407,0x0408,0x0409,0x040A,0x040B,0x040C,0x0501,0x0502,0x0503,0x0504,0x0505,0x0506,0x0507,0x0508,0x0509,0x050A,0x050B,0x050C
BOOLBOX8:DB 0
BOX8: DW 0x040E,0x040F,0x0410,0x0411,0x0412,0x0413,0x0414,0x0415,0x0416,0x0417,0x0418,0x0419,0x050E,0x050F,0x0510,0x0511,0x0512,0x0513,0x0514,0x0515,0x0516,0x0517,0x0518,0x0519
BOOLBOX9:DB 0
BOX9: DW 0x041B,0x041C,0x041D,0x041E,0x041F,0x0420,0x0421,0x0422,0x0423,0x0424,0x0425,0x0426,0x051B,0x051C,0x051D,0x051E,0x051F,0x0520,0x0521,0x0522,0x0523,0x0524,0x0525,0x0526
BOOLBOX10:DB 0
BOX10: DW 0x0428,0x0429,0x042A,0x042B,0x042C,0x042D,0x042E,0x042F,0x0430,0x0431,0x0432,0x0433,0x0528,0x0529,0x052A,0x052B,0x052C,0x052D,0x052E,0x052F,0x0530,0x0531,0x0532,0x0533
BOOLBOX11:DB 0
BOX11: DW 0x0435,0x0436,0x0437,0x0438,0x0439,0x043A,0x043B,0x043C,0x043D,0x043E,0x043F,0x0440,0x0535,0x0536,0x0537,0x0538,0x0539,0x053A,0x053B,0x053C,0x053D,0x053E,0x053F,0x0540
BOOLBOX12:DB 0
BOX12: DW 0x0442,0x0443,0x0444,0x0445,0x0446,0x0447,0x0448,0x0449,0x044A,0x044B,0x044C,0x044D,0x0542,0x0543,0x0544,0x0545,0x0546,0x0547,0x0548,0x0549,0x054A,0x054B,0x054C,0x054D
COLOR2: DB 0x20     ;Green
		;;;;;;;;;;;;;;;;;;;;;;;;;


BOOLBOX13:DB 0
BOX13: DW 0x0701,0x0702,0x0703,0x0704,0x0705,0x0706,0x0707,0x0708,0x0709,0x070A,0x070B,0x070C,0x0801,0x0802,0x0803,0x0804,0x0805,0x0806,0x0807,0x0808,0x0809,0x080A,0x080B,0x080C
BOOLBOX14:DB 0
BOX14: DW 0x070E,0x070F,0x0710,0x0711,0x0712,0x0713,0x0714,0x0715,0x0716,0x0717,0x0718,0x0719,0x080E,0x080F,0x0810,0x0811,0x0812,0x0813,0x0814,0x0815,0x0816,0x0817,0x0818,0x0819
BOOLBOX15:DB 0
BOX15: DW 0x071B,0x071C,0x071D,0x071E,0x071F,0x0720,0x0721,0x0722,0x0723,0x0724,0x0725,0x0726,0x081B,0x081C,0x081D,0x081E,0x081F,0x0820,0x0821,0x0822,0x0823,0x0824,0x0825,0x0826
BOOLBOX16:DB 0
BOX16: DW 0x0728,0x0729,0x072A,0x072B,0x072C,0x072D,0x072E,0x072F,0x0730,0x0731,0x0732,0x0733,0x0828,0x0829,0x082A,0x082B,0x082C,0x082D,0x082E,0x082F,0x0830,0x0831,0x0832,0x0833
BOOLBOX17:DB 0
BOX17: DW 0x0735,0x0736,0x0737,0x0738,0x0739,0x073A,0x073B,0x073C,0x073D,0x073E,0x073F,0x0740,0x0835,0x0836,0x0837,0x0838,0x0839,0x083A,0x083B,0x083C,0x083D,0x083E,0x083F,0x0840
BOOLBOX18:DB 0
BOX18: DW 0x0742,0x0743,0x0744,0x0745,0x0746,0x0747,0x0748,0x0749,0x074A,0x074B,0x074C,0x074D,0x0842,0x0843,0x0844,0x0845,0x0846,0x0847,0x0848,0x0849,0x084A,0x084B,0x084C,0x084D
COLOR3: DB 0x40       ;Red
		;;;;;;;;;;;;;;;;;;;;;;;;;;;  
		
		
BARFIRST:
PUSHA      ;The PUSHA instruction is intended for use when the operand-size attribute is 16.
 MOV SI,0
			  ABC:
              MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 0 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, 0x40 ; Normal attrib
			  MOV CX, 1 ; Length of string
			  MOV DX,[BOARDPOSITION+SI]
			  PUSH CS
			  POP ES ; Segment of string extra segment when we cannot modify other segments
			  MOV BP, ' ' ; Offset of string
			  INT 0x10 ; Call BIOS video service
              ADD SI,2
			  CMP SI,48
			  JNE ABC
			  POPA   ;Pop all ->  Pop DI, SI, BP, BX, DX, CX, and AX
			  RET
PRINTER:
		  PUSH BP
			  MOV BP,SP
			  PUSHA
			  MOV SI,0
LOOP1:
		  MOV BX,[BP+4]
		  MOV DX,[BX+SI]
		  ADD SI,2
			  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 0 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, [BP+6] ; Normal attrib
			  MOV CX, 1 ; Length of string
			  PUSH BP
			  PUSH CS
			  MOV BP,' ' ; Offset of string
			  POP ES ; Segment of string
			  INT 0x10 ; Call BIOS video service
			  POP BP
			  CMP SI,48
			  JNE LOOP1
			  POPA
			  POP BP
			  RET 

B1:               ;Position of BOX1
				  PUSH BOX1   
				  JMP BACK
B2:
		  PUSH BOX2 
			  JMP BACK
B3:
		  PUSH BOX3   
			  JMP BACK
B4:
		  PUSH BOX4  
			  JMP BACK
B5:
		  PUSH BOX5  
			  JMP BACK
B6:
		  PUSH BOX6   
			  JMP BACK
B7:            
		  PUSH BOX7   
			  JMP BACK
B8:
		  PUSH BOX8 
			  JMP BACK
B9:
		  PUSH BOX9   
			  JMP BACK
B10:
		  PUSH BOX10  
			  JMP BACK
B11:
		  PUSH BOX11  
			  JMP BACK
B12:
		  PUSH BOX12   
			  JMP BACK
B13:               
		  PUSH BOX13   
			  JMP BACK
B14:
		  PUSH BOX14 
			  JMP BACK
B15:
		  PUSH BOX15
			  JMP BACK
B16:
		  PUSH BOX16  
			  JMP BACK
B17:
		  PUSH BOX17  
			  JMP BACK
B18:
		  PUSH BOX18  
			  JMP BACK

FIRSTLINECOLOR:
		  PUSH  WORD[COLOR1]  
		  JMP L1COLOR


SECONDLINECOLOR:
		  PUSH WORD[COLOR2]    
		  JMP L1COLOR


THIRDLINECOLOR:
		  PUSH WORD[COLOR3]   
		  JMP L1COLOR

PRINTCALLER:
		  PUSHA
			  MOV CX,1
LABEL1:
		  CMP CX,6
			  JLE FIRSTLINECOLOR        ;Jump if condition fits
			  CMP CX,12
			  JLE SECONDLINECOLOR
			  CMP CX,18
			  JLE THIRDLINECOLOR
L1COLOR:
		  CMP CX,1
			  JE B1
			  CMP CX,2
			  JE B2
			  CMP CX,3
			  JE B3
			  CMP CX,4
			  JE B4
			  CMP CX,5
			  JE B5
			  CMP CX,6
			  JE B6
			  CMP CX,7
			  JE B7
			  CMP CX,8
			  JE B8
			  CMP CX,9
			  JE B9
			  CMP CX,10
			  JE B10
			  CMP CX,11
			  JE B11
			  CMP CX,12
			  JE B12
			  CMP CX,13
			  JE B13
			  CMP CX,14
			  JE B14
			  CMP CX,15
			  JE B15
			  CMP CX,16
			  JE B16
			  CMP CX,17
			  JE B17
			  CMP CX,18
			  JE B18


BACK:
		  CALL PRINTER
			  INC CX
			  POP BX
			  POP DX
			  CMP CX,18
			  JLE LABEL1
			  POPA
			  RET 

			  ;; Bar code


KBISR:
		      PUSHA
			
    			MOV AX,0
	
           	IN AL,0x60
            BAR2:
			CMP AL, 0x4D
			  JZ BOARDPRINT
			  CMP AL,0x4B
			  JZ BOARDPRINT1
			  JMP END11
BOARDPRINT:
		  MOV BYTE[BOARDBOOL2],1
BOARDPRINT1:
		  ;MOV BYTE[BOARDBOOL2],0
			  MOV AX, WORD[CS:BOARDCOLOR] 
		  MOV CX, BOARDPOSITION
			  PUSH AX
			  PUSH CX
			  CALL PRINTER1
			  POP CX 
			  POP AX
END11:
		  POPA
			  JMP FAR [CS:OLDISR]

PARTNER1: DB 'Vishwa Shruti Bhavya',0
PARTNER2: DB 'Srivathsan Abhinav',0
LOADER:DB 'Loading:',0
PRESS: DB 'Press Escape to continue',0

STARTPAGE:
		  PUSHA
			  MOV AH, 06H    ; Scroll up function
			  XOR AL, AL     ;
		  XOR CX, CX     ; Upper left corner CH=row, CL=column
			  MOV DX, 184FH  ; lower right corner DH=row, DL=column
			  MOV BH, 45H   ; Background color of startpage
			  INT 10H ;Video BIOS

			  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 1 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, 75 ; Normal attrib
			  MOV CX, 22 ; Length of string
			  MOV DX,0x1022
			  PUSH CS
			  POP ES ; Segment of string
			  MOV BP, PARTNER1 ; Offset of string
			  INT 0x10 ; Call BIOS video service


			  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 1 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, 75 ; Normal attrib
			  MOV CX, 29 ; Length of string
			  MOV DX,0x1122
			  PUSH CS
			  POP ES ; Segment of string
			  MOV BP, PARTNER2 ; Offset of string
			  INT 0x10 ; Call BIOS video service


			  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 1 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, 75 ; Normal attrib
			  MOV CX, 8 ; Length of string
			  MOV DX,0x1322
			  PUSH CS
			  POP ES ; Segment of string
			  MOV BP, LOADER ; Offset of string
			  INT 0x10 ; Call BIOS video service


			  PUSH 0xB800
			  POP ES
			  MOV AH,75
			  MOV AL,178
			  MOV WORD[ES:1000],AX
			  MOV WORD[ES:1002],AX
			  MOV WORD[ES:1004],AX
			  MOV WORD[ES:1006],AX
			  MOV WORD[ES:1008],AX
			  MOV WORD[ES:1010],AX
			  MOV WORD[ES:1160],AX
			  MOV WORD[ES:1172],AX
			  MOV WORD[ES:1320],AX
			  MOV WORD[ES:1332],AX
			  MOV WORD[ES:1480],AX
			  MOV WORD[ES:1482],AX
			  MOV WORD[ES:1484],AX
			  MOV WORD[ES:1486],AX
			  MOV WORD[ES:1488],AX
			  MOV WORD[ES:1490],AX
			  MOV WORD[ES:1640],AX
			  MOV WORD[ES:1652],AX
			  MOV WORD[ES:1800],AX
			  MOV WORD[ES:1812],AX
			  MOV WORD[ES:1960],AX
			  MOV WORD[ES:1962],AX
			  MOV WORD[ES:1964],AX
			  MOV WORD[ES:1966],AX
			  MOV WORD[ES:1968],AX
			  MOV WORD[ES:1970],AX
			  MOV AL,'R'
			  MOV WORD[ES:1974],AX
			  MOV AL,'I'
			  MOV WORD[ES:1976],AX
			  MOV AL,'C'
			  MOV WORD[ES:1978],AX
			  MOV AL,'K'
			  MOV WORD[ES:1980],AX
			  MOV AL,178
			  MOV WORD[ES:1050],AX
			  MOV WORD[ES:1052],AX
			  MOV WORD[ES:1054],AX
			  MOV WORD[ES:1056],AX
			  MOV WORD[ES:1058],AX
			  MOV WORD[ES:1060],AX
			  MOV WORD[ES:1210],AX
			  MOV WORD[ES:1222],AX
			  MOV WORD[ES:1370],AX
			  MOV WORD[ES:1382],AX
			  MOV WORD[ES:1530],AX
			  MOV WORD[ES:1532],AX
			  MOV WORD[ES:1534],AX
			  MOV WORD[ES:1536],AX
			  MOV WORD[ES:1538],AX
			  MOV WORD[ES:1540],AX
			  MOV WORD[ES:1690],AX
			  MOV WORD[ES:1702],AX
			  MOV WORD[ES:1850],AX
			  MOV WORD[ES:1862],AX
			  MOV WORD[ES:2010],AX
			  MOV WORD[ES:2012],AX
			  MOV WORD[ES:2014],AX
			  MOV WORD[ES:2016],AX
			  MOV WORD[ES:2018],AX
			  MOV WORD[ES:2020],AX
			  MOV AL,'R'
			  MOV WORD[ES:2024],AX
			  MOV AL,'E'
			  MOV WORD[ES:2026],AX
			  MOV AL,'A'
			  MOV WORD[ES:2028],AX
			  MOV AL,'K'
			  MOV WORD[ES:2030],AX
			  MOV AL,'E'
			  MOV WORD[ES:2032],AX
			  MOV AL,'R'
			  MOV WORD[ES:2034],AX
			  MOV AH,75
			  MOV AL,178
			  MOV CX, 15
			  MOV DI,3126

LOADING:
		  MOV BX,0xFFFF
			  CALL DELAY
			  MOV BX,0xFFFF
			  CALL DELAY
			  MOV BX,0xFFFF
			  CALL DELAY
			  MOV BX,0xFFFF
			  CALL DELAY
			  MOV WORD[ES:DI],AX
			  ADD DI,2
			  LOOP LOADING


			  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 1 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, 75 ; Normal attrib
			  MOV CX, 24 ; Length of string
			  MOV DX,0x1516
			  PUSH CS
			  POP ES ; Segment of string
			  MOV BP, PRESS ; Offset of string
			  INT 0x10 ; Call BIOS video service

ENTER1:
		  MOV AH,0
			  INT 16H
			  CMP AL,27            ;Waits for Escape key
			  JNE ENTER1

			  MOV AH,0H
			  MOV AL,3H
			  INT 10H            ;This will clear the screen

			  POPA
			  RET

PRINTER1:

		  PUSH BP
			  MOV BP,SP
			  PUSHA
			  MOV AX,0
			  MOV SI,0
BARPRINTING:
		  MOV BX,[BP+4]
		  MOV DX,[BX+SI]

		  CMP BYTE[BOARDBOOL2],1
			  JZ OUT1
			  JMP GO1
OUT1:
		  CMP WORD[BX+46],0x174F
			  JE OUT2
			  JMP MOVE1
GO1:
		  CMP  DX,0x1700
			  JE OUT2
MOVE1:

		  MOV BX,BOARDPOSITION
			  CMP BYTE[BOARDBOOL2],1
			  JNZ R2
			  ADD DL,1
			  JMP R3
R2:
		  SUB DL,1
R3:
		  MOV WORD [BX+SI],DX


			  ADD SI,2
			  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 0 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, [BP+6] ; Normal attrib
			  MOV CX, 1 ; Length of string
			  PUSH BP
			  PUSH CS
			  MOV BP,' ' ; Offset of string
			  POP ES ; Segment of string
			  INT 0x10 ; Call BIOS video service
			  POP BP
			  CMP SI,48
			  JNE BARPRINTING

			  MOV SI,46
SPACE1:
		  CMP BYTE[BOARDBOOL2],0
			  JZ LS1

LS:
		  MOV BX,[BP+4]
		  MOV DX,[BX+0]
		  SUB DL,1
			  JMP LS2
LS1:
		  MOV BX,[BP+4]
		  MOV DX,[BX+SI]
		  ADD DL,1
LS2:
		  ADD SI,2
			  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 0 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, 7 ; Normal attrib
			  MOV CX,1; Length of string
			  PUSH BP
			  PUSH CS
			  MOV BP,' ' ; Offset of string
			  POP ES ; Segment of string
			  INT 0x10 ; Call BIOS video service
			  POP BP
			  CMP SI,48
			  JNE LS1
OUT2:
		  MOV BYTE[BOARDBOOL2],0
			  POPA
			  POP BP
			  RET 

KBISR1:
		  PUSHA
			  CMP BYTE [CS:GAMER],18
			  JE TER1
			  CMP BYTE[CS:GAMECOUNTER],3
			  JE TER1
			  INC BYTE[CS:TIMERCOUNT]
		  INC BYTE[COUNTER]
		  CMP BYTE[CS:TIMERCOUNT],18
			  JE INCSEC
SECBACK:
		  CMP BYTE[CS:SEC],59
			  JE INCMIN
MINBACK:
		  CMP BYTE [COUNTER],3
			  JNE TER
			  MOV AX,0x10
			  PUSH AX
			  MOV BX,BALLROW
			  PUSH BX
			  MOV DI,BALLCOL
			  PUSH DI
			  CALL PRINTER2
			  POP DI
			  POP BX
			  POP AX
			  JMP TER
TER1:
			  CALL ENDPAGE
			  
		  MOV BYTE[CS:GAMER],0
TER:
		  POPA
			  MOV AL,0x20
			  OUT 0x20,AL
			  IRET
SEC: DB 0
MIN: DB 0
INCSEC:
		  INC BYTE[CS:SEC]
		  MOV BYTE[CS:TIMERCOUNT],0
			  JMP SECBACK

INCMIN:
		  INC BYTE[CS:MIN]
		  MOV BYTE[CS:SEC],0
			  JMP MINBACK

PRINTER2:
		  MOV BYTE[COUNTER],1
			  PUSH BP
			  MOV BP,SP
			  PUSHA
			  MOV AX,0
			  MOV AX,0xB800
			  MOV ES,AX
			  MOV AH,0x04
			  ;MOV AL,BYTE[CS:LIFE]
		  MOV AL,0
			  MOV AL,25
			  MOV DI,3840
			  MOV BYTE[ES:DI],'L'
			  MOV BYTE[ES:DI+2],'I'
			  MOV BYTE[ES:DI+4],'F'
			  MOV BYTE[ES:DI+6],'E'
			  MOV AL,BYTE[LIFE]
		  MOV BYTE[ES:DI+10],AL
			  MOV AH,0x07
			  MOV DI,3950
			  MOV BYTE[ES:DI],'T'
			  MOV BYTE[ES:DI+2],'I'
			  MOV BYTE[ES:DI+4],'M'
			  MOV BYTE[ES:DI+6],'E'
			  MOV BYTE[ES:DI+8],'R'
			  MOV AL,[CS:MIN]
		  ADD AL,0x30
			  MOV BYTE [ES:DI+12],AL
			  MOV BYTE [ES:DI+14],':'
			  MOV AL,[CS:SEC]
		  MOV DL,10
			  MOV AH,0
			  DIV DL
			  MOV CL,AH
			  MOV AH,0x07
			  ADD AL,0x30
			  MOV BYTE [ES:DI+16],AL
			  ADD CL,0x30
			  MOV BYTE [ES:DI+18],CL
SPACE23:
		  CMP BYTE[CS:FLAG],1
			  JE INN
			  JMP INN2
INN:
		  INC DH
INN2:
		  DEC DH
			  ;DEC DL
			  MOV DH,BYTE[CS:BALLROWSPACE]
		  MOV DL,BYTE[CS:BALLCOLSPACE]
		  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 0 ; Subservice 01 – Update cursor
			  MOV BH, 0 ; Output on page 0
			  MOV BL, 0x07; Normal attrib
			  MOV CX, 1 ; Length of string
			  PUSH BP
			  PUSH CS
			  MOV BP," " ; Offset of string
			  POP ES ; Segment of string
			  INT 0x10 ; Call BIOS video service
			  POP BP


			  MOV SI,0
			  ;LOOP1:
		  MOV BX,[BP+6]
		  MOV DH,BYTE[CS:BALLROW]
		  MOV BX,[BP+4]
		  MOV DL,BYTE[CS:BALLCOL]
		  MOV BYTE[CS:BALLROWSPACE],DH
			  MOV BYTE[CS:BALLCOLSPACE],DL



INN24:
		  CMP BYTE[CS:FLAG],1
			  JE INN22
			  ;MOV BYTE[CS:BOARDRIGHT],0
			  ;MOV BYTE[CS:BOARDLEFT],0
			  INC BYTE[CS:BALLROW]
		  CMP BYTE[CS:MIDFLAG],1
			  JE MID11
			  CMP BYTE[CS:BOARDRIGHT],1
			  JE RIH1
			  CMP BYTE[CS:BOARDLEFT],1
			  JE RIH11

			  CMP BYTE[CS:RIGHTCOLFLAG],1
			  JE RIGHT11
			  CMP BYTE[CS:LEFTCOLFLAG],1
			  JE LEFT11
			  JMP RRRR

RIH1:
		  INC BYTE [CS:BALLCOL]
		  JMP MID111
RIH11:
		  DEC BYTE [CS:BALLCOL]
		  JMP MID111
RIGHT11:
		  DEC BYTE [CS:BALLCOL]
		  JMP MID111
LEFT11:
		  INC BYTE [CS:BALLCOL]
		  JMP MID111
RRRR:
		  ;INC BYTE[CS:BALLCOL]
MID11:
		  JMP MID111


INN22:                               ;When row is decrementing
									 DEC BYTE [CS:BALLROW]
		  CMP BYTE[MIDFLAG],1
			  JE MID111
			  CMP BYTE[CS:BOARDRIGHT],1
			  JE BR2
			  CMP BYTE[CS:BOARDLEFT],1
			  JE BRL

			  CMP BYTE[MIDFLAG],1
			  ;JE MID111
			  CMP BYTE[RIGHTCOLFLAG],1
			  JE RRIGHT
			  CMP BYTE[LEFTCOLFLAG],1
			  JE LLEFT

			  JMP RRR
BR2:
		  INC BYTE [CS:BALLCOL]
		  JMP MID111
BRL:
		  DEC BYTE [CS:BALLCOL]
		  JMP MID111
LLEFT:
		  INC BYTE[CS:BALLCOL]
		  JMP MID111
RRIGHT:
		  DEC BYTE [CS:BALLCOL]
		  JMP MID111
RRR:
		  INC BYTE[CS:BALLCOL]

MID111:




		  ;MOV DX,WORD[BALLPOSITION]
		  ADD SI,2
			  MOV AH, 0x13 ; Service 13 - print string
			  MOV AL, 0 ; SUBSERVICE 01 – UPDATE CURSOR
			  MOV BH, 0 ; Output on page 0
			  MOV BL, 7 ; Normal attrib
			  MOV CX, 1 ; Length of string
			  PUSH BP
			  PUSH CS
			  MOV BP,BALL ; Offset of string
			  POP ES ; Segment of string
			  INT 0x10 ; Call BIOS video service
			  POP BP
			  CMP DH,0x16
			  MOV SI,0
			  JE BAL
			  CMP DH,0x18
			  JE INTER1
			  JMP COLCHECK
BAL:
		  MOV BYTE[FLAG1],1
			  MOV BX,BOARDPOSITION
			  MOV CX,WORD[BX+SI]
		  DEC CH
			  CMP DX,CX
			  JE BB
			  ADD SI,2
			  JMP CONT
BB:
		  SUB BYTE[CS:BALLROW],1
			  MOV BYTE[FLAG],1
			  CMP SI,8
			  JE MIDF
			  CMP SI,10
			  JE MIDF
			  CMP SI,0
			  JE LEFTBO
			  CMP SI,2
			  JE LEFTBO
			  CMP SI,4
			  JE LEFTBO
			  CMP SI,6
			  JE LEFTBO

			  CMP SI,12
			  JE RIGHTBO
			  CMP SI,14
			  JE RIGHTBO
			  CMP SI,16
			  JE RIGHTBO
			  CMP SI,18
			  JE RIGHTBO
			  JMP AZ
INTER1:
		  CMP DH,0x18
			  JE END111
			  JMP COLCHECK
LEFTBO:
		  MOV BYTE[CS:MIDFLAG],0
			  MOV BYTE[CS:BOARDLEFT],1
			  MOV BYTE[CS:BOARDRIGHT],0
			  JMP AZ

RIGHTBO:
		  MOV BYTE[CS:MIDFLAG],0
			  MOV BYTE[CS:BOARDRIGHT],1
			  JMP AZ

MIDF:
		  MOV BYTE[CS:MIDFLAG],1
AZ:
		  MOV SI,48
CONT:
		  CMP SI,48
			  JNE BAL
			  CMP  BYTE[CS:FLAG1],1
			  JE INTER
			  JMP COLCHECK
INTER:
		  CMP BYTE[FLAG],0
			  JE INTER1
			  JMP COLCHECK

END111:
		  MOV BX,LIFE
			  MOV AX,0xB800
			  MOV ES,AX
			  MOV AH,0x07
			  MOV AL,BYTE[BX]
		  DEC BYTE[LIFE]
		  INC BYTE[GAMECOUNTER]
		  MOV DI,3840
			  MOV BYTE[ES:DI+10],AL
			  MOV AH,BYTE [CS:ABALLROW]
		  MOV BYTE[CS:BALLROW],AH
			  MOV AH,BYTE [CS:ABALLCOL]
		  MOV BYTE[CS:BALLCOL],AH
			  MOV BYTE[FLAG],0
			  MOV BYTE [CS:FIREFLAG],0
COLCHECK:
		  CMP BYTE DL,0x4E
			  JE RIGHTCOL
			  JMP UPCHECK
RIGHTCOL:
		  MOV BYTE [CS:RIGHTCOLFLAG],1
			  MOV BYTE [CS:LEFTCOLFLAG],0
			  MOV BYTE[CS:BOARDLEFT],0
			  MOV BYTE[CS:BOARDRIGHT],0
UPCHECK:
		  CMP DH,1
			  JE UPCHECK1
			  JMP LEFTCHECK
UPCHECK1:
		  MOV BYTE [CS:FLAG],0
			  MOV BYTE [CS:FIREFLAG],0
			  ;MOV BYTE[CS:BOARDLEFT],0
			  ;MOV BYTE[CS:BOARDRIGHT],1
			  ;MOV BYTE[MIDFLAG],0

LEFTCHECK:
		  CMP BYTE DL,0x02
			  JE LEFTCHECK1
			  JMP LIN8
LEFTCHECK1:
		  MOV BYTE[CS:BOARDLEFT],0
			  MOV BYTE[CS:BOARDRIGHT],0
			  MOV BYTE [CS:LEFTCOLFLAG],1
			  MOV BYTE [CS:RIGHTCOLFLAG],0


LIN8:
		  MOV SI,0
			  CMP DH,0x09
			  JE LIN81
			  CMP DH,0x08
			  JE LIN81
			  JMP LIN52
LIN81:
		  CMP BYTE[BOXCOUNT],0
			  JE BB18
			  CMP BYTE[BOXCOUNT],1
			  JE BB17
			  CMP BYTE[BOXCOUNT],2
			  JE BB16
			  CMP BYTE[BOXCOUNT],3
			  JE BB15
			  CMP BYTE[BOXCOUNT],4
			  JE BB14
			  CMP BYTE[BOXCOUNT],5
			  JE BB13
BB18:
		  MOV BX,BOX18
			  JMP PP
BB17:
		  MOV BX,BOX17
			  JMP PP
BB16:
		  MOV BX,BOX16
			  JMP PP
BB15:
		  MOV BX,BOX15
			  JMP PP
BB14:
		  MOV BX,BOX14
			  JMP PP
BB13:
		  MOV BX,BOX13

PP:
		  INC BYTE[BOXCOUNT]
PPP:
		  MOV CX,DX
			  SUB CH,1
			  CMP CX,[BX+SI]
		  JE PRI
			  ADD SI,2
			  CMP SI,48
			  JNE PPP
			  MOV SI,0
			  CMP BYTE[BOXCOUNT],5
			  JNE LIN81
			  JMP LIN52
PRI:
		  MOV AX,7
			  PUSH AX
			  PUSH BX
			  INC BYTE [CS:GAMER]
		  CALL PRINTER
			  CALL SCOREINCREMENT
			  CMP BYTE [CS:FIREFLAG],1
			  JE J24
			  CMP BYTE[FLAG],0
			  JE J24
			  CMP BYTE[FLAG],1
			  JE J25
J24:
		  SUB BYTE[CS:BALLROW],3
			  MOV BYTE[FLAG],1
			  MOV SI,0
			  JMP L33
J25:
		  INC BYTE[CS:BALLROW]
		  MOV BYTE[FLAG],0
			  MOV SI,0
L33:
		  MOV WORD[BX+SI],0xFFFF
			  ADD SI,2
			  CMP SI,48
			  JNE L33

			  POP BX
			  POP AX

			  MOV SI,0
			  JMP LIN52


LIN52:
		  MOV SI,0
			  CMP DH,0x06
			  JE LIN51
			  CMP DH,0x05
			  JE LIN51
			  JMP LIN32
LIN51:
		  CMP BYTE[BOXCOUNT1],0
			  JE BB12
			  CMP BYTE[BOXCOUNT1],1
			  JE BB11
			  CMP BYTE[BOXCOUNT1],2
			  JE BB10
			  CMP BYTE[BOXCOUNT1],3
			  JE BB9
			  CMP BYTE[BOXCOUNT1],4
			  JE BB8
			  CMP BYTE[BOXCOUNT1],5
			  JE BB7
BB12:
		  MOV BX,BOX12
			  JMP PP1
BB11:
		  MOV BX,BOX11
			  JMP PP1
BB10:
		  MOV BX,BOX10
			  JMP PP1
BB9:
		  MOV BX,BOX9
			  JMP PP1
BB8:
		  MOV BX,BOX8
			  JMP PP1
BB7:
		  MOV BX,BOX7

PP1:
		  INC BYTE[BOXCOUNT1]
PPP1:
		  MOV CX,DX
			  SUB CH,1
			  CMP CX,[BX+SI]
		  JE PRI1
			  ADD SI,2
			  CMP SI,48
			  JNE PPP1
			  MOV SI,0
			  CMP BYTE[CS:BOXCOUNT1],5
			  JNE LIN51
			  JMP LIN32
PRI1:
		  MOV AX,7
			  PUSH AX
			  PUSH BX
			  CALL PRINTER
			  INC BYTE [CS:GAMER]
		  CALL SCOREINCREMENT

			  CMP BYTE [CS:FIREFLAG],1  ;;;;;;;;;;;;;;;;;;;;;;;;
		  JE J241

			  CMP BYTE[FLAG],0
			  JE J241
			  CMP BYTE[FLAG],1
			  JE J251
J241:
		  DEC BYTE[CS:BALLROW]
		  MOV BYTE[FLAG],1
			  MOV SI,0
			  JMP L331
J251:
		  INC BYTE[CS:BALLROW]
		  MOV BYTE[FLAG],0
			  MOV SI,0
			  ;INC BYTE[CS:BALLROW]
		  ;MOV BYTE[CS:FLAG],0
			  MOV SI,0
L331:
		  MOV WORD[BX+SI],0xFFFF
			  ADD SI,2
			  CMP SI,48
			  JNE L331

			  POP BX
			  POP AX
			  MOV SI,0
			  JMP LIN32


LIN32:
		  	MOV SI,0
			  CMP DH,0x03
			  JE LIN31
			  CMP DH,0x02
			  JE LIN31
			  JMP SPACE
LIN31:
		  CMP BYTE[BOXCOUNT2],0
			  JE BB6
			  CMP BYTE[BOXCOUNT2],1
			  JE BB5
			  CMP BYTE[BOXCOUNT2],2
			  JE BB4
			  CMP BYTE[BOXCOUNT2],3
			  JE BB3
			  CMP BYTE[BOXCOUNT2],4
			  JE BB2
			  CMP BYTE[BOXCOUNT2],5
			  JE BB1
BB6:
		  MOV BX,BOX6
			  JMP PP12
BB5:
		  MOV BX,BOX5
			  JMP PP12
BB4:
		  MOV BX,BOX4
			  JMP PP12
BB3:
		  MOV BX,BOX3
			  JMP PP12
BB2:
		  MOV BX,BOX2
			  JMP PP12
BB1:
		  MOV BX,BOX1

PP12:
                  
		  INC BYTE[BOXCOUNT2]
PPP12:
		  MOV CX,DX
			  SUB CH,1
			  CMP CX,[BX+SI]
		  JE PRI12
			  ADD SI,2
			  CMP SI,48
			  JNE PPP12
			  MOV SI,0
			  CMP BYTE[CS:BOXCOUNT2],5
			  JNE LIN31
			  JMP SPACE
PRI12:
		  MOV AX,7
			  PUSH AX
			  PUSH BX
			  CALL PRINTER
			  INC BYTE [CS:GAMER]
		  CALL SCOREINCREMENT
			  CMP BYTE [CS:FIREFLAG],1
			  JE J241111

			  CMP BYTE[FLAG],0
			  JE J2411
			  CMP BYTE[FLAG],1
			  JE J2511
J2411:
		  SUB BYTE[CS:BALLROW],2
J241111:
		  MOV BYTE[FLAG],1
			  MOV SI,0
			  JMP L3311
J2511:
		  INC BYTE[CS:BALLROW]
		  MOV BYTE[FLAG],0
			  MOV SI,0
L3311:
		  MOV WORD[BX+SI],0xFFFF
			  ADD SI,2
			  CMP SI,48
			  JNE L3311

			  POP BX
			  POP AX
			  MOV SI,0



SPACE:
		  CMP BYTE[CS:BOXCOUNT],0x06
			  JE BOOLLIFE
			  JMP COMPARELIFE
BOOLLIFE:
		  MOV BYTE[PFLAG1],1
COMPARELIFE:
		  CMP BYTE[PFLAG1],1
			  JE LIFECHANGE
			  JMP BACKLIFE

LIFECHANGE:
		  MOV AX,0
			  MOV AX,0xB800
			  MOV ES,AX
			  MOV AX,0x0720
			  MOV DI,[POWER1]
		  MOV WORD[ES:DI],AX
			  ADD WORD[POWER1],160
			  INC BYTE[CS:ROW11+1]
		  MOV DI,[POWER1]
		  MOV AH,0x04
		  MOV AL,'L';
			  MOV WORD[ES:DI],AX
			  CMP WORD [ROW11],0x1704
			  JE BARCOMPARE
			  JMP BACKLIFE
BARCOMPARE:
		  MOV SI,0
			  MOV BX ,BOARDPOSITION

BARCOMPARE1:
		  MOV AX,0
			  MOV AX,[BX+SI]
		  CMP AX,[ROW11]
		  JE NEWLIFE
			  ADD SI ,2
			  CMP SI,48
			  JNE BARCOMPARE1
			  JMP NEWLIFE1


NEWLIFE:
		  MOV AX,0x40
			  PUSH AX
			  PUSH BX
			  CALL PRINTER1
			  POP BX
			  POP AX
			  MOV DI,[POWER1]
		  SUB DI,160
			  MOV BYTE[ES:3688],' '
			  INC BYTE[LIFE]
		  DEC BYTE[CS:GAMECOUNTER]
		  INC BYTE[ROW11+1]
NEWLIFE1:
		  MOV BYTE[ES:3688],' '
			  MOV BYTE[PFLAG1],0
			  INC BYTE[ROW11+1]


		  ;;;;;;;
BACKLIFE:
		  CMP BYTE[CS:BOXCOUNT],0x03
			  JE BOOLLIFE1
			  JMP COMPARELIFE1
BOOLLIFE1:
		  MOV BYTE[PFLAG2],1
COMPARELIFE1:
		  CMP BYTE[PFLAG2],1
			  JE LIFECHANGE1
			  JMP BACKLIFE1
			  ;;
LIFECHANGE1:
		  MOV AX,0
			  MOV AX,0xB800
			  MOV ES,AX
			  MOV AX,0x0720
			  MOV DI,[POWER2]
		  MOV WORD[ES:DI],AX
			  ADD WORD[POWER2],160
			  INC BYTE[CS:ROW22+1]
		  MOV DI,[POWER2]
		  MOV AX,0x0731
			  MOV WORD[ES:DI],AX
			  CMP WORD [ROW22],0x172D
			  JE BARCOMPARE2
			  JMP BACKLIFE1
BARCOMPARE2:
		  MOV SI,0
			  MOV BX ,BOARDPOSITION

BARCOMPARE3:
		  MOV AX,0
			  MOV AX,[BX+SI]
		  MOV BYTE [ES:DI],' '
			  CMP AX,[ROW22]
		  JE NEWLIFE2
			  ADD SI ,2
			  CMP SI,48
			  JNE BARCOMPARE3
			  JMP NEWLIFE3


NEWLIFE2:
		  MOV BYTE[FIREFLAG],1
			  MOV AX,0x40
			  PUSH AX
			  PUSH BX
			  CALL PRINTER1
			  POP BX
			  POP AX
			  MOV DI,[POWER2]
		  SUB DI,160
			  MOV BYTE[ES:3688],' '
			  INC BYTE[ROW22+1]
NEWLIFE3:
		  MOV BYTE[ES:3688],' '
			  MOV BYTE[PFLAG2],0
			  INC BYTE[ROW22+1]





		  ;;;
BACKLIFE1:
		  POPA
			  POP BP
			  RET 
FIREFLAG: DB 0
PFLAG2: DB 0
POWER2: DW 1210 ;; 8 ROW,45COL
PFLAG1: DB 0
POWER1: DW 1128
ROW11: DW 0x0704
ROW22: DW 0x072D




GRE: DB 25



PRINTSCORE:
		  PUSH BP 
			  MOV BP, SP 
			  PUSH ES 
			  PUSH AX 
			  PUSH BX 
			  PUSH CX 
			  PUSH DX 
			  PUSH DI 
			  MOV AX, 0xB800 
			  MOV ES, AX ; Point ES to video base 
			  MOV AX, [SCORE] ; Load number in AX 
			  MOV BX, 10 ; Use base 10 for division
			  MOV CX, 0 ; Initialize count of digits 
NEXTDIGIT:
		  MOV DX, 0 ; Zero upper half of dividend 
			  DIV BX ; Divide by 10 
			  ADD DL, 0x30 ; Convert digit into ASCII value
			  PUSH DX ; Save ASCII value on stack 
			  INC CX ; Increment count of values 
			  CMP AX, 0 ; Is the quotient zero
			  JNZ NEXTDIGIT ; If no divide it again

			  MOV AH,0x02
			  MOV AL,'S'
			  MOV WORD[ES:3920],AX
			  MOV AL,'C'
			  MOV WORD[ES:3922],AX
			  MOV AL,'O'
			  MOV WORD[ES:3924],AX
			  MOV AL,'R'
			  MOV WORD[ES:3926],AX
			  MOV AL,'E'
			  MOV WORD[ES:3928],AX
			  MOV DI, 3932

NEXTPOS: 
		  POP DX ; Remove a digit from the stack
			  MOV DH, 0x02 ; Use normal attribute 
			  MOV [ES:DI], DX ; Print char on screen 
			  ADD DI, 2 ; Move to next screen location 
			  LOOP NEXTPOS ; Repeat for all digits on stack

			  POP DI 
			  POP DX 
			  POP CX 
			  POP BX 
			  POP AX 
			  POP ES 
			  POP BP 
			  RET 2 
BONUS1:
		  CMP BYTE[GAMER],18
			  JE BONUS
			  JMP BONUS2
BONUS:
		  ADD WORD[CS:SCORE],100
			  JMP SCOREBACK

SCOREINCREMENT:
		  PUSHA
			  MOV BL,[CS:MIN]
		  CMP BL,0x02
			  JLE BONUS1
BONUS2:
		  ADD WORD[CS:SCORE],10
SCOREBACK:
		  PUSH WORD[CS:SCORE]
		  CALL PRINTSCORE
			  POPA
			  RET

ENDPAGE:
		  PUSHA
			  MOV AL,3H
			  INT 10H               ;Clears the screen
			  MOV AH, 06H    ; Scroll up function
			  XOR AL, AL     ;
		  XOR CX, CX     ; Upper left corner CH=row, CL=column
			  MOV DX, 184FH  ; Lower right corner DH=row, DL=column 
			  MOV BH, 20H   ; Background color of startpage
			  INT 10H ;Video BIOS

			  XOR AX,AX
			  MOV AX,0xB800
			  MOV ES,AX
			  MOV DI,2150
			  MOV BYTE[ES:DI],'G'
			  ADD DI,2
			  MOV BYTE[ES:DI],'A'
			  ADD DI,2
			  MOV BYTE[ES:DI],'M'
			  ADD DI,2
			  MOV BYTE[ES:DI],'E'
			  ADD DI,2
			  MOV BYTE[ES:DI],' '
			  ADD DI,2
			  MOV BYTE[ES:DI],'O'
			  ADD DI,2
			  MOV BYTE[ES:DI],'V'
			  ADD DI,2
			  MOV BYTE[ES:DI],'E'
			  ADD DI,2
			  MOV BYTE[ES:DI],'R'
			  ADD DI,2

			  POPA
			POP AX
			MOV AX,4C00H
			INT 0x21
			 

DELAY:
		  DEC BX
			  CMP BX,0
			  JNE DELAY
			  RET


START:
		  XOR AX,AX
			  MOV ES,AX
			  MOV AX,[ES:9*4]
		  MOV [OLDISR],AX
			  MOV AX,[ES:9*4+2]
		  MOV [OLDISR+2],AX
			  CLI

			  MOV WORD [ES:8*4],KBISR1 ;Timer
			  MOV [ES:8*4+2],CS
			  MOV WORD [ES:9*4],KBISR
			  MOV [ES:9*4+2],CS
			  STI

ENTER2:
		  MOV AH,0
			  INT 16H
			  CMP AL,27            ;Waits for escape key
			  JNE ENTER2

			  MOV AX,4C00H
			  INT 21H
