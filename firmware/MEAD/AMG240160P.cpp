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
#include "AMG240160P.h"

AMG240160P::AMG240160P(SPI* spi, GPIOPin* csn, GPIOPin* rstn, GPIOPin* ctlData, Timer* usTimer)
	: m_spi(spi)
	, m_csn(csn)
	, m_rstn(rstn)
	, m_ctlData(ctlData)
	, m_usTimer(usTimer)
{
	//Initialize pins
	csn->Set(1);
	rstn->Set(1);
	ctlData->Set(0);

	//Reset LCD. 10ms low, 10ms high before sending writes
	rstn->Set(0);
	usTimer->Sleep(10000, true);
	rstn->Set(1);
	usTimer->Sleep(10000, true);
}

void AMG240160P::Initialize()
{
	SendCommand(0xe2);	//Soft reset
	SendCommand(0x2b);	//Power control
	SendCommand(0x25);	//Temp compensation
	SendCommand(0xc2);	//LCD mapping control
	SendCommand(0x8b);	//RAM control
	SendCommand(0xd0);	//Color pattern
	SendCommand(0xd6);	//Color mode
	SendCommand(0xdd);	//COM scan function
	SendCommand(0xa1);	//Line rate
	SendCommand(0xeb);	//Bias ratio 1/12

	SendCommand(0x81);	//VBIAS pot
	SendCommand(35);

	SendCommand(0xf1);	//COM End
	SendCommand(159);

	SendCommand(0xC8);	//N-line inversion
	SendCommand(0);

	SendCommand(0x84);	//No partial display
	SendCommand(0xa6);	//No inverse display
	SendCommand(0xad);	//Enable display
}

void AMG240160P::SendCommand(uint8_t cmd)
{
	m_ctlData->Set(0);

	m_csn->Set(0);
	m_spi->BlockingWrite(cmd);
	m_spi->WaitForWrites();
	m_csn->Set(1);
}

void AMG240160P::SendData(uint8_t data)
{
	m_ctlData->Set(1);

	m_csn->Set(0);
	m_spi->BlockingWrite(cmd);
	m_spi->WaitForWrites();
	m_csn->Set(1);
}
