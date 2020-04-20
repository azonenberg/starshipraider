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
#include <memory.h>
#include <string.h>
#include <ctype.h>
#include "SCPIParser.h"

static const char* CURSOR_LEFT = "\x1b[D";
static const char* CURSOR_RIGHT = "\x1b[C";

SCPIParser::SCPIParser(UART* uart, LTC2664* dac)
 : m_uart(uart)
 , m_state(STATE_EDIT)
 , m_cursorPosition(0)
 , m_dac(dac)
{
	memset(m_line, 0, sizeof(m_line));

	for(int i=0; i<NUM_CHANNELS; i++)
		m_offset[i] = 0;
}

void SCPIParser::Iteration()
{
	switch(m_state)
	{
		case STATE_EDIT:
			if(m_uart->HasInput())
				OnInputReady();
			break;

		case STATE_PARSE:
			OnLineReady();

			//Ready for next command
			memset(m_line, 0, sizeof(m_line));
			m_state = STATE_EDIT;
			m_cursorPosition = 0;
			break;
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Input handling

void SCPIParser::OnInputReady()
{
	//If we get here, there's input ready
	char c = m_uart->BlockingRead();

	//End of line means the command is ready to execute
	if( (c == '\r') || (c == '\n') )
	{
		m_uart->PrintString("\n");
		m_state = STATE_PARSE;
		return;
	}

	//Backspace
	else if(c == 0x7f)
		OnBackspace();

	//Escape sequences
	else if(c == 0x1b)
	{
		//TODO: don't stall if there's nothing in the fifo

		//Next char should be a [
		if(m_uart->BlockingRead() != '[')
		{
			//malformed escape sequence, ignore it
			return;
		}

		//and the actual escape code
		char code = m_uart->BlockingRead();
		switch(code)
		{
			//B = down, A = up

			case 'C':
				//OnRightArrow();
				break;

			case 'D':
				//OnLeftArrow();
				break;

			default:
				break;
		}
	}

	//TODO: tab completion?
	else if(c == '\t')
	{
	}

	//Ignore other non-printable characters
	else if(!isprint(c))
	{
	}

	//Echo characters as typed
	else
		OnKey(c);
}

void SCPIParser::OnBackspace()
{
	//for now assume we're at end of line

	//can't go left of cursor
	if(m_cursorPosition == 0)
		return;

	//Delete the character
	//move left, space over the deleted character, move left for good this time
	m_uart->Printf("%s %s", CURSOR_LEFT, CURSOR_LEFT);
	m_line[m_cursorPosition --] = '\0';
}

void SCPIParser::OnKey(char c)
{
	//Don't run off end of buffer
	if(m_cursorPosition+1 >= sizeof(m_line))
		return;

	//Append it
	m_line[m_cursorPosition ++] = c;
	m_uart->PrintBinary(c);
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Execute a command

//TODO: proper SCPI error interface
void SCPIParser::OnLineReady()
{
	//Handle common commands with no arguments
	if(!strcmp(m_line, "*IDN?"))
	{
		volatile uint32_t* serial = (volatile uint32_t*)0x1ffff7ac;
		uint32_t wafer_xy = serial[0];
		uint8_t wafer_num = serial[1] & 0xff;
		char wafer_lot[8] =
		{
			static_cast<char>(serial[2] >> 24),
			static_cast<char>((serial[2] >> 16) & 0xff),
			static_cast<char>((serial[2] >> 8) & 0xff),
			static_cast<char>(serial[2] & 0xff),
			static_cast<char>(serial[1] >> 24),
			static_cast<char>((serial[1] >> 16) & 0xff),
			static_cast<char>((serial[1] >> 8) & 0xff),
			'\0'
		};
		m_uart->Printf("Antikernel Labs,BLONDEL Characterization Platform,%s%03d%08x,0.1\n",
			wafer_lot, wafer_num, wafer_xy);
		return;
	}

	//Look for a colon. This indicates we have a channel number and argument.
	if(m_line[2] == ':')
	{
		//Expect command of the format C1:foo (one based). Convert to zero based indexing.
		//Discard anything else
		if( (toupper(m_line[0]) != 'C') || !isdigit(m_line[1]) )
			return;
		int channelNum = m_line[1] - '1';

		//If channel number is invalid, discard it
		if( (channelNum < 0) || (channelNum > NUM_CHANNELS) )
			return;

		//Figure out the parameter being set/read.
		//Normalize to uppercase (commands are case insensitive)
		char field[16] = {0};
		bool is_query = false;
		char* arg = NULL;
		for(int i=0; i<sizeof(field)-1; i++)
		{
			char c = m_line[i+3];
			if(isalpha(c))
				field[i] = toupper(c);

			else if(c == '?')
			{
				is_query = true;
				break;
			}

			else if(c == ' ')
			{
				arg = m_line + i+4;
				break;
			}

			//End of string with no argument
			else if(c == '\0')
				break;

			//Malformed command, discard it
			else
				return;
		}

		//Read commands
		if(is_query)
			OnQuery(channelNum, field);

		//Write commands
		else
			OnSet(channelNum, field, arg);
	}
}

/**
	@brief Prints a float to the UART in %.6f format with a trailing newline
 */
void SCPIParser::PrintFloat(float f)
{
	int intpart = (int)f;
	int fracpart = (f - intpart) * 1000000.0;
	if(fracpart < 0)
		fracpart = -fracpart;
	m_uart->Printf("%d.%06d\n", intpart, fracpart);
}

/**
	@brief Parses a float from a string. Lightweight, limited replacement for atof().
 */
float SCPIParser::ParseFloat(const char* str)
{
	bool negative = false;
	bool fractional = false;
	float f = 0;
	float scale = 0.1;
	char c = *str;
	do
	{
		//Minus sign
		if(c == '-')
			negative = true;

		//Decimal point? Move from real to fractional part.
		else if(c == '.')
		{
			//Multiple decimal points is an error, stop
			if(fractional)
				break;
			else
				fractional = true;
		}

		//Anything else should be a digit, abort if not
		else if(!isdigit(c))
			break;

		//If we get here it's a digit
		else
		{
			//Integer part
			if(!fractional)
				f = f*10 + (c - '0');

			//Fractional part
			else
			{
				f += scale*(c - '0');
				scale *= 0.1;
			}
		}

		//Move on
		str ++;
		c = *str;

	} while(c != '\0');

	//Invert negative numbers at the end
	if(negative)
		f = -f;

	return f;
}

/**
	@brief Handles a query to an object
 */
void SCPIParser::OnQuery(int channel, const char* field)
{
	//OFFSet - channel DC offset
	if(!strcmp(field, "OFFS") || !strcmp(field, "OFFSET"))
		PrintFloat(m_offset[channel]);
}

/**
	@brief Handles a write to an object
 */
void SCPIParser::OnSet(int channel, const char* field, const char* args)
{
	if(!strcmp(field, "OFFS") || !strcmp(field, "OFFSET"))
	{
		//Save the offset. Trim it to be within allowed ranges
		float f = ParseFloat(args);
		if(f < -5)
			f = -5;
		if(f > 5)
			f = 5;
		m_offset[channel] = f;

		//Input is attenuated by 0.5, so set the DAC to half the requested offset.
		//TODO: calibration for non-exact attenuator here
		m_dac->SetVoltage(channel, f/2);
	}
}
