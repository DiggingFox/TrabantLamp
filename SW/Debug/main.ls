   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  46                     ; 38 void main(void)
  46                     ; 39 {
  48                     	switch	.text
  49  0000               _main:
  53                     ; 40 	CLK->CKDIVR |= 0x00;		//preddelicka na nulu
  55  0000 c650c6        	ld	a,20678
  56                     ; 41 	CLK->PCKENR1 |= CLK_PCKENR1_TIM1 | CLK_PCKENR1_TIM4;	//taktovani timru
  58  0003 c650c7        	ld	a,20679
  59  0006 aa90          	or	a,#144
  60  0008 c750c7        	ld	20679,a
  61                     ; 42 	CLK->PCKENR2 |= CLK_PCKENR2_ADC;	//adc
  63  000b 721650ca      	bset	20682,#3
  64                     ; 45 	GPIO_SW->ODR = 0x00;
  66  000f 725f500f      	clr	20495
  67                     ; 46 	GPIO_SW->DDR &= ~(1<<PIN_SW_R | 1<<PIN_SW_O);
  69  0013 c65011        	ld	a,20497
  70  0016 a49f          	and	a,#159
  71  0018 c75011        	ld	20497,a
  72                     ; 47   GPIO_SW->CR1 |= (1<<PIN_SW_R | 1<<PIN_SW_O);
  74  001b c65012        	ld	a,20498
  75  001e aa60          	or	a,#96
  76  0020 c75012        	ld	20498,a
  77                     ; 51 	GPIO_LED->ODR = 0x00;	//aby to nesvitilo..
  79  0023 725f500a      	clr	20490
  80                     ; 52 	GPIO_LED->DDR |= 1<<PIN_LED_R1 | 1<<PIN_LED_R2 | 1<<PIN_LED_O;	//3,6,7 vystup
  82  0027 c6500c        	ld	a,20492
  83  002a aac8          	or	a,#200
  84  002c c7500c        	ld	20492,a
  85                     ; 53 	GPIO_LED->CR1 |= 1<<PIN_LED_R1 | 1<<PIN_LED_R2 | 1<<PIN_LED_O;	//push-pull
  87  002f c6500d        	ld	a,20493
  88  0032 aac8          	or	a,#200
  89  0034 c7500d        	ld	20493,a
  90                     ; 56 	enableInterrupts();
  93  0037 9a            rim
  95                     ; 58 	TIM1->CR1 &= ~TIM1_CR1_CEN;	//hodiny 16MHz
  98  0038 72115250      	bres	21072,#0
  99                     ; 59 	TIM1->PSCRH = 0x00;
 101  003c 725f5260      	clr	21088
 102                     ; 60 	TIM1->PSCRL = 0x00;
 104  0040 725f5261      	clr	21089
 105                     ; 63 	TIM1->ARRH = 0x0F;
 107  0044 350f5262      	mov	21090,#15
 108                     ; 64 	TIM1->ARRL = 0xFF;
 110  0048 35ff5263      	mov	21091,#255
 111                     ; 67 	TIM1->CCR1H = FLASH_ReadByte(0x4000);
 113  004c ae4000        	ldw	x,#16384
 114  004f 89            	pushw	x
 115  0050 ae0000        	ldw	x,#0
 116  0053 89            	pushw	x
 117  0054 cd0000        	call	_FLASH_ReadByte
 119  0057 5b04          	addw	sp,#4
 120  0059 c75265        	ld	21093,a
 121                     ; 68 	TIM1->CCR1L = FLASH_ReadByte(0x4001);
 123  005c ae4001        	ldw	x,#16385
 124  005f 89            	pushw	x
 125  0060 ae0000        	ldw	x,#0
 126  0063 89            	pushw	x
 127  0064 cd0000        	call	_FLASH_ReadByte
 129  0067 5b04          	addw	sp,#4
 130  0069 c75266        	ld	21094,a
 131                     ; 69 	TIM1->CCR2H = FLASH_ReadByte(0x4002);
 133  006c ae4002        	ldw	x,#16386
 134  006f 89            	pushw	x
 135  0070 ae0000        	ldw	x,#0
 136  0073 89            	pushw	x
 137  0074 cd0000        	call	_FLASH_ReadByte
 139  0077 5b04          	addw	sp,#4
 140  0079 c75267        	ld	21095,a
 141                     ; 70 	TIM1->CCR2L = FLASH_ReadByte(0x4003);
 143  007c ae4003        	ldw	x,#16387
 144  007f 89            	pushw	x
 145  0080 ae0000        	ldw	x,#0
 146  0083 89            	pushw	x
 147  0084 cd0000        	call	_FLASH_ReadByte
 149  0087 5b04          	addw	sp,#4
 150  0089 c75268        	ld	21096,a
 151                     ; 71 	TIM1->CCR3H = FLASH_ReadByte(0x4004);
 153  008c ae4004        	ldw	x,#16388
 154  008f 89            	pushw	x
 155  0090 ae0000        	ldw	x,#0
 156  0093 89            	pushw	x
 157  0094 cd0000        	call	_FLASH_ReadByte
 159  0097 5b04          	addw	sp,#4
 160  0099 c75269        	ld	21097,a
 161                     ; 72 	TIM1->CCR3L = FLASH_ReadByte(0x4005);
 163  009c ae4005        	ldw	x,#16389
 164  009f 89            	pushw	x
 165  00a0 ae0000        	ldw	x,#0
 166  00a3 89            	pushw	x
 167  00a4 cd0000        	call	_FLASH_ReadByte
 169  00a7 5b04          	addw	sp,#4
 170  00a9 c7526a        	ld	21098,a
 171                     ; 73 	TIM1->CCER1 = 0x11;		//enable output
 173  00ac 3511525c      	mov	21084,#17
 174                     ; 74 	TIM1->CCER2 = 0x01;		//enable output
 176  00b0 3501525d      	mov	21085,#1
 177                     ; 75 	TIM1->CCMR1 = 0x60;		//pwm
 179  00b4 35605258      	mov	21080,#96
 180                     ; 76 	TIM1->CCMR2 = 0x60;		//pwm
 182  00b8 35605259      	mov	21081,#96
 183                     ; 77 	TIM1->CCMR3 = 0x60;		//pwm
 185  00bc 3560525a      	mov	21082,#96
 186                     ; 81 	TIM1->CR1 |= TIM1_CR1_ARPE;
 188  00c0 721e5250      	bset	21072,#7
 189                     ; 82 	TIM1->EGR |= TIM1_EGR_UG;
 191  00c4 72105257      	bset	21079,#0
 192                     ; 83 	TIM1->BKR |= TIM1_BKR_MOE;
 194  00c8 721e526d      	bset	21101,#7
 195                     ; 84 	TIM1->CNTRH = 0xFF;
 197  00cc 35ff525e      	mov	21086,#255
 198                     ; 85 	TIM1->CNTRL = 0xFF;
 200  00d0 35ff525f      	mov	21087,#255
 201                     ; 86 	TIM1->CR1 |= TIM1_CR1_CEN;
 203  00d4 72105250      	bset	21072,#0
 204                     ; 88 	TIM4->CR1 &= ~TIM4_CR1_CEN;	//hodiny 16MHz
 206  00d8 72115340      	bres	21312,#0
 207                     ; 89 	TIM4->PSCR = 0x07; // 16/2^7 = 125kHz
 209  00dc 35075347      	mov	21319,#7
 210                     ; 90 	TIM4->ARR = 124;	// upto 124 -> 1kHz
 212  00e0 357c5348      	mov	21320,#124
 213                     ; 91 	TIM4->CR1 |= TIM4_CR1_ARPE;
 215  00e4 721e5340      	bset	21312,#7
 216                     ; 92 	TIM4->EGR |= TIM4_EGR_UG;
 218  00e8 72105345      	bset	21317,#0
 219                     ; 93 	TIM4->IER |= TIM4_IER_UIE;
 221  00ec 72105343      	bset	21315,#0
 222                     ; 94 	TIM4->CR1 |= TIM4_CR1_CEN;
 224  00f0 72105340      	bset	21312,#0
 225  00f4               L12:
 226                     ; 96 	while(1);
 228  00f4 20fe          	jra	L12
 263                     ; 108 void assert_failed(u8* file, u32 line)
 263                     ; 109 { 
 264                     	switch	.text
 265  00f6               _assert_failed:
 269  00f6               L34:
 270  00f6 20fe          	jra	L34
 283                     	xdef	_main
 284                     	xdef	_assert_failed
 285                     	xref	_FLASH_ReadByte
 304                     	end
