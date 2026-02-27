module dut(outp, a, b);

    input [31:0] a, b;
    output [31:0] outp;

    alucomp inst(outp, a, b);

endmodule