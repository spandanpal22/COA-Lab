`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:51:22 03/04/2020
// Design Name:   ALU
// Module Name:   C:/Users/NITDGP/Desktop/18CS8001/alu/ALU_TEST.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TEST;

	// Inputs
	reg [2:0] S;
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [4:0] result;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.S(S), 
		.A(A), 
		.B(B), 
		.result(result)
	);
reg[2:0] i;
	initial begin
		// Initialize Inputs
		// Wait 100 ns for global reset to finish
		
		for(i=0;i<8;i=i+3'b001)
			begin
				S=i;
				A=3;
				B=4;
				#100;
			end
        
		// Add stimulus here

	end
      
endmodule

