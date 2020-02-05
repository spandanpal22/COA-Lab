`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:26:11 02/05/2020
// Design Name:   D_FF
// Module Name:   C:/Xilinx/roll18cs8001/D_TEST.v
// Project Name:  roll18cs8001
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_TEST;

	// Inputs
	reg D;
	reg clk;

	// Outputs
	wire Q;
	wire Qbar;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.D(D), 
		.clk(clk), 
		.Q(Q), 
		.Qbar(Qbar)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #10 clk=~clk;
	
	initial begin
		// Initialize Inputs
		D = 0;
		
		

		// Wait 100 ns for global reset to finish
		#100;
		D = 1;
		
		

		// Wait 100 ns for global reset to finish
		#100;
		

	end
      
endmodule

