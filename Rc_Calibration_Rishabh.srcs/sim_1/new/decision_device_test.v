`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2021 03:30:03 AM
// Design Name: 
// Module Name: decision_device_test
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

module decision_device_test;

	// Inputs
	reg[3:0]count_integer;
	reg[3:0] count_fractional;

	// Outputs
	wire lock;
	wire Result;

	// Instantiate the Unit Under Test (UUT)
	decision_device uut (
		.count_integer(count_integer), 
		.count_fractional(count_fractional), 
		.lock(lock), 
		.Result(Result)
	);

	initial begin
		// Initialize Inputs
		
	
		count_integer = 2;
		count_fractional = 0;

		
		#10;
		
		count_integer =2 ;
		count_fractional = 4;

		
		#10;
		
		count_integer = 3;
		count_fractional = 3;
		
        
		// Add stimulus here

	end
      
endmodule


