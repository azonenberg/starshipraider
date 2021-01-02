`timescale 1ns / 1ps
`default_nettype none

`include "I2CTransceiver.svh"

module active_host#(
        parameter USB_CTRL_ADDR = 8'h44
    ) (
    input wire   emcclk,

    // UART over SBU wires.
    // TX and RX depend on cable orientation thus these must be tri-stated.
    inout wire logic  [1:0] sbu,

    // USB-C Controller I2C Connection
    inout wire logic  i2c_sda,
    output logic i2c_scl,
    input wire   i2c_int,

    // Power gating signals
    output logic probe_pwr_en,
    output logic probe_vbus_en_b,

    // Control SPI interface
    input wire   spi_copi,
    output logic spi_cipo,
    input wire   spi_cs,
    input wire   spi_clk
    );

    // Reset control
    logic rst = 1;
    logic [3:0] rst_ctr = 0;
    always_ff @(posedge emcclk) begin : reset_p
        if (rst_ctr < 15) begin
            rst_ctr <= rst_ctr + 1;
            rst     <= 1;
        end else begin
            rst     <= 0;
        end
    end : reset_p

    // --------- USB-C Control
    enum  {

    } usb_state;
    logic i2c_in_t i2c_cin;
    logic i2c_out_t i2c_cout;
    I2CTransceiver i2c_driver(
        .clk        (emcclk     ),
        .clkdiv     (1000       ), // 100Mhz -> 100kHz

        .i2c_scl    (i2c_scl    ),
        .i2c_sda    (i2c_sda    ),

        .cin        (i2c_cin    ),
        .cout       (i2c_cout   )
    );
    I2CRegisterHelper i2c_register(
        .clk        (emcclk         ),
        .slave_addr (USB_CTRL_ADDR  ),

        .request    (               ), // NC - no arbiter
        .done       (               ), // NC - no arbiter
        .ack        (1'b1           ), // No arbiter - should always ACK
        .cin        (i2c_cin        ),
        .cout       (i2c_cout       )
    );

    always_ff @(posedge emcclk) begin : usb_c_p
        if (rst) begin
            
        end else begin
            
        end
    end : usb_c_p

endmodule

`default_nettype wire
