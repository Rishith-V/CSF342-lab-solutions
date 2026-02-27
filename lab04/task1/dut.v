`timescale 1ns/1ps

module dut(pos_of, neg_of, sum, a, b, ctrl);

    input signed [31:0] a, b;
    input ctrl;
    output signed [31:0] sum;
    output pos_of, neg_of;

    aluaddsub DUT (sum, a, b, ctrl, pos_of, neg_of);

endmodule