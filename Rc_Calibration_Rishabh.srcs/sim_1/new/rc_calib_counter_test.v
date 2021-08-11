`timescale 1us / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2021 09:29:53 AM
// Design Name: 
// Module Name: rc_calib_counter_test
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


module rc_calib_counter_test;

	// Inputs
	reg clk;
	reg reset;
	reg stop;

	// Outputs
	wire [3:0] integral_part;
	wire [3:0] fractional_part;

	// Instantiate the Unit Under Test (UUT)
	rc_calib_counter uut (
		.clk(clk), 
		.reset(reset), 
		.stop(stop),
		.integral_part(integral_part), 
		.fractional_part(fractional_part)
	);

	initial 
	
	begin
		// Initialize Inputs
		stop=0;
		clk = 1;
		reset = 0;
      #0.01 ;
     reset = 1;
     #0.01 ;
     reset = 0;
	  #3.2;
	  stop=1;

		// Wait 100 ns for global reset to finish
	
		// Add stimulus here

	end
      
		
		always
			
		#0.05 clk = ~clk;

		
		always @ (posedge clk)
		
		$display("The Time now is 	%d . %d   us ",integral_part,fractional_part);
		
		
endmodule

