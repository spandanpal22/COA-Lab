`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:08 01/23/2020 
// Design Name: 
// Module Name:    BCD4 
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
module BCD4(A3,A2,A1,A0,B3,B2,B1,B0,Cin,S3,S2,S1,S0,Cout
    );

input A3,A2,A1,A0,B3,B2,B1,B0,Cin;
output S3,S2,S1,S0,Cout;
wire ss3,ss2,ss1,ss0,cc1,And1,And2,Or1,Or2,cc2;

RCA4 RCA1 (
    .A3(A3), 
    .A2(A2), 
    .A1(A1), 
    .A0(A0), 
    .B3(B3), 
    .B2(B2), 
    .B1(B1), 
    .B0(B0), 
    .Cin(0), 
    .S3(ss3), 
    .S2(ss2), 
    .S1(ss1), 
    .S0(ss0), 
    .Cout(cc1)
    );
	 
AND and1 (
    .in1(ss3), 
    .in2(ss1), 
    .out(And1)
    );
	 
AND and2 (
    .in1(ss3), 
    .in2(ss2), 
    .out(And2)
    );

OR or1 (
    .in1(And1), 
    .in2(And2), 
    .out(Or1)
    );

OR or2 (
    .in1(Or1), 
    .in2(cc1), 
    .out(Or2)
    );
assign Cout=Or2;
RCA4 RCA2 (
    .A3(ss3), 
    .A2(ss2), 
    .A1(ss1), 
    .A0(ss0), 
    .B3(0), 
    .B2(Or2), 
    .B1(Or2), 
    .B0(0), 
    .Cin(0), 
    .S3(S3), 
    .S2(S2), 
    .S1(S1), 
    .S0(S0), 
    .Cout(cc2)
    );


endmodule
