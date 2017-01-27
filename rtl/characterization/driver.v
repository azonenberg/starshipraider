module driver(

	(* LOC = "P3" *)
	output reg prot_relay_en = 0,

	(* LOC = "P4" *)
	(* IBUF_TYPE = "ANALOG" *)
	input wire vin_lo,

	(* LOC = "P6" *)
	(* IBUF_TYPE = "ANALOG" *)
	input wire vin_hi,

	(* LOC = "P7" *)
	output reg ok_led_en,

	(* LOC = "P8" *)
	output reg fault_led_en,

	(* LOC = "P15" *)
	output reg vhi_led_en = 0,

	(* LOC = "P16" *)
	output reg vlo_led_en = 0
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Time base for re-enabling faulted outputs

	//The 2 MHz RC oscillator
	wire clk_cnt;
	wire clk;
	GP_RCOSC #(
		.PWRDN_EN(0),
		.AUTO_PWRDN(0),
		.OSC_FREQ("2M"),
		.HARDIP_DIV(2),
		.FABRIC_DIV(1)
	) rcosc (
		.PWRDN(1'b0),
		.CLKOUT_HARDIP(clk_cnt),
		.CLKOUT_FABRIC(clk)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// System reset stuff

	//Power-on reset
	wire por_done;
	GP_POR #(
		.POR_TIME(500)
	) por (
		.RST_DONE(por_done)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Check if the input voltage (10x attenuated, before reference) is greater than 5V.

	wire vref_500;
	GP_VREF #( .VIN_DIV(4'd1), .VREF(16'd500)  ) vr500  ( .VIN(1'b0), .VOUT(vref_500)  );

	//Workaround for gp4par bug.
	//When not LOC'd, we get placed at ACMP_2 and fail for reasons unknown
	wire vin_too_high;
	(* LOC = "ACMP_0" *)
	GP_ACMP #(.BANDWIDTH("LOW"), .VIN_ATTEN(4'd1), .VIN_ISRC_EN(1'b0), .HYSTERESIS(8'd25) )
		cmp_vinhi (.PWREN(por_done), .OUT(vin_too_high), .VIN(vin_hi), .VREF(vref_500) );

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Check if the input voltage (shifted) is less than ground

	wire vref_850;
	GP_VREF #( .VIN_DIV(4'd1), .VREF(16'd650)  ) vr875  ( .VIN(1'b0), .VOUT(vref_850)  );

	wire vin_not_negative;
	GP_ACMP #(.BANDWIDTH("LOW"), .VIN_ATTEN(4'd1), .VIN_ISRC_EN(1'b0), .HYSTERESIS(8'd25) )
		cmp_vinlo (.PWREN(por_done), .OUT(vin_not_negative), .VIN(vin_lo), .VREF(vref_850) );

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Turn off the output if the input voltage gets too high. Re-enable after a time delay.

	wire input_ok		= vin_not_negative && !vin_too_high;
	wire input_disable 	= !input_ok;

	//Count cycles from fault until we re-enable the input
	localparam COUNT_LIMIT = 1024;
	reg[13:0] enable_count = COUNT_LIMIT;
	always @(posedge clk_cnt, posedge input_disable) begin

		if(input_disable)
			enable_count	<= 0;

		else begin
			enable_count		<= enable_count - 1'h1;
			if(enable_count == 0)
				enable_count	<= COUNT_LIMIT;
		end

	end
	wire re_enable = (enable_count == 0);

	//Register the input and see if it's been OK for two timer cycles in a row
	reg input_ok_ff = 0;
	reg input_ok_ff2 = 0;
	always @(posedge clk) begin

		//Save state on timer ticks if good
		if(re_enable && input_ok) begin
			input_ok_ff		<= 1;
			input_ok_ff2	<= input_ok_ff;
		end

		//If bad, clear state right away
		if(!input_ok) begin
			input_ok_ff		<= 0;
			input_ok_ff2	<= 0;
		end

	end

	//Open the circuit as soon as we get a fault. Re-enable after two consecutive OK periods
	always @(posedge clk) begin

		if(input_ok_ff && input_ok_ff2)
			prot_relay_en	<= 1;

		if(!input_ok)
			prot_relay_en	<= 0;

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Status LEDs

	always @(*) begin
		ok_led_en		<= prot_relay_en;
		fault_led_en	<= !input_ok;

		//DEBUG
		vhi_led_en		<= vin_too_high;
		vlo_led_en		<= !vin_not_negative;
	end

endmodule
