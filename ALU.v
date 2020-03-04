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

input wire[3:0] S;
input wire[3:0] A,B;
output reg[4:0] result;

always@(*)
	begin
		case(S)
			4'b0000: result<=A+B;
			4'b0001: result<=A-B;
			4'b0010: result<=A+1;
			4'b0011: result<=A-1;
			4'b0100: result<=A<<1;
			4'b0101: result<=A>>1;
			4'b0110: result<=A&B;
			4'b0111: result<=(A==B)?1:0;
			4'b1000: result<=~A;
			4'b1001: result<={A[2:0],A[3]};
			4'b1010: result<={A[0],A[3:1]};
			4'b1011: result<=(A>B)?1:0;
			4'b1100: result<=(A<B)?1:0;
			4'b1101: result<=A^B;
			4'b1110: result<=~(A^B);
			4'b1111: result<=A|B;
			default: result<=0;
		endcase
	end


endmodule
