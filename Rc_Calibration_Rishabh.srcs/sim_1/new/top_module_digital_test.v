`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:48:29 08/07/2021
// Design Name:   top_module_digital
// Module Name:   D:/Verilog Codes/Intern/top_module_digital_test.v
// Project Name:  Intern
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module_digital
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_module_digital_test;

	// Inputs
	reg clk;
	reg global_reset;
	reg cmp;

	// Outputs
	wire [3:0] sar_state;

	// Instantiate the Unit Under Test (UUT)
	top_module_digital uut (
		.clk(clk), 
		.global_reset(global_reset), 
		.cmp(cmp), 
		.sar_state(sar_state)
	);

	initial 
	
	begin
		// Initialize Inputs
		clk = 0;
		global_reset = 0;
		
		#2;
      global_reset=1;
		#1;
		 global_reset=0;
		

	end
	
	initial 
	begin
	cmp=0;
	#2;
	#2.7;
	cmp=1;
	#1;
	cmp=0;
	#1.9;
	cmp=1;
	#1;
	cmp=0;
	#2.2;
	cmp=1;
	
	
	end
	
	
	 always #0.05 clk = ~clk;  
      
endmodule

