`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:26 02/05/2020 
// Design Name: 
// Module Name:    JK_FF 
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
module JK_FF(J,K,clk,Q,Qbar
    );
input J,K,clk;
output reg Q,Qbar;

always@(posedge clk)
	begin
		Q<=(Q&(~K))|((~Q)&J);
		Qbar<=((~Q)&(~J))|(Q&K);
	end

endmodule
