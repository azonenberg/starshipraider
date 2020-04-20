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

#include <stdint.h>
#include <stm32fxxx.h>
#include <peripheral/UART.h>

typedef void(*fnptr)();

extern uint32_t __end;

//prototypes
extern "C" void _start();
void MMUFault_Handler();
void UsageFault_Handler();
void BusFault_Handler();
void HardFault_Handler();
void NMI_Handler();

extern UART* g_uart;
void USART1_Handler();

void defaultISR();

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Interrupt vector table

fnptr __attribute__((section(".vector"))) vectorTable[] =
{
	(fnptr)&__end,			//stack
	_start,					//reset
	NMI_Handler,			//NMI
	HardFault_Handler,		//hardfault
	MMUFault_Handler,		//mmufault
	BusFault_Handler,		//busfault
	UsageFault_Handler,		//usagefault
	defaultISR,				//reserved_7
	defaultISR,				//reserved_8
	defaultISR,				//reserved_9
	defaultISR,				//reserved_10
	defaultISR,				//svcall
	defaultISR,				//debug
	defaultISR,				//reserved_13
	defaultISR,				//pend_sv
	defaultISR,				//systick
	defaultISR,				//irq0 WWDG
	defaultISR,				//irq1 comparator
	defaultISR,				//irq2 RTC/EXTI
	defaultISR,				//irq3 flash
	defaultISR,				//irq4 RCC
	defaultISR,				//irq5 EXTI_1_0
	defaultISR,				//irq6 EXTI_3_2
	defaultISR,				//irq7 EXTI_15_4
	defaultISR,				//irq8 TSC
	defaultISR,				//irq9 DMA_CH1
	defaultISR,				//irq10 DMA_CH2_3
	defaultISR,				//irq11 DMA_CH4_7
	defaultISR,				//irq12 ADC_COMP
	defaultISR,				//irq13 TIM1_BRK_UP
	defaultISR,				//irq14 TIM1_CC
	defaultISR,				//irq15 TIM2
	defaultISR,				//irq16 TIM3
	defaultISR,				//irq17 TIM6_DAC
	defaultISR,				//irq18 TIM7
	defaultISR,				//irq19 TIM14
	defaultISR,				//irq20 TIM15
	defaultISR,				//irq21 TIM16
	defaultISR,				//irq22 TIM17
	defaultISR,				//irq23 I2C1
	defaultISR,				//irq24 I2C2
	defaultISR,				//irq25 SPI1
	defaultISR,				//irq26 SPI2
	USART1_Handler,			//irq27 USART1
	defaultISR,				//irq28 USART2
	defaultISR,				//irq29 USART3_8
	defaultISR,				//irq30
	defaultISR,				//irq31
	defaultISR,				//irq32
	defaultISR,				//irq33
	defaultISR,				//irq34
	defaultISR,				//irq35
	defaultISR,				//irq36
	defaultISR,				//irq37
	defaultISR,				//irq38
	defaultISR,				//irq39
	defaultISR,				//irq40
	defaultISR,				//irq41
	defaultISR,				//irq42
	defaultISR,				//irq43
	defaultISR,				//irq44
	defaultISR,				//irq45
	defaultISR,				//irq46
	defaultISR,				//irq47
	defaultISR,				//irq48
	defaultISR,				//irq49
	defaultISR,				//irq50
	defaultISR,				//irq51
	defaultISR,				//irq52
	defaultISR,				//irq53
	defaultISR,				//irq54
	defaultISR,				//irq55
	defaultISR,				//irq56
	defaultISR,				//irq57
	defaultISR,				//irq58
	defaultISR,				//irq59
	defaultISR,				//irq60
	defaultISR,				//irq61
	defaultISR,				//irq62
	defaultISR,				//irq63
	defaultISR,				//irq64
	defaultISR,				//irq65
	defaultISR,				//irq66
	defaultISR,				//irq67
	defaultISR,				//irq68
	defaultISR,				//irq69
	defaultISR,				//irq70
	defaultISR,				//irq71
	defaultISR,				//irq72
	defaultISR,				//irq73
	defaultISR,				//irq74
	defaultISR,				//irq75
	defaultISR,				//irq76
	defaultISR,				//irq77
	defaultISR,				//irq78
	defaultISR,				//irq79
	defaultISR,				//irq80
	defaultISR,				//irq81
	defaultISR,				//irq82
	defaultISR,				//irq83
	defaultISR,				//irq84
	defaultISR,				//irq85
	defaultISR,				//irq86
	defaultISR,				//irq87
	defaultISR,				//irq88
	defaultISR,				//irq89
	defaultISR,				//irq90
	defaultISR,				//irq91
	defaultISR,				//irq92
	defaultISR,				//irq93
	defaultISR,				//irq94
	defaultISR,				//irq95
	defaultISR,				//irq96
	defaultISR,				//irq97
	defaultISR,				//irq98
	defaultISR,				//irq99
	defaultISR,				//irq100
	defaultISR,				//irq101
	defaultISR,				//irq102
	defaultISR,				//irq103
	defaultISR,				//irq104
	defaultISR,				//irq105
	defaultISR,				//irq106
	defaultISR,				//irq107
	defaultISR,				//irq108
	defaultISR				//irq109
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Stub for unused interrupts

void defaultISR()
{
	//g_platform.m_cliUart.PrintString("Unused interrupt vector called\n");
	while(1)
	{}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Exception vectors

void NMI_Handler()
{
	//g_platform.m_cliUart.PrintString("NMI\n");
	while(1)
	{}
}

void HardFault_Handler()
{
	/*
	uint32_t* msp;
	asm volatile("mrs %[result], MSP" : [result]"=r"(msp));
	msp += 12;	//locals/alignment
	uint32_t r0 = msp[0];
	uint32_t r1 = msp[1];
	uint32_t r2 = msp[2];
	uint32_t r3 = msp[3];
	uint32_t r12 = msp[4];
	uint32_t lr = msp[5];
	uint32_t pc = msp[6];
	uint32_t xpsr = msp[7];

	g_platform.m_cliUart.Printf("Hard fault\n");
	g_platform.m_cliUart.Printf("    HFSR  = %08x\n", *(volatile uint32_t*)(0xe000ed2C));
	g_platform.m_cliUart.Printf("    MMFAR = %08x\n", *(volatile uint32_t*)(0xe000ed34));
	g_platform.m_cliUart.Printf("    BFAR  = %08x\n", *(volatile uint32_t*)(0xe000ed38));
	g_platform.m_cliUart.Printf("    CFSR  = %08x\n", *(volatile uint32_t*)(0xe000ed28));
	g_platform.m_cliUart.Printf("    UFSR  = %08x\n", *(volatile uint16_t*)(0xe000ed2a));
	g_platform.m_cliUart.Printf("    DFSR  = %08x\n", *(volatile uint32_t*)(0xe000ed30));
	g_platform.m_cliUart.Printf("    MSP   = %08x\n", msp);
	g_platform.m_cliUart.Printf("    r0    = %08x\n", r0);
	g_platform.m_cliUart.Printf("    r1    = %08x\n", r1);
	g_platform.m_cliUart.Printf("    r2    = %08x\n", r2);
	g_platform.m_cliUart.Printf("    r3    = %08x\n", r3);
	g_platform.m_cliUart.Printf("    r12   = %08x\n", r12);
	g_platform.m_cliUart.Printf("    lr    = %08x\n", lr);
	g_platform.m_cliUart.Printf("    pc    = %08x\n", pc);
	g_platform.m_cliUart.Printf("    xpsr  = %08x\n", xpsr);

	g_platform.m_cliUart.Printf("    Stack:\n");
	for(int i=0; i<16; i++)
		g_platform.m_cliUart.Printf("        %08x\n", msp[i]);
	*/
	while(1)
	{}
}

void BusFault_Handler()
{
	//g_platform.m_cliUart.PrintString("Bus fault\n");
	while(1)
	{}
}

void UsageFault_Handler()
{
	//g_platform.m_cliUart.PrintString("Usage fault\n");
	while(1)
	{}
}

void MMUFault_Handler()
{
	//g_platform.m_cliUart.PrintString("MMU fault\n");
	while(1)
	{}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Interrupt handlers for peripherals

void __attribute__((isr)) USART1_Handler()
{
	//Check why we got the IRQ.
	//For now, ignore anything other than "data ready"
	if(0 == (USART1.ISR & USART_ISR_RXNE))
		return;

	//rx data? Shove it in the fifo
	g_uart->OnIRQRxData(USART1.RDR);
}


