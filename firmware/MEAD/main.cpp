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
#include <string.h>
#include <stdlib.h>
#include "AT30TS74.h"
#include "AMG240160P.h"
#include "DAC60508.h"

//Global peripherals
UART* 		g_uart;
DAC60508*	g_dac;
AMG240160P*	g_display;
AT30TS74*	g_leftTemp;
AT30TS74*	g_rightTemp;

//Channel configuration
uint8_t		g_channelAttenuations[8];
uint16_t	g_channelThresholds[8] = {0};

void SetAttenuation(uint8_t channel, uint8_t atten);
void SetThreshold(uint8_t channel, uint16_t threshold);
void UpdateChannelInfoText(uint8_t channel);

void ProcessCommand(const char* cmd);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Entry point

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

	//Set up I2C.
	//Prescale divide by 8 (6 MHz, 166.6 ns/tick)
	//Divide I2C clock by 16 after that to get 375 kHz
	static GPIOPin i2c_sda( &GPIOB, 7, GPIOPin::MODE_PERIPHERAL, 1);
	static GPIOPin i2c_scl( &GPIOB, 6, GPIOPin::MODE_PERIPHERAL, 1);
	static I2C i2c(&I2C1, 8, 8);

	//Set up timer with 1us ticks
	static Timer timer(&TIM1, Timer::FEATURE_ADVANCED, 48);

	//Wait 250 ms for everything to power up fully before doing anything else
	for(int i=0; i<250; i++)
		timer.Sleep(1000, true);

	//Set up temperature sensors
	static AT30TS74 temp_right(&i2c, 0x90);
	static AT30TS74 temp_left(&i2c, 0x92);
	g_leftTemp = &temp_left;
	g_rightTemp = &temp_right;

	//Set up DAC
	static GPIOPin dac_cs_n(&GPIOA, 15, GPIOPin::MODE_OUTPUT);
	static DAC60508 dac(&spi, &dac_cs_n);
	g_dac = &dac;

	//Set up LCD
	static GPIOPin lcd_cs_n(&GPIOA, 0, GPIOPin::MODE_OUTPUT);
	static GPIOPin lcd_rst_n(&GPIOA, 2, GPIOPin::MODE_OUTPUT);
	static GPIOPin lcd_ctl_data(&GPIOA, 3, GPIOPin::MODE_OUTPUT);
	static AMG240160P lcd(&spi, &lcd_cs_n, &lcd_rst_n, &lcd_ctl_data, &timer);
	g_display = &lcd;

	//Initial setup
	for(int i=0; i<8; i++)
	{
		//Default channels to 1x probe, 500 mV threshold
		g_channelAttenuations[i]	= 1;
		SetThreshold(i, 500);

		//Initial default channel names
		lcd.MoveTo(0, i*2);
		lcd.Printf("CH%d", i);

		//Infobox text
		UpdateChannelInfoText(i);
	}

	//Push the updates to the screen
	lcd.UpdateScreen();

	//Main loop
	static char cmd[128] = {0};
	uint8_t icmd = 0;
	while(true)
	{
		//Process input
		char ch = g_uart->BlockingRead();

		if( (ch == '\r') || (ch == '\n') )
		{
			ProcessCommand(cmd);
			icmd = 0;
			memset(cmd, 0, sizeof(cmd));
			continue;
		}

		cmd[icmd] = ch;
		icmd ++;

		//Discard too-long inputs
		if(icmd == 127)
		{
			icmd = 0;
			memset(cmd, 0, sizeof(cmd));
			continue;
		}

		//No input? wait a bit
		timer.Sleep(1000, true);
	}

	return 0;
}

/**
	@brief Executes a command from the UART

	Commands are formatted as follows, and terminated by a newline.
		Opcode (one lowercase letter)
		Channel number (one ASCII digit)
		Arguments as needed

	Opcodes:
		n		Set display name of channel 	(argument = up to 20 chars of display name)
		a		Set channel attenuation 		(argument = attenuation)
		v		Set channel voltage threshold	(argument = threshold in mV)
		t		Read temperature sensor			(ch0 = left, ch1 = right)
 */
void ProcessCommand(const char* cmd)
{
	//All commands require a channel number. Discard anything invalid.
	uint8_t channel_num = cmd[1] - '0';
	if(channel_num >= 8)
		return;

	switch(cmd[0])
	{
		//Set display name
		case 'n':
			{
				//Make sure name fits on screen (discard anything too long)
				const char* name = cmd + 2;
				if(strlen(name) > 20)
					break;

				//Print it
				uint8_t row = channel_num*2;
				g_display->ClearRow(row);
				g_display->MoveTo(0, row);
				g_display->Printf("%s", name);

				g_display->UpdateScreen();
			}
			break;

		//Set channel attenuation
		case 'a':
			SetAttenuation(channel_num, atoi(cmd+2));
			UpdateChannelInfoText(channel_num);
			g_display->UpdateScreen();
			break;

		//Set channel voltage threshold
		case 'v':
			SetThreshold(channel_num, atoi(cmd+2));
			UpdateChannelInfoText(channel_num);
			g_display->UpdateScreen();
			break;

		//Read temperature sensor
		case 't':
			{
				uint8_t temp;
				uint8_t temp_frac;
				if(channel_num == 0)
					g_leftTemp->GetTemperature(temp, temp_frac);
				else
					g_rightTemp->GetTemperature(temp, temp_frac);

				g_uart->Printf("%d.%02d\n", temp, temp_frac * 100 / 256);
			}
			break;

		//ignore unknown commands
		default:
			break;
	}
}

/**
	@brief Updates the display with the info text for a channel
 */
void UpdateChannelInfoText(uint8_t channel)
{
	uint8_t row = channel*2 + 1;

	g_display->ClearRow(row);
	g_display->MoveTo(2, row);
	g_display->Printf(
		"%d.%03dV x%d",
		g_channelThresholds[channel] / 1000,
		g_channelThresholds[channel] % 1000,
		g_channelAttenuations[channel]);
}

/**
	@brief Sets the attenuation for a channel
 */
void SetAttenuation(uint8_t channel, uint8_t atten)
{
	if(channel >= 8)
		return;

	g_channelAttenuations[channel] = atten;

	//Re-set the threshold to correct for the new attenuation
	SetThreshold(channel, g_channelThresholds[channel]);
}

/**
	@brief Sets the threshold for a channel, in mV
 */
void SetThreshold(uint8_t channel, uint16_t threshold)
{
	if(channel >= 8)
		return;

	g_channelThresholds[channel] = threshold;

	//Scale DAC voltage by probe attenuation
	threshold /= g_channelAttenuations[channel];

	//Map of left-right channel numbers to netlist channels
	//(CH0 in the schematic is not the leftmost one)
	static uint8_t physical_channel_mapping[8] = { 7, 6, 3, 2, 1, 0, 5, 4 };
	channel = physical_channel_mapping[channel];

	//Map of netlist channel numbers to DAC channels
	static uint8_t dac_channel_mapping[8] = { 7, 6, 0, 1, 4, 5, 2, 3 };
	channel = dac_channel_mapping[channel];

	g_dac->SetVoltage(channel, threshold);
}
