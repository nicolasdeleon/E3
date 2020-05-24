module NOT(n1,X);

//---Define Inputs---//
input [3:0] n1;

//---Define Outputs---//
output [3:0] X;

//---Input&Output datatype---//
wire [3:0] n1;
wire [3:0] X;

not(X[0],n1[0]);
not(X[1],n1[1]);
not(X[2],n1[2]);
not(X[3],n1[3]);

endmodule