module Counter(Clk,Out,MR);

input Clk,MR;
output [7:0] Out;

wire Clk, MR;
reg [7:0] Out;
initial Out=0;
always @(negedge Clk)
    Out <= Out + 1;

  always @MR
    if (MR)
      assign Out = 0;
    else
      deassign Out;
endmodule