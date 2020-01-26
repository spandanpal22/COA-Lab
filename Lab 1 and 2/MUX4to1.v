`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:55:22 01/27/2020 
// Design Name: 
// Module Name:    MUX4to1 
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
module MUX4to1(in0,in1,in2,in3,sel1,sel0,out
    );
input in0,in1,in2,in3,sel1,sel0;
output out;

assign out=(!sel1 & !sel0 & in0)|(!sel1 & sel0 & in1)|(sel1 & !sel0 & in2)|(sel1 & sel0 & in3);

endmodule
