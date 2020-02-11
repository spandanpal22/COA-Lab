`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:52:45 02/11/2020
// Design Name:   NAND
// Module Name:   H:/NIT Durgapur/2nd Year/4th Semester/COA Lab/lab2/NAND_TEST.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NAND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NAND_TEST;

	// Inputs
	reg in1;
	reg in2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	NAND uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      in1 = 0;
		in2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in1 = 1;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in1 = 1;
		in2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

