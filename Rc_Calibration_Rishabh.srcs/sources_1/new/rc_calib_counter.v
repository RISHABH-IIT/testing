`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2021 09:15:39 AM
// Design Name: 
// Module Name: rc_calib_counter
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


module rc_calib_counter(
    input clk,
    input reset,
	 input stop,
    output [3:0] integral_part,
    output [3:0] fractional_part
    );


	 
BCD_COUNTER fractional (
    .clk(clk), 
    .reset(reset), 
	 .stop(stop),
    .count(fractional_part)
    );


wire k;
and(k,fractional_part[3],fractional_part[1]);

BCD_COUNTER integeral (
    .clk(k), 
    .reset(reset), 
	 .stop(stop),
    .count(integral_part)
    );
	 


endmodule

