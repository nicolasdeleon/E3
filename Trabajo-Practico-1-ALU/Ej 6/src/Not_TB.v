


module NOT_TB(n1,x);

output [3:0] n1;
input [3:0] x;

wire [3:0] x;
reg [3:0] n1;

//COnnect DUT to TB
NOT NOTT(n1,x);
integer i,j;

initial begin
$display("n1 Not");
$monitor("%b %b", n1, x);
#1
n1=4'b0000;

#5
for(i=0;i<16;i=i+1)begin
#5
n1 = n1+1;
end


end
endmodule