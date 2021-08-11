`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2021 02:19:41 AM
// Design Name: 
// Module Name: sar_block
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

module sar_block(
    input result,
    input shift,
    input enable,
    input clk,
    input pre_reset,
	 output reg one_bit
    );
	 
	 reg out;
	 parameter value=0;
	 
	 always @ (result,shift,one_bit,enable)
	 
	 begin
	 
	 if(enable==0 && one_bit==1)
	 out=result ;

	 
	 else if(enable==0 && one_bit==0)
	 out=shift ;
	
    else
	 out=one_bit;
      	 
	 
	 end
	 
	 
	 
	 
	 always @ (posedge clk or posedge pre_reset)  
       if (pre_reset)  
          one_bit <= value;  
       else  
          one_bit <= out;  
	 
	 
	 
	 
	 
	 


endmodule

