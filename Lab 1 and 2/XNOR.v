`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:05 02/11/2020 
// Design Name: 
// Module Name:    XNOR 
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
module XNOR(in1,in2,out
    );
	 input in1,in2;
	 output out;
	 assign out=~(in1^in2);


endmodule
