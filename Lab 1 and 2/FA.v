`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:07:10 01/23/2020 
// Design Name: 
// Module Name:    FA 
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
module FA(A,B,Cin,S,Cout
    );

input A,B,Cin;
output S,Cout;
wire C1,S1,C2,and1;

HA HA1 (
    .in1(A), 
    .in2(B), 
    .s(S1), 
    .c(C1)
    );
HA HA2 (
    .in1(S1), 
    .in2(Cin), 
    .s(S), 
    .c(C2)
    );
AND AND1 (
    .in1(Cin), 
    .in2(S1), 
    .out(and1)
    );

OR OR1 (
    .in1(and1), 
    .in2(C1), 
    .out(Cout)
    );

endmodule
