module sar_counter(
    input pre_reset,
    input stop,
    input result,
    input lock,
    input clk,
    output [3:0] sar_state
    );

wire en0,en1,en2,en3;

sar_block #( .value(1) ) sar_block_4 
	
	(
		.result(result), 
		.shift(0), 
		.enable(en3), 
		.clk(clk), 
		.pre_reset(pre_reset), 
		.one_bit(sar_state[3])
	);
	
	
	
sar_block #( .value(0) ) sar_block_3 
	
	(
		.result(result), 
		.shift(sar_state[3]), 
		.enable(en2), 
		.clk(clk), 
		.pre_reset(pre_reset), 
		.one_bit(sar_state[2])
	);
	
	
sar_block #( .value(0) ) sar_block_2
	
	(
		.result(result), 
		.shift(sar_state[2]), 
		.enable(en1), 
		.clk(clk), 
		.pre_reset(pre_reset), 
		.one_bit(sar_state[1])
	);
	
	
sar_block #( .value(0) ) sar_block_1 
	
	(
		.result(result), 
		.shift(sar_state[1]), 
		.enable(en0), 
		.clk(clk), 
		.pre_reset(pre_reset), 
		.one_bit(sar_state[0])
	);
	
	
	
wire d;
wire q;


or g1 (d,lock,q,sar_state[0]);
or g2 (en0,stop,lock,q);
or g3 (en1,en0,sar_state[0]);
or g4 (en2,en1,sar_state[1]);
or g5 (en3,en2,sar_state[2]);



		 D_flip_flop locker (
		.clk(clk), 
		.reset(pre_reset),
		.d(d), 
		.q(q)
	);

endmodule
