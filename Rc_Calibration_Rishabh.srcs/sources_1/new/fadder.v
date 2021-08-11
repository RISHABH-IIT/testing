`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2021 03:18:38 AM
// Design Name: 
// Module Name: fadder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module fadder (A, B, Cin, Sum, Cout);
    input A, B;
    input Cin;
    output Sum;
    output Cout;
    wire t1,t2,t3,t4;
  xor x1(t1,A,B);
  xor x2(Sum,t1,Cin);
  and g1(t2,A,B);
  and g2(t3,B,Cin);
  and g3(t4,Cin,A);
  or  g4(Cout,t2,t3,t4);  
endmodule

