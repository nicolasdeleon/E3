
module ContadorModulo();
//La idea de este Modulo es mostar como funcionaria implementar contar la longitud del pulso
//se toma como periodo de pulso = 2
//se muestra como en el tiempo el modulo reacciona a echo, signal que vendria a ser la salida del bloque AND
//MR on y off.

output signal, MR;
input [7:0] Distancia;
reg Clk,echo,MR;
wire [7:0] Distancia;
initial MR=0;
wire signal;

parameter ClockPeriod = 2;
	 
always
	begin: CLOCK_DRIVER
		Clk <= 1'b0;
		#(ClockPeriod/2);
		Clk <= 1'b1;
		#(ClockPeriod/2);
	end

and(signal,echo,Clk);

Counter C(signal,Distancia,MR);

initial begin
  $display("Clk MR echo signal Distancia");
  $monitor("%ot %b %b %b %b %b",$time, Clk,MR,echo,signal,Distancia);
   
    #0 Clk=0;
    #0 echo=1;
    #15 echo=0;
    #20 MR=1;
    #25 MR=0;
    #30 echo=1;
    #40 echo=0;
    #40 $finish;  

end
 
endmodule
