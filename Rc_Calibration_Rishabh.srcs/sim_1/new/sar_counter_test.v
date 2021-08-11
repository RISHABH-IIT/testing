`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2021 02:25:04 AM
// Design Name: 
// Module Name: sar_counter_test
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

module sar_counter_test;

	// Inputs
	reg pre_reset;
	reg stop;
	reg result;
	reg lock;
	reg clk;

	// Outputs
	wire [3:0] sar_state;

	// Instantiate the Unit Under Test (UUT)
	sar_counter uut (
		.pre_reset(pre_reset), 
		.stop(stop), 
		.result(result), 
		.lock(lock), 
		.clk(clk), 
		.sar_state(sar_state)
	);

	initial begin
		// Initialize Inputs
		pre_reset = 0;
		stop = 0;
		result = 0;
		lock = 0;
		clk = 1;

		#2;
		pre_reset = 1;
		#2;
		pre_reset = 0;
        
		// Add stimulus here

	end
	
	initial 
	begin
	#30;
	stop=1;
	end
	
	
//	initial
//	begin
//	#12;
//	lock=1;
//	end
	
	  always #5 clk = ~clk;  
      
endmodule

