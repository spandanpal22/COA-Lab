`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:19:51 02/05/2020
// Design Name:   JK_FF
// Module Name:   C:/Xilinx/roll18cs8001/JK_TEST.v
// Project Name:  roll18cs8001
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_TEST;

	// Inputs
	reg J;
	reg K;
	reg clk;

	// Outputs
	wire Q;
	wire Qbar;

	// Instantiate the Unit Under Test (UUT)
	JK_FF uut (
		.J(J), 
		.K(K), 
		.clk(clk), 
		.Q(Q), 
		.Qbar(Qbar)
	);

	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #10 clk=~clk;
	
	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		J = 0;
		K = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
		J = 1;
		K = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		J = 0;
		K = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		J = 1;
		K = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

