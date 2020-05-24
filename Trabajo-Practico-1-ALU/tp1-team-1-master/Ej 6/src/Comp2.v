
module gate_level_module(X1,X2,X3,X4,F1,F2,F3,F4);
    input X1, X2, X3, X4;
    output F1, F2, F3, F4;
    wire NOTX1,NOTX2,NOTX3,NOTX4;

    not(NOTX1,X1);
    not(NOTX2,X2);
    not(NOTX3,X3);
    not(NOTX4,X4);
   
    
    //F1
    wire A, B, C;
    and(A,X1,NOTX2,NOTX3,NOTX4);
    or(B,X2,X3,X4);
    and(C,NOTX1,B);
    or(F1,A,C); 

    //F2
    wire D,E,G;
    and(D,X2,NOTX3,NOTX4);
    or(E,X3,X4);
    and(G,NOTX2,E);
    or(F2,D,G); 

    //F3
    wire H,I;
    and(H,NOTX3,X4);
    and(I,X3,NOTX4);
    or(F3,H,I); 

    //F4
    assign F4=X4;

endmodule
