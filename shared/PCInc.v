`timescale 1ns/1ps

module PCInc(newPC, oldPC);
input [31:0] oldPC;
output [31:0] newPC;

wire ovf_pos_unused;
wire ovf_neg_unused;

aluaddsub u_adder (
    .A(oldPC),
    .B(32'd4),
    .sub(1'b0),
    .Y(newPC),
    .ovf_pos(ovf_pos_unused),
    .ovf_neg(ovf_neg_unused)
);
endmodule