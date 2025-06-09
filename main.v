module bit4adder(in1,in2,cy_in,cy_out,sum);
    input [3:0] in1;
    input [3:0] in2;
    input cy_in;
    output [3:0] sum;
    output cy_out;
    wire [3:1] carry;

    assign carry[1]=in1[0]&in2[0] | (in1[0]^in2[0])&cy_in;
    assign carry[2]=in1[1]&in2[1] | (in1[1]^in2[1])&carry[1];
    assign carry[3]=in1[2]&in2[2] | (in1[2]^in2[2])&carry[2];
    assign cy_out=in1[3]&in2[3] | (in1[3]^in2[3])&carry[3];

    xor g1(sum[0],in1[0],in2[0],cy_in);
    xor g2(sum[1],in1[1],in2[1],carry[1]);
    xor g3(sum[2],in1[2],in2[2],carry[2]);
    xor g4(sum[3],in1[3],in2[3],carry[3]);

endmodule

module bit16adder(in1,in2,cy_in,cy_out,sum);
    input [15:0] in1;
    input [15:0] in2;
    input cy_in;
    output [16:0] sum;
    output cy_out;
    wire [3:1] carry;
    wire [4:1] int_sum [4:1];

    bit4adder ad1(in1[3:0],in2[3:0],cy_in,carry[1],int_sum[1]);
    bit4adder ad2(in1[7:4],in2[7:4],carry[1],carry[2],int_sum[2]);
    bit4adder ad3(in1[11:8],in2[11:8],carry[2],carry[3],int_sum[3]);
    bit4adder ad4(in1[15:12],in2[15:12],carry[3],cy_out,int_sum[4]);
    assign sum={cy_out,int_sum[4],int_sum[3],int_sum[2],int_sum[1]};
endmodule
