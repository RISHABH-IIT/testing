`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:37 08/07/2021 
// Design Name: 
// Module Name:    controller 
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
module controller(
 input cmp,
 input clk,
 input global_reset,
 input lock,
 output reg reset_counter,
 output reg reset_sar_counter,
 output reg stop_sar_counter
 
 
    );

reg[2:0] state;



always @(posedge clk)


if(global_reset)
state=3'b00;



else if (cmp)
state=3'b001;

else if(lock)
state=state;

else if(state==3'b001)
state=3'b010;

else if(state==3'b010)
state=3'b011;

else if (state==3'b011 || state==3'b000 )
state=3'b100;

else
state=state;





always @(state)

if(state==3'b000)

begin
reset_counter=1;
reset_sar_counter=1;
//load=0;
stop_sar_counter=1;
end


else if(state==3'b001)

begin
reset_counter=0;
reset_sar_counter=0;
//load=0;
stop_sar_counter=1;
end

else if(state==3'b010)

begin
reset_counter=0;
reset_sar_counter=0;
//load=1;
stop_sar_counter=0;
end

else if(state==3'b011)

begin
reset_counter=1;
reset_sar_counter=0;
//load=0;
stop_sar_counter=1;
end


else if(state==3'b100)

begin
reset_counter=0;
reset_sar_counter=0;
//load=0;
stop_sar_counter=1;
end


endmodule
