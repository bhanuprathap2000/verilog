`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:43:22 10/13/2020
// Design Name:   muxdatflowstyle
// Module Name:   D:/HDL/HDL CODES/Muxdataflow/testbench_2_1mux.v
// Project Name:  Muxdataflow
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: muxdatflowstyle
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_2_1mux;

	// Inputs
	reg [1:0] a;
	reg s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	muxdatflowstyle uut (
		.y(y), 
		.a(a), 
		.s(s)
	);

	initial begin
		a=2'b00;
		s=0;
		#5 a=2'b01;
		s=0;
		#5 a=2'b10;
		s=0;
		#5 a=2'b11;
		s=0;
		#5 a=2'b00;
		s=1;
		#5 a=2'b01;
		s=1;
		#5 a=2'b10;
		s=1;
		#5 a=2'b11;
		s=1;
		

	end
      
endmodule

