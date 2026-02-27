module dut(a, b, outp, ctrl);

    input [31:0] a, b;
    input ctrl;
    output [31:0] outp;

    alulogic DUT (a, b, ctrl, outp);

endmodule