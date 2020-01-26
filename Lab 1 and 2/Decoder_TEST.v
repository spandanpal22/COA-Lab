`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:53:47 01/27/2020
// Design Name:   Decoder__binToDec
// Module Name:   H:/Xilinx My Work/lab2/Decoder_TEST.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder__binToDec
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_TEST;

	// Inputs
	reg in1;
	reg in0;

	// Outputs
	wire o0;
	wire o1;
	wire o2;
	wire o3;

	// Instantiate the Unit Under Test (UUT)
	Decoder__binToDec uut (
		.in1(in1), 
		.in0(in0), 
		.o0(o0), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in1 = 0;
		in0 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in1 = 1;
		in0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in1 = 1;
		in0 = 1;

		
        
		// Add stimulus here

	end
      
endmodule

