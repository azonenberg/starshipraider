module driver(

	(* LOC = "P3" *)
	output reg prot_relay_en,

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
	// Oscillators

	//The 1730 Hz oscillator
	wire clk_108hz;
	GP_LFOSC #(
		.PWRDN_EN(0),
		.AUTO_PWRDN(0),
		.OUT_DIV(16)
	) lfosc (
		.PWRDN(1'b0),
		.CLKOUT(clk_108hz)
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
	// Turn off the output if the input voltage gets too high

	reg input_ok;
	always @(*) begin
		input_ok		<= vin_not_negative && !vin_too_high;

		prot_relay_en	<= input_ok;
		ok_led_en		<= input_ok;
		fault_led_en	<= !input_ok;

		//DEBUG
		vhi_led_en		<= vin_too_high;
		vlo_led_en		<= !vin_not_negative;
	end

endmodule
