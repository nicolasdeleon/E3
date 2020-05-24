
module Bit4Adder(n1,n2,s,Co,Overflow);

//input Port Declarations
input [3:0] n1;
input [3:0] n2;

//Output Port Declarations
output [3:0] s;
output Co;
output Overflow;

//----Input Ports Data Type----//
wire [3:0] n1;
wire [3:0] n2;

//----OutPut Ports Data Type----//
reg [3:0] s;
wire Co;
assign Co=CC[4];
wire Overflow;
xor(Overflow,CC[4],CC[3]);
//----Internal Variables----//
wire [3:0] Result;
wire [4:0] CC;
assign CC[0]=0;

genvar i;

generate 
for (i =0 ;i<4 ;i=i+1 ) begin
  SimpleAdder U(n1[i],n2[i],CC[i],Result[i],CC[i+1]);
  
end
endgenerate

always@(Result)begin
s=Result;
end
endmodule