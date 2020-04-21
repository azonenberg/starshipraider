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

#include "ADL5205.h"

ADL5205::ADL5205(SPI* spi, GPIOPin* cs, GPIOPin* pwrup)
	: m_spi(spi)
	, m_cs(cs)
	, m_pwrup(pwrup)
{
	//Default to power down, not selected
	m_pwrup->Set(0);
	m_cs->Set(1);

	//Wait a short time (TODO: use proper timer for this?)
	for(int i=0; i<1000; i++)
		m_cs->Set(1);

	//Default gain is min scale
	SetGain(-9);
}

void ADL5205::PowerUp()
{
	m_pwrup->Set(1);
}

void ADL5205::PowerDown()
{
	m_pwrup->Set(0);
}

void ADL5205::SetGain(int db)
{
	//Cap to allowed gain range
	if(db > 26)
		db = 26;
	if(db < -9)
		db = -9;

	//Scale per table 9 of ADL5205 datasheet
	int gaincode = 26 - db;

	//Send code to the VGA
	//Shift MSB first
	m_cs->Set(0);
	m_spi->BlockingWrite(0);			//write
	m_spi->BlockingWrite(gaincode);
	m_spi->WaitForWrites();
	m_cs->Set(1);

	m_gain = db;
}
