`timescale 1ns/1ps
`default_nettype none

module top(
	input wire 			clk_25mhz,

	input wire[7:0]		probe_p,
	input wire[7:0]		probe_n,

	inout wire			uart_tx,
	input wire			uart_rx,

	input wire			presence_detect,
	output logic		power_en	= 0,

	output logic[3:0]	led			= 0
);

	assign uart_tx = 1'bz;

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clock generation

	wire	clk_200mhz;

	clk_wiz_0 clkwiz(
		.clk_25mhz(clk_25mhz),
		.clk_200mhz(clk_200mhz)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Input buffers

	wire[7:0]	probe;
	DifferentialInputBuffer #(
		.WIDTH(8),
		.IOSTANDARD("LVDS_25"),
		.ODT(1),
		.OPTIMIZE("SPEED")
	) probe_ibuf (
		.pad_in_p(probe_p),
		.pad_in_n(probe_n),
		.fabric_out(probe)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Synchronize async inputs

	wire	present_n;

	ThreeStageSynchronizer #(
		.INIT(0),
		.IN_REG(0)
	) sync_present(
		.clk_in(clk_25mhz),
		.din(presence_detect),
		.clk_out(clk_25mhz),
		.dout(present_n)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Probe power hotswap

	//Wait about 670ms after mate before applying power
	logic[22:0] count = 0;

	enum logic[1:0]
	{
		STATE_OFF,
		STATE_TURNING_ON,
		STATE_ON
	} state = STATE_OFF;

	always_ff @(posedge clk_25mhz) begin

		case(state)

			STATE_OFF: begin

				if(!present_n) begin
					led[0]	<= 1;
					count	<= 1;
					state	<= STATE_TURNING_ON;
				end

			end	//end STATE_OFF

			STATE_TURNING_ON: begin
				count	<= count + 1;

				if(count == 0) begin
					led[1]		<= 1;
					power_en	<= 1;
					state		<= STATE_ON;
				end

			end	//end STATE_TURNING_ON

			STATE_ON: begin
				if(present_n) begin
					led			<= 0;
					power_en	<= 0;
					state		<= STATE_OFF;
				end
			end	//end STATE_ON

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// ILA on the probe inputs

	ila_0 ila(
		.clk(clk_200mhz),
		.probe0(probe[0]),
		.probe1(probe[1]),
		.probe2(probe[2]),
		.probe3(probe[3]),
		.probe4(probe[4]),
		.probe5(probe[5]),
		.probe6(probe[6]),
		.probe7(probe[7])
	);

endmodule
