`timescale 1ns / 1ps

module comparator(a,b,lt,gt);

input [3:0] a,b;

output reg lt,gt;

always @(a,b)
begin
 if (a==b)
 begin
  lt = 1'b0;
  gt = 1'b0;
 end
 else if (a>b)
 begin
  lt = 1'b0;
  gt = 1'b1;
 end
 else
 begin
  lt = 1'b1;
  gt = 1'b0;
 end
end 
endmodule
