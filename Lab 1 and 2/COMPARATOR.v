`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:01 02/05/2020 
// Design Name: 
// Module Name:    COMPARATOR 
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
module COMPARATOR(a0,a1,a2,a3,b0,b1,b2,b3,e,g,s
    );
	input a0,a1,a2,a3,b0,b1,b2,b3;
	output e,g,s;
	assign e=!(a3^b3)&!(a2^b2)&!(a1^b1)&!(a0^b0);
	assign g=(a3&!b3) | (!(a3^b3)&(a2&!b2)) | (!(a3^b3)&!(a2^b2)&(a1&!b1)) | (!(a3^b3)&!(a2^b2)&!(a1^b1)&(a0&!b0));
	assign s=(b3&!a3) | (!(b3^a3)&(b2&!a2)) | (!(a3^b3)&!(a2^b2)&(b1&!a1)) | (!(a3^b3)&!(a2^b2)&!(a1^b1)&(b0&!a0));
endmodule
