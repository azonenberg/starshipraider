EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 15
Title "MAXWELL Main Board"
Date "2020-06-17"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1000 4500 1000 1500
U 5EDD7150
F0 "Power Supply" 50
F1 "psu.sch" 50
F2 "12V0" O R 2000 4650 50 
F3 "GND" O R 2000 5750 50 
F4 "3V3" O R 2000 4850 50 
F5 "VBACKLIGHT" O R 2000 4550 50 
F6 "2V5" O R 2000 4950 50 
F7 "2V0" O R 2000 5050 50 
F8 "1V8" O R 2000 5150 50 
F9 "1V5" O R 2000 5250 50 
F10 "1V2" O R 2000 5350 50 
F11 "1V0" O R 2000 5450 50 
F12 "RAM_VREF" O R 2000 5550 50 
F13 "RAM_VTT" O R 2000 5650 50 
F14 "5V0" O R 2000 4750 50 
F15 "5V0_N" O R 2000 5850 50 
$EndSheet
$Sheet
S 6850 1000 1500 2850
U 5EDD71A3
F0 "MCU" 50
F1 "mcu.sch" 50
F2 "S7_SPI_CS_N" O L 6850 1050 50 
F3 "S7_SPI_SCK" O L 6850 1150 50 
F4 "S7_SPI_MOSI" O L 6850 1250 50 
F5 "S7_SPI_MISO" I L 6850 1350 50 
F6 "K7_SPI_CS_N" O L 6850 3450 50 
F7 "K7_SPI_SCK" O L 6850 3750 50 
F8 "K7_SPI_MOSI" O L 6850 3550 50 
F9 "K7_SPI_MISO" I L 6850 3650 50 
F10 "PROBE_I2C_SDA" B L 6850 1850 50 
F11 "PROBE_I2C_SCL" O L 6850 1950 50 
F12 "S7_RST_N" O L 6850 1450 50 
F13 "S7_INIT_B" B L 6850 1550 50 
F14 "S7_DONE" I L 6850 1650 50 
F15 "K7_INIT_B" B R 8350 3750 50 
F16 "K7_RST_N" O R 8350 3650 50 
F17 "K7_DONE" I R 8350 3550 50 
F18 "RAM_SDA" B R 8350 1050 50 
F19 "RAM_SCL" O R 8350 1150 50 
F20 "PLL_SPI_LE" O R 8350 1350 50 
F21 "PLL_SPI_SCK" O R 8350 1450 50 
F22 "PLL_SPI_DATA" O R 8350 1550 50 
F23 "PLL_STATUS_LD" B R 8350 1650 50 
F24 "PLL_STATUS_CLKIN0" B R 8350 1850 50 
F25 "PLL_STATUS_CLKIN1" B R 8350 1950 50 
F26 "PLL_STATUS_HOLDOVER" B R 8350 1750 50 
$EndSheet
$Sheet
S 1000 3000 1050 1150
U 5EDD71F2
F0 "RAM" 50
F1 "ram.sch" 50
F2 "1V5" I R 2050 3150 50 
F3 "GND" I R 2050 3450 50 
F4 "RAM_VREF" I R 2050 3250 50 
F5 "RAM_VTT" I R 2050 3350 50 
F6 "3V3" O R 2050 3050 50 
F7 "RAM_CLK_P" I R 2050 3850 50 
F8 "RAM_CLK_N" I R 2050 3950 50 
F9 "SODIMM_SDA" O L 1000 3050 50 
F10 "SODIMM_SCL" I L 1000 3150 50 
$EndSheet
$Sheet
S 4850 1000 1400 2050
U 5EDD723A
F0 "Inputs" 50
F1 "inputs.sch" 50
F2 "S7_CLK_P" I L 4850 1050 50 
F3 "S7_CLK_N" I L 4850 1150 50 
F4 "S7_SPI_CS_N" I R 6250 1050 50 
F5 "S7_SPI_SCK" I R 6250 1150 50 
F6 "S7_SPI_MOSI" I R 6250 1250 50 
F7 "S7_SPI_MISO" O R 6250 1350 50 
F8 "K7_CLK_P" I L 4850 1350 50 
F9 "K7_CLK_N" I L 4850 1450 50 
F10 "2V5" I R 6250 2350 50 
F11 "GND" I R 6250 2650 50 
F12 "3V3" I R 6250 2250 50 
F13 "1V8" I R 6250 2450 50 
F14 "1V0" I R 6250 2550 50 
F15 "S7_RST_N" I R 6250 1450 50 
F16 "S7_INIT_B" B R 6250 1550 50 
F17 "S7_DONE" O R 6250 1650 50 
F18 "12V0" I R 6250 2150 50 
F19 "I2C_SDA" B R 6250 1850 50 
F20 "I2C_SCL" I R 6250 1950 50 
F21 "EXT_TRIG_1_P" I L 4850 2250 50 
F22 "EXT_TRIG_1_N" I L 4850 2350 50 
F23 "LA_REFCLK_P" I L 4850 1650 50 
F24 "LA_REFCLK_N" I L 4850 1750 50 
F25 "SYNC_CLK_1_P" I L 4850 1950 50 
F26 "SYNC_CLK_1_N" I L 4850 2050 50 
F27 "TRIG_OUT_P" O L 4850 2550 50 
F28 "TRIG_OUT_N" O L 4850 2650 50 
F29 "GTX_TRIG_OUT_P" O L 4850 2850 50 
F30 "GTX_TRIG_OUT_N" O L 4850 2950 50 
$EndSheet
$Sheet
S 1000 1000 1000 1500
U 5EDDB439
F0 "QSFP+" 50
F1 "qsfp.sch" 50
F2 "XG_REFCLK_P" I R 2000 1050 50 
F3 "XG_REFCLK_N" I R 2000 1150 50 
$EndSheet
$Sheet
S 6850 4050 1500 1450
U 5EF1FA37
F0 "FPGA Support" 50
F1 "fpgasupport.sch" 50
F2 "K7_QSPI_CS_N" I L 6850 4100 50 
F3 "GND" I L 6850 5400 50 
F4 "2V0" I L 6850 4900 50 
F5 "3V3" I L 6850 4700 50 
F6 "1V8" I L 6850 5000 50 
F7 "1V0" I L 6850 5300 50 
F8 "1V2" I L 6850 5200 50 
F9 "2V5" I L 6850 4800 50 
F10 "1V5" I L 6850 5100 50 
F11 "K7_QSPI_DQ0" I L 6850 4200 50 
F12 "K7_QSPI_DQ1" I L 6850 4300 50 
F13 "K7_QSPI_DQ2" I L 6850 4400 50 
F14 "K7_QSPI_DQ3" I L 6850 4500 50 
F15 "K7_INIT_B" B R 8350 4100 50 
F16 "K7_RST_N" I R 8350 4200 50 
F17 "K7_DONE" O R 8350 4300 50 
$EndSheet
$Sheet
S 4850 3400 1400 1750
U 5EE2921B
F0 "RGMII PHY" 50
F1 "rgmii.sch" 50
F2 "K7_QSPI_DQ0" B R 6250 4200 50 
F3 "K7_QSPI_DQ1" B R 6250 4300 50 
F4 "K7_QSPI_DQ2" B R 6250 4400 50 
F5 "K7_QSPI_DQ3" B R 6250 4500 50 
F6 "K7_QSPI_CS_N" B R 6250 4100 50 
F7 "EXT_TRIG_2_P" I L 4850 3450 50 
F8 "EXT_TRIG_2_N" I L 4850 3550 50 
F9 "SYNC_CLK_2_P" I L 4850 3750 50 
F10 "SYNC_CLK_2_N" I L 4850 3850 50 
F11 "ETH_REFCLK" I L 4850 4050 50 
F12 "3V3" I L 4850 4250 50 
F13 "1V2" I L 4850 4350 50 
F14 "GND" I L 4850 4450 50 
F15 "K7_SPI_CS_N" I R 6250 3450 50 
F16 "K7_SPI_MOSI" I R 6250 3550 50 
F17 "K7_SPI_MISO" O R 6250 3650 50 
F18 "K7_SPI_SCK" I R 6250 3750 50 
F19 "PLL_SYNC" O L 4850 4850 50 
F20 "PPS_IN_P" I R 6250 4700 50 
F21 "PPS_IN_N" I R 6250 4800 50 
F22 "GPIO_IN_P" I R 6250 5000 50 
F23 "GPIO_IN_N" I R 6250 5100 50 
$EndSheet
$Sheet
S 2500 1000 1500 5250
U 5EEF3B79
F0 "Clocking" 50
F1 "clocking.sch" 50
F2 "S7_CLK_P" O R 4000 1050 50 
F3 "S7_CLK_N" O R 4000 1150 50 
F4 "K7_CLK_P" O R 4000 1350 50 
F5 "K7_CLK_N" O R 4000 1450 50 
F6 "ETH_REFCLK" O R 4000 4050 50 
F7 "LA_REFCLK_P" O R 4000 1650 50 
F8 "LA_REFCLK_N" O R 4000 1750 50 
F9 "SYNC_CLK_1_P" O R 4000 1950 50 
F10 "SYNC_CLK_1_N" O R 4000 2050 50 
F11 "SYNC_CLK_2_P" O R 4000 3750 50 
F12 "SYNC_CLK_2_N" O R 4000 3850 50 
F13 "XG_REFCLK_P" O L 2500 1050 50 
F14 "XG_REFCLK_N" O L 2500 1150 50 
F15 "EXT_TRIG_1_P" O R 4000 2250 50 
F16 "EXT_TRIG_1_N" O R 4000 2350 50 
F17 "EXT_TRIG_2_P" O R 4000 3450 50 
F18 "EXT_TRIG_2_N" O R 4000 3550 50 
F19 "TRIG_OUT_P" I R 4000 2550 50 
F20 "TRIG_OUT_N" I R 4000 2650 50 
F21 "GTX_TRIG_OUT_P" I R 4000 2850 50 
F22 "GTX_TRIG_OUT_N" I R 4000 2950 50 
F23 "RAM_CLK_P" O L 2500 3850 50 
F24 "RAM_CLK_N" O L 2500 3950 50 
F25 "PLL_SYNC" B R 4000 4850 50 
F26 "PLL_SPI_LE" I R 4000 4950 50 
F27 "PLL_SPI_CLK" I R 4000 5050 50 
F28 "PLL_SPI_DATA" I R 4000 5150 50 
F29 "PLL_STATUS_HOLDOVER" B R 4000 5250 50 
F30 "PLL_STATUS_LD" B R 4000 5350 50 
F31 "PLL_STATUS_CLKIN0" B R 4000 5450 50 
F32 "PLL_STATUS_CLKIN1" B R 4000 5550 50 
F33 "GND" O R 4000 4550 50 
F34 "PPS_IN_P" O R 4000 5750 50 
F35 "PPS_IN_N" O R 4000 5850 50 
F36 "GPIO_IN_P" O R 4000 6050 50 
F37 "GPIO_IN_N" O R 4000 6150 50 
F38 "3V3" I R 4000 4350 50 
F39 "5V0" I R 4000 4250 50 
F40 "2V5" I R 4000 4450 50 
F41 "5V0_N" I R 4000 4650 50 
$EndSheet
Text Label 6250 2150 0    50   ~ 0
12V0
Text Label 6250 2250 0    50   ~ 0
3V3
Text Label 6250 2350 0    50   ~ 0
2V5
Text Label 6250 2450 0    50   ~ 0
1V8
Text Label 6250 2550 0    50   ~ 0
1V0
Text Label 6250 2650 0    50   ~ 0
GND
Wire Wire Line
	6850 1050 6250 1050
Wire Wire Line
	6250 1150 6850 1150
Wire Wire Line
	6850 1250 6250 1250
Wire Wire Line
	6250 1350 6850 1350
Wire Wire Line
	6850 1450 6250 1450
Wire Wire Line
	6250 1550 6850 1550
Wire Wire Line
	6850 1650 6250 1650
Wire Wire Line
	6250 1850 6850 1850
Wire Wire Line
	6850 1950 6250 1950
Wire Wire Line
	2500 1050 2000 1050
Wire Wire Line
	2000 1150 2500 1150
Text Label 4850 4250 2    50   ~ 0
3V3
Text Label 4850 4350 2    50   ~ 0
1V2
Text Label 4850 4450 2    50   ~ 0
GND
Wire Wire Line
	6850 3450 6250 3450
Wire Wire Line
	6250 3550 6850 3550
Wire Wire Line
	6250 3650 6850 3650
Wire Wire Line
	6850 3750 6250 3750
Wire Wire Line
	6850 4500 6250 4500
Wire Wire Line
	6250 4400 6850 4400
Wire Wire Line
	6850 4300 6250 4300
Wire Wire Line
	6250 4200 6850 4200
Wire Wire Line
	6850 4100 6250 4100
Text Label 6850 4700 2    50   ~ 0
3V3
Text Label 6850 4800 2    50   ~ 0
2V5
Text Label 6850 4900 2    50   ~ 0
2V0
Text Label 6850 5000 2    50   ~ 0
1V8
Text Label 6850 5100 2    50   ~ 0
1V5
Text Label 6850 5200 2    50   ~ 0
1V2
Text Label 6850 5300 2    50   ~ 0
1V0
Text Label 6850 5400 2    50   ~ 0
GND
Text Label 2000 4850 0    50   ~ 0
3V3
Text Label 2000 5350 0    50   ~ 0
1V2
Text Label 2000 5750 0    50   ~ 0
GND
Text Label 2000 5450 0    50   ~ 0
1V0
Text Label 2000 5250 0    50   ~ 0
1V5
Text Label 2000 5150 0    50   ~ 0
1V8
Text Label 2000 5050 0    50   ~ 0
2V0
Text Label 2000 4950 0    50   ~ 0
2V5
Text Label 2000 4650 0    50   ~ 0
12V0
Text Label 2000 4550 0    50   ~ 0
VBACKLIGHT
Text Label 2000 5550 0    50   ~ 0
RAM_VREF
Text Label 2000 5650 0    50   ~ 0
RAM_VTT
Text Label 2050 3150 0    50   ~ 0
1V5
Text Label 2050 3250 0    50   ~ 0
RAM_VREF
Text Label 2050 3350 0    50   ~ 0
RAM_VTT
Text Label 2050 3450 0    50   ~ 0
GND
Wire Wire Line
	2500 3950 2050 3950
Wire Wire Line
	2050 3850 2500 3850
Text Label 2050 3050 0    50   ~ 0
3V3
Text Label 1000 3050 2    50   ~ 0
RAM_SDA
Text Label 1000 3150 2    50   ~ 0
RAM_SCL
Text Label 8350 1050 0    50   ~ 0
RAM_SDA
Text Label 8350 1150 0    50   ~ 0
RAM_SCL
Text Label 4000 4250 0    50   ~ 0
5V0
Text Label 4000 4350 0    50   ~ 0
3V3
Text Label 4000 4450 0    50   ~ 0
2V5
Text Label 4000 4550 0    50   ~ 0
GND
Text Label 4000 4650 0    50   ~ 0
5V0_N
Text Label 4000 4850 0    50   ~ 0
PLL_SYNC
Text Label 4000 4950 0    50   ~ 0
PLL_SPI_LE
Text Label 4000 5050 0    50   ~ 0
PLL_SPI_CLK
Text Label 4000 5150 0    50   ~ 0
PLL_SPI_DATA
Text Label 4000 5250 0    50   ~ 0
PLL_STATUS_HOLDOVER
Text Label 4000 5350 0    50   ~ 0
PLL_STATUS_LD
Text Label 4000 5450 0    50   ~ 0
PLL_STATUS_CLKIN0
Text Label 4000 5550 0    50   ~ 0
PLL_STATUS_CLKIN1
Text Label 4000 5750 0    50   ~ 0
PPS_IN_P
Text Label 4000 5850 0    50   ~ 0
PPS_IN_N
Text Label 4000 6050 0    50   ~ 0
GPIO_IN_P
Text Label 4000 6150 0    50   ~ 0
GPIO_IN_N
Text Label 8350 1350 0    50   ~ 0
PLL_SPI_LE
Text Label 8350 1450 0    50   ~ 0
PLL_SPI_CLK
Text Label 8350 1550 0    50   ~ 0
PLL_SPI_DATA
Text Label 8350 1750 0    50   ~ 0
PLL_STATUS_HOLDOVER
Text Label 8350 1650 0    50   ~ 0
PLL_STATUS_LD
Text Label 8350 1850 0    50   ~ 0
PLL_STATUS_CLKIN0
Text Label 8350 1950 0    50   ~ 0
PLL_STATUS_CLKIN1
Text Label 6250 4700 0    50   ~ 0
PPS_IN_P
Text Label 6250 4800 0    50   ~ 0
PPS_IN_N
Text Label 6250 5000 0    50   ~ 0
GPIO_IN_P
Text Label 6250 5100 0    50   ~ 0
GPIO_IN_N
Text Label 2000 4750 0    50   ~ 0
5V0
Text Label 2000 5850 0    50   ~ 0
5V0_N
Wire Wire Line
	8350 4100 8400 4100
Wire Wire Line
	8400 4100 8400 3750
Wire Wire Line
	8400 3750 8350 3750
Wire Wire Line
	8350 3650 8450 3650
Wire Wire Line
	8450 3650 8450 4200
Wire Wire Line
	8450 4200 8350 4200
Wire Wire Line
	8350 4300 8500 4300
Wire Wire Line
	8500 4300 8500 3550
Wire Wire Line
	8500 3550 8350 3550
Wire Wire Line
	4000 4850 4850 4850
Wire Wire Line
	4000 3450 4850 3450
Wire Wire Line
	4000 3550 4850 3550
Wire Wire Line
	4000 3750 4850 3750
Wire Wire Line
	4000 3850 4850 3850
Wire Wire Line
	4000 4050 4850 4050
Wire Wire Line
	4000 1050 4850 1050
Wire Wire Line
	4000 1150 4850 1150
Wire Wire Line
	4000 1350 4850 1350
Wire Wire Line
	4000 1450 4850 1450
Wire Wire Line
	4000 1650 4850 1650
Wire Wire Line
	4000 1750 4850 1750
Wire Wire Line
	4000 1950 4850 1950
Wire Wire Line
	4000 2050 4850 2050
Wire Wire Line
	4000 2250 4850 2250
Wire Wire Line
	4000 2350 4850 2350
Wire Wire Line
	4000 2550 4850 2550
Wire Wire Line
	4000 2650 4850 2650
Wire Wire Line
	4000 2850 4850 2850
Wire Wire Line
	4000 2950 4850 2950
$EndSCHEMATC
