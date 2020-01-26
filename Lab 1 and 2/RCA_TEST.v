`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:54:24 01/23/2020
// Design Name:   RCA4
// Module Name:   H:/Xilinx My Work/lab2/RCA_TEST.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_TEST;

	// Inputs
	reg A3;
	reg A2;
	reg A1;
	reg A0;
	reg B3;
	reg B2;
	reg B1;
	reg B0;
	reg Cin;

	// Outputs
	wire S3;
	wire S2;
	wire S1;
	wire S0;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	RCA4 uut (
		.A3(A3), 
		.A2(A2), 
		.A1(A1), 
		.A0(A0), 
		.B3(B3), 
		.B2(B2), 
		.B1(B1), 
		.B0(B0), 
		.Cin(Cin), 
		.S3(S3), 
		.S2(S2), 
		.S1(S1), 
		.S0(S0), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A3 = 0;
		A2 = 0;
		A1 = 0;
		A0 = 0;
		B3 = 0;
		B2 = 0;
		B1 = 0;
		B0 = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A3 = 1;
		A2 = 1;
		A1 = 1;
		A0 = 1;
		B3 = 1;
		B2 = 1;
		B1 = 1;
		B0 = 1;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A3 = 0;
		A2 = 0;
		A1 = 0;
		A0 = 0;
		B3 = 0;
		B2 = 0;
		B1 = 0;
		B0 = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

