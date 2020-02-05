`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:55:16 02/05/2020
// Design Name:   SR_FF
// Module Name:   C:/Xilinx/roll18cs8001/SR_TEST.v
// Project Name:  roll18cs8001
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SR_TEST;

	// Inputs
	reg S;
	reg R;
	reg clk;

	// Outputs
	wire Q;
	wire Qbar;

	// Instantiate the Unit Under Test (UUT)
	SR_FF uut (
		.S(S), 
		.R(R), 
		.clk(clk), 
		.Q(Q), 
		.Qbar(Qbar)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;
		clk=0;
		

		// Wait 100 ns for global reset to finish
		#100;
	end
	
	always #10 clk=~clk;
	
	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		S = 0;
		R = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
		S = 1;
		R = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		S = 0;
		R = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

