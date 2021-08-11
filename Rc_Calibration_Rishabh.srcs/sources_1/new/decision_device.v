`timescale 1ns / 1ps


module decision_device(
input[3:0] count_integer,
input [3:0] count_fractional,
output lock,
output reg  Result
    );


wire lt1,lt2;
wire gt1,gt2;
wire[3:0] result;
wire Out;

comparator c1 (
    .a(count_integer), 
    .b(4'b0011),  
    .lt(lt1), 
    .gt(gt1)
    );
	 
	 comparator c2 (
    .a(count_fractional), 
    .b(4'b0010), 
    .lt(lt2), 
    .gt(gt2)
    );
	 
	 
	 
	 
subtractor s1 (
    .A(4'b0010), 
    .B(count_fractional), 
    .result(result)
    );

and g1(lock,~lt1,~gt1,~result[3],~result[2],~result[1]);


always @ (*)

begin

if(lt1)
Result=1;

else if(gt1)
Result=0;

else 

  if(lt2)
  Result=1;
  
  else if(gt2)
  Result=0;
  
  else
  Result=0;


end

endmodule
