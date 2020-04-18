MEMORY
{
	FLASH(RX):	ORIGIN = 0x08000000, LENGTH = 32K
	SRAM(RW):	ORIGIN = 0x20000000, LENGTH = 4K

	/* SFRs */
	AHB2(RW):	ORIGIN = 0x48000000, LENGTH = 384K
	AHB1(RW):	ORIGIN = 0x40020000, LENGTH = 384K
	APB2(RW):	ORIGIN = 0x40010000, LENGTH = 32K
	APB1(RW):	ORIGIN = 0x40000000, LENGTH = 32K
}

SECTIONS
{
	/* Code comes right after the vector tables */
	.text :
	{
		*(.vector)
		*(.text.*)
		*(.rodata)
		*(.ctors)
		. = ALIGN(4);
		__ctor_start = .;
		*(.init_array)
		__ctor_end = .;
		__dtor_start = .;
		*(.fini_array)
		__dtor_end = .;
	} > FLASH

	/* Initialized data needs special handling because it lives in two places */
	.data :
	{
		__data_romstart = LOADADDR(.data);
		__data_start = .;
		*(.data)
		__data_end = .;
	} > SRAM AT> FLASH

	/* BSS is pretty straightforward */
	.bss :
	{
		__bss_start__ = .;
		*(.bss)
		__bss_end__ = .;

		__heap_start = .;
		. = ALIGN(4);
		. += 0x400;

		__end = .;
		. = ORIGIN(SRAM) + LENGTH(SRAM) - 4;
		__stack = .;

	} > SRAM

	/* SFRs */
	.sfr_ahb1 :
	{
		. += 1024;		/* DMA not implemented */
		. += 3072;		/* Reserved */
		. = ALIGN(1024);
		*(.rcc)
	} > AHB1

	.sfr_ahb2 :
	{
		. = ALIGN(1024);
		*(.gpioa)
		. = ALIGN(1024);
		*(.gpiob)
		. = ALIGN(1024);
		*(.gpioc)
	} > AHB2

	.sfr_apb1 :
	{
		. += 1024;		/* TIM2 not yet implemented */
		/*
		. = ALIGN(1024);
		*(.usart2)
		*/
	} > APB1

	.sfr_apb2 :
	{
		. += 1024;		/* TIM1 not yet implemented */
	} > APB2
}
