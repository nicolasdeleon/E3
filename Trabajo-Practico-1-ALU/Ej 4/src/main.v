module twos_Complement;

reg in1, in2, in3, in4;
wire out1, out2, out3, out4;

gate_level_module twos_ComplementModule(in1, in2, in3, in4, out1, out2, out3, out4);

integer i, j, k, q;

  initial begin
    for (i = 0; i < 2; i = i + 1) begin
      for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
            for (q = 0; q < 2; q = q + 1) begin
          in1= i;
          in2 = j; 
          in3 = k;
          in4=q;
          $display("Input values are: %b %b %b %b", in1, in2, in3, in4);
          #1;
            end
            end
        end
    end
    $finish;
  end

  initial begin
   $monitor("Outs have changed! New values are: %b %b %b %b", out1, out2, out3, out4) ;
  end
endmodule 