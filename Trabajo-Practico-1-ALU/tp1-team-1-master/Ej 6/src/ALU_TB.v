
//-----------------------Como trabajar con la Test Bench----------------------------------------- 
//TestBench propuesta de la ALU donde uno puede variar operador para ver la respuesta de la ALU
//a todos los numeros de 4bits entre si.
//Despliega los numeros ingresados, el operador propuesto, el resultado y el CCR (Carry Overflow)
//------------------------------------------------------------------------------------------------

module ALU_TestBench();

//Declare inputs of TESTBENCH as regs of TB, and Outputs of TESTBENCH as wires
reg [3:0] n1, n2;
reg [2:0] operator;
wire [3:0] result;
wire [1:0] CCR;
//COnnect DUT to TB
ALU DUT(n1, n2,operator,CCR,result);
//initialize all variables
integer i,j;

initial begin
  $display("N1   N2   OP  RESULT CCR:[carry overflow]");
  $monitor("%b %b %b %b %b", n1,n2,operator,result,CCR);
  #5 operator=3'b111;
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