CFLAGS=-g -mcpu=cortex-m0
CXXFLAGS=$(CFLAGS) --std=c++17 -fno-exceptions -fno-rtti -g
CC=arm-none-eabi-gcc
CXX=arm-none-eabi-g++
all:
	$(CC) *.S -c $(CFLAGS)
	$(CXX) *.cpp -c $(CXXFLAGS)
	$(CXX) $(CXXFLAGS) *.o -Wl,-T stm32f031.ld -o firmware.elf
	arm-none-eabi-objcopy -O binary --only-section=.text --only-section=.data firmware.elf firmware.bin
	./imagesize.sh
