`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2021 03:15:55 AM
// Design Name: 
// Module Name: add_sub_4
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


module add_sub_4 (A, B, In, Res, Out);
    input [3:0] A, B;
    input In;
    output [3:0] Res;
    output Out;
    wire t0,t1,t2,t3,t4,t5,t6,t7;


          xor x3(t3,B[0],In);
          xor x4(t4,B[1],In);
          xor x5(t5,B[2],In);
          xor x6(t6,B[3],In);
          fadder f5(A[0],t3,In,Res[0],t0);
          fadder f6(A[1],t4,t0,Res[1],t1);
          fadder f7(A[2],t5,t1,Res[2],t2);
          fadder f8(A[3],t6,t2,Res[3],Out);  
			 
			 
			 
endmodule