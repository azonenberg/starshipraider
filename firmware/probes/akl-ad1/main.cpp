/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2020-2021 Andrew D. Zonenberg                                                                          *
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

#include <stm32fxxx.h>
#include <ctype.h>
#include <peripheral/UART.h>
#include <peripheral/GPIO.h>
#include <peripheral/SPI.h>

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Entry point

//UART stuff
UART* g_uart;

//When possible, long-lived stuff here should be declared static.
//This puts them in .bss instead of stack, and enables better accounting of memory usage.
int main()
{
	//Initialize the PLL
	//CPU clock = AHB clock = APB clock = 48 MHz
	RCCHelper::InitializePLLFromInternalOscillator(2, 12, 1, 1);

	//Initialize GPIOs for power-down control
	static GPIOPin spi_cs_n(&GPIOA, 0, GPIOPin::MODE_OUTPUT);
	static GPIOPin pd(&GPIOA, 1, GPIOPin::MODE_OUTPUT);
	pd.Set(0);
	spi_cs_n.Set(1);

	//Set up SPI bus at 12 MHz (APB/4)
	static GPIOPin	spi_sck( &GPIOB, 3, GPIOPin::MODE_PERIPHERAL, 0);
	//static GPIOPin spi_miso(&GPIOB, 4, GPIOPin::MODE_PERIPHERAL, 0);
	static GPIOPin spi_mosi(&GPIOB, 5, GPIOPin::MODE_PERIPHERAL, 0);
	static SPI spi(&SPI1, false, 4);

	//Configure the amplifier for max gain
	spi_cs_n.Set(0);
	spi.BlockingWrite(0x02);	//gain register
	spi.BlockingWrite(26);
	spi.WaitForWrites();
	spi_cs_n.Set(1);

	/*
	//Initialize the UART
	static GPIOPin uart_tx(&GPIOA, 9,	GPIOPin::MODE_PERIPHERAL, 1);
	static GPIOPin uart_rx(&GPIOA, 10, GPIOPin::MODE_PERIPHERAL, 1);
	static UART uart(&USART1, &USART1, 417);
	g_uart = &uart;

	//Enable RXNE interrupt vector (IRQ27)
	//TODO: better contants here
	volatile uint32_t* NVIC_ISER0 = (volatile uint32_t*)(0xe000e100);
	*NVIC_ISER0 = 0x8000000;

	int gain = 0;
	bool invert = false;
	while(1)
	{
		char c = g_uart->BlockingRead();

		//d/u = power down/up
		if(c == 'd')
		{
			pd.Set(1);
			g_uart->Printf("Powering down amplifier\n");
		}
		else if(c == 'u')
		{
			pd.Set(0);
			g_uart->Printf("Powering up amplifier\n");
		}

		else if(c == '-')
			invert = true;
		else if(isdigit(c))
			gain = (gain * 10) + (c - '0');
		else if( (c == '\n') || (c == '\r') )
		{
			if(invert)
				gain = -gain;

			//Clamp gain to legal range
			if(gain < -6)
				gain = -6;
			if(gain > 26)
				gain = 26;

			//Convert gain to attenuation value
			int atten = 26 - gain;
			g_uart->Printf("Setting gain to %d (%d dB attenuation)\n", gain, atten);

			//Update the amplifier
			spi_cs_n.Set(0);
			spi.BlockingWrite(0x02);	//gain register
			spi.BlockingWrite(atten);
			spi.WaitForWrites();
			spi_cs_n.Set(1);

			//Reset for next round
			gain = 0;
			invert = false;
		}
	}
	*/

	return 0;
}
