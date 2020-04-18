/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2020 Andrew D. Zonenberg                                                                               *
* All rights reserved.                                                                                                 *
*                                                                                                                      *
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the     *
* following conditions are met:                                                                                        *
*                                                                                                                      *
*    * Redistributions of source code must retain the above copyright notice, this list of conditions, and the         *
*      following disclaimer.                                                                                           *
*                                                                                                                      *
*    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the       *
*      following disclaimer in the documentation and/or other materials provided with the distribution.                *
*                                                                                                                      *
*    * Neither the name of the author nor the names of any contributors may be used to endorse or promote products     *
*      derived from this software without specific prior written permission.                                           *
*                                                                                                                      *
* THIS SOFTWARE IS PROVIDED BY THE AUTHORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   *
* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL *
* THE AUTHORS BE HELD LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES        *
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR       *
* BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE       *
* POSSIBILITY OF SUCH DAMAGE.                                                                                          *
*                                                                                                                      *
***********************************************************************************************************************/

#include "stm32f031.h"
#include "UART.h"
#include "SCPIParser.h"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Entry point

void PLLInit();
void LEDInit();
void UARTInit();

UART* g_uart;
SCPIParser scpi;

int main()
{
	PLLInit();
	LEDInit();

	//Enable timer 2
	RCC.APB1ENR |= RCC_APB1_TIM2;

	//Configure TIM2 (enabled, counting up, prescale by 48000 so 1 ms per tick)
	TIM2.PSC = 47999;
	TIM2.CR1 = 0x1;

	//Initialize the UART
	UARTInit();
	UART uart(&USART1, &USART1, 417);
	g_uart = &uart;
	scpi.Init(g_uart);

	//Main loop
	while(1)
	{
		//Blink the LED at 1.024 Hz
		if(TIM2.CNT & 0x100)
			GPIOB.ODR = GPIOB.ODR |= 0x80;
		else
			GPIOB.ODR = GPIOB.ODR &= ~0x80;

		//Process UART traffic
		scpi.Iteration();
	}

	return 0;
}

void PLLInit()
{
	//Start the PLL with 48 MHz output (HSI / 2)*12 = 48 MHz
	//APB clk (PCLK) = 48 MHz
	//AHB clk (HCLK) = 48 MHz
	//Clock on HSI oscillator
	RCC.CFGR = 0x280000;
	RCC.CR |= RCC_PLL_ON;

	//Wait for PLL to be stable, then start using it
	while( (RCC.CR & RCC_PLL_READY) == 0)
	{}
	RCC.CFGR = (RCC.CFGR & 0xfffffffc) | 2;
	while( (RCC.CFGR & 0xc) != 0x8)
	{}
}

void LEDInit()
{
	//Enable GPIOB
	//Set PB7 (LED0)  as output
	RCC.AHBENR |= RCC_AHB_GPIOB;
	GPIOB.MODER = (GPIOB.MODER & 0xffff3fff) | 0x4000;
}

void UARTInit()
{
	//Enable USART1 at 115.2 Kbps on PA9/10
	RCC.AHBENR |= RCC_AHB_GPIOA;
	RCC.APB2ENR |= RCC_APB2_USART1;
	GPIOA.MODER = (GPIOA.MODER & 0xffc3ffff) | 0x00280000;
	GPIOA.AFRH = (GPIOA.AFRH & 0xfffff00f) | 0x110;

	//Enable RXNE interrupt vector (IRQ27)
	//TODO: better contants here
	volatile uint32_t* NVIC_ISER0 = (volatile uint32_t*)(0xe000e100);
	*NVIC_ISER0 = 0x8000000;
}
