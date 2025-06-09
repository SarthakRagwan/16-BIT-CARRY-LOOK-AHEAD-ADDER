`timescale 10ns/1ns
`include "main.v"
module test;
    reg [15:0] in1;
    reg [15:0] in2;
    reg cy_in;
    wire cy_out;
    wire [16:0] sum;

    bit16adder b16a(in1,in2,cy_in,cy_out,sum);

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test);

        $monitor("A = %d : B = %d : CY_IN = %d : SUM = %d : CY_OUT = %b ",in1,in2,cy_in,sum,cy_out);


        in1=16'h0;
        in2=16'h0;
        cy_in=0;
        #5

        in1=16'hf017;
        in2=16'hc653;
        cy_in=0;
        #5

        in1=16'hefac;
        in2=16'h9087;
        cy_in=1;
        #5

        in1=16'h3f40;
        in2=16'h567d;
        cy_in=1;
        #5

        in1=16'h0777;
        in2=16'h7ffe;
        cy_in=1;
        #5

        $finish;
    end

endmodule