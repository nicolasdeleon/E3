module ShiftLeft(n,Ln);

//---Define Inputs & Outputs---//
input [3:0] n;
output [3:0] Ln;

//---Define Data Types---//
wire [3:0] n;
reg [3:0] Ln;

//---Define Variables---//
wire [3:0] B;

assign B[0]=n[3];
assign B[1]=n[0];
assign B[2]=n[1];
assign B[3]=n[2];

always@(B)begin
Ln=B;
end

endmodule