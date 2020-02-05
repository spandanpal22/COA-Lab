`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:34:35 02/05/2020
// Design Name:   T_FF
// Module Name:   C:/Xilinx/roll18cs8001/T_TEST.v
// Project Name:  roll18cs8001
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_TEST;

	// Inputs
	reg T;
	reg clk;

	// Outputs
	wire Q;
	wire Qbar;

	// Instantiate the Unit Under Test (UUT)
	T_FF uut (
		.T(T), 
		.clk(clk), 
		.Q(Q), 
		.Qbar(Qbar)
	);

	initial begin
		// Initialize Inputs
		T = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #10 clk=~clk;
	
	initial begin
		// Initialize Inputs
		T = 0;
		
		

		// Wait 100 ns for global reset to finish
		#100;
		T = 1;
		
		

		// Wait 100 ns for global reset to finish
		#100;
		

	end
      
endmodule

