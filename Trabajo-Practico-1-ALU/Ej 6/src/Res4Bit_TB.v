
module Res4Bit_TestBench();
//Declare inputs of TESTBENCH as regs of TB, and Outputs of TESTBENCH as wires
output reg [3:0] n1, n2;
input wire [3:0] result;
input wire Co;
input wire Overflow;
//COnnect DUT to TB
Res4Bit DUT(n1, n2,result,Co,Overflow);
//initialize all variables
integer i,j;

initial begin
  $display("N1    N2    RESULT   ");
  $monitor("%b %b %b %b %b", n1,n2,result,Co,Overflow);
  #5 n1=0;
  #5 n2=0;
  
  #10
  for (i = 0;i<16 ;i=i+1 ) begin
    #5
    n1= n1+1;
    n2=0;
    for(j=0;j<16;j=j+1)
    #5
     n2= n2+1;
  end
  #10000000 $finish;  
end

endmodule