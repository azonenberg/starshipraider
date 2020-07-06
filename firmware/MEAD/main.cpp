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

#include <stm32fxxx.h>
#include <peripheral/UART.h>
#include <peripheral/GPIO.h>
#include <peripheral/SPI.h>
#include <peripheral/I2C.h>
#include <peripheral/Timer.h>
#include <util/StringBuffer.h>
#include "AT30TS74.h"
#include "AMG240160P.h"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Entry point

//UART stuff
UART* g_uart;

void UpdateSensors(AT30TS74* left, AT30TS74* right, AMG240160P* display);

//When possible, long-lived stuff here should be declared static.
//This puts them in .bss instead of stack, and enables better accounting of memory usage
int main()
{
	//Initialize the PLL
	//CPU clock = AHB clock = APB clock = 48 MHz
	RCCHelper::InitializePLLFromInternalOscillator(2, 12, 1, 1);

	//Initialize the UART
	static GPIOPin uart_tx(&GPIOA, 9,	GPIOPin::MODE_PERIPHERAL, 1);
	static GPIOPin uart_rx(&GPIOA, 10, GPIOPin::MODE_PERIPHERAL, 1);
	static UART uart(&USART1, &USART1, 417);
	g_uart = &uart;

	//Enable RXNE interrupt vector (IRQ27)
	//TODO: better contants here
	volatile uint32_t* NVIC_ISER0 = (volatile uint32_t*)(0xe000e100);
	*NVIC_ISER0 = 0x8000000;

	//Set up SPI bus at 12 MHz (APB/4)
	static GPIOPin spi_sck( &GPIOB, 3, GPIOPin::MODE_PERIPHERAL, 0);
	static GPIOPin spi_miso(&GPIOB, 4, GPIOPin::MODE_PERIPHERAL, 0);
	static GPIOPin spi_mosi(&GPIOB, 5, GPIOPin::MODE_PERIPHERAL, 0);
	static SPI spi(&SPI1, true, 4);

	//Set up timer with 1us ticks
	static Timer timer(&TIM1, Timer::FEATURE_ADVANCED, 48);

	//Set up DAC
	static GPIOPin dac_cs_n(&GPIOA, 15, GPIOPin::MODE_OUTPUT);
	dac_cs_n.Set(1);

	//Set up I2C.
	//Prescale divide by 8 (6 MHz, 166.6 ns/tick)
	//Divide I2C clock by 16 after that to get 375 kHz
	static GPIOPin i2c_sda( &GPIOB, 7, GPIOPin::MODE_PERIPHERAL, 1);
	static GPIOPin i2c_scl( &GPIOB, 6, GPIOPin::MODE_PERIPHERAL, 1);
	static I2C i2c(&I2C1, 8, 8);

	//Set up temperature sensors
	AT30TS74 temp_right(&i2c, 0x90);
	AT30TS74 temp_left(&i2c, 0x92);

	//Set up LCD
	static GPIOPin lcd_cs_n(&GPIOA, 0, GPIOPin::MODE_OUTPUT);
	static GPIOPin lcd_rst_n(&GPIOA, 2, GPIOPin::MODE_OUTPUT);
	static GPIOPin lcd_ctl_data(&GPIOA, 3, GPIOPin::MODE_OUTPUT);
	AMG240160P lcd(&spi, &lcd_cs_n, &lcd_rst_n, &lcd_ctl_data, &timer);

	//Add initial channel names
	for(int i=0; i<8; i++)
	{
		lcd.MoveTo(0, i*2);
		lcd.Printf("CH%d", i);
	}

	//Read the current temperature
	while(true)
	{
		//Refresh sensors and push to the display
		UpdateSensors(&temp_left, &temp_right, &lcd);
		lcd.UpdateScreen();

		//Wait 500ms
		for(int i=0; i<500; i++)
			timer.Sleep(1000, true);
	}

	return 0;
}

void UpdateSensors(AT30TS74* left, AT30TS74* right, AMG240160P* display)
{
	uint8_t temp;
	uint8_t temp_frac;

	//Left side
	display->MoveTo(13, 1);
	left->GetTemperature(temp, temp_frac);
	display->Printf("%d.%02d C", temp, temp_frac * 100 / 256);

	//Right side
	display->MoveTo(13, 13);
	right->GetTemperature(temp, temp_frac);
	display->Printf("%d.%02d C", temp, temp_frac * 100 / 256);
}
