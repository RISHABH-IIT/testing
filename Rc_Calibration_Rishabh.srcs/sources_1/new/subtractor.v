`timescale 1ns / 1ps


module subtractor(
    input [3:0] A,
    input [3:0] B,
    output [3:0] result
    );
	 wire Out;
	 wire[3:0] Res;
	 
	 wire Nout;
	 
	 add_sub_4 P1 (
    .A(A), 
    .B(B), 
    .In(1'b1), 
    .Res(Res), 
    .Out(Out)
    );
	 wire comp;
    not n1 (comp,Out);
	 add_sub_4 P2 (
    .A(4'b0000), 
    .B(Res), 
    .In(comp), 
    .Res(result), 
    .Out(Nout)
    );



endmodule
