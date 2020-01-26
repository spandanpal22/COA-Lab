`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:59:50 01/27/2020
// Design Name:   MUX4to1
// Module Name:   H:/Xilinx My Work/lab2/MUX4to1_TEXT.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX4to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX4to1_TEXT;

	// Inputs
	reg in0;
	reg in1;
	reg in2;
	reg in3;
	reg sel1;
	reg sel0;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MUX4to1 uut (
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.sel1(sel1), 
		.sel0(sel0), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in0 = 1;
		in1 = 0;
		in2 = 0;
		in3 = 0;
		sel1 = 0;
		sel0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in0 = 0;
		in1 = 1;
		in2 = 0;
		in3 = 0;
		sel1 = 0;
		sel0 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in0 = 0;
		in1 = 0;
		in2 = 1;
		in3 = 0;
		sel1 = 1;
		sel0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 1;
		sel1 = 1;
		sel0 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

