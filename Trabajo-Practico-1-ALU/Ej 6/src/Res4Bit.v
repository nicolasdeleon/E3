module Res4Bit(n1,n2,r,Co,Overflow);

//input Port Declarations
input [3:0] n1;
input [3:0] n2;

//Output Port Declarations
output [3:0] r;
output Co;
output Overflow;

//----Input Ports Data Type----//
wire [3:0] n1;
wire [3:0] n2;

//----OutPut Ports Data Type----//
reg [3:0] r;
wire Co;
assign Co=CC[4];
wire Overflow;
xor(Overflow,CC[4],CC[3]);
//----Internal Variables----//
wire [4:0] CC;
assign CC[0]=0;
wire [3:0] nc2;
wire [3:0] Result;

genvar i;

generate 
gate_level_module C2(n2[3], n2[2], n2[1], n2[0], nc2[3], nc2[2], nc2[1], nc2[0]);
for (i =0 ;i<4 ;i=i+1 ) begin
  SimpleAdder U(n1[i],nc2[i],CC[i],Result[i],CC[i+1]);
  
end
endgenerate

always@(Result)begin
r=Result;
end


endmodule