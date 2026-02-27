`timescale 1ns/1ps

module mux32to1 (inp, sel, outp);

    input [31:0] inp;
    input [4:0] sel;
    output outp;

    assign #1 outp = inp[sel];

endmodule