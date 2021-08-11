`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2021 09:15:39 AM
// Design Name: 
// Module Name: D_flip_flop
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


module D_flip_flop(
    input clk,
	 input reset,
    input d,
    output reg q,
	 output q_bar
    );

assign q_bar=~q;

always @ (posedge clk or posedge reset)  
       if (reset)  
          q <= 0;  
       else  
          q <= d;  



endmodule
