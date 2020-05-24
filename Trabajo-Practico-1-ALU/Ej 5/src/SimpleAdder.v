//-------------------------------------
//Simple Adder inputs to binary digits and a carry and returns
//result:0 1
//carry:0 1
//--------------------------------------
module SimpleAdder(a,b,ci,result,co);

//input Port Declarations
input a;
input b;
input ci;

//Output Port Declarations
output result;
output co;

//----Input Ports Data Type----//
wire a,b,d,e,f;

//----Output Ports Data Type----//
wire result,co;

xor(result,a,b,ci);

and(d,a,b);
or(e,a,b);
and(f,ci,e);
or(co,d,f);

endmodule