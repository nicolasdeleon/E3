module BCDAdder(n1,n2,s);

//input Port Declarations
input [3:0] n1;
input [3:0] n2;

//Output Port Declarations
output [7:0] s;

//----Input Ports Data Type----//
wire [3:0] n1;
wire [3:0] n2;

//----OutPut Ports Data Type----//
reg [7:0] s;

//----Internal Variables----//
wire [7:0] Result;
assign Result[4]=CC[4];
assign Result[5]=0;
assign Result[6]=0;
assign Result[7]=0;
wire [4:0] CC;
assign CC[0]=0;
wire c1;
wire c2;
wire c3;
genvar i;

//Code Start
//Simple Adder Blocks
generate 
for (i =0 ;i<4 ;i=i+1 ) begin
  SimpleAdder U(n1[i],n2[i],CC[i],Result[i],CC[i+1]);
  
end
endgenerate 

//BCD Correction For Simple Adders
always@(Result)begin
if (Result>9) begin
  s=Result+6;
end 
else  s=Result;
end

//Check for Invalid Inputs
always@(n1,n2)
if(n1>9 | n2>9)begin
$display("Error Input Invalid Result");
end

endmodule
