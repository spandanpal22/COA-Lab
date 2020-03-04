`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:27 03/04/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(S,A,B,result);

input wire[2:0] S;
input wire[3:0] A,B;
output reg[4:0] result;

always@(*)
	begin
		case(S)
			3'b000: result<=A+B;
			3'b001: result<=A-B;
			3'b010: result<=A+1;
			3'b011: result<=A-1;
			3'b100: result<=A<<1;
			3'b101: result<=A>>1;
			3'b110: result<=A&B;
			3'b111: result<=(A==B)?1:0;
			default: result<=0;
		endcase
	end


endmodule
