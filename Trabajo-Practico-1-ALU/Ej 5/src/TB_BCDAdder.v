
module BCDAdder_TestBench();
//Declare inputs of TESTBENCH as regs of TB, and Outputs of TESTBENCH as wires
reg [3:0] n1, n2;
wire [7:0] result;
//COnnect DUT to TB
BCDAdder DUT(n1, n2,result);
//initialize all variables
integer i,j;

initial begin
  $display("N1    N2    RESULT   ");
  $monitor("%b %b %b", n1,n2,result);
  #5 n1=0;
  #5 n2=0;
  
  #10
  for (i = 0;i<9 ;i=i+1 ) begin
    #5
    n1= n1+1;
    n2=0;
    for(j=0;j<9;j=j+1)
    #5
     n2= n2+1;
  end
  #10000000 $finish;  
end

endmodule