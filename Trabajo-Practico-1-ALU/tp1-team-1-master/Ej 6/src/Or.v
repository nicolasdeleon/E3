module OR(n1,n2,X);

//---Define Inputs---//
input [3:0] n1;
input [3:0] n2;

//---Define Outputs---//
output [3:0] X;

//---Input&Output datatype---//
wire [3:0] n1;
wire [3:0] X;
wire [3:0] n2;

or(X[0],n1[0],n2[0]);
or(X[1],n1[1],n2[1]);
or(X[2],n1[2],n2[2]);
or(X[3],n1[3],n2[3]);

endmodule