`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2021 09:15:39 AM
// Design Name: 
// Module Name: BCD_COUNTER
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

module BCD_COUNTER(
    input clk,
    input reset,
	 input stop,
    output [3:0] count
    );
	 
	 
	 wire t1;
	 wire t2;
	 wire t3;
	 wire t4;
	 
	 
	 wire k1;
	 wire k2;
	 wire k3;
	 wire k4;
	 
	 
	 reg s1;
	 reg s2;
	 reg s3;
	 reg s4;
	 
	 
	 always @(clk,stop,k1,t1) 
	 
	 begin
	 
	 if(stop)
	 s1=k1 ;
	 else
	 s1=t1;
	 
	 if(stop)
	 s2=k2 ;
	 else
	 s2=t2;
	 
	 if(stop)
	 s3=k3 ;
	 else
	 s3=t3;
	 
	 if(stop)
	 s4=k4 ;
	 else
	 s4=t4;
	 
	 
	 end
	 
	 D_flip_flop f1 (
		.clk(clk), 
		.reset(reset_mod),
		.d(s1), 
		.q(k1),
		.q_bar(t1)
	);
	
	
		 D_flip_flop f2 (
		.clk(t1), 
		.reset(reset_mod),
		.d(s2), 
		.q(k2),
		.q_bar(t2)
	);
	
	
	
	
		 D_flip_flop f3 (
		.clk(t2), 
		.reset(reset_mod),
		.d(s3), 
		.q(k3),
		.q_bar(t3)
	);
	
	
	
	
		 D_flip_flop f4 (
		.clk(t3), 
		.reset(reset_mod),
		.d(s4), 
		.q(k4),
		.q_bar(t4)
	);
	
wire z;
and(z,k4,k2);
or(reset_mod,reset,z);
	
	 
assign count[0]=k1;
assign count[1]=k2;
assign count[2]=k3;
assign count[3]=k4;


endmodule

