`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:41:00 02/05/2020
// Design Name:   NOT
// Module Name:   H:/Xilinx My Work/lab2/NOT_TEST.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NOT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NOT_TEST;

	// Inputs
	reg in1;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	NOT uut (
		.in1(in1), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in1 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

