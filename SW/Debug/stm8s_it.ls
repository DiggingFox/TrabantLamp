   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  16                     	bsct
  17  0000               _Stat:
  18  0000 00            	dc.b	0
  19  0001               _intervalPressPointerR:
  20  0001 00            	dc.b	0
  21  0002               _intervalUnpressPointerR:
  22  0002 00            	dc.b	0
  23  0003               _intervalPressR:
  24  0003 ff            	dc.b	255
  25  0004 ff            	dc.b	255
  26  0005 ff            	dc.b	255
  27  0006               _intervalUnpressR:
  28  0006 ff            	dc.b	255
  29  0007 ff            	dc.b	255
  30  0008 ff            	dc.b	255
  31  0009               _intervalPressPointerO:
  32  0009 00            	dc.b	0
  33  000a               _intervalUnpressPointerO:
  34  000a 00            	dc.b	0
  35  000b               _intervalPressO:
  36  000b ff            	dc.b	255
  37  000c ff            	dc.b	255
  38  000d ff            	dc.b	255
  39  000e               _intervalUnpressO:
  40  000e ff            	dc.b	255
  41  000f ff            	dc.b	255
  42  0010 ff            	dc.b	255
  72                     ; 77 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  72                     ; 78 {
  73                     	switch	.text
  74  0000               f_NonHandledInterrupt:
  78                     ; 82 }
  81  0000 80            	iret
 103                     ; 90 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
 103                     ; 91 {
 104                     	switch	.text
 105  0001               f_TRAP_IRQHandler:
 109                     ; 95 }
 112  0001 80            	iret
 134                     ; 102 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 134                     ; 103 
 134                     ; 104 {
 135                     	switch	.text
 136  0002               f_TLI_IRQHandler:
 140                     ; 108 }
 143  0002 80            	iret
 165                     ; 115 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 165                     ; 116 {
 166                     	switch	.text
 167  0003               f_AWU_IRQHandler:
 171                     ; 120 }
 174  0003 80            	iret
 196                     ; 127 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 196                     ; 128 {
 197                     	switch	.text
 198  0004               f_CLK_IRQHandler:
 202                     ; 132 }
 205  0004 80            	iret
 228                     ; 139 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 228                     ; 140 {
 229                     	switch	.text
 230  0005               f_EXTI_PORTA_IRQHandler:
 234                     ; 144 }
 237  0005 80            	iret
 260                     ; 151 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 260                     ; 152 {
 261                     	switch	.text
 262  0006               f_EXTI_PORTB_IRQHandler:
 266                     ; 156 }
 269  0006 80            	iret
 292                     ; 163 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 292                     ; 164 {
 293                     	switch	.text
 294  0007               f_EXTI_PORTC_IRQHandler:
 298                     ; 168 }
 301  0007 80            	iret
 324                     ; 175 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 324                     ; 176 {
 325                     	switch	.text
 326  0008               f_EXTI_PORTD_IRQHandler:
 330                     ; 180 }
 333  0008 80            	iret
 356                     ; 187 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 356                     ; 188 {
 357                     	switch	.text
 358  0009               f_EXTI_PORTE_IRQHandler:
 362                     ; 192 }
 365  0009 80            	iret
 387                     ; 239 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 387                     ; 240 {
 388                     	switch	.text
 389  000a               f_SPI_IRQHandler:
 393                     ; 244 }
 396  000a 80            	iret
 419                     ; 251 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 419                     ; 252 {
 420                     	switch	.text
 421  000b               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 425                     ; 256 }
 428  000b 80            	iret
 451                     ; 263 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 451                     ; 264 {
 452                     	switch	.text
 453  000c               f_TIM1_CAP_COM_IRQHandler:
 457                     ; 268 }
 460  000c 80            	iret
 483                     ; 301  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 483                     ; 302  {
 484                     	switch	.text
 485  000d               f_TIM2_UPD_OVF_BRK_IRQHandler:
 489                     ; 303 	TIM2->SR1 &= ~TIM2_SR1_UIF;	//nulujem flagu
 491  000d 72115304      	bres	21252,#0
 492                     ; 304  }
 495  0011 80            	iret
 518                     ; 311  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 518                     ; 312  {
 519                     	switch	.text
 520  0012               f_TIM2_CAP_COM_IRQHandler:
 524                     ; 316  }
 527  0012 80            	iret
 550                     ; 350  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 550                     ; 351  {
 551                     	switch	.text
 552  0013               f_UART1_TX_IRQHandler:
 556                     ; 355  }
 559  0013 80            	iret
 582                     ; 362  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 582                     ; 363  {
 583                     	switch	.text
 584  0014               f_UART1_RX_IRQHandler:
 588                     ; 367  }
 591  0014 80            	iret
 613                     ; 401 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 613                     ; 402 {
 614                     	switch	.text
 615  0015               f_I2C_IRQHandler:
 619                     ; 406 }
 622  0015 80            	iret
 644                     ; 480  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 644                     ; 481  {
 645                     	switch	.text
 646  0016               f_ADC1_IRQHandler:
 650                     ; 485  }
 653  0016 80            	iret
 700                     ; 506 INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 700                     ; 507  {
 701                     	switch	.text
 702  0017               f_TIM4_UPD_OVF_IRQHandler:
 704  0017 8a            	push	cc
 705  0018 84            	pop	a
 706  0019 a4bf          	and	a,#191
 707  001b 88            	push	a
 708  001c 86            	pop	cc
 709       00000004      OFST:	set	4
 710  001d 3b0002        	push	c_x+2
 711  0020 be00          	ldw	x,c_x
 712  0022 89            	pushw	x
 713  0023 3b0002        	push	c_y+2
 714  0026 be00          	ldw	x,c_y
 715  0028 89            	pushw	x
 716  0029 5204          	subw	sp,#4
 719                     ; 509   TIM4->SR1 &= ~TIM4_SR1_UIF;	//nulujem flagu
 721  002b 72115344      	bres	21316,#0
 722                     ; 512 	if(!(GPIO_SW->IDR & 1<<PIN_SW_R) && (Stat & 1<<PIN_SW_R))	// if the RED button is pressed, and before it was not
 724  002f c65010        	ld	a,20496
 725  0032 a540          	bcp	a,#64
 726  0034 261a          	jrne	L752
 728  0036 b600          	ld	a,_Stat
 729  0038 a540          	bcp	a,#64
 730  003a 2714          	jreq	L752
 731                     ; 514 		intervalPressPointerR++;
 733  003c 3c01          	inc	_intervalPressPointerR
 734                     ; 515 		if(intervalPressPointerR >= N_HISTORY) intervalPressPointerR = 0;
 736  003e b601          	ld	a,_intervalPressPointerR
 737  0040 a103          	cp	a,#3
 738  0042 2502          	jrult	L162
 741  0044 3f01          	clr	_intervalPressPointerR
 742  0046               L162:
 743                     ; 516 		intervalPressR[intervalPressPointerR] = 0;
 745  0046 b601          	ld	a,_intervalPressPointerR
 746  0048 5f            	clrw	x
 747  0049 97            	ld	xl,a
 748  004a 6f03          	clr	(_intervalPressR,x)
 750  004c ac090209      	jpf	L362
 751  0050               L752:
 752                     ; 519 	else if((GPIO_SW->IDR & 1<<PIN_SW_R) && !(Stat & 1<<PIN_SW_R))	// if the RED button is unpressed, and before it was
 754  0050 c65010        	ld	a,20496
 755  0053 a540          	bcp	a,#64
 756  0055 2759          	jreq	L562
 758  0057 b600          	ld	a,_Stat
 759  0059 a540          	bcp	a,#64
 760  005b 2653          	jrne	L562
 761                     ; 522 		if((intervalPressR[intervalPressPointerR] <= SHORT_PRESS) && (intervalUnpressR[intervalUnpressPointerR] <= SHORT_PRESS))
 763  005d b601          	ld	a,_intervalPressPointerR
 764  005f 5f            	clrw	x
 765  0060 97            	ld	xl,a
 766  0061 e603          	ld	a,(_intervalPressR,x)
 767  0063 a115          	cp	a,#21
 768  0065 2435          	jruge	L762
 770  0067 b602          	ld	a,_intervalUnpressPointerR
 771  0069 5f            	clrw	x
 772  006a 97            	ld	xl,a
 773  006b e606          	ld	a,(_intervalUnpressR,x)
 774  006d a115          	cp	a,#21
 775  006f 242b          	jruge	L762
 776                     ; 524 			i = intervalPressPointerR;
 778  0071 b601          	ld	a,_intervalPressPointerR
 779  0073 5f            	clrw	x
 780  0074 97            	ld	xl,a
 781  0075 1f03          	ldw	(OFST-1,sp),x
 782                     ; 525 			if(i == 0) i = N_HISTORY - 1;
 784  0077 1e03          	ldw	x,(OFST-1,sp)
 785  0079 2605          	jrne	L172
 788  007b ae0002        	ldw	x,#2
 789  007e 1f03          	ldw	(OFST-1,sp),x
 790  0080               L172:
 791                     ; 527 			if((intervalPressR[i] <= SHORT_PRESS))
 793  0080 1e03          	ldw	x,(OFST-1,sp)
 794  0082 e603          	ld	a,(_intervalPressR,x)
 795  0084 a115          	cp	a,#21
 796  0086 2414          	jruge	L762
 797                     ; 529 				TIM1->CCR2H = 0x00;
 799  0088 725f5267      	clr	21095
 800                     ; 530 				TIM1->CCR2L = 0x00;
 802  008c 725f5268      	clr	21096
 803                     ; 531 				TIM1->CCR3H = 0x00;
 805  0090 725f5269      	clr	21097
 806                     ; 532 				TIM1->CCR3L = 0x00;
 808  0094 725f526a      	clr	21098
 809                     ; 533 			  flashPrescaler = 1;
 811  0098 35010000      	mov	_flashPrescaler,#1
 812  009c               L762:
 813                     ; 537 		intervalUnpressPointerR++;
 815  009c 3c02          	inc	_intervalUnpressPointerR
 816                     ; 538 		if(intervalUnpressPointerR >= N_HISTORY) intervalUnpressPointerR = 0;
 818  009e b602          	ld	a,_intervalUnpressPointerR
 819  00a0 a103          	cp	a,#3
 820  00a2 2502          	jrult	L572
 823  00a4 3f02          	clr	_intervalUnpressPointerR
 824  00a6               L572:
 825                     ; 539 		intervalUnpressR[intervalUnpressPointerR] = 0;
 827  00a6 b602          	ld	a,_intervalUnpressPointerR
 828  00a8 5f            	clrw	x
 829  00a9 97            	ld	xl,a
 830  00aa 6f06          	clr	(_intervalUnpressR,x)
 832  00ac ac090209      	jpf	L362
 833  00b0               L562:
 834                     ; 541 	else if(!(GPIO_SW->IDR & 1<<PIN_SW_R))	// if the RED button is pressed
 836  00b0 c65010        	ld	a,20496
 837  00b3 a540          	bcp	a,#64
 838  00b5 2704          	jreq	L45
 839  00b7 acf901f9      	jpf	L103
 840  00bb               L45:
 841                     ; 543 		if(intervalPressR[intervalPressPointerR] != 0xFF) intervalPressR[intervalPressPointerR]++;
 843  00bb b601          	ld	a,_intervalPressPointerR
 844  00bd 5f            	clrw	x
 845  00be 97            	ld	xl,a
 846  00bf e603          	ld	a,(_intervalPressR,x)
 847  00c1 a1ff          	cp	a,#255
 848  00c3 2706          	jreq	L303
 851  00c5 b601          	ld	a,_intervalPressPointerR
 852  00c7 5f            	clrw	x
 853  00c8 97            	ld	xl,a
 854  00c9 6c03          	inc	(_intervalPressR,x)
 855  00cb               L303:
 856                     ; 544 		i = (TIM1->CCR2H << 8)  | TIM1->CCR2L;
 858  00cb c65267        	ld	a,21095
 859  00ce 5f            	clrw	x
 860  00cf 97            	ld	xl,a
 861  00d0 c65268        	ld	a,21096
 862  00d3 02            	rlwa	x,a
 863  00d4 1f03          	ldw	(OFST-1,sp),x
 864                     ; 546 		if((intervalUnpressR[intervalUnpressPointerR] <= SHORT_PRESS))
 866  00d6 b602          	ld	a,_intervalUnpressPointerR
 867  00d8 5f            	clrw	x
 868  00d9 97            	ld	xl,a
 869  00da e606          	ld	a,(_intervalUnpressR,x)
 870  00dc a115          	cp	a,#21
 871  00de 2478          	jruge	L503
 872                     ; 548 			i = (TIM1->CCR3H << 8)  | TIM1->CCR3L;
 874  00e0 c65269        	ld	a,21097
 875  00e3 5f            	clrw	x
 876  00e4 97            	ld	xl,a
 877  00e5 c6526a        	ld	a,21098
 878  00e8 02            	rlwa	x,a
 879  00e9 1f03          	ldw	(OFST-1,sp),x
 880                     ; 549 			if(i != 0)
 882  00eb 1e03          	ldw	x,(OFST-1,sp)
 883  00ed 2711          	jreq	L703
 884                     ; 551 				i -= 1 + i/40;
 886  00ef 1e03          	ldw	x,(OFST-1,sp)
 887  00f1 a628          	ld	a,#40
 888  00f3 cd0000        	call	c_sdivx
 890  00f6 5c            	incw	x
 891  00f7 1f01          	ldw	(OFST-3,sp),x
 892  00f9 1e03          	ldw	x,(OFST-1,sp)
 893  00fb 72f001        	subw	x,(OFST-3,sp)
 894  00fe 1f03          	ldw	(OFST-1,sp),x
 895  0100               L703:
 896                     ; 554 			TIM1->CCR3H = (i >> 8) & 0xFF;
 898  0100 1e03          	ldw	x,(OFST-1,sp)
 899  0102 4f            	clr	a
 900  0103 01            	rrwa	x,a
 901  0104 01            	rrwa	x,a
 902  0105 c75269        	ld	21097,a
 903  0108 02            	rlwa	x,a
 904                     ; 555 			TIM1->CCR3L = i & 0xFF;
 906  0109 7b04          	ld	a,(OFST+0,sp)
 907  010b a4ff          	and	a,#255
 908  010d c7526a        	ld	21098,a
 909                     ; 556 			flashPrescaler = 1;
 911  0110 35010000      	mov	_flashPrescaler,#1
 912                     ; 558 			if(i < 0x100)
 914  0114 9c            	rvf
 915  0115 1e03          	ldw	x,(OFST-1,sp)
 916  0117 a30100        	cpw	x,#256
 917  011a 2f04          	jrslt	L65
 918  011c ac090209      	jpf	L362
 919  0120               L65:
 920                     ; 560 				i = (TIM1->CCR2H << 8)  | TIM1->CCR2L;
 922  0120 c65267        	ld	a,21095
 923  0123 5f            	clrw	x
 924  0124 97            	ld	xl,a
 925  0125 c65268        	ld	a,21096
 926  0128 02            	rlwa	x,a
 927  0129 1f03          	ldw	(OFST-1,sp),x
 928                     ; 561 				if(i != 0)
 930  012b 1e03          	ldw	x,(OFST-1,sp)
 931  012d 2711          	jreq	L313
 932                     ; 563 				  i -= 1 + i/40;
 934  012f 1e03          	ldw	x,(OFST-1,sp)
 935  0131 a628          	ld	a,#40
 936  0133 cd0000        	call	c_sdivx
 938  0136 5c            	incw	x
 939  0137 1f01          	ldw	(OFST-3,sp),x
 940  0139 1e03          	ldw	x,(OFST-1,sp)
 941  013b 72f001        	subw	x,(OFST-3,sp)
 942  013e 1f03          	ldw	(OFST-1,sp),x
 943  0140               L313:
 944                     ; 566 				TIM1->CCR2H = (i >> 8) & 0xFF;
 946  0140 1e03          	ldw	x,(OFST-1,sp)
 947  0142 4f            	clr	a
 948  0143 01            	rrwa	x,a
 949  0144 01            	rrwa	x,a
 950  0145 c75267        	ld	21095,a
 951  0148 02            	rlwa	x,a
 952                     ; 567 				TIM1->CCR2L = i & 0xFF;
 954  0149 7b04          	ld	a,(OFST+0,sp)
 955  014b a4ff          	and	a,#255
 956  014d c75268        	ld	21096,a
 957                     ; 568 			  flashPrescaler = 1;
 959  0150 35010000      	mov	_flashPrescaler,#1
 960  0154 ac090209      	jpf	L362
 961  0158               L503:
 962                     ; 572 		else if(intervalUnpressR[intervalUnpressPointerR] > SHORT_PRESS)
 964  0158 b602          	ld	a,_intervalUnpressPointerR
 965  015a 5f            	clrw	x
 966  015b 97            	ld	xl,a
 967  015c e606          	ld	a,(_intervalUnpressR,x)
 968  015e a115          	cp	a,#21
 969  0160 2404          	jruge	L06
 970  0162 ac090209      	jpf	L362
 971  0166               L06:
 972                     ; 574 			if(i > 3980) i++;
 974  0166 9c            	rvf
 975  0167 1e03          	ldw	x,(OFST-1,sp)
 976  0169 a30f8d        	cpw	x,#3981
 977  016c 2f09          	jrslt	L123
 980  016e 1e03          	ldw	x,(OFST-1,sp)
 981  0170 1c0001        	addw	x,#1
 982  0173 1f03          	ldw	(OFST-1,sp),x
 984  0175 200d          	jra	L323
 985  0177               L123:
 986                     ; 575 			else i += 1 + i/40;
 988  0177 1e03          	ldw	x,(OFST-1,sp)
 989  0179 a628          	ld	a,#40
 990  017b cd0000        	call	c_sdivx
 992  017e 5c            	incw	x
 993  017f 72fb03        	addw	x,(OFST-1,sp)
 994  0182 1f03          	ldw	(OFST-1,sp),x
 995  0184               L323:
 996                     ; 576 			if(i >= MAX) i = MAX;
 998  0184 9c            	rvf
 999  0185 1e03          	ldw	x,(OFST-1,sp)
1000  0187 a31000        	cpw	x,#4096
1001  018a 2f05          	jrslt	L523
1004  018c ae1000        	ldw	x,#4096
1005  018f 1f03          	ldw	(OFST-1,sp),x
1006  0191               L523:
1007                     ; 578 			TIM1->CCR2H = (i >> 8) & 0xFF;
1009  0191 1e03          	ldw	x,(OFST-1,sp)
1010  0193 4f            	clr	a
1011  0194 01            	rrwa	x,a
1012  0195 01            	rrwa	x,a
1013  0196 c75267        	ld	21095,a
1014  0199 02            	rlwa	x,a
1015                     ; 579 			TIM1->CCR2L = i & 0xFF;
1017  019a 7b04          	ld	a,(OFST+0,sp)
1018  019c a4ff          	and	a,#255
1019  019e c75268        	ld	21096,a
1020                     ; 580 			flashPrescaler = 1;
1022  01a1 35010000      	mov	_flashPrescaler,#1
1023                     ; 582 			if(i > 0x100)
1025  01a5 9c            	rvf
1026  01a6 1e03          	ldw	x,(OFST-1,sp)
1027  01a8 a30101        	cpw	x,#257
1028  01ab 2f5c          	jrslt	L362
1029                     ; 584 				i = (TIM1->CCR3H << 8)  | TIM1->CCR3L;
1031  01ad c65269        	ld	a,21097
1032  01b0 5f            	clrw	x
1033  01b1 97            	ld	xl,a
1034  01b2 c6526a        	ld	a,21098
1035  01b5 02            	rlwa	x,a
1036  01b6 1f03          	ldw	(OFST-1,sp),x
1037                     ; 585 				if(i > 3980) i++;
1039  01b8 9c            	rvf
1040  01b9 1e03          	ldw	x,(OFST-1,sp)
1041  01bb a30f8d        	cpw	x,#3981
1042  01be 2f09          	jrslt	L133
1045  01c0 1e03          	ldw	x,(OFST-1,sp)
1046  01c2 1c0001        	addw	x,#1
1047  01c5 1f03          	ldw	(OFST-1,sp),x
1049  01c7 200d          	jra	L333
1050  01c9               L133:
1051                     ; 586 				else i += 1 + i/40;
1053  01c9 1e03          	ldw	x,(OFST-1,sp)
1054  01cb a628          	ld	a,#40
1055  01cd cd0000        	call	c_sdivx
1057  01d0 5c            	incw	x
1058  01d1 72fb03        	addw	x,(OFST-1,sp)
1059  01d4 1f03          	ldw	(OFST-1,sp),x
1060  01d6               L333:
1061                     ; 587 				if(i >= MAX) i = MAX;
1063  01d6 9c            	rvf
1064  01d7 1e03          	ldw	x,(OFST-1,sp)
1065  01d9 a31000        	cpw	x,#4096
1066  01dc 2f05          	jrslt	L533
1069  01de ae1000        	ldw	x,#4096
1070  01e1 1f03          	ldw	(OFST-1,sp),x
1071  01e3               L533:
1072                     ; 589 				TIM1->CCR3H = (i >> 8) & 0xFF;
1074  01e3 1e03          	ldw	x,(OFST-1,sp)
1075  01e5 4f            	clr	a
1076  01e6 01            	rrwa	x,a
1077  01e7 01            	rrwa	x,a
1078  01e8 c75269        	ld	21097,a
1079  01eb 02            	rlwa	x,a
1080                     ; 590 				TIM1->CCR3L = i & 0xFF;
1082  01ec 7b04          	ld	a,(OFST+0,sp)
1083  01ee a4ff          	and	a,#255
1084  01f0 c7526a        	ld	21098,a
1085                     ; 591 			  flashPrescaler = 1;
1087  01f3 35010000      	mov	_flashPrescaler,#1
1088  01f7 2010          	jra	L362
1089  01f9               L103:
1090                     ; 598 		if(intervalUnpressR[intervalUnpressPointerR] != 0xFF) intervalUnpressR[intervalUnpressPointerR]++;
1092  01f9 b602          	ld	a,_intervalUnpressPointerR
1093  01fb 5f            	clrw	x
1094  01fc 97            	ld	xl,a
1095  01fd e606          	ld	a,(_intervalUnpressR,x)
1096  01ff a1ff          	cp	a,#255
1097  0201 2706          	jreq	L362
1100  0203 b602          	ld	a,_intervalUnpressPointerR
1101  0205 5f            	clrw	x
1102  0206 97            	ld	xl,a
1103  0207 6c06          	inc	(_intervalUnpressR,x)
1104  0209               L362:
1105                     ; 604 	if(!(GPIO_SW->IDR & 1<<PIN_SW_O) && (Stat & 1<<PIN_SW_O))	// if the ORANGE button is pressed, and before it was not
1107  0209 c65010        	ld	a,20496
1108  020c a520          	bcp	a,#32
1109  020e 261a          	jrne	L343
1111  0210 b600          	ld	a,_Stat
1112  0212 a520          	bcp	a,#32
1113  0214 2714          	jreq	L343
1114                     ; 607 		intervalPressPointerO++;
1116  0216 3c09          	inc	_intervalPressPointerO
1117                     ; 608 		if(intervalPressPointerO >= N_HISTORY) intervalPressPointerO = 0;
1119  0218 b609          	ld	a,_intervalPressPointerO
1120  021a a103          	cp	a,#3
1121  021c 2502          	jrult	L543
1124  021e 3f09          	clr	_intervalPressPointerO
1125  0220               L543:
1126                     ; 609 		intervalPressO[intervalPressPointerO] = 0;
1128  0220 b609          	ld	a,_intervalPressPointerO
1129  0222 5f            	clrw	x
1130  0223 97            	ld	xl,a
1131  0224 6f0b          	clr	(_intervalPressO,x)
1133  0226 ac380338      	jpf	L743
1134  022a               L343:
1135                     ; 612 	else if((GPIO_SW->IDR & 1<<PIN_SW_O) && !(Stat & 1<<PIN_SW_O))	// if the ORANGE button is unpressed, and before it was
1137  022a c65010        	ld	a,20496
1138  022d a520          	bcp	a,#32
1139  022f 2751          	jreq	L153
1141  0231 b600          	ld	a,_Stat
1142  0233 a520          	bcp	a,#32
1143  0235 264b          	jrne	L153
1144                     ; 615 		if((intervalPressO[intervalPressPointerO] <= SHORT_PRESS) && (intervalUnpressO[intervalUnpressPointerO] <= SHORT_PRESS))
1146  0237 b609          	ld	a,_intervalPressPointerO
1147  0239 5f            	clrw	x
1148  023a 97            	ld	xl,a
1149  023b e60b          	ld	a,(_intervalPressO,x)
1150  023d a115          	cp	a,#21
1151  023f 242d          	jruge	L353
1153  0241 b60a          	ld	a,_intervalUnpressPointerO
1154  0243 5f            	clrw	x
1155  0244 97            	ld	xl,a
1156  0245 e60e          	ld	a,(_intervalUnpressO,x)
1157  0247 a115          	cp	a,#21
1158  0249 2423          	jruge	L353
1159                     ; 617 			i = intervalPressPointerO;
1161  024b b609          	ld	a,_intervalPressPointerO
1162  024d 5f            	clrw	x
1163  024e 97            	ld	xl,a
1164  024f 1f03          	ldw	(OFST-1,sp),x
1165                     ; 618 			if(i == 0) i = N_HISTORY - 1;
1167  0251 1e03          	ldw	x,(OFST-1,sp)
1168  0253 2605          	jrne	L553
1171  0255 ae0002        	ldw	x,#2
1172  0258 1f03          	ldw	(OFST-1,sp),x
1173  025a               L553:
1174                     ; 620 			if((intervalPressO[i] <= SHORT_PRESS))
1176  025a 1e03          	ldw	x,(OFST-1,sp)
1177  025c e60b          	ld	a,(_intervalPressO,x)
1178  025e a115          	cp	a,#21
1179  0260 240c          	jruge	L353
1180                     ; 622 				TIM1->CCR1H = 0x00;
1182  0262 725f5265      	clr	21093
1183                     ; 623 				TIM1->CCR1L = 0x00;
1185  0266 725f5266      	clr	21094
1186                     ; 624 			  flashPrescaler = 1;
1188  026a 35010000      	mov	_flashPrescaler,#1
1189  026e               L353:
1190                     ; 629 		intervalUnpressPointerO++;
1192  026e 3c0a          	inc	_intervalUnpressPointerO
1193                     ; 630 		if(intervalUnpressPointerO >= N_HISTORY) intervalUnpressPointerO = 0;
1195  0270 b60a          	ld	a,_intervalUnpressPointerO
1196  0272 a103          	cp	a,#3
1197  0274 2502          	jrult	L163
1200  0276 3f0a          	clr	_intervalUnpressPointerO
1201  0278               L163:
1202                     ; 631 		intervalUnpressO[intervalUnpressPointerO] = 0;
1204  0278 b60a          	ld	a,_intervalUnpressPointerO
1205  027a 5f            	clrw	x
1206  027b 97            	ld	xl,a
1207  027c 6f0e          	clr	(_intervalUnpressO,x)
1209  027e ac380338      	jpf	L743
1210  0282               L153:
1211                     ; 633 	else if(!(GPIO_SW->IDR & 1<<PIN_SW_O))	// if the ORANGE button is pressed
1213  0282 c65010        	ld	a,20496
1214  0285 a520          	bcp	a,#32
1215  0287 2704          	jreq	L26
1216  0289 ac280328      	jpf	L563
1217  028d               L26:
1218                     ; 636 		if(intervalPressO[intervalPressPointerO] != 0xFF) intervalPressO[intervalPressPointerO]++;
1220  028d b609          	ld	a,_intervalPressPointerO
1221  028f 5f            	clrw	x
1222  0290 97            	ld	xl,a
1223  0291 e60b          	ld	a,(_intervalPressO,x)
1224  0293 a1ff          	cp	a,#255
1225  0295 2706          	jreq	L763
1228  0297 b609          	ld	a,_intervalPressPointerO
1229  0299 5f            	clrw	x
1230  029a 97            	ld	xl,a
1231  029b 6c0b          	inc	(_intervalPressO,x)
1232  029d               L763:
1233                     ; 637 		i = (TIM1->CCR1H << 8) | TIM1->CCR1L;
1235  029d c65265        	ld	a,21093
1236  02a0 5f            	clrw	x
1237  02a1 97            	ld	xl,a
1238  02a2 c65266        	ld	a,21094
1239  02a5 02            	rlwa	x,a
1240  02a6 1f03          	ldw	(OFST-1,sp),x
1241                     ; 640 		if((intervalUnpressO[intervalUnpressPointerO] <= SHORT_PRESS))
1243  02a8 b60a          	ld	a,_intervalUnpressPointerO
1244  02aa 5f            	clrw	x
1245  02ab 97            	ld	xl,a
1246  02ac e60e          	ld	a,(_intervalUnpressO,x)
1247  02ae a115          	cp	a,#21
1248  02b0 242b          	jruge	L173
1249                     ; 643 			if(i != 0)
1251  02b2 1e03          	ldw	x,(OFST-1,sp)
1252  02b4 2711          	jreq	L373
1253                     ; 645 				i -= 1 + i/40;
1255  02b6 1e03          	ldw	x,(OFST-1,sp)
1256  02b8 a628          	ld	a,#40
1257  02ba cd0000        	call	c_sdivx
1259  02bd 5c            	incw	x
1260  02be 1f01          	ldw	(OFST-3,sp),x
1261  02c0 1e03          	ldw	x,(OFST-1,sp)
1262  02c2 72f001        	subw	x,(OFST-3,sp)
1263  02c5 1f03          	ldw	(OFST-1,sp),x
1264  02c7               L373:
1265                     ; 648 	  	TIM1->CCR1H = (i >> 8) & 0xFF;
1267  02c7 1e03          	ldw	x,(OFST-1,sp)
1268  02c9 4f            	clr	a
1269  02ca 01            	rrwa	x,a
1270  02cb 01            	rrwa	x,a
1271  02cc c75265        	ld	21093,a
1272  02cf 02            	rlwa	x,a
1273                     ; 649 		  TIM1->CCR1L = i & 0xFF;
1275  02d0 7b04          	ld	a,(OFST+0,sp)
1276  02d2 a4ff          	and	a,#255
1277  02d4 c75266        	ld	21094,a
1278                     ; 650 			flashPrescaler = 1;
1280  02d7 35010000      	mov	_flashPrescaler,#1
1282  02db 205b          	jra	L743
1283  02dd               L173:
1284                     ; 653 		else if(intervalUnpressO[intervalUnpressPointerR] > SHORT_PRESS)
1286  02dd b602          	ld	a,_intervalUnpressPointerR
1287  02df 5f            	clrw	x
1288  02e0 97            	ld	xl,a
1289  02e1 e60e          	ld	a,(_intervalUnpressO,x)
1290  02e3 a115          	cp	a,#21
1291  02e5 2551          	jrult	L743
1292                     ; 656 		  if(i > 3980) i++;
1294  02e7 9c            	rvf
1295  02e8 1e03          	ldw	x,(OFST-1,sp)
1296  02ea a30f8d        	cpw	x,#3981
1297  02ed 2f09          	jrslt	L104
1300  02ef 1e03          	ldw	x,(OFST-1,sp)
1301  02f1 1c0001        	addw	x,#1
1302  02f4 1f03          	ldw	(OFST-1,sp),x
1304  02f6 200d          	jra	L304
1305  02f8               L104:
1306                     ; 657 		  else i += 1 + i/40;
1308  02f8 1e03          	ldw	x,(OFST-1,sp)
1309  02fa a628          	ld	a,#40
1310  02fc cd0000        	call	c_sdivx
1312  02ff 5c            	incw	x
1313  0300 72fb03        	addw	x,(OFST-1,sp)
1314  0303 1f03          	ldw	(OFST-1,sp),x
1315  0305               L304:
1316                     ; 658 		  if(i >= MAX) i = MAX;
1318  0305 9c            	rvf
1319  0306 1e03          	ldw	x,(OFST-1,sp)
1320  0308 a31000        	cpw	x,#4096
1321  030b 2f05          	jrslt	L504
1324  030d ae1000        	ldw	x,#4096
1325  0310 1f03          	ldw	(OFST-1,sp),x
1326  0312               L504:
1327                     ; 660 	  	TIM1->CCR1H = (i >> 8) & 0xFF;
1329  0312 1e03          	ldw	x,(OFST-1,sp)
1330  0314 4f            	clr	a
1331  0315 01            	rrwa	x,a
1332  0316 01            	rrwa	x,a
1333  0317 c75265        	ld	21093,a
1334  031a 02            	rlwa	x,a
1335                     ; 661 		  TIM1->CCR1L = i & 0xFF;
1337  031b 7b04          	ld	a,(OFST+0,sp)
1338  031d a4ff          	and	a,#255
1339  031f c75266        	ld	21094,a
1340                     ; 662 			flashPrescaler = 1;
1342  0322 35010000      	mov	_flashPrescaler,#1
1343  0326 2010          	jra	L743
1344  0328               L563:
1345                     ; 669 		if(intervalUnpressO[intervalUnpressPointerO] != 0xFF) intervalUnpressO[intervalUnpressPointerO]++;
1347  0328 b60a          	ld	a,_intervalUnpressPointerO
1348  032a 5f            	clrw	x
1349  032b 97            	ld	xl,a
1350  032c e60e          	ld	a,(_intervalUnpressO,x)
1351  032e a1ff          	cp	a,#255
1352  0330 2706          	jreq	L743
1355  0332 b60a          	ld	a,_intervalUnpressPointerO
1356  0334 5f            	clrw	x
1357  0335 97            	ld	xl,a
1358  0336 6c0e          	inc	(_intervalUnpressO,x)
1359  0338               L743:
1360                     ; 672 	Stat = ((GPIO_SW->IDR) & (1<<PIN_SW_R | 1<<PIN_SW_O));	//zapise stat
1362  0338 c65010        	ld	a,20496
1363  033b a460          	and	a,#96
1364  033d b700          	ld	_Stat,a
1365                     ; 675 	if(flashPrescaler >= 100)
1367  033f b600          	ld	a,_flashPrescaler
1368  0341 a164          	cp	a,#100
1369  0343 256c          	jrult	L314
1370                     ; 677 		FLASH_Unlock(FLASH_MEMTYPE_DATA);
1372  0345 a6f7          	ld	a,#247
1373  0347 cd0000        	call	_FLASH_Unlock
1375                     ; 678 		FLASH_ProgramByte(0x4000, TIM1->CCR1H);
1377  034a 3b5265        	push	21093
1378  034d ae4000        	ldw	x,#16384
1379  0350 89            	pushw	x
1380  0351 ae0000        	ldw	x,#0
1381  0354 89            	pushw	x
1382  0355 cd0000        	call	_FLASH_ProgramByte
1384  0358 5b05          	addw	sp,#5
1385                     ; 679 		FLASH_ProgramByte(0x4001, TIM1->CCR1L);
1387  035a 3b5266        	push	21094
1388  035d ae4001        	ldw	x,#16385
1389  0360 89            	pushw	x
1390  0361 ae0000        	ldw	x,#0
1391  0364 89            	pushw	x
1392  0365 cd0000        	call	_FLASH_ProgramByte
1394  0368 5b05          	addw	sp,#5
1395                     ; 680 		FLASH_ProgramByte(0x4002, TIM1->CCR2H);
1397  036a 3b5267        	push	21095
1398  036d ae4002        	ldw	x,#16386
1399  0370 89            	pushw	x
1400  0371 ae0000        	ldw	x,#0
1401  0374 89            	pushw	x
1402  0375 cd0000        	call	_FLASH_ProgramByte
1404  0378 5b05          	addw	sp,#5
1405                     ; 681 		FLASH_ProgramByte(0x4003, TIM1->CCR2L);
1407  037a 3b5268        	push	21096
1408  037d ae4003        	ldw	x,#16387
1409  0380 89            	pushw	x
1410  0381 ae0000        	ldw	x,#0
1411  0384 89            	pushw	x
1412  0385 cd0000        	call	_FLASH_ProgramByte
1414  0388 5b05          	addw	sp,#5
1415                     ; 682 		FLASH_ProgramByte(0x4004, TIM1->CCR3H);
1417  038a 3b5269        	push	21097
1418  038d ae4004        	ldw	x,#16388
1419  0390 89            	pushw	x
1420  0391 ae0000        	ldw	x,#0
1421  0394 89            	pushw	x
1422  0395 cd0000        	call	_FLASH_ProgramByte
1424  0398 5b05          	addw	sp,#5
1425                     ; 683 		FLASH_ProgramByte(0x4005, TIM1->CCR3L);
1427  039a 3b526a        	push	21098
1428  039d ae4005        	ldw	x,#16389
1429  03a0 89            	pushw	x
1430  03a1 ae0000        	ldw	x,#0
1431  03a4 89            	pushw	x
1432  03a5 cd0000        	call	_FLASH_ProgramByte
1434  03a8 5b05          	addw	sp,#5
1435                     ; 684 		FLASH_Lock(FLASH_MEMTYPE_DATA);
1437  03aa a6f7          	ld	a,#247
1438  03ac cd0000        	call	_FLASH_Lock
1440                     ; 685 		flashPrescaler = 0;
1442  03af 3f00          	clr	_flashPrescaler
1443  03b1               L314:
1444                     ; 687 	if(flashPrescaler > 0) flashPrescaler++;
1446  03b1 3d00          	tnz	_flashPrescaler
1447  03b3 2702          	jreq	L514
1450  03b5 3c00          	inc	_flashPrescaler
1451  03b7               L514:
1452                     ; 688  }
1455  03b7 5b04          	addw	sp,#4
1456  03b9 85            	popw	x
1457  03ba bf00          	ldw	c_y,x
1458  03bc 320002        	pop	c_y+2
1459  03bf 85            	popw	x
1460  03c0 bf00          	ldw	c_x,x
1461  03c2 320002        	pop	c_x+2
1462  03c5 80            	iret
1485                     ; 696 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
1485                     ; 697 {
1486                     	switch	.text
1487  03c6               f_EEPROM_EEC_IRQHandler:
1491                     ; 701 }
1494  03c6 80            	iret
1606                     	switch	.ubsct
1607  0000               _flashPrescaler:
1608  0000 00            	ds.b	1
1609                     	xdef	_flashPrescaler
1610                     	xdef	_intervalUnpressO
1611                     	xdef	_intervalPressO
1612                     	xdef	_intervalUnpressPointerO
1613                     	xdef	_intervalPressPointerO
1614                     	xdef	_intervalUnpressR
1615                     	xdef	_intervalPressR
1616                     	xdef	_intervalUnpressPointerR
1617                     	xdef	_intervalPressPointerR
1618                     	xdef	_Stat
1619                     	xdef	f_EEPROM_EEC_IRQHandler
1620                     	xdef	f_TIM4_UPD_OVF_IRQHandler
1621                     	xdef	f_ADC1_IRQHandler
1622                     	xdef	f_I2C_IRQHandler
1623                     	xdef	f_UART1_RX_IRQHandler
1624                     	xdef	f_UART1_TX_IRQHandler
1625                     	xdef	f_TIM2_CAP_COM_IRQHandler
1626                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
1627                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
1628                     	xdef	f_TIM1_CAP_COM_IRQHandler
1629                     	xdef	f_SPI_IRQHandler
1630                     	xdef	f_EXTI_PORTE_IRQHandler
1631                     	xdef	f_EXTI_PORTD_IRQHandler
1632                     	xdef	f_EXTI_PORTC_IRQHandler
1633                     	xdef	f_EXTI_PORTB_IRQHandler
1634                     	xdef	f_EXTI_PORTA_IRQHandler
1635                     	xdef	f_CLK_IRQHandler
1636                     	xdef	f_AWU_IRQHandler
1637                     	xdef	f_TLI_IRQHandler
1638                     	xdef	f_TRAP_IRQHandler
1639                     	xdef	f_NonHandledInterrupt
1640                     	xref	_FLASH_ProgramByte
1641                     	xref	_FLASH_Lock
1642                     	xref	_FLASH_Unlock
1643                     	xref.b	c_x
1644                     	xref.b	c_y
1664                     	xref	c_sdivx
1665                     	xref	c_sdivy
1666                     	end
