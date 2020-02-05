`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:45:27 02/05/2020
// Design Name:   OR
// Module Name:   H:/Xilinx My Work/lab2/OR_TEST.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module OR_TEST;

	// Inputs
	reg in1;
	reg in2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	OR uut (
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

