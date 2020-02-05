`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:47:33 02/05/2020
// Design Name:   COMPARATOR
// Module Name:   D:/CS8010/COMPARATOR_TEST.v
// Project Name:  CS8010
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: COMPARATOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module COMPARATOR_TEST;

	// Inputs
	reg a0;
	reg a1;
	reg a2;
	reg a3;
	reg b0;
	reg b1;
	reg b2;
	reg b3;

	// Outputs
	wire e;
	wire g;
	wire s;

	// Instantiate the Unit Under Test (UUT)
	COMPARATOR uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.b0(b0), 
		.b1(b1), 
		.b2(b2), 
		.b3(b3), 
		.e(e), 
		.g(g), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a0 = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;
		b0 = 0;
		b1 = 0;
		b2 = 0;
		b3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        a0 = 0;
		a1 = 0;
		a2 = 0;
		a3 = 1;
		b0 = 1;
		b1 = 0;
		b2 = 1;
		b3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a0 = 1;
		a1 = 0;
		a2 = 1;
		a3 = 0;
		b0 = 0;
		b1 = 1;
		b2 = 0;
		b3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a0 = 0;
		a1 = 0;
		a2 = 1;
		a3 = 1;
		b0 = 0;
		b1 = 0;
		b2 = 1;
		b3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

