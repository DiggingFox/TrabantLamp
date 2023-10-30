   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  44                     ; 52 void ADC1_DeInit(void)
  44                     ; 53 {
  46                     	switch	.text
  47  0000               _ADC1_DeInit:
  51                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  53  0000 725f5400      	clr	21504
  54                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  56  0004 725f5401      	clr	21505
  57                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  59  0008 725f5402      	clr	21506
  60                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  62  000c 725f5403      	clr	21507
  63                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  65  0010 725f5406      	clr	21510
  66                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  68  0014 725f5407      	clr	21511
  69                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  71  0018 35ff5408      	mov	21512,#255
  72                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  74  001c 35035409      	mov	21513,#3
  75                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  77  0020 725f540a      	clr	21514
  78                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  80  0024 725f540b      	clr	21515
  81                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  83  0028 725f540e      	clr	21518
  84                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  86  002c 725f540f      	clr	21519
  87                     ; 66 }
  90  0030 81            	ret
 542                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 542                     ; 89 {
 543                     	switch	.text
 544  0031               _ADC1_Init:
 546  0031 89            	pushw	x
 547       00000000      OFST:	set	0
 550                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 552  0032 9e            	ld	a,xh
 553  0033 4d            	tnz	a
 554  0034 2705          	jreq	L21
 555  0036 9e            	ld	a,xh
 556  0037 a101          	cp	a,#1
 557  0039 2603          	jrne	L01
 558  003b               L21:
 559  003b 4f            	clr	a
 560  003c 2010          	jra	L41
 561  003e               L01:
 562  003e ae005b        	ldw	x,#91
 563  0041 89            	pushw	x
 564  0042 ae0000        	ldw	x,#0
 565  0045 89            	pushw	x
 566  0046 ae0000        	ldw	x,#L542
 567  0049 cd0000        	call	_assert_failed
 569  004c 5b04          	addw	sp,#4
 570  004e               L41:
 571                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 573  004e 0d02          	tnz	(OFST+2,sp)
 574  0050 273c          	jreq	L02
 575  0052 7b02          	ld	a,(OFST+2,sp)
 576  0054 a101          	cp	a,#1
 577  0056 2736          	jreq	L02
 578  0058 7b02          	ld	a,(OFST+2,sp)
 579  005a a102          	cp	a,#2
 580  005c 2730          	jreq	L02
 581  005e 7b02          	ld	a,(OFST+2,sp)
 582  0060 a103          	cp	a,#3
 583  0062 272a          	jreq	L02
 584  0064 7b02          	ld	a,(OFST+2,sp)
 585  0066 a104          	cp	a,#4
 586  0068 2724          	jreq	L02
 587  006a 7b02          	ld	a,(OFST+2,sp)
 588  006c a105          	cp	a,#5
 589  006e 271e          	jreq	L02
 590  0070 7b02          	ld	a,(OFST+2,sp)
 591  0072 a106          	cp	a,#6
 592  0074 2718          	jreq	L02
 593  0076 7b02          	ld	a,(OFST+2,sp)
 594  0078 a107          	cp	a,#7
 595  007a 2712          	jreq	L02
 596  007c 7b02          	ld	a,(OFST+2,sp)
 597  007e a108          	cp	a,#8
 598  0080 270c          	jreq	L02
 599  0082 7b02          	ld	a,(OFST+2,sp)
 600  0084 a10c          	cp	a,#12
 601  0086 2706          	jreq	L02
 602  0088 7b02          	ld	a,(OFST+2,sp)
 603  008a a109          	cp	a,#9
 604  008c 2603          	jrne	L61
 605  008e               L02:
 606  008e 4f            	clr	a
 607  008f 2010          	jra	L22
 608  0091               L61:
 609  0091 ae005c        	ldw	x,#92
 610  0094 89            	pushw	x
 611  0095 ae0000        	ldw	x,#0
 612  0098 89            	pushw	x
 613  0099 ae0000        	ldw	x,#L542
 614  009c cd0000        	call	_assert_failed
 616  009f 5b04          	addw	sp,#4
 617  00a1               L22:
 618                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 620  00a1 0d05          	tnz	(OFST+5,sp)
 621  00a3 272a          	jreq	L62
 622  00a5 7b05          	ld	a,(OFST+5,sp)
 623  00a7 a110          	cp	a,#16
 624  00a9 2724          	jreq	L62
 625  00ab 7b05          	ld	a,(OFST+5,sp)
 626  00ad a120          	cp	a,#32
 627  00af 271e          	jreq	L62
 628  00b1 7b05          	ld	a,(OFST+5,sp)
 629  00b3 a130          	cp	a,#48
 630  00b5 2718          	jreq	L62
 631  00b7 7b05          	ld	a,(OFST+5,sp)
 632  00b9 a140          	cp	a,#64
 633  00bb 2712          	jreq	L62
 634  00bd 7b05          	ld	a,(OFST+5,sp)
 635  00bf a150          	cp	a,#80
 636  00c1 270c          	jreq	L62
 637  00c3 7b05          	ld	a,(OFST+5,sp)
 638  00c5 a160          	cp	a,#96
 639  00c7 2706          	jreq	L62
 640  00c9 7b05          	ld	a,(OFST+5,sp)
 641  00cb a170          	cp	a,#112
 642  00cd 2603          	jrne	L42
 643  00cf               L62:
 644  00cf 4f            	clr	a
 645  00d0 2010          	jra	L03
 646  00d2               L42:
 647  00d2 ae005d        	ldw	x,#93
 648  00d5 89            	pushw	x
 649  00d6 ae0000        	ldw	x,#0
 650  00d9 89            	pushw	x
 651  00da ae0000        	ldw	x,#L542
 652  00dd cd0000        	call	_assert_failed
 654  00e0 5b04          	addw	sp,#4
 655  00e2               L03:
 656                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 658  00e2 0d06          	tnz	(OFST+6,sp)
 659  00e4 2706          	jreq	L43
 660  00e6 7b06          	ld	a,(OFST+6,sp)
 661  00e8 a110          	cp	a,#16
 662  00ea 2603          	jrne	L23
 663  00ec               L43:
 664  00ec 4f            	clr	a
 665  00ed 2010          	jra	L63
 666  00ef               L23:
 667  00ef ae005e        	ldw	x,#94
 668  00f2 89            	pushw	x
 669  00f3 ae0000        	ldw	x,#0
 670  00f6 89            	pushw	x
 671  00f7 ae0000        	ldw	x,#L542
 672  00fa cd0000        	call	_assert_failed
 674  00fd 5b04          	addw	sp,#4
 675  00ff               L63:
 676                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 678  00ff 0d07          	tnz	(OFST+7,sp)
 679  0101 2706          	jreq	L24
 680  0103 7b07          	ld	a,(OFST+7,sp)
 681  0105 a101          	cp	a,#1
 682  0107 2603          	jrne	L04
 683  0109               L24:
 684  0109 4f            	clr	a
 685  010a 2010          	jra	L44
 686  010c               L04:
 687  010c ae005f        	ldw	x,#95
 688  010f 89            	pushw	x
 689  0110 ae0000        	ldw	x,#0
 690  0113 89            	pushw	x
 691  0114 ae0000        	ldw	x,#L542
 692  0117 cd0000        	call	_assert_failed
 694  011a 5b04          	addw	sp,#4
 695  011c               L44:
 696                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 698  011c 0d08          	tnz	(OFST+8,sp)
 699  011e 2706          	jreq	L05
 700  0120 7b08          	ld	a,(OFST+8,sp)
 701  0122 a108          	cp	a,#8
 702  0124 2603          	jrne	L64
 703  0126               L05:
 704  0126 4f            	clr	a
 705  0127 2010          	jra	L25
 706  0129               L64:
 707  0129 ae0060        	ldw	x,#96
 708  012c 89            	pushw	x
 709  012d ae0000        	ldw	x,#0
 710  0130 89            	pushw	x
 711  0131 ae0000        	ldw	x,#L542
 712  0134 cd0000        	call	_assert_failed
 714  0137 5b04          	addw	sp,#4
 715  0139               L25:
 716                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 718  0139 0d09          	tnz	(OFST+9,sp)
 719  013b 2742          	jreq	L65
 720  013d 7b09          	ld	a,(OFST+9,sp)
 721  013f a101          	cp	a,#1
 722  0141 273c          	jreq	L65
 723  0143 7b09          	ld	a,(OFST+9,sp)
 724  0145 a102          	cp	a,#2
 725  0147 2736          	jreq	L65
 726  0149 7b09          	ld	a,(OFST+9,sp)
 727  014b a103          	cp	a,#3
 728  014d 2730          	jreq	L65
 729  014f 7b09          	ld	a,(OFST+9,sp)
 730  0151 a104          	cp	a,#4
 731  0153 272a          	jreq	L65
 732  0155 7b09          	ld	a,(OFST+9,sp)
 733  0157 a105          	cp	a,#5
 734  0159 2724          	jreq	L65
 735  015b 7b09          	ld	a,(OFST+9,sp)
 736  015d a106          	cp	a,#6
 737  015f 271e          	jreq	L65
 738  0161 7b09          	ld	a,(OFST+9,sp)
 739  0163 a107          	cp	a,#7
 740  0165 2718          	jreq	L65
 741  0167 7b09          	ld	a,(OFST+9,sp)
 742  0169 a108          	cp	a,#8
 743  016b 2712          	jreq	L65
 744  016d 7b09          	ld	a,(OFST+9,sp)
 745  016f a10c          	cp	a,#12
 746  0171 270c          	jreq	L65
 747  0173 7b09          	ld	a,(OFST+9,sp)
 748  0175 a1ff          	cp	a,#255
 749  0177 2706          	jreq	L65
 750  0179 7b09          	ld	a,(OFST+9,sp)
 751  017b a109          	cp	a,#9
 752  017d 2603          	jrne	L45
 753  017f               L65:
 754  017f 4f            	clr	a
 755  0180 2010          	jra	L06
 756  0182               L45:
 757  0182 ae0061        	ldw	x,#97
 758  0185 89            	pushw	x
 759  0186 ae0000        	ldw	x,#0
 760  0189 89            	pushw	x
 761  018a ae0000        	ldw	x,#L542
 762  018d cd0000        	call	_assert_failed
 764  0190 5b04          	addw	sp,#4
 765  0192               L06:
 766                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 768  0192 0d0a          	tnz	(OFST+10,sp)
 769  0194 2706          	jreq	L46
 770  0196 7b0a          	ld	a,(OFST+10,sp)
 771  0198 a101          	cp	a,#1
 772  019a 2603          	jrne	L26
 773  019c               L46:
 774  019c 4f            	clr	a
 775  019d 2010          	jra	L66
 776  019f               L26:
 777  019f ae0062        	ldw	x,#98
 778  01a2 89            	pushw	x
 779  01a3 ae0000        	ldw	x,#0
 780  01a6 89            	pushw	x
 781  01a7 ae0000        	ldw	x,#L542
 782  01aa cd0000        	call	_assert_failed
 784  01ad 5b04          	addw	sp,#4
 785  01af               L66:
 786                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 788  01af 7b08          	ld	a,(OFST+8,sp)
 789  01b1 88            	push	a
 790  01b2 7b03          	ld	a,(OFST+3,sp)
 791  01b4 97            	ld	xl,a
 792  01b5 7b02          	ld	a,(OFST+2,sp)
 793  01b7 95            	ld	xh,a
 794  01b8 cd03ed        	call	_ADC1_ConversionConfig
 796  01bb 84            	pop	a
 797                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 799  01bc 7b05          	ld	a,(OFST+5,sp)
 800  01be cd02ae        	call	_ADC1_PrescalerConfig
 802                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 804  01c1 7b07          	ld	a,(OFST+7,sp)
 805  01c3 97            	ld	xl,a
 806  01c4 7b06          	ld	a,(OFST+6,sp)
 807  01c6 95            	ld	xh,a
 808  01c7 cd04a8        	call	_ADC1_ExternalTriggerConfig
 810                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 812  01ca 7b0a          	ld	a,(OFST+10,sp)
 813  01cc 97            	ld	xl,a
 814  01cd 7b09          	ld	a,(OFST+9,sp)
 815  01cf 95            	ld	xh,a
 816  01d0 cd02f3        	call	_ADC1_SchmittTriggerConfig
 818                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 820  01d3 72105401      	bset	21505,#0
 821                     ; 119 }
 824  01d7 85            	popw	x
 825  01d8 81            	ret
 861                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 861                     ; 127 {
 862                     	switch	.text
 863  01d9               _ADC1_Cmd:
 865  01d9 88            	push	a
 866       00000000      OFST:	set	0
 869                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 871  01da 4d            	tnz	a
 872  01db 2704          	jreq	L47
 873  01dd a101          	cp	a,#1
 874  01df 2603          	jrne	L27
 875  01e1               L47:
 876  01e1 4f            	clr	a
 877  01e2 2010          	jra	L67
 878  01e4               L27:
 879  01e4 ae0081        	ldw	x,#129
 880  01e7 89            	pushw	x
 881  01e8 ae0000        	ldw	x,#0
 882  01eb 89            	pushw	x
 883  01ec ae0000        	ldw	x,#L542
 884  01ef cd0000        	call	_assert_failed
 886  01f2 5b04          	addw	sp,#4
 887  01f4               L67:
 888                     ; 131   if (NewState != DISABLE)
 890  01f4 0d01          	tnz	(OFST+1,sp)
 891  01f6 2706          	jreq	L562
 892                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 894  01f8 72105401      	bset	21505,#0
 896  01fc 2004          	jra	L762
 897  01fe               L562:
 898                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 900  01fe 72115401      	bres	21505,#0
 901  0202               L762:
 902                     ; 139 }
 905  0202 84            	pop	a
 906  0203 81            	ret
 942                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 942                     ; 147 {
 943                     	switch	.text
 944  0204               _ADC1_ScanModeCmd:
 946  0204 88            	push	a
 947       00000000      OFST:	set	0
 950                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 952  0205 4d            	tnz	a
 953  0206 2704          	jreq	L401
 954  0208 a101          	cp	a,#1
 955  020a 2603          	jrne	L201
 956  020c               L401:
 957  020c 4f            	clr	a
 958  020d 2010          	jra	L601
 959  020f               L201:
 960  020f ae0095        	ldw	x,#149
 961  0212 89            	pushw	x
 962  0213 ae0000        	ldw	x,#0
 963  0216 89            	pushw	x
 964  0217 ae0000        	ldw	x,#L542
 965  021a cd0000        	call	_assert_failed
 967  021d 5b04          	addw	sp,#4
 968  021f               L601:
 969                     ; 151   if (NewState != DISABLE)
 971  021f 0d01          	tnz	(OFST+1,sp)
 972  0221 2706          	jreq	L703
 973                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 975  0223 72125402      	bset	21506,#1
 977  0227 2004          	jra	L113
 978  0229               L703:
 979                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 981  0229 72135402      	bres	21506,#1
 982  022d               L113:
 983                     ; 159 }
 986  022d 84            	pop	a
 987  022e 81            	ret
1023                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
1023                     ; 167 {
1024                     	switch	.text
1025  022f               _ADC1_DataBufferCmd:
1027  022f 88            	push	a
1028       00000000      OFST:	set	0
1031                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1033  0230 4d            	tnz	a
1034  0231 2704          	jreq	L411
1035  0233 a101          	cp	a,#1
1036  0235 2603          	jrne	L211
1037  0237               L411:
1038  0237 4f            	clr	a
1039  0238 2010          	jra	L611
1040  023a               L211:
1041  023a ae00a9        	ldw	x,#169
1042  023d 89            	pushw	x
1043  023e ae0000        	ldw	x,#0
1044  0241 89            	pushw	x
1045  0242 ae0000        	ldw	x,#L542
1046  0245 cd0000        	call	_assert_failed
1048  0248 5b04          	addw	sp,#4
1049  024a               L611:
1050                     ; 171   if (NewState != DISABLE)
1052  024a 0d01          	tnz	(OFST+1,sp)
1053  024c 2706          	jreq	L133
1054                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
1056  024e 721e5403      	bset	21507,#7
1058  0252 2004          	jra	L333
1059  0254               L133:
1060                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1062  0254 721f5403      	bres	21507,#7
1063  0258               L333:
1064                     ; 179 }
1067  0258 84            	pop	a
1068  0259 81            	ret
1225                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1225                     ; 191 {
1226                     	switch	.text
1227  025a               _ADC1_ITConfig:
1229  025a 89            	pushw	x
1230       00000000      OFST:	set	0
1233                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1235  025b a30020        	cpw	x,#32
1236  025e 2705          	jreq	L421
1237  0260 a30010        	cpw	x,#16
1238  0263 2603          	jrne	L221
1239  0265               L421:
1240  0265 4f            	clr	a
1241  0266 2010          	jra	L621
1242  0268               L221:
1243  0268 ae00c1        	ldw	x,#193
1244  026b 89            	pushw	x
1245  026c ae0000        	ldw	x,#0
1246  026f 89            	pushw	x
1247  0270 ae0000        	ldw	x,#L542
1248  0273 cd0000        	call	_assert_failed
1250  0276 5b04          	addw	sp,#4
1251  0278               L621:
1252                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1254  0278 0d05          	tnz	(OFST+5,sp)
1255  027a 2706          	jreq	L231
1256  027c 7b05          	ld	a,(OFST+5,sp)
1257  027e a101          	cp	a,#1
1258  0280 2603          	jrne	L031
1259  0282               L231:
1260  0282 4f            	clr	a
1261  0283 2010          	jra	L431
1262  0285               L031:
1263  0285 ae00c2        	ldw	x,#194
1264  0288 89            	pushw	x
1265  0289 ae0000        	ldw	x,#0
1266  028c 89            	pushw	x
1267  028d ae0000        	ldw	x,#L542
1268  0290 cd0000        	call	_assert_failed
1270  0293 5b04          	addw	sp,#4
1271  0295               L431:
1272                     ; 196   if (NewState != DISABLE)
1274  0295 0d05          	tnz	(OFST+5,sp)
1275  0297 270a          	jreq	L124
1276                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1278  0299 c65400        	ld	a,21504
1279  029c 1a02          	or	a,(OFST+2,sp)
1280  029e c75400        	ld	21504,a
1282  02a1 2009          	jra	L324
1283  02a3               L124:
1284                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1286  02a3 7b02          	ld	a,(OFST+2,sp)
1287  02a5 43            	cpl	a
1288  02a6 c45400        	and	a,21504
1289  02a9 c75400        	ld	21504,a
1290  02ac               L324:
1291                     ; 206 }
1294  02ac 85            	popw	x
1295  02ad 81            	ret
1332                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1332                     ; 215 {
1333                     	switch	.text
1334  02ae               _ADC1_PrescalerConfig:
1336  02ae 88            	push	a
1337       00000000      OFST:	set	0
1340                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1342  02af 4d            	tnz	a
1343  02b0 271c          	jreq	L241
1344  02b2 a110          	cp	a,#16
1345  02b4 2718          	jreq	L241
1346  02b6 a120          	cp	a,#32
1347  02b8 2714          	jreq	L241
1348  02ba a130          	cp	a,#48
1349  02bc 2710          	jreq	L241
1350  02be a140          	cp	a,#64
1351  02c0 270c          	jreq	L241
1352  02c2 a150          	cp	a,#80
1353  02c4 2708          	jreq	L241
1354  02c6 a160          	cp	a,#96
1355  02c8 2704          	jreq	L241
1356  02ca a170          	cp	a,#112
1357  02cc 2603          	jrne	L041
1358  02ce               L241:
1359  02ce 4f            	clr	a
1360  02cf 2010          	jra	L441
1361  02d1               L041:
1362  02d1 ae00d9        	ldw	x,#217
1363  02d4 89            	pushw	x
1364  02d5 ae0000        	ldw	x,#0
1365  02d8 89            	pushw	x
1366  02d9 ae0000        	ldw	x,#L542
1367  02dc cd0000        	call	_assert_failed
1369  02df 5b04          	addw	sp,#4
1370  02e1               L441:
1371                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1373  02e1 c65401        	ld	a,21505
1374  02e4 a48f          	and	a,#143
1375  02e6 c75401        	ld	21505,a
1376                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1378  02e9 c65401        	ld	a,21505
1379  02ec 1a01          	or	a,(OFST+1,sp)
1380  02ee c75401        	ld	21505,a
1381                     ; 223 }
1384  02f1 84            	pop	a
1385  02f2 81            	ret
1433                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1433                     ; 234 {
1434                     	switch	.text
1435  02f3               _ADC1_SchmittTriggerConfig:
1437  02f3 89            	pushw	x
1438       00000000      OFST:	set	0
1441                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1443  02f4 9e            	ld	a,xh
1444  02f5 4d            	tnz	a
1445  02f6 2737          	jreq	L251
1446  02f8 9e            	ld	a,xh
1447  02f9 a101          	cp	a,#1
1448  02fb 2732          	jreq	L251
1449  02fd 9e            	ld	a,xh
1450  02fe a102          	cp	a,#2
1451  0300 272d          	jreq	L251
1452  0302 9e            	ld	a,xh
1453  0303 a103          	cp	a,#3
1454  0305 2728          	jreq	L251
1455  0307 9e            	ld	a,xh
1456  0308 a104          	cp	a,#4
1457  030a 2723          	jreq	L251
1458  030c 9e            	ld	a,xh
1459  030d a105          	cp	a,#5
1460  030f 271e          	jreq	L251
1461  0311 9e            	ld	a,xh
1462  0312 a106          	cp	a,#6
1463  0314 2719          	jreq	L251
1464  0316 9e            	ld	a,xh
1465  0317 a107          	cp	a,#7
1466  0319 2714          	jreq	L251
1467  031b 9e            	ld	a,xh
1468  031c a108          	cp	a,#8
1469  031e 270f          	jreq	L251
1470  0320 9e            	ld	a,xh
1471  0321 a10c          	cp	a,#12
1472  0323 270a          	jreq	L251
1473  0325 9e            	ld	a,xh
1474  0326 a1ff          	cp	a,#255
1475  0328 2705          	jreq	L251
1476  032a 9e            	ld	a,xh
1477  032b a109          	cp	a,#9
1478  032d 2603          	jrne	L051
1479  032f               L251:
1480  032f 4f            	clr	a
1481  0330 2010          	jra	L451
1482  0332               L051:
1483  0332 ae00ec        	ldw	x,#236
1484  0335 89            	pushw	x
1485  0336 ae0000        	ldw	x,#0
1486  0339 89            	pushw	x
1487  033a ae0000        	ldw	x,#L542
1488  033d cd0000        	call	_assert_failed
1490  0340 5b04          	addw	sp,#4
1491  0342               L451:
1492                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1494  0342 0d02          	tnz	(OFST+2,sp)
1495  0344 2706          	jreq	L061
1496  0346 7b02          	ld	a,(OFST+2,sp)
1497  0348 a101          	cp	a,#1
1498  034a 2603          	jrne	L651
1499  034c               L061:
1500  034c 4f            	clr	a
1501  034d 2010          	jra	L261
1502  034f               L651:
1503  034f ae00ed        	ldw	x,#237
1504  0352 89            	pushw	x
1505  0353 ae0000        	ldw	x,#0
1506  0356 89            	pushw	x
1507  0357 ae0000        	ldw	x,#L542
1508  035a cd0000        	call	_assert_failed
1510  035d 5b04          	addw	sp,#4
1511  035f               L261:
1512                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1514  035f 7b01          	ld	a,(OFST+1,sp)
1515  0361 a1ff          	cp	a,#255
1516  0363 2620          	jrne	L564
1517                     ; 241     if (NewState != DISABLE)
1519  0365 0d02          	tnz	(OFST+2,sp)
1520  0367 270a          	jreq	L764
1521                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1523  0369 725f5407      	clr	21511
1524                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1526  036d 725f5406      	clr	21510
1528  0371 2078          	jra	L374
1529  0373               L764:
1530                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1532  0373 c65407        	ld	a,21511
1533  0376 aaff          	or	a,#255
1534  0378 c75407        	ld	21511,a
1535                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1537  037b c65406        	ld	a,21510
1538  037e aaff          	or	a,#255
1539  0380 c75406        	ld	21510,a
1540  0383 2066          	jra	L374
1541  0385               L564:
1542                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1544  0385 7b01          	ld	a,(OFST+1,sp)
1545  0387 a108          	cp	a,#8
1546  0389 242f          	jruge	L574
1547                     ; 254     if (NewState != DISABLE)
1549  038b 0d02          	tnz	(OFST+2,sp)
1550  038d 2716          	jreq	L774
1551                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1553  038f 7b01          	ld	a,(OFST+1,sp)
1554  0391 5f            	clrw	x
1555  0392 97            	ld	xl,a
1556  0393 a601          	ld	a,#1
1557  0395 5d            	tnzw	x
1558  0396 2704          	jreq	L461
1559  0398               L661:
1560  0398 48            	sll	a
1561  0399 5a            	decw	x
1562  039a 26fc          	jrne	L661
1563  039c               L461:
1564  039c 43            	cpl	a
1565  039d c45407        	and	a,21511
1566  03a0 c75407        	ld	21511,a
1568  03a3 2046          	jra	L374
1569  03a5               L774:
1570                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1572  03a5 7b01          	ld	a,(OFST+1,sp)
1573  03a7 5f            	clrw	x
1574  03a8 97            	ld	xl,a
1575  03a9 a601          	ld	a,#1
1576  03ab 5d            	tnzw	x
1577  03ac 2704          	jreq	L071
1578  03ae               L271:
1579  03ae 48            	sll	a
1580  03af 5a            	decw	x
1581  03b0 26fc          	jrne	L271
1582  03b2               L071:
1583  03b2 ca5407        	or	a,21511
1584  03b5 c75407        	ld	21511,a
1585  03b8 2031          	jra	L374
1586  03ba               L574:
1587                     ; 265     if (NewState != DISABLE)
1589  03ba 0d02          	tnz	(OFST+2,sp)
1590  03bc 2718          	jreq	L505
1591                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1593  03be 7b01          	ld	a,(OFST+1,sp)
1594  03c0 a008          	sub	a,#8
1595  03c2 5f            	clrw	x
1596  03c3 97            	ld	xl,a
1597  03c4 a601          	ld	a,#1
1598  03c6 5d            	tnzw	x
1599  03c7 2704          	jreq	L471
1600  03c9               L671:
1601  03c9 48            	sll	a
1602  03ca 5a            	decw	x
1603  03cb 26fc          	jrne	L671
1604  03cd               L471:
1605  03cd 43            	cpl	a
1606  03ce c45406        	and	a,21510
1607  03d1 c75406        	ld	21510,a
1609  03d4 2015          	jra	L374
1610  03d6               L505:
1611                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1613  03d6 7b01          	ld	a,(OFST+1,sp)
1614  03d8 a008          	sub	a,#8
1615  03da 5f            	clrw	x
1616  03db 97            	ld	xl,a
1617  03dc a601          	ld	a,#1
1618  03de 5d            	tnzw	x
1619  03df 2704          	jreq	L002
1620  03e1               L202:
1621  03e1 48            	sll	a
1622  03e2 5a            	decw	x
1623  03e3 26fc          	jrne	L202
1624  03e5               L002:
1625  03e5 ca5406        	or	a,21510
1626  03e8 c75406        	ld	21510,a
1627  03eb               L374:
1628                     ; 274 }
1631  03eb 85            	popw	x
1632  03ec 81            	ret
1690                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1690                     ; 287 {
1691                     	switch	.text
1692  03ed               _ADC1_ConversionConfig:
1694  03ed 89            	pushw	x
1695       00000000      OFST:	set	0
1698                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1700  03ee 9e            	ld	a,xh
1701  03ef 4d            	tnz	a
1702  03f0 2705          	jreq	L012
1703  03f2 9e            	ld	a,xh
1704  03f3 a101          	cp	a,#1
1705  03f5 2603          	jrne	L602
1706  03f7               L012:
1707  03f7 4f            	clr	a
1708  03f8 2010          	jra	L212
1709  03fa               L602:
1710  03fa ae0121        	ldw	x,#289
1711  03fd 89            	pushw	x
1712  03fe ae0000        	ldw	x,#0
1713  0401 89            	pushw	x
1714  0402 ae0000        	ldw	x,#L542
1715  0405 cd0000        	call	_assert_failed
1717  0408 5b04          	addw	sp,#4
1718  040a               L212:
1719                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1721  040a 0d02          	tnz	(OFST+2,sp)
1722  040c 273c          	jreq	L612
1723  040e 7b02          	ld	a,(OFST+2,sp)
1724  0410 a101          	cp	a,#1
1725  0412 2736          	jreq	L612
1726  0414 7b02          	ld	a,(OFST+2,sp)
1727  0416 a102          	cp	a,#2
1728  0418 2730          	jreq	L612
1729  041a 7b02          	ld	a,(OFST+2,sp)
1730  041c a103          	cp	a,#3
1731  041e 272a          	jreq	L612
1732  0420 7b02          	ld	a,(OFST+2,sp)
1733  0422 a104          	cp	a,#4
1734  0424 2724          	jreq	L612
1735  0426 7b02          	ld	a,(OFST+2,sp)
1736  0428 a105          	cp	a,#5
1737  042a 271e          	jreq	L612
1738  042c 7b02          	ld	a,(OFST+2,sp)
1739  042e a106          	cp	a,#6
1740  0430 2718          	jreq	L612
1741  0432 7b02          	ld	a,(OFST+2,sp)
1742  0434 a107          	cp	a,#7
1743  0436 2712          	jreq	L612
1744  0438 7b02          	ld	a,(OFST+2,sp)
1745  043a a108          	cp	a,#8
1746  043c 270c          	jreq	L612
1747  043e 7b02          	ld	a,(OFST+2,sp)
1748  0440 a10c          	cp	a,#12
1749  0442 2706          	jreq	L612
1750  0444 7b02          	ld	a,(OFST+2,sp)
1751  0446 a109          	cp	a,#9
1752  0448 2603          	jrne	L412
1753  044a               L612:
1754  044a 4f            	clr	a
1755  044b 2010          	jra	L022
1756  044d               L412:
1757  044d ae0122        	ldw	x,#290
1758  0450 89            	pushw	x
1759  0451 ae0000        	ldw	x,#0
1760  0454 89            	pushw	x
1761  0455 ae0000        	ldw	x,#L542
1762  0458 cd0000        	call	_assert_failed
1764  045b 5b04          	addw	sp,#4
1765  045d               L022:
1766                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1768  045d 0d05          	tnz	(OFST+5,sp)
1769  045f 2706          	jreq	L422
1770  0461 7b05          	ld	a,(OFST+5,sp)
1771  0463 a108          	cp	a,#8
1772  0465 2603          	jrne	L222
1773  0467               L422:
1774  0467 4f            	clr	a
1775  0468 2010          	jra	L622
1776  046a               L222:
1777  046a ae0123        	ldw	x,#291
1778  046d 89            	pushw	x
1779  046e ae0000        	ldw	x,#0
1780  0471 89            	pushw	x
1781  0472 ae0000        	ldw	x,#L542
1782  0475 cd0000        	call	_assert_failed
1784  0478 5b04          	addw	sp,#4
1785  047a               L622:
1786                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1788  047a 72175402      	bres	21506,#3
1789                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1791  047e c65402        	ld	a,21506
1792  0481 1a05          	or	a,(OFST+5,sp)
1793  0483 c75402        	ld	21506,a
1794                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1796  0486 7b01          	ld	a,(OFST+1,sp)
1797  0488 a101          	cp	a,#1
1798  048a 2606          	jrne	L735
1799                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1801  048c 72125401      	bset	21505,#1
1803  0490 2004          	jra	L145
1804  0492               L735:
1805                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1807  0492 72135401      	bres	21505,#1
1808  0496               L145:
1809                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1811  0496 c65400        	ld	a,21504
1812  0499 a4f0          	and	a,#240
1813  049b c75400        	ld	21504,a
1814                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1816  049e c65400        	ld	a,21504
1817  04a1 1a02          	or	a,(OFST+2,sp)
1818  04a3 c75400        	ld	21504,a
1819                     ; 313 }
1822  04a6 85            	popw	x
1823  04a7 81            	ret
1870                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1870                     ; 326 {
1871                     	switch	.text
1872  04a8               _ADC1_ExternalTriggerConfig:
1874  04a8 89            	pushw	x
1875       00000000      OFST:	set	0
1878                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1880  04a9 9e            	ld	a,xh
1881  04aa 4d            	tnz	a
1882  04ab 2705          	jreq	L432
1883  04ad 9e            	ld	a,xh
1884  04ae a110          	cp	a,#16
1885  04b0 2603          	jrne	L232
1886  04b2               L432:
1887  04b2 4f            	clr	a
1888  04b3 2010          	jra	L632
1889  04b5               L232:
1890  04b5 ae0148        	ldw	x,#328
1891  04b8 89            	pushw	x
1892  04b9 ae0000        	ldw	x,#0
1893  04bc 89            	pushw	x
1894  04bd ae0000        	ldw	x,#L542
1895  04c0 cd0000        	call	_assert_failed
1897  04c3 5b04          	addw	sp,#4
1898  04c5               L632:
1899                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1901  04c5 0d02          	tnz	(OFST+2,sp)
1902  04c7 2706          	jreq	L242
1903  04c9 7b02          	ld	a,(OFST+2,sp)
1904  04cb a101          	cp	a,#1
1905  04cd 2603          	jrne	L042
1906  04cf               L242:
1907  04cf 4f            	clr	a
1908  04d0 2010          	jra	L442
1909  04d2               L042:
1910  04d2 ae0149        	ldw	x,#329
1911  04d5 89            	pushw	x
1912  04d6 ae0000        	ldw	x,#0
1913  04d9 89            	pushw	x
1914  04da ae0000        	ldw	x,#L542
1915  04dd cd0000        	call	_assert_failed
1917  04e0 5b04          	addw	sp,#4
1918  04e2               L442:
1919                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1921  04e2 c65402        	ld	a,21506
1922  04e5 a4cf          	and	a,#207
1923  04e7 c75402        	ld	21506,a
1924                     ; 334   if (NewState != DISABLE)
1926  04ea 0d02          	tnz	(OFST+2,sp)
1927  04ec 2706          	jreq	L565
1928                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1930  04ee 721c5402      	bset	21506,#6
1932  04f2 2004          	jra	L765
1933  04f4               L565:
1934                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1936  04f4 721d5402      	bres	21506,#6
1937  04f8               L765:
1938                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1940  04f8 c65402        	ld	a,21506
1941  04fb 1a01          	or	a,(OFST+1,sp)
1942  04fd c75402        	ld	21506,a
1943                     ; 347 }
1946  0500 85            	popw	x
1947  0501 81            	ret
1971                     ; 358 void ADC1_StartConversion(void)
1971                     ; 359 {
1972                     	switch	.text
1973  0502               _ADC1_StartConversion:
1977                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1979  0502 72105401      	bset	21505,#0
1980                     ; 361 }
1983  0506 81            	ret
2027                     ; 370 uint16_t ADC1_GetConversionValue(void)
2027                     ; 371 {
2028                     	switch	.text
2029  0507               _ADC1_GetConversionValue:
2031  0507 5205          	subw	sp,#5
2032       00000005      OFST:	set	5
2035                     ; 372   uint16_t temph = 0;
2037                     ; 373   uint8_t templ = 0;
2039                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2041  0509 c65402        	ld	a,21506
2042  050c a508          	bcp	a,#8
2043  050e 2715          	jreq	L326
2044                     ; 378     templ = ADC1->DRL;
2046  0510 c65405        	ld	a,21509
2047  0513 6b03          	ld	(OFST-2,sp),a
2048                     ; 380     temph = ADC1->DRH;
2050  0515 c65404        	ld	a,21508
2051  0518 5f            	clrw	x
2052  0519 97            	ld	xl,a
2053  051a 1f04          	ldw	(OFST-1,sp),x
2054                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2056  051c 1e04          	ldw	x,(OFST-1,sp)
2057  051e 7b03          	ld	a,(OFST-2,sp)
2058  0520 02            	rlwa	x,a
2059  0521 1f04          	ldw	(OFST-1,sp),x
2061  0523 2021          	jra	L526
2062  0525               L326:
2063                     ; 387     temph = ADC1->DRH;
2065  0525 c65404        	ld	a,21508
2066  0528 5f            	clrw	x
2067  0529 97            	ld	xl,a
2068  052a 1f04          	ldw	(OFST-1,sp),x
2069                     ; 389     templ = ADC1->DRL;
2071  052c c65405        	ld	a,21509
2072  052f 6b03          	ld	(OFST-2,sp),a
2073                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2075  0531 1e04          	ldw	x,(OFST-1,sp)
2076  0533 4f            	clr	a
2077  0534 02            	rlwa	x,a
2078  0535 1f01          	ldw	(OFST-4,sp),x
2079  0537 7b03          	ld	a,(OFST-2,sp)
2080  0539 97            	ld	xl,a
2081  053a a640          	ld	a,#64
2082  053c 42            	mul	x,a
2083  053d 01            	rrwa	x,a
2084  053e 1a02          	or	a,(OFST-3,sp)
2085  0540 01            	rrwa	x,a
2086  0541 1a01          	or	a,(OFST-4,sp)
2087  0543 01            	rrwa	x,a
2088  0544 1f04          	ldw	(OFST-1,sp),x
2089  0546               L526:
2090                     ; 394   return ((uint16_t)temph);
2092  0546 1e04          	ldw	x,(OFST-1,sp)
2095  0548 5b05          	addw	sp,#5
2096  054a 81            	ret
2143                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2143                     ; 406 {
2144                     	switch	.text
2145  054b               _ADC1_AWDChannelConfig:
2147  054b 89            	pushw	x
2148       00000000      OFST:	set	0
2151                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2153  054c 9f            	ld	a,xl
2154  054d 4d            	tnz	a
2155  054e 2705          	jreq	L652
2156  0550 9f            	ld	a,xl
2157  0551 a101          	cp	a,#1
2158  0553 2603          	jrne	L452
2159  0555               L652:
2160  0555 4f            	clr	a
2161  0556 2010          	jra	L062
2162  0558               L452:
2163  0558 ae0198        	ldw	x,#408
2164  055b 89            	pushw	x
2165  055c ae0000        	ldw	x,#0
2166  055f 89            	pushw	x
2167  0560 ae0000        	ldw	x,#L542
2168  0563 cd0000        	call	_assert_failed
2170  0566 5b04          	addw	sp,#4
2171  0568               L062:
2172                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2174  0568 0d01          	tnz	(OFST+1,sp)
2175  056a 273c          	jreq	L462
2176  056c 7b01          	ld	a,(OFST+1,sp)
2177  056e a101          	cp	a,#1
2178  0570 2736          	jreq	L462
2179  0572 7b01          	ld	a,(OFST+1,sp)
2180  0574 a102          	cp	a,#2
2181  0576 2730          	jreq	L462
2182  0578 7b01          	ld	a,(OFST+1,sp)
2183  057a a103          	cp	a,#3
2184  057c 272a          	jreq	L462
2185  057e 7b01          	ld	a,(OFST+1,sp)
2186  0580 a104          	cp	a,#4
2187  0582 2724          	jreq	L462
2188  0584 7b01          	ld	a,(OFST+1,sp)
2189  0586 a105          	cp	a,#5
2190  0588 271e          	jreq	L462
2191  058a 7b01          	ld	a,(OFST+1,sp)
2192  058c a106          	cp	a,#6
2193  058e 2718          	jreq	L462
2194  0590 7b01          	ld	a,(OFST+1,sp)
2195  0592 a107          	cp	a,#7
2196  0594 2712          	jreq	L462
2197  0596 7b01          	ld	a,(OFST+1,sp)
2198  0598 a108          	cp	a,#8
2199  059a 270c          	jreq	L462
2200  059c 7b01          	ld	a,(OFST+1,sp)
2201  059e a10c          	cp	a,#12
2202  05a0 2706          	jreq	L462
2203  05a2 7b01          	ld	a,(OFST+1,sp)
2204  05a4 a109          	cp	a,#9
2205  05a6 2603          	jrne	L262
2206  05a8               L462:
2207  05a8 4f            	clr	a
2208  05a9 2010          	jra	L662
2209  05ab               L262:
2210  05ab ae0199        	ldw	x,#409
2211  05ae 89            	pushw	x
2212  05af ae0000        	ldw	x,#0
2213  05b2 89            	pushw	x
2214  05b3 ae0000        	ldw	x,#L542
2215  05b6 cd0000        	call	_assert_failed
2217  05b9 5b04          	addw	sp,#4
2218  05bb               L662:
2219                     ; 411   if (Channel < (uint8_t)8)
2221  05bb 7b01          	ld	a,(OFST+1,sp)
2222  05bd a108          	cp	a,#8
2223  05bf 242f          	jruge	L156
2224                     ; 413     if (NewState != DISABLE)
2226  05c1 0d02          	tnz	(OFST+2,sp)
2227  05c3 2715          	jreq	L356
2228                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2230  05c5 7b01          	ld	a,(OFST+1,sp)
2231  05c7 5f            	clrw	x
2232  05c8 97            	ld	xl,a
2233  05c9 a601          	ld	a,#1
2234  05cb 5d            	tnzw	x
2235  05cc 2704          	jreq	L072
2236  05ce               L272:
2237  05ce 48            	sll	a
2238  05cf 5a            	decw	x
2239  05d0 26fc          	jrne	L272
2240  05d2               L072:
2241  05d2 ca540f        	or	a,21519
2242  05d5 c7540f        	ld	21519,a
2244  05d8 2047          	jra	L756
2245  05da               L356:
2246                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2248  05da 7b01          	ld	a,(OFST+1,sp)
2249  05dc 5f            	clrw	x
2250  05dd 97            	ld	xl,a
2251  05de a601          	ld	a,#1
2252  05e0 5d            	tnzw	x
2253  05e1 2704          	jreq	L472
2254  05e3               L672:
2255  05e3 48            	sll	a
2256  05e4 5a            	decw	x
2257  05e5 26fc          	jrne	L672
2258  05e7               L472:
2259  05e7 43            	cpl	a
2260  05e8 c4540f        	and	a,21519
2261  05eb c7540f        	ld	21519,a
2262  05ee 2031          	jra	L756
2263  05f0               L156:
2264                     ; 424     if (NewState != DISABLE)
2266  05f0 0d02          	tnz	(OFST+2,sp)
2267  05f2 2717          	jreq	L166
2268                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2270  05f4 7b01          	ld	a,(OFST+1,sp)
2271  05f6 a008          	sub	a,#8
2272  05f8 5f            	clrw	x
2273  05f9 97            	ld	xl,a
2274  05fa a601          	ld	a,#1
2275  05fc 5d            	tnzw	x
2276  05fd 2704          	jreq	L003
2277  05ff               L203:
2278  05ff 48            	sll	a
2279  0600 5a            	decw	x
2280  0601 26fc          	jrne	L203
2281  0603               L003:
2282  0603 ca540e        	or	a,21518
2283  0606 c7540e        	ld	21518,a
2285  0609 2016          	jra	L756
2286  060b               L166:
2287                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2289  060b 7b01          	ld	a,(OFST+1,sp)
2290  060d a008          	sub	a,#8
2291  060f 5f            	clrw	x
2292  0610 97            	ld	xl,a
2293  0611 a601          	ld	a,#1
2294  0613 5d            	tnzw	x
2295  0614 2704          	jreq	L403
2296  0616               L603:
2297  0616 48            	sll	a
2298  0617 5a            	decw	x
2299  0618 26fc          	jrne	L603
2300  061a               L403:
2301  061a 43            	cpl	a
2302  061b c4540e        	and	a,21518
2303  061e c7540e        	ld	21518,a
2304  0621               L756:
2305                     ; 433 }
2308  0621 85            	popw	x
2309  0622 81            	ret
2344                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2344                     ; 442 {
2345                     	switch	.text
2346  0623               _ADC1_SetHighThreshold:
2348  0623 89            	pushw	x
2349       00000000      OFST:	set	0
2352                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2354  0624 54            	srlw	x
2355  0625 54            	srlw	x
2356  0626 9f            	ld	a,xl
2357  0627 c75408        	ld	21512,a
2358                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2360  062a 7b02          	ld	a,(OFST+2,sp)
2361  062c c75409        	ld	21513,a
2362                     ; 445 }
2365  062f 85            	popw	x
2366  0630 81            	ret
2401                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2401                     ; 454 {
2402                     	switch	.text
2403  0631               _ADC1_SetLowThreshold:
2407                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2409  0631 9f            	ld	a,xl
2410  0632 c7540b        	ld	21515,a
2411                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2413  0635 54            	srlw	x
2414  0636 54            	srlw	x
2415  0637 9f            	ld	a,xl
2416  0638 c7540a        	ld	21514,a
2417                     ; 457 }
2420  063b 81            	ret
2474                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2474                     ; 467 {
2475                     	switch	.text
2476  063c               _ADC1_GetBufferValue:
2478  063c 88            	push	a
2479  063d 5205          	subw	sp,#5
2480       00000005      OFST:	set	5
2483                     ; 468   uint16_t temph = 0;
2485                     ; 469   uint8_t templ = 0;
2487                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2489  063f a10a          	cp	a,#10
2490  0641 2403          	jruge	L613
2491  0643 4f            	clr	a
2492  0644 2010          	jra	L023
2493  0646               L613:
2494  0646 ae01d8        	ldw	x,#472
2495  0649 89            	pushw	x
2496  064a ae0000        	ldw	x,#0
2497  064d 89            	pushw	x
2498  064e ae0000        	ldw	x,#L542
2499  0651 cd0000        	call	_assert_failed
2501  0654 5b04          	addw	sp,#4
2502  0656               L023:
2503                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2505  0656 c65402        	ld	a,21506
2506  0659 a508          	bcp	a,#8
2507  065b 271f          	jreq	L747
2508                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2510  065d 7b06          	ld	a,(OFST+1,sp)
2511  065f 48            	sll	a
2512  0660 5f            	clrw	x
2513  0661 97            	ld	xl,a
2514  0662 d653e1        	ld	a,(21473,x)
2515  0665 6b03          	ld	(OFST-2,sp),a
2516                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2518  0667 7b06          	ld	a,(OFST+1,sp)
2519  0669 48            	sll	a
2520  066a 5f            	clrw	x
2521  066b 97            	ld	xl,a
2522  066c d653e0        	ld	a,(21472,x)
2523  066f 5f            	clrw	x
2524  0670 97            	ld	xl,a
2525  0671 1f04          	ldw	(OFST-1,sp),x
2526                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2528  0673 1e04          	ldw	x,(OFST-1,sp)
2529  0675 7b03          	ld	a,(OFST-2,sp)
2530  0677 02            	rlwa	x,a
2531  0678 1f04          	ldw	(OFST-1,sp),x
2533  067a 202b          	jra	L157
2534  067c               L747:
2535                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2537  067c 7b06          	ld	a,(OFST+1,sp)
2538  067e 48            	sll	a
2539  067f 5f            	clrw	x
2540  0680 97            	ld	xl,a
2541  0681 d653e0        	ld	a,(21472,x)
2542  0684 5f            	clrw	x
2543  0685 97            	ld	xl,a
2544  0686 1f04          	ldw	(OFST-1,sp),x
2545                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2547  0688 7b06          	ld	a,(OFST+1,sp)
2548  068a 48            	sll	a
2549  068b 5f            	clrw	x
2550  068c 97            	ld	xl,a
2551  068d d653e1        	ld	a,(21473,x)
2552  0690 6b03          	ld	(OFST-2,sp),a
2553                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2555  0692 1e04          	ldw	x,(OFST-1,sp)
2556  0694 4f            	clr	a
2557  0695 02            	rlwa	x,a
2558  0696 1f01          	ldw	(OFST-4,sp),x
2559  0698 7b03          	ld	a,(OFST-2,sp)
2560  069a 97            	ld	xl,a
2561  069b a640          	ld	a,#64
2562  069d 42            	mul	x,a
2563  069e 01            	rrwa	x,a
2564  069f 1a02          	or	a,(OFST-3,sp)
2565  06a1 01            	rrwa	x,a
2566  06a2 1a01          	or	a,(OFST-4,sp)
2567  06a4 01            	rrwa	x,a
2568  06a5 1f04          	ldw	(OFST-1,sp),x
2569  06a7               L157:
2570                     ; 493   return ((uint16_t)temph);
2572  06a7 1e04          	ldw	x,(OFST-1,sp)
2575  06a9 5b06          	addw	sp,#6
2576  06ab 81            	ret
2643                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2643                     ; 503 {
2644                     	switch	.text
2645  06ac               _ADC1_GetAWDChannelStatus:
2647  06ac 88            	push	a
2648  06ad 88            	push	a
2649       00000001      OFST:	set	1
2652                     ; 504   uint8_t status = 0;
2654                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2656  06ae 4d            	tnz	a
2657  06af 2728          	jreq	L623
2658  06b1 a101          	cp	a,#1
2659  06b3 2724          	jreq	L623
2660  06b5 a102          	cp	a,#2
2661  06b7 2720          	jreq	L623
2662  06b9 a103          	cp	a,#3
2663  06bb 271c          	jreq	L623
2664  06bd a104          	cp	a,#4
2665  06bf 2718          	jreq	L623
2666  06c1 a105          	cp	a,#5
2667  06c3 2714          	jreq	L623
2668  06c5 a106          	cp	a,#6
2669  06c7 2710          	jreq	L623
2670  06c9 a107          	cp	a,#7
2671  06cb 270c          	jreq	L623
2672  06cd a108          	cp	a,#8
2673  06cf 2708          	jreq	L623
2674  06d1 a10c          	cp	a,#12
2675  06d3 2704          	jreq	L623
2676  06d5 a109          	cp	a,#9
2677  06d7 2603          	jrne	L423
2678  06d9               L623:
2679  06d9 4f            	clr	a
2680  06da 2010          	jra	L033
2681  06dc               L423:
2682  06dc ae01fb        	ldw	x,#507
2683  06df 89            	pushw	x
2684  06e0 ae0000        	ldw	x,#0
2685  06e3 89            	pushw	x
2686  06e4 ae0000        	ldw	x,#L542
2687  06e7 cd0000        	call	_assert_failed
2689  06ea 5b04          	addw	sp,#4
2690  06ec               L033:
2691                     ; 509   if (Channel < (uint8_t)8)
2693  06ec 7b02          	ld	a,(OFST+1,sp)
2694  06ee a108          	cp	a,#8
2695  06f0 2414          	jruge	L5001
2696                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2698  06f2 7b02          	ld	a,(OFST+1,sp)
2699  06f4 5f            	clrw	x
2700  06f5 97            	ld	xl,a
2701  06f6 a601          	ld	a,#1
2702  06f8 5d            	tnzw	x
2703  06f9 2704          	jreq	L233
2704  06fb               L433:
2705  06fb 48            	sll	a
2706  06fc 5a            	decw	x
2707  06fd 26fc          	jrne	L433
2708  06ff               L233:
2709  06ff c4540d        	and	a,21517
2710  0702 6b01          	ld	(OFST+0,sp),a
2712  0704 2014          	jra	L7001
2713  0706               L5001:
2714                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2716  0706 7b02          	ld	a,(OFST+1,sp)
2717  0708 a008          	sub	a,#8
2718  070a 5f            	clrw	x
2719  070b 97            	ld	xl,a
2720  070c a601          	ld	a,#1
2721  070e 5d            	tnzw	x
2722  070f 2704          	jreq	L633
2723  0711               L043:
2724  0711 48            	sll	a
2725  0712 5a            	decw	x
2726  0713 26fc          	jrne	L043
2727  0715               L633:
2728  0715 c4540c        	and	a,21516
2729  0718 6b01          	ld	(OFST+0,sp),a
2730  071a               L7001:
2731                     ; 518   return ((FlagStatus)status);
2733  071a 7b01          	ld	a,(OFST+0,sp)
2736  071c 85            	popw	x
2737  071d 81            	ret
2896                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2896                     ; 528 {
2897                     	switch	.text
2898  071e               _ADC1_GetFlagStatus:
2900  071e 88            	push	a
2901  071f 88            	push	a
2902       00000001      OFST:	set	1
2905                     ; 529   uint8_t flagstatus = 0;
2907                     ; 530   uint8_t temp = 0;
2909                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2911  0720 a180          	cp	a,#128
2912  0722 2730          	jreq	L643
2913  0724 a141          	cp	a,#65
2914  0726 272c          	jreq	L643
2915  0728 a140          	cp	a,#64
2916  072a 2728          	jreq	L643
2917  072c a110          	cp	a,#16
2918  072e 2724          	jreq	L643
2919  0730 a111          	cp	a,#17
2920  0732 2720          	jreq	L643
2921  0734 a112          	cp	a,#18
2922  0736 271c          	jreq	L643
2923  0738 a113          	cp	a,#19
2924  073a 2718          	jreq	L643
2925  073c a114          	cp	a,#20
2926  073e 2714          	jreq	L643
2927  0740 a115          	cp	a,#21
2928  0742 2710          	jreq	L643
2929  0744 a116          	cp	a,#22
2930  0746 270c          	jreq	L643
2931  0748 a117          	cp	a,#23
2932  074a 2708          	jreq	L643
2933  074c a118          	cp	a,#24
2934  074e 2704          	jreq	L643
2935  0750 a119          	cp	a,#25
2936  0752 2603          	jrne	L443
2937  0754               L643:
2938  0754 4f            	clr	a
2939  0755 2010          	jra	L053
2940  0757               L443:
2941  0757 ae0215        	ldw	x,#533
2942  075a 89            	pushw	x
2943  075b ae0000        	ldw	x,#0
2944  075e 89            	pushw	x
2945  075f ae0000        	ldw	x,#L542
2946  0762 cd0000        	call	_assert_failed
2948  0765 5b04          	addw	sp,#4
2949  0767               L053:
2950                     ; 535   if ((Flag & 0x0F) == 0x01)
2952  0767 7b02          	ld	a,(OFST+1,sp)
2953  0769 a40f          	and	a,#15
2954  076b a101          	cp	a,#1
2955  076d 2609          	jrne	L7701
2956                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2958  076f c65403        	ld	a,21507
2959  0772 a440          	and	a,#64
2960  0774 6b01          	ld	(OFST+0,sp),a
2962  0776 2045          	jra	L1011
2963  0778               L7701:
2964                     ; 540   else if ((Flag & 0xF0) == 0x10)
2966  0778 7b02          	ld	a,(OFST+1,sp)
2967  077a a4f0          	and	a,#240
2968  077c a110          	cp	a,#16
2969  077e 2636          	jrne	L3011
2970                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2972  0780 7b02          	ld	a,(OFST+1,sp)
2973  0782 a40f          	and	a,#15
2974  0784 6b01          	ld	(OFST+0,sp),a
2975                     ; 544     if (temp < 8)
2977  0786 7b01          	ld	a,(OFST+0,sp)
2978  0788 a108          	cp	a,#8
2979  078a 2414          	jruge	L5011
2980                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2982  078c 7b01          	ld	a,(OFST+0,sp)
2983  078e 5f            	clrw	x
2984  078f 97            	ld	xl,a
2985  0790 a601          	ld	a,#1
2986  0792 5d            	tnzw	x
2987  0793 2704          	jreq	L253
2988  0795               L453:
2989  0795 48            	sll	a
2990  0796 5a            	decw	x
2991  0797 26fc          	jrne	L453
2992  0799               L253:
2993  0799 c4540d        	and	a,21517
2994  079c 6b01          	ld	(OFST+0,sp),a
2996  079e 201d          	jra	L1011
2997  07a0               L5011:
2998                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3000  07a0 7b01          	ld	a,(OFST+0,sp)
3001  07a2 a008          	sub	a,#8
3002  07a4 5f            	clrw	x
3003  07a5 97            	ld	xl,a
3004  07a6 a601          	ld	a,#1
3005  07a8 5d            	tnzw	x
3006  07a9 2704          	jreq	L653
3007  07ab               L063:
3008  07ab 48            	sll	a
3009  07ac 5a            	decw	x
3010  07ad 26fc          	jrne	L063
3011  07af               L653:
3012  07af c4540c        	and	a,21516
3013  07b2 6b01          	ld	(OFST+0,sp),a
3014  07b4 2007          	jra	L1011
3015  07b6               L3011:
3016                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
3018  07b6 c65400        	ld	a,21504
3019  07b9 1402          	and	a,(OFST+1,sp)
3020  07bb 6b01          	ld	(OFST+0,sp),a
3021  07bd               L1011:
3022                     ; 557   return ((FlagStatus)flagstatus);
3024  07bd 7b01          	ld	a,(OFST+0,sp)
3027  07bf 85            	popw	x
3028  07c0 81            	ret
3073                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3073                     ; 568 {
3074                     	switch	.text
3075  07c1               _ADC1_ClearFlag:
3077  07c1 88            	push	a
3078  07c2 88            	push	a
3079       00000001      OFST:	set	1
3082                     ; 569   uint8_t temp = 0;
3084                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
3086  07c3 a180          	cp	a,#128
3087  07c5 2730          	jreq	L663
3088  07c7 a141          	cp	a,#65
3089  07c9 272c          	jreq	L663
3090  07cb a140          	cp	a,#64
3091  07cd 2728          	jreq	L663
3092  07cf a110          	cp	a,#16
3093  07d1 2724          	jreq	L663
3094  07d3 a111          	cp	a,#17
3095  07d5 2720          	jreq	L663
3096  07d7 a112          	cp	a,#18
3097  07d9 271c          	jreq	L663
3098  07db a113          	cp	a,#19
3099  07dd 2718          	jreq	L663
3100  07df a114          	cp	a,#20
3101  07e1 2714          	jreq	L663
3102  07e3 a115          	cp	a,#21
3103  07e5 2710          	jreq	L663
3104  07e7 a116          	cp	a,#22
3105  07e9 270c          	jreq	L663
3106  07eb a117          	cp	a,#23
3107  07ed 2708          	jreq	L663
3108  07ef a118          	cp	a,#24
3109  07f1 2704          	jreq	L663
3110  07f3 a119          	cp	a,#25
3111  07f5 2603          	jrne	L463
3112  07f7               L663:
3113  07f7 4f            	clr	a
3114  07f8 2010          	jra	L073
3115  07fa               L463:
3116  07fa ae023c        	ldw	x,#572
3117  07fd 89            	pushw	x
3118  07fe ae0000        	ldw	x,#0
3119  0801 89            	pushw	x
3120  0802 ae0000        	ldw	x,#L542
3121  0805 cd0000        	call	_assert_failed
3123  0808 5b04          	addw	sp,#4
3124  080a               L073:
3125                     ; 574   if ((Flag & 0x0F) == 0x01)
3127  080a 7b02          	ld	a,(OFST+1,sp)
3128  080c a40f          	and	a,#15
3129  080e a101          	cp	a,#1
3130  0810 2606          	jrne	L5311
3131                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3133  0812 721d5403      	bres	21507,#6
3135  0816 204b          	jra	L7311
3136  0818               L5311:
3137                     ; 579   else if ((Flag & 0xF0) == 0x10)
3139  0818 7b02          	ld	a,(OFST+1,sp)
3140  081a a4f0          	and	a,#240
3141  081c a110          	cp	a,#16
3142  081e 263a          	jrne	L1411
3143                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
3145  0820 7b02          	ld	a,(OFST+1,sp)
3146  0822 a40f          	and	a,#15
3147  0824 6b01          	ld	(OFST+0,sp),a
3148                     ; 583     if (temp < 8)
3150  0826 7b01          	ld	a,(OFST+0,sp)
3151  0828 a108          	cp	a,#8
3152  082a 2416          	jruge	L3411
3153                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3155  082c 7b01          	ld	a,(OFST+0,sp)
3156  082e 5f            	clrw	x
3157  082f 97            	ld	xl,a
3158  0830 a601          	ld	a,#1
3159  0832 5d            	tnzw	x
3160  0833 2704          	jreq	L273
3161  0835               L473:
3162  0835 48            	sll	a
3163  0836 5a            	decw	x
3164  0837 26fc          	jrne	L473
3165  0839               L273:
3166  0839 43            	cpl	a
3167  083a c4540d        	and	a,21517
3168  083d c7540d        	ld	21517,a
3170  0840 2021          	jra	L7311
3171  0842               L3411:
3172                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3174  0842 7b01          	ld	a,(OFST+0,sp)
3175  0844 a008          	sub	a,#8
3176  0846 5f            	clrw	x
3177  0847 97            	ld	xl,a
3178  0848 a601          	ld	a,#1
3179  084a 5d            	tnzw	x
3180  084b 2704          	jreq	L673
3181  084d               L004:
3182  084d 48            	sll	a
3183  084e 5a            	decw	x
3184  084f 26fc          	jrne	L004
3185  0851               L673:
3186  0851 43            	cpl	a
3187  0852 c4540c        	and	a,21516
3188  0855 c7540c        	ld	21516,a
3189  0858 2009          	jra	L7311
3190  085a               L1411:
3191                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
3193  085a 7b02          	ld	a,(OFST+1,sp)
3194  085c 43            	cpl	a
3195  085d c45400        	and	a,21504
3196  0860 c75400        	ld	21504,a
3197  0863               L7311:
3198                     ; 596 }
3201  0863 85            	popw	x
3202  0864 81            	ret
3258                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3258                     ; 617 {
3259                     	switch	.text
3260  0865               _ADC1_GetITStatus:
3262  0865 89            	pushw	x
3263  0866 88            	push	a
3264       00000001      OFST:	set	1
3267                     ; 618   ITStatus itstatus = RESET;
3269                     ; 619   uint8_t temp = 0;
3271                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3273  0867 a30080        	cpw	x,#128
3274  086a 273c          	jreq	L604
3275  086c a30140        	cpw	x,#320
3276  086f 2737          	jreq	L604
3277  0871 a30110        	cpw	x,#272
3278  0874 2732          	jreq	L604
3279  0876 a30111        	cpw	x,#273
3280  0879 272d          	jreq	L604
3281  087b a30112        	cpw	x,#274
3282  087e 2728          	jreq	L604
3283  0880 a30113        	cpw	x,#275
3284  0883 2723          	jreq	L604
3285  0885 a30114        	cpw	x,#276
3286  0888 271e          	jreq	L604
3287  088a a30115        	cpw	x,#277
3288  088d 2719          	jreq	L604
3289  088f a30116        	cpw	x,#278
3290  0892 2714          	jreq	L604
3291  0894 a30117        	cpw	x,#279
3292  0897 270f          	jreq	L604
3293  0899 a30118        	cpw	x,#280
3294  089c 270a          	jreq	L604
3295  089e a3011c        	cpw	x,#284
3296  08a1 2705          	jreq	L604
3297  08a3 a30119        	cpw	x,#281
3298  08a6 2603          	jrne	L404
3299  08a8               L604:
3300  08a8 4f            	clr	a
3301  08a9 2010          	jra	L014
3302  08ab               L404:
3303  08ab ae026e        	ldw	x,#622
3304  08ae 89            	pushw	x
3305  08af ae0000        	ldw	x,#0
3306  08b2 89            	pushw	x
3307  08b3 ae0000        	ldw	x,#L542
3308  08b6 cd0000        	call	_assert_failed
3310  08b9 5b04          	addw	sp,#4
3311  08bb               L014:
3312                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3314  08bb 7b02          	ld	a,(OFST+1,sp)
3315  08bd 97            	ld	xl,a
3316  08be 7b03          	ld	a,(OFST+2,sp)
3317  08c0 a4f0          	and	a,#240
3318  08c2 5f            	clrw	x
3319  08c3 02            	rlwa	x,a
3320  08c4 a30010        	cpw	x,#16
3321  08c7 2636          	jrne	L7711
3322                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3324  08c9 7b03          	ld	a,(OFST+2,sp)
3325  08cb a40f          	and	a,#15
3326  08cd 6b01          	ld	(OFST+0,sp),a
3327                     ; 628     if (temp < 8)
3329  08cf 7b01          	ld	a,(OFST+0,sp)
3330  08d1 a108          	cp	a,#8
3331  08d3 2414          	jruge	L1021
3332                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3334  08d5 7b01          	ld	a,(OFST+0,sp)
3335  08d7 5f            	clrw	x
3336  08d8 97            	ld	xl,a
3337  08d9 a601          	ld	a,#1
3338  08db 5d            	tnzw	x
3339  08dc 2704          	jreq	L214
3340  08de               L414:
3341  08de 48            	sll	a
3342  08df 5a            	decw	x
3343  08e0 26fc          	jrne	L414
3344  08e2               L214:
3345  08e2 c4540d        	and	a,21517
3346  08e5 6b01          	ld	(OFST+0,sp),a
3348  08e7 201d          	jra	L5021
3349  08e9               L1021:
3350                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3352  08e9 7b01          	ld	a,(OFST+0,sp)
3353  08eb a008          	sub	a,#8
3354  08ed 5f            	clrw	x
3355  08ee 97            	ld	xl,a
3356  08ef a601          	ld	a,#1
3357  08f1 5d            	tnzw	x
3358  08f2 2704          	jreq	L614
3359  08f4               L024:
3360  08f4 48            	sll	a
3361  08f5 5a            	decw	x
3362  08f6 26fc          	jrne	L024
3363  08f8               L614:
3364  08f8 c4540c        	and	a,21516
3365  08fb 6b01          	ld	(OFST+0,sp),a
3366  08fd 2007          	jra	L5021
3367  08ff               L7711:
3368                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3370  08ff c65400        	ld	a,21504
3371  0902 1403          	and	a,(OFST+2,sp)
3372  0904 6b01          	ld	(OFST+0,sp),a
3373  0906               L5021:
3374                     ; 641   return ((ITStatus)itstatus);
3376  0906 7b01          	ld	a,(OFST+0,sp)
3379  0908 5b03          	addw	sp,#3
3380  090a 81            	ret
3426                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3426                     ; 663 {
3427                     	switch	.text
3428  090b               _ADC1_ClearITPendingBit:
3430  090b 89            	pushw	x
3431  090c 88            	push	a
3432       00000001      OFST:	set	1
3435                     ; 664   uint8_t temp = 0;
3437                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3439  090d a30080        	cpw	x,#128
3440  0910 273c          	jreq	L624
3441  0912 a30140        	cpw	x,#320
3442  0915 2737          	jreq	L624
3443  0917 a30110        	cpw	x,#272
3444  091a 2732          	jreq	L624
3445  091c a30111        	cpw	x,#273
3446  091f 272d          	jreq	L624
3447  0921 a30112        	cpw	x,#274
3448  0924 2728          	jreq	L624
3449  0926 a30113        	cpw	x,#275
3450  0929 2723          	jreq	L624
3451  092b a30114        	cpw	x,#276
3452  092e 271e          	jreq	L624
3453  0930 a30115        	cpw	x,#277
3454  0933 2719          	jreq	L624
3455  0935 a30116        	cpw	x,#278
3456  0938 2714          	jreq	L624
3457  093a a30117        	cpw	x,#279
3458  093d 270f          	jreq	L624
3459  093f a30118        	cpw	x,#280
3460  0942 270a          	jreq	L624
3461  0944 a3011c        	cpw	x,#284
3462  0947 2705          	jreq	L624
3463  0949 a30119        	cpw	x,#281
3464  094c 2603          	jrne	L424
3465  094e               L624:
3466  094e 4f            	clr	a
3467  094f 2010          	jra	L034
3468  0951               L424:
3469  0951 ae029b        	ldw	x,#667
3470  0954 89            	pushw	x
3471  0955 ae0000        	ldw	x,#0
3472  0958 89            	pushw	x
3473  0959 ae0000        	ldw	x,#L542
3474  095c cd0000        	call	_assert_failed
3476  095f 5b04          	addw	sp,#4
3477  0961               L034:
3478                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3480  0961 7b02          	ld	a,(OFST+1,sp)
3481  0963 97            	ld	xl,a
3482  0964 7b03          	ld	a,(OFST+2,sp)
3483  0966 a4f0          	and	a,#240
3484  0968 5f            	clrw	x
3485  0969 02            	rlwa	x,a
3486  096a a30010        	cpw	x,#16
3487  096d 263a          	jrne	L1321
3488                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3490  096f 7b03          	ld	a,(OFST+2,sp)
3491  0971 a40f          	and	a,#15
3492  0973 6b01          	ld	(OFST+0,sp),a
3493                     ; 673     if (temp < 8)
3495  0975 7b01          	ld	a,(OFST+0,sp)
3496  0977 a108          	cp	a,#8
3497  0979 2416          	jruge	L3321
3498                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3500  097b 7b01          	ld	a,(OFST+0,sp)
3501  097d 5f            	clrw	x
3502  097e 97            	ld	xl,a
3503  097f a601          	ld	a,#1
3504  0981 5d            	tnzw	x
3505  0982 2704          	jreq	L234
3506  0984               L434:
3507  0984 48            	sll	a
3508  0985 5a            	decw	x
3509  0986 26fc          	jrne	L434
3510  0988               L234:
3511  0988 43            	cpl	a
3512  0989 c4540d        	and	a,21517
3513  098c c7540d        	ld	21517,a
3515  098f 2021          	jra	L7321
3516  0991               L3321:
3517                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3519  0991 7b01          	ld	a,(OFST+0,sp)
3520  0993 a008          	sub	a,#8
3521  0995 5f            	clrw	x
3522  0996 97            	ld	xl,a
3523  0997 a601          	ld	a,#1
3524  0999 5d            	tnzw	x
3525  099a 2704          	jreq	L634
3526  099c               L044:
3527  099c 48            	sll	a
3528  099d 5a            	decw	x
3529  099e 26fc          	jrne	L044
3530  09a0               L634:
3531  09a0 43            	cpl	a
3532  09a1 c4540c        	and	a,21516
3533  09a4 c7540c        	ld	21516,a
3534  09a7 2009          	jra	L7321
3535  09a9               L1321:
3536                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3538  09a9 7b03          	ld	a,(OFST+2,sp)
3539  09ab 43            	cpl	a
3540  09ac c45400        	and	a,21504
3541  09af c75400        	ld	21504,a
3542  09b2               L7321:
3543                     ; 686 }
3546  09b2 5b03          	addw	sp,#3
3547  09b4 81            	ret
3560                     	xdef	_ADC1_ClearITPendingBit
3561                     	xdef	_ADC1_GetITStatus
3562                     	xdef	_ADC1_ClearFlag
3563                     	xdef	_ADC1_GetFlagStatus
3564                     	xdef	_ADC1_GetAWDChannelStatus
3565                     	xdef	_ADC1_GetBufferValue
3566                     	xdef	_ADC1_SetLowThreshold
3567                     	xdef	_ADC1_SetHighThreshold
3568                     	xdef	_ADC1_GetConversionValue
3569                     	xdef	_ADC1_StartConversion
3570                     	xdef	_ADC1_AWDChannelConfig
3571                     	xdef	_ADC1_ExternalTriggerConfig
3572                     	xdef	_ADC1_ConversionConfig
3573                     	xdef	_ADC1_SchmittTriggerConfig
3574                     	xdef	_ADC1_PrescalerConfig
3575                     	xdef	_ADC1_ITConfig
3576                     	xdef	_ADC1_DataBufferCmd
3577                     	xdef	_ADC1_ScanModeCmd
3578                     	xdef	_ADC1_Cmd
3579                     	xdef	_ADC1_Init
3580                     	xdef	_ADC1_DeInit
3581                     	xref	_assert_failed
3582                     .const:	section	.text
3583  0000               L542:
3584  0000 2e2e5c2e2e5c  	dc.b	"..\..\stm8s_stdper"
3585  0012 6970685f6c69  	dc.b	"iph_lib\libraries\"
3586  0024 73746d38735f  	dc.b	"stm8s_stdperiph_dr"
3587  0036 697665725c73  	dc.b	"iver\src\stm8s_adc"
3588  0048 312e6300      	dc.b	"1.c",0
3608                     	end
