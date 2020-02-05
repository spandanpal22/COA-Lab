`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:31:19 02/05/2020 
// Design Name: 
// Module Name:    T_FF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module T_FF(T,clk,Q,Qbar
    );
	 
	 input T,clk;
	 output reg Q,Qbar;
	
	initial begin
		Q=0;
	end
		
	 always@(posedge clk)
	begin
		Q<=T^Q;
		Qbar<=~(T^Q);
	end


endmodule
