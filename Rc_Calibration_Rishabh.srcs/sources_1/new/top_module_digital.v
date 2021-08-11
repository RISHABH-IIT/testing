`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:23 08/07/2021 
// Design Name: 
// Module Name:    top_module_digital 
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
module top_module_digital(
input clk,
input global_reset,
input cmp,
output [3:0] sar_state
    );

wire [3:0] integral_part,fractional_part;
wire reset_counter;
wire lock;
wire Result;
wire reset_sar_counter;
wire stop_sar_counter;




rc_calib_counter counter (
    .clk(clk), 
    .reset(reset_counter), 
    .stop(cmp), 
    .integral_part(integral_part), 
    .fractional_part(fractional_part)
    );
	 


decision_device decision (
    .count_integer(integral_part), 
    .count_fractional(fractional_part), 
    .lock(lock), 
    .Result(Result)
    );
	 

sar_counter sar_state_counter (
    .pre_reset(reset_sar_counter), 
    .stop(stop_sar_counter), 
    .result(Result), 
    .lock(lock), 
    .clk(clk), 
    .sar_state(sar_state)
    );

	 
	 
controller cntrl (
    .cmp(cmp), 
    .clk(clk), 
    .global_reset(global_reset), 
    .lock(lock), 
    .reset_counter(reset_counter), 
    .reset_sar_counter(reset_sar_counter), 
    .stop_sar_counter(stop_sar_counter)
    );







endmodule

