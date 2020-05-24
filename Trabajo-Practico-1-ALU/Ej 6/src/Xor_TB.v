

module Xor_TB(n1,n2,x);

output [3:0] n1,n2;
input [3:0] x;

wire [3:0] x;
reg [3:0] n1,n2;

//COnnect DUT to TB
XOR ORR(n1, n2,x);
integer i,j;

initial begin
$display("n1 n2 Xor");
$monitor("%b %b %b", n1, n2, x);
#1
n1=4'b0000;
n2=4'b0000;
#5
for(i=0;i<16;i=i+1)begin
#5
n1 = n1+1;
for(j=0;j<16;j=j+1)begin
#5
n2=n2+1;
end

end


end
endmodule