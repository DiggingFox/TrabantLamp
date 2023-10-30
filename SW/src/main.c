/**
  ******************************************************************************
  * @file    Project/main.c 
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   Main program body
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 


/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "main.h"
/* Private defines -----------------------------------------------------------*/
#define	MAX	0x1000
#define	MIN	0x8FF
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

void main(void)
{
	CLK->CKDIVR |= 0x00;		//preddelicka na nulu
	CLK->PCKENR1 |= CLK_PCKENR1_TIM1 | CLK_PCKENR1_TIM4;	//taktovani timru
	CLK->PCKENR2 |= CLK_PCKENR2_ADC;	//adc
	
	//push buttons
	GPIO_SW->ODR = 0x00;
	GPIO_SW->DDR &= ~(1<<PIN_SW_R | 1<<PIN_SW_O);
  GPIO_SW->CR1 |= (1<<PIN_SW_R | 1<<PIN_SW_O);
  //GPIO_SW_LED->CR2 |= (1<PIN_SW_R | 1<PIN_SW_G | 1<PIN_SW_B);
	
	//LEDs
	GPIO_LED->ODR = 0x00;	//aby to nesvitilo..
	GPIO_LED->DDR |= 1<<PIN_LED_R1 | 1<<PIN_LED_R2 | 1<<PIN_LED_O;	//3,6,7 vystup
	GPIO_LED->CR1 |= 1<<PIN_LED_R1 | 1<<PIN_LED_R2 | 1<<PIN_LED_O;	//push-pull

	//EXTI->CR1 = 0xC3;//nastupna i sestupna hrana na D
	enableInterrupts();
	
	TIM1->CR1 &= ~TIM1_CR1_CEN;	//hodiny 16MHz
	TIM1->PSCRH = 0x00;
	TIM1->PSCRL = 0x00;
	//TIM1->IER |= TIM_IER_UIE;
	//TIM1->ARRH = 0x0F;
	TIM1->ARRH = 0x0F;
	TIM1->ARRL = 0xFF;
	//TIM1->CCMR1 = 0x30;
	//TIM1->CCER1 = TIM1_CCER1_CC1E;
	TIM1->CCR1H = FLASH_ReadByte(0x4000);
	TIM1->CCR1L = FLASH_ReadByte(0x4001);
	TIM1->CCR2H = FLASH_ReadByte(0x4002);
	TIM1->CCR2L = FLASH_ReadByte(0x4003);
	TIM1->CCR3H = FLASH_ReadByte(0x4004);
	TIM1->CCR3L = FLASH_ReadByte(0x4005);
	TIM1->CCER1 = 0x11;		//enable output
	TIM1->CCER2 = 0x01;		//enable output
	TIM1->CCMR1 = 0x60;		//pwm
	TIM1->CCMR2 = 0x60;		//pwm
	TIM1->CCMR3 = 0x60;		//pwm
	//TIM1->CCMR2 = 0x60;		//pwm
	//TIM1->CCMR2 = 0x30;		//zmena stavu pri dosahnuti hodnoty
	//TIM1->CR1 |= TIM1_CR1_DIR;
	TIM1->CR1 |= TIM1_CR1_ARPE;
	TIM1->EGR |= TIM1_EGR_UG;
	TIM1->BKR |= TIM1_BKR_MOE;
	TIM1->CNTRH = 0xFF;
	TIM1->CNTRL = 0xFF;
	TIM1->CR1 |= TIM1_CR1_CEN;
	
	TIM4->CR1 &= ~TIM4_CR1_CEN;	//hodiny 16MHz
	TIM4->PSCR = 0x07; // 16/2^7 = 125kHz
	TIM4->ARR = 124;	// upto 124 -> 1kHz
	TIM4->CR1 |= TIM4_CR1_ARPE;
	TIM4->EGR |= TIM4_EGR_UG;
	TIM4->IER |= TIM4_IER_UIE;
	TIM4->CR1 |= TIM4_CR1_CEN;
	
	while(1);
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
