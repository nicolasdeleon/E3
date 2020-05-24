
module ShiftLeft_TestBench();
//Declare inputs of TESTBENCH as regs of TB, and Outputs of TESTBENCH as wires
reg [3:0] n1;
wire [3:0] result;
//COnnect DUT to TB
ShiftLeft DUT(n1, result);
//initialize all variables
integer i;

initial begin
  $display("N1   RESULT   ");
  $monitor("%b %b", n1,result);
  #5 n1=0;
  #10
  for (i = 0;i<16 ;i=i+1 ) begin
    #5
    n1= n1+1;
  end
  #10000000 $finish;  
end

endmodule