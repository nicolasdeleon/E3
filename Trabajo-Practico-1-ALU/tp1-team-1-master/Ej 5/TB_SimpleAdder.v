
`include "SimpleAdder.v" 


module TestBench_SimpleAdder();

wire sum,carry;
reg a,b,ci;

//COnnect DUT to TB
SimpleAdder DUT_f(a, b,ci,sum,carry);
integer i, j, k;

initial begin
$display("b1 b2 cin cout b3");
$monitor("%b %b %b %b %b", a, b, ci, carry, sum);



for (i =0 ;i<8 ;i=i+1 ) begin
if(i<4)begin
 #5 ci=0;
end
else if(i>=4)begin
 #5 ci=1;
end
    for (j =0 ;j<4 ;j=j+1 ) begin

    if(j<2)begin
        #5 a=0;
    end
    else if(j>=2)begin
       #5 a=1;
    end
        for (k =0 ;k<2 ;k=k+1 ) begin
            if(k<1)begin
               #5 b=0;
            end
            else if(k>=1)begin
               #5 b=1;
            end
        end
    end
end
end
endmodule