module encoder (in, out, error);

    input[3:0] in;
    output reg[1:0] out;
    output reg error = 0;

    always @(in) begin
        if (in == 'b1000)
            out = 'b00;
        else
            if (in == 'b0100)
                out = 'b01;
            else
                if (in == 'b0010)
                    out = 'b10;
                else
                    if (in == 'b0001)
                        out = 'b11;
                    else
                        error=1;
    end
endmodule


module decoder (in, out, error);

    input [1:0] in;
    output reg[3:0] out;
    output reg error = 0;

    always @(in) begin

        if (in == 'b00)
            out = 'b1000;
        else 
            if (in == 'b01)
                out = 'b0100;
            else
                if (in == 'b10)
                    out = 'b0010;
                else
                    if (in == 'b11)
                        out = 'b0001;
                    else
                    error = 1;
    end
endmodule


module mux (in, out, select_lines, error); //no se si esta bien poner select lines como input

    input [3:0] in;
    output reg out;
    input [1:0] select_lines;
    output reg error = 0;

    always @(in) begin
        if (in == 'b0001 || in == 'b0010 || in == 'b0100 || in == 'b1000)
            if (select_lines == 'b00)
                out = in[3:3];
            else   
                if (select_lines == 'b01)
                    out = in[2:2];
                else
                    if (select_lines == 'b10)
                        out = in[1:1];
                    else   
                        if (select_lines == 'b11)
                            out = in[0:0];
                        else
                            error = 1;
        else
            error = 1;
    end
endmodule


