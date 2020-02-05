`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:32 02/05/2020 
// Design Name: 
// Module Name:    CLA 
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
module CLA(A3,A2,A1,A0,B3,B2,B1,B0,Cin,S3,S2,S1,S0,Cout
    );
input A3,A2,A1,A0,B3,B2,B1,B0,Cin;
output S3,S2,S1,S0,Cout;
wire C1,C2,C3;


assign C1=(A0&B0)|((A0^B0)&Cin);
assign C2=(A1&B1)|((A1^B1)&((A0&B0)|((A0^B0)&Cin)));
assign C3=(A2&B2)|((A2^B2)&((A1&B1)|((A1^B1)&((A0&B0)|((A0^B0)&Cin)))));
assign Cout=(A3&B3)|((A3^B3)&((A2&B2)|((A2^B2)&((A1&B1)|((A1^B1)&((A0&B0)|((A0^B0)&Cin)))))));

assign S0=A0^B0^Cin;
assign S1=A1^B1^C1;
assign S2=A2^B2^C2;
assign S3=A3^B3^C3;
	 
endmodule