`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:50 01/23/2020 
// Design Name: 
// Module Name:    RCA4 
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
module RCA4(A3,A2,A1,A0,B3,B2,B1,B0,Cin,S3,S2,S1,S0,Cout
    );
input A3,A2,A1,A0,B3,B2,B1,B0,Cin;
output S3,S2,S1,S0,Cout;
wire C1,C2,C3;

FA FA1 (
    .A(A0), 
    .B(B0), 
    .Cin(Cin), 
    .S(S0), 
    .Cout(C1)
    );
FA FA2 (
    .A(A1), 
    .B(B1), 
    .Cin(C1), 
    .S(S1), 
    .Cout(C2)
    );
FA FA3 (
    .A(A2), 
    .B(B2), 
    .Cin(C2), 
    .S(S2), 
    .Cout(C3)
    );
FA FA4 (
    .A(A3), 
    .B(B3), 
    .Cin(C3), 
    .S(S3), 
    .Cout(Cout)
    );
endmodule
