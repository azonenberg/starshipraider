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
#include "DAC60508.h"

DAC60508::DAC60508(SPI* spi, GPIOPin* csn)
	: m_spi(spi)
	, m_csn(csn)
{
	csn->Set(1);

	//Configuration: CRC disable, serial output, using internal reference, all DACs enabled, fast output
	WriteRegister(0x3, 0x0400);

	//Sync mode: enable broadcast
	WriteRegister(0x2, 0xff00);

	//Gain: all DACs using gain of 2V/V (5V full scale range)
	WriteRegister(0x4, 0x00ff);

	//Write all lanes to 0
	WriteRegister(0x8, 0x0000);
}

/**
	@brief Sets the raw DAC code for a lane
 */
void DAC60508::SetCode(uint8_t lane, uint16_t code)
{
	WriteRegister(0x8 + lane, code);
}

void DAC60508::WriteRegister(uint8_t addr, uint16_t value)
{
	//The DAC60508 is derpy and reads SDI on the falling edge of SCK so we need to invert SCK to make this work...
	m_spi->SetClockInvert(true);

	m_csn->Set(0);
	m_spi->BlockingWrite(addr);	//0x80 = read, 0x00 = write, then 3 reserved bits, then address
	m_spi->BlockingWrite(value >> 8);
	m_spi->BlockingWrite(value & 0xff);
	m_spi->WaitForWrites();
	m_csn->Set(1);

	m_spi->SetClockInvert(false);
}

void DAC60508::ReadRegister(uint8_t addr)
{
	m_spi->SetClockInvert(true);

	//Send the read request
	m_csn->Set(0);
	m_spi->BlockingWrite(addr | 0x80);
	m_spi->BlockingWrite(0x00);
	m_spi->BlockingWrite(0x00);
	m_spi->WaitForWrites();
	m_csn->Set(1);

	//Get data back
	m_csn->Set(0);
	m_spi->BlockingWrite(0x00);
	m_spi->BlockingWrite(0x00);
	m_spi->BlockingWrite(0x00);
	m_spi->WaitForWrites();
	m_csn->Set(1);

	m_spi->SetClockInvert(false);
}

/**
	@brief Helper for setting voltage
 */
void DAC60508::SetVoltage(uint8_t lane, uint16_t mv)
{
	/*
		DAC is configured for 2:1 gain on a 2.5V reference so 5V full-scale range.
		One DAC code is thus 76.29 uV, or 13.1072 codes per mV.
	 */
	uint16_t code = (mv * 65536UL) / 5000;
	SetCode(lane, code);
}
