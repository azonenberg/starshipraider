# Active host test gateware

The plan is just a simple register interface to everything.

- A small state machine to control the USB-C side that can be
  controlled/queried via a few SPI registers.
- The simplest possible register interface to the UART peripheral.
- A register interface to control the io pins.
Tests will be contained in... `tests/` and written in CocoTB.