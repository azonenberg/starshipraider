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

#include "LTC2664.h"

LTC2664::LTC2664(SPI* spi, GPIOPin* rst, GPIOPin* cs, GPIOPin* ldac)
	: m_spi(spi)
	, m_rst(rst)
	, m_cs(cs)
	, m_ldac(ldac)
{
	//Initialize all pins
	rst->Set(1);
	cs->Set(1);
	ldac->Set(1);

	//Reset the DAC
	rst->Set(0);
	rst->Set(1);

	//Set all channels to 0
	for(int i=0; i<4; i++)
		SetVoltage(i, 0);
}

/**
	@brief Sets the raw DAC code for a lane
 */
void LTC2664::SetCode(uint8_t lane, uint16_t code)
{
	//Write to the internal buffer (does not actually update the output)
	m_cs->Set(0);
	m_spi->BlockingWrite(lane);
	m_spi->BlockingWrite(code >> 8);
	m_spi->BlockingWrite(code & 0xff);
	m_spi->WaitForWrites();
	m_cs->Set(1);

	//Strobe LDAC to update the DAC once the buffer is loaded
	m_ldac->Set(0);
	m_ldac->Set(1);
}

/**
	@brief Sets the voltage for a lane

	TODO: allow calibration rather than doing naive scaling
 */
void LTC2664::SetVoltage(uint8_t lane, float v)
{
	//Offset to be positive, since DAC codes are unsigned
	v += 2.5;
	if(v < 0)
		v = 0;
	if(v > 5)
		v = 5;

	//Convert to DAC code
	v = v * 65535 / 5.0f;
	SetCode(lane, v);
}
