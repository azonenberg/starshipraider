/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2012-2020 Andrew D. Zonenberg                                                                          *
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

`ifndef PatternMatcher_svh
`define PatternMatcher_svh

typedef logic[31:0]	target_t;

//Configuration for a SPME
typedef struct packed
{
	//Input selection
	chnum_t			muxsel_clk;
	chnum_t			muxsel_rst;
	chnum_t			muxsel_data;

	//Clock/reset polarity
	logic 			clock_match_rising;
	logic 			clock_match_falling;
	logic 			reset_match_rising;
	logic 			reset_match_falling;

	//Constant values to match against (only low WIDTH bits are used)
	target_t[3:0]	target_values;
	target_t[3:0]	target_masks;

} spmeconfig_t;

//Configuration for a PPME
typedef struct packed
{
	//Config bits: Input selection
	//For now, max 8 bits
	chnum_t			muxsel_clk;
	chnum_t[7:0]	muxsel_data;

	//Config bits: Clock polarity
	logic 			clock_match_rising;
	logic 			clock_match_falling;

	//Config bits: Constant values to match against (only low WIDTH bits are used)
	target_t[3:0]	target_values;
	target_t[3:0]	target_masks;
} ppmeconfig_t;

`endif
