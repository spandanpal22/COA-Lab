`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:47:08 01/27/2020 
// Design Name: 
// Module Name:    Decoder__binToDec 
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
module Decoder__binToDec(in1,in0,o0,o1,o2,o3
    );
input in1,in0;
output o0,o1,o2,o3;

assign o0=!in1 & !in0;
assign o1=!in1 & in0;
assign o2=in1 & !in0;
assign o3=in1 & in0;

endmodule
