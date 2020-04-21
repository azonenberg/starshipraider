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

#include "InputProtectionRelay.h"

InputProtectionRelay::InputProtectionRelay(GPIOPin* relay_en, GPIOPin* input_rst, GPIOPin* overvoltage_n)
	: m_relayEn(relay_en)
	, m_inputRst(input_rst)
	, m_overvoltage_n(overvoltage_n)
{
	//Reset is off
	m_inputRst->Set(0);

	//Shut down input, then clear shutdown but leave it latched off
	m_overvoltage_n->Set(0);
	m_overvoltage_n->Set(1);
}

/**
	@brief Checks if the relay is currently active
 */
bool InputProtectionRelay::IsEnabled()
{
	return m_relayEn->Get();
}

/**
	@brief Checks if the overvoltage signal is asserted
 */
bool InputProtectionRelay::IsOverVoltage()
{
	return (m_overvoltage_n->Get() == 0);
}

/**
	@brief Closes the relay

	Note that if the input is overloaded, it will immediately re-open.
 */
void InputProtectionRelay::Enable()
{
	//Don't even attempt to enable the input if overloaded
	if(IsOverVoltage())
		return;

	//Close the relay
	m_inputRst->Set(1);
	m_inputRst->Set(0);
}

/**
	@brief Opens the relay, even if not overloaded
 */
void InputProtectionRelay::Disable()
{
	m_overvoltage_n->Set(0);
	m_overvoltage_n->Set(1);
}
